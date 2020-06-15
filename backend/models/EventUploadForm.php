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
    public $image;

    /**
     * @return array
     */
    public function rules()
    {
        return [
            [
                ['image'], 
                'file',
                'skipOnEmpty' => true, 
                'maxSize' => 1024 * 1024 * 10, 
                'mimeTypes' => ['image/png', 'image/jpg', 'image/jpeg']
            ],
        ];
    }
}
