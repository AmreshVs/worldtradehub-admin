<?php

namespace api\components;

use Throwable;
use yii\web\HttpException;

/**
 * Class ApiException
 * @package api\components
 *
 * @author A Vijay <vijay.a@tehnoduce.com>
 */
class ApiException extends HttpException
{
    /**
     * ApiException constructor.
     * @param string $message
     * @param int $code
     * @param \Throwable|null $previous
     * @throws \yii\base\InvalidParamException
     */
    public function __construct($message = '', $code = 0, Throwable $previous = null)
    {
        parent::__construct($code, $message, $previous);
    }
}