<?php

namespace backend\controllers;


use common\components\CErrorAction;
use yii\web\Controller;
use common\components\CController;

/**
 * Class SiteController
 * @package backend\controllers
 */
class SiteController extends CController
{
    public function actions()
    {
        return [
            'error' => CErrorAction::class
        ];
    }
}