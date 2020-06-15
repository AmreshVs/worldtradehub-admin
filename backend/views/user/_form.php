<?php

use backend\components\CActiveForm;
use yii\helpers\Html;

/* @var $this \yii\web\View  */
/* @var $model \backend\models\User */
$form = CActiveForm::begin()->setModel($model);
?>

<div class="card-body">
    <h4 class="card-title"><?= $this->title; ?></h4>
    <hr>
    <div class="row p-lg-2">
        <div class="col-md-6">
            <?= $form->field($model, 'first_name')->textInput(); ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'last_name')->textInput(); ?>
        </div>
    </div>
    <div class="row p-lg-2">
        <div class="col-md-6">
            <?= $form->field($model, 'email')->textInput(); ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'mobile_number')->textInput(); ?>
        </div> 
    </div>
    <div class="row p-lg-2">
        <div class ="col-md-6">
            <?= $form->field($model, 'status')->radioList(array($model::ACTIVE=>yii::t('backend','Active'),$model::INACTIVE=>yii::t('backend','Inactive'))); ?>
        </div>
    </div>
    <div class="col-md-12 text-center">
        <?= Html::submitButton($model->getIsNewRecord() ? yii::t('backend','Create') :  yii::t('backend','Update'),
            ['class' => 'btn btn-success']) ?>
        <?= Html::a(yii::t('backend','Cancel'), ['index'], ['class' => 'btn btn-secondary']); ?>
    </div>
</div>
<?php CActiveForm::end(); ?>







