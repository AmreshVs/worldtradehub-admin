<?php
$isDebugMode = false;
if (array_key_exists('env', $_GET) && $_GET['env'] === 'dev') {
    $isDebugMode = true;
}
defined('YII_DEBUG') or define('YII_DEBUG', $isDebugMode);
defined('YII_ENV') or define('YII_ENV', 'prod');

require __DIR__ . '/../../vendor/autoload.php';
require __DIR__ . '/../../vendor/yiisoft/yii2/Yii.php';
require __DIR__ . '/../../common/config/bootstrap.php';
require __DIR__ . '/../../backend/config/bootstrap.php';
require __DIR__ . '/../../app/vendor/config.php';

$config = yii\helpers\ArrayHelper::merge(
    require __DIR__ . '/../../common/config/main.php',
    require __DIR__ . '/../../common/config/main-local.php',
    require __DIR__ . '/../../backend/config/main.php',
    require __DIR__ . '/../../backend/config/main-local.php'
);

(new yii\web\Application($config))->run();