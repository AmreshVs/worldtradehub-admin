<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "{{%configuration}}".
 *
 * @property integer $configuration_id
 * @property string $configuration_key
 * @property string $configuration_name
 * @property string $configuration_value
 * @property string $created_at
 * @property integer $created_user_id
 * @property string $modified_at
 * @property integer $modified_user_id
 */
class BaseConfiguration extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%configuration}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['configuration_value'], 'string'],
            [['created_at', 'modified_at'], 'safe'],
            [['created_user_id', 'modified_user_id'], 'integer'],
            [['configuration_key'], 'string', 'max' => 16],
            [['configuration_name'], 'string', 'max' => 256],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'configuration_id' => Yii::t('common', 'Configuration ID'),
            'configuration_key' => Yii::t('common', 'Configuration Key'),
            'configuration_name' => Yii::t('common', 'Configuration Name'),
            'configuration_value' => Yii::t('common', 'Configuration Value'),
            'created_at' => Yii::t('common', 'Created At'),
            'created_user_id' => Yii::t('common', 'Created User ID'),
            'modified_at' => Yii::t('common', 'Modified At'),
            'modified_user_id' => Yii::t('common', 'Modified User ID'),
        ];
    }
}
