<?php

namespace frontend\assets;

use common\assets\CoreAsset;
use common\models\Configuration;
use frontend\models\Language;
use yii\web\AssetBundle;
use yii\web\View;
use Yii;
use yii\helpers\ArrayHelper;

/**
 * Main frontend application asset bundle.
 *
 * Class AppAsset
 * @package frontend\assets
 */
class AppAsset extends AssetBundle
{
    /**
     * @var string
     */
    public $sourcePath = '@frontend/web/theme';

    /**
     * @var array
     */
    public $css = [
        // [
        //     'images/favicon.png',
        //     'rel' => 'icon'
        // ],
        '//fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap',
        'css/jquery.toast.css',
        'css/owl.carousel.min.css',
        'css/bootstrap-select.min.css',
        'css/line-awesome.min.css',
        'css/style.css',
        'css/responsive.css',
        'css/magnific-popup.css'
    ];

    /**
     * @var array
     */
    public $js = [
        ['js/html5shiv.min.js', 'position' => View::POS_HEAD],

        'js/popper.min.js',
        'js/bootstrap.min.js',
        'js/iziToast.min.js',
        'js/intlTelInput.min.js',
        'js/datepicker.min.js',
        'js/lozad.min.js',
        'js/bootstrap-select.min.js',
        'js/owl.carousel.min.js',
        'js/jquery.magnific-popup.min.js',
        'js/custom.js'


    ];

    /**
     * @var array
     */
    public $depends = [
        CoreAsset::class
    ];

    /**
     *
     */
    public function init()
    {
        parent::init();
        $isRtl = Language::checkIsRtl(Yii::$app->language);

        if ($isRtl) {
            $scss = ['css/style-rtl.css'];
            $this->css = ArrayHelper::merge($this->css, $scss);
        }
    }
}