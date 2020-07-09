<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "ticket_interst".
 *
 * @property integer $ticket_interst_id
 * @property integer $user_id
 * @property integer $ticket_id
 * @property integer $status
 */
class BaseTicketInterst extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'ticket_interst';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'ticket_id', 'status'], 'integer'],
            [['status'], 'required'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ticket_interst_id' => 'Ticket Interst ID',
            'user_id' => 'User ID',
            'ticket_id' => 'Ticket ID',
            'status' => 'Status',
        ];
    }
}
