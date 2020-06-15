<?php

namespace common\extensions\api;

use api\components\CApplication;
use api\components\CResponse;
use common\extensions\api\src\ApiResponse;
use Yii;
use yii\base\BaseObject;
use yii\helpers\Json;
use yii\rest\Serializer;

/***
 * This Class is used to execute the API using Yii runAction
 *
 * Class ApiHelper
 * @package common\helpers
 *
 * @author yii2
 */
class ApiHelper extends BaseObject
{
    const REQUEST_METHOD_GET = 'get';
    const REQUEST_METHOD_POST = 'post';

    const REQUEST_BODY_TYPE_FORM_DATA = 'form-data';
    const REQUEST_BODY_TYPE_RAW_DATA = 'raw-data';

    /**
     * @var string
     */
    private $url;
    /**
     * @var array
     */
    private $params;
    /**
     * @var string
     */
    private $version = 'v1';
    /**
     * @var string
     */
    private $request_method;
    /**
     *
     */
    private $request_body_type;
    /**
     * @var
     */
    private $request_param;
    /**
     * @var
     */
    private static $instance;


    /**
     * @return ApiHelper
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }

        return self::$instance;
    }

    /**
     * @param $url
     * @param array $params
     * @return $this
     */
    public function setUrl($url, array $params = [])
    {
        $this->url = $url;
        $this->params = $params;

        return $this;
    }

    /**
     * @param string $version
     * @return ApiHelper
     */
    public function setVersion($version)
    {
        $this->version = $version;
        return $this;
    }

    /**
     * @return string
     */
    private function getUrl()
    {
        return "{$this->version}/$this->url";
    }

    /**
     * @return ApiResponse
     * @throws \Throwable
     * @throws \yii\base\InvalidConfigException
     */
    public function run()
    {
        $applicationOld = Yii::$app;

        $config = yii\helpers\ArrayHelper::merge(
            require Yii::getAlias('@common') . '/config/main.php',
            require Yii::getAlias('@common') . '/config/main-local.php',
            require Yii::getAlias('@api') . '/config/main.php',
            require Yii::getAlias('@api') . '/config/main-local.php'
        );

        $config['class'] = CApplication::class;

        /* @var $application CApplication */
        $application = Yii::createObject($config);

        $requestObj = $application->getRequest();
        
        if ($this->getRequestMethod() === self::REQUEST_METHOD_POST) {
            if ($this->getRequestBodyType() === self::REQUEST_BODY_TYPE_FORM_DATA) {
                $requestObj->setBodyParams($this->request_param);
            } else {
                $requestObj->setRawBody($this->request_param);
            }

        }

        $user = Yii::$app->getUser()->getIdentity();

        $token = '';

        if ($user !== null) {
            $token = $user['auth_key'];
            $requestObj->getHeaders()->set('Authorization', 'Bearer ' . $token);
        }

        $requestObj->getHeaders()->set('Accept-Language', 'en');

        $responseObj = Yii::createObject([
            'class' => CResponse::class,
            'format' => CResponse::FORMAT_JSON,
            'internal' => true
        ]);

        try {
            $data = $application->runAction($this->getUrl(), $this->params);
        } catch (\Exception $exception) {
            $responseObj->setStatusCodeByException($exception);
            $data = $exception->getMessage();
        }

        $serializerObj = Yii::createObject(Serializer::class);
        $responseObj->data = $serializerObj->serialize($data);

        $responseObj->send();

        Yii::$app = $applicationOld;
        Yii::$app->setBasePath($applicationOld->getBasePath());

        $this->request_method = null;
        $this->request_param = [];

        return new ApiResponse(Json::decode($responseObj->content));
    }

    /**
     * @param string $request_method
     * @return ApiHelper
     */
    public function setRequestMethod($request_method)
    {
        $this->request_method = $request_method;
        return $this;
    }

    /**
     * @return string
     */
    public function getRequestMethod()
    {
        $requestMethod = $this->request_method;

        if ($requestMethod === null) {
            $requestMethod = self::REQUEST_METHOD_GET;
        }
        return $requestMethod;
    }

    /**
     * @param string $request_body_type
     * @return ApiHelper
     */
    public function setRequestBodyType($request_body_type)
    {
        $this->request_body_type = $request_body_type;
        return $this;
    }

    /**
     * @return string
     */
    public function getRequestBodyType()
    {
        $requestBodyType = $this->request_body_type;

        if ($requestBodyType === null) {
            $requestBodyType = self::REQUEST_BODY_TYPE_FORM_DATA;
        }
        return $requestBodyType;
    }

    /**
     * @param mixed $request_param
     * @return ApiHelper
     */
    public function setRequestParam($request_param)
    {
        $this->request_param = $request_param;
        return $this;
    }
}