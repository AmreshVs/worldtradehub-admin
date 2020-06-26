<?php

namespace api\modules\v1\controllers;

use api\common\models\LoginForm;
use api\common\models\UserChangePassword;
use api\components\CController;
use api\modules\v1\models\CreditHistory;
use api\modules\v1\models\Post;
use api\modules\v1\models\User;
use api\modules\v1\models\UserFavourite;
use api\modules\v1\models\UserUploadForm;
use api\modules\v1\models\Configuration;
use api\modules\v1\models\Vendor;
use api\modules\v1\models\VendorLang;
use api\modules\v1\models\Cms;
use common\helpers\Com;
use common\helpers\UploadHelper;
use common\helpers\MailerQueueHelper;
use api\modules\v1\models\UserLevel;
use api\modules\v1\models\Branch;
use common\models\OtpTemp;
use Yii;
use yii\data\ActiveDataProvider;
use yii\web\UploadedFile;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;
use yii\helpers\Json;
use common\helpers\SmsGateway;
use api\components\CResponse;

/**
 * Class UserController
 * @package api\modules\v1\controllers
 */

class UserController extends CController
{    
    /**
     * @throws \Exception
     * @throws \Throwable
     *
     * @return User
     */
    public function actionLogin()
    {
        $request = Yii::$app->getRequest()->post();

        $this->checkRequiredParam($request, ['username','password']);
      
        return $this->login(LoginForm::SCENARIO_LOGIN_DEFAULT, $request);
    }

    public function actionOtpLogin()
    {
    
        $request = Yii::$app->getRequest()->post();
        $this->checkRequiredParam($request, ['mobile_number', 'otp']);
        $modelMobile = User::find()
            ->where(['mobile_number' => $request['mobile_number']])
            ->one();
        
        if($modelMobile == null){
            $this->commonError(Yii::t('api','Please registered to Continue'));
        }
        if(!empty($request['otp'])){
            if($modelMobile->otp == $request['otp']){
                $request['username'] = $request['mobile_number'];
                return $this->login(LoginForm::SCENARIO_LOGIN_DEFAULT, $request);
            } else{
                $this->commonError(Yii::t('api','Invalid OTP'));
            }
        }else {
            $modelMobile->otp = OtpTemp::generateOtp();
            $modelMobile->save(false);
            $msg = "Use " . $modelMobile->otp . " as your OTP to confirm login to World Trade Hub. Do not share this with anyone. Our representatives will not ask for OTP.";
            $curl = curl_init();
            // Set some options - we are passing in a useragent too here
            curl_setopt_array($curl, [
                CURLOPT_RETURNTRANSFER => 1,
                CURLOPT_URL => 'http://sms.acceptsms.com/app/smsapi/index.php?key=55EF2E65139DBD&campaign=0&routeid=9&type=text&contacts='.$request['mobile_number'].'&senderid=TECHIT&msg='.urlencode($msg),
                //CURLOPT_USERAGENT => 'Codular Sample cURL Request'
            ]);
            // Send the request & save response to $resp
            $resp = curl_exec($curl);
        
            // Close request to clear up some resources
            curl_close($curl);
            $this->setMessage(Yii::t('api','Otp Send successfully'));
        }
      
        return [];
    }

    /**
     * @param $scenario
     * @param array $data
     * @return User
     * @throws \yii\base\Exception
     * @throws \BadMethodCallException
     * @throws \yii\db\StaleObjectException
     * @throws \Exception
     * @throws \api\components\ApiException
     * @throws \yii\base\InvalidParamException
     * @throws \Throwable
     */
    private function login($scenario, array $data)
    {
        $model = new LoginForm();
        $model->setScenario($scenario);
        $model->load($data, '');
        
        if (!$model->login()) {
            $this->invalidLogin();
        }

        $user = Yii::$app->getUser()->getIdentity();

        if ($user === null) {
            $this->invalidLogin();
        }

        $model = User::findOne($user->getPrimaryKey());
        // $model->device_type = $data['device_type'];
        // $model->device_token = $data['device_token'];    
        //$model->update(false);

        $this->setMessage(Yii::t('api','Logged in successfully'));

        return $model;
    }
    
