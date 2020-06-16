<?php
use common\models\Configuration;
$appName = Configuration::get(Configuration::APP_NAME);
/* @var $name string */

?>

<p style="margin:0px 0px 10px 0px;">
   <b>Hi <?= $username ?>, We are Glad to inform that  You have been successfully registered as a customer in <?= $appName ?>.com</b>,
</p>
<p style="margin:0px 0px 5px 0px;">
    Your Login Credentials are<br>
    <b style="color:#000; font-size:15px">Email:</b><p><?= $email ?></p>
    <b style="color:#000; font-size:15px">Password:</b><p><?= $password ?></p>
</p>