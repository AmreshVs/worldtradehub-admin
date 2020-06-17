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
            		'website', 
            		'meet_id',
            		'zoom_id',
            		'whatsapp_number',
            		'fb_url',
            		'youtupe_link',
            		'company_desc',
            		//'slot_id',
            	], 'required'
            ],
             [['subscription_type','short_desc','logo_image_path','cover_image_path'], 'safe']
        ];
        
        return ArrayHelper::merge(parent::rules(), $rules);
    }
}
