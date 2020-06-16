<?php

namespace common\components;

use common\helpers\Com;
use common\models\Configuration;
use Yii;
use yii\helpers\ArrayHelper;
use yii\helpers\Json;

/**
 * This trait is used to save app configuration in key value pair format
 *
 * Class ConfigMethod
 * @package common\components
 *
 * @author yii2
 */
trait ConfigurationMethod
{
    /**
     * Locale variable to keep the application configuration.
     *
     * @var array
     */
    private $model = [];
    private static $configs = [];

    /**
     *
     * @param string $configKey
     * @return mixed
     */
    public function __get($configKey)
    {
        if (array_key_exists($configKey, $this->model)) {
            return $this->model[$configKey];
        }

        return null;
        # TODO : Check whether the config key exists or not
    }/** @noinspection MagicMethodsValidityInspection */

    /**
     *
     * @param string $name
     * @param mixed $value
     */
    public function __set($name, $value)
    {
        $this->model[$name] = $value;
    }

    /**
     * This is an customized ActiveRecord::setAttribute method to set the attribute
     * value as key value pair.
     *
     * @param array $values
     * @param bool $safeOnly
     */
    public function setAttributes($values, $safeOnly = true)
    {
        foreach ($values as $configKey => $configValue) {
            $this->model[$configKey] = $configValue;
        }
    }

    /**
     * This is an customized ActiveRecord::save method to save the application
     * configuration as key value pair
     *
     * @param bool $callParent
     * @param mixed $attributeNames
     * @return bool
     * @throws \yii\base\Exception
     * @throws \yii\base\InvalidParamException
     */
    public function save($callParent = false, $attributeNames = null)
    {
        if ($callParent) {

            return parent::save(false);
        }

        $configs = [];
        foreach ($this->model as $configKey => $configValue) {
            $config = self::findOne(['configuration_name' => $configKey]);

            if ($config === null) {
                $config = new Configuration();

                while (true) {
                    $configurationKey = Com::generateRandomString();
                    $modelConfig = self::findOne(['configuration_key' => $configurationKey]);
                    if ($modelConfig === null) {
                        $config->setAttribute('configuration_key', $configurationKey);
                        break;
                    }
                }

                $config->setAttribute('configuration_name', $configKey);
            }
            /**
             * @link http://stackoverflow.com/a/173479/5798881
             */
            if (is_array($configValue) && array() !== $configValue && array_keys($configValue) !== range(0,
                    count($configValue) - 1)) {
                $configValueArr = [];
                foreach ((array)$configValue as $langCode => $langValue) {
                    $configValueArr[] = [
                        'language_code' => $langCode,
                        'name' => $langValue
                    ];
                }
                $configValue = $configValueArr;
            }

            $config->setAttribute('configuration_value', $configValue);

            /**
             * @link http://stackoverflow.com/a/559859/5798881
             */
            $configs[] = $config;
        }

        foreach ($configs as $config) {
            $config->save(true);
        }

        return true;
    }

    /**
     * method to set the application configuration value for
     * the given $configKey.
     *
     * @param string $configKey
     * @param mixed $configValue
     * @throws \yii\base\InvalidParamException
     * @throws \yii\base\Exception
     */
    public function set($configKey, $configValue)
    {
        $this->setAttributes([$configKey => $configValue]);
        $this->save();
    }

    /**
     * Returns the configuration value for the given $configKey, and if the
     * configuration is not found returns null.
     *
     * @param string $configKey
     * @return mixed | null
     */
    public static function get( $configKey, $langCode = null )
    {
        if(count(self::$configs) == 0){
            self::$configs = self::loadConfigIntoSession();
        }

        if(array_key_exists($configKey, self::$configs) ){
            if (
                    $langCode !== null &&
                    is_array(self::$configs[$configKey]) &&
                    ArrayHelper::keyExists($langCode, self::$configs[$configKey])
                ) {
                self::$configs[$configKey] = self::$configs[$configKey][$langCode];
            }
            return self::$configs[$configKey];
        }
        return null;
    }

    /**
     * Returns the list of application configuration
     *
     * @return array
     */
    private static function loadConfigIntoSession()
    {
        $configs = Configuration::find()->select(['configuration_name', 'configuration_value'])->asArray()->all();

        $configArr = [];
        foreach ((array)$configs as $config) {
            if (!array_key_exists('configuration_name', $config)) {
                continue;
            }

            $configArr[$config['configuration_name']] = $config['configuration_value'];
        }
        return $configArr;
    }

    /**
     * This method loads the application configuration in to the
     * config model instance.
     */
    public function loadConfig()
    {
        $configArr = self::loadConfigIntoSession();

        foreach ($configArr as $configKey => $configValue) {
            try {
                $this->{$configKey} = $configValue;
            } catch (\Exception $e) {
                # TODO: handle used attribute was removed later..
            }

        }
    }

    /**
     * @return array
     */
    public function getSMTPEncryptionTypeList()
    {
        return [
            self::SMTP_ENCRYPTION_SSL => 'ssl',
            self::SMTP_ENCRYPTION_TLS => 'tls',

        ];
    }

    /**
     * @return bool
     */
    public static function isSmtpEnabled()
    {
        return (int)self::get(self::IS_SMTP_ENABLED) !== 0;
    }

    /**
     * @return bool
     */
    public static function isSmsGatewayEnabled()
    {
        return (int)self::get(self::IS_SMS_ENABLED) !== 0;
    }

    /**
     * @return array
     */
    public static function getSocialMediaList()
    {
        $smList = [
            [
                'key' => self::FACEBOOK_URL,
                'label' => 'Facebook',
                'icon' => 'fa fa-facebook'
            ],
            [
                'key' => self::GOOGLE_PLUS_URL,
                'label' => 'Google Plus',
                'icon' => 'fa fa-google-plus'
            ],
            [
                'key' => self::INSTAGRAM_URL,
                'label' => 'Instagram',
                'icon' => 'fa fa-instagram'
            ],
            [
                'key' => self::TWITTER_URL,
                'label' => 'Twitter',
                'icon' => 'fa fa-twitter'
            ],
            [
                'key' => self::LINKEDIN_URL,
                'label' => 'LinkedIn',
                'icon' => 'fa fa-linkedin'
            ]
        ];

        $list = [];
        foreach ($smList as $url => $item) {
            if (($url = self::get($item['key'])) === null) {
                continue;
            }
            $list[] = ArrayHelper::merge($item, ['url' => $url]);
        }

        return $list;
    }

    /**
     * @return string
     */
    public static function getDefaultLang()
    {
        return (
        !empty(Configuration::get(Configuration::APP_DEFAULT_LANG))
        ) ? Configuration::get(Configuration::APP_DEFAULT_LANG) : Configuration::DEFAULT_LANG_CODE;
    }

    /**
     *
     * @throws \yii\base\InvalidParamException
     */
    public static function addTranslationSyncVersion()
    {
        $version = self::getTranslationSyncVersion();
        $version++;

        (new self())->set(self::TRANSLATION_SYNC_VERSION, $version);
    }

    /**
     * @return int
     */
    public static function getTranslationSyncVersion()
    {
        $version = self::get(self::TRANSLATION_SYNC_VERSION);
        if ($version === null) {
            return 1;
        }
        return (int)$version;
    }
}