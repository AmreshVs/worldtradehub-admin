<?php

use backend\components\CActiveForm;
use yii\helpers\Html;
use backend\models\AdminUser;
use common\helpers\UploadHelper;

/* @var $this \yii\web\view */
/* @var $model \backend\models\User */
$this->title = yii::t('backend','Update Profile');
$form = CActiveForm::begin()->setModel($model);

?>
<div class="row">
    <div class ="col-md-2"></div>
    <div class="col-md-8">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?></h4>
                <hr>
                <?php
                    if (AdminUser::isVendor()): ?>
                        <div class="p-lg-2">
                            <?php
                                if (!$vendormodel->getIsNewRecord()) {
                                    $uploadHelper = UploadHelper::getInstance();
                                    $url = isset($modelVendorLang->vendor_image_path) ? $uploadHelper->get($modelVendorLang->vendor_image_path, false) : $uploadHelper->get(false, false);
                                    echo Html::img($url,
                                        $options = ['alt' => 'Vendor Image', 'style' => 'width:100px;height:100px', 'class' => 'img-responsive img-thumbnail']);
                                } ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($modelVendorUploadForm, 'vendor_image_path')->fileInput(['class' => 'form-control'])->label(Yii::t('backend', 'Vendor Image')); ?>
                        </div>
                <?php
                    endif; ?>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, 'first_name', ['options' => ['class' => 'form-group']])->textInput(['class' => 'form-control'])->label(Yii::t('backend', 'First Name')); ?>
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, 'last_name', ['options' => ['class' => 'form-group']])->textInput(['class' => 'form-control'])->label(Yii::t('backend', 'Last Name')); ?>
                    </div>
                </div>

                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, 'user_name', ['options' => ['class' => 'form-group',]])->textInput(['class' => 'form-control','readonly' => true]); ?>
                    </div>
                      
                            <div class="col-md-6">
                                <?= $form->field($model, 'email_address', ['options' => ['class' => 'form-group']])->textInput(['class' => 'form-control']); ?>
                            </div>
                       
                    
                </div>


                <div class="col-md-12 text-center">
                    <?= Html::submitButton(yii::t('backend','Update'),['class' => 'btn btn-success']) ?>
                    <?= Html::a(yii::t('backend','Cancel'), ['/'], ['class' => 'btn btn-secondary']); ?>
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


