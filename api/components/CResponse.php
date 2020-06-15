<?php

namespace api\components;

use common\helpers\Com;
use Yii;
use yii\db\Connection;
use Yii\db\sqlite\Schema;
use yii\helpers\ArrayHelper;
use yii\helpers\Json;
use yii\web\Response;
use api\modules\v1\models\Notification;

/**
 * The web Response class represents an HTTP response
 *
 * It change's the response structures for the api calls.
 *
 * Class CResponse
 * @package api\components
 *
 * @author yii2
 */
class CResponse extends Response
{
    public $whiteList = ['swagger', 'spinner'];

    /**
     * @var bool
     */
    public $internal = false;

    /**
     * CResponse constructor.
     * @param array $config
     * @throws \yii\base\InvalidParamException
     */
    public function __construct(array $config = [])
    {
        parent::__construct($config);

        $this->on(self::EVENT_BEFORE_SEND, function ($event) {
            $controller = Yii::$app->controller;

            if ($controller !== null && ArrayHelper::isIn($controller->getUniqueId(), $this->whiteList)) {
                return;
            }

            $this->process($event->sender);
        });
    }

    /**
     * @param Response $response
     * @throws \yii\base\InvalidParamException
     * @throws \yii\base\InvalidConfigException
     * @throws \yii\base\NotSupportedException
     * @throws \yii\db\Exception
     */
    public function process(Response $response)
    {
        if (
            $response->getStatusCode() === 404 &&
            (!is_array($response->data) || $response->format !== $response::FORMAT_JSON)
        ) {
            $response->data = 'Page not found';
            $response->format = $response::FORMAT_JSON;
        }
        $headers = $response->getHeaders();

        $headers->set('content-security-policy', "frame-ancestors 'self'");
        $headers->set('strict-transport-security', 'max-age=31536000; includeSubDomains; preload');
        $headers->set('max-age', '31536000');
        $headers->set('x-frame-options', 'SAMEORIGIN');

        $data = [
            'status' => $response->getIsSuccessful() ? 200 : 422,
            'data' => $response->data,
            'time' => time(),
            'message' => 'Successful operation',
            'system' => [
                'nc' => 0
            ]
        ];

        /**
         * @var $controller CController
         */
        $controller = Yii::$app->controller;

        if ($controller !== null) {
            $data['message'] = $controller->getMessage();
                                              
            if ($controller->getErrors() !== null) {
                $data['errors'] = $controller->getErrors();
            }
        }
        
        $user = Yii::$app->getUser()->getIdentity();
        
                        
        if ($data['status'] !== 200) {
            $data['message'] = $this->resolveErrorMsg($data['data']);
            $data['data'] = (object)[];
           
            $response->statusText = $data['message'];
        }

        /* Solving the response data from null */
        $data['data'] = $data['data'] === null ? [] : $data['data'];

        if ($data['data'] === [] && $controller !== null && $controller->getIsObject()) {
            $data['data'] = (object)$data['data'];
        }

        $request = Yii::$app->getRequest();

        /* @var $db Connection */
        $db = Yii::$app->db;

        if (false && $db->getSchema()->getTableSchema('api_log') === null) {
            $db->createCommand()->createTable('api_log', [
                'api_log_id' => Schema::TYPE_BIGPK,
                'request_url' => Schema::TYPE_TEXT,
                'request_method' => Schema::TYPE_STRING,
                'request_data' => Schema::TYPE_TEXT,
                'response_code' => Schema::TYPE_SMALLINT,
                'response_data' => Schema::TYPE_TEXT,
                'trace' => Schema::TYPE_TEXT,
                'created_at' => Schema::TYPE_DATETIME
            ])->execute();
        }

        if ($db->getSchema()->getTableSchema('api_log') !== null) {
            if ($request->getMethod() === 'GET') {
                $inputData = $_GET;
            } else {
                $inputData = $request->getBodyParams();
                if ($inputData === []) {
                    $inputData = $request->getRawBody();
                }
            }

            if (is_array($inputData)) {
                $inputData = Json::encode($inputData);
            }

            $db->createCommand()->insert('api_log', [
                'request_url' => $request->getAbsoluteUrl(),
                'request_method' => $request->getMethod(),
                'request_data' => $inputData,
                'response_code' => $response->getStatusCode(),
                'response_data' => Json::encode($data),
                'trace' => Json::encode($response->data),
                'created_at' => date('Y-m-d H:m:s')
            ])->execute();

        }

        if ($request->get('response') === 'default') {
            $data = $response->data;
        }

        $response->data = $data;
    }

    /**
     * @param $errorResponse
     * @return string
     * @throws \yii\base\InvalidParamException
     */
    private function resolveErrorMsg($errorResponse)
    {
        if (is_string($errorResponse)) {
            return $errorResponse;
        }

        if (array_key_exists('message', $errorResponse)) {
            return $errorResponse['message'];
        } else {
            if (array_column($errorResponse, 'field') !== []) {
                return array_column($errorResponse, 'message')[0];
            }
        }
        #TODO: Find different error response structure and resolve the error message
        Com::log(print_r($errorResponse, 1));

        return 'Uncaught error structure, contact your administrator :(';
    }

    /**
     *
     */
    public function send()
    {
        if ($this->internal) {
            $this->process($this);
            $this->prepare();
        } else {
            parent::send();
        }
    }
}