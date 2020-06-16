<?php

namespace common\helpers;

use Yii;
use yii\helpers\Url;
use Razorpay\Api\Api;

/**
 * Class PaymentHelper
 * @package common\helpers
 *
 * @author 
 */
class PaymentHelper {
    
    private static $instance;
    /**
     * @var
     */
    private $url = 'https://api.razorpay.com/v1';
    /**
     * @var
     */
    private $amount;
    /**
     * @var
     */
    private $currency = 'INR';
    /**
     * @var
     */
    private $customerName;
    /**
     * @var
     */
    private $paymentId;
    
    
    /**
     * @return IPay88Helper
     * @throws \yii\base\InvalidConfigException
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * @param mixed $order_total
     * @return $this
     */
    public function setAmount($amount)
    {
        $this->amount = $amount;

        return $this;
    }
    
    /**
     * @param mixed $customer_name
     * @return $this
     */
    public function setCustomerName($customerName)
    {
        $this->customerName = $customerName;

        return $this;
    }

    /**
     * @param mixed $customer_name
     * @return $this
     */
    public function getPayDetail($paymentId)
    {
        $api = new Api('rzp_test_SJUiLCFql9rqkF', 'vTCjkFrgCV5Wq72HoGhHnW5S');
        $payment  = $api->payment->fetch($paymentId);
        return $payment;
    }
}
