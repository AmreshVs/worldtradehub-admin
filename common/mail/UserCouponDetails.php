<?php

/* @var $name string */
$appName = Configuration::get(Configuration::APP_NAME);
?>

<p style="margin:0px 0px 10px 0px;">
<p>Hi <?= $username ?> please use this coupon code <b><?= $couponCode ?></b> to redeem to avail discounts for purchase in <?= $appName ?>.</p>