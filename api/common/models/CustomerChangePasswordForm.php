<?php

namespace api\common\models;

use yii\base\Model;
use yii\web\IdentityInterface;

/**
 * This is the model class for collection "user".
 * Class User
 * @package reseller\models
 *
 * @property \yii\web\IdentityInterface $user
 */
class CustomerChangePasswordForm extends Model
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
                'message' => "Password does't match"
            ],
            [['password'], 'validatePassword'],
        ];
    }

    /**
     * @param string $attribute
     * @param $params
     * @return void
     */
    public function validatePassword($attribute, $params)
    {
        if (!$this->hasErrors()) {
            $user = $this->getUser();
            if (!$user || !$user->validatePassword($this->password)) {
                $this->addError($attribute, 'Invalid current password !');
            }
        }
    }

    /**
     * Finds user by [[username]]
     *
     * @return IdentityInterface
     * @throws \Exception
     * @throws \Throwable
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
     * @throws \Exception
     * @throws \Throwable
     */
    public function changePassword()
    {
        $user = $this->getUser();
        $user->setPassword($this->password);

        return $user->save();
    }
}
