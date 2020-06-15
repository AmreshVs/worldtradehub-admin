<?php

use backend\components\CGridView;
use yii\data\ArrayDataProvider;
use yii\widgets\Breadcrumbs;
use yii\helpers\Html;
use yii\helpers\Url;
use common\helpers\Com;
use yii\bootstrap\Alert;
use backend\modules\delivery\models\DeliveryBoy;
use backend\models\Branch;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */
/* @var $searchModel backend\models\DeliveryBoySearch */

$this->title = Yii::t('backend', 'Delivery Boy');
?>

<div class="card">
    <div class="row">
        <div class="card-body overflow-space">
        
            <div class="card-title">
                <h3 class="button_space">
                    <?= $this->title ?>
                    <?= Html::a('<i class="fa fa-plus-circle"></i>'.' '. Yii::t('backend', 'Create'), ['create'],
                        ['class' => 'btn btn-info d-none d-lg-block pull-right']) ?>   

                     <?= Html::a(Yii::t('backend', 'Track').'<i class="fa fa-search"></i>', ['/delivery/delivery-boy/track-delivery-boy'], [
                            'class' => 'btn btn-info',
                            'id' => 'track-btn',
                            'style' => 'float:right;'
                     ]) ?> 
                    
                </h3>
            </div>

                <?= CGridView::widget([
                        'dataProvider' => $dataProvider,
                        'usePrimaryKey' => true,
                        'columns' => [
                            ['class' => 'yii\grid\SerialColumn'],
                            [
                                'label' => Yii::t('backend', 'Name'), 
                                'attribute' => 'name', 
                                'value' => 'name',
                            ],
                            
                            [
                                'label' => Yii::t('backend', 'Email'),
                                "attribute" => "email",
                                'value' => 'email',
                            ],
                            [
                                'label' => Yii::t('backend', 'Phone Number'),
                                "attribute" => "phone_number",
                                'value' => 'phone_number',
                            ],
                            [
                                'label' => Yii::t('backend', 'Status'),
                                'attribute' => 'status',
                                'contentOptions' => ['class'=>'status deliveryboy_status'],
                                'format'    => 'raw',
                                'value' => function ($model ) {
                                    $id = 'nank-status-' . $model['id'];
                                    $html = '';
                                    $checkboxOption =   [
                                                            'id' => $id, 
                                                            'data-size'=> 'mini',
                                                            'data-toggle' => 'switch', 
                                                            'data-type'=> 'delivery-boy-status',
                                                            'value' => $model['status']
                                                        ];
                                    if((int)$model['status'] === Deliveryboy::DELIVERY_DEACTIVE) {
                                        $html  .= Html::checkbox('status', [], $checkboxOption);
                                    } else {
                                        $html  .= Html::checkbox('status', ['checked' => 'checked'], $checkboxOption);
                                    }
                                    $html .= Html::tag('span', Html::label('', $id));

                                    return Html::tag('div', $html, ['class' => 'bootstrap-switch']);
                                }
                            ],
                            [
                                'label' => Yii::t('backend', 'Online Status'),
                                'attribute' => 'status',
                                'format'    => 'raw',
                                'value' => function ($model ) {
                                    if ((int)$model['status'] === Deliveryboy::DELIVERY_ONLINE) {
                                        return  Html::tag('label', Yii::t('backend', 'Online'), ['style' => 'color:green;']);
                                    } else {
                                        return  Html::tag('label', Yii::t('backend', 'Offline'), ['style' => 'color:red;']);
                                    }
                                }
                            ],
                            [
                                'label' => Yii::t('backend', 'Approve Status'),
                                "attribute" => "is_approved",
                                'contentOptions' => ['class'=>'approve_status'],
                                'format' => 'raw',
                                'value' => function ($model ) {
                                    $html = '';
                                    $checkboxOptions = [
                                                            'id' => 'aopprove'.$model['id'], 
                                                            'data-size'=> 'mini', 
                                                            'data-type'=> 'delivery-boy-approve',
                                                            'data-toggle' => 'switch', 
                                                            'data-on-label' => yii::t('backend','Approved'), 
                                                            'data-off-label' => yii::t('backend','Disapproved')
                                                        ];
                                    if ((int)$model['is_approved'] === Deliveryboy::DELIVERY_BOY_APPROVED) {
                                        return  Html::tag('label', Yii::t('backend', 'Approved'), ['style' => 'color:green;']);
                                       $html  .= Html::checkbox('is_approved', ['checked' => 'checked'], $checkboxOptions );
                                    } else if ((int)$model['is_approved'] === Deliveryboy::DELIVERY_BOY_DISAPPROVED) {
                                        $html  .= Html::checkbox('is_approved', [], $checkboxOptions );
                                    }
                                    $html .= Html::tag('span', Html::label('', $model['id']));
                                    
                                    return Html::tag('div', $html, ['class' => 'bootstrap-switch']);
                                    
                                }
                            ],
                            [
                                'class' => \yii\grid\ActionColumn::class,
                                'contentOptions'   => ['class' => 'action'],
                                'header' => Yii::t('backend', 'Action'),
                                'template' => '{update}{delete}',
                                'buttons' => [ 
                                    "update" => function ($url, $dataProvider) {
                                        return Html::a('<i class="fa fa-pencil"></i>', ['delivery-boy/update', 'id' => $dataProvider['id']], 
                                            [
                                                'data-toggle' => 'tooltip',
                                                'title' => '',
                                                'data-original-title' => Yii::t('backend', 'Edit'),
                                            ]); 
                                    },
                                    "delete" => function ($url, $dataProvider) {
                                        return Html::a('<i class="fa fa-trash"></i>', ['delivery-boy/delete', 'id' => $dataProvider['id']], 
                                            [
                                                'data-toggle' => 'tooltip',
                                                'title' => '',
                                                'data-original-title' => Yii::t('backend', 'Delete'),
                                            ]);
                                    }
                                ],
                            ],
                    ]
                ]);
                ?>
        </div>
        </div>
    
