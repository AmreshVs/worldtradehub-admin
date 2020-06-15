<?php

namespace api\components;

use yii\base\Arrayable;
use yii\helpers\ArrayHelper;
use common\models\Configuration;
use Yii;
use yii\rest\Controller;
use yii\web\UnauthorizedHttpException;  

/**
 * Class CController
 * @package api\components
 *
 * @author Yii2
 */
class CController extends Controller
{
    /**
     * @var array
     */
    public $serializer = ['class' => CSerializer::class];
    /**
     * @var string
     */
    private $language;
    /**
     * @var string
     */
    private $message;
    /**
     * @var array
     */
    private $errors;   
    /**
     * @var Boolean
     */
    private $isObject = false;



    /**
     * @return array
     */
    public function behaviors()
    {
        $behaviors = parent::behaviors();

        $behaviors['authenticator'] = [
            'class' => CHttpBearerAuth::class,
            'optional' => [
                'user/login',
                'user/otp-login',
                'user/register',
                'user/verify_otp',
                'user/resend_otp',
                'user/forgot-password',
                //'expo/index',
                //'expo/view',
                //'ticket/create',
                //'ticket/update',
                //'favourite/create',
                //'favourite/index',
                //'ticket/view-stall',
                //'ticket/history',
                'address/get-country',
                'address/get-state',
                'address/get-city'

            ]
        ];
        return array_merge($behaviors, [
    
            // For cross-domain AJAX request
            'corsFilter'  => [
                'class' => \yii\filters\Cors::className(),
                'cors'  => [
                    // restrict access to domains:
                    'Origin'                           => ['*'],
                    'Access-Control-Request-Method'    => ['POST','GET','PUT','OPTIONS'],
                    'Access-Control-Allow-Credentials' => false,
                    'Access-Control-Max-Age'           => 3600,// Cache (seconds)
                    'Access-Control-Request-Headers' => ['*'],
                    'Access-Control-Allow-Origin' => false,
                ],
            ],
    
        ]);
        return $behaviors;

    }

    /**
     * CController constructor.
     * @param string $id
     * @param \yii\base\Module $module
     * @param array $config
     */
    public function __construct($id, $module, array $config = array())
    {
        parent::__construct($id, $module, $config);

        $this->setTimeZone();

    }


    /**
     * @param \yii\base\Action $action
     * @return bool
     * @throws \yii\web\BadRequestHttpException
     */
    public function beforeAction($action)
    {
        $header = Yii::$app->getRequest()->getHeaders();
        $language = Configuration::DEFAULT_LANG_CODE;
        if ($header->has('Accept-Language')) {
            $language = trim($header->get('Accept-Language'));
            if ($language === '') {
                $language = Configuration::DEFAULT_LANG_CODE;
            }
        }        
                  
        $this->setLanguage(strtolower(substr($language, 0, 2)));

        return parent::beforeAction($action);
    }

    /**
     *
     */
    public function setTimeZone()
    {
        if (($timeZone = Configuration::get(Configuration::TIME_ZONE)) !== null) {
            Yii::$app->timeZone = $timeZone;
        }
    }

    /**
     * @param string $language
     */
    private function setLanguage($language = 'en')
    {
        $this->language = $language;
        Yii::$app->language = $language;
    }

    /**
     * @return string
     */
    public function getLanguage()
    {
        return $this->language;
    }

    /**
     * @param Boolean $isObject
     */
    public function setIsObject($isObject = false)
    {
        $this->isObject = $isObject;
    }

    /**
     * @return Boolean
     */
    public function getIsObject()
    {
        return $this->isObject;
    }

    /**
     * @param $message
     * @param null|string $category
     * @param array $params
     */
    public function setMessage($message, $category = null, array $params = [])
    {
        if ($category === null) {
            $category = 'api';
        }

        $this->message = Yii::t($category, $message, $params);
    }

