<?php

namespace frontend\models;

use Yii;
use yii\base\Model;

/**
 * Class LoginForm
 * @package frontend\models
 *
 * @author A Vijay <vijay.a@technoduce.com>
 */
class LoginForm extends Model
{

    const SCENARIO_LOGIN_DEFAULT = 'login';
    const SCENARIO_SOCIAL_MEDIA_LOGIN = 'social-media-login';
    const OTP_STATUS = 1;

    public $username;
    public $password;
    public $auth_id;
    public $rememberMe = false;

    private $_user;


    /**
     * @return array
     */
    public function rules()
    {
        return [
            // username and password are both required
            ['password', 'required'],
            ['username', 'required', 'message' => 'Email Cannot be blank'],
            // rememberMe must be a boolean value
            ['rememberMe', 'boolean'],
            // password is validated by validatePassword()
            ['password', 'validatePassword'],
            ['username', 'validateUsername'],

            /**
             * Social media login Fields rules
             */
            [['auth_id'], 'required'],
            ['auth_id', 'validateSocialMediaToken'],
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
            'password',
            'rememberMe'
        ];

        $scenarios[self::SCENARIO_SOCIAL_MEDIA_LOGIN] = [
            'auth_id',
            'rememberMe'
        ];

        return $scenarios;
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
            if(isset($user->password_hash) && $user->password_hash != '') {
                if (!$user || !$user->validatePassword($this->password) && $user->password_hash != '') {
                    $this->addError($attribute, yii::t('frontend','Incorrect Email or password.'));
                }
            } else {
                $this->addError($attribute, yii::t('frontend','Incorrect Email or password.'));
            }    
        }
    }

    /**
     * Finds user by [[username]]
     *
     * @return array|Branch|User|\yii\db\ActiveRecord
     */
    protected function getUser()
    {
        if ($this->scenario === self::SCENARIO_SOCIAL_MEDIA_LOGIN) {
            $this->_user = User::findByAuthId($this->auth_id);
        } else {
            if ($this->_user === null) {
                $this->_user = User::findByUsername($this->username);
            }
        }
        return $this->_user;
    }

    public function validateUsername()
    {
        $user = $this->getUser();
        if(!$user) {
            $this->addError('password','Incorrect username');
        } else {   
            if ($this->scenario === self::SCENARIO_LOGIN_DEFAULT) {
                if ($user->status !== User::ACTIVE) {                
                    $this->addError('username','User is not active');                 }
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
     public function attributeLabels()
    {
        return [
            'username' => Yii::t('frontend', 'User Name'),
            'password' => Yii::t('frontend', 'Password'),
      
        ];
    }
}