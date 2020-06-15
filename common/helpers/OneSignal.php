<?php
/**
 * Created by IntelliJ IDEA.
 * User: developer
 * Date: 4/8/17
 * Time: 10:10 AM
 */

namespace common\helpers;

use common\models\Configuration;
use yii\helpers\Json;

/**
 * This OneSignal class is used to send push notifications to mobile applications
 * Class OneSignal
 * @package common\helpers
 *
 * @author yii2
 */
class OneSignal
{
    /**
     * One signal API URL
     */
    const URL = 'https://onesignal.com/api/v1/notifications';
    /**
     * @var static
     */
    private static $instance;
    /**
     * @var string
     */
    private $appId;
    /**
     * @var string
     */
    private $restApiKey;

    /**
     * OneSignal constructor.
     */
    public function __construct()
    {
        $this->setAppId(Configuration::get(Configuration::PUSH_NOTIFICATION_APP_ID));
        $this->setRestApiKey(Configuration::get(Configuration::PUSH_NOTIFICATION_REST_API_KEY));
    }

    /**
     * @return static
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * @param mixed $restApiKey
     */
    public function setRestApiKey($restApiKey)
    {
        $this->restApiKey = $restApiKey;
    }

    /**
     * @param string $appId
     */
    public function setAppId($appId)
    {
        $this->appId = $appId;
    }


    /**
     * @param $icon
     * @return $this
     */
    public function setIcon($icon)
    {
        $this->notify_icon = $icon;
        return $this;
    }

    /**
     * @param array $title
     * @param array $message
     * @param array $clientIds
     * @param array $data
     * @return mixed
     * @throws \yii\base\InvalidParamException
     */
    public function push(array $title, array $message, array $clientIds, array $data)
    {
        $this->log(str_repeat(' ', 60));
        $this->log(str_repeat('*', 60));

        $fields = [
            'app_id' => $this->appId,
            'contents' => $message,
            'headings' => $title,
            'large_icon' => $this->notify_icon,
            'small_icon' => $this->notify_icon,
            'android_channel_id' => '729f4606-7208-4b07-9659-70ae44ddaa09',
            'ios_sound' => 'notification.wav',
            'android_sound' => 'notification',
        ];
        
        if ($data !== []) {
            $fields['data'] = $data;
        }
        
        if ($clientIds === []) {
            $fields['included_segments'] = 'All Users';
        } else {
            $fields['include_player_ids'] = $clientIds;
        }
        $this->log(print_r($fields, 1));
        $fields = Json::encode($fields);

        $headers = [
            'Content-Type: application/json; charset=utf-8',
            sprintf('Authorization: Basic %s', $this->restApiKey)
        ];

        $this->log($fields);
        
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, static::URL);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $response = curl_exec($ch);
        
        $this->log($response);
        
        curl_close($ch);
        
        return $response;
        # NotificationLog::log(Json::decode($fields), $response);
    }


    public function vendorpush(array $title, array $message, array $clientIds, array $data)
    {
        $this->log(str_repeat(' ', 60));
        $this->log(str_repeat('*', 60));

        $fields = [
            'app_id' => $this->appId,
            'contents' => $message,
            'headings' => $title,
            'large_icon' => $this->notify_icon,
            'small_icon' => $this->notify_icon,
            'android_channel_id' => '8768dacd-3402-4876-996c-04177209e178',
            'ios_sound' => 'notification.wav',
            'android_sound' => 'notification',
        ];
        
        if ($data !== []) {
            $fields['data'] = $data;
        }
        
        if ($clientIds === []) {
            $fields['included_segments'] = 'All Users';
        } else {
            $fields['include_player_ids'] = $clientIds;
        }
        $this->log(print_r($fields, 1));
        $fields = Json::encode($fields);

        $headers = [
            'Content-Type: application/json; charset=utf-8',
            sprintf('Authorization: Basic %s', $this->restApiKey)
        ];

        $this->log($fields);
        
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, static::URL);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $response = curl_exec($ch);
        
        $this->log($response);
        
        curl_close($ch);
        
        return $response;
        # NotificationLog::log(Json::decode($fields), $response);
    }

    
    
    public function sendCustomerNotification(array $title, array $message, $device_type = 3, $user_type = '') {
  
        $isIos = 'True';
        $isAndroid = 'True';
        
        if($device_type == 1) {
            $isIos = 'False';
        }
        
        if($device_type == 2) {
            $isAndroid = 'False';
        }
        
        $fields = [
            'app_id' => $this->appId,
            'isIos' => $isIos,
            'isAndroid' => $isAndroid,
            'contents' => $message,
            'headings' => $title,
            'large_icon' => $this->notify_icon,
            'small_icon' => $this->notify_icon,
            'android_channel_id' => '729f4606-7208-4b07-9659-70ae44ddaa09',
            'ios_sound' => 'notification.wav',
            'android_sound' => 'notification',
        ];
        
        if($user_type == '') {
            $fields['included_segments'] = ['All'];
        } else {
            $fields['included_segments'] = ['Active Users'];
        }
        
        
        $headers = [
            'Content-Type: application/json; charset=utf-8',
            sprintf('Authorization: Basic %s', $this->restApiKey)
        ];

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, static::URL);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, Json::encode($fields));
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $response = curl_exec($ch);
        curl_close($ch);
        return $response;
    }

    /**
     * @param $msg
     * @throws \yii\base\InvalidParamException
     */
    private function log($msg)
    {
        Com::log($msg, 'one-signal');
    }

}