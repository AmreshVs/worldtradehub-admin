<?php

namespace api\modules\v1\controllers;


use api\components\CController;
use api\modules\v1\models\Ticket;
use api\modules\v1\models\Stall;
use api\modules\v1\models\Events;
use api\modules\v1\models\TicketEvents;
use api\modules\v1\models\User;
use api\modules\v1\models\TicketImages;
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
   
    public function actionExhibitorCompanyInfomration()
    {
     // print_r($_FILES); die;
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
            'ticket_key'
            //'slot_id',
            //'logo_image_path',
        ];
      $this->checkRequiredParam($request, $params);
      $modelUser = User::findOne(['user_id' => $userIdentity->getId(),'status' => User::ACTIVE]);

      if ($modelUser === null) {
        $this->userNotFound();
      }

        $model = Ticket::find()->where(['ticket_key' => $request['ticket_key']])->one();

         if($model == null) {
            $this->commonError('Invalid Ticket');
         }

      // $Ticket_model = Ticket::find()->where(['event_id' => $EventModel->event_id])->one();
      // if($Ticket_model != null) {
      //       $this->commonError('Event Already Booked');
      // }

     
      $modelUpload = new EventUploadForm();
      $model->load($request, "");

      if (!$model->validate()) {
          return $model;
      }

      $files = $_FILES;
      $data['logo_image_path'] = '';
      $uploadData = [];
          if (array_key_exists('logo_image_path', $files)) {
              foreach ((array)$files['logo_image_path'] as $dataKey => $dataValue) {
                  $uploadData[$dataKey]['logo_image_path'] = $dataValue;
              }
          }

          if (array_key_exists('cover_image_path', $files)) {
           foreach ((array)$files['cover_image_path'] as $dataKey => $dataValue) {
                  $uploadData[$dataKey]['cover_image_path'] = $dataValue;
              }
          }

           if (array_key_exists('images', $files)) {
           foreach ((array)$files['images'] as $dataKey => $dataValue) {
                  $uploadData[$dataKey]['images'] = $dataValue;
              }
          }

            $_FILES = ['EventUploadForm' => $uploadData];

             if (array_key_exists('logo_image_path', $files)) {
                $modelUpload->image = UploadedFile::getInstance($modelUpload, 'logo_image_path');
            }

            if (array_key_exists('cover_image_path', $files)) {
                $modelUpload->cover_image = UploadedFile::getInstance($modelUpload, 'cover_image_path');
            }
            if (!$modelUpload->validate()) {
                return $modelUpload;
            }

            if (array_key_exists('images', $files)) {
              $i = 0;
              //print_r($files['images']); die;
              foreach ($files['images']['name'] as $key => $file) {
              //  echo $key;
                  $modelUpload->images = UploadedFile::getInstance($modelUpload, 'images['.$key.']');
                  $uploadHelper = UploadHelper::getInstance();
                  $uploadHelper->setPath($uploadHelper::TICKET_FILES);
                  $upload = UploadedFile::getInstance($modelUpload, 'images['.$key.']');

                  $name = sprintf('%s%s', time(), Com::generateRandomString(5, true));

                  $path = sprintf('%s%s%s.%s', $uploadHelper->getPath(), DIRECTORY_SEPARATOR, $name, $upload->extension);
                  $upload->saveAs($path);
                  $modelImage = new TicketImages();
                  $modelImage->image_path  = $uploadHelper->getRealPath($path);
                  $modelImage->ticket_id = $model->ticket_id;
                  $modelImage->save();
                  $i++;
              }

            }
        // die('wrk');

            if($modelUpload->image != ''){
              $uploadHelper = UploadHelper::getInstance();
              $uploadHelper->setPath($uploadHelper::TICKET);
              $upload = UploadedFile::getInstance($modelUpload, 'logo_image_path');

              $name = sprintf('%s%s', time(), Com::generateRandomString(5, true));

              $path = sprintf('%s%s%s.%s', $uploadHelper->getPath(), DIRECTORY_SEPARATOR, $name, $upload->extension);
              $upload->saveAs($path);
              $model->logo_image_path = $uploadHelper->getRealPath($path);
            }
            if($modelUpload->cover_image != ''){
              $uploadHelper = UploadHelper::getInstance();
              $uploadHelper->setPath($uploadHelper::TICKET);
              $upload = UploadedFile::getInstance($modelUpload, 'cover_image_path');

              $name = sprintf('%s%s', time(), Com::generateRandomString(5, true));

              $path = sprintf('%s%s%s.%s', $uploadHelper->getPath(), DIRECTORY_SEPARATOR, $name, $upload->extension);
              $upload->saveAs($path);
              $model->cover_image_path = $uploadHelper->getRealPath($path);
            }
            
      //$model->event_id = $EventModel->event_id;
      $model->user_id = $userIdentity->getId();
      $model->ticket_status = 3;
      $model->save(false);
      $this->setMessage('Details added successfully');
     
      $result['ticket_key'] = $model->ticket_key; 
      // if($modelUser->register_type == 1) {
      //    $result['exhibitor_platinum_price'] = $EventModel->exhibitor_platinum_price;
      //    $result['exhibitor_diamond_price'] = $EventModel->exhibitor_diamond_price;
      //    $result['exhibitor_gold_price'] = $EventModel->exhibitor_gold_price;
      //    $result['exhibitor_silver_price'] = $EventModel->exhibitor_silver_price;

      // } else {
      //    $result['visitor_price'] = $EventModel->visitors_package_price;
      // }
      return $result;
    }

    public function actionExhibitorStallBook()
    {
      $request = Yii::$app->getRequest()->post();
      $userIdentity = Yii::$app->getUser()->getIdentity();

      $params = [
            "event_key",
        ];
      $this->checkRequiredParam($request, $params);
      
      $EventModel = Events::find()->where(['event_key' => $request['event_key']])->one();
      if($EventModel == null) {
            $this->commonError('Invalid Events');
      }
      $modelUser = User::findOne(['user_id' => $userIdentity->getId(),'status' => User::ACTIVE]);

      if ($modelUser === null) {
        $this->userNotFound();
      }
      $model = Ticket::find()->where([
        'event_id' => $EventModel->event_id,
        'user_id' => $userIdentity->getId(),
        'payment_status' => Ticket::PAYMENT_PENDING,
        'ticket_status' => 3
      ])->one();

      if($model == null) {
           $model = new Ticket();
      }

      $model->event_id = $EventModel->event_id;
      $model->user_id = $userIdentity->getId();
      $model->ticket_status = 3;
      $model->payment_status = $model::PAYMENT_PENDING;
      $model->save(false);

      $result['ticket_key'] = $model->ticket_key; 
      if($modelUser->register_type == 1) {
        if($modelUser->country_id == User::COUNTRY_INDIA) {
           $result['exhibitor_platinum_price'] = $EventModel->exhibitor_platinum_price;
           $result['exhibitor_diamond_price'] = $EventModel->exhibitor_diamond_price;
           $result['exhibitor_gold_price'] = $EventModel->exhibitor_gold_price;
        } else {
          $result['exhibitor_silver_price'] = $EventModel->exhibitor_silver_price;
        }

      } else {
         $result['visitor_price'] = $EventModel->visitors_package_price;
      }

      return $result;
    //  $Ticket_model->slot_name = $request['stall_name'];

    }

    public function actionExhibitorPackageSelect()
    {
         $request = Yii::$app->request->post();
         $params = [
            "package_type",
            'event_key',
            'ticket_key',
         ];
         $this->checkRequiredParam($request, $params);
         $Ticket_model = Ticket::find()->where(['ticket_key' => $request['ticket_key']])->one();

         if($Ticket_model == null) {
            $this->commonError('Invalid Ticket');
         }

         $EventModel = Events::find()->where(['event_key' => $request['event_key']])->one();
          if($EventModel == null) {
                $this->commonError('Invalid Events');
          }
        if($request['package_type'] == 1) {
            
            $Ticket_model->subscription_price = ($EventModel->exhibitor_platinum_price * (18/100)) + $EventModel->exhibitor_platinum_price;
            $Ticket_model->subscription_type = 1;

        } else if($request['package_type'] == 2) {
            $Ticket_model->subscription_price = ($EventModel->exhibitor_diamond_price * (18/100)) + $EventModel->exhibitor_diamond_price;
            $Ticket_model->subscription_type = 2;

        } else if($request['package_type'] == 3) {
            $Ticket_model->subscription_price = ($EventModel->exhibitor_gold_price * (18/100)) + $EventModel->exhibitor_gold_price;
            $Ticket_model->subscription_type = 3;

        }else {
            $Ticket_model->subscription_price = ($EventModel->exhibitor_silver_price * (18/100)) + $EventModel->exhibitor_silver_price;
            $Ticket_model->subscription_type = 4;
        }

         $Ticket_model->ticket_status = 3;
         $Ticket_model->save(false);
         $this->setMessage('Booked successfully');
         return ['payment_url' => Yii::$app->request->hostInfo.'/admin/payment/index?ticket_key='. $Ticket_model->ticket_key];
    }

    public function actionVisitorPackageSelect()
    {     
          $userIdentity = Yii::$app->getUser()->getIdentity();
         $request = Yii::$app->request->post();
         $params = [
            //"package_type",
            'event_key',
         ];
         $this->checkRequiredParam($request, $params);
         $EventModel = Events::find()->where(['event_key' => $request['event_key']])->one();
          if($EventModel == null) {
                $this->commonError('Invalid Events');
          }
         $Ticket_model = new Ticket();
         $Ticket_model->subscription_price = ($EventModel->visitors_package_price * (18/100)) + $EventModel->visitors_package_price;
         $Ticket_model->subscription_type = 5;
          $Ticket_model->user_id = $userIdentity->getId();
          $Ticket_model->ticket_status = 3;
          $Ticket_model->event_id = $EventModel->event_id;
         $Ticket_model->save(false);
         $this->setMessage('Booked successfully');
         return ['payment_url' => Yii::$app->request->hostInfo.'/admin/payment/index?ticket_key='. $Ticket_model->ticket_key];
    }

    public function actionGetOrders()
    {
        $request = Yii::$app->getRequest()->post();
        $userIdentity = Yii::$app->getUser()->getIdentity();

        //$model = Ticket::find()->where(['user_id' => $userIdentity->getId()])->all();
        $model = TicketEvents::find()
                    ->alias('T')
                    ->select(['E.*', 'T.ticket_key'])
                    ->leftJoin(['E' => Events::tableName()], 'T.event_id = E.event_id')
                    ->where([
                        'E.event_status' => Events::ACTIVE,
                        'T.ticket_status' => 1,
                        'user_id' => $userIdentity->getId(),
                        //'T.ticket_status' => 1
                    ])
                    ->all();

        $this->setMessage('Upcomming Event get successfully');
        return $model;
    }

    public function actionViewStall()
    {
        $request = Yii::$app->request->get();
        $userIdentity = Yii::$app->getUser()->getIdentity();


        $params = [
          'event_key',
       ];
       $this->checkRequiredParam($request, $params);
        $EventModel = Events::find()->where(['event_key' => $request['event_key']])->one();
        if($EventModel == null) {
              $this->commonError('Invalid Events');
        }

       $room = Ticket::getBlocks();
       foreach ($room as $room_key => $blocks) {
          foreach ($blocks as $key => $blockName) {
            foreach ($blockName as $block_key => $stall) {
               if (strpos($block_key, 'empty') === false) {
                
                   $ticket = Ticket::find()
                      ->where([
                        'event_id' => $EventModel->event_id,
                        'slot_id' => $stall['id'],
                        //'user_id' => $userIdentity->getId(),
                        'ticket_status' => 1
                      ])->one();

                   if($ticket !== null) {
                      $room[$room_key][$key][$block_key]['status'] = 1;
                      
                      //if($ticket->user_id == $userIdentity->getId()) {
                          $room[$room_key][$key][$block_key]['name'] = $ticket->company_name;
                          $room[$room_key][$key][$block_key]['description'] = $ticket->short_desc;
                          $room[$room_key][$key][$block_key]['ticket_key'] = $ticket->ticket_key;

                          if($ticket->subscription_type == 1) {
                              $room[$room_key][$key][$block_key]['type'] = 'Platinum';

                          } else if($ticket->subscription_type == 2) {
                              $room[$room_key][$key][$block_key]['type'] = 'Diamond';

                          } else if($ticket->subscription_type == 3) {
                              $room[$room_key][$key][$block_key]['type'] = 'Gold';

                          } else if($ticket->subscription_type == 4) {
                              $room[$room_key][$key][$block_key]['type'] = 'Silver';

                          } else {
                              $room[$room_key][$key][$block_key]['type'] = 'Visitor Fee';
                          }
                      // } else {
                      //     $room[$room_key][$key][$block_key]['status'] = 0;
                      //     $room[$room_key][$key][$block_key]['ticket_key'] = "";
                      //     $room[$room_key][$key][$block_key]['type'] = "";
                      // }

                   } else {
                      $room[$room_key][$key][$block_key]['status'] = 0;
                      $room[$room_key][$key][$block_key]['ticket_key'] = "";
                      $room[$room_key][$key][$block_key]['type'] = "";
                   }
               } else {
                    $room[$room_key][$key][$block_key]['status'] = 0;
                    $room[$room_key][$key][$block_key]['ticket_key'] = "";
                    $room[$room_key][$key][$block_key]['type'] = "";

               }
            }
          }
       }

      return $room;
    }

    public function actionHistory()
    {
        $userIdentity = Yii::$app->getUser()->getIdentity();
        $model = TicketHistory::find()
                    ->alias('T')
                    ->select(['E.*', 'T.subscription_price','T.created_at'])
                    ->leftJoin(['E' => Events::tableName()], 'T.event_id = E.event_id')
                    ->where([
                        'E.event_status' => Events::ACTIVE,
                       'T.user_id' => $userIdentity->getId(),
                       'T.ticket_status' => 1
                    ])
                    //->groupBy('T.ticket_key')
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

    public function actionViewStallDetails()
    {
         $request = Yii::$app->request->get();
         $params = [
            'ticket_key',
         ];
         $this->checkRequiredParam($request, $params);
         $ticketModel = Stall::find()->where(['ticket_key' => $request['ticket_key']])->one();

         if($ticketModel == null) {
            $this->commonError('Invalid Ticket');
         }

         return $ticketModel;
    }

    public function actionUpdateStallDetails()
    {
         $request = Yii::$app->request->post();
         $params = [
            'ticket_key',
            "company_name",
            "website",
            "meet_id",
            "zoom_id",
            "whatsapp_number",
            "fb_url",
            "youtupe_link",
            "company_desc",
         ];
         $this->checkRequiredParam($request, $params);
         $model = Stall::find()->where(['ticket_key' => $request['ticket_key']])->one();

         if($model == null) {
            $this->commonError('Invalid Ticket');
         }

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
          }

          if (array_key_exists('cover_image_path', $files)) {
           foreach ((array)$files['cover_image_path'] as $dataKey => $dataValue) {
                  $uploadData[$dataKey]['cover_image_path'] = $dataValue;
              }
          }

            $_FILES = ['EventUploadForm' => $uploadData];
            if (array_key_exists('logo_image_path', $files)) {
                $modelUpload->image = UploadedFile::getInstance($modelUpload, 'logo_image_path');
            }

            if (array_key_exists('cover_image_path', $files)) {
                $modelUpload->cover_image = UploadedFile::getInstance($modelUpload, 'cover_image_path');
            }

              if (!$modelUpload->validate()) {
                  return $modelUpload;
              }
              if($modelUpload->image != ''){
                $uploadHelper = UploadHelper::getInstance();
                $uploadHelper->setPath($uploadHelper::TICKET);
                $upload = UploadedFile::getInstance($modelUpload, 'logo_image_path');

                $name = sprintf('%s%s', time(), Com::generateRandomString(5, true));

                $path = sprintf('%s%s%s.%s', $uploadHelper->getPath(), DIRECTORY_SEPARATOR, $name, $upload->extension);
                $upload->saveAs($path);
                $model->logo_image_path = $uploadHelper->getRealPath($path);
              }

          
             
              if($modelUpload->cover_image != ''){
                $uploadHelper = UploadHelper::getInstance();
                $uploadHelper->setPath($uploadHelper::TICKET);
                $upload = UploadedFile::getInstance($modelUpload, 'cover_image_path');
                $name = sprintf('%s%s', time(), Com::generateRandomString(5, true));

                $path = sprintf('%s%s%s.%s', $uploadHelper->getPath(), DIRECTORY_SEPARATOR, $name, $upload->extension);
                $upload->saveAs($path);
                $model->cover_image_path = $uploadHelper->getRealPath($path);
              }
              
             
      $model->ticket_status = 3;
      $model->save(false);
      $this->setMessage('Details added successfully');

      return [];
    }
   


    
}