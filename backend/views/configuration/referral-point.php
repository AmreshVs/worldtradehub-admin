<?php

use backend\components\CActiveForm;
use yii\helpers\Html;

/*@var $this \yii\web\view */                  
/*@var $model \backend\models\configuration */ 

$form = CActiveForm::begin(['action' => ['save', 'redirect' => 'referral-point']])->setModel($model);

$this->title = yii::t('backend','Referral Points Management');
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
                        <?= $form->field($model, $model::LEVEL1_REFERRAL_POINTS)->textInput(); ?>
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::LEVEL2_REFERRAL_POINTS)->textInput(); ?>
                    </div>
                </div>
                <div class="col-md-6">
                    <?= $form->field($model, $model::LEVEL3_REFERRAL_POINTS)->textInput(); ?>        
                </div>
                <div class="col-md-12 text-center">
                    <?= Html::submitButton(yii::t('backend','Save'), ['class' => 'btn btn-success']) ?>            
                </div>
                <?php CActiveForm::end(); ?>
            </div>
        </div> 
    </div>
</div>