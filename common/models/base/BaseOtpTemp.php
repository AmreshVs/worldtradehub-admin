<?php

namespace common\models\base;
use common\components\AttributeKeyGeneratorBehaviour;


use Yii;

/**
 * This is the model class for table "{{%otp_temp}}".
 *
 * @property integer $otp_temp_id
 * @property string $otp_temp_key
 * @property string $mobile_no
 * @property string $email
 * @property string $json
 * @property integer $otp
 * @property integer $status
 * @property string $created_at
 * @property string $modified_at
 */
class BaseOtpTemp extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%otp_temp}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            
            [['user_details'], 'string'],
            [['otp', 'status'], 'integer'],
            [['created_at', 'modified_at'], 'safe'],
            [['otp_temp_key'], 'string', 'max' => 17],
            [['mobile_no'], 'string', 'max' => 20],
            [['email'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'otp_temp_id' => Yii::t('common', 'Otp Temp ID'),
            'otp_temp_key' => Yii::t('common', 'Otp Temp Key'),
            'mobile_no' => Yii::t('common', 'Mobile No'),
            'email' => Yii::t('common', 'Email'),
            'user_details' => Yii::t('common', 'User Details'),
            'otp' => Yii::t('common', 'Otp'),
            'status' => Yii::t('common', 'Status'),
            'created_at' => Yii::t('common', 'Created At'),
            'modified_at' => Yii::t('common', 'Modified At'),
        ];
    }
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
