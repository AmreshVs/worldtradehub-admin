<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property integer $user_id
 * @property string $user_key
 * @property string $first_name
 * @property string $last_name
 * @property string $email
 * @property integer $mobile_number
 * @property string $username
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $auth_key
 * @property string $profile_image
 * @property integer $tobaogo_point
 * @property integer $tobaogo_credit
 * @property integer $status
 * @property string $last_login
 * @property string $referral_code
 * @property integer $last_read_notification_id
 * @property integer $promotion_notification_status
 * @property integer $created_user_id
 * @property string $created_at
 * @property string $updated_at
 * @property integer $updated_user_id
 * @property integer $referred_user_id
 * @property string $device_token
 * @property string $google_token
 * @property string $fb_token
 * @property string $device_type
 * @property double $overall_tabaogo_point
 * @property integer $gender
 * @property string $DOB
 * @property integer $default_address
 * @property string $web_token
 */
class BaseUser extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['mobile_number',  'status', 'created_user_id', 'updated_user_id'], 'integer'],
            [['auth_key'], 'string'],
            [['last_login', 'created_at', 'updated_at', 'DOB'], 'safe'],
            //[['overall_tabaogo_point'], 'number'],
            [['area','city'],'safe'],
            [['user_key'], 'string', 'max' => 16],
            [[ 'username'], 'string', 'max' => 64],
            [['email'], 'string', 'max' => 254],
            [['password_hash', 'password_reset_token'], 'string', 'max' => 256],
            //[['referral_code'], 'string', 'max' => 8],
            //[['device_token'], 'string', 'max' => 245],
            [['device_type'], 'string', 'max' => 45],
            //[['web_token'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'user_id' => 'User ID',
            'user_key' => 'User Key',
            'first_name' => 'First Name',
            'last_name' => 'Last Name',
            'email' => 'Email',
            'mobile_number' => 'Mobile Number',
            'username' => 'Username',
            'password_hash' => 'Password Hash',
            'password_reset_token' => 'Password Reset Token',
            'auth_key' => 'Auth Key',
            'profile_image' => 'Profile Image',
            'tobaogo_point' => 'Tobaogo Point',
            'tobaogo_credit' => 'Tobaogo Credit',
            'status' => 'Status',
            'last_login' => 'Last Login',
            'referral_code' => 'Referral Code',
            'last_read_notification_id' => 'Last Read Notification ID',
            'promotion_notification_status' => 'Promotion Notification Status',
            'created_user_id' => 'Created User ID',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'updated_user_id' => 'Updated User ID',
            'referred_user_id' => 'Referred User ID',
            'device_token' => 'Device Token',
            'google_token' => 'Google Token',
            'fb_token' => 'Fb Token',
            'device_type' => 'Device Type',
            'overall_tabaogo_point' => 'Overall Tabaogo Point',
            'gender' => 'Gender',
            'DOB' => 'Dob',
            'default_address' => 'Default Address',
            'web_token' => 'Web Token',
            'area' => 'Area',
            'city' => 'city'
        ];
    }
}
