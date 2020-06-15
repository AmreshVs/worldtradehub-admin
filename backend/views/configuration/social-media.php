<?php

use backend\components\CActiveForm;
use yii\helpers\Html;

/* @var $model \backend\models\Configuration */
/* @var $this yii\web\view */

$form = CActiveForm::begin(['action' => ['save', 'redirect' => 'social-media']])->setModel($model);

$this->title = Yii::t('backend', 'Social Media');
?>

<div class="row">
    <div class=" col-md-2"></div>
    <div class="col-md-8">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?></h4>
                <hr>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::FACEBOOK_URL, ['options' => ['class' => 'form-group']])->textInput(['class' => 'form-control']); ?>
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::TWITTER_URL, ['options' => ['class' => 'form-group']])->textInput(['class' => 'form-control']); ?>
                    </div>
                </div>
                <div class="row p-lg-2">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::INSTAGRAM_URL, ['options' => ['class' => 'form-group']])->textInput(['class' => 'form-control']); ?>
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::GOOGLE_PLUS_URL, ['options' => ['class' => 'form-group']])->textInput(['class' => 'form-control']); ?>        
                    </div>
                </div>
                <div class="row p-lg-2" style="display: none;">
                    <div class="col-md-6">
                        <?= $form->field($model, $model::LINKEDIN_URL, ['options' => ['class' => 'form-group']])->textInput(['class' => 'form-control']); ?>        
                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, $model::YOUTUBE_URL, ['options' => ['class' => 'form-group']])->textInput(['class' => 'form-control']); ?>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5"></div>
                    <div class="col-md-2">
                        <?= Html::submitButton(yii::t('backend','Save'), 
                        ['class' => 'btn btn-success']) ?>  
                    </div>          
                </div>
                <?php CActiveForm::end(); ?>
            </div>
        </div> 
    </div>
</div>