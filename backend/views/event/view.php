<?php

use yii\widgets\DetailView;
use backend\models\BranchReview;
use backend\models\Cms;
use backend\models\CmsLang;
use common\models\Language;
$this->title =  Yii::t('backend','CMS Details');

?>

<div class="row">
    <div class ="col-md-2"></div>
    <div class="col-md-6">
        <div class ="card">
            <div class="card-body">
                <h4 class="card-title"><?= $this->title; ?></h4>
                 <?php echo DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            [ 
                                'attribute' => 'name',
                                'value' =>  $model->name,
                            ],
                           


                        ],
                    ]);
                ?>

            </div>
        </div>
    </div>
</div>