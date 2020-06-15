<?php

/* @var $this \yii\web\View */
/* @var $model \backend\models\AdminUser */

$this->title = yii::t('backend','Create Administrator');
?>

<div class="row">
    <div class ="col-md-2"></div>
        <div class="col-md-8">
            <div class ="card">
                <?= $this->render('_form', [
                    'model' => $model,
                ]); ?>
            </div>
        </div>
</div>

