<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\web\IdentityInterface;

/**
* Class AdminUserChangePasswordForm
* @package backend\models
*/
class AdminUserChangePasswordForm extends Model
{
    const SCENARIO_PASSWORD_RESET = 'password-reset';

    /**
    * @var string
    */
    public $password_old;
    public $password;
    public $password_repeat;
    private $_user;

    /**
     * @return array
     */
    public function attributeLabels()
    {
        return [
            'password_old'      => yii::t('backend','Current password'),
            'password'          => yii::t('backend','New password'),
            'password_repeat'   => yii::t('backend','New password repeat'),
        ];
    }

    /**
    * 
    * @return array
    */
    public function rules()
    {
        return [
            ['password', 'string', 'min' => 6],
            ['password_repeat', 'compare', 'compareAttribute' => 'password', 'skipOnEmpty' => false, 'message' => "Password doesn't match"],
            [['password_old', 'password', 'password_repeat'], 'required'],
            [['password_old'], 'validatePassword'],
        ];
    }

    /**
    * @return array
    */
    public function scenarios()
    {
        $scenarios = parent::scenarios();

        $scenarios[self::SCENARIO_PASSWORD_RESET] = ['password', 'password_repeat'];

        return $scenarios;
    }

    /**
    * @param string $attribute
    * @param $params
    * @return void
    */
    public function validatePassword($attribute, $params)
    {
        if (!$this->hasErrors()) {
            $user = $this->getAdminUser();
            if (!$user || !$user->validatePassword($this->password_old)) {
                $this->addError($attribute, 'Invalid current password !');
            }
        }
    }

    /**
    *
    * @return IdentityInterface
    */
    protected function getAdminUser()
    {
        if ($this->_user === null) {
            $this->_user = Yii::$app->getUser()->getIdentity();
        }

        return $this->_user;
    }

    /**
    * @return mixed
    */
    public function changePassword()
    {
        $user = $this->getAdminUser();
        $user->setPassword($this->password);
        return $user->save();
    }
}


