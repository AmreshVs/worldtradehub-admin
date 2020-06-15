<?php

use backend\components\CActiveForm;
use yii\helpers\Html;
use backend\models\Configuration;
use common\helpers\UploadHelper;

/*@var $this \yii\web\view */                  
/*@var $model \backend\models\configuration */ 
/*@var $model \backend\models\ConfigurationUploadForm */

$form = CActiveForm::begin(['action' => ['save', 'redirect' => 'app-config'], 'id' =>'app-config'])->setModel($model);

$this->title = yii::t('backend','Update Application Configuration');
?>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?> <span style="font-weight: bold; float: right;color:<?= Configuration::get(Configuration::APP_PRIMARY_COLOR); ?>;font-size:medium;">Current Time: <?php echo date('Y-M-d h:i a') ?></span></h4>
                <hr>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::APP_NAME)->textInput(); ?>
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::APP_DESCRIPTION)->textarea(); ?>        
                    </div>
                </div>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::META_KEYWORD)->textInput(); ?>        
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::META_DESCRIPTION)->textarea(); ?>        
                    </div>
                </div>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::APP_EMAIL)->textInput(); ?>        
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::APP_CONTACT_NO)->textInput(); ?>        
                    </div> 
                </div>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::CURRENCY_DECIMAL_PLACE)->textInput(['type' => 'number']); ?>
                    </div>
                    <div class="col-md-6">
                        <label><?=$model->getAttributeLabel($model::CURRENCY_SYMBOL_LEFT)?></label>
                        <?= $form->field($model, $model::CURRENCY_SYMBOL_LEFT)->switchInput(); ?>        
                    </div>
                </div>
                <div class="row">
                    <div class="m-l-15">
                        <?php
                            if (!empty(Configuration::get(Configuration::APP_LOGO_PATH))) {
                                $uploadHelper = UploadHelper::getInstance();
                                $url = Configuration::get(Configuration::APP_LOGO_PATH);
                                $url = \common\helpers\Com::checkExist($url);
                                echo Html::img($url,
                                    $options = ['alt' => 'App Logo Image', 'style' => 'width:100px;height:100px', 'class' => 'img-responsive img-thumbnail']);
                            }
                        ?>
                    </div>
                    <div class="col-md-4"></div>
                    <div class="m-l-64">
                        <?php
                            if (!empty(Configuration::get(Configuration::FAV_LOGO_PATH))) {
                                $uploadHelper = UploadHelper::getInstance();
                                $url = Configuration::get(Configuration::FAV_LOGO_PATH);
                                $url = \common\helpers\Com::checkExist($url);
                                echo Html::img($url,
                                    $options = ['alt' => 'Fav Logo Image', 'style' => 'width:100px;height:100px', 'class' => 'img-responsive img-thumbnail']);
                            }
                        ?>
                    </div>
                </div>
                
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($modelUploadForm, 'app_logo')->fileInput(['class' => 'form-control'])->label(Yii::t('backend', 'Site Logo')); ?>        
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($modelUploadForm, 'fav_logo')->fileInput(['class' => 'form-control'])->label(Yii::t('backend', 'Fav Logo')); ?>        
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
runOnLoad(function () {
    $('.select2').select2(); 
    $("#configuration-currency_symbol_left").bootstrapSwitch();

})
</script>