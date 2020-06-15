<?php

namespace api\modules\v1\controllers;


use api\components\CController;
use api\modules\v1\models\Events;
use yii\data\ActiveDataProvider;
use yii\web\UploadedFile;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;
use yii\helpers\Json;
use api\components\CResponse;

/**
 * Class EventController
 * @package api\modules\v1\controllers
 */

class EventController extends CController
{    
    /**
     * @throws \Exception
     * @throws \Throwable
     *
     * @return User
     */
    public function actionIndex()
    {
       $model = Events::find()->where(['event_status' => Events::ACTIVE])->all();
       return $model;
    }
    public function actionView($id)
    {
       
       $model = Events::find()->where(['event_key' => $id])->one();
       return $model;
    }


    
}