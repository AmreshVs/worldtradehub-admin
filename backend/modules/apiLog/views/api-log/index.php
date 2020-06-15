<?php

use backend\components\CGridView;
use backend\modules\apiLog\models\ApiLog;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */
/* @var $searchModel \backend\modules\apiLog\models\ApiLogSearch */

$this->title = 'App Translation';
?>
<div class="main-content container-fluid">
    <div class="row">
        <div class="panel panel-default panel-table">
            <div class="panel-heading">
                <?= $this->title ?>
                <div class="tools">
                </div>
            </div>
            <div class="panel-body">
                <?= CGridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => \yii\grid\SerialColumn::className()],
                        'request_url',
                        [
                            'attribute' => 'request_method',
                            'filter' => Html::activeDropDownList(
                                $searchModel,
                                'request_method',
                                \yii\helpers\ArrayHelper::map(
                                    ApiLog::find()->select(['request_method'])->groupBy('request_method')->all(),
                                    'request_method',
                                    'request_method'
                                ),
                                ['class' => 'select2']
                            )
                        ],
//                        'request_data',
//                        'response_data',
                        [
                            'attribute' => 'trace',
                            'format' => 'html',
                            'value' => function (ApiLog $model) {
                                return Html::tag('code', $model->trace);
                            }
                        ],
                        'created_at',
                    ],
                ]); ?>
            </div>
        </div>
    </div>
</div>