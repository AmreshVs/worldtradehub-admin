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
            'status' => function (self $model) {
                if($model->event_start_date <= date('Y-m-d H:i:s') && $model->event_end_date >= date('Y-m-d H:i:s')) {
                    return 1;
                }
                return 2;
            },
            'pending_stall_booking' => function (Self $model) {
                return TicketPending::find()->select(['ticket_key'])->where([
                    'event_id' => $model->event_id,
                    'user_id' => Yii::$app->getUser()->getIdentity()->getId(),
                    'payment_status' => TicketPending::PAYMENT_SUCCESS,
                    'ticket_status' => 3
                ])->asArray()->all();
            }
            //'visitors_package_price',
        ];
    }

   
}
