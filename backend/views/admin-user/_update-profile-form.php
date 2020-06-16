<?php

use backend\components\CActiveForm;
use yii\helpers\Html;

/* @var $this \yii\web\view */
/* @var $model backend\models\AdminUser */

$this->title = yii::t('backend','Update Profile');
$form = CActiveForm::begin()->setModel($model);
?>
<div class="row">
    <div class ="col-md-2"></div>
    <div class="col-md-6">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?></h4>
                <hr>
                <div class="col-md-12">
                    <?= $form->field($model, 'user_name', ['options' => ['class' => 'form-group']])->textInput(['class' => 'form-control']); ?>
                </div>
                <div class="col-md-12">
                    <?= $form->field($model, 'user_type', ['options' => ['class' => 'form-group']])->dropDownList($model->getUserType(), ['class' => 'select2 form-control']); ?>
                </div>
                <div class="col-md-12">
                    <?= $form->field($model, 'email_address', ['options' => ['class' => 'form-group']])->textInput(['class' => 'form-control']); ?>
                </div>
                <div class= "row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <?= Html::submitButton( yii::('backend','Update'),['class' => 'btn btn-success']) ?>
                        <?= Html::a( yii::('backend','Cancel'), ['/'], ['class' => 'btn btn-secondary']); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php CActiveForm::end() ?>
<script type ='text/javascript'>
runOnLoad (function() {
    $('.select2').select2();
})
</script>


