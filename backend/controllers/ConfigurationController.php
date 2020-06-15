<?php

namespace backend\controllers;

use backend\models\Configuration;
use common\components\CController;
use yii\base\Component;
use common\helpers\Com;
use Yii;
use yii\helpers\Json;
use common\helpers\UploadHelper;
use backend\models\ConfigurationUploadForm;
use yii\web\UploadedFile;

/**
 * Class ConfigurationController
 * @package backend\controllers
 * 
 * @Title("Configuration")
 */
class ConfigurationController extends CController
{
    
    /**
    * @return string
    * @throws \yii\base\InvalidParamException
    *
    * @Title("SMTP setting")
    */
    public function actionSmtp()
    {
        $model = new Configuration();
        $model->loadConfig();

        return $this->render('smtp', ['model' => $model]);
    }
    
    /**
     * 
     * @return string
     * @throws \yii\base\InvalidParamException
     * 
     * @Title("App Configuration")
     */
    public function actionAppConfig()
    {
        $model = new Configuration();
        $modelUploadForm =  new ConfigurationUploadForm();
        $model->loadConfig();
        
        return $this->render('app-config', ['model' => $model, 'modelUploadForm' => $modelUploadForm]);
    }
    
    
    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     * 
     * @Title("Currency Setting")
     */
    public function actionCurrencySetting()
    {
        $model = new Configuration();
        $model->loadConfig();
        
        return $this->render('currency-setting', ['model' => $model]);
    }

    /**
     * @param bool $redirect
     * @return \yii\web\Response
     * @throws \yii\base\Exception
     * @throws \yii\base\InvalidParamException
     */
    public function actionSave($redirect = false)
    {
        $model = new Configuration();
        $post = Yii::$app->request->post();
        if ($model->load($post)) {
            $modelUploadForm = new ConfigurationUploadForm();
            $appLogoFile = UploadedFile::getInstance($modelUploadForm,'app_logo');
            $favLogoFile = UploadedFile::getInstance($modelUploadForm, 'fav_logo');
            $offerImageFile = UploadedFile::getInstance($modelUploadForm, 'offer_image');
            $placeholderImageFile = UploadedFile::getInstance($modelUploadForm, 'placeholder_image');
            $uploadHelper = UploadHelper::getInstance();
            if(!empty($appLogoFile)) {
                $uploadHelper->setPath($uploadHelper::SITE_IMAGES);
                $uploadHelper->setUploadedFile($appLogoFile);
                $path = $uploadHelper->getPath(true);
                $appLogoFile->saveAs($path);
                $realpath = $uploadHelper->getRealPath($path);
                $model['APP_LOGO_PATH'] = '/'. $realpath;
            }
            
            if(!empty($favLogoFile)) {									 		 
                $uploadHelper->setPath($uploadHelper::SITE_IMAGES);
                $uploadHelper->setUploadedFile($favLogoFile);
                $path = $uploadHelper->getPath(true);
                $favLogoFile->saveAs($path);
                $realpath = $uploadHelper->getRealPath($path);
                $model['FAV_LOGO_PATH'] = '/'. $realpath;
            }
            $model->save();
            Com::successFlash("Updated Successfully");
        }
        
        $redirect = $redirect === false ? 'index' : $redirect;

            Yii::$app->session->setFlash('success', Yii::t('backend', "Details saved successfully"));
            $model->save();
        

        return $this->redirect([$redirect]);
    }  
}