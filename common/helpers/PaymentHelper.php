<?php

namespace common\helpers;

use backend\models\Configuration;
use Omnipay\Omnipay;
use Omnipay\Stripe\Message\Transfers;
use common\helpers\Com;
use common\models\Order;
use common\models\Vendor;
use yii;
class PaymentHelper
{
    public function stripePayment($values = [])
    {
        $result = ['status' => 422 , 'msg' => 'Bad request'];
        $params = ['amount',  'stripeToken'];

        foreach ($params as $param) {
            if (!array_key_exists($param, $values)) {
                return $result;
            }
        }
        $gateway = Omnipay::create('Stripe');
        $gateway->setApiKey(Configuration::get(Configuration::STRIPE_SECRET_KEY));
        try{
            $token = $_POST['stripeToken'];
            $result['response'] = $gateway->purchase([
                'amount' =>number_format((double)$values['amount'],2),
                'currency' => Configuration::get(Configuration::STRIPE_CURRENCY),
                'token' => $values['stripeToken'],
            ])->send();

            $result['paymentResponse'] = $result['response']->getData();
            $stripe_respose_filter = $result['paymentResponse']['source'];
            $result['msg'] = 'Success';
            if ($stripe_respose_filter['address_zip_check'] == "fail") {
                 $result['msg']="zip_check_invalid";
            } else if ($stripe_respose_filter['address_line1_check'] == "fail") {
                 $result['msg']="address_check_invalid";
            } else if ($stripe_respose_filter['cvc_check'] == "fail") {
                 $result['msg']="cvc_check_invalid";
            }
            // Payment has succeeded, no exceptions were thrown or otherwise caught
            if($result['msg'] == 'Success'){
                $result['status'] = 200;
            }
        } catch(\Exception $e) {
            $result['msg'] = 'Declined';
        }

        return   $result;
       
    }
    public function stripTransfer($order_id)
    {
        $order = Order::findOne(['order_key' => $order_id]);
        $vendor= Vendor::findOne($order->vendor_id);

        $deliveryCommision = $order->delivery_boy_tip+$order->delivery_fee;
        // print_r($vendor);die;

        // print_r($order);die;
        $gateway = Omnipay::create('Stripe');
        $gateway->setApiKey(Configuration::get(Configuration::STRIPE_SECRET_KEY));

        // $transaction = $gateway->transfer(array(
        //     'amount'        => $order->vendor_profit,
        //     'currency'      => Configuration::get(Configuration::STRIPE_CURRENCY),
        //     'transferGroup' => $order->order_number,
        //     'destination'   => 'sk_test_7zxmbL9zYglqkl5BSlnWRaHW',
        // ))->send();

        // $vendor->

        $transaction = $gateway->transfer(array(
            'amount'        => $deliveryCommision,
            'currency'      => Configuration::get(Configuration::STRIPE_CURRENCY),
            'transferGroup' => $order->order_number,
            'destination'   => 'cus_DdNEB1RoC1uzHN',
        ))->send();


       print_r( $transaction);
      
        die('ee');
    }
}