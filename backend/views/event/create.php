<?php

/* @var $this \yii\web\View */
/* @var $model \backend\models\Cms */
/* @var $modelLang \backend\models\CmsLang */

$this->title = yii::t('backend','Create Event');
?>

<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class ="card">
            <?= $this->render('_form', [
                    'model' => $model,
                    'appLanguages' => $appLanguages,
                    'modelUploadForm' => $modelUploadForm
                ]); ?>
        </div>
    </div>
</div>

