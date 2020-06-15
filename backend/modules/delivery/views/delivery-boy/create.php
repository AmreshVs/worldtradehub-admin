<?php
use yii\helpers\Url;
use yii\widgets\Breadcrumbs;

/* @var $this \yii\web\View */
/* @var $model \backend\models\Delivery Boy */

$this->title = Yii::t('backend', 'Create');
?>
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class ="card">
            <?= $this->render('_form', ['model' => $model]); ?>
        </div>
    </div>
</div>
