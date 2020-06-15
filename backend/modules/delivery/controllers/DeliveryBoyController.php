<?php

namespace backend\modules\delivery\controllers;

use backend\modules\delivery\models\DeliveryBoy;
use yii\data\ArrayDataProvider;
use common\components\CController;
use common\helpers\Com;
use backend\models\Order;
use backend\models\Branch;
use backend\models\AdminUserBranch;
use backend\models\Configuration;
use yii\helpers\Url;
use Yii;
use yii\helpers\Json;
use yii\web\UploadedFile;

/**
 * Class DeliveryBoyController
 * @package backend\controllers
 *
 * @Title("Delivery Boy Management")
 */
class DeliveryBoyController extends CController {

    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     * @author Senthil T <senthilkumar.t@technoduce.com>
     *
     * @Title("List/View DeliveryBoy")
     */
    public function actionIndex() {
        $resultData = [];
        $responseData = Com::getJsonData('GET', Configuration::get(Configuration::DELIVERY_BOY_ACCESS_URL) . "driver/company?company_id=" . Configuration::get(Configuration::COMPANY_KEY), [], 0);

        /* set flash for sever down */
        if ($responseData == null || (isset($responseData) && $responseData->status == 404)) {
            Yii::$app->session->setFlash('danger', Yii::t('backend', 'Server is down! Please try again some other time!'));
        }
        
       // echo '<pre>'; print_r($responseData); echo '</pre>';exit();
        if (isset($responseData->data)) {
            foreach ($responseData->data as $dataKey => $dataValue) {
                $resultData[] = [
                    'id' => $dataValue->_id,
                    'key' => $dataValue->_id,
                    'name' => $dataValue->name,
                    'status' => $dataValue->status,
                    'email' => $dataValue->email,
                    'phone_number' => $dataValue->phone_number,
                    'country' => $dataValue->country,
                    'city' => $dataValue->city,
                    'address' => $dataValue->address,
                    'is_approved' => $dataValue->is_approved,
                    'vendor_key' => (isset($dataValue->vendor_key)) ? $dataValue->vendor_key : '',
                ];
            }
        } else {
            $resultData = [];
        }

        /* For Filter */
        $dataProvider = new ArrayDataProvider([
            'key' => 'id',
            'allModels' => $resultData,
            'sort' => [
                'attributes' => ['id', 'name', 'email'],
            ],
            'pagination' => [
                'pageSize' => 10,
            ],
        ]);
                
        return $this->render('index', ['dataProvider' => $dataProvider]);
    }

    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     * @author Senthil T <senthilkumar.t@technoduce.com>
     *
     * @Title("List/View Create")
     */
    public function actionCreate() {
        $model = new DeliveryBoy();
        $model->setScenario($model::SCENARIO_REGISTER_BACKEND);
        $post = Yii::$app->getRequest()->post();
        
        if (Yii::$app->request->post() && $model->load($post) && $model->validate()) {             
            $post['DeliveryBoy']['device_token'] = \Yii::$app->getSecurity()->generateRandomString(16);
            $post['DeliveryBoy']['is_approved'] = 'TRUE';
            if (yii::$app->request->isAjax) {
                $post['DeliveryBoy']['is_approved'] = 'FALSE';
                $post['DeliveryBoy']['status'] = DeliveryBoy::DELIVERY_DEACTIVE;
            }
            $post['DeliveryBoy']['dob'] =  date("Y-m-d", strtotime($post['DeliveryBoy']['dob']));
            unset($post['DeliveryBoy']['confirm_password']);

            $responseData = Com::getJsonData('POST', Configuration::get(Configuration::DELIVERY_BOY_ACCESS_URL) . "driver?company_id=" . Configuration::get(Configuration::COMPANY_KEY), $post['DeliveryBoy'], 0);

            
            if ($responseData == null) {
                Com::failureFlash(Yii::t('backend', 'Server is down! Please try again some other time!'));
                return $this->render('create', ['model' => $model]);
            } else if (isset($responseData->errors) && !empty($responseData->errors)) {
                Com::failureFlash(Yii::t('backend', $responseData->errors[0]->message));
                return $this->render('create', ['model' => $model]);
            } else if ($responseData->status == 500) {
                Com::failureFlash(Yii::t('backend', 'Internal server error. please contact administrator'));
                return $this->render('create', ['model' => $model]);
            } else if ($responseData->status == 400) {
                Com::failureFlash(Yii::t('backend', $responseData->message));
                return $this->render('create', ['model' => $model]);
            } else if ($responseData->status == 404) {
                Com::failureFlash( Yii::t('backend', 'Server is down(404)! Please try again some other time!'));
                return $this->render('create', ['model' => $model]);
            } else if ($responseData->status == 200) {
                Com::SuccessFlash( Yii::t('backend', "Delivery boy created successfully"));
            }

            $this->redirect(['delivery-boy/index']);
        } 
        return $this->render('create', ['model' => $model]);
    }

    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     * @author Senthil T <senthilkumar.t@technoduce.com>
     *
     * @Title("List/View Update")
     */
    public function actionUpdate($id) {
        $model = new DeliveryBoy();
        $model->setScenario($model::SCENARIO_REGISTER_BACKEND);
        $responseData['DeliveryBoy'] = $this->getDriver($id);
        if (!empty($responseData['DeliveryBoy'])) {

            $model->load($responseData);
        } else {
            Yii::$app->session->setFlash('danger', Yii::t('backend', "No delivery boy found"));
            $this->redirect(['index']);
        }

        $post = Yii::$app->getRequest()->post();

        if (Yii::$app->request->post() && $model->load($post)) {
            $responseData = Com::getJsonData('POST', Configuration::get(Configuration::DELIVERY_BOY_ACCESS_URL) . "driver?company_id=" . Configuration::get(Configuration::COMPANY_KEY) . "&driver_id=" . $id, $post['DeliveryBoy'], 0);

            if ($responseData == null) {
                Com::failureFlash(Yii::t('backend', 'Server is down! Please try again some other time!'));
                return $this->render('create', ['model' => $model]);
            } else if (isset($responseData->errors) && !empty($responseData->errors)) {
                Com::failureFlash(Yii::t('backend', $responseData->errors[0]->message));
                return $this->render('create', ['model' => $model]);
            } else if ($responseData->status == 500) {
                Com::failureFlash(Yii::t('backend', 'Internal server error. please contact administrator'));
                return $this->render('create', ['model' => $model]);
            } else if ($responseData->status == 400) {
                Com::failureFlash(Yii::t('backend', $responseData->message));
                return $this->render('create', ['model' => $model]);
            } else if ($responseData->status == 404) {
                Com::failureFlash( Yii::t('backend', 'Server is down(404)! Please try again some other time!'));
                return $this->render('create', ['model' => $model]);
            } else if ($responseData->status == 200) {
                Com::SuccessFlash( Yii::t('backend', "Delivery boy updated successfully"));
            }

            $this->redirect(['delivery-boy/index']);
        }
        return $this->render('update', ['model' => $model, 'id' => $id]);
    }

    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     * @author Senthil T <senthilkumar.t@technoduce.com>
     *
     * @Title("List/View Track")
     */
    public function actionTrackDeliveryBoy() {
        if (Com::isSession('__order_id')) {
            $branchModel = Branch::find()
                    ->select(['t.branch_key'])
                    ->alias('t')
                    ->innerJoin(
                            ['O' => Order::tableName()], 't.branch_id = O.branch_id AND O.order_key = :param', ['param' => Com::session('__order_id')]
                    )
                    ->asArray()
                    ->one();
            $responseData = Com::getJsonData('GET', Configuration::get(Configuration::DELIVERY_BOY_ACCESS_URL) . "company/" . Configuration::get(Configuration::COMPANY_KEY) . "/drivers/vendor/" . $branchModel['branch_key']);
        } else {
//            $responseData = Com::getJsonData('GET', Configuration::get(Configuration::DELIVERY_BOY_ACCESS_URL) . "company/" . Configuration::get(Configuration::COMPANY_KEY) . "/drivers/vendor/0");
                
            $responseData = Com::getJsonData('GET', Configuration::get(Configuration::DELIVERY_BOY_ACCESS_URL) . "driver/company?company_id=" . Configuration::get(Configuration::COMPANY_KEY), [], 0);
            
        }

        if (isset($responseData->data)) {
            $resultData = [];

            foreach ($responseData->data as $dataKey => $dataValue) {
                if ($dataValue->_id !== null && $dataValue->status == DeliveryBoy::DELIVERY_ONLINE) {
                    $resultData[] = [
                        1 => ($dataValue->location != '') ? $dataValue->location->coordinates[1] : '',
                        2 => ($dataValue->location != '') ? $dataValue->location->coordinates[0] : '',
                        3 => $dataValue->name,
                        4 => $dataValue->_id,
                        5 => $dataValue->status,
                        6 => !empty(isset($dataValue->isBusy)) ? $dataValue->isBusy : 0,
                        7 => (!empty($dataValue->orders) && count($dataValue->orders) > 0) ? $dataValue->orders : [],
                    ];
                }
            }
        } else {
            $resultData = [];
        }
        /* for checking branch delivery boy's */
        $tempData = [];
//        $branchModel = Branch::getAllBranch();
//        $assignedModel = AdminUserBranch::getUserBranch();
//
//        if ($branchModel != null && $assignedModel != null) {
//            foreach ($branchModel as $branchModelKey => $branchModelValue) {
//                $key = array_search($branchModelValue['branch_key'], array_column($resultData, 'vendor_key'));
//                $tempData[] = $resultData[$key];
//            }
//            if (count($resultData) > 0) {
//                $resultData = $tempData;
//            }
//        }

        /* Checking Orders */
        if (Com::isSession('__order_id') && Com::isSession('__isMap')) {
            foreach ($resultData as $resultDataKey => $resultDataValue) {
                if (Com::isSession('__order_id')) {
                    if (!in_array(Com::session('__order_id'), $resultDataValue[7])) {
                        unset($resultData[$resultDataKey]);
                    }
                }
            }
            $i = 0;
            $tempData = array();
            foreach ($resultData as $resultDataK => $resultDataVal) {
                $tempData[$i] = $resultDataVal;
                $i++;
            }
            if (count($resultData) > 0) {
                $resultData = $tempData;
            }
        }

        if (count($resultData) > 0) {
            return $this->render('track-deliveryboy', ['deliveryboy' => $resultData]);
        } else {
            Com::failureFlash(Yii::t("backend", "No deliveryboy in online..!"));

            if (Com::isSession('__order_id')) {
                Com::unsetSession('__order_id');
                return $this->redirect(['/order/index']);
                exit();
            } else {
                return $this->redirect(['delivery-boy/index']);
            }
        }
    }

    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     * @author Senthil T <senthilkumar.t@technoduce.com>
     *
     * @Title("List/View Assign Order")
     */
    public function actionAssignDeliveryBoy() {
        if (Com::isSession('__order_id')) {
            $result = ['status' => STATUS_FAIL, 'msg' => ''];
            $responseData = Com::getJsonData('PUT', Configuration::get(Configuration::DELIVERY_BOY_ACCESS_URL) . "order/" . Com::session('__order_id') . "/assign_driver/" . Yii::$app->request->post('key') . '?company_id=' . Configuration::get(Configuration::COMPANY_KEY));

            if (isset($responseData->errors) && !empty($responseData->errors)) {
                Yii::$app->session->setFlash('danger', Yii::t('backend', $responseData->errors[0]->message));
                $result['msg'] = $responseData->errors[0]->message;
                goto skip;
            } else {
                /* Order table status change */
                $modelOrder = Order::findOne(['order_key' => Com::session('__order_id')]);
                $modelOrder->order_status = $modelOrder::ORDER_STATUS_ONTHEWAY;
                $modelOrder->save();

                /* save tracking */
                Order::orderStatusSave($modelOrder->order_key, $modelOrder->order_status);

                /* Changed in driver app */
                $responseData = Com::getJsonData('PUT', Configuration::get(Configuration::DELIVERY_BOY_ACCESS_URL) . "order/" . $modelOrder->order_key . "/status/" . $modelOrder->order_status . '?company_id=' . Configuration::get(Configuration::COMPANY_KEY), []);


                //echo '<pre>'; print_r($responseData); echo '</pre>';exit();
                Yii::$app->session->setFlash('success', Yii::t('backend', "Order is assigned to delivery boy"));
            }
            Com::unsetSession('__order_id');

            $result['status'] = STATUS_SUCCESS;

            skip:
            echo Json::encode($result);
            //return $this->redirect(['/order/index']);exit();
        } else {
            Yii::$app->session->setFlash('danger', Yii::t('backend', "Order not assigned to delivery boy!"));
            return $this->redirect(['/order/index']);
            exit();
        }
    }

    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     * @author Senthil T <senthilkumar.t@technoduce.com>
     *
     * 
     */
    public function actionGetDriveryboyDetails() {
        $resultData = $this->getDriver(Yii::$app->request->post('key'));
        $response = ['status' => 404, 'driverboy_details' => '<p>' . Yii::t('backend', 'Drivery boy not found') . '</p>'];
        if (count($resultData) > 0) {
            $deliveryboy_details = Yii::$app->controller->renderPartial('driver-details', ['resultData' => $resultData]);
            $driveryboy_key = Yii::$app->request->post('key');

            $response = ['status' => 200, 'driveryboy_key' => $driveryboy_key, 'deliveryboy_details' => $deliveryboy_details];
        }
        echo json_encode($response);
    }

