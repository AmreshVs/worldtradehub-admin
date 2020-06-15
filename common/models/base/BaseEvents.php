<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "events".
 *
 * @property integer $event_id
 * @property string $event_key
 * @property string $event_title
 * @property string $event_start_date
 * @property string $event_end_date
 * @property string $event_desc
 * @property string $event_image
 * @property string $create_at
 * @property string $update_at
 * @property integer $created_user_id
 */
class BaseEvents extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'events';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['event_start_date', 'event_end_date', 'create_at', 'update_at'], 'safe'],
            [['event_desc'], 'string'],
            [['created_user_id'], 'integer'],
            [['event_key'], 'string', 'max' => 16],
            [['event_title', 'event_image'], 'string', 'max' => 256],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'event_id' => 'Event ID',
            'event_key' => 'Event Key',
            'event_title' => 'Event Title',
            'event_start_date' => 'Event Start Date',
            'event_end_date' => 'Event End Date',
            'event_desc' => 'Event Desc',
            'event_image' => 'Event Image',
            'create_at' => 'Create At',
            'update_at' => 'Update At',
            'created_user_id' => 'Created User ID',
        ];
    }
}
