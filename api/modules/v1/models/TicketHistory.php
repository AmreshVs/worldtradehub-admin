<?php
namespace api\modules\v1\models;

/**
 * Class Events
 * @package api\modules\v1\models
 */
class TicketHistory extends \common\models\Ticket
{
    public $event_key, $event_title;

    /**
     *
     * @return array
     */
    public function fields()
    {
        return [
            'event_key',
            'event_title',
            'created_at',
            'subscription_price',
            //'visitors_package_price',
        ];
    }

   
}
