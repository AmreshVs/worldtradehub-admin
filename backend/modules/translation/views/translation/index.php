<?php

use backend\components\CGridView;
use backend\modules\translation\models\SourceMessage;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */
/* @var $searchModel backend\modules\translation\models\SourceMessageSearch */

$this->title =  yii::t('backend','Translation');
?>

<div class="card">
    <div class="row">
        <div class="card-body">
            <div class="card-title">
                <h3>
                    <?= $this->title ?>
                    <?= Html::a('<i class="fa fa-plus-circle"></i>'.' '. Yii::t('backend', 'Create'), ['create'],
                        ['class' => 'btn btn-info d-none d-lg-block m-l-15 pull-right']) ?>
                </h3>
            </div>                
                     <?= CGridView::widget([
                    'dataProvider'  => $dataProvider,
                    'filterModel'   => $searchModel,
                    'columns' => [
                        ['class' => \yii\grid\SerialColumn::className()],
                        [
                            'attribute' => 'category',
                            'filter' => Html::activeDropDownList(
                                $searchModel,
                                'category',
                                SourceMessage::getCategoryList(),
                                ['class' => 'select2']
                            )
                        ],
                        'message',
               
                        [
                            'format'    => 'raw',
                            'value'     => function (SourceMessage $model) {
                                 $html = Html::tag('i', '', ['class' => 'fa fa-edit']);

                                return Html::a($html, ['update', 'id' => $model->getPrimaryKey()]);
                            },
                        ],
                    ],
                ]); ?>
        </div>
    </div>
</div>




