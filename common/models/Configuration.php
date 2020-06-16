<?php

namespace common\models;

use common\components\ConfigurationMethod;
use common\components\ConfigurationOption;
use common\models\base\BaseConfiguration;
use Yii;
use yii\helpers\ArrayHelper;

/**
 * Class Configuration
 * @package common\models
 */
class Configuration extends BaseConfiguration implements ConfigurationOption
{
    use ConfigurationMethod;

    #Currency Format
    const CURRENCY_FORMAT_ALL = 'All';
    const CURRENCY_FORMAT_GERMAN = 'German';

    /**
     * @return array
     */
    public function attributeLabels()
    {
        $attributeLabels = [
            self::IS_CUSTOMER_NOTIFICATION_ENABLED => Yii::t('common', 'is Enabled Customer'),
            self::IS_WEBPUSH_NOTIFICATION_ENABLED => Yii::t('common', 'is Enabled Website'),
            self::IS_CUSTOMER_SOUND_ENABLED => Yii::t('common', 'Sound Enabled'),

            self::IS_VENDOR_NOTIFICATION_ENABLED => Yii::t('common', 'is Enabled Vendor'),
            self::IS_VENDOR_SOUND_ENABLED => Yii::t('common', 'Sound Enabled'),

            self::IS_DELIVERY_NOTIFICATION_ENABLED => Yii::t('common', 'is Enabled Deliveryboy'),
            self::IS_DELIVERY_SOUND_ENABLED => Yii::t('common', 'Sound Enabled'),


            self::MINIMUM_LOYALTY_POINTS => Yii::t('common', 'Minimum loyalty points'),
            self::CONVERSION_LOYALTY_POINTS_COUNT => Yii::t('backend', 'Number of loyalty points'),
            self::CONVERSION_LOYALTY_POINTS_CURRENCY => Yii::t('common', 'Is equal to'),
            
            self::SMTP_HOST => Yii::t('common', 'SMTP Host'),
            self::SMTP_ENCRYPTION => Yii::t('common', 'SMTP Encryption'),
            self::SMTP_PORT => Yii::t('common', 'SMTP Port'),
            self::SMTP_USERNAME => Yii::t('common', 'SMTP Username'),
            self::SMTP_PASSWORD => Yii::t('common', 'SMTP Password'),
            self::IS_SMTP_ENABLED => Yii::t('common', 'Is SMTP Enabled'),
            
            self::SMS_ACCOUNT_ID => Yii::t('common', 'SMS Gateway Account ID'),
            self::SMS_AUTH_TOKEN => Yii::t('common', 'SMS Gateway Auth Token'),
            self::IS_SMS_ENABLED => Yii::t('common', 'Is SMS Enabled'),
            self::SMS_SENDER_ID => Yii::t('common', 'SMS Gateway Sender Number'),
            self::SMS_SENDER_ID => Yii::t('common', 'SMS Gateway Country Code'),

            self::LOYALTY_REDEMPTION_AMOUNT => Yii::t('common','Loyality redemption amount (for 10 points)'),
            self::LOYALTY_TARGET_POINT => Yii::t('common','Max Redem point'),
            self::LOYALITY_STATUS => Yii::t('common','Loyaliy status'),

          ];


        return ArrayHelper::merge(parent::attributeLabels(), $attributeLabels);
    }

    /**
     * @return array
     */
    public static function getMoneyFormatList()
    {
        return [
            self::CURRENCY_FORMAT_ALL => self::CURRENCY_FORMAT_ALL,
            self::CURRENCY_FORMAT_GERMAN => self::CURRENCY_FORMAT_GERMAN
        ];
    }
}