    /**
     * 
     * @return type
     */
    public function actionRegister()
    {
        $request = Yii::$app->getRequest()->post();
        $params = [
            'username',
            'email', 
            'mobile_number', 
            'register_type',
            'country_id',
            'city_id',
            'state_id',
            'password'
        ];
        $this->checkRequiredParam($request, $params);
        $model = User::find()
            ->where(['email' => $request['email']])
            ->one();
        
        if($model != null) {
            $this->commonError(Yii::t('api','User already registered'));
        }
        
        $modelMobile = User::find()
            ->where(['mobile_number' => $request['mobile_number']])
            ->one();
        
        if($modelMobile != null){
            $this->commonError(Yii::t('api','Mobile no already registered'));
        }
        $modelUser = new User();
        $modelUser->setScenario($modelUser::SCENARIO_REGISTER_NORMAL);
        $modelUser->load($request, "");
     
        if(!$modelUser->validate()) {
            return $modelUser->getError();
        }
        $user_temp = new OtpTemp(); 
        $otp = OtpTemp::generateOtp();
        $user_temp->email = $request['email'];
        $user_temp->mobile_no = $request['mobile_number'];
        $user_temp->user_details = Json::encode($request);
        $user_temp->otp = $otp; 
        if($user_temp->save(false)) {
            $data['User'] = Json::Decode($user_temp->user_details);
            $modelUser = new User();
            $modelUser->setScenario($modelUser::SCENARIO_REGISTER_NORMAL);
            $modelUser->load($data);
            //$modelUser->otp = $request['otp'];
            if($modelUser->validate()) {
                
               $modelUser->setPassword($data['User']['password']);
                $modelUser->status = $modelUser::STATUS_ACTIVE;
                $modelUser->save();
                
                $loginData = [
                    'username' => $data['User']['email'],
                    "password" => $data['User']['password'],
                ];

                $this->setMessage('User registered successfully');
                return $this->login(LoginForm::SCENARIO_LOGIN_DEFAULT, $loginData);
            }
        }
        return [];
    }
    

    
    public function actionVerify_otp()
    {
        $request = Yii::$app->getRequest()->post();
        
        $this->checkRequiredParam($request, ['otp','otp_id']);
        
        $user_temp = OtpTemp::findOne(['otp_temp_id' => $request['otp_id'], 'otp' => $request['otp']]);
        
        if($user_temp == null) {
            $this->commonError('INVALID_OTP');
        }
        
        $data['User'] = Json::Decode($user_temp->user_details);
        $modelUser = new User();
        $modelUser->setScenario($modelUser::SCENARIO_REGISTER_NORMAL);
        $modelUser->load($data);
        $modelUser->otp = $request['otp'];
        if($modelUser->validate()) {
            
           $modelUser->setPassword($data['User']['password']);
            $modelUser->status = $modelUser::STATUS_ACTIVE;
            $modelUser->save();
            
            // MailerQueueHelper::getInstance()
            //     ->setTo($data['User']['email'])
            //     ->setSubject('User Registration')
            //     ->setView(
            //         'signUp',[
            //         'name' => $data['User']['first_name'],
            //         'lastName' =>  $data['User']['last_name'],
            //         'mobile' => $data['User']['mobile_number'],
            //         'email' => $data['User']['email']
            //     ])
            //     ->push();
            
            $loginData = ['username' => $data['User']['mobile_number'],
                    //"password" => $data['User']['password'],
                    //"device_type" => $request['device_type'],
                    //s"device_token" => $request['device_token'],
            ];

            $this->setMessage('User registered successfully');
            return $this->login(LoginForm::SCENARIO_LOGIN_DEFAULT, $loginData);
        }

    }
    
    
    public function actionResend_otp()
    {
        $request = Yii::$app->getRequest()->post();
        
        $this->checkRequiredParam($request, ['otp_id']);
        
        $user_temp = OtpTemp::findOne(['otp_temp_id' => $request['otp_id']]);
        
        if($user_temp == null) {
            $this->commonError('Invalid request');
        }
        
        $otp = OtpTemp::generateOtp();
        $user_temp->otp = $otp;
        if($user_temp->save()) {    
            $this->setMessage('New OTP send to registered mobile');
            return ['otp_id' => $user_temp->otp_temp_id];
        }
        return [];   
    }
    
    /**
     * 
     * @return array
     */
    public function actionView()
    {      
        $user = Yii::$app->getUser()->getIdentity();
         
        $modelUser = User::findOne(['user_id' => $user->getId(),'status' => User::ACTIVE]);
         
        if($modelUser === null) {
            $this->userNotFound();
         }

        $this->setMessage('User details'); 
         return $modelUser;    
    }
    

    public function actionUpdate()
    {
        $userIdentity = Yii::$app->getUser()->getIdentity();
 
        $model = User::findOne(['user_id' => $userIdentity->getId(),'status' => User::ACTIVE]);

        if ($model === null) {
            $this->userNotFound();
        }
         $model->setScenario($model::SCENARIO_REGISTER_NORMAL);       
        
        $request = Yii::$app->getRequest()->post();
        $params = [
            'email',
            'city_id',
            'country_id',
            'state_id',
            'username',
            'password',
        ];

        $this->checkRequiredParam($request, $params);
        $oldPassword = $model->password;

        $model->load($request, "");
        if (!$model->validate()) {
            return $model->getError();
        }
        if($model->password != null) {
            $model->password = $model->setPassword($model->password);
        }
        $model->save(false);
        
        $this->setMessage('Updated successfully');

        return $model;
    }


    /**
     * 
     * @return type
     */
    public function actionForgotPassword()
    {
        $request = Yii::$app->getRequest()->post();
        
        $this->checkRequiredParam($request, ['email']);
        
       // $model = User::findOne(['email' => $request['email']]);
        $model = User::find()->where(['status' => User::ACTIVE,'email' => $request['email']])->one();
  
        if ($model === null) {
            $this->commonError('EMAIL_NOT_FOUND');
        }
        $secretPassword = Yii::$app->getSecurity()->generateRandomString(6);
        $password = $secretPassword;
        //print_r($password); die;
       // $model->secret_password_hash = $secretPassword;
        $model->setPassword(trim($password));
        $model->save(false);
        
        $mailerQueueHelper = MailerQueueHelper::getInstance()
                ->setTo($request['email'])
                ->setSubject('Forgot Password')
                ->setView(
                    'VendorRegistration',
                    [
                        'username'=> $model->email,
                        'password'=> $password
                    ])
                ->push();
    
        
        $this->setMessage(Yii::t('api','PASSWORD_RESET_LINK_SENT_SUCCESSFULLY'));
        $this->setIsObject(true);
        
        return [];
    }

   

  
    
}