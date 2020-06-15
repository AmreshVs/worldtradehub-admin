<?php

use backend\components\CActiveForm;
use yii\helpers\Html;

/* @var $this \yii\web\view */
/* @var $model backend\models\AdminUser */

$form = CActiveForm::begin()->setModel($model);
?>

<div class="card-body">
    <h4 class="card-title"><?= $this->title; ?></h4>
    <hr>
    <div class="row p-lg-2">
        <div class="col-md-6">
            <?= $form->field($model, 'role_id')->dropDownList($model->getRole(), ['prompt' => yii::t('backend','Select Role'), 'class' => 'select2 form-control']) ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'first_name')->textInput(); ?>
        </div>
    </div>
    <div class="row p-lg-2">
        <div class="col-md-6">
            <?= $form->field($model, 'last_name')->textInput(); ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'user_name')->textInput(); ?>
        </div>
    </div>
    <div class="row p-lg-2">
        <div class="col-md-6">
            <?= $form->field($model, 'user_type')->dropDownList($model->getUserType(), ['prompt' => yii::t('backend','Select Role'), 'class' => 'select2 form-control']); ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'email_address')->textInput(); ?>
        </div>
    </div>
    <?php if  ($model->getIsNewRecord()) : ?>
    <div class="row p-lg-2">
            <div class="col-md-6">
                <?= $form->field($model, 'password')->passwordInput(); ?>
            </div>
            <div class="col-md-6">
                <?= $form->field($model, 'confirm_password')->passwordInput(); ?>
            </div>
    </div>
    <div class="col-md-6">
        <?= $form->field($model, 'secret_password')->passwordInput(); ?>
    </div><?php endif ?>
    <div class ="col-md-6">
        <?= $form->field($model, 'status')->radioList([$model::ACTIVE => 'Active', $model::INACTIVE => 'Inactive']); ?>
    </div>
    <div class= "col-md-12 text-center">
        <?= Html::submitButton($model->getIsNewRecord()? yii::t('backend','Create'): yii::t('backend','Update'), ['class' => 'btn btn-success']) ?>
        <?= Html::a(yii::t('backend','Cancel'), ['/'], ['class' => 'btn btn-secondary']); ?>
    </div>
</div>
<?php CActiveForm::end(); ?>
<script type ='text/javascript'>
runOnLoad (function() {
    $('.select2').select2();
})
</script>


