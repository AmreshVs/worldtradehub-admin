<?php

use yii\helpers\Url;
use common\helpers\DateTimeHelper;
use common\helpers\Com;
use backend\models\Configuration;
use backend\models\Order;
use backend\models\AdminUser;
use backend\models\ItemIngredientGroup;





?>
<div class="card card-body" id="printableArea">        
    <div class="printview-order-inner">
        <h3 class="text-info"><b><?= yii::t('backend','User Details') ?></b></h3> 

        <table class="table table-grid table-bordered">
            <tbody>
                <tr>
                    <td style="width:44%">
                        <b><p><?= yii::t('backend','Username:') ?></p></b>
                    </td>
                    <td>
                        <p><?= isset($resposeArray['customer']['username'])? $resposeArray['customer']['username']: '-'?></p>
                    </td> 
                </tr>
                <tr>
                    <td>
                        <b><p><?= yii::t('backend','Mobile:') ?></p></b>
                    </td>
                    <td>
                        <p><?= isset($resposeArray['customer']['mobile_number'])? $resposeArray['customer']['mobile_number']: '-' ?></p>
                    </td> 
                </tr>
                <tr>
                    <td>
                        <b><p><?= yii::t('backend','Email:') ?></p></b>
                    </td>
                    <td>
                        <p><?= isset($resposeArray['customer']['email'])? $resposeArray['customer']['email']: '-' ?></p>
                    </td> 
                </tr>
    
            </tbody>
        </table>
    <?php if($resposeArray['customer']['register_type'] == 1) { ?>
        <h3 class="text-info"><b><?= yii::t('backend','Ticket Details' ) ?></b></h3> 
        <table class="table table-grid table-bordered">
            <tbody>
                <tr>
                    <td style="width:44%">
                        <b><p><?= yii::t('backend','Company Name :') ?></p></b>
                    </td>
                    <td>
                        <p><?= isset($resposeArray['company_name'])? $resposeArray['company_name']: '-'  ?></p>
                    </td> 
                </tr>
                <tr>
                    <td>
                        <b><p><?= yii::t('backend','website :') ?></p></b>
                    </td>
                    <td>
                        <p><?= isset($resposeArray['website'])? $resposeArray['website']: '-' ?></p>
                    </td> 
                </tr>
                <tr>
                    <td>
                        <b><p><?= yii::t('backend','Meet id :') ?></p></b>
                    </td>
                    <td>
                        <p><?= isset($resposeArray['meet_id'])? $resposeArray['meet_id']: '-' ?></p>
                    </td> 
                </tr>
                 <tr>
                    <td>
                        <b><p><?= yii::t('backend','Whatsapp Number :') ?></p></b>
                    </td>
                    <td>
                        <p><?= isset($resposeArray['whatsapp_number'])? $resposeArray['whatsapp_number']: '-' ?></p>
                    </td> 
                </tr>
                 <tr>
                    <td>
                        <b><p><?= yii::t('backend','Youtupe Link :') ?></p></b>
                    </td>
                    <td>
                        <p><?= isset($resposeArray['youtupe_link'])? $resposeArray['youtupe_link']: '-' ?></p>
                    </td> 
                </tr>
                 <tr>
                    <td>
                        <b><p><?= yii::t('backend','Company Desc  :') ?></p></b>
                    </td>
                    <td>
                        <p><?= isset($resposeArray['company_desc'])? $resposeArray['company_desc']: '-' ?></p>
                    </td> 
                </tr>

                
            </tbody>
        </table>
    <?php } ?>
        
    </div>
    <div class="overallTable">
    <table class="table table-grid table-bordered">
        <thead>
            <tr><th class="text-center"><?= yii::t('backend','S.No.') ?></th>
                <th class="text-center"><?= yii::t('backend','Event title') ?></th>
                <th class="text-center"><?= yii::t('backend','Stall Qty') ?></th>
                <th class="text-center"><?= yii::t('backend','Price') ?> (<?= Configuration::get(Configuration::APP_CURRENCY_CODE) ?>)</th>
            </tr>
        </thead>
        <tbody>
        
            <tr>
                <td class="s_no">1</td>
                <td><?= $resposeArray['events']['event_title'] ?></td>
                <td>1</td>
                <td><?= Com::moneyFormat($resposeArray['subscription_price'], Configuration::get(Configuration::CURRENCY_SYMBOL_SIDE)) ?></td>
               
            </tr>
          
            
            <tr class="total_box">
                <td colspan="3"></td>
                <td colspan="2">
                    <ul class="tbl_view">
                        <li class="order-td">
                            <span class="td"><?= Yii::t('backend',  'Sub Total') ?></span>
                            <span class="td lbl"><b class="pull-right"><?= Com::moneyFormat($resposeArray['subscription_price'], Configuration::get(Configuration::CURRENCY_SYMBOL_SIDE))?></b></span>
                        </li>    
                        <li class="order-td">
                            <span class="td"><?= Yii::t('backend',  'Total') ?></span>
                            <span class="td lbl"><b class="pull-right"><?= Com::moneyFormat($resposeArray['subscription_price'], Configuration::get(Configuration::CURRENCY_SYMBOL_SIDE))?></b></span>
                        </li>
                    </ul>
                </td>
            </tr>
        </tbody>
    </table>
    </div>

</div>
<script type="text/javascript">
runOnLoad(function () {
    <?php if( (int)Yii::$app->getRequest()->get('print') === 1 ): ?>
        window.print();
        window.close();
    <?php endif; ?>
});
</script>
