<?php
/**
 * Default App aliases
 */
Yii::setAlias('@common', dirname(__DIR__));
Yii::setAlias('@frontend', dirname(dirname(__DIR__)) . '/frontend');
Yii::setAlias('@backend', dirname(dirname(__DIR__)) . '/backend');
Yii::setAlias('@console', dirname(dirname(__DIR__)) . '/console');

/**
 * Application alias
 */
Yii::setAlias('@internal', Yii::getAlias('@console/internal'));
Yii::setAlias('@api', dirname(dirname(__DIR__)) . '/api');

Yii::setAlias('@uploads', dirname(dirname(__DIR__)) . '/uploads');
Yii::setAlias('@vendor', dirname(dirname(__DIR__)) . '/app/vendor');
Yii::setAlias('@approot', dirname(dirname(__DIR__)));

/**
 * Php annotation library alias
 */
Yii::setAlias('@Addendum', '@common/vendor/Addendum');

define('ACCESS_RULE_VENDOR','vendor');
define('ACCESS_RULE_OUTLET','Outlet');
define('ACCESS_RULE_ADMIN','Admin');