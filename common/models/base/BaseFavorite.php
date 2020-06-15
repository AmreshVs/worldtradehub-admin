<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "favorite".
 *
 * @property integer $favorite_id
 * @property string $favorite_key
 * @property integer $event_id
 * @property integer $status
 * @property string $created_at
 * @property string $updated_at
 * @property integer $user_id
 */
class BaseFavorite extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'favorite';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['favorite_key', 'user_id'], 'required'],
            [['event_id', 'status', 'user_id'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['favorite_key'], 'string', 'max' => 16],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'favorite_id' => 'Favorite ID',
            'favorite_key' => 'Favorite Key',
            'event_id' => 'Event ID',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'user_id' => 'User ID',
        ];
    }
}
