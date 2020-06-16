<?php

namespace api\components;

use yii\base\Module;

/**
 * Class CModule
 * @package api\components
 *
 * @author yii2
 */
class CModule extends Module
{

    /**
     *
     */
    public function init()
    {
        \Yii::$app->getUser()->enableSession = false;
        \Yii::$app->getUser()->loginUrl = null;

        parent::init();
    }
}