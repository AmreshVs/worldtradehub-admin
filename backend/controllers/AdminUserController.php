<?php

namespace backend\controllers;

use Yii;
use backend\models\AdminUser;
use backend\models\Vendor;
use backend\models\AdminUserChangePasswordForm;
use backend\models\AdminUserSearch;
use backend\models\ActivityLog;
use common\components\CController;
use common\helpers\Com;
use yii\helpers\Json;
use common\helpers\MailerQueueHelper;
use yii\helpers\Url;
use backend\models\VendorUploadForm;
use backend\models\VendorLang;
use yii\web\UploadedFile;
use common\helpers\UploadHelper;

/**
 * Class AdminController
 * @package backend\controllers
 * 
 * @AdminModule("partial")
 */
class AdminUserController extends CController
{
    /**
     * 
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new AdminUserSearch();

        return $this->render('index',
            [
                'searchModel' => $searchModel,
                'dataProvider' => $searchModel->search(Yii::$app->request->queryParams)
            ]
        );      
    }
    
    /**
     * @return string
     */
    public function actionCreate()
    {
        $model = new AdminUser();

        $model->setScenario($model::SCENARIO_CREATE);
        $post = Yii::$app->request->post();
        if ($model->load($post) && $model->validate()) {

            $model->setPassword(trim($model->password));
            $model->setUserType();

            if ( $model->save() ) {
                $adminUserData = Yii::$app->getUser()->getIdentity();
                $adminUserName = $adminUserData->attributes['user_name'];
                $newAdminUserName = $model->first_name.$model->last_name;
            
                ActivityLog::log($adminUserName.' '. 'created New Admin User called '.' '. $newAdminUserName);
                Com::successFlash('Administrator Created Successfully');
                
                return $this->redirect(['/']);
            }
        }
        
        return $this->render('create', ['model' => $model]);
    }
    
