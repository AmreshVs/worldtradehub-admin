<?php

use backend\components\CActiveForm;
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $model /backend/models/Configuration */
/* @var $this yii/web/view */

$form = CActiveForm::begin(['action' => ['save', 'redirect' => 'loyality-point']])->setModel($model);
$this->title = yii::t('backend','Loyality Point');
?>
<div class="row">
    <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class ="card">
                <div class="card-body">
                    <h4 class="card-title"><?= $this->title; ?></h4>
                    <hr>
                    <div class="row p-lg-2">
                        <div class="col-md-12">
                            <?= $form->field($model, $model::LOYALTY_REDEMPTION_AMOUNT)->textInput(); ?>
                        </div>
                        <div class="col-md-12">
                            <?= $form->field($model, $model::LOYALTY_TARGET_POINT)->textInput(); ?>
                        </div>
                    </div>
                    <div class ="col-md-4">
                        <?= $form->field($model, $model::LOYALITY_STATUS)->radioList(array($model::ACTIVE=>'Yes',$model::INACTIVE=>'No')); ?>
                    </div>
                    <div class="col-md-12 text-center">
                        <?= Html::submitButton(yii::t('backend','Save'), ['class' => 'btn btn-success']) ?>            
                    </div>
                    <?php CActiveForm::end(); ?> 
                </div>
            </div> 
        </div>
</div>
 