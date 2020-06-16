<?php

use backend\components\CActiveForm;
use common\helpers\Com;
use yii\helpers\Html;

/* @var $model \backend\models\LoginForm */
/* @var $modelForgotPassword \backend\models\UserChangePasswordForm */
?>

<?php if (Yii::$app->getRequest()->get('error') !== null): ?>
        <div class="alert alert-danger" >
            <strong><?= Yii::$app->getRequest()->get('error') ?></strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">×</span> </button>
        </div>
<?php else: ?>
        <h3 class="box-title m-b-20">Recover Password</h3>
        <?php $form = CActiveForm::begin(['id' => 'reset-form', 'options' => ['class' => 'form-horizontal form-material']])->setModel($model); ?>
            <div class="col-xs-12">
                <?= $form->field($model, 'password', ['options' => ['class' => 'form-group']])->passwordInput(['placeholder' => yii::t('backend','New Password')])->label(false); ?>
            </div>
            <div class="col-xs-12">
                <?= $form->field($model, 'password_repeat', ['options' => ['class' => 'form-group']])->passwordInput(['placeholder' => yii::t('backend','New password repeat')])->label(false); ?>
            </div>
            <div class="col-xs-12">
                <?= Html::submitButton( yii::t('backend','Reset password'), ['class' => 'btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light', 'name' => 'login-button']) ?>
            </div>
        <?php CActiveForm::end(); ?>
<?php endif; ?>

