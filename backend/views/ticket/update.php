<?php

/* @var $this \yii\web\View */
/* @var $model \backend\models\Cms */
/* @var $modelLang \backend\models\CmsLang */

$this->title = yii::t('backend','Update Event');

?>

<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class ="card">
            <?= $this->render('_form', [
                    'model' => $model, 
                    'modelUploadForm' => $modelUploadForm 
                ]); ?>
        </div>
    </div>
</div>

