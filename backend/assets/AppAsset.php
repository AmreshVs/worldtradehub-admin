<?php

namespace backend\assets;

use common\assets\CoreAsset;
use yii\web\AssetBundle;
use Yii;
use yii\helpers\ArrayHelper;

/**
 * Main backend application asset bundle.
 *
 * Class AppAsset
 * @package backend\assets
 */
class AppAsset extends AssetBundle
{
    /**
     * @var string
     */
    public $sourcePath = '@app/web/theme';

    /**
     * @var array
     */
    public $css = [
        /*[
            'images/favicon.png',
            'rel' => 'icon'
        ],*/
        'css/style.min.css',
        'https://fonts.googleapis.com/css?family=Poppins:400,500,600',
        'https://fonts.googleapis.com/css?family=Roboto:300,400,500,700',
        'lib/bootstrap-switch/bootstrap-switch.min.css',
        'lib/toast-master/css/jquery.toast.css',

        'lib/select2/dist/css/select2.min.css',
        'lib/bootstrap-select/bootstrap-select.min.css',

        'lib/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css',
        'lib/clockpicker/dist/jquery-clockpicker.min.css',
        'lib/bootstrap-datepicker/bootstrap-datepicker.min.css',

        'lib/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css',

        'lib/login-page/login-register-lock.css',

        'lib/sweetalert/sweetalert.css',

        'lib/stylish-tooltip/stylish-tooltip.css',

        'css/style.custom.css',

        'css/error-pages.css',

        'lib/morrisjs/morris.css',
        'css/dashboard2.css',

        'lib/html5-editor/bootstrap-wysihtml5.css',

        'lib/tab-page/tab-page.css',

        'lib/jstree/themes/default/style.min.css',
        'css/iziToast.min.css',

        'scss/style-override.css',
        'css/summernote-bs4.css',

    ];


    /**
     * @var array
     */
    public $js = [
        'js/jquery-ui.js',

        'lib/popper/popper.min.js',
        'lib/bootstrap/dist/js/bootstrap.min.js',

        'js/perfect-scrollbar.jquery.min.js',
        'js/waves.js',

        'lib/sticky-kit-master/dist/sticky-kit.min.js',

        'js/custom.min.js',

        'lib/bootstrap-switch/bootstrap-switch.min.js',

        'lib/toast-master/js/jquery.toast.js',

        'lib/select2/dist/js/select2.full.min.js',

        'lib/bootstrap-select/bootstrap-select.min.js',

        'lib/moment/moment.js',
        'lib/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js',
        'lib/clockpicker/dist/jquery-clockpicker.min.js',
        'lib/bootstrap-datepicker/bootstrap-datepicker.min.js',

        'lib/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js',

        'js/sidebarmenu.js',

        'js/customdialog.js',
        'lib/sweetalert/sweetalert.min.js',
        'lib/sweetalert/jquery.sweet-alert.custom.js',

        'lib/raphael/raphael-min.js',
        'lib/sparkline/jquery.sparkline.min.js',
        'lib/morrisjs/morris.js',

        'lib/html5-editor/wysihtml5-0.3.0.js',
        'lib/html5-editor/bootstrap-wysihtml5.js',

        'js/socket.io.js',
        'lib/jstree/jstree.min.js',
        'js/iziToast.min.js',
           'js/summernote-bs4.js',
        'js/summernote-clear.js',

    ];

    /**
     * @var array
     */
    public $depends = [
        CoreAsset::class
    ];

    public function init()
    {
        //echo "Test :".Yii::$app->language; die();
        parent::init();
        if (Yii::$app->language == 'ar') {
            $scss      = ['css/style_rtl.css'];
            $this->css = ArrayHelper::merge($this->css, $scss);
        }
    }
}