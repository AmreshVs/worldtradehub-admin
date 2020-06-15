<?php

use backend\components\CActiveForm;
use yii\helpers\Html;

/* @var $model backend\models\Configuration */
/* @var $this yii\web\view */

$form = CActiveForm::begin(['action' => ['save', 'redirect' => 'delivery-boy-setting']])->setModel($model);
$this->title = yii::t('backend','Delivery Boy Settings')?>
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?></h4>
                <hr>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::ORDER_ACCEPT_TIME_LIMIT)->textInput(); ?>
                    </div>       
                    <div class="col-md-6">
                        <?= $form->field($model, $model::DELIVERYBOY_RADIUS)->textInput(); ?>
                    </div>
                </div>
                <div class="row p-lg-2">
                    
                    <div class="col-md-6">
                        <?= $form->field($model, $model::DELIVERY_BOY_ORDER_ASSIGN_TYPE)->dropDownList($model->getOrderAssignType(), ['class' => 'select2 form-control']); ?>
                    </div>
                    
                    <div class="col-md-6">
                            <?= $form->field($model, $model::DISTANCE_TIME)->textInput(); ?>
                    </div>
                </div>
                <?php if(yii::$app->request->get('env')) { ?>

                    <div class="col-md-6">
                       <?= $form->field($model, $model::DELIVERY_BOY_ACCESS_URL)->textInput(); ?>
                    </div>
                    
                    <div class="col-md-6">
                         <?= $form->field($model, $model::COMPANY_KEY)->textInput(); ?>
                    </div>

                      <div class="col-md-6">
                         <?= $form->field($model, $model::DELIVERYBOY_CHANNEL_ID)->textInput(); ?>
                    </div>

                    <div class="col-md-6">
                        <?= $form->field($model, $model::SOCKET_URL)->textInput(); ?>
                    </div>

                    <div class="col-md-6">
                        &nbsp;
                    </div>
                    <div class="col-md-12">
                        <?= $form->field($model, $model::DELIVERY_BOY_BEARER)->textarea(); ?>
                    </div>

                
            <?php } ?>
                 <div class="col-md-12">
                 <p>Delivery time is associated with the time for delivery mentioned in the vendor management and distance between the vendor and delivery/searched location.</p>
                 
                 <p>For Ex : Total delivery time (37mins)= (Delivery time (10 minutes) * distance(1.2km)) + delivery time in the vendor management(25 mins)</p>

                 <p>Total Delivery time: This time will be displayed to the customer once order is placed.</p>
                 <p>Delivery Time: Value given by the admin </p>
                 <p>Distance: Distance between customer location/searched location and restaurant</p>
                 <p>Delivery time in vendor Management: Delivery time given by the vendor in there backend (While inputting the vendor details)</p>
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
       $('.select2').select2(); 
    });
</script>