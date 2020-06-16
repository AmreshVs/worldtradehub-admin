<?php

use backend\components\CActiveForm;
use yii\helpers\Html;

/* @var $model backend\models\Configuration */
/* @var $this yii\web\view */

$form = CActiveForm::begin(['action' => ['save', 'redirect' => 'delivery-charge-setting']])->setModel($model);
$this->title = yii::t('backend', 'Delivery Charge Settings');
?>
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?></h4>
                <hr>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::DELIVERY_CHARGE_TYPE)->dropDownList([1 => 'Kilometer', 2 => 'Mile'], ['prompt' => 'Select Type', 'class' => 'select2 form-control']); ?>
                    </div>       
                    <div class="col-md-6">
                        <?= $form->field($model, $model::DELIVERY_CHARGE_RADIUS)->textInput(); ?>
                    </div>
                </div>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::DELIVERY_CHARGE_BASE_KM)->textInput(); ?>
                    </div>       
                    <div class="col-md-6">
                        <?= $form->field($model, $model::DELIVERY_CHARGE_BASE_CHARGE)->textInput(); ?>
                    </div>
                </div>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::DELIVERY_CHARGE_ADD_KM)->textInput(); ?>
                    </div>       
                    <div class="col-md-6">
                        <?= $form->field($model, $model::DELIVERY_CHARGE_ADD_CHARGE)->textInput(); ?>
                    </div>
                </div>
                <div class="col-md-12 text-center">
                    <?= Html::submitButton(yii::t('backend','Save'), ['class' => 'btn btn-success']) ?>  
                </div>
                <?php CActiveForm::end(); ?>
            </div>
        </div> 
    </div>
</div>
<script>
    runOnLoad (function () {
        $(".select2").select2();
    });
</script>