    /**
     * @return string
     */
    public function getMessage()
    {
        return $this->message === null ? Yii::t('api', 'DEFAULT_MESSAGE') : $this->message;
    }
    
    
    /**
     * @param array $errors
     */
    public function setErrors(array $errors)
    {
        $this->errors = $errors;
    }

    /**
     * @return array
     */
    public function getErrors()
    {
        return $this->errors;
    }

    /**
     * @param array $request
     * @param $params
     * @throws \api\components\ApiException
     */
    protected function checkRequiredParam(array $request, $params)
    {
        $params = (array)$params;

        foreach ($params as $param) {
            if (!array_key_exists($param, $request)) {
                $this->setErrors(['missing-param' => $param]);
                $this->paramMissing();
            }
        }
    }

    /**
     * @param null $param
     * @throws ApiException
     */
    protected function paramMissing($param = null)
    {
        if ($param !== null) {
            $this->setErrors(['missing-param' => $param]);
        }
        throw new ApiException(Yii::t('api', 'Required param missing'), 460);
    }

    /**
     *
     * @throws ApiException
     */
    protected function invalidLogin()
    {
        throw new ApiException(Yii::t('api', 'Invalid username or password supplied'), 400);
    }

    /**
     * @throws \yii\web\UnauthorizedHttpException
     */
    protected function unauthorizedAccess()
    {
        throw new UnauthorizedHttpException(Yii::t('api', 'Your request was made with invalid credentials'));
    }

    /**
     * @throws ApiException
     */
    protected function emailNotFound()
    {
        throw new ApiException(Yii::t('api', 'Email not found'), 404);
    }

    /**
     * @param string|null $error
     * @param null|string $category
     * @param array $params
     * @throws ApiException
     */
    public function commonError($error = null, $category = null, array $params = [])
    {
        if ($error === null) {
            $error = 'EXPECTATION_FAILED';
        }
        if ($category === null) {
            $category = 'api';
        }

        throw new ApiException(Yii::t($category, $error, (array)$params), 417);
    }

    /**
     * @throws ApiException
     */
    public function userNotFound()
    {
        $this->commonError('UNABLE_TO_FIND_THE_REQUESTED_USER');
    }

    /**
     * @param $data
     * @param array $fields
     * @return array
     */
    public function serializeModel($data, array $fields = [])
    {
        if ($data instanceof Arrayable) {
            return $data->toArray($fields);
        }

        return $data;
    }

    /**
     * @param array $models
     * @param array $fields
     * @return array
     */
    public function serializeModels(array $models, array $fields = [])
    {
        foreach ($models as $i => $model) {
            if ($model instanceof Arrayable) {
                $models[$i] = $model->toArray($fields);
            } elseif (is_array($model)) {
                $models[$i] = ArrayHelper::toArray($model);
            }
        }
        return $models;
    }
   
    /**
     * @param array $point
     * @param array $polygon
     * @return integer
     */
    public function DeliveryAreaCheck($point, $polygon)
    {
        if ($polygon[0] != $polygon[count($polygon) - 1]) {
            $polygon[count($polygon)] = $polygon[0];
        }
        $j = 0;
        $oddNodes = false;
        $x = $point[1];
        $y = $point[0];
        $n = count($polygon);
        for ($i = 0; $i < $n; $i++) {
            $j++;
            if ($j == $n) {
                $j = 0;
            }
            if ((($polygon[$i][0] < $y) && ($polygon[$j][0] >= $y)) || (($polygon[$j][0] < $y) && ($polygon[$i][0] >=
                        $y))) {
                if ($polygon[$i][1] + ($y - $polygon[$i][0]) / ($polygon[$j][0] - $polygon[$i][0]) * ($polygon[$j][1] -
                        $polygon[$i][1]) < $x) {
                    $oddNodes = !$oddNodes;
                }
            }
        }
        
        return $oddNodes ? 1 : 0;
    }
}
