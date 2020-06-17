<?php

use yii\helpers\Url;
use common\helpers\DateTimeHelper;
use common\helpers\Com;
use backend\models\Configuration;
use backend\models\Order;
use backend\models\ItemIngredientGroup;

//print_r($resposeArray); die();
?>
<div class="card card-body" id="printableArea">        
    <div class="printview-order-inner">
        <h4 class="text-info"><?= yii::t('backend','Customer Details') ?></h4> 
        <table class="table table-grid table-bordered">
            <tbody>
                <tr>
                    <td style="width:44%">
                        <b><p><?= yii::t('backend','Username:') ?></p></b>
                    </td>
                    <td>
                        <p><?= isset($resposeArray['user']['username'])? $resposeArray['user']['username']: '-'?></p>
                    </td> 
                </tr>
                <tr>
                    <td style="width:44%">
                        <b><p><?= yii::t('backend','Email:') ?></p></b>
                    </td>
                    <td>
                        <p><?= isset($resposeArray['user']['email'])? $resposeArray['user']['email']: '-'?></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b><p><?= yii::t('backend','Mobile:') ?></p></b>
                    </td>
                    <td>
                        <p><?= isset($resposeArray['user']['mobile_number'])? $resposeArray['user']['mobile_number']: '-' ?></p>
                    </td> 
                </tr>
                <tr>
                    <td>
                        <b><p><?= yii::t('backend','Status:') ?></p></b>
                    </td>
                    <td>
                        <p><?= ($resposeArray['user']['status'] == \common\models\User::ACTIVE) ? 'Active': 'Inactive'; ?></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b><p><?= yii::t('backend','Country:') ?></p></b>
                    </td>
                    <td>
                        <p><?= $resposeArray['user']['country'] ?></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b><p><?= yii::t('backend','State:') ?></p></b>
                    </td>
                    <td>
                        <p><?= $resposeArray['user']['state']  ?></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b><p><?= yii::t('backend','City:') ?></p></b>
                    </td>
                    <td>
                        <p><?= $resposeArray['user']['city'] ?></p>
                    </td>
                </tr>
               
            </tbody>
        </table>
    </div>

</div>
<script type="text/javascript">
runOnLoad(function () {
});
</script>
