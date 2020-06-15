<?php

/**
 * Created by IntelliJ IDEA.
 * User: developer
 * Date: 17/08/17
 * Time: 12:14 PM
 */

namespace backend\modules\delivery\models;

use common\components\ConfigurationMethod;
use common\components\ConfigurationOption;
use Yii;
use Yii\helpers\ArrayHelper;

/**
 * Class Message
 * @package backend\modules\delivery\models
 */
class DeliveryBoy extends \common\components\CModel implements ConfigurationOption {

    const DELIVERY_ACTIVE = 1;
    const DELIVERY_DEACTIVE = 5;
    const DELIVERY_ONLINE = 2;
    const DELIVERY_OFFLINE = 3;
    
    const SCENARIO_REGISTER_FRONTEND = 'register_frontend';
    const SCENARIO_REGISTER_BACKEND = 'register_backend';
    
    const DELIVERY_BOY_APPROVED = 1;
    const DELIVERY_BOY_DISAPPROVED = 0;

    public $name = '';
    public $company_id = '';
    public $address = '';
    public $city = '';
    public $country = '';
    public $phone_number = '';
    public $dob = '';
    public $gender = '';
    public $password = '';
    public $confirm_password = '';
    public $identity_number = '';
    public $license_number = '';
    public $license_expiry_date = '';
    public $vehicle_number = '';
    public $device_type = '';
    public $image = '';
    public $email = '';
    public $vendor_key = '';
    public $terms = '';
    public $status = '';

    public $bank_name = '';
    public $bank_branch_code = '';
    public $account_number = '';
    public $swift_code = '';
    public $branch_name = '';
    public $stripe_account_id = '';
    public $is_approved = '';
    

    /**
     * @inheritdoc
     */
    public function rules() {

        $rules = [
            [
                [
                    'name', 
                    'company_id', 
                    'address',
                    'email',
                    'license_number',
                    'vehicle_number',
                    'city', 
                    'country', 
                    'phone_number', 
                    'password', 
                    'device_token', 
                    'confirm_password', 
                    'gender', 
                    // 'stripe_account_id'
                ],
                'required',
                'on' =>  [
                    self::SCENARIO_REGISTER_FRONTEND,
                ]
            ],
            [
                [
                    'name', 
                    'address', 
                    'city',
                    'email',
                    'country', 
                    'phone_number', 
                    'password',
                    'identity_number',
                    'license_number',
                    'license_expiry_date',
                    'vehicle_number',
                    'dob',
                    'password', 
                    'gender', 
                    // 'stripe_account_id'
                ],
                'required',
                'on' =>  [
                    self::SCENARIO_REGISTER_BACKEND
                ]
            ],
            [
                [
                    'dob', 'identity_number', 'license_number', 'image', 'license_expiry_date', 'email', 'vehicle_number', 'stripe_account_id'
                ],
                'safe',
            ],
            [
                [
                    'phone_number', 'device_type'
                ],
                'integer'
            ],
            [
                [
                    'email'
                ],
                'email',
            ],
            [
                [
                    'gender'
                ],
                'default',
                'value' => 0
            ],
            [
                [
                    'confirm_password'
                ],
                'compare',
                'compareAttribute' => 'password',
                'skipOnEmpty' => false,
                'skipOnError' => false
            ],
            [
                ['image'],
                'file',
                'skipOnEmpty' => true,
                'maxSize' => 1024 * 1024 * 10,
                'mimeTypes' => ['image/png', 'image/jpg', 'image/jpeg']
            ],
            [
                ['password'],
                'string',
                'min' => 6,
            ],
            [
                ['phone_number'],
                'match',
                'pattern' => '/^[0-9]{7,15}$/',
                'message' => Yii::t('backend', 'Mobile accept only 7 to 15 digit numbers'),
                'skipOnEmpty' => true,
                'skipOnError' => true
            ],
            [
                'terms',
                'required',
                'requiredValue' => 1,
                'message' => yii::t('frontend','Accept tearms and conditions'),
                'on' => self::SCENARIO_REGISTER_FRONTEND,
            ],
        ];

        return ArrayHelper::merge(parent::rules(), $rules);
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        $labels = [
            'name' => Yii::t('backend', 'Delivery Boy Name'),
            'address' => Yii::t('backend', 'Address'),
            'city' => Yii::t('backend', 'City'),
            'country' => Yii::t('backend', 'Country'),
            'phone_number' => Yii::t('backend', 'Phone Number'),
            'dob' => Yii::t('backend', 'Date of Birth'),
            'gender' => Yii::t('backend', 'Gender'),
            'password' => Yii::t('backend', 'Password'),
            'confirm_password' => Yii::t('backend', 'Confirm Password'),
            'identity_number' => Yii::t('backend', 'Identify Number'),
            'license_number' => Yii::t('backend', 'Licence Number'),
            'license_expiry_date' => Yii::t('backend', 'Licence Expiry Date'),
            'device_type' => Yii::t('backend', 'Device Type'),
            'device_token' => Yii::t('backend', 'Device Token'),
            'image' => Yii::t('backend', 'Licence Image'),
            'vendor_key' => Yii::t('backend', 'Branch Name'),
            'bank_name' => Yii::t('backend', 'Bank Name'), 
            'bank_branch_code' => Yii::t('backend', 'Bank Branch Code'), 
            'account_number' => Yii::t('backend', 'Account Number'), 
            'swift_code' => Yii::t('backend', 'Swift Code'), 
            'branch_name' => Yii::t('backend', 'Branch Name'),
            'is_approved' => Yii::t('backend', 'Approve Status')
        ];
        return ArrayHelper::merge(parent::attributeLabels(), $labels);
    }
    
    public function scenarios()
    {
        $scenarios = parent::scenarios();
        
        $scenarios[self::SCENARIO_REGISTER_BACKEND] = [
            'name', 
            'email',
            'company_id', 
            'address', 
            'city', 
            'country', 
            'dob',
            'identity_number',
            'license_number',
            'license_expiry_date',
            'vehicle_number',
            'phone_number', 
            'password', 
            'confirm_password',
            'gender', 
            // 'stripe_account_id'
        ]; 
        
        $scenarios[self::SCENARIO_REGISTER_FRONTEND] = [
            'name', 
            'company_id', 
            'address', 
            'city',
            'email',
            'license_number',
            'vehicle_number',
            'country', 
            'phone_number', 
            'password', 
            'confirm_password',
            'device_token', 
            'gender', 
            // 'stripe_account_id',
            'terms'
        ]; 
        
        return $scenarios;
    }

}
