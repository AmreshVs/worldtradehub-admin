<?php
use backend\components\CActiveForm;
use backend\modules\translation\models\SourceMessage;
use yii\helpers\Html;

/* @var $model \backend\modules\translation\models\SourceMessage */
/* @var $modelMessage \backend\modules\translation\models\Message */
/* @var $languages  */

$form = CActiveForm::begin()->setModel($model);
?>

<div class="card-body">
    <h4 class="card-title"><?= $this->title; ?></h4>
    <hr>
    <div class ="col-md-12 p-lg-2">
        <?= $form->field($model, 'category')->dropDownList(SourceMessage::getCategoryList()); ?>
    </div>
    <?php if($model->getIsNewRecord()){ ?>
    <div class ="col-md-12 p-lg-2">
        <?= $form->field($model, 'message')->textInput(); ?>
    </div>
   <?php }else{ ?>
    <div class ="col-md-12 p-lg-2">
        <?= $form->field($model, 'message')->textInput(['disabled' => true]); ?>
    </div>
    <?php } ?>
    <div class = "col-md-12 p-lg-2">
        <div class="input-group">
        <?php foreach ((array)$languages as $language): ?>
              
                <div class="input-group-prepend">
                <div class="input-group-text"><?= $language->language_name ?></div></div>
            <?=
                $form->field($modelMessage, sprintf('translation[%s]', $language->language_code))
                    ->textInput(['class' =>'form-control','id' => 'inlineFormInputGroupUsername'])
                    // ->icon($language->language_code, true, true)
                    ->label(false);

        ?>
        </div>

        <?php endforeach; ?>

    </div>

    <div class= "col-md-12 text-center">
        <?= Html::submitButton($model->getIsNewRecord() ? yii::t('backend','Create') :  yii::t('backend','Update'),
            ['class' => 'btn btn-success']) ?>
        <?= Html::a(yii::t('backend','Cancel'), ['index'], ['class' => 'btn btn-secondary']); ?>
    </div>
</div>
<?php CActiveForm::end(); ?>