<?php

namespace backend\models;

use yii\helpers\ArrayHelper;
use yii;

/**
* Class AdminUser
* @package backend\models
*/
class AdminUser extends \common\models\AdminUser
{  
    const SCENARIO_FORGOT_PASSWORD = 'forgot-password';
    const SCENARIO_CREATE = 'create';
    const SCENARIO_UPDATE = 'update';
    
    const SCENARIO_PROFILE_UPDATE = 'profile-update';
    /**
    * 
    * @return array
    */
    public function rules()
    {
        $rules = [
            [['user_name', 'first_name', 'last_name'], 'string'],
            ['email_address' ,'email'],
            ['email_address', 'required', 'on' =>[self::SCENARIO_FORGOT_PASSWORD]],
            [['user_name', 'email_address'], 'unique'],
            [
                [
                    'role_id',
                    'first_name',
                    'last_name',
                    'user_name',
                   // 'user_type',
                    'email_address',
                    'password',
                    'confirm_password',
                    'secret_password',
                    'status'
                ],
                'required',
                'on' => [self::SCENARIO_CREATE]
            ],
            [
                [
                    'role_id',
                    'first_name',
                    'last_name',
                    'user_name',
                    //'user_type',
                    'email_address',
                    'status'
                ],
                'required',
                'on' => [self::SCENARIO_UPDATE]
            ],
            [
                [
                    'role_id',
                    'first_name',
                    'user_name',
                   // 'user_type',
                    'email_address',
                    'vendor_contact_number',
                    'minimum_cart_value',
                    'GST',
                    'service_tax',
                    'vendor_type',
                ],
                'required',
                'on' => [self::SCENARIO_PROFILE_UPDATE]
            ],
            [
                'confirm_password', 
                'compare', 
                'compareAttribute' => 'password', 
                'skipOnEmpty'      => false,
                'skipOnError'      => false,
                'message' => "Oops, That's not the same password as the first one",
                'on' => [self::SCENARIO_CREATE]
            ]
        ];
        
        return ArrayHelper::merge(parent::rules(), $rules);
    }
    
    /**
    * 
    * @param type $index
    * @return array
    */
    public function getUserType($index = '')
    {
        $userTypeArray = [
                            1 => 'Admin',
                            2 => 'Staff'
                        ];
        ($index == '') ? ($userTypeArray = $userTypeArray) : ($userTypeArray = ArrayHelper::getValue($userTypeArray, $index));
        return $userTypeArray;   
    }
    
    /**
     * 
     * @return array
     */
    public function scenarios()
    {
        $scenarios = parent::scenarios();
        
        $scenarios[self::SCENARIO_CREATE] = [
            'role_id',
            'first_name',
            'last_name',
            'user_name',
            'user_type',
            'email_address',
            'password',
            'confirm_password',
            'secret_password',
            'status'
        ];
        
        $scenarios[self::SCENARIO_UPDATE] = [
            'role_id',
            'first_name',
            'last_name',
            'user_name',
            'user_type',
            'email_address',
            'status'
        ];

        $scenarios[self::SCENARIO_PROFILE_UPDATE] = [
            'first_name',
            'last_name',
            'user_type',
            'vendor_contact_number',
            'minimum_cart_value',
            'GST',
            'service_tax',
            'vendor_type',
        ];
        
        $scenarios[self::SCENARIO_FORGOT_PASSWORD] = [
            'email_address'
        ];
 
        return $scenarios;
    }
    
    /**
     * 
     * @param type $index
     * @return array
     */
    public function getRole($index = '')
    {
        $roleArray =  Role::find()
            ->select(['role_name', 'role_id'])
            ->Where(['role_status' => Role::ACTIVE])
            ->asArray()
            ->All();
        $roleArray = ArrayHelper::map($roleArray,'role_id', 'role_name');
        ($index == '') ? ($roleArray = $roleArray) : ($roleArray = ArrayHelper::getValue($roleArray, $index));
        
        return $roleArray;
    }
    
    /**
     * 
     * @return array
     */
    public function attributeLabels()
    {
        return [
            'username' => yii::t('backend','Admin Username'),
            'role_name' => yii::t('backend','Role Name'),
            'last_login' => Yii::t('backend', 'Last Login'),
        ];
    }
        
    /**
     * @return string
     */
    public function setUserType()
    {
        $this->user_type = self::USER_TYPE_STAFF;
    }

    public static function isVendor()
    {
        return APP_USER_SCOPE == ACCESS_RULE_VENDOR;
    }
}
