<?php
namespace common\models;

use common\models\base\BaseOtpTemp;
use common\components\AttributeKeyGeneratorBehaviour;
use Yii;
use yii\db\ActiveQuery;

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

     /**
     * @return array
     */
    public function behaviors()
    {
        $behaviors = parent::behaviors();

        $behaviors[] = [
            'class' => AttributeKeyGeneratorBehaviour::class,
            'attributes' => [
                'otp_temp_key'
            ]
        ];

        return $behaviors;
    }
}
