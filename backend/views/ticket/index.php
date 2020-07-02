<?php

use backend\components\CGridView;
use backend\models\Ticket;
use yii\helpers\Html;
use yii\helpers\Url;

$this->title = yii::t('backend','Stall Bookings');
?>

<div class="card cms">
    <div class="row">
        <div class="card-body">
            <div class="card-title">
                <h3><?= $this->title ?>
                    <?php /* Html::a('<i class="fa fa-plus-circle"></i>'.' '. Yii::t('backend', 'Create'), ['create'],
                        ['class' => 'btn btn-info d-none d-lg-block m-l-15 pull-right']) */?>
                </h3>
            </div>
            <?php  
                echo  CGridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => \yii\grid\SerialColumn::className()],
                        [
                            'attribute' => 'company_name',
                            'filterInputOptions' => ['class' => 'form-control col-md-6'],
                            'value' => function (Ticket $model) {
                                return $model->company_name;
                            }
                        ],
                        'event_title',
                        'username',
                        [
                            'attribute' => 'register_type',
                            'filter' => [Ticket::INACTIVE => yii::t('backend','Exhibitor'), Ticket::ACTIVE => yii::t('backend','Visitor')],
                            'filterInputOptions' => ['class' => 'select2 form-control col-md-4', 'prompt' => yii::t('backend','All')],
                            'format' => 'raw',
                            'value' => function (Ticket $model) {
                                return ($model->register_type == 1 ? 'Exhibitor' : 'Visitor');
                            }
                        ],
                        'created_at',
                        [
                            'class' => \yii\grid\ActionColumn::className(),
                            'header' => Yii::t('backend', 'Actions'),
                            'template' => '{view}',
                            'buttons' => [
                                 'view' => function ($url, $model, $key) {    
                                    return  Html::a('<i class="fa fa-eye" data-toggle="modal" title="View" data-target="#printpreview"></i>' ,'javascript:;',
                                    [
                                        'data-toggle'  => 'tooltip',
                                        'class' => 'quick-view'
                                    ]);
                                },
                            ],
                        ],

                    ],

             ]); ?>
        </div>
    </div>
</div>
<!--modal-quick-view-->
<div id="printpreview" class="modal fade" role="dialog" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"><b><?= yii::t('backend','Order Details' ) ?></b></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div><!--modal-header-->
            <div class="modal-body" id="print_content">
            </div><!--modal-body-->
            <div class="modal-footer">
                <button class="btn btn-danger" id ="cancel-order-modal"  data-dismiss="modal" ><?= Yii::t('backend', 'Cancel') ?></button>
            </div><!--modal-footer-->
        </div><!--modal-content-->
    </div><!--modal-dialog-->
</div><!--modal-quick-view-->
<script type="text/javascript">    
runOnLoad(function () {
    var $this;
 
    $('body').on('click', '.quick-view', function () {
        $this = $(this);
        Core.ajax({
            url  : '<?= Url::to(['quick-view']) ?>',
            data : { id : $this.closest('tr').attr('data-key')},
            done : function (json) {
                if ( parseInt(json.status) === 1 ) {
                    $('#printpreview .modal-body').html('show');
                    $('#printpreview .modal-body').html(json.data);
                    return;
                }

                Core.handleInvalidServerResponse(json);
            }
        });
    });

    $("[data-size = mini]").bootstrapSwitch();
    $(".select2").select2();
})
</script>

