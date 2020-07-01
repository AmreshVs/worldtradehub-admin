<?php
namespace api\modules\v1\models;

use yii\helpers\ArrayHelper;
use Yii;
/**
 * Class Ticket
 * @package api\modules\v1\models
 */
class Ticket extends \common\models\Ticket
{
	 /**
    * 
    * @return array
    */
    public function rules()
    {
        $rules = [
            [
            	[
            		'company_name', 
            		'company_desc',
            		'short_desc',
            		//'slot_id',
            	], 'required'
            ],
            [[
                'subscription_type', 
                'logo_image_path', 
                'cover_image_path', 
                'youtupe_link',
                'fb_url',
                'whatsapp_number',
                'website', 
                'meet_id', 
                'zoom_id',
                'whytoconsider',
                'features',
                'youtube_links',
                'features',
                'locality',
                'shipment',
            ], 'safe']
        ];
        
        return ArrayHelper::merge(parent::rules(), $rules);
    }
}
