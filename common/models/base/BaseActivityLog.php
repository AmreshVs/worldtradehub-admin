<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "{{%activity_log}}".
 *
 * @property integer $activity_log_id
 * @property integer $user_id
 * @property string $username
 * @property string $log
 * @property string $client_ip
 * @property string $client_agent
 * @property string $client_platform
 * @property string $created_at
 */
class BaseActivityLog extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%activity_log}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id'], 'integer'],
            [['log'], 'string'],
            [['created_at'], 'safe'],
            [['username'], 'string', 'max' => 256],
            [['client_ip', 'client_agent', 'client_platform'], 'string', 'max' => 45],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'activity_log_id' => Yii::t('common', 'Activity Log ID'),
            'user_id' => Yii::t('common', 'User ID'),
            'username' => Yii::t('common', 'Username'),
            'log' => Yii::t('common', 'Log'),
            'client_ip' => Yii::t('common', 'Client Ip'),
            'client_agent' => Yii::t('common', 'Client Agent'),
            'client_platform' => Yii::t('common', 'Client Platform'),
            'created_at' => Yii::t('common', 'Created At'),
        ];
    }
}
