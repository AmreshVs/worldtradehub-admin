<?php
namespace backend\models;

use backend\models\Events;
use backend\models\User;
/**
 * Class Ticket
 * @package backend\models
 */
class Ticket extends \common\models\Ticket
{
	public function fields()
    {
        return [
            'ticket_key',
            'company_name',
			'website',
			'meet_id',
			'whatsapp_number',
			'youtupe_link',
			'company_desc',
			'subscription_price',
            'events' => function (self $model) {
            	return Events::find()->where(['event_id' => $model->event_id])->asArray()->one();
            },
            'customer' => function (self $model) {
            	return User::find()->where(['user_id' => $model->user_id])->asArray()->one();
            }
        ];

    }
}
