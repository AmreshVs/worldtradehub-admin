<?php
namespace backend\models;

/**
 * Class Events
 * @package backend\models
 */
class Events extends \common\models\Events
{
	 /**
    * 
    * @return array
    */
    public function rules()
    {    
        return [
            [[
                'event_title', 
                'event_start_date', 
                'event_end_date', 
                'event_desc', 
                //'event_image', 
                'event_status',
                'exhibitor_platinum_price',
                'exhibitor_diamond_price',
                'exhibitor_gold_price',
                'exhibitor_silver_price',
                'visitors_package_price'
            ], 'required'],            
        ];
    }
}
