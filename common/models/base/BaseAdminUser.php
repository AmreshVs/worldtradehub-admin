<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "{{%admin_user}}".
 *
 * @property integer $admin_user_id
 * @property string $admin_user_key
 * @property integer $user_type
 * @property string $first_name
 * @property string $last_name
 * @property string $email_address
 * @property string $user_name
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $secret_password
 * @property integer $status
 * @property string $last_login
 * @property integer $role_id
 * @property string $created_at
 * @property integer $created_user_id
 * @property string $modified_at
 * @property integer $modified_user_id
 */
class BaseAdminUser extends \common\components\CModel
{
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
            'admin_user_id' => Yii::t('common', 'Admin User ID'),
            'admin_user_key' => Yii::t('common', 'Admin User Key'),
            'user_type' => Yii::t('common', 'User Type'),
            'first_name' => Yii::t('common', 'First Name'),
            'last_name' => Yii::t('common', 'Last Name'),
            'email_address' => Yii::t('common', 'Email Address'),
            'user_name' => Yii::t('common', 'User Name'),
            'password_hash' => Yii::t('common', 'Password Hash'),
            'password_reset_token' => Yii::t('common', 'Password Reset Token'),
            'secret_password' => Yii::t('common', 'Secret Password'),
            'status' => Yii::t('common', 'Status'),
            'last_login' => Yii::t('common', 'Last Login'),
            'role_id' => Yii::t('common', 'Role ID'),
            'created_at' => Yii::t('common', 'Created At'),
            'created_user_id' => Yii::t('common', 'Created User ID'),
            'modified_at' => Yii::t('common', 'Modified At'),
            'modified_user_id' => Yii::t('common', 'Modified User ID'),
        ];
    }
}
