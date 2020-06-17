<?php

use common\helpers\Com;
use common\models\Configuration;
$appName = Configuration::get(Configuration::APP_NAME);

$this->title = 'Thank you for your Order!';
?>
<p style="margin:0px 0px 10px 0px;">Dear <b>saravana</b>, </p>
<p style="margin:0px 0px 5px 0px;">Thank you for placing order at
    <b style="color:#000"><?= $appName ?></b>.
</p>
<p style="margin:0px">Exciting to have you here. Your order has been successfully
    placed and Payment get successfully.
</p>
<table cellpadding="0" cellspacing="0" width="100%" border="0" style="background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;">
    <tr>
        <th colspan="3" style="padding:15px 15px 0px 15px; text-align:left; 
            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase">
             Order Information:  
        </th>
   </tr>
   <tr>
        <td>
            <table cellpadding="0" cellspacing="0" width="100%" border="0">
                <td style="padding:15px; text-align:left;">
                        <p style="margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px">Paymenet ID</p>
                        <b style="font-size:15px; font-weight:bold">100</b>
                </td>
                <td style="padding:15px 0px; text-align:right">
                        <p style="margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px">Date Added</p>
                        <b style="font-size:15px; font-weight:bold"><?= Date('Y-M-d') ?></b>
                </td>
                <td style="padding:15px; text-align:right">
                        <p style="margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px">Payment Method</p>
                        <b style="font-size:15px; font-weight:bold"> Online </b>
                </td>
            </table>
        </td>
    </tr>
</table>
<table cellpadding="0" cellspacing="0" width="100%" border="0" 
    style="margin-bottom:20px; border-top: 1px solid #d3d4d8;">
    <tr>
        <td>
        <table cellpadding="0" cellspacing="0" width="100%" border="0">
                <thead>
                    <th colspan="3" style="padding:10px 15px 10px 15px;
                        text-align:left; color:#1189BC; font-size:14px;
                        font-weight:600; text-transform:uppercase;
                        background-color:#fff; border-left: 1px solid #d3d4d8;
                        border-right: 1px solid #d3d4d8;">
                        Order Detail:
                    </th>							   
                </thead>
        </table>
        </td>
    </tr>
    
    <table cellpadding="0" cellspacing="0" width="100%" border="0" >
    <tr>
        <thead style="background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold">
            <th style="padding:10px 15px; text-align:left;">Product</th>
            <th style="padding:10px 0px; text-align:center;">Qty</th>
            <th style="padding:10px 15px; text-align:right">Price</th>
        </thead>
    </tr>
    
    <tr style="background:#fff;">
        <td style="padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;">             
            <p style="margin:0; font-weight:bold">Product Name</p>
            <p style="margin:0px; color:#666; font-size:12px">
                <span style="margin:5px 5px 0px 0px"><?= $email['event_title'] ?><b style="color:#333;">100</b></span>
            </p>          
        </td>  
        <td width="50" style="padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold">         
             1  </td>         
        <td width="80" style="padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold"> <?= $email['subscription_price'] ?></td>					            
    </tr>    

     
    <tr style="text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px">
        <td style="border-right:1px solid #1189BC;"></td>
        <td width="80" style="padding:12px 15px; background:#f5af19">Sub Total</td>
        <td width="100" style="padding:12px 15px; background:#f5af19; font-size:18px"><?= $email['subscription_price'] ?></td>					
    </tr>
    </table>
</table>