<?php

/* @var $this \yii\web\View */

/* @var $content string */

use backend\assets\AppAsset;
use backend\models\Configuration;
use backend\models\AdminUser;
use yii\helpers\Html;
use yii\widgets\Breadcrumbs;

AppAsset::register($this);

$class = '';
if(AdminUser::isVendor()) {
    $class = "vendor-panel";
}
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="<?=Configuration::get(Configuration::FAV_LOGO_PATH)?>" type="image/x-icon">

    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body class="skin-default-dark fixed-layout lock-nav <?php echo $class; ?>">

<?php $this->beginBody() ?>
<div class="preloader">
    <div class="loader">
        <div class="loader__figure"></div>
        <p class="loader__label"><?= Configuration::get(Configuration::APP_NAME) ?></p>
    </div>
</div>
<div id="main-wrapper">
    <?php $this->beginContent('@app/views/layouts/_header.php'); ?>
    <?php $this->endContent(); ?>

    <?php $this->beginContent('@app/views/layouts/_sideBar.php'); ?>
    <?php $this->endContent(); ?>

    <div class="page-wrapper">
        <div class="container-fluid">
                <?php if(false): ?>
                    <div class="row col-md-7 my-lg-4">
                        <?= Breadcrumbs::widget([
                            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
                            'homeLink' => ['label' => Yii::t('common', 'Dashboard /'), 'url' => ['/'] ],
                        ]); ?>
                    </div>
                <?php endif; ?>
            <div class="row">
                <div class="col-lg-12">
                    <?= $content ?>
                </div>
            </div>
        </div>
    </div>
    <?php $this->beginContent('@app/views/layouts/_footer.php'); ?>
    <?php $this->endContent(); ?>
</div>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>


