<?php
use backend\components\CActiveForm;
use yii\helpers\Html;
use yii\bootstrap\Alert;
use common\helpers\Com;
use Yii\helpers\ArrayHelper;

use backend\models\Branch;
/* @var $model \backend\models\DeliverBoy */
/* @var $appLanguages \backend\models\CategoryUploadForm */
?>
    <?php $form = CActiveForm::begin()->setModel($model) ?> 
    <div class="card-body">
        <h4 class="card-title"><?= $this->title; ?></h4>
        <hr>
        
        <div class="row p-lg-2">
            <div class="col-md-6">
                <?= $form->field($model, 'name')->textInput(); ?> 
            </div>
            <div class ="col-md-6">
                <?= $form->field($model, 'address')->textArea(); ?>
            </div>
        </div>

        <div class="row p-lg-2">
            <div class="col-md-6">
                <?= $form->field($model, 'city')->textInput(); ?>
            </div>
            <div class ="col-md-6">
                <?= $form->field($model, 'country')->textInput(); ?>
            </div>
        </div>
        
        <div class="row p-lg-2">
            <div class="col-md-6">
                <?= $form->field($model, 'phone_number')->textInput(); ?>
            </div>
            <div class ="col-md-6">
                <?= $form->field($model, 'email')->textInput(); ?>
            </div>
        </div>
        
        <div class="row p-lg-2">
            <div class="col-md-6">
                <?= $form->field($model, 'dob')->textInput(['class' =>'form-control date datepicker', 'maxlength' => '10', 'placeholder' => 'YYYY-MM-DD', 'id' => 'dob']); ?>
            </div>
            <div class="col-md-6">
                <?= $form->field($model, 'gender')->radioList([1 => Yii::t("backend","Male"), 2 => Yii::t("backend","Female")]); ?>
            </div>
        </div>
     
        
        <?php
            if (!isset($id)) {
               ?>
                    <div class="row p-lg-2">
                        <div class ="col-md-6">
                            <?= $form->field($model, 'password')->textInput(['type' => 'password']); ?>
                        </div>
                        <div class="col-md-6">
                            <?= $form->field($model, 'confirm_password')->textInput(['type' => 'password']); ?>
                        </div>
                    </div>
               <?php
            }
        ?>
        
        
        <div class="row p-lg-2">
            <div class ="col-md-6">
                <?= $form->field($model, 'identity_number')->textInput(); ?>
            </div>
            <div class="col-md-6">
                <?= $form->field($model, 'license_number')->textInput(); ?>
            </div>
        </div>
        
        <div class="row p-lg-2">
            <div class ="col-md-6">
               <?= $form->field($model, 'license_expiry_date')->textInput(['class' =>'form-control date datepicker', 'maxlength' => '10', 'placeholder' => 'YYYY-MM-DD', 'id' => 'licence']); ?>
            </div>
            <div class ="col-md-6">
                <?= $form->field($model, 'vehicle_number')->textInput(); ?>
            </div>
        </div>
    <?php /*
        <div class="row p-lg-2">
            <div class="col-md-6">
                <?= $form->field($model, 'stripe_account_id')->textInput() ?>
            </div>
        </div>
    */ ?>
        <?php /* $form->field($model, 'device_type')->dropDownList([1 => 'Android', 2 => 'IOS'],['class' =>'chosen-select'])*/?>
        <?php /* $form->field($model, 'image')->fileInput(); */?>
        <div class="row p-lg-2">
            <?php
                if (isset($id) && !empty($model->image)) {
                   $html =  Html::img($model->image, $options = ['alt' => 'Licence Image', 'style' => 'width:100px;height:100px'] );
                   echo Html::a($html, $model->image, ['target' => '_blank']);
                }
              ?>
        </div>
        
        <div class= "col-md-12 text-center">
            <?= Html::submitButton('Submit',
                ['class' => 'btn btn-success']) ?>
            <?= Html::a('Cancel', ['index'], ['class' => 'btn btn-secondary']); ?>
        </div>
    </div>
    <?php CActiveForm::end(); ?>

<script type="text/javascript">
runOnLoad(function () {
    $(".select2").select2();
    
    $('#dob').datepicker({
       endDate: '0d' 
    });
    
    $('#licence').datepicker({
       startDate: '0d' 
    });
        
        
        // $(".bootstrapMaterialDatePicker").bootstrapMaterialDatePicker({ 
        //     format: 'YYYY-MM-DD',
        // });
});
//    runOnLoad(function () {
//        var format = "yyyy-mm-dd";
//        var match = new RegExp(format
//            .replace(/(\w+)\W(\w+)\W(\w+)/, "^\\s*($1)\\W*($2)?\\W*($3)?([0-9]*).*")
//            .replace(/m|d|y/g, "\\d"));
//        var replace = "$1/$2/$3$4"
//            .replace(/\//g, format.match(/\W/));
//
//        function doFormat(target)
//        {
//            target.value = target.value
//                .replace(/(^|\W)(?=\d\W)/g, "$10")   // padding
//                .replace(match, replace)             // fields
//                .replace(/(\W)+/g, "$1");            // remove repeats
//        }
//
//        $(".date").keyup(function(e) {
//           if(!e.ctrlKey && !e.metaKey && (e.keyCode == 32 || e.keyCode > 46))
//              doFormat(e.target)
//        });
//
//        <?php 
        	if($flash = Yii::$app->session->getFlash('danger')) : ?>//
//        		Core.error('Enter Valid license expiry date');
//            	// echo Alert::widget(['options' => ['class' => 'alert-danger'], 'body' => $flash,'closeButton'	=>['label'=>'']]);
//		<?php
			endif ?>//
//		<?php 
        	if($flash = Yii::$app->session->getFlash('success')) : ?>//
//        		Core.success('<?="$flash"?>');
//            	// echo Alert::widget(['options' => ['class' => 'alert-danger'], 'body' => $flash,'closeButton'	=>['label'=>'']]);
//		<?php
			endif ?>
         //$(".date").mask("99/99/9999",{placeholder:"mm/dd/yyyy"});
        /*$('.datepicker').datepicker({
            format: 'yyyy-mm-dd',
            todayHighlight: true,
            autoclose: true,
        })*/
  //  });
</script>
