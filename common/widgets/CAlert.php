<?php

namespace common\widgets;

use Yii;
use yii\base\Widget;

/**
 * Class CAlert
 * @package common\widgets
 *
 * @author A Vijay<vijay.a@technoduce.com>
 */
class CAlert extends Widget
{

    /**
     *
     */
    public function init()
    {
        parent::init();

        $session = Yii::$app->session;
        $flashes = $session->getAllFlashes();

        $flashJs = [];
        
        foreach ($flashes as $type => $data) {
            $flashJs[] = sprintf("Core.%s('%s');", $type, $data);
            $session->removeFlash($type);
        }
        
        if (count($flashJs) > 0) {
            echo sprintf('<script>runOnLoad(function(){%s});</script>', implode('', $flashJs));
        }
    }
}