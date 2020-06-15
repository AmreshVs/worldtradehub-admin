<?php

use common\models\Configuration;
$appName = Configuration::get(Configuration::APP_NAME);
/*
 * @var $name string
 */
?>

<p style="margin:0px 0px 10px 0px;">
    Dear <b><?= $name?></b>, 
</p>
<p style="margin:0px 0px 5px 0px;">
    Your <b><?=Configuration::get(Configuration::APP_NAME) ?></b> user account has been created Successfully!
</p>
<h3 style="font-size:14px; margin:0px">
      Your demo account details on <span style="color: #1695CA;"><?= $appName ?></span>
</h3>
<table>
    <tbody>
        <tr>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px;" width="150"> First Name</td>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px; font-weight:bold"><?= $name?></td>
        </tr>
        <tr>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px;" width="150"> Last Name</td>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px; font-weight:bold"><?= $lastName?></td>
        </tr>
         <tr>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px;" width="150"> Phone Number</td>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px; font-weight:bold"><?= $mobile?></td>
        </tr>
        <tr>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px;" width="150"> Email Address</td>
            <td style="border: 1px dashed #b7b9bd; padding: 10px 15px; font-weight:bold"><?= $email?></td>
        </tr>
    </tbody>
</table>

    
  

							


