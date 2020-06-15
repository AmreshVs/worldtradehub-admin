<?php
namespace common\models;

use common\models\base\BaseOtpTemp;

/**
 * Class OtpTemp
 * @package common\models
 */
class OtpTemp extends BaseOtpTemp
{
    public static function generateOtp()
    {
        return '1234';
        //return rand(1000,9999);
    }
}
