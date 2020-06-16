<?php

namespace backend\controllers;

use backend\models\LoginForm;
use backend\models\AdminUser;
use common\components\CController;
use Yii;

/***
* Class LoginController
* @package backend\controllers
*/
class LoginController extends CController
{
    
    /**
    * LoginController constructor.
    * @param string $id
    * @param string $module
    * @param array $config
    */
    public function __construct($id, $module, $config = array()) {
        $this->layout = 'login';

        parent::__construct($id, $module, $config);
    }

    /**
     * @return string
     * @throws \yii\base\InvalidConfigException
     * @throws \yii\base\InvalidParamException
     */
    public function actionIndex()
    {
        
        $model = new LoginForm();
        $modelForgotPassword = new AdminUser();
        $modelForgotPassword->setScenario($modelForgotPassword::SCENARIO_FORGOT_PASSWORD);

        if( $model->load(Yii::$app->request->post() ) && $model->login() ) {
            $this->goBack();
        }
        return $this->render('index', ['model' => $model, 'modelForgotPassword' => $modelForgotPassword]);
    }
    
    /**
    * Logout action.
    *
    * @return string
    * @throws \yii\base\InvalidParamException
    */
    public function actionLogout()
    {
        //$user   = Yii::$app->getAdminUser();
        /* @var $model AdminUser */
        /*$model = $user->getIdentity();

        if ( $model !== null ) {
            //$model->updateAvailabilityStatus(AdminUser::AVAILABILITY_STATUS_OFFLINE);
            ActivityLog::log('Logged out');
        }*/

        Yii::$app->user->logout();

        return $this->goHome();
    }
}
