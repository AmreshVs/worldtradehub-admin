<?php

namespace common\helpers;

use Yii;
use yii\helpers\Url;

/**
 * Class IPay88Helper
 * @package common\helpers
 *
 * @author N Manojkumar<manojkumar.n@.com>
 */

class IPay88Helper {

    private static $instance;
    /**
     * @var string
     */
    private $order_key;
    /**
     * @var
     */
    private $merchantCode = 'M05438';
    /**
     * @var
     */
    private $merchantKey = 'ViqEtnzLd5';
    /**
     * @var
     */
    private $transactionNumber;
    /**
     * @var
     */
    private $amount;
    /**
     * @var
     */
    private $currency = 'MYR';
    /**
     * @var
     */
    private $productDesc = 'Tabaogo Food Order';
    /**
     * @var
     */
    private $customerName;
    /**
     * @var
     */
    private $customerEmail;
    /**
     * @var
     */
    private $customerMobileNumber;
    /**
     * @var
     */
    private $signature;
    /**
     * @var
     */
    private $returnUrl;
    /**
     * @var
     */
    private $responseUrl;
    /**
     * @var
     */
    private $paymentData;
    /**
     * @var
     */
    private $url = 'https://www.mobile88.com/epayment/entry.asp';
    

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
     * @param mixed $order_key
     * @return $this
     */
    public function setTransactionNumber($transactionNumber)
    {
        $this->transactionNumber = $transactionNumber;

        return $this;
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
     * @param mixed $customer_email
     * @return $this
     */
    public function setCustomerEmail($customerEmail)
    {
        $this->customerEmail = $customerEmail;

        return $this;
    }

    /**
     * @param mixed $customer_contact_number
     * @return $this
     */
    public function setCustomerMobileNumber($customerMobileNumber)
    {
        $this->customerMobileNumber = $customerMobileNumber;

        return $this;
    }

    /**
     * @param mixed $signature
     * @return $this
     */
    public function setSignature()
    {
        $data = $this->merchantKey.$this->merchantCode.$this->transactionNumber.round($this->amount).$this->currency;
        
    	$signature = sha1($data);
		
		$source = '';
		for ( $i=0; $i<strlen($signature); $i=$i+2 ) {
		  $source .= chr(hexdec(substr($signature,$i,2)));
		}
    	
    	$signature = base64_encode($source);
    	$this->signature = $signature;
		return $this;
    }

    /**
     * @param mixed $return_url
     * @return $this
     * type : 1 - Order, 2 - Promotion
     */
    public function setReturnUrl($type = 1)
    {
        $this->returnUrl = Yii::$app->request->hostInfo.'/payment/response?type='.$type;

        return $this;
    }

    /**
     * @param mixed $response_url
     * @return $this
     */
    public function setResponseUrl()
    {
        $this->responseUrl = Yii::$app->request->hostInfo.'/payment/paymentResult';

        return $this;
    }
    
    /**
     * @param mixed $data
     * @return $this
     */
    public function setData()
    {
        $paymentData = [
            'MerchantCode' => $this->merchantCode,
            'PaymentId' => '',
            'RefNo' => $this->transactionNumber,
            'Amount' => $this->amount,
            'Currency' => $this->currency,
            'ProdDesc' => $this->productDesc,
            'UserName' => $this->customerName,
            'UserEmail' => $this->customerEmail,
            'UserContact' => $this->customerMobileNumber,
            'Remark' => '',
            'Lang' => '',
            'Signature' => $this->signature,
            'ResponseURL' => $this->returnUrl,
            'BackendURL' => $this->responseUrl,
            'paymentUrl' => $this->url
        ];

        $this->paymentData = $paymentData;
        return $this;
    }

    public function getPaymentGatewayParams()
    {
        return $this->paymentData;
    }
    
    /**
     * 
     * @param type $order_key
     * @return $this
     */
    public function setOrderKey($order_key)
    {
        $this->order_key = $order_key;
        return $this;
    }
    
}