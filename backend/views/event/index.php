<?php

use backend\components\CGridView;
use backend\models\Events;
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this \yii\web\View  */
/* @var $model \backend\models\Cms */
/* @var $dataProvider \backend\models\CmsSearch */

$this->title = yii::t('backend','Event Management');
?>

<div class="card cms">
    <div class="row">
        <div class="card-body">
            <div class="card-title">
                <h3><?= $this->title ?>
                    <?= Html::a('<i class="fa fa-plus-circle"></i>'.' '. Yii::t('backend', 'Create'), ['create'],
                        ['class' => 'btn btn-info d-none d-lg-block m-l-15 pull-right']) ?>
                </h3>
            </div>
            <?php  
                echo  CGridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => \yii\grid\SerialColumn::className()],
                        [
                            'attribute' => 'event_title',
                            'filterInputOptions' => ['class' => 'form-control col-md-6'],
                            'value' => function (Events $model) {
                                return $model->event_title;
                            }
                        ],
                        'event_start_date',
                        'event_end_date',
                        [
                            'attribute' => 'event_status',
                            'filter' => [Events::ACTIVE => yii::t('backend','active'), Events::INACTIVE => yii::t('backend','Inactive')],
                            'filterInputOptions' => ['class' => 'select2 form-control col-md-4', 'prompt' => yii::t('backend','All')],
                            'format' => 'raw',
                            'value' => function (Events $model) {
                                $id = Html::getInputId($model, 'event_status') . "-{$model->getPrimaryKey()}";
                                $html = Html::activeCheckbox($model, 'event_status',
                                    ['data-size'=> 'mini','data-toggle' => 'switch', 'label' => false, 'id' => $id]);
                                $html .= Html::tag('span', Html::label('', $id));
                                return Html::tag('div', $html, ['class' => 'bootstrap-switch']);
                            }
                        ],
                        [
                            'class' => \yii\grid\ActionColumn::className(),
                            'header' => Yii::t('backend', 'Actions'),
                            'template' => '{update}{delete}',
                            'buttons' => [
                                'update' => function ($url, $model, $key) {
                                    $html = Html::tag('span', '', ['class' => 'fa fa-pencil text-inverse m-r-10']);
                                    return  Html::a($html, $url);
                                },
                                'delete' => function ($url, $model, $key) {
                                    
                                        $html = Html::tag('span', '', ['class' => 'fa fa-trash-o']);
                                        return Html::a($html, $url, [ 
                                            'data-pjax' => '0',
                                            'data-confirm' => yii::t('backend', 'Are you sure you want to delete this item?'),
                                            'data-method' => 'post'
                                        ]);
                            
                                },
                            ],
                        ],

                    ],

             ]); ?>
        </div>
    </div>
</div>
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
                } else {
                    Core.error(json.msg);
                }
                location.reload();
                $this.attr('checked', !$this.is(':checked'));   
            }
        });
    });

    $("[data-size = mini]").bootstrapSwitch();
    $(".select2").select2();
})
</script>

