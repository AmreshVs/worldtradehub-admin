<?php
namespace api\modules\v1\models;

use yii\helpers\ArrayHelper;
use Yii;
/**
 * Class Ticket
 * @package api\modules\v1\models
 */
class Stall extends \common\models\Ticket
{
	/**
     *
     * @return array
     */
    public function fields()
    {
        return [
            'ticket_key',
            'logo_image_path',
            'cover_image_path',
            'company_name',
            'short_desc',
            'website',
            'meet_id',
            'zoom_id',
            'whatsapp_number',
            'fb_url',
            'youtupe_link',
            'company_desc',
        ];
    }
}
