<?php

use backend\components\CActiveForm;
use yii\helpers\Html;
use common\helpers\Com;
use dosamigos\ckeditor\CKEditor;
use common\helpers\UploadHelper;

/* @var $this \yii\web\View  */
/* @var $model \backend\models\Cms */
/* @var $modelLang \backend\models\CmsLang */

$form = CActiveForm::begin()->setModel($model);
?>

<div class="card-body">
    <h4 class="card-title"><?= $this->title; ?></h4>
    <hr>
    <div class="row p-lg-2">
        <div class="col-md-12">
            <?= $form->field($model, 'event_title')->textInput(); ?>
        </div>
        <div class="col-md-12">
            <?= $form->field($model, 'event_desc')->widget(CKEditor::className(), [
                                'options' => ['rows' => 3],
                                'preset' => 'basic'
            ]) ?>
        </div>
    </div>
    <div class="row p-lg-2">
        <div class="col-md-6">
               <?= $form->field($model, 'event_start_date')->textInput(['class' => 'bootstrapMaterialDatePicker form-control']); ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'event_end_date')->textInput(['class' => 'bootstrapMaterialDatePicker form-control']); ?>
        </div>
    </div>
 
    <div class="p-lg-2">
        <?php
            if (!$model->getIsNewRecord()) {

                $uploadHelper = UploadHelper::getInstance();
                $url = isset($model->event_image)? $uploadHelper->get($model->event_image, false): $uploadHelper->get(false, false);
                echo Html::img($url,
                    $options = ['alt' => 'Category Image', 'style' => 'width:100px;height:100px', 'class' => 'img-responsive img-thumbnail']);
            } ?>
    </div>
    <div class="row p-lg-2">
        <div class="col-md-6">
            <?= $form->field($modelUploadForm, 'event_image')->fileInput(['class' => 'form-control'])->label('Event Image'); ?>
        </div>
    <div class="col-md-6">
    <?= $form->field($model, 'event_status')->radioList([$model::ACTIVE => yii::t('backend','Active'), $model::INACTIVE => yii::t('backend','Inactive')]); ?>
</div>
    </div>
    <div class="row p-lg-2">

    <div class= "col-md-12 text-center">
        <?= Html::submitButton($model->getIsNewRecord() ? yii::t('backend','Create' ):  yii::t('backend','Update'),
                ['class' => 'btn btn-success']) ?>
        <?= Html::a(yii::t('backend','Cancel'), ['index'], ['class' => 'btn btn-secondary']); ?>
    </div>
</div>

<?php CActiveForm::end(); ?>


<script>
    runOnLoad (function () {
         $(".bootstrapMaterialDatePicker").bootstrapMaterialDatePicker({ 
            format: 'YYYY-MM-DD HH:mm:ss',
        });
    });
</script>


