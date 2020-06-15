<?php

use backend\components\CActiveForm;
use common\helpers\Com;
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $model \backend\models\LoginForm */

$form = CActiveForm::begin(['id' => 'loginform', 'options' => ['class' => 'form-horizontal form-material']])->setModel($model);
?>
<h3 class="box-title m-b-20"><?yii::t('backend','Admin Login') ?></h3>
<div class="col-xs-12">
    <?= $form->field($model, 'user_name')
        ->textInput(['placeholder' => Yii::t('backend', 'Username'), 'class' => 'form-control','autofocus' => true])
        ->label(false);
    ?>
</div>
<div class="col-xs-12">
    <?= $form->field($model, 'password')
        ->passwordInput(['placeholder' => Yii::t('backend', 'Password')])
        ->label(false);
    ?>
</div>
<div class="col-xs-12 p-b-20">
   <?= Html::submitButton(yii::t('backend','Login'), ['class' => 'btn btn-block btn-lg btn-info', 'name' => 'login-button']) ?>
</div>
<div class="col-md-12">
    <?= Html::a(yii::t('backend','Forgot password?').' '.'<i class="fa fa-lock m-r-5"></i>', 'javascript:void(0)', ['class' => 'text-dark', 'id' => 'to-recover'] ); ?>
</div>
<?php CActiveForm::end(); ?>

<?php 

$form = CActiveForm::begin(['id' => 'recoverform', 'options' => ['class' => 'form-horizontal']])->setModel($modelForgotPassword);
?>

<div class="form-group ">
    <div class="col-xs-12">
        <h3 class="text-center"><?= yii::t('backend','Forgot Password') ?></h3>
    </div>
</div>
<div class="col-xs-12">
    <?= $form->field($modelForgotPassword, 'email_address')->textInput(['placeholder' => yii::t('backend','Email')]); ?>
    <div class="help-block"></div>
</div>
<div class="row">
    <div class ="col-md-6">
        <?= Html::submitButton('Send', ['class' => 'btn btn-primary btn-lg btn-block text-uppercase', 'id' => 'recover-button']); ?>
    </div>
    <div class ="col-md-6">
        <?= Html::a('cancel', ['login/'], ['class' => 'btn btn-secondary btn-lg btn-block text-uppercase waves-effect waves-light']); ?>
    </div>
</div>
<?php CActiveForm::end(); ?>

<script type="text/javascript">
runOnLoad(function() {
    $('#to-recover').on("click", function() {
        $("#loginform").slideUp();
        $("#recoverform").fadeIn();
    });
   
    $('#recoverform').on('beforeSubmit', function(e) {
        var loadingText = 'sending...';
        var recoverButton = $('#recover-button');
        if (recoverButton.html() !== loadingText) {
            recoverButton.data('original-text', recoverButton.html());
            recoverButton.html(loadingText);
        }
        
        Core.ajax({
            url  : '<?= Url::to(['admin-user/forgot-password']) ?>',
            data : { email : $('#adminuser-email_address').val() },
            done : function (json) {
                json = JSON.parse(json);
                if (parseInt(json.status) === 1) {
                    Core.success(json.msg);
                    return;
                }else{
                   // Core.error(json.msg);
                   $('#recoverform .help-block').text('<?=yii::t("backend","Email does not match") ?>');
                   return;
                }

                Core.handleInvalidServerResponse(json);
            }
        });
            
        setTimeout(function() {
            recoverButton.html(recoverButton.data('original-text'));
        }, 1000);
        
        return false;
    });
});
</script>
