<?php

namespace backend\controllers;

use backend\models\Events;
use backend\models\Language;
use backend\models\EventSearch;
use backend\models\EventsUploadForm;
use common\components\CController;
use common\helpers\Com;
use common\helpers\MailerQueueHelper;
use Yii;
use yii\web\Application;
use yii\web\NotFoundHttpException;
use yii\web\UploadedFile;
use common\helpers\UploadHelper;
use common\helpers\FileUploadHelper;

/**
 * class EventController
 * @package backend\controllers
 * 
 * Title("Event Management")
 */
class EventController extends CController
{
    /**
     * 
     * @return string
     * 
     * @Title("List")
     */
    public function actionIndex()
    {
        $searchModel = new EventSearch();

        return $this->render('index',
            [
                'searchModel' => $searchModel,
                'dataProvider' => $searchModel->search(Yii::$app->request->queryParams)
            ]
        );
    }  
             
    /**
     * 
     * @return string
     * 
     * @Title("Create")
     */
    public function actionCreate()
    {   
        $model = new Events();         
        $modelUploadForm = new EventsUploadForm();
       // $modelUploadForm->setScenario($modelUploadForm::SCENARIO_CREATE);

        $post =  Yii::$app->getRequest()->post();
        $appLanguages = Language::getAppLanguages();
        if ($model->load($post) && $model->validate()) {
                $fileHelper = FileUploadHelper::getInstance()->convertFileArray();
                $uploadedFile = $fileHelper->getFileInstance($modelUploadForm, 'event_image');
               
                if (!empty($uploadedFile)) {
                    $uploadHelper = UploadHelper::getInstance();
                    $uploadHelper->setPath($uploadHelper::EVENT);
                    $uploadHelper->setUploadedFile($uploadedFile);
                    $path = $uploadHelper->getPath(true);
                    $uploadedFile->saveAs($path);
                    $realpath = $uploadHelper->getRealPath($path);
                    $model->event_image = '/' . $realpath;
                 
                }    
            $model->save(false);
            Com::successFlash('Created Successfully');
            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model, 
            'appLanguages' => $appLanguages ,
            'modelUploadForm' => $modelUploadForm          
        ]);
    }
    
    /**
     * 
     * @param type $id
     * @return string
     * 
     * @Title("Update")
     */
    public function actionUpdate($id)
    {   
        $model = $this->findModel($id); 
        $modelUploadForm = new EventsUploadForm();      
        $post =  Yii::$app->getRequest()->post(); 
        if ($model->load($post) && $model->validate()) {
       
            $fileHelper = FileUploadHelper::getInstance()->convertFileArray();
            $uploadedFile = $fileHelper->getFileInstance($modelUploadForm, 'event_image');
               
            if (!empty($uploadedFile)) {
                $uploadHelper = UploadHelper::getInstance();
                $uploadHelper->setPath($uploadHelper::EVENT);
                $uploadHelper->setUploadedFile($uploadedFile);
                $path = $uploadHelper->getPath(true);
                $uploadedFile->saveAs($path);
                $realpath = $uploadHelper->getRealPath($path);
                $model->event_image = '/' . $realpath;
             
            }    
            $model->save(false);
            Com::successFlash('Updated Successfully');
            return $this->redirect(['index']);
        }

        return $this->render('update', [
            'model' => $model, 
            //'appLanguages' => $appLanguages ,
            'modelUploadForm' => $modelUploadForm             
        ]);
    }
   
    /**
     * 
     * @param type $id
     * @return string 
     * 
     * @Title("Delete")
     */
    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        if ($model === null) {
            Com::failureFlash('Unable to find the Events');
            return $this->redirect(['index']);
        }
        $model->event_status = Events::DELETE;
        $model->save(false);
        
        Com::successFlash('Deleted Successfully');

        return $this->redirect(['index']);
    }
   
    /**
     * 
     * @param type $id
     * @return $model
     * @throws NotFoundHttpException
     */
    protected function findModel($id)
    {
        if (($model = Events::findOne(['event_id' => $id])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    
    /**
     * 
     * @return Json
     * @throws \yii\base\InvalidParamException
     * 
     * @Title("User Status")
     */
    public function actionChangeStatus()
    {
        $params = ['key', 'status'];
        $post = Yii::$app->getRequest()->post();
        $result = ['status' => STATUS_FAIL, 'msg' => ''];
        foreach ($params as $param) {
            if (!array_key_exists($param, $post)) {
                $result['msg'] = 'Required param missing';
                goto skip;
            }
        }

        $model = $this->findModel($post['key']);

        if ($model === null) {
            $result['msg'] = 'Unable to find the Event';
            goto skip;
        }
        $model->event_status = $post['status'];
        $model->save(false);

        $result['msg'] = 'Event deactivated successfully';
        if ((int)$model->event_status === $model::ACTIVE) {
            $result['msg'] = 'Event activated successfully';
        }

        $result['status'] = STATUS_SUCCESS;
        
        skip:
        return $this->asJson($result);
    }
    

}

