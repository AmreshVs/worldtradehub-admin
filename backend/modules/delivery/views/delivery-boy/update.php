<?php
use yii\helpers\Url;
use yii\widgets\Breadcrumbs;

/* @var $this \yii\web\View */
/* @var $model \backend\models\DeliveryBoy */

$this->title = Yii::t('backend', 'Update');
?>
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class ="card">
                <?= $this->render('_form', ['model' => $model, 'id' => $id]); ?>
        </div>
    </div>
</div>