<?php
namespace backend\models;

use common\helpers\Com;
use Yii;
use Yii\helpers\ArrayHelper;

/**
 * Class Configuration
 * @package backend\models
 */
class Configuration extends \common\models\Configuration
{
    public $app_logo, $fav_logo;

    /**
     * @return array
     */
    public function rules()
    {
        $rules = [

            # URL Validation
            [
                [
                    self::FACEBOOK_URL,
                    self::TWITTER_URL,
                    self::GOOGLE_PLUS_URL,
                    self::LINKEDIN_URL,
                    self::INSTAGRAM_URL,
                    self::YOUTUBE_URL,
                ],
                'url'
            ],

            [
                [
                    self::FACEBOOK_URL,
                    self::TWITTER_URL,
                    self::GOOGLE_PLUS_URL,
                    self::LINKEDIN_URL,
                    self::INSTAGRAM_URL,
                    self::YOUTUBE_URL,
                    self::IOS_LINK,
                    self::ANDROID_LINK,
                    self::SUPPILER_ANDROID_LINK,
                    self::DRIVER_ANDROID_LINK,
                ]
            ,
                'required'
            ],

            [
                [
                    self::LOYALTY_REDEMPTION_AMOUNT,
                    self::LOYALTY_TARGET_POINT,
                    self::LOYALITY_STATUS,
                ]
            ,
                'required'
            ],
            
            # Sms gateway
            # ###########
            [[self::SMS_ACCOUNT_ID, self::SMS_AUTH_TOKEN, self::SMS_SENDER_ID,self::SMS_COUNTRY_CODE], 'required'],
            [
                [self::IS_SMS_ENABLED],
                'safe'
            ],

            # LiveChat
            # ###########
            [[self::LIVECHAT_SCRIPT_LICENCE_NUMBER], 'safe'],
            [
                [self::LIVECHAT_SCRIPT_LICENCE_NUMBER],
                'integer',
                'integerOnly' => true,
                'min' => 0,
                'max' => 9999999999,
                'message' => 'Invalid licence number'
            ],

            # Email settings
            # ##############
            [
                [self::SMTP_HOST, self::SMTP_PORT, self::SMTP_ENCRYPTION, self::SMTP_USERNAME,self::SMS_GATEWAY_FROM,self::SMTP_PASSWORD],
                'required'
            ],
            [
                [self::IS_SMTP_ENABLED],
                'safe'
            ],

            [
                [self::SMTP_PORT],
                'integer',
                'integerOnly' => true,
                'min' => 100,
                'max' => 999,
                'message' => 'Invalid port number'
            ],

            # Terms And Condition
            # ############
            [[self::TERMS_PAGENAME, self::TERMS_CONTENTNAME], 'required'],

            # Privacy Policy
            # ############
            [[self::PRIVACY_PAGENAME, self::PRIVACY_CONTENTNAME], 'required'],

            [
                [
                    self::MINIMUM_LOYALTY_POINTS,
                    self::CONVERSION_LOYALTY_POINTS_COUNT,
                    self::CONVERSION_LOYALTY_POINTS_CURRENCY
                ],
                'required'
            ],

            [[self::TABAOGO_CREDIT],'required'],
            
            [[self::DISTANCE_TIME],'required'],
            
            # Cart Management
            # ############
            [[self::MINIMUM_CART_VALUE, self::VAT_TAX, self::SERVICE_TAX, self::COMMISSION_PERCENTAGE], 'required'],

            # App Management
            # ############
            [
                [
                    self::RADIUS,
                    self::APP_NAME,
                    self::APP_EMAIL,
                    self::APP_CONTACT_NO,
                    self::APP_CONTACT_ADDRESS,
                    self::SITE_COPYRIGHT,
                    self::META_DESCRIPTION,
                    self::META_KEYWORD,
                    self::APP_DESCRIPTION,
                    self::SITE_NAME,
                    self::MAP_KEY,
                ],
                'required'
            ],
            [[self::APP_CONTACT_NO], 'number'],
            [[self::APP_LOGO_PATH, self::FAV_LOGO_PATH, self::OFFER_IMAGE_PATH], 'file'],
            [[self::APP_EMAIL], 'email'],

            # Theme Management
            # ############
            [
                [
                    self::APP_PRIMARY_COLOR,
                    self::APP_SECONDARY_COLOR,
                    self::BUTTON_COLOR,
                    self::BUTTON_HOVER_COLOR,
                    self::FONT_COLOR,
                    self::FOOTER_APPS_COLOR
                ],
                'required'
            ],

            # Onesignal Setting
            # ############
            [
                [
                    self::ONESIGNAL_APP_ID, 
                    self::ONESIGNAL_AUTH_ID, 
                    self::PUSH_NOTIFICATION_APP_ID, 
                    self::PUSH_NOTIFICATION_REST_API_KEY ,
                    self::VENDOR_ONESIGNAL_APP_ID,
                    self::VENDOR_PUSH_NOTIFICATION_REST_API_KEY,
                    self::DELIVERYBOY_ONESIGNAL_APP_ID,
                    self::DELIVERY_BOY_PUSH_NOTIFICATION_REST_API_KEY
                ], 
                'required'
            ],
            [
                [
                    self::VENDOR_ONESIGNAL_AUTH_ID,
                    self::DELIVERYBOY_ONESIGNAL_AUTH_ID,
                    self::VENDOR_ONESIGNAL_APP_ID,
                    self::DELIVERYBOY_ONESIGNAL_APP_ID,
                    self::IS_CUSTOMER_NOTIFICATION_ENABLED,
                    self::IS_VENDOR_NOTIFICATION_ENABLED,
                    self::IS_DELIVERY_NOTIFICATION_ENABLED,
                    self::IS_WEBPUSH_NOTIFICATION_ENABLED,
                    self::IS_CUSTOMER_SOUND_ENABLED,
                    self::IS_VENDOR_SOUND_ENABLED,
                    self::IS_DELIVERY_SOUND_ENABLED,
                    self::PUSH_NOTIFICATION_APP_ID,
                    self::PUSH_NOTIFICATION_REST_API_KEY,
                ],
                'safe'
            ],
//
            [
                [self::MINIMUM_CART_VALUE, self::VAT_TAX, self::RADIUS],
                'number',
                'numberPattern' => '/^\s*[-+]?[0-9]*[.,]?[0-9]+([eE][-+]?[0-9]+)?\s*$/'
            ],
//
            # Deliveryboy port Management
            # ############
            [
                [
                    self::DELIVERY_BOY_ACCESS_URL, 
                    self::COMPANY_KEY, 
                    self::ORDER_PER_DRIVER, 
                    self::DELIVERY_BOY_BEARER,
                    self::ORDER_ACCEPT_TIME_LIMIT,
                    self::DELIVERYBOY_RADIUS,
                    self::DELIVERY_BOY_ORDER_ASSIGN_TYPE
                ],
                'required'
            ],
            [
                [self::ORDER_PER_DRIVER],
                'integer',
                'integerOnly' => true,
                'min' => 1,
                'max' => 100,
                'message' => 'Invalid number'
            ],
//
            /*Developer Setting*/
            [[self::IS_ENABLED_DELIVERYBOY], 'safe'],
            [[self::APP_CURRENCY_CODE, self::TIME_ZONE, self::CURRENCY_SYMBOL, self::CURRENCY_SYMBOL_SIDE, self::CURRENCY_DECIMAL_PLACE, self::PREORDER_DATE_COUNT, self::CURRENCY_VALUE, self::CURRENCY_FORMAT], 'required'],
            [
                [self::ANDROID_LINK, self::IOS_LINK],
                'url'
            ],

            [
                [self::CURRENCY_DECIMAL_PLACE],
                'integer',
                'min' => 0,
            ],

            /**
             * Loyalty Point Configuration
             */
            [[self::LOYALTY_POINT_TYPE], 'required'],
            [[self::MINIMUM_LOYALTY_POINTS], 'number'],
            
            /**
             * Referral Point Configuration
             */
            [
                [
                    self::LEVEL1_REFERRAL_POINTS,
                    self::LEVEL2_REFERRAL_POINTS,
                    self::LEVEL3_REFERRAL_POINTS
                ], 
                'required',
            ],
            [
                [
                    self::LEVEL1_REFERRAL_POINTS,
                    self::LEVEL2_REFERRAL_POINTS,
                    self::LEVEL3_REFERRAL_POINTS
                ],
                'number'
            ],

            /**
            * location details
            */
            [
                [
                    self::COUNTRY,
                    self::CITY
                ],
                'required'
            ],
            /**
            *strip Payment credencials
            **/
            [
                [
                    self::STRIPE_SECRET_KEY,
                    self::STRIPE_PUBLISHABLE_KEY,
                    self::STRIPE_CURRENCY
                ],
                'required'
            ]
        ];
        return ArrayHelper::merge(parent::rules(), $rules);
    }

