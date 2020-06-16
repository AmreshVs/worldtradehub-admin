<?php

namespace common\models;

use api\helpers\Jwt;
use common\components\AttributeKeyGeneratorBehaviour;
use common\components\UserIdentity;
use common\helpers\JwtHelper;
use common\models\base\BaseUser;
use common\models\base\BaseUserAddress;
use Yii;
use yii\web\IdentityInterface;

/**
 * Class User
 * @package common\models
 */
class User extends BaseUser implements IdentityInterface
{
    public $user_address, $order_type, $isDeliveryAvailable;

    const REGISTRATION_TYPE_NORMAL = 1;
    const REGISTRATION_TYPE_FACEBOOK = 2;
    const REGISTRATION_TYPE_GOOGLE_PLUS = 3;
    const REGISTRATION_TYPE_TWITTER = 4;

    const NORMAL = 1;
    const FACEBOOK = 2;

    const USER_TYPE_SUPER_ADMIN = 1;
    const USER_TYPE_ADMIN = 1;
    const USER_TYPE_STAFF = 2;

    const STATUS_DELETED = 0;
    const STATUS_ACTIVE = 1;
    const STATUS_INACTIVE = 2;
    const AVAILABILITY_STATUS_OFFLINE = 1;
    
    const DEVICE_TYPE_ANDROID = 1;
    const DEVICE_TYPE_IOS = 2;

    /**
     * @return array
     */
    public function behaviors()
    {
        $behaviors = parent::behaviors();

        $behaviors[] = [
            'class' => AttributeKeyGeneratorBehaviour::className(),
            'attributes' => ['user_key']
        ];
        return $behaviors;
    }

    /**
     * Finds an identity by the given ID.
     * @param string|int $id the ID to be looked for
     * @return IdentityInterface the identity object that matches the given ID.
     * Null should be returned if such an identity cannot be found
     * or the identity is not in an active state (disabled, deleted, etc.)
     */
    public static function findIdentity($id)
    {
        return static::findOne(['user_id' => $id, 'status' => self::ACTIVE]);
    }

    /**
     * Finds an identity by the given token.
     * @param mixed $token the token to be looked for
     * @param mixed $type the type of the token. The value of this parameter depends on the implementation.
     * For example, [[\yii\filters\auth\HttpBearerAuth]] will set this parameter to be `yii\filters\auth\HttpBearerAuth`.
     * @return IdentityInterface the identity object that matches the given token.
     * @throws \OutOfBoundsException
     * @throws \BadMethodCallException
     * Null should be returned if such an identity cannot be found
     * or the identity is not in an active state (disabled, deleted, etc.)
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {
        $userKey = null;
        $jwtHelper = JwtHelper::getInstance();

        if ($jwtHelper->isValid($token)) {
            $userKey = $jwtHelper->getPrivateClaim($token);
        }

        return self::findOne(['user_key' => $userKey]);
    }

    /**
     * @param $username
     * @return array|null|\yii\db\ActiveRecord
     */
    public static function findByUsername($username)
    {

        return static::find()
            ->where(['OR', ['mobile_number' => $username]])
            ->andWhere(['OR',
                ['status' => 2 ],
                ['status' => 1]
            ])
            ->limit(1)
            ->one();
    }

    /**
     * Finds user by password reset token
     *
     * @param string $token password reset token
     * @return static|null
     */
    public static function findByPasswordResetToken($token)
    {
       
        if (!static::isPasswordResetTokenValid($token)) {
            return null;
        }

        return static::findOne([
            'password_reset_token' => $token,
            'status' => self::STATUS_ACTIVE,
        ]);
    }

    /**
     * @param $authId
     * @return $this
     */
    public static function findByAuthId($authId)
    {
        return self::find()
            ->where(['fb_token' => $authId])->one();
    }

    /**
     * Finds out if password reset token is valid
     *
     * @param string $token password reset token
     * @return bool
     */
    public static function isPasswordResetTokenValid($token)
    {
        if (empty($token)) {
            return false;
        }
        
        $timestamp = (int)substr($token, strrpos($token, '_') + 1);
        $expire = Yii::$app->params['user.passwordResetTokenExpire'];
        
        return $timestamp + $expire >= time();
    }

    /**
     * Returns an ID that can uniquely identify a user identity.
     * @return string|int an ID that uniquely identifies a user identity.
     */
    public function getId()
    {
        return $this->getPrimaryKey();
    }

