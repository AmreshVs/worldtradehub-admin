<?php 

use backend\components\CActiveForm;
use yii\helpers\Html;

/* @var $model backend\models\AdminUserChangePasswordForm */

$this->title = yii::t('backend','Change Password');
$form = CActiveForm::begin()->setModel($model);
?>
<div class="row">
    <div class ="col-md-2"></div>
    <div class="col-md-8">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?></h4>
                <hr>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, 'password_old', ['options' => ['class' => 'form-group']])->passwordInput(); ?>
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, 'password', ['options' => ['class' => 'form-group']])->passwordInput(); ?>
                    </div>
                </div>
                <div class="col-md-6">
                    <?= $form->field($model, 'password_repeat', ['options' => ['class' => 'form-group']])->passwordInput(); ?>
                </div>
                <div class="col-md-12 text-center submit-chnage">
                    <?= Html::submitButton( yii::t('backend','Submit'), ['class' => 'btn btn-success ']); ?>
                    <?= Html::a( yii::t('backend','Cancel'), ['/'], ['class' => 'btn btn-secondary']); ?>
                </div>
                <?php CActiveForm::end() ?>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">    
runOnLoad(function () {
    //$('.submit-chnage').hide();
});
</script>