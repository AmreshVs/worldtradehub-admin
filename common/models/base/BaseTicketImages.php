<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "ticket_images".
 *
 * @property integer $ticket_image_id
 * @property integer $ticket_id
 * @property string $image_path
 */
class BaseTicketImages extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'ticket_images';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ticket_id'], 'integer'],
            [['image_path'], 'string', 'max' => 256],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ticket_image_id' => 'Ticket Image ID',
            'ticket_id' => 'Ticket ID',
            'image_path' => 'Image Path',
        ];
    }
}