    /**
     * Returns a key that can be used to check the validity of a given identity ID.
     *
     * The key should be unique for each individual user, and should be persistent
     * so that it can be used to check the validity of the user identity.
     *
     * The space of such keys should be big enough to defeat potential identity attacks.
     *
     * This is required if [[User::enableAutoLogin]] is enabled.
     * @return string a key that is used to check the validity of a given identity ID.
     * @see validateAuthKey()
     */
    public function getAuthKey()
    {
        return $this->auth_key;
    }

    /**
     * Validates the given auth key.
     *
     * This is required if [[User::enableAutoLogin]] is enabled.
     * @param string $authKey the given auth key
     * @return bool whether the given auth key is valid.
     * @see getAuthKey()
     */
    public function validateAuthKey($authKey)
    {
        return $this->getAuthKey() === $authKey;
    }

    /**
     * Validates password
     *
     * @param string $password password to validate
     * @return bool if password provided is valid for current user
     * @throws \yii\base\InvalidParamException
     */
    public function validatePassword($password)
    {
        return Yii::$app->security->validatePassword($password, $this->password_hash);
    }

    /**
     * Generates password hash from password and sets it to the model
     *
     * @param string $password
     * @throws \yii\base\Exception
     */
    public function setPassword($password)
    {
        $this->password_hash = Yii::$app->security->generatePasswordHash($password);
    }

    /**
     * Generates "remember me" authentication key
     * @throws \BadMethodCallException
     */
    public function generateAuthKey()
    {
        $this->auth_key = JwtHelper::getInstance()->token($this->user_key);
    }

    /**
     * Generates new password reset token
     * @throws \yii\base\Exception
     */
    public function generatePasswordResetToken()
    {
        $this->password_reset_token = Yii::$app->security->generateRandomString() . '_' . time();
    }

    /**
     * Removes password reset token
     */
    public function removePasswordResetToken()
    {
        $this->password_reset_token = null;
    }

    /**
     * @param $event
     * @throws \Throwable
     */
    protected static function afterLogin($event)
    {
        /* @var $model self */
        $model = $event->identity;
        $model->last_login = date('Y-m-d H:i:s');
        $model->save();

        UserIdentity::getInstance()->init($model->getPrimaryKey());
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOrders()
    {
        return $this->hasMany(Order::className(), ['user_id' => 'user_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUserAddresses()
    {
        return $this->hasMany(UserAddress::className(), ['user_id' => 'user_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUserCoupons()
    {
        return $this->hasMany(UserCoupon::className(), ['user_id' => 'user_id']);
    }

    /**
     * @return UserAddress
     */
    public function getUserAddress()
    {
        return $this->user_address === null ? new UserAddress() : $this->user_address;
    }

    /**
     * @param BaseUserAddress $user_address
     */
    public function setUserAddress(BaseUserAddress $user_address)
    {
        $this->user_address = $user_address;
        $this->isDeliveryAvailable = false;
    }

    /**
     * @return mixed
     */
    public function getOrderType()
    {
        return $this->order_type;
    }

    /**
     * @param mixed $order_type
     */
    public function setOrderType($order_type)
    {
        $this->order_type = $order_type;
    }

    /**
     * @return bool
     */
    public function hasValidOrderOption()
    {
        if ($this->order_type === null) {
            return false;
        }
        if (
            $this->order_type === Order::ORDER_TYPE_DELIVERY &&
            (
                $this->user_address === null ||
                $this->isDeliveryAvailable === false
            )
        ) {
            return false;
        }
        return true;
    }

    /**
     * @param bool $isDeliveryAvailable
     */
    public function setIsDeliveryAvailable($isDeliveryAvailable)
    {
        $this->isDeliveryAvailable = $isDeliveryAvailable;
    }
    
    
    public function getaddress($id)
    {   
        $query = UserAddress::find()->alias('UA')
            ->select('UA.*')
            ->leftJoin(['U' => User::tableName()],'UA.user_id = U.user_id')
            ->where([
                'UA.address_status' => UserAddress::ACTIVE,
                'U.user_id' => $id
            ])
           ->orderBy(['U'])
           ->orderBy(['user_address_id' => SORT_DESC]);

        UserAddress::selectTranslation($query);
        
        return $query->asArray()->all();
    }
   
    
}
