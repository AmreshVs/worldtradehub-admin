<?php

namespace backend\controllers;

use common\components\CController;
use yii\helpers\ArrayHelper;
use backend\models\Ticket;
use backend\models\User;
use Yii;
use common\helpers\PaymentHelper;


/**
 * Class PaymentController
 * @package backend\controllers
 */

class PaymentController extends CController
{    
    /**
    * LoginController constructor.
    * @param string $id
    * @param string $module
    * @param array $config
    */
    public function __construct($id, $module, $config = array()) {
        $this->layout = 'payment';

        parent::__construct($id, $module, $config);
    }

    public function beforeAction($action)
    {

       if (ArrayHelper::isIn($action->getUniqueId(), ['payment/payment-success'])) {
           
             $this->enableCsrfValidation = false;
      
       }
       return parent::beforeAction($action);
    }
    /**
     * @throws \Exception
     * @throws \Throwable
     *
     * @return User
     */
    public function actionIndex($ticket_key)
    {
        $model = Ticket::find()->where(['ticket_key' => $ticket_key])->asArray()->one();
        if($model === null) {
            return $this->home();
        }

        $userModel = User::find()->where(['user_id' => $model['user_id']])->one();

        return $this->render('index',
            [
                'model' => $model,
                'modelUser'  => $userModel
            ]);
    }

     /**
     * 
     * @return type
     */
    public function actionPaymentSuccess()
    {
        $request = Yii::$app->getRequest()->post();

        $razorpayHelper = PaymentHelper::getInstance();
        $payDetail = $razorpayHelper->getPayDetail($request['razorpay_payment_id']);
      
        if ($payDetail->status == "authorized") {
            $model = Ticket::find()->where(['ticket_key' => $request['order_key']])->one();
            $model->ticket_status = 1;
            $model->payment_response = json_encode($payDetail); 
            $model->save(false);

            return $this->render('success', [
                'id' => $payDetail->id,
                'amount' => $payDetail->amount,
                'event_key' => 'testkey',
                'event_name' => 'Test Event',
            ]);   
        }
        

        
    }
}