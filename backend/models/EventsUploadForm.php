<?php

namespace backend\models;

use yii\base\Model;
use Yii;

/**
* Class EventUploadForm
* @package backend\models
*
*/
class EventsUploadForm extends Model
{

    const SCENARIO_CREATE = 'create';
    
    public $event_image;

    /**
    * @return array
    */
    public function rules()
    {
        return [
            [
                ['event_image'], 
                'file',
                'skipOnEmpty' => true, 
                'maxSize' => 1024 * 1024 * 10, 
                'mimeTypes' => ['image/png', 'image/jpg', 'image/jpeg']
            ],
            [
                ['event_image'],
                'safe',
                'on' => self::SCENARIO_CREATE
            ]
        ];
    }
    
    /**
    * 
    * @return array
    */
    public function attributeLabels()
    {
        return [
            'event_image' => yii::t('backend','Event Image')
        ];
    }
    
    /**
    * 
    * @return array
    */
    public function scenarios()
    {
        $scenarios = parent::scenarios();
        
        $scenarios[self::SCENARIO_CREATE] = [
            'event_image',
        ];
         
        return $scenarios;
    }
}


