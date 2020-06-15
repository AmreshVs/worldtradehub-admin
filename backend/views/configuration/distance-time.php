<?php

use backend\components\CActiveForm;
use yii\helpers\Html;

/* @var $model /backend/models/Configuration */
/* @var $this yii/web/view */

$form = CActiveForm::begin(['action' => ['save', 'redirect' => 'distance-time']])->setModel($model);
$this->title = Yii::t('backend', 'Distance Time');
?>

<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?></h4>
                <hr>
                <div class="col-md-12">
                    <?= $form->field($model, $model::DISTANCE_TIME)->textInput(); ?>
                </div>
                <div class="col-md-12 text-center">
                    <?= Html::submitButton(yii::t('backend','Save'), ['class' => 'btn btn-success']) ?>  
                </div>
                <?php CActiveForm::end(); ?>
            </div>
        </div> 
    </div>
</div>

