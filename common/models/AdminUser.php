<?php

namespace common\models;

use common\models\base\BaseAdminUser;
use common\components\AttributeKeyGeneratorBehaviour;
use api\helpers\Jwt;
use common\helpers\Com;
use Yii;
use yii\base\NotSupportedException;
use yii\web\IdentityInterface;

/**
 * Class AdminUser
 * @package common\models
 */
class AdminUser extends \common\components\CModel implements IdentityInterface
{
    const STATUS_ACTIVE = 1;
    const USER_TYPE_SUPER_ADMIN = 1;
    const USER_TYPE_STAFF = 2;
    const USER_TYPE_VENDOR = 2;
    const USER_TYPE_OUTLET = 3;
    
    public $password, $confirm_password, $role_name;
    
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%admin_user}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_type', 'status', 'role_id', 'created_user_id', 'modified_user_id'], 'integer'],
            [['last_login', 'created_at', 'modified_at'], 'safe'],
            [['admin_user_key'], 'string', 'max' => 16],
            [['first_name', 'last_name', 'user_name'], 'string', 'max' => 64],
            [['email_address', 'password_hash', 'password_reset_token', 'secret_password'], 'string', 'max' => 256],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'admin_user_id' => yii::t('common','Admin User ID'),
            'admin_user_key' => yii::t('common','Admin User Key'),
            'user_type' => yii::t('common','User Type'),
            'first_name' => yii::t('common','First Name'),
            'last_name' => yii::t('common','Last Name'),
            'email_address' => yii::t('common','Email Address'),
            'user_name' => yii::t('common','User Name'),
            'password_hash' => yii::t('common','Password Hash'),
            'password_reset_token' => yii::t('common','Password Reset Token'),
            'secret_password' => yii::t('common','Secret Password'),
            'status' => yii::t('common','Status'),
            'last_login' => yii::t('common','Last Login'),
            'role_id' => yii::t('common','Role ID'),
            'created_at' => yii::t('common','Created At'),
            'created_user_id' => yii::t('common','Created User ID'),
            'modified_at' => yii::t('common','Modified At'),
            'modified_user_id' => yii::t('common','Modified User ID'),
        ];
    }
    
    /**
     * @return array
     */
    public function behaviors()
    {
        $behaviors = parent::behaviors();

        $behaviors['key-generator'] = [
            'class' => AttributeKeyGeneratorBehaviour::className(),
            'attributes' => ['admin_user_key']
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
        return static::findOne(['admin_user_id' => $id, 'status' => self::ACTIVE]);
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
        $id = null;
        $jwtObj = Jwt::getInstance();

        if( $jwtObj->isValid($token) ){
            $id = $jwtObj->getPrivateClaim($token);
        }

        return self::findOne($id);
    }
    
    /**
     * Finds user by user_name
     *
     * @param string $user_name
     * @return static|null
     */
    /**
     * @param $user_name
     * @return array|null|\yii\db\ActiveRecord
     */
    public static function findByUsername($user_name)
    {

        return static::find()
            ->where(['OR', ['user_name' => $user_name], ['email_address' => $user_name]])
            ->andWhere(['status' => self::STATUS_ACTIVE])
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
        $timestamp = (int) substr($token, strrpos($token, '_') + 1);
        $expire = Yii::$app->params['user.passwordResetTokenExpire'];
        return $timestamp + $expire >= time();
    }
    
    /**
     * Returns a key that can be used to check the validity of a given identity ID.
     *
     * The key should be unique for each individual user, and should be persistent
     * so that it can be used to check the validity of the user identity.
     *
     * The space of such keys should be big enough to defeat potential identity attacks.
     *
     * This is required if [[AdminUser::enableAutoLogin]] is enabled.
     * @return string a key that is used to check the validity of a given identity ID.
     * @see validateAuthKey()
     */
    public function getAuthKey()
    {
        return $this->auth_key;
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
     * Validates the given auth key.
     *
     * This is required if [[AdminUser::enableAutoLogin]] is enabled.
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
     * @param $event \yii\web\User
     * @throws \MongoDB\Driver\Exception\InvalidArgumentException
     * @throws \yii\base\InvalidParamException
     */
    protected static function afterLogin($event)
    {
        /* @var $model self */
        $model = $event->identity;
        $model->last_login = date('Y-m-d H:i:s');
        $model->save();

        $permission_json = '[]';
        $modelRole = Role::findOne($model->role_id); 

        if ($modelRole != null) {
            $permission_json = $modelRole->backend_role_json;
        }

        if ( $permission_json === null ) {
            $permission_json = '[]';
        }
        
        Com::setSession(ACCESS_RULE, $permission_json);
    }
}
