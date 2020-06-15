<?php

namespace backend\models;

use yii\base\Model;
use Yii;

/**
* Class ConfigurationUploadForm
* @package backend\models
*
*/
class ConfigurationUploadForm extends Model
{
    public $app_logo, $fav_logo, $offer_image, $placeholder_image;
    
    /**
    * @return array
    */
    public function rules()
    {
        return [
            [
                [
                    'app_logo',
                    'fav_logo', 
                    'offer_image',
                    'placeholder_image',
                ], 
                'file',
                'skipOnEmpty' => true, 
                'maxSize' => 1024 * 1024 * 10, 
                'mimeTypes' => ['image/png', 'image/jpg', 'image/jpeg']
            ],
        ];
    }
    
    public function attributeLabels()
    {
        return [
            'app_logo' => Yii::t('backend', 'Site Logo'),
            'fav_logo' => Yii::t('backend', 'Fav Logo'),
            'offer_image' => Yii::t('backend', 'Offer Image'),
            'placeholder_image' => Yii::t('backend', 'Placeholder Image'),
        ];
    }
}


