<?php
namespace api\modules\v1\models;

use Yii;
/**
 * Class Events
 * @package api\modules\v1\models
 */
class TicketEvents extends \common\models\Ticket
{
    public $event_key, $event_title, $event_start_date, $event_end_date, $event_image;
    /**
     *
     * @return array
     */
    public function fields()
    {
        return [
            'ticket_key',
            'event_key',
            'event_title',
            'event_start_date',
            'event_end_date',
            //'event_desc',
            'event_image',
            'is_fav' => function (Self $model) {
                $model = Favorite::find()->where([
                    'user_id' => Yii::$app->getUser()->getIdentity()->getId(),
                    'event_id' => $model->event_id,
                    'status' => self::ACTIVE
                ])->one();

                return $model != null ? 1 : 0 ;
            },
            //'visitors_package_price',
        ];
    }

   
}
