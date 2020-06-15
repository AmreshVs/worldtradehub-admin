<?php

namespace common\extensions\api\src;

use yii\base\BaseObject;

/**
 * Class ApiResponse
 * @package common\extensions\api\src
 *
 * @author yii2
 */
class ApiResponse extends BaseObject
{
    /**
     * @var integer
     */
    public $status;
    /**
     * @var array|string
     */
    public $data;
    /**
     * @var integer
     */
    public $time;
    /**
     * @var string
     */
    public $message;
    /**
     * @var array|string
     */
    public $errors;
    /**
     * @var array
     */
    public $system;

    /**
     * @return int
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * @return string
     */
    public function getMessage()
    {
        return $this->message;
    }

    /**
     * @return array|string
     */
    public function getData()
    {
        return $this->data;
    }

    public function isSuccess()
    {
        return (int)$this->status === 200;
    }
}