
<?php

/* @var $this \yii\web\View */
/* @var $model \backend\models\Category */
/* @var $modelUploadForm \backend\models\CategoryUploadForm */

$this->title = yii::t('backend','Create new translation');
?>

<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <div class ="card">
            <?= $this->render('_form', [
                'model' => $model,
                'languages' => $languages,
                'modelMessage' => $modelMessage
            ]); ?>
        </div>
    </div>
</div>