    /**
     * @return string
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $model->setScenario($model::SCENARIO_UPDATE);
        $post = Yii::$app->request->post();
        if ($model->load($post) && $model->validate()) {
            if ($model->save()) {
                $adminUserData = Yii::$app->getUser()->getIdentity();
                $adminUserName = $adminUserData->attributes['user_name'];
                $newAdminUserName = $model->first_name.$model->last_name;
            
                ActivityLog::log($adminUserName.' '. 'updated Admin User called '.' '. $newAdminUserName);
                Com::successFlash('Administrator Updated Successfully');
            }
        }
        
        return $this->render('update', ['model' => $model]);
    }
    
    /**
     * 
     * @param type $id
     * @return $model
     * @throws NotFoundHttpException
     */
    protected function findModel($id)
    {
        if (($model = AdminUser::findOne(['admin_user_key' => $id])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    
    /**
    * 
    * @return string
    * @DefaultActionModule(true)
    */
    public function actionProfileUpdate()
    {
        $model = Yii::$app->getUser()->getIdentity();
        
            $model->setScenario($model::SCENARIO_PROFILE_UPDATE);
            $post = Yii::$app->request->post();

            if ($model->load($post)) {
                $model->save(false);
                Com::successFlash('Profile Updated Successfully');
                return $this->redirect(['/']);    
            }

   
        return $this->render('update-profile-form', [
            'model' => $model,
            //'vendormodel' => $vendorModel,
            //'modelVendorUploadForm' => $modelVendorUploadForm,
            //'modelVendorLang' => $modelVendorLang
        ]);
    }
    
    /**
    * 
    * @return string
    * @DefaultActionModule(true)
    */
    public function actionProfileView()
    { 
        $model = Yii::$app->getUser()->getIdentity();
        return $this->render('profile-view', ['model' => $model]);
    }

    /**
    *
    * @throws \yii\base\InvalidParamException
    * @throws \yii\base\Exception
    * @throws \yii\base\InvalidConfigException
    *
    */
    public function actionForgotPassword()
    {
        $result = ['status' => STATUS_FAIL, 'msg' => ''];
        $post = Yii::$app->getRequest()->post();
   
        if (!array_key_exists('email', $post)) {
            $result['msg'] = 'Required param missing';
            goto skip;
        }
        switch (APP_USER_SCOPE) {
            case ACCESS_RULE_VENDOR:
                    $model = Vendor::findOne(['vendor_email' => $post['email']]);
                break;
            
            default:
                    $model = AdminUser::findOne(['email_address' => $post['email']]);
                break;
        }
        if ($model === null) {
            $result['msg'] = 'Unable to find the requested email address';
            goto skip;
        }
        
        $model->generatePasswordResetToken();
        $resetToken =  $model->password_reset_token;
        $model->save(false);
        $result['status'] = STATUS_SUCCESS;
        $result['msg'] = 'Password reset link sent to your email';
        $resetLink = Url::to(['/admin-user/password-reset', 'resetToken' => $resetToken],true);
        $mailerQueueHelper = MailerQueueHelper::getInstance()
            ->setTo($post['email'])
            ->setSubject('Password Reset Link')
            ->setView(
                'forgotPassword',
                [
                    'name'=> $model->first_name,
                    'resetLink'=> $resetLink
                ])
            ->push();
        
        skip:
        echo Json::encode($result);
    }
    
    /**
    *
    * @throws \yii\base\InvalidParamException
    * @DefaultActionModule(true)
    */
    public function actionChangePassword()
    {
 
        $model = new AdminUserChangePasswordForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $model->changePassword();
            $this->redirect(['/']);
        }
        return $this->render('change-password', ['model' => $model]);
    }
    
    /**
    * @param $token
    * @return string
    * @throws \yii\base\Exception
    * @throws \yii\base\InvalidParamException
    *
    * 
    */
    public function actionPasswordReset($resetToken)
    {
        $this->layout = 'login';
        $model = new AdminUserChangePasswordForm();
        $model->setScenario($model::SCENARIO_PASSWORD_RESET);

        if (!Yii::$app->getUser()->getIsGuest()) {
            $this->goHome();
        }
        
        if (Yii::$app->getRequest()->get('error') !== null) {
            return $this->render('password-reset', ['model' => $model]);
        }
        switch (APP_USER_SCOPE) {
            case ACCESS_RULE_VENDOR:
                    $Scope = new Vendor();
                break;
            
            default:
                    $Scope = new AdminUser();
                break;
        }

        $modelAdminUser = $Scope::findByPasswordResetToken($resetToken);
        if ($modelAdminUser === null) {
            $error = 'Password reset token expired !';
            if ($Scope::findOne(['password_reset_token' => $resetToken]) === null) {
                $error = 'Invalid password reset token';
            }
            $this->redirect(['password-reset', 'resetToken' => $resetToken, 'error' => $error]);
        }

        if ($model->load(Yii::$app->getRequest()->post()) && $model->validate()) {
            $modelAdminUser->removePasswordResetToken();
            $modelAdminUser->setPassword($model->password);
            $modelAdminUser->save(false);

            $this->redirect(['login/', 'msg' => 'Password reset successfully']);
        }

        return $this->render('password-reset', ['model' => $model]);
    }
    
    /**
     * @return Json 
     * @throws \yii\base\InvalidParamException 
     * 
     */
    public function actionChangeStatus()
    {
        $params = ['key', 'status'];
        $post = Yii::$app->getRequest()->post();
        $result = ['status' => STATUS_FAIL, 'msg' => ''];
        foreach ($params as $param) {
            if (!array_key_exists($param, $post)) {
                $result['msg'] = 'Required param missing';
                goto skip;
            }
        }
        
        $model = AdminUser::findOne(['admin_user_key' => $post['key']]);

        if ($model === null) {
            $result['msg'] = 'Unable to find the Admin User Details';
            goto skip;
        }
        $model->status = $post['status'];
        $model->save(false);

        $result['msg'] = 'Admin User deactivated successfully';
        if ((int)$model->status === $model::ACTIVE) {
            $result['msg'] = 'Admin User activated successfully';
        }

        $result['status'] = STATUS_SUCCESS;

        skip:
        return $this->asJson($result);
    }
}

