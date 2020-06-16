<?php
/* @var $this \yii\web\View */
/* @var $model \backend\modules\translation\models\SourceMessage */
/* @var $modelMessage \backend\modules\translation\models\Message */
/* @var $languages */

$this->title = 'Create new translation';
?>
<div class="main-content container-fluid">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default panel-border-color panel-border-color-primary">
                <div class="panel-heading panel-heading-divider"><?= $this->title ?></div>
                <div class="panel-body">
                    <?= $this->render('_form', [
                        'model' => $model,
                        'languages' => $languages,
                        'modelMessage' => $modelMessage
                    ]); ?>
                </div>
            </div>
        </div>
    </div>
</div>