    /**
     * @return array
     */
    public function getConfigData()
    {
        return [
            /*app setting*/
            'app_setting' => [
                'app_name' => self::get(self::APP_NAME),
                'app_email' => self::get(self::APP_EMAIL),
                'app_contact_no' => self::get(self::APP_CONTACT_NO),
                'app_contact_address' => self::get(self::APP_CONTACT_ADDRESS),
                'app_radius' => self::get(self::DELIVERYBOY_RADIUS),
                'app_latitude' => self::get(self::APP_LATITUDE),
                'app_longitude' => self::get(self::APP_LONGITUDE),
                'app_currency_code' => self::get(self::APP_CURRENCY_CODE),
                'app_logo_path' => Yii::$app->request->hostInfo . Com::res('img/logo-color.png', false),
                'driver_allocation' => self::get(self::DELIVERY_BOY_ORDER_ASSIGN_TYPE),
                'delivery_boy_order_assign_type' => self::get(self::DELIVERY_BOY_ORDER_ASSIGN_TYPE),
            ],
            /*SMS setting*/
            'sms_setting' => [
                'is_sms_enabled' => self::get(self::IS_SMS_ENABLED),
                'sms_account_id' => self::get(self::SMS_ACCOUNT_ID),
                'sms_auth_token' => self::get(self::SMS_AUTH_TOKEN),
                'sms_sender_id' => self::get(self::SMS_SENDER_ID),
                'sms_country_code' => self::get(self::SMS_COUNTRY_CODE),
            ],
            /*SMTP setting*/
            'smtp_setting' => [
                'is_smtp_enabled' => self::get(self::IS_SMTP_ENABLED),
                'smtp_host' => self::get(self::SMTP_HOST),
                'smtp_port' => self::get(self::SMTP_PORT),
                'smtp_username' => self::get(self::SMTP_USERNAME),
                'smtp_password' => self::get(self::SMTP_PASSWORD),
                'smtp_encryption' => self::get(self::SMTP_ENCRYPTION),
            ],
            /*theme setting*/
            'theme' => [
                'app_primary_color' => self::get(self::APP_PRIMARY_COLOR),
            ],
            /*Onesignal setting*/
            'one_signal' => [
                'one_signal_app_id' => self::get(self::PUSH_NOTIFICATION_APP_ID),
                'one_signal_auth_id' => (string)self::get(self::PUSH_NOTIFICATION_REST_API_KEY),
                'vendor_one_signal_app_id' => self::get(self::VENDOR_ONESIGNAL_APP_ID),
                'vendor_one_signal_auth_id' => (string)self::get(self::VENDOR_PUSH_NOTIFICATION_REST_API_KEY),
                'deliveryboy_one_signal_app_id' => self::get(self::DELIVERYBOY_ONESIGNAL_APP_ID),
                'deliveryboy_one_signal_auth_id' => (string)self::get(self::DELIVERY_BOY_PUSH_NOTIFICATION_REST_API_KEY),
                'deliveryboy_channel_id' => self::get(self::DELIVERYBOY_CHANNEL_ID)
            ],
            'backend_setting' => [
                'url' => Yii::$app->request->hostInfo,
            ],
            'driver_per_order' => self::get(self::ORDER_PER_DRIVER),
        ];
    }

