<?php

namespace common\assets;

use Yii;
use yii\web\AssetBundle;
use yii\web\View;
use yii\web\YiiAsset;

/**
 * Common Asset bundle
 *
 * Class CoreAsset
 * @package common\assets
 *
 * @author yii2
 */
class CoreAsset extends AssetBundle
{
    /**
     * @var string
     */
    public $sourcePath = '@common/web/assets';

    /**
     * @var array
     */
    public $js = [
        ['js/runOnLoad.js', 'position' => View::POS_HEAD],

        'js/core.js',
    ];


    /**
     * @var array
     */
    public $depends = [
        YiiAsset::class
    ];

    /**
     *
     */
    public function init()
    {
        parent::init();

        /**
         * Do not change the following line
         * Following code used to execute all the registered script
         * on runOnLoad script
         * @author yii2
         */
        Yii::$app->getView()->registerJs('exeOnLoad.apply(arguments);');
    }
}
