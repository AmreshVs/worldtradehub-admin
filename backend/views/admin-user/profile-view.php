<?php

use yii\widgets\DetailView;

$this->title =  yii::t('backend','Profile Info');
?>

<div class="row">
    <div class ="col-md-3"></div>
    <div class="col-md-6">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?></h4>
                <?php 

                switch (APP_USER_SCOPE) {
                    case ACCESS_RULE_VENDOR:
                            $attributes = [
                                    [
                                       'attribute' => 'user_name',
                                        'label' => Yii::t('backend', 'User Name')
                                    ],
                                    [
                                       'attribute' => 'first_name',
                                        'label' => Yii::t('backend', 'First Name')
                                    ],
                                    [
                                        'attribute' => 'last_name',
                                        'label' => Yii::t('backend', 'Last Name'),
                                        'value' => function($model){
                                        return $model->last_name ? $model->last_name : '-';
                                        },   
                                    ],
                                    [
                                        'attribute' => 'vendor_email',
                                        'label' => Yii::t('backend', 'Vendor Email')
                                    ]
                                ];
                        break;
                    
                    default:
                           $attributes = [
                                    [
                                       'attribute' => 'user_name',
                                        'label' => Yii::t('backend', 'User Name')
                                    ],
                                    [
                                       'attribute' => 'first_name',
                                        'label' => Yii::t('backend', 'First Name')
                                    ],
                                    [
                                        'attribute' => 'last_name',
                                        'label' => Yii::t('backend', 'Last Name'),
                                        'value' => function($model){
                                        return $model->last_name ? $model->last_name : '-';
                                        },   
                                    ],
                                    [
                                        'attribute' => 'email_address',
                                        'label' => Yii::t('backend', 'Email Address')
                                    ]
                                ];
                        break;
                }
                ?>
                <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => $attributes
                    ]);
                ?>
            </div>
        </div>
    </div>
</div>