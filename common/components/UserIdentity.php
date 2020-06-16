<?php

namespace common\components;

use common\helpers\Com;
use common\models\User;

/**
 * Class UserIdentity
 * @package common\components
 *
 * @author yii2
 */
class UserIdentity
{
    const USER_KEY = 'SES_USER_KEY';
    const IDENTITY = 'USER_IDENTITY';

    private static $instance;

    /**
     * @return self
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }

        return self::$instance;
    }

    /**
     * @param $userId
     * @return $this
     * @throws \yii\base\InvalidParamException
     */
    public function init($userId)
    {
        $model = User::findOne($userId);

        if ($model === null) {
            goto skip;
        }
        $this->setUser($model);

        skip:
        return $this;
    }

    /**
     * @param $user
     */
    private function setUser($user)
    {
        $data = [];
        if (Com::isSession(self::USER_KEY)) {
            $data = Com::session(self::USER_KEY);
        }
        $data[self::IDENTITY] = $user;

        Com::setSession(self::USER_KEY, $data);
    }

    /**
     * @return bool|User
     */
    public function getUser()
    {
        if (Com::isSession(self::USER_KEY)) {
            return Com::session(self::USER_KEY)[self::IDENTITY];
        }
        return false;
    }
}