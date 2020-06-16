<?php
/* @var $this \yii\web\View */
/* @var $model \backend\models\User */

$this->title = yii::t('backend','Update Customer');
?>

<div class="row">
    <div class="col-md-3">        
    </div>
    <div class="col-md-6">
        <div class ="card">
            <?= $this->render('_form', ['model' => $model]); ?>
        </div>
    </div>
</div>