    /**
     * @return array
     */
    public function attributeLabels()
    {
        $attributeLabels = [
            self::APP_NAME => Yii::t('backend', 'WebSite App Name'),
            self::LOYALTY_POINT_TYPE => Yii::t('backend', 'Calculate loyalty points on?'),
            self::TABAOGO_CREDIT => Yii::t('backend', '1 RM (in credit points)'),
            self::DISTANCE_TIME => Yii::t('backend', '1 KM (in minutes)'),
            self::APP_CURRENCY_CODE => Yii::t('backend', 'Currency Code'),
            self::SERVICE_TAX => Yii::t('backend', 'Service tax(%)'),
            self::IOS_LINK => Yii::t('backend', 'Appstore Link'),
            self::ANDROID_LINK => Yii::t('backend', 'Playstore Link'),
            self::CITY_KUALA_LUMPUR => Yii::t('backend', 'Kuala Lumpur'),
            self::CITY_MELAKA => Yii::t('backend', 'Melaka'),
            self::CITY_SELANGOR => Yii::t('backend', 'Selangor'),
            self::CURRENCY_SYMBOL => Yii::t('backend', 'Currency Symbol'),
            self::PUSH_NOTIFICATION_APP_ID =>   Yii::t('backend', 'Customer App OneSignal App ID'),
            self::PUSH_NOTIFICATION_REST_API_KEY => Yii::t('backend', 'Customer Push Notification Rest API Key'),
            self::VENDOR_ONESIGNAL_APP_ID => Yii::t('backend', 'Vendor App OneSignal App ID'),
            self::DELIVERYBOY_ONESIGNAL_APP_ID => Yii::t('backend', 'Delivery Boy App OneSignal App ID'),
            self::APP_NAME => Yii::t('backend', 'App Name'),
            self::APP_DESCRIPTION => Yii::t('backend', 'App Description'),
            self::META_KEYWORD => Yii::t('backend', 'Meta Keyword'),
            self::META_DESCRIPTION => Yii::t('backend', 'Meta Description'),
            self::APP_EMAIL => Yii::t('backend', 'App Email'),
            self::APP_CONTACT_NO => Yii::t('backend', 'App Contact No'),
            self::APP_CONTACT_ADDRESS => Yii::t('backend', 'App Contact Address'),
            self::SITE_COPYRIGHT => Yii::t('backend', 'Site Copyright'),
            self::FACEBOOK_URL => Yii::t('backend', 'Facebook Url'),
            self::TWITTER_URL => Yii::t('backend', 'Twitter Url'),
            self::INSTAGRAM_URL => Yii::t('backend', 'Instagram Url'),
            self::GOOGLE_PLUS_URL => Yii::t('backend', 'Google Plus Url'),
            self::IS_SMS_ENABLED => Yii::t('backend', 'Is Sms Enabled'),
            self::SMS_ACCOUNT_ID => Yii::t('backend', 'SMS Gateway Username'),
            self::SMS_AUTH_TOKEN => Yii::t('backend', 'SMS Gateway Password'),
            self::SMS_SENDER_ID => Yii::t('backend', 'SMS Gateway Sender ID'),
            self::SMTP_HOST => Yii::t('backend', 'SMTP Host'),
            self::SMTP_ENCRYPTION => Yii::t('backend', 'SMTP Encryption'),
            self::SMTP_PORT => Yii::t('backend', 'SMTP Port'),
            self::SMTP_USERNAME => Yii::t('backend', 'SMTP Username'),
            self::SMTP_PASSWORD=> Yii::t('backend', 'SMTP Password'),
            self::IS_SMTP_ENABLED => Yii::t('backend', 'Is SMTP Enabled'),
            self::ORDER_ACCEPT_TIME_LIMIT => Yii::t('backend', 'Order Accept Time Limit(in minutes)'),
            self::DELIVERYBOY_RADIUS => Yii::t('backend', 'Deliveryboy Radius(KM)'),
            self::DELIVERY_BOY_ORDER_ASSIGN_TYPE => Yii::t('backend', 'Delivery Boy Order Assign Type'),
            self::DELIVERY_BOY_ACCESS_URL => Yii::t('backend', 'Delivery Boy Access Url'),
            self::COMPANY_KEY => Yii::t('backend', 'Company Key'),
            self::DELIVERY_BOY_BEARER => Yii::t('backend', 'Delivery Boy Bearer'),
         ];
        return ArrayHelper::merge(parent::attributeLabels(), $attributeLabels);
    }

    /**
    *
    * @param type $index
    * @return array
    */
    public function getCurrencyCode($index = '')
    {
        $currencyArray =  [
                          self::CURRENCY_CODE_RM  => 'RM',
                          self::CURRENCY_CODE_INR  => 'INR',
                          self::CURRENCY_CODE_KES => 'KES',
                        ];
        ($index == '') ? ($currencyArray = $currencyArray) : ($currencyArray = ArrayHelper::getValue($currencyArray, $index));
        return $currencyArray;
    }

    /**
     *
     * @param type $index
     * @return array
     */
    public function getOrderAssignType($index = '')
    {
        $orderAssignTypeArray =  [
            self::DELIVERY_BOY_ORDER_ASSIGN_AUTOMATIC  => 'Automatic',
            self::DELIVERY_BOY_ORDER_ASSIGN_MANUAL  => 'Manual',
        ];

        ($index == '') ? ($orderAssignTypeArray = $orderAssignTypeArray) : ($orderAssignTypeArray = ArrayHelper::getValue($orderAssignTypeArray, $index));
        return $orderAssignTypeArray;
    }
}