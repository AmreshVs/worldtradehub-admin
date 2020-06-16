<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\helpers\Url;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <?php $this->head() ?>
    </head>
    <body class="skin-default-dark fixed-layout">
        <?php $this->beginBody() ?>
            <section id="wrapper" class="error-page">
                <div class="error-box" style="background-image:url(/backend/web/theme/images/background/error-bg.jpg);">
                    <div class="error-body text-center">
                        <h1>403</h1>
                        <h3 class="text-uppercase">FORBIDDEN ERROR !</h3>
                        <p class="text-muted m-t-30 m-b-30"><?= Yii::t('backend', "YOU DON'T HAVE PERMISSION TO ACCESS ON THIS SERVER"); ?></p>
                        <?= Html::a('Back to Home', Url::to(['dashboard/']), ['class' => 'btn btn-info btn-rounded waves-effect waves-light m-b-40']) ?>
                    </div>
                </div>
            </section>
        <?php $this->endBody() ?>
    </body>
</html>
<?php $this->endPage() ?>
