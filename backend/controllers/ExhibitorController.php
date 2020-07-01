<?php

namespace backend\controllers;

use backend\models\AddressType;
use backend\models\User;
use backend\models\UserSearch;
use backend\models\UserAddress;
use backend\models\ActivityLog;
use common\components\CController;
use common\helpers\Com;
use common\helpers\MailerQueueHelper;
use Yii;
use yii\web\Application;
use yii\web\NotFoundHttpException;
use backend\models\Cities;
use backend\models\States;
use backend\models\Countries;
use PhpOffice\PhpSpreadsheet\Spreadsheet;

/**
 * class ExhibitorController
 * @package backend\controllers
 * 
 * Title("Exhibitor Management")
 */
class ExhibitorController extends CController
{
    /**
     * 
     * @return string
     * 
     * @Title("List")
     */
    public function actionIndex()
    {
        $searchModel = new UserSearch();

        return $this->render('index',
            [
                'searchModel' => $searchModel,
                'dataProvider' => $searchModel->search(Yii::$app->request->queryParams, 1)
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
        $model = new User();               
        $post =  Yii::$app->getRequest()->post();
        $model->setScenario($model::SCENARIO_CREATE);
        if ($model->load($post) && $model->validate()) {    
            $password = Yii::$app->security->generateRandomString(6);
            $model->setPassword($password);
            $model->referral_code = Com::generateRandomString(5, true);
            $model->save(false);
            
            $mailerQueueHelper = MailerQueueHelper::getInstance()
                ->setTo($model->email)
                ->setSubject('Customer Registration')
                ->setView(
                    'CustomerRegistration',
                    [
                        'username'=> $model->first_name.' '.$model->last_name,
                        'email' => $model->email,
                        'password' => $password,
                    ])
                ->push();
            
            Com::successFlash('Created Successfully');
            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,            
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
        $post =  Yii::$app->getRequest()->post(); 
        $model->setScenario($model::SCENARIO_UPDATE);
        if ($model->load($post) && $model->validate()) {
            $adminUserData = Yii::$app->getUser()->getIdentity();
            $adminUserName = $adminUserData->attributes['user_name'];
            $customerName = $model->first_name.$model->last_name;
            ActivityLog::log($adminUserName.' '. 'edited the tabaogo Credits for customer'.' '. $customerName);
            $model->save();             
            Com::successFlash('Updated Successfully');
            return $this->redirect(['index']);
        }

        return $this->render('update', [
            'model' => $model,            
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
            Com::failureFlash('Unable to find the Item');
            return $this->redirect(['index']);
        }
        $model->status = User::DELETE;
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
        if (($model = User::findOne(['user_key' => $id])) !== null) {
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

        $model = User::findOne(['user_key' => $post['key']]);

        if ($model === null) {
            $result['msg'] = 'Unable to find the Exhibitor';
            goto skip;
        }
        $model->status = $post['status'];
        $model->save(false);

        $result['msg'] = 'Exhibitor deactivated successfully';
        if ((int)$model->status === $model::ACTIVE) {
            $result['msg'] = 'Exhibitor activated successfully';
        }

        $result['status'] = STATUS_SUCCESS;
        
        skip:
        return $this->asJson($result);
    }
    
    /**
    * @return  string
    * @throws \yii\base\InvalidParamException
    */
    public function actionGetCustomerDetails()
    {
        $post = Yii::$app->getRequest()->post();
        $result = ['status' => STATUS_FAIL, 'msg' => '' , 'model' => ''];
        if (!array_key_exists('customer_id', $post)) {
            $result['msg'] = 'Required Param Missing';
            goto skip;
        }
        
        $model = User::findOne(['user_id' => $post['customer_id']]);
        if ($model === null) {
            $result['msg'] = 'Unable to find the customer details';
            goto skip;
        }
        
        $result['model'] = $model;
        $result['status'] = STATUS_SUCCESS;
        $result['msg'] = 'Data Fetched Successfully';
        
        skip:
        return $this->asJson($result);
    }
    
    /**
    * @return  string
    * @throws \yii\base\InvalidParamException
    */
    public function actionGetCustomerAddressDetails()
    {
        $post = Yii::$app->getRequest()->post();
        $result = ['status' => STATUS_FAIL, 'msg' => '', 'model' => ''];
        if (!array_key_exists('customer_address_id', $post)) {
            $result['msg'] = 'Required Param Missing';
            goto skip;
        }
        
        $query= UserAddress::find()
            ->alias('UA')
            ->select('UA.*')
            ->where(['UA.user_address_id' => $post['customer_address_id']]);

            UserAddress::selectTranslation($query);
                
        $model = $query->asArray()->one();
        
        if ($model === null) {
            $result['msg'] = 'Unable to find Customer Address Details';
            goto skip;
        }
        
        $result['status'] = STATUS_SUCCESS;
        $result['model'] = $model;
        $result['msg'] = 'Data Fetched Successfully';
        
        skip:
        return $this->asJson($result);
    }

    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     *
     * @Title("Quick View")
     */
    public function actionQuickView()
    {
        $params = ['id'];
        $post   = Yii::$app->getRequest()->post();
        $result = ['status' => STATUS_FAIL, 'msg' => ''];
        foreach ($params as $param) {
            if ( !array_key_exists($param, $post) ) {
                $result['msg']  = Yii::t('backend', 'Required param missing');
                goto skip;
            }
        }

        $resposeArray   = \backend\models\User::find()->where(['user_key' => $post['id']])->one();
        if (empty($resposeArray)) {
            $result['msg'] = Yii::t('backend', 'Invalid user key');
            goto skip;
        }

        $aData['user'] = [
            'user_key' => $resposeArray->user_key,
            'user_id' => $resposeArray->user_id,
            'first_name' => $resposeArray->first_name,
            'last_name' => $resposeArray->last_name,
            'email' => $resposeArray->email,
            'mobile_number' => $resposeArray->mobile_number,
            'status' => $resposeArray->status
        ];

        $model = \frontend\models\UserAddress::getaddress($resposeArray->user_id);
        $addresstype = \frontend\models\AddressType::getaddresstype();

        $aData['user_address'] = [];
        if (!empty($model) && count($model) > 0) {
            foreach ($model as $aKey => $aVal) {
                $aData['user_address'][$aKey] = [
                    'user_address_id' => $aVal['user_address_id'],
                    'latitude' => $aVal['latitude'],
                    'longitude' => $aVal['longitude'],
                    'flat_no' => $aVal['flat_no'],
                    'apartment' => $aVal['apartment'],
                    'street_name' => $aVal['street_name'],
                    'city' => $aVal['city'],
                    'area' => $aVal['area'],
                    'company' => $aVal['company'],
                    'landmark' => $aVal['landmark'],
                    'address_type_name' => $aVal['address_type_name'],
                    'full_address' => $aVal['flat_no']. ','.$aVal['apartment'].','.$aVal['street_name'].','.$aVal['city'].','.$aVal['area'].','.$aVal['company'].','.$aVal['landmark'],
                ];

                $fullAddress = str_replace(',', ', ', preg_replace('/,{2,}/',',',$aData['user_address'][$aKey]['full_address']));
                $aData['user_address'][$aKey]['full_address'] = substr($fullAddress, 0, -2).'.';
            }
        }

        $result['status'] = STATUS_SUCCESS;
        $result['response'] = json_encode($resposeArray->toArray());
        $result['data']  = $this->renderPartial('quick-view', ['resposeArray' => $aData]);

        skip:
        return $this->asJson($result);
    }

    /**
     * @throws \Throwable
     * @throws \yii\base\ExitException
     *
     * @Title("Export New")
     */
    public function actionExport()
    {
        $searchModel = new UserSearch();
        
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams, 1);
                
        $model = $dataProvider->query->all();
        
        $thead = [];
        $tbody = [];

        $theading = [
            'User Name',
            'Email',
            'Mobile Number',
            'City',
            'State',
            'Country',
        ];

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        
        $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        
        $index = 1;
        foreach ($theading as $key => $value) {
            $sheet->setCellValueByColumnAndRow($index, 1,$theading[$key]);
            $index++;
        }
        
        $fileName = 'Exhibitor'.'-'.date('Y-m-d').'.Xlsx';
        
        $positionValue = 2;
        foreach ($model as $key => $value) {
        
            $sheet->setCellValue("A$positionValue",  $value['username'])
                ->setCellValue("B$positionValue", $value['email'])
                ->setCellValue("C$positionValue", $value['mobile_number'])
                ->setCellValue("D$positionValue", Cities::getName($value['city_id']))
                ->setCellValue("E$positionValue", States::getName($value['state_id']))
                ->setCellValue("F$positionValue", Countries::getName($value['country_id']));
            
            ++$positionValue;
        }

        // We'll be outputting an excel file
        header('Content-type: text/x-csv');

        // It will be called file.xls
        header("Content-Disposition: attachment; filename=$fileName");
        $writer->save('php://output');
        
        exit;
    }

}

