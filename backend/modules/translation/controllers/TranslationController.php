<?php
namespace backend\modules\translation\controllers;

use backend\models\Language;
use yii\data\ArrayDataProvider;
use backend\modules\translation\models\Message;
use backend\modules\translation\models\SourceMessage;
use backend\modules\translation\models\SourceMessageSearch;
use common\components\CController;
use common\helpers\Com;
use yii\helpers\Url;
use Yii;
use yii\helpers\Json;
use yii\web\UploadedFile;


/**
 * Class TranslationController
 * @package backend\controllers
 *
 * @Title("Translation Management")
 */
class TranslationController extends CController
{

    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     * @author Senthil T <senthilkumar.t@technoduce.com>
     *
     * @Title("List/View Translation")
     */

    public function actionIndex()
    {
        $searchModel = new SourceMessageSearch();
        $params = Yii::$app->request->queryParams;

        if ( $params === [] ) {
            $params = Com::getFilter($searchModel::className());
        }
        Yii::$app->request->queryParams = $params;

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $searchModel->search(Yii::$app->request->queryParams)
        ]);
    }

    
    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     * @author Senthil T <senthilkumar.t@technoduce.com>
     *
     * @Title("Create")
     */
    public function actionCreate()
    {
        $model          = new SourceMessage();
        $modelMessage   = new Message();

        $post = Yii::$app->getRequest()->post();

        if ( $model->load($post) && $modelMessage->load($post) && $model->save() ) {
            foreach ((array)$modelMessage->translation as $lang => $translation) {
                $modelTranslation   = new Message();
                $modelTranslation->id           = $model->getPrimaryKey();
                $modelTranslation->language     = $lang;
                $modelTranslation->translation  = $translation;
                $modelTranslation->save(false);
            }
            $this->redirect('index');
        }
        return $this->render('create', [
            'modelMessage' => $modelMessage,
            'languages' => Language::getAll(),
            'model' => $model,
        ]);
    }

    
    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     * @author Senthil T <senthilkumar.t@technoduce.com>
     *
     * @Title("Update")
     */
    public function actionUpdate($id)
    {
        $model          = SourceMessage::findOne($id);
        $modelMessage   = new Message();
        $modelTranslation = Message::findAll(['id' => $model->getPrimaryKey()]);
        $translationArr = [];

        foreach ((array)$modelTranslation as $translation) {
            $translationArr[$translation->language]    = $translation->translation;
        }
        $modelMessage->translation = $translationArr;

        $post = Yii::$app->getRequest()->post();

        if ( $model->load($post) && $modelMessage->load($post) && $model->save() ) {
            foreach ((array)$modelMessage->translation as $lang => $translation) {
                $lang = strtolower($lang);
                /* @var $modelTranslation Message */
                $modelTranslation = Message::find()
                    ->where(['id' => $model->getPrimaryKey(), 'language' => $lang])
                    ->one();

                if ( $modelTranslation === null ) {
                    $modelTranslation   = new Message();
                    $modelTranslation->id           = $model->getPrimaryKey();
                    $modelTranslation->language     = strtolower($lang);
                }
                $modelTranslation->translation  = $translation;
                $modelTranslation->save(false);
            }
            $this->redirect('index');
        }

        return $this->render('update', [
            'modelMessage' => $modelMessage,
            'languages' => Language::getAll(),
            'model' => $model,
        ]);
    }

    public function actionChange()
    {
        
        Com::setSession(APP_LANGUAGE, $_POST['language']);
    }
// INSERT DATA INTO DB
  // public function actionInsert(){

  //       define('CSV_PATH','/home/developer/Downloads/');
  //       $filename = CSV_PATH . "api.csv";
  //       $delimiter= ',';
       
  //       $header = NULL;
  //       $data = array();
  //           if (($handle = fopen($filename, 'r')) !== FALSE)
  //           {
  //               if (1 == 1) {
  //                   while ($row = fgetcsv($handle, 0, $delimiter)) {
  //                   if(array_filter($row)){
  //                   if (!$header) {
  //                   $header = $row;
  //                   } else {
  //                   $data[] = array_combine($header, $row);
  //                   }
  //                   }
  //                   }
  //               } else {
  //                   while ($row = fgetcsv($handle, 0, $delimiter)) {
  //                   if(array_filter($row)){
  //                   $data[] = $row;
  //                   }
  //                   }
  //               }
  //           fclose($handle);
  //           }
            
  //           print_r($data); die;
  //           foreach ($data as $key => $value) {

  //               if(!empty($value['msg'])){
  //                   $model   = new SourceMessage();
  //                   $model->category = "api";
  //                   $model->message = $value['msg'];
  //                   if($model->save(false)){
  //                       $modelTranslation   = new Message();
  //                       $modelTranslation->id           = $model->getPrimaryKey();
  //                       $modelTranslation->language     = 'ar';
  //                       $modelTranslation->translation  = $value['ar'];
  //                       $modelTranslation->save(false);
  //                       $modelTranslation   = new Message();
  //                       $modelTranslation->id           = $model->getPrimaryKey();
  //                       $modelTranslation->language     = 'en';
  //                       $modelTranslation->translation  = $value['en'];
  //                       $modelTranslation->save(false);
  //                   }else{
  //                       print_r($model->getErrors()); die;
  //                   }
  //               }
  //           }


  //   }
}