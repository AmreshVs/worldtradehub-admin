<?php

use backend\components\CActiveForm;
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $model /backend/models/Configuration */
/* @var $this yii/web/view */

$form = CActiveForm::begin(['action' => ['save', 'redirect' => 'strip']])->setModel($model);
$this->title = yii::t('backend','Strip Configuration');
?>
<div class="row">
    <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class ="card">
                <div class="card-body">
                    <h4 class="card-title"><?= $this->title; ?></h4>
                     <!--<a title="click to send test sms" target="_blank" class="pull-right custom_link" href="<?= Url::to(['/webpush-notification/check-notification', 'key'=> 'Strip']) ?>"><?= Yii::t('backend' , 'Test')?></a><br>-->
                    <hr>
                    <div class="row p-lg-2">
                        <div class="col-md-6">
                            <?= $form->field($model, $model::STRIP_SECRET_KEY)->textInput(); ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($model, $model::STRIP_PUBLISHABLE_KEY)->textInput(); ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($model, $model::STRIP_CURRENCY)->textInput(); ?>
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
 