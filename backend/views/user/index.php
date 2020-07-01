<?php

use backend\components\CGridView;
use backend\models\User;
use yii\helpers\Html;
use yii\helpers\Url;
use common\helpers\UploadHelper;


/* @var $this \yii\web\View  */
/* @var $model \backend\models\User*/
/* @var $dataProvider \backend\models\UserSearch */

$this->title = yii::t('backend','Visitor Management');
?>

<div class="card user-icon">
    <div class="custom-card-body">
        <h3 class="custom-card-title"><?= $this->title ?>
            <?php /* Html::a('<i class="fa fa-plus-circle"></i>'.' '. Yii::t('backend', 'Export'), 'javascript:void(0)',
                ['class' => 'btn btn-info d-none d-lg-block m-l-15 pull-right export']) */ ?></h3>
            <?php  
                echo  CGridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' =>$searchModel,
                    'columns' => [
                        ['class' => \yii\grid\SerialColumn::className()],                    
                        [
                            'attribute' => 'username',
                            'filterInputOptions' => ['class' => 'form-control col-md-10'],
                            'value' => function (User $model) {
                                return $model->username;
                            }
                        ],
                        [
                            'attribute' => 'email',
                            'filterInputOptions' => ['class' => 'form-control col-md-10'],
                            'value' => function (User $model) {
                                return $model->email;
                            }
                        ],
                        'mobile_number',
                        [
                            'attribute' => 'status',
                            'filter' => [User::ACTIVE => yii::t('backend','Active'), User::INACTIVE => yii::t('backend','Inactive')],
                            'filterInputOptions' => ['class' => 'select2 form-control col-md-4', 'prompt' => yii::t('backend','All')],
                            'format' => 'raw',
                            'value' => function (User $model) {
                                $id = Html::getInputId($model, 'status') . "-{$model->getPrimaryKey()}";

                                $html = Html::activeCheckbox($model, 'status',
                                    ['data-size'=> 'mini','data-toggle' => 'switch', 'label' => false, 'id' => $id]);
                                $html .= Html::tag('span', Html::label('', $id));

                                return Html::tag('div', $html, ['class' => 'bootstrap-switch']);
                            }

                        ],
                        [
                            'class' => \yii\grid\ActionColumn::className(),
                            'header' => Yii::t('backend', 'Actions'),
                            'template' => '{delete}{view}',
                            'buttons' => [
                                'update' => function ($url, $model, $key) {
                                    $html = Html::tag('span', '', ['class' => 'fa fa-pencil text-inverse m-r-10']);
                                    return  Html::a($html, $url);
                                },
                                'delete' => function ($url, $model, $key) {
                                    $html = Html::tag('span', '', ['class' => 'fa fa-trash-o m-r-10']);
                                    return Html::a($html, $url, [ 
                                        'data-pjax' => '0',
                                        'data-confirm' => yii::t('backend', 'Are you sure you want to delete this item?'),
                                        'data-method' => 'post'
                                    ]);
                                },
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

<!--modal-quick-view-->
<div id="printpreview" class="modal fade" role="dialog" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"><b><?= yii::t('backend','User Details' ) ?></b></h4>
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
    $("[data-size = mini]").on('switchChange.bootstrapSwitch', function () {
        $this = $(this);
        var url_val = '<?= Url::to(['change-status']) ?>';
        Core.ajax({
            url: url_val,
            data: {key: $this.closest('tr').attr('data-key'), status: Core.checkboxBoolToInt($this.is(':checked'))},
            done: function (json) {
                if (parseInt(json.status) === 1) {
                    Core.success(json.msg);
                    return;
                }

                $this.attr('checked', !$this.is(':checked'));                     
            }
        });
    });

    $("[data-size = mini]").bootstrapSwitch();
    $('.select2').select2();

    $('body').on('click', '.quick-view', function () {
        $this = $(this);
        Core.ajax({
            url  : '<?= Url::to(['user/quick-view']) ?>',
            data : { id : $this.closest('tr').attr('data-key')},
            done : function (json) {
                if ( parseInt(json.status) === 1 ) {
                    $('#printpreview .modal-body').html(json.data);
                    return;
                }

                Core.handleInvalidServerResponse(json);
            }
        });
    });

     $('body').on('click', '.export', function () {
        location.href = 'user/export/'+ location.search;
    });


})
</script>


