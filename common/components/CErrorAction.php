<?php

namespace common\components;

use Yii;
use yii\web\ErrorAction;

/**
 * This class is used to render an AccessDeny page while the thrown errors status code is 403
 *
 * Class CErrorAction
 * @package backend\components
 *
 * @author yii2
 */
class CErrorAction extends ErrorAction
{
    /**
     * This method will render access deny page with appropriate layout if
     * the errors status code 403
     *
     * @return string
     */
    protected function renderHtmlResponse()
    {
        Yii::$app->controller->layout = '404';
        if ((int)$this->exception->statusCode === 403) {
            Yii::$app->controller->layout = 'deny';
        }

        return parent::renderHtmlResponse();
    }
}