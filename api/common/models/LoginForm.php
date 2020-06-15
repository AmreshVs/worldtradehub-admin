<?php

namespace api\common\models;

use common\models\User;
use common\models\Vendor;
use Yii;
use yii\base\Model;

/**
 * Login form
 */
class LoginForm extends Model
{

    const SCENARIO_LOGIN_DEFAULT = 'login';
    const SCENARIO_SOCIAL_MEDIA_LOGIN = 'social-media-login';
    const SCENARIO_VENDOR_LOGIN = 'vendor-login';

    const NORMAL_LOGIN = 1;
    const SOCIAL_MEDIA_FB = 2;
    const SOCIAL_MEDIA_GOOGLE = 3;
    
    public $username;
    public $otp;
    public $login_type;
    public $social_token;
    public $device_token;
    public $device_type_id;
    public $rememberMe = false;

    private $_user;


    /**
     * @return array
     */
    public function rules()
    {
        return [
            // username and password are both required
            [['username'], 'required'],

            // [['device_token', 'device_type_id'], 'safe'],
            // // rememberMe must be a boolean value
            // ['rememberMe', 'boolean'],
            ['username', 'validateUsername'],
            // password is validated by validatePassword()
            //['otp', 'validatePassword'],
        ];
    }

    /**
     * @return array
     */
    public function scenarios()
    {
        $scenarios = parent::scenarios();

        $scenarios[self::SCENARIO_LOGIN_DEFAULT] = [
            'username',
            'rememberMe',
            'login_type'
        ];

        return $scenarios;
    }

    public function validateUsername()
    {
        $user = $this->getUser();
        if(!$user) {
            $this->addError('Incorrect username');
        } else {   
            if ($this->scenario === self::SCENARIO_LOGIN_DEFAULT) {
                if ($user->status !== User::ACTIVE) {                
                    $this->addError('username','User is not active'); 
                }
            } elseif ($this->scenario === self::SCENARIO_VENDOR_LOGIN) {
                if ($user->vendor_status !== Vendor::ACTIVE) {                
                    $this->addError('User is not active'); 
                }
            }            
        }
    }

        /**
     * Validates the password.
     * This method serves as the inline validation for password.
     *
     * @param string $attribute the attribute currently being validated
     * @param array $params the additional name-value pairs given in the rule
     * @throws \yii\base\InvalidParamException
     */
    public function validatePassword($attribute, $params)
    {
        if (!$this->hasErrors()) {

            $user = $this->getUser();
            if (!$user || !$user->validatePassword($this->password)) {
                $this->addError($attribute, 'Incorrect username or password.');
            }
        }
    }

    /**
     * Validates the password.
     * This method serves as the inline validation for password.
     *
     * @param string $attribute the attribute currently being validated
     * @param array $params the additional name-value pairs given in the rule
     * @throws \yii\base\InvalidParamException
     */
    public function validateSocialMediaToken($attribute, $params)
    {
        if (!$this->hasErrors()) {
            $user = $this->getUser();
            if (!$user) {
                $this->addError($attribute, 'Incorrect username or password.');
            }
        }
    }

    /**
     * Logs in a user using the provided username and password.
     *
     * @return bool whether the user is logged in successfully
     * @throws \yii\base\InvalidParamException
     */
    public function login()
    {
        if ($this->validate()) {
            return Yii::$app->user->login($this->getUser());
        } else {
            return false;
        }
    }

    /**
     * Logs in a user using the provided username and password.
     *
     * @return bool whether the user is logged in successfully
     * @throws \yii\base\InvalidParamException
     */
    public function loginSocialMedia()
    {
        if ($this->validate()) {
            return Yii::$app->user->login($this->getUser(), $this->rememberMe ? 3600 * 24 * 30 : 0);
        } else {
            return false;
        }
    }

    /**
     * Logs in a vendor using the provided username and password.
     *
     * @return bool whether the user is logged in successfully
     * @throws \yii\base\InvalidParamException
     */
    public function loginVendor()
    {
        if ($this->validate()) {
            return Yii::$app->getVendor()->login($this->getUser());
        } else {
            return false;
        }
    }

    /**
     * Finds user by [[username]]
     *
     * @return User|Vendor
     */
    protected function getUser()
    {
        //switch ($this->scenario){
           
            $this->_user = User::findByUsername($this->username);
        
        //}

        return $this->_user;
    }
}
