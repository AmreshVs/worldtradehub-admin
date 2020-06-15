<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "{{%role}}".
 *
 * @property integer $role_id
 * @property string $role_key
 * @property string $role_name
 * @property string $backend_role_json
 * @property integer $role_status
 * @property integer $created_user_id
 * @property string $created_at
 * @property integer $modified_user_id
 * @property string $modified_at
 */
class BaseRole extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%role}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['backend_role_json'], 'string'],
            [['role_status', 'created_user_id', 'modified_user_id'], 'integer'],
            [['created_at', 'modified_at'], 'safe'],
            [['role_key'], 'string', 'max' => 16],
            [['role_name'], 'string', 'max' => 45],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'role_id' => Yii::t('common', 'Role ID'),
            'role_key' => Yii::t('common', 'Role Key'),
            'role_name' => Yii::t('common', 'Role Name'),
            'backend_role_json' => Yii::t('common', 'Backend Role Json'),
            'role_status' => Yii::t('common', 'Role Status'),
            'created_user_id' => Yii::t('common', 'Created User ID'),
            'created_at' => Yii::t('common', 'Created At'),
            'modified_user_id' => Yii::t('common', 'Modified User ID'),
            'modified_at' => Yii::t('common', 'Modified At'),
        ];
    }
}
