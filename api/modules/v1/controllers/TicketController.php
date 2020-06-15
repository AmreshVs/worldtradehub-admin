<?php

namespace api\modules\v1\controllers;


use api\components\CController;
use api\modules\v1\models\Ticket;
use api\modules\v1\models\Events;
use api\modules\v1\models\User;
use api\modules\v1\models\TicketHistory;
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
 * Class TicketController
 * @package api\modules\v1\controllers
 */

class TicketController extends CController
{    
    /**
     * @throws \Exception
     * @throws \Throwable
     *
     * @return User
     */
   
    public function actionCreate()
    {
      $request = Yii::$app->getRequest()->post();
      $userIdentity = Yii::$app->getUser()->getIdentity();

      $params = [
            "company_name",
            "website",
            "meet_id",
            "zoom_id",
            "whatsapp_number",
            "fb_url",
            "youtupe_link",
            "company_desc",
            'event_key'
            //'slot_id',
            //'logo_image_path',
        ];
      $this->checkRequiredParam($request, $params);
      $modelUser = User::findOne(['user_id' => $userIdentity->getId(),'status' => User::ACTIVE]);

      if ($modelUser === null) {
        $this->userNotFound();
      }

      $EventModel = Events::find()->where(['event_key' => $request['event_key']])->one();
      if($EventModel == null) {
            $this->commonError('Invalid Events');
      }

      $Ticket_model = Ticket::find()->where(['event_id' => $EventModel->event_id])->one();
      if($Ticket_model != null) {
            $this->commonError('Event Already Booked');
      }

      $model = new Ticket();
      $modelUpload = new EventUploadForm();
      $model->load($request, "");

      if (!$model->validate()) {
          return $model->getError();
      }

      $files = $_FILES;
      $data['logo_image_path'] = '';
      $uploadData = [];
       if (array_key_exists('logo_image_path', $files)) {

            foreach ((array)$files['logo_image_path'] as $dataKey => $dataValue) {
                $uploadData[$dataKey]['logo_image_path'] = $dataValue;
            }

            $_FILES = ['EventUploadForm' => $uploadData];

            $modelUpload->image = UploadedFile::getInstance($modelUpload, 'logo_image_path');
            if (!$modelUpload->validate()) {
                return $modelUpload;
            }
          
            $uploadHelper = UploadHelper::getInstance();
            $uploadHelper->setPath($uploadHelper::TICKET);
            $upload = UploadedFile::getInstance($modelUpload, 'logo_image_path');

            $name = sprintf('%s%s', time(), Com::generateRandomString(5, true));

            $path = sprintf('%s%s%s.%s', $uploadHelper->getPath(), DIRECTORY_SEPARATOR, $name, $upload->extension);
            $upload->saveAs($path);
            $model->logo_image_path = $uploadHelper->getRealPath($path);
            
           
        }
      $model->user_id = $userIdentity->getId();
      $model->save(false);
      $this->setMessage('Details added successfully');
     
      $result['ticket_key'] = $model->ticket_key; 
      if($modelUser->register_type == 1) {
         $result['exhibitor_platinum_price'] = $EventModel->exhibitor_platinum_price;
         $result['exhibitor_diamond_price'] = $EventModel->exhibitor_diamond_price;
         $result['exhibitor_gold_price'] = $EventModel->exhibitor_gold_price;
         $result['exhibitor_silver_price'] = $EventModel->exhibitor_silver_price;

      } else {
         $result['visitor_price'] = $EventModel->visitors_package_price;
      }
      return $result;
    }

    public function actionUpdate()
    {
         $request = Yii::$app->request->post();
         $params = [
            "package_price",
            'ticket_key',
         ];
         $this->checkRequiredParam($request, $params);
         $Ticket_model = Ticket::find()->where(['ticket_key' => $request['ticket_key']])->one();

         if($Ticket_model == null) {
            $this->commonError('Invalid Events');
         }
         $Ticket_model->subscription_price = $request['package_price'];
         $Ticket_model->save('false');
         $this->setMessage('Booked successfully');
         return [];


    }

    public function actionGetOrders()
    {
        $request = Yii::$app->getRequest()->post();
        $userIdentity = Yii::$app->getUser()->getIdentity();

        //$model = Ticket::find()->where(['user_id' => $userIdentity->getId()])->all();
        $model = Events::find()
                    ->alias('E')
                    ->leftJoin(['T' => Ticket::tableName()], 'T.event_id = E.event_id')
                    ->where([
                        'E.event_status' => Area::ACTIVE,
                        'user_id' => $userIdentity->getId()
                    ])
                    ->all();

        $this->setMessage('Upcomming Event get successfully');
        return $model;
    }

    public function actionViewStall()
    {
        $request = Yii::$app->request->get();
        $params = [
          'event_key',
       ];
       $this->checkRequiredParam($request, $params);
        $EventModel = Events::find()->where(['event_key' => $request['event_key']])->one();
        if($EventModel == null) {
              $this->commonError('Invalid Events');
        }

       $blocks = Ticket::getBlocks();

       foreach ($blocks as $key => $blockName) {
          foreach ($blockName as $block_key => $stall) {
             if (strpos($block_key, 'empty') === false) {

                 $ticket = Ticket::find()
                    ->where([
                      'event_id' => $EventModel->event_id
                      ,'slot_id' => $stall['id']
                    ])->one();

                 if($ticket !== null) {
                    $blocks[$key][$block_key]['status'] = 1;
                    
                 } else {
                    $blocks[$key][$block_key]['status'] = 0;
                  
                 }
             } else {
                  $blocks[$key][$block_key]['status'] = 0;
                
             }
          }
       }

      return $blocks;
    }

    public function actionHistory()
    {
        $userIdentity = Yii::$app->getUser()->getIdentity();
        $model = TicketHistory::find()
                    ->alias('E')
                    ->select(['E.*', 'T.subscription_price','T.created_at'])
                    ->leftJoin(['T' => Ticket::tableName()], 'T.event_id = E.event_id')
                    ->where([
                        'E.event_status' => Events::ACTIVE,
                        //'user_id' => $userIdentity->getId()
                    ])
                    //->asArray()
                    ->all();

        $this->setMessage('History get successfully');
        return $model;
    }

    public function actionImageUpload()
    {
        $modelUpload = new EventUploadForm();
        $files = $_FILES;
        $data['upload'] = '';
        $uploadData = [];
      
         if (array_key_exists('upload', $files)) {

              foreach ((array)$files['upload'] as $dataKey => $dataValue) {
                  $uploadData[$dataKey]['logo_image_path'] = $dataValue;
              }

              $_FILES = ['EventUploadForm' => $uploadData];

              $modelUpload->image = UploadedFile::getInstance($modelUpload, 'logo_image_path');
              if (!$modelUpload->validate()) {
                  return $modelUpload;
              }
            
              $uploadHelper = UploadHelper::getInstance();
              $uploadHelper->setPath($uploadHelper::COVER_IMAGES);
              $upload = UploadedFile::getInstance($modelUpload, 'logo_image_path');

              $name = sprintf('%s%s', time(), Com::generateRandomString(5, true));

              $path = sprintf('%s%s%s.%s', $uploadHelper->getPath(), DIRECTORY_SEPARATOR, $name, $upload->extension);
              $upload->saveAs($path);
              return ['url' => $uploadHelper->getRealPath($path)];
              
             
          }
    }
   


    
}