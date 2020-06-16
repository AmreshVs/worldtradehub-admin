<?php

use backend\models\AdminUser;
use backend\models\Vendor;
use backend\modules\apiLog\ApiLogModule;
use backend\modules\delivery\DeliveryModule;
use backend\modules\translation\TranslationModule;
use yii\log\FileTarget;

$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

if(!defined('APP_USER_SCOPE')){
    define('APP_USER_SCOPE',ACCESS_RULE_ADMIN);
}


switch (APP_USER_SCOPE) {
    case ACCESS_RULE_VENDOR:
            $user=[
            'identityClass' => Vendor::class,
            'enableAutoLogin' => true,
            'loginUrl' => ['login'],
            'identityCookie' => [
                'name' => _userScopeKey('_identity-%s-backend-'.APP_USER_SCOPE),
                'httpOnly' => true,
            ],
            'on afterLogin' => [Vendor::class, 'afterLogin'],
        ];
        $scopeRules = [];
        $scopeComponents=[

        ];

        break;
    
    default:
        $user = [
            'identityClass' => AdminUser::class,
            'enableAutoLogin' => true,
            'loginUrl' => ['login'],
            'identityCookie' => [
                'name' => _userScopeKey('_identity-%s-backend-'.APP_USER_SCOPE),
                'httpOnly' => true,
            ],
            'on afterLogin' => [AdminUser::class, 'afterLogin'],
        ];
        $scopeRules = [];
        $scopeComponents=[];
        break;
}

$rules =[
    'profile' => 'admin-user/profile',
    'logout' => 'login/logout',
    'admin-update' => 'admin-user/admin-update',
    'change-password' => 'admin-user/change-password',
    'forgot-password' => 'admin-user/forgot-password',
    'password-reset' => 'admin-user/password-reset',

    '<controller:\w+>/<id:\d+>' => '<controller>/view',
    '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
    //'<controller:\w+>/<action:\w+>/<page:\d+>' => '<controller>/<action>',
    '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
];
if(count($scopeRules))
    $rules = arrar_merge($rules ,$scopeRules);


$components=[
        'request' => [
            'csrfParam' => _userScopeKey('_csrf-%s-backend-'.APP_USER_SCOPE),
        ],
        'user' => $user,
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => _userScopeKey('advanced-%s-backend-'.APP_USER_SCOPE),
        ],


        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => FileTarget::class,
                    'levels' => ['error', 'warning'],
                ],
//                [
//                    'class' => 'yii\log\EmailTarget',
//                    'levels' => ['error'],
//                    'categories' => ['yii\db\*'],
//                    'message' => [
//                       'from' => ['log@example.com'],
//                       'to' => ['admin@example.com', 'gautam.e@.com'],
//                       'subject' => 'Database errors at example.com',
//                    ],
//                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        /**
         * Yii2 assets clear cache
         * @link http://stackoverflow.com/a/26114551/5798881
         */
        'assetManager' => [
            'appendTimestamp' => true,
            'linkAssets' => true
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'enableStrictParsing' => false,
            'rules' => $rules,
        ],
    ];


if(count($scopeComponents))
    $components = array_merge($components,$scopeComponents);

return [
    'language' => 'en',
    
    // set source language to be English
    'sourceLanguage' => 'en-US',
    'id' => _userScopeKey('%s-backend'),
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'modules' => [
        'translation' => [
            'class' => TranslationModule::class
        ],
        'apiLog' => [
            'class' => ApiLogModule::class
        ],
        'delivery' => [
            'class' => DeliveryModule::class
        ],
    ],
    'components' => $components,
    'defaultRoute' => 'ticket',
    'params' => $params,
];
