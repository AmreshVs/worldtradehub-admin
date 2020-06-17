<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use backend\models\Configuration;
use backend\models\AdminUser;
use common\helpers\Com;
use yii\helpers\Html;

AppAsset::register($this);

$class = '';

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <?php $this->head() ?>
    </head>

    <body class="skin-default card-no-border <?= $class;  ?>">
        <?php $this->beginBody() ?>
        <div class="preloader">
            <div class="loader">
                <div class="loader__figure"></div>
                <p class="loader__label"><?= Configuration::get(Configuration::APP_NAME) ?></p>
            </div>
        </div>
        <section id="wrapper">
            <div class="login-register" style="">
                <div class="login-box card">
                <div class="login-header">
                    <img class="login-logo" src="<?=Configuration::get(Configuration::APP_LOGO_PATH)?>">
                </div>
                    <div class="card-body">
                
                        <?= $content; ?>
                    </div>
                </div>
            </div>
        </section>
        <?php $this->endBody() ?>
    </body>
</html>
<?php $this->endPage() ?>

