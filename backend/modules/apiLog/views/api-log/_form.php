<?php
use backend\components\CActiveForm;
use backend\modules\translation\models\SourceMessage;
use yii\helpers\Html;

/* @var $model \backend\modules\translation\models\SourceMessage */
/* @var $modelMessage \backend\modules\translation\models\Message */
/* @var $languages  */

$form = CActiveForm::begin()->setModel($model)
?>
<?= $form->field($model, 'category')->dropDownList(SourceMessage::getCategoryList()); ?>
<?= $form->field($model, 'message')->textInput(); ?>
<?= Html::label('Translation') ?>
    <hr />
<?php foreach ((array)$languages as $language ):
    /* @var $language \backend\models\Language */
    ?>
    <?=
    $form->field($modelMessage, sprintf('translation[%s]', $language->language_code))
        ->textInput()
        ->icon($language->language_code, true, true)
        ->label(false);
    ?>
<?php endforeach; ?>

    <div class="col-xs-6 col-xs-offset-6">
        <p class="text-right">
            <?= Html::submitButton('Submit', ['class' => 'btn btn-space btn-primary']) ?>
            <?= Html::a('Cancel', ['index'], ['class' => 'btn btn-space btn-default']); ?>
        </p>
    </div>

<?php CActiveForm::end(); ?>