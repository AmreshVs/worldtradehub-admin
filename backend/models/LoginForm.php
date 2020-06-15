<?php

namespace backend\models;

use Yii;
use yii\base\Model;

/**
 * Login form
 *
 * @property null $user
 */
class LoginForm extends Model
{
    public $user_name;
    public $password;
    public $rememberMe = false;

    private $_user;


    /**
     * @return array
     */
    public function rules()
    {
        return [
            // username and password are both required
            [['user_name', 'password'], 'required'],
            // rememberMe must be a boolean value
            ['rememberMe', 'boolean'],
            // password is validated by validatePassword()
            ['password', 'validatePassword'],
        ];
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
            if (!$user || !$user->validatePassword($this->password, $params)) {
                $this->addError($attribute, yii::t('backend','Incorrect username or password.'));
            }
        }
    }

    /**
     * Logs in a user using the provided user_name and password.
     *
     * @return bool whether the user is logged in successfully
     * @throws \yii\base\InvalidParamException
     */
    public function login()
    {
        if ($this->validate()) {
            $isLogin = Yii::$app->user->login($this->getUser(), $this->rememberMe ? 3600 * 24 * 30 : 0);
            
            if ( $isLogin ) {
                ActivityLog::log('logged in');
            }else{
                ActivityLog::log('*** try to login with invalid credential', $this->user_name);
            }
            
            return $isLogin;
        }
        
        ActivityLog::log('*** try to login with invalid credential', $this->user_name);
        return false;
    }

    /**
     * Finds user by [[user_name]]
     */
    protected function getUser()
    {
        if ($this->_user === null) {
            switch (APP_USER_SCOPE) {
                case ACCESS_RULE_VENDOR:
                    $this->_user = Vendor::findByUsername($this->user_name);
                    break;
                
                default:
                    $this->_user = AdminUser::findByUsername($this->user_name);
                    break;
            }
            
            
        }
        return $this->_user;
    }
}

