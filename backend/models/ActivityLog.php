<?php

namespace backend\models;

use common\helpers\Com;
use common\helpers\DateTimeHelper;
use Yii;

/**
 * Class ActivityLog
 * @package backend\models
 *
 */
class ActivityLog extends \common\models\ActivityLog
{
    /**
     * @param $msg
     * @param bool|string $username
     * @throws \yii\base\InvalidParamException
     */
    public static function log($msg, $username = false){
        return true;
        $log = array();
        $browser = ActivityLog::getBrowser();
        $platform = isset($browser['platform']) ? $browser['platform'] : '';
        $browser = isset($browser['browser']) ? sprintf('%s %s', $browser['browser'], $browser['version']) : '';

        /* @var $loginData User */
        $loginData = Yii::$app->getUser()->getIdentity();

        if($username === false) {
            $log['user_id']         = $loginData->id;
            $log['username']       = $loginData->user_name;
        }elseif(is_string($username)){
            $log['user_id']     = null;
            $log['username']    = $username;
        }

        $log['log']             = $msg;
        $log['client_ip']       = $_SERVER['REMOTE_ADDR'];
        $log['client_agent']    = $browser;
        $log['client_platform'] = $platform;
        $log['created']         = DateTimeHelper::getInstance()->format(DateTimeHelper::MYSQL_DATETIME_FORMAT);

        $model = new ActivityLog();
        $model->load($log, '');

        if(!$model->save()){
            Com::log(print_r($model->getErrors(), 1));
        }

    }

    /**
     * @return array
     */
    public static function getBrowser(){
        $u_agent = $_SERVER['HTTP_USER_AGENT'];
        $bname = 'Unknown';
        $platform = 'Unknown';
        $version= '';

        //First get the platform?
        if ( false !== stripos($u_agent, 'linux')) {
            $platform = 'linux';
        }
        elseif (preg_match('/macintosh|mac os x/i', $u_agent)) {
            $platform = 'mac';
        }
        elseif (preg_match('/windows|win32/i', $u_agent)) {
            $platform = 'windows';
        }

        /**
         * Next get the name of the user agent yes separately and for good reason
         */
        if( false !==stripos($u_agent, 'MSIE') && false === stripos($u_agent, 'Opera')) {
            $bname = 'Internet Explorer';
            $ub = 'MSIE';
        }
        else if( false !==stripos($u_agent, 'Firefox') ) {
            $bname = 'Mozilla Firefox';
            $ub = 'Firefox';
        }
        else if( false !==stripos($u_agent, 'Chrome') ) {
            $bname = 'Google Chrome';
            $ub = 'Chrome';
        }
        else if( false !==stripos($u_agent, 'Safari') ) {
            $bname = 'Apple Safari';
            $ub = 'Safari';
        }
        else if( false !==stripos($u_agent, 'Opera') ) {
            $bname = 'Opera';
            $ub = 'Opera';
        }
        else if( false !==stripos($u_agent, 'Netscape') ) {
            $bname = 'Netscape';
            $ub = 'Netscape';
        } else {
            $ub = $u_agent;
        }

        // finally get the correct version number
        $known = array('Version', $ub, 'other');
        $pattern = '#(?<browser>' . implode('|', $known) .
            ')[/ ]+(?<version>[0-9.|a-zA-Z.]*)#';

        if (!preg_match_all($pattern, $u_agent, $matches)) {
            // we have no matching number just continue
        }

        // see how many we have
        $i = count($matches['browser']);
        if ($i !== 1) {
            //we will have two since we are not using 'other' argument yet
            //see if version is before or after the name
            if (strripos($u_agent, 'Version') < strripos($u_agent,$ub)){
                $version= $matches['version'][0];
            }
            else {
                $version= isset($matches['version'][1])? $matches['version'][1] : 'Unknown Version';
            }
        }
        else {
            $version= $matches['version'][0];
        }

        // check if we have a number
        if ($version === null || $version === '' ) {$version= '?';}

        return [
            'userAgent' => $u_agent,
            'browser'   => $bname,
            'version'   => $version,
            'platform'  => $platform,
            'pattern'   => $pattern
        ];
    }
    
    /**
     * 
     * @return array
     */
    public function attributeLabels()
    {
        return [
            'username' => Yii::t('backend', 'Username'),
            'log' => Yii::t('backend', 'Log'),
            'client_ip' => Yii::t('backend', 'Client Ip'),
            'client_agent' => Yii::t('backend', 'Client Agent'),
            'client_platform' => Yii::t('backend', 'Client Platform'),
            'created_at' => Yii::t('backend', 'Created Date')
        ];
    }
}