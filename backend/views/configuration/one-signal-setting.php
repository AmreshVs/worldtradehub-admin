<?php

use backend\components\CActiveForm;
use yii\helpers\Html;
use yii\helpers\Url;

/*@var $this \yii\web\view */                  
/*@var $model \backend\models\configuration */ 

$form = CActiveForm::begin(['action' => ['save', 'redirect' => 'one-signal-setting']])->setModel($model);

$this->title = yii::t('backend','One Signal Setting');
?>

<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?></h4>
                <hr>
                <div class="row">
                    <div class="col-md-10"></div>
                    <div class="col-md-2">
                        <?php 
                            $html = Html::activeCheckbox($model, $model::IS_CUSTOMER_NOTIFICATION_ENABLED,
                                            ['data-size'=> 'mini','data-toggle' => 'switch', 'label' => false]);
                            echo Html::tag('div', $html, ['class' => 'bootstrap-switch']);
                        ?>
                    </div>
                </div>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::PUSH_NOTIFICATION_APP_ID)->textInput(); ?>
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::PUSH_NOTIFICATION_REST_API_KEY)->textInput(); ?>
                    </div>  
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-10"></div>
                    <div class="col-md-2">
                        <?php 
                            $html = Html::activeCheckbox($model, $model::IS_DELIVERY_NOTIFICATION_ENABLED,
                                            ['data-size'=> 'mini' , 'data-toggle' => 'switch', 'label' => false]);
                            $html .= Html::tag('span', Html::label('', ''));

                            echo Html::tag('div', $html, ['class' => 'bootstrap-switch']);
                        ?>
                    </div>
                </div>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::DELIVERYBOY_ONESIGNAL_APP_ID)->textInput(); ?>
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::DELIVERY_BOY_PUSH_NOTIFICATION_REST_API_KEY)->textInput(); ?>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-10"></div>
                    <div class="col-md-2">
                        <?php 
                            $html = Html::activeCheckbox($model, $model::IS_VENDOR_NOTIFICATION_ENABLED,
                                            ['data-size'=> 'mini','data-toggle' => 'switch', 'label' => false]);
                            $html .= Html::tag('span', Html::label('', ''));

                            echo Html::tag('div', $html, ['class' => 'bootstrap-switch']);
                        ?>
                    </div>
                </div>
                <div class="row p-lg-2">
                     <div class="col-md-6">
                        <?= $form->field($model, $model::VENDOR_ONESIGNAL_APP_ID)->textInput(); ?>
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::VENDOR_PUSH_NOTIFICATION_REST_API_KEY)->textInput(); ?>
                    </div>
                </div>
                <div class="col-md-12 text-center">
                    <?= Html::submitButton(yii::t('backend','Save'), ['class' => 'btn btn-success']) ?>            
                </div>
                <?php CActiveForm::end(); ?>
            </div>
        </div> 
    </div>
</div>
<script type="text/javascript">
runOnLoad(function() {
    $("[data-size = mini]").bootstrapSwitch();
})
</script>