<?php

use yii\helpers\Html;
use common\models\Configuration;

/* @var $this \yii\web\View view component instance */
/* @var $message \yii\mail\MessageInterface the message being composed */
/* @var $content string main view render result */

$appName = Configuration::get(Configuration::APP_NAME);
$appSupportEmail = Configuration::get(Configuration::APP_EMAIL);

$appSocialMedia = [
    [
        'key' => Configuration::FACEBOOK_URL,
        'icon' => ''
    ],
    [
        'key' => Configuration::TWITTER_URL,
        'icon' => ''
    ],
    [
        'key' => Configuration::YOUTUBE_URL,
        'icon' => ''
    ],
    [
        'key' => Configuration::INSTAGRAM_URL,
        'icon' => ''
    ]
];

$uploadHelper = \common\helpers\UploadHelper::getInstance();
?>
<?php $this->beginPage() ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<?= Yii::$app->charset ?>"/>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title><?= Html::encode($this->title) ?></title>
    <style>
        b {
            font-weight: 600
        }
    </style>
    <?php $this->head() ?>
</head>
<body style="background:#e6e7ea">
<?php $this->beginBody() ?>
<table cellpadding="0" cellspacing="0" width="100%" border="0" align="center"
       style="padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;">
    <tbody>
    <tr>
        <td width="100%" valign="top">
            <table cellpadding="0" cellspacing="0" border="0" align="center"
                   style="max-width:600px; margin:0 auto; width: 100%;">
                <tbody>
                <tr>
                    <td align="center" style="padding-bottom:10px">
                        <?=
                        Html::a(
                            Html::img(
                                $uploadHelper->get(
                                    Configuration::get(Configuration::APP_LOGO_PATH),
                                    true
                                ),
                                ['width' => 90, 'style' => 'border-radius:4px']
                            )
                        )
                        ?>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0" width="100%" border="0" align="center"
                               style="box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px">
                            <tbody>
                            <tr>
                                <td valign="middle"
                                    style="background-color:#47c9f1; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px">
                                    <h1 style="margin:0px; line-height:normal; font-weight:normal; font-size:20px">
                                        <?= $this->title ?>
                                    </h1>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table cellpadding="0" cellspacing="0" width="100%" border="0" align="center"
                                           style="background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;">
                                        <tbody>
                                        <tr>
                                            <td style="padding:20px 20px 15px 20px;">
                                                <?= $content ?>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td valign="middle"
                                    style="background-color:#47c9f1; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px">
                                    <table cellpadding="0" cellspacing="0" width="100%" border="0">
                                        <td>
                                            <span style="font-weight:300; font-size:13px">
                                                Best Regards,</span>
                                            <br>The <?= $appName ?> Team.
                                        </td>
                                        <td style="text-align:right; padding-left:15px;">
                                            <span style="font-weight:300; font-size:13px">For more information</span><br>
                                            <a style="color:#fff; text-decoration:none">
                                                <?= $appSupportEmail ?>
                                            </a>
                                        </td>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <?php if (false): ?>
                <tr>
                    <td valign="middle" style="padding:15px 20px 10px 20px; text-align:center">
                        <table cellpadding="0" cellspacing="0" width="100%" border="0">
                            <td>
                                <p style="margin: 0px 0px 5px 0px; color: #64656b;">Social with us</p>

                                <?php foreach ($appSocialMedia as $url => $media):
                                    if (($url = Configuration::get($media['key'])) === null) {
                                        continue;
                                    }
                                    ?>
                                <?php endforeach; ?>
                                <a href="#"><img src="icons/facebook.png" style="margin:2px"></a>
                                <a href="#"><img src="icons/twitter.png" style="margin:2px"></a>
                                <a href="#"><img src="icons/youtube.png" style="margin:2px"></a>
                                <a href="#"><img src="icons/instagram.png" style="margin:2px"></a>
                            </td>
                        </table>
                    </td>
                </tr>
                <?php endif; ?>
                <tr>
                    <td valign="middle"
                        style="padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px">
                        <p style="margin:0px 0px 15px 0px">
                            Questions? The <b><?= $appName ?></b> team is always here to help.
                            <br>Contact <b><?= $appSupportEmail ?></b> and we&apos;ll get back to you soon.
                        </p>
                        &copy; <?= date('Y') ?> <?= $appName ?>. All rights reserved.
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