    /**
     *
     * @throws \yii\base\InvalidParamException
     * @throws \yii\base\Exception
     * @author Senthil T <senthilkumar.t@technoduce.com>
     *
     * @Title("List/View Status Update")
     */
    public function actionChangeStatus() {
        $params = ['id', 'status'];
        $post = Yii::$app->getRequest()->post();
        $result = ['status' => STATUS_FAIL, 'msg' => ''];
        foreach ($params as $param) {
            if (!array_key_exists($param, $post)) {
                $result['msg'] = Yii::t('backend', 'Required param missing');
                goto skip;
            }
        }
        
        $postArray = array('driver_key' => $post['id'], 'status' => $post['status']);
        if (strtolower($post['status']) == 'true') {
            $status = DeliveryBoy::DELIVERY_ACTIVE;
        } else {
            $status = DeliveryBoy::DELIVERY_DEACTIVE;
        }
        $responseData = Com::getJsonData('PUT', Configuration::get(Configuration::DELIVERY_BOY_ACCESS_URL) . "driver/" . $post['id'] . "/status/" . $status.'?company_id='.Configuration::get(Configuration::COMPANY_KEY), $postArray);

        if($responseData != null && $responseData->status == 200){
            $result['msg'] = ((int) $status === DeliveryBoy::DELIVERY_ACTIVE) ? Yii::t('backend', 'Delivery boy activated successfully') : Yii::t('backend', 'Delivery boy deactivated successfully');
            $result['status'] = STATUS_SUCCESS;
        }

        skip:
        echo Json::encode($result);
    }
    
    
    public function actionApproveStatus() {
        $params = ['id'];
        $post = Yii::$app->getRequest()->post();
        $result = ['status' => STATUS_FAIL, 'msg' => ''];
        foreach ($params as $param) {
            if (!array_key_exists($param, $post)) {
                $result['msg'] = Yii::t('backend', 'Required param missing');
                goto skip;
            }
        }
        // == DeliveryBoy::DELIVERY_BOY_APPROVED

        if (strtolower($post['status']) == 'true') {
            $status = DeliveryBoy::DELIVERY_BOY_APPROVED;
        } else {
            $status = DeliveryBoy::DELIVERY_BOY_DISAPPROVED;
        }

        $responseData =  Com::getJsonData('POST', Configuration::get(Configuration::DELIVERY_BOY_ACCESS_URL) .'driver/approve/'.$post['id'].'?company_id='. Configuration::get(Configuration::COMPANY_KEY));
                
        if($responseData != null && $responseData->status == 200){
            $result['msg'] = ((int) $status === DeliveryBoy::DELIVERY_BOY_APPROVED) ? Yii::t('backend', 'Delivery boy approved successfully') : Yii::t('backend', 'Delivery boy disapproved successfully');
            $result['status'] = STATUS_SUCCESS;
        }

        skip:
        echo Json::encode($result);
    }

