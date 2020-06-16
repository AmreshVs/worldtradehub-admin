<?php

namespace frontend\components;

use common\helpers\Com;
use Yii;
use yii\base\InlineAction;
use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;
use yii\web\Controller;
use yii\helpers\Html;
use yii\base\Model;
use yii\authclient\AuthAction;
use backend\models\Configuration;

/**
 *
 * CController is the customized base controller class.
 *
 * All controller classes for this application should extend from this class.
 *
 * Class CController
 * @package common\components
 *
 * @author yii2
 */
class CController extends Controller
{
    private $language;

    /**
     * CController constructor.
     * @param string $id
     * @param \yii\base\Module $module
     * @param array $config
     */
    public function __construct($id, $module, array $config = array())
    {
        parent::__construct($id, $module, $config);

        if (!Com::isSession(APP_LANGUAGE)) {
            Com::setSession(APP_LANGUAGE, Configuration::DEFAULT_LANG_CODE);
        }
        $language = Com::session(APP_LANGUAGE);

        $this->setLanguage((($language)));
        
        Yii::$app->timeZone = Configuration::get(Configuration::TIME_ZONE);
    }

    /**
     * @return array
     * @throws \yii\base\InvalidParamException
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::class,
                'rules' => [
                    [
                        'allow' => true,
                        'matchCallback' => function ($rule,  $action) {
                            $isGuest = Yii::$app->getUser()->getIsGuest();

                            return !($isGuest && ArrayHelper::isIn(
                                    $action->getUniqueId(),
                                    [
                                        //'cart/index',
                                        'user',
                                        'user/index',
                                        'user/loyalty',
                                        'user-address/index',
                                        'order/index',
                                        'order/view',
                                        'user/profile',
                                        'user/address',
                                        'user/orders',
                                        'user/reviews',
                                        'user/favourites',
                                        'user/logout',
                                        'order/details',
                                        //'order/checkout',

                                    ]
                                ));

                        }
                    ]
                ],
            ]
        ];
    }

    /**
     * @param string $language
     */
    public function setLanguage($language = null)
    {
        if ($language === null) {
            $language = Configuration::DEFAULT_LANG_CODE;
        }
        Yii::$app->language = $this->language = $language;
    }
   

    /**
     * @param $action
     * @return bool
     * @throws \yii\web\BadRequestHttpException
     */
    public function beforeAction($action)
    {
        $actionId = $this->action->getUniqueId();
        $actionId = explode('/', $actionId);

        $actionT = end($actionId);
        $controllerT = $actionId[0];


        $actionT = implode(' ', explode('-', $actionT));
        $controllerT = implode(' ', explode('-', $controllerT));

        $this->view->title = ucfirst($actionT);

        if ($actionT === 'index') {
            $this->view->title = ucfirst($controllerT);
        }

        return parent::beforeAction($action);
    }
    
    /**
    * @param Model $model
    * @return array
    * @throws \yii\base\InvalidParamException
    */
   protected function prepareErrors(Model $model)
   {
       $activeRecordErrors = $model->getErrors();
       $errors = [];
       
       foreach ($activeRecordErrors as $attribute => $error) {
           $errors[Html::getInputId($model, $attribute)] = $error;
       }

       return $errors;
   }
   
    public function logout()
    {
        Com::successFlash('User logged out successfully');
        return Yii::$app->getResponse()->redirect(Yii::$app->getHomeUrl());
    }
}