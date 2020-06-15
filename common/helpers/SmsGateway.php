<?php

/**
 * GatewayApi <https://gatewayapi.com>
 * This GatewayApi is used to send SMS
 * Class SmsGateway (used GuzzleHttp)
 * @package common\helpers
 * @author Baluraj R <baluraj.r@technoduce.com>
 */

namespace common\helpers;


use common\models\Configuration;
use yii\helpers\Json;
use Twilio\Rest\Client;

class SmsGateway {

    private $api_key;
    private $secret_key;
    private static $instance;
    private $country_code;
    private $from;

    public function __construct() {
        $this->setApiKey(Configuration::get(Configuration::SMS_ACCOUNT_ID));
        $this->setSecretKey(Configuration::get(Configuration::SMS_AUTH_TOKEN));
        $this->setCountryCode(Configuration::get(Configuration::SMS_COUNTRY_CODE));
    }

    public static function getInstance() {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    public function setApiKey($apikey) {
        $this->api_key = $apikey;
    }

    public function setSecretKey($secretkey) {
        $this->secret_key = $secretkey;
    }

    public function setCountryCode($country_code)
    {
        $this->country_code = ($country_code==null)?'':$country_code;

        return $this;
    }

      public function setFrom($from)
    {
        $this->from = ($from==null)?'':$from;

        return $this;
    }

    public function sendSMS($mobile, $msg) 
    {
            return true;
            
        try {

            $country_code = Configuration::get(Configuration::SMS_COUNTRY_CODE);
            $this->client = new Client(Configuration::get(Configuration::SMS_ACCOUNT_ID),
                        Configuration::get(Configuration::SMS_AUTH_TOKEN));
            $this->setCountryCode(Configuration::get(Configuration::SMS_COUNTRY_CODE));
            $this->setFrom(Configuration::get(Configuration::SMS_GATEWAY_FROM));
            return $sms = $this->client->messages->create($mobile, ['from' => $this->from, 'body' => $msg]);
            
        }  catch (\Exception $Ste) {
            return $Ste;
        }

    }

}
