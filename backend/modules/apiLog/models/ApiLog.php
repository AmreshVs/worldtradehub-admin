<?php

namespace backend\modules\apiLog\models;

use Yii;

/**
 * This is the model class for table "api_log".
 *
 * @property integer $api_log_id
 * @property string $request_url
 * @property string $request_method
 * @property string $request_data
 * @property integer $response_code
 * @property string $response_data
 * @property string $trace
 * @property string $created_at
 */
class ApiLog extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%api_log}}';
    }

    /**
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb()
    {
        return Yii::$app->get('sqliteDb');
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['request_url', 'request_data', 'response_data', 'trace'], 'string'],
            [['response_code'], 'integer'],
            [['created_at'], 'safe'],
            [['request_method'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'api_log_id' => 'Api Log ID',
            'request_url' => 'Request Url',
            'request_method' => 'Request Method',
            'request_data' => 'Request Data',
            'response_code' => 'Response Code',
            'response_data' => 'Response Data',
            'trace' => 'Trace',
            'created_at' => 'Created At',
        ];
    }
}
