<?php

use backend\components\CGridView;
use backend\models\AdminUser;
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this \yii\web\View  */
/* @var $model \backend\models\AdminUser */
/* @var $dataProvider \backend\models\AdminUserSearch */

$this->title = yii::t('backend','Administrator Management');
?>

<div class="card">
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
                            'attribute' => 'first_name',
                            'filterInputOptions' => ['class' => 'form-control col-md-6'],
                            'value' => function (AdminUser $model) {
                                return $model->first_name;
                            }
                        ],
                        [
                            'attribute' => 'role_name',
                            'filterInputOptions' => ['class' => 'form-control col-md-6'],
                            'value' => function (AdminUser $model) {
                                return $model->role_name;
                            }
                        ],
                        'last_login',
                        [
                            'attribute' => yii::t('backend','status'),
                            'filter' => [AdminUser::ACTIVE => 'active', AdminUser::INACTIVE => 'Inactive'],
                            'filterInputOptions' => ['class' => 'select2 form-control col-md-4', 'prompt' => 'All'],
                            'format' => 'raw',
                            'value' => function (AdminUser $model) {
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
                            'template' => '{update}',
                            'buttons' => [
                                'update' => function ($url, $model, $key) {
                                    $html = Html::tag('span', '', ['class' => 'fa fa-pencil text-inverse m-r-10']);
                                    return  Html::a($html, $url);
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
                }

                $this.attr('checked', !$this.is(':checked'));   
            }
        });
    });

    $("[data-size = mini]").bootstrapSwitch();
    $(".select2").select2();
})
</script>