    /**
     * Get Driver details from api
     * @param  $id [driver key]
     * @return array [Driver Details]
     * @author Senthil T <senthilkumar.t@technoduce.com>
     */
    public function getDriver($id = '') {
        $responseData = Com::getJsonData('GET', Configuration::get(Configuration::DELIVERY_BOY_ACCESS_URL) . "driver/" . $id . "?company_id=" . Configuration::get(Configuration::COMPANY_KEY));
        
        if(YII_DEBUG == true) {
            echo "<pre>"; print_r($responseData); exit;
        }
        
        $resultData = [];
        if (isset($responseData->data)) {
            $resultData = [
                'name' => isset($responseData->data->name) ? $responseData->data->name : '',
                'vendor_key' => isset($responseData->data->vendor_key) ? $responseData->data->vendor_key : '',
                'status' => isset($responseData->data->status) ? $responseData->data->status : '',
                'image' => isset($responseData->data->image) ? $responseData->data->image : '',
                'gender' => isset($responseData->data->gender) ? $responseData->data->gender : '',
                'device_type' => isset($responseData->data->device_type) ? $responseData->data->device_type : '',
                'dob' => isset($responseData->data->dob) ? (($responseData->data->dob != null ) ? date('Y-m-d', strtotime($responseData->data->dob)) : '') : '',
                'identity_number' => isset($responseData->data->identity_number) ? $responseData->data->identity_number : '',
                'license_number' => isset($responseData->data->license_number) ? $responseData->data->license_number : '',
                'license_expiry_date' => isset($responseData->data->license_expiry_date) ? (($responseData->data->license_expiry_date != null ) ? date('Y-m-d', strtotime($responseData->data->license_expiry_date)) : '') : '',
                'email' => isset($responseData->data->email) ? $responseData->data->email : '',
                'phone_number' => isset($responseData->data->phone_number) ? $responseData->data->phone_number : '',
                'country' => isset($responseData->data->country) ? $responseData->data->country : '',
                'city' => isset($responseData->data->city) ? $responseData->data->city : '',
                'address' => isset($responseData->data->address) ? $responseData->data->address : '',
                'account_number' => isset($responseData->data->account_number)? $responseData->data->account_number: '',
                'bank_name' => isset($responseData->data->bank_name)? $responseData->data->bank_name: '',
                'vehicle_number' =>isset($responseData->data->vehicle_number)? $responseData->data->vehicle_number: '',
                'bank_branch_code' => isset($responseData->data->branch_bank_code)? $responseData->data->branch_bank_code: '',
                'swift_code' => isset($responseData->data->swift_code)? $responseData->data->swift_code: '',
                'branch_name' => isset($responseData->data->branch_name)? $responseData->data->branch_name: '',
                'stripe_account_id' => isset($responseData->data->stripe_account_id)? $responseData->data->stripe_account_id: '',
            ];
        }
        return $resultData;
    }

    /**
     * Get JSON Data
     * @param  string $type      [POST, GET, PUT]
     * @param  string $url       [Run URL]
     * @param  array  $postArray [POST Array]
     * @return JSON              [JSON Values]
     * @author Senthil T <senthilkumar.t@technoduce.com>
     */
    public function getJsonData($type = 'GET', $url = '', $postArray = array()) {
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => $type,
            CURLOPT_POSTFIELDS => $postArray,
            CURLOPT_HTTPHEADER => array("cache-control: no-cache"),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);

        return json_decode($response);
    }
    
    /**
     * 
     * @param type $id
     */
    public function actionDelete($id) 
    {
        if ($id != '') {
            $responseData = Com::getJsonData('DELETE', Configuration::get(Configuration::DELIVERY_BOY_ACCESS_URL) . 'driver/delete/' . $id . '?company_id=' . Configuration::get(Configuration::COMPANY_KEY));
            $message = $responseData->message;
            Com::successFlash($message);
        }
                    
        return $this->redirect(['delivery-boy/index']);
    }

}