</div>
   

<script type="text/javascript">
    runOnLoad(function () { 
        // $("[data-size = mini]").bootstrapSwitch();
        var $this;
        $("[data-type=delivery-boy-status]").bootstrapSwitch({
            onSwitchChange: function(e, state) {
            $this = $(this);
            Core.ajax({
                url  : '<?= Url::to(['delivery-boy/change-status']) ?>',
                data : { id : $this.closest('tr').attr('data-key'), status :  state },
                done : function (json) {
                    json = JSON.parse(json);
                    if ( parseInt(json.status) === 1 ) {
                        Core.success(json.msg);
                        return;
                    }
                    $this.attr('checked', !$this.is(':checked'));
                    Core.handleInvalidServerResponse(json);
                },
                error : function() {
                    if ($this.prop('checked') == false) {
                        $this.prop('checked', 'checked');
                    } else {
                        $this.prop('checked', '');
                    }
                    
                },
            });
          }
        })
        $("[data-type=delivery-boy-approve]").bootstrapSwitch({
            onSwitchChange: function(e, state) {
            $this = $(this);
            Core.ajax({
                url  : '<?= Url::to(['delivery-boy/approve-status']) ?>',
                data : { id : $this.closest('tr').attr('data-key'), status : state},
                done : function (json) {
                    json = JSON.parse(json);
                    if ( parseInt(json.status) === 1 ) {
                        Core.success(json.msg);
                        return;
                    }
                    $this.attr('checked', !$this.is(':checked'));
                    Core.handleInvalidServerResponse(json);
                },
                error : function() {
                    if ($this.prop('checked') == false) {
                        $this.prop('checked', 'checked');
                    } else {
                        $this.prop('checked', '');
                    }
                    
                },
            });
          }
        });       
        
        $('.removeSession').on('click', function () {
            <?php
                Com::unsetSession('__isMap');
                Com::unsetSession('__order_id');
            ?>
            return true;
        });
        
    });
</script>
