<?php

use common\models\Configuration;
$appName = Configuration::get(Configuration::APP_NAME);
/*
 * @var $name string
 */
?>

<p style="margin:0px 0px 10px 0px;">
    Dear <b><?= $ticketUser->username ?></b>, 
</p>
<p style="margin:0px 0px 5px 0px;">
    We would like to notify that <b><?= $modelUser->username ?></b> is intrested on your stall <b><?= $ticket->company_name ?> </b>from event <b><?= $EventModel->event_title ?></b>.
</p>
<h3 style="font-size:14px; margin:0px">
      The below are the customer information
</h3>
<table>
    <tbody>
        <tr>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px;" width="150"> Full name</td>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px; font-weight:bold"><?= $modelUser->username ?></td>
        </tr>
        <tr>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px;" width="150"> Email Address</td>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px; font-weight:bold"><?= $modelUser->email ?></td>
        </tr>
         <tr>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px;" width="150"> Mobile</td>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px; font-weight:bold"><?= $modelUser->mobile_number?></td>
        </tr>
    </tbody>
</table>

    
  

							


