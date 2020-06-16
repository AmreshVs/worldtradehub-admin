<?php

use api\components\CResponse;
use yii\helpers\ArrayHelper;
use yii\log\FileTarget;

$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

$config = [
    'id' => _userScopeKey('%s-api'),
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'controllerNamespace' => 'api\controllers',
    'modules' => [
        'v1' => [
            'class' => api\modules\v1\Module::class
        ]
    ],
    'components' => [
        'request' => [
            'enableCookieValidation' => false,
            'enableCsrfValidation' => false,
        ],
        'user' => [
            'identityClass' => common\models\User::class,
            'enableAutoLogin' => false
        ],
        'vendor' => [
            'identityClass' => common\models\Vendor::class,
            'enableAutoLogin' => false
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => FileTarget::class,
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'enableStrictParsing' => true,
            'showScriptName' => false,
            /**
             * Since the rules are very large to configure, so moved the rules
             * for individual versions / modules
             * @author : yii2
             */
            'rules' => [
                'spin-2-win' => 'spinner',
            ],
        ],
        'response' => ['class' => CResponse::class],
    ],
    'params' => $params
];

/**
 * Rules for API versions
 *
 * For code cleanness and maintainability rules are grouped under each api versions inside
 * rules/v{versionNumber}.php file
 *
 * Getting those rules and supplying to application
 * @author yii2
 */
$versionRules = [];
if (ArrayHelper::keyExists('modules', $config)) {
    $versionRules = [];
    foreach ((array)$config['modules'] as $module => $moduleConfig) {
        $ruleFile = sprintf('rules%s%s.php', DIRECTORY_SEPARATOR, $module);
        $ruleFile = sprintf('%s%s%s', __DIR__, DIRECTORY_SEPARATOR, $ruleFile);
        if (!file_exists($ruleFile)) {
            continue;
        }
        $versionRules = ArrayHelper::merge($versionRules, require $ruleFile);
    }
}
$versionRules = ArrayHelper::merge($config['components']['urlManager']['rules'], $versionRules);
$config['components']['urlManager']['rules'] = $versionRules;

return $config;