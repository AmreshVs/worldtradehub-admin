<?php

namespace api\common\models;

use api\modules\v1\models\User;
use Yii;
use yii\base\Model;
use yii\web\IdentityInterface;

/**
 * This is the model class for collection "user".
 * Class User
 * @package reseller\models
 *
 * @property \yii\web\IdentityInterface $user
 */
class UserChangePassword extends Model
{

    /**
     * @var string
     */
    public $password;
    public $password_new;
    public $confirm_password;
    private $_user;


    /**
     *
     * @return array
     */
    public function rules()
    {
        return [
            [
                ['password', 'password_new', 'confirm_password'],
                'required'
            ],
            [
                'password_new',
                'string',
                'min' => 6,
                'max' => 32
            ],
            [
                'confirm_password',
                'compare',
                'compareAttribute' => 'password_new',
                'skipOnEmpty' => false,
                'message' => Yii::t('api', 'PASSWORD_DOSE_NOT_MATCH')
            ],
            [['password'], 'validatePassword'],
            [['password_new'], 'validateNewPassword'],
        ];
        
    }

    /**
     * @param string $attribute
     * @param $params
     * @return void
     * @throws \yii\base\InvalidParamException
     */
    public function validatePassword($attribute, $params)
    {               
        if (!$this->hasErrors()) {            
            $user = $this->getUser();            
            if (!$user || !$user->validatePassword($this->password)) {                    
                $this->addError($attribute, Yii::t('api', 'INVALID_CURRENT_PASSWORD'));
            }
        }
    }

    /**
     * Finds user by [[username]]
     *
     * @return User|IdentityInterface
     */
    protected function getUser()
    {      
        if ($this->_user === null) {
            $this->_user = \Yii::$app->getUser()->getIdentity();
        }

        return $this->_user;
    }

    /**
     * @return mixed
     * @throws \yii\base\InvalidParamException
     * @throws \yii\base\Exception
     */
    public function changePassword()
    {
        $user = $this->getUser();
        
        $user->setPassword($this->password_new);

        return $user->save();
    }

    /**
     * @param string $attribute
     * @param $params
     * @return void
     * @throws \yii\base\InvalidParamException
     */
    public function validateNewPassword($attribute, $params)
    {
        if (!$this->hasErrors()) {
            $user = $this->getUser();
            if ($user->validatePassword($this->password_new)) {
                $this->addError($attribute, \Yii::t('api', 'NEW_PASSWORD_SHOULD_NOT_BE_SAME_AS_OLD_PASSWORD'));
            }
        }
    }

}


