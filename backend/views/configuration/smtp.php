<?php

use backend\components\CActiveForm;
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $model \backend\models\Configuration */
/* @var $this yii\web\view */

$form = CActiveForm::begin(['action' => ['save', 'redirect' => 'smtp']])->setModel($model);

$this->title = yii::t('backend','SMTP');
?>

<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?></h4>
                <a title="click to send test email" target="_blank" class="pull-right custom_link" href="<?= Url::to(['/webpush-notification/check-notification', 'key'=> 'email']) ?>"><?= Yii::t('backend' , 'Test')?></a>
                <hr>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                            <?= $form->field($model, $model::SMTP_HOST)->textInput(); ?>
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::SMTP_ENCRYPTION)->dropDownList($model->getSMTPEncryptionTypeList(),['class' =>'select2 form-control']); ?>
                    </div>  
                </div>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::SMTP_PORT)->textInput(); ?>
                    </div>   
                    <div class="col-md-6">
                        <?= $form->field($model, $model::SMTP_USERNAME)->textInput(); ?>
                    </div>
                </div>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::SMTP_PASSWORD)->passwordInput(); ?>
                    </div>
                    <div class ="col-md-6">
                        <?= $form->field($model, $model::IS_SMTP_ENABLED)->radioList(array($model::ACTIVE=> Yii::t('backend', 'Yes'),$model::INACTIVE=> Yii::t('backend', 'No'))); ?>
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
<script type="text/javascript">
runOnLoad(function() {
    $('.select2').select2();
})
</script>