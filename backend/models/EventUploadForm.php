<?php
namespace backend\models;

use yii\db\Schema;
use yii\base\Model;
use yii\web\UploadedFile;
use common\helpers\UploadHelper;
use common\helpers\Com;

/**
 * Class EventUploadForm
 * @package backend\models
 */
class EventUploadForm extends Model
{
    public $image, $cover_image, $images, $attachment;

    /**
     * @return array
     */
    public function rules()
    {
        return [
            [
                ['image'], 
                'image',
                'skipOnEmpty' => true, 
                'maxSize' => 1024 * 1024 * 10, 
                'mimeTypes' => ['image/png', 'image/jpg', 'image/jpeg']
            ],
            [
                ['images'], 
                'file',
                'skipOnEmpty' => true, 
                'maxSize' => 1024 * 1024 * 10, 
                'mimeTypes' => ['image/png', 'image/jpg', 'image/jpeg'],
                'maxFiles' => 20
            ],
            [
                ['cover_image'], 
                'file',
                'skipOnEmpty' => true, 
                'maxSize' => 1024 * 1024 * 10, 
                'mimeTypes' => ['image/png', 'image/jpg', 'image/jpeg']
            ],
            [
                ['attachment'], 
                'file',
                'skipOnEmpty' => true, 
                //'maxSize' => 1024 * 1024 * 10, 
                //'mimeTypes' => ['image/png', 'image/jpg', 'image/jpeg']
            ],
        ];
    }
}

