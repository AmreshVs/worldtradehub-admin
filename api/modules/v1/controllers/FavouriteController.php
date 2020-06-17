<?php

namespace api\modules\v1\controllers;


use api\components\CController;
use api\modules\v1\models\Ticket;
use api\modules\v1\models\Events;
use api\modules\v1\models\Favorite;
use api\modules\v1\models\User;
use yii\data\ActiveDataProvider;
use yii\web\UploadedFile;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;
use yii\helpers\Json;
use api\components\CResponse;
use Yii;
use backend\models\EventUploadForm;
use common\helpers\UploadHelper;
use common\helpers\Com;
use common\helpers\ModelHelper;



/**
 * Class FavouriteController
 * @package api\modules\v1\controllers
 */

class FavouriteController extends CController
{    
    /**
     * @throws \Exception
     * @throws \Throwable
     *
     * @return User
     */
    public function actionIndex()
    {
      $request = Yii::$app->getRequest()->get();
      $userIdentity = Yii::$app->getUser()->getIdentity();
      $model = Events::find()
                    ->alias('E')
                    ->leftJoin(['F' => Favorite::tableName()], 'F.user_id = E.user_id')
                    ->where([
                        'E.event_status' => Events::ACTIVE,
                        'F.status' => Events::ACTIVE,
                        'F.user_id' => $userIdentity->getId()
                    ])
                    ->all();

        $this->setMessage('Upcomming Event get successfully');
        return $model;

    }

    public function actionCreate()
    {
      $request = Yii::$app->getRequest()->get();
      $userIdentity = Yii::$app->getUser()->getIdentity();

      $params = [
            "event_key",
        ];
      $this->checkRequiredParam($request, $params);
     

      $EventModel = Events::find()->where(['event_key' => $request['event_key']])->one();
      if($EventModel == null) {
            $this->commonError('Invalid Events');
      }
      $model = Favorite::find()
          ->where(
            [
              'event_id' => $EventModel->event_id, 
              'user_id' => $userIdentity->getId()
            ])
          ->one();

      if($model == null){
        $model = new Favorite();
        $model->event_id = $EventModel->event_id;
        $model->user_id = $userIdentity->getId();
        $model->status = 1;
        $model->save(false);
        $this->setMessage('Favorite Added successfully');

      }else {
        if($model->status == 2 ) {
          $model->status = 1;
          $this->setMessage('Favorite Added successfully');
        } else {
          $model->status = 2;
          $this->setMessage('Favorite Removed successfully');
        }
        $model->save(false);
      }
      return [];

    }

    
   


    
}