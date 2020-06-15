<?php

use backend\components\CActiveForm;
use yii\helpers\Html;
use backend\models\Configuration;
use common\helpers\UploadHelper;

/*@var $this \yii\web\view */                  
/*@var $model \backend\models\configuration */ 
/*@var $model \backend\models\ConfigurationUploadForm */

$form = CActiveForm::begin(['action' => ['save', 'redirect' => 'site-info']])->setModel($model);

$this->title = yii::t('backend','Update');
?>

<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-6">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?></h4>
                <hr>
                <div class="col-md-12">
                    <?= $form->field($model, $model::APP_NAME)->textInput(); ?>
                </div>
                <div class="col-md-12">
                    <?= $form->field($model, $model::SITE_NAME)->textInput(); ?>
                </div>
                <div class="col-md-12">
                    <?= $form->field($model, $model::APP_DESCRIPTION)->textarea(); ?>        
                </div>
                <div class="col-md-12">
                    <?= $form->field($model, $model::META_KEYWORD)->textInput(); ?>        
                </div>
                <div class="col-md-12">
                    <?= $form->field($model, $model::META_DESCRIPTION)->textarea(); ?>        
                </div>
                <div class="col-md-12">
                    <?= $form->field($model, $model::APP_EMAIL)->textInput(); ?>        
                </div>
                <div class="col-md-12">
                    <?= $form->field($model, $model::APP_CONTACT_NO)->textInput(); ?>        
                </div>
                <div class="col-md-12">
                    <?= $form->field($model, $model::APP_CONTACT_ADDRESS)->textarea(); ?>        
                </div>
                <div class="col-md-12">
                    <?= $form->field($model, $model::IOS_LINK)->textInput(); ?>        
                </div>
                <div class="col-md-12">
                    <?= $form->field($model, $model::ANDROID_LINK)->textInput(); ?>        
                </div>
                <div class="col-md-12">
                    <?= $form->field($model, $model::SITE_COPYRIGHT)->textInput(); ?>        
                </div>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::COMMISSION_PERCENTAGE)->textInput(); ?>        
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::SERVICE_TAX)->textInput(); ?>        
                    </div>
                </div>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::COUNTRY)->textInput(); ?>        
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::APP_CITY)->dropDownList($model->getCity(), ['class' => 'select2 form-control']); ?>        
                    </div>
                </div>
                <div class="col-md-6">
                    <?= $form->field($model, $model::APP_CURRENCY_CODE)->dropDownList($model->getCurrencyCode(), ['class' => 'select2 form-control']); ?>        
                </div>
                <div class="col-md-3">
                    <?php
                        if (!empty(Configuration::get(Configuration::OFFER_IMAGE_PATH))) {
                            $uploadHelper = UploadHelper::getInstance();
                            $url = (YII_ENV == 'dev') ? Configuration::get(Configuration::OFFER_IMAGE_PATH) : $uploadHelper->get(Configuration::get(Configuration::OFFER_IMAGE_PATH));
                            echo Html::img($url,
                                $options = ['alt' => 'offer Image', 'style' => 'width:100px;height:100px', 'class' => 'img-responsive img-thumbnail']);
                        }
                    ?>
                </div>
                <div class="col-md-12">
                    <?= $form->field($modelUploadForm, 'offer_image')->fileInput(['class' => 'form-control'])->label('Offer Image'); ?>        
                </div>
                <div class="col-md-3">
                    <?php
                        if (!empty(Configuration::get(Configuration::APP_LOGO_PATH))) {
                            $uploadHelper = UploadHelper::getInstance();
                            $url = (YII_ENV == 'dev') ? Configuration::get(Configuration::APP_LOGO_PATH) : $uploadHelper->get(Configuration::get(Configuration::APP_LOGO_PATH));
                            echo Html::img($url,
                                $options = ['alt' => 'App Logo Image', 'style' => 'width:100px;height:100px', 'class' => 'img-responsive img-thumbnail']);
                        }
                    ?>
                </div>
                <div class="col-md-12">
                    <?= $form->field($modelUploadForm, 'app_logo')->fileInput(['class' => 'form-control'])->label('Site Logo'); ?>        
                </div>
                <div class="col-md-3">
                    <?php
                        if (!empty(Configuration::get(Configuration::FAV_LOGO_PATH))) {
                          $uploadHelper = UploadHelper::getInstance();
                          $url = (YII_ENV == 'dev') ? Configuration::get(Configuration::FAV_LOGO_PATH) : $uploadHelper->get(Configuration::get(Configuration::FAV_LOGO_PATH));
                            echo Html::img($url,
                                $options = ['alt' => 'Fav Logo Image', 'style' => 'width:100px;height:100px', 'class' => 'img-responsive img-thumbnail']);
                        }
                    ?>
                </div>
                <div class="col-md-12">
                    <?= $form->field($modelUploadForm, 'fav_logo')->fileInput(['class' => 'form-control'])->label('Fav Logo'); ?>        
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
})
</script>