<?php

use yii\widgets\DetailView;

$this->title =  yii::t('backend','Profile Info');
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
                            'user_name',
                            'first_name',
                            'email_address'
                        ]
                    ]);
                ?>
            </div>
        </div>
    </div>
</div>