<?php

use common\models\User;
use yii\log\FileTarget;
use frontend\components\CmsDynamicRoute;

$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => _userScopeKey('%s-frontend'),
    'basePath' => dirname(__DIR__),
    'bootstrap' => [
        'log',
//        CmsDynamicRoute::class
    ],

    'controllerNamespace' => 'frontend\controllers',
    'defaultRoute' => 'home',
    // 'modules' => [
    //     'user' => [
    //         'class' => dektrium\user\Module::class # 'dektrium\user\Module',
    //     ]
    // ],
    'components' => [
        'request' => [
            'csrfParam' => _userScopeKey('_csrf-%s-frontend'),
            'baseUrl' => ''
        ],
        'user' => [
            'identityClass' => User::class,
            'loginUrl' => '/',
            'enableAutoLogin' => true,
            'identityCookie' => [
                'name' => _userScopeKey('_identity-%s-frontend'),
                'httpOnly' => true
            ],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the frontend
            'name' => _userScopeKey('advanced-%s-frontend'),
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
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        /**
         * Yii2 assets clear cache
         * @link http://stackoverflow.com/a/26114551/5798881
         */
        'assetManager' => [
            'appendTimestamp' => true,
            'linkAssets' => true,
            'baseUrl' => '/frontend/web/assets'
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                'signup' => 'page/signup',
                'login' => 'user/login',
                'logout' => 'user/logout',
                'fb-callback' => 'user/fb-callback',
                'order-payment/<id:[A-Za-z0-9\_-]+>' => 'payment/order-payment',
                'user-wishlist/<id:[A-Za-z0-9\_-]+>' => 'user/view-wishlist',
                'page/<page:faq>' => 'page/faq',
                'page/<page:[A-Za-z0-9\_-]+>' => 'page/cms',

                '<controller:\w+>' => '<controller>/index',
                '<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>/<page:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
            ],
        ],
        'authClientCollection' => [
            'class' => \yii\authclient\Collection::class,
            'httpClient' => [
                'transport' => 'yii\httpclient\CurlTransport',
            ],
            'clients' => [
                'google' => [
                    'class' => 'yii\authclient\clients\Google',
                    'clientId'     => '592286770745-tvkugdn7kd7uh400bjuq2bf3tmk9t3aq.apps.googleusercontent.com',
                    'clientSecret' => '1kLpLo-k4YE5MFNOirTdxT2q',
                    //TODO: Have to find  Alternate solution to set return url  this is a temporary fix for return url 
                    'returnUrl'=>  "https://{$_SERVER['HTTP_HOST']}/user/auth?authclient=google",
                    //'returnUrl'=> 'http://tech.system.local.org:1021/user/auth?authclient=google',
                ],
//                'facebook' => [
//                    'class' => 'yii\authclient\clients\Facebook',
//                    'clientId' => '1846843075403980',
//                    'clientSecret' => 'a9d2105434870c5aee3a72e6c323a1e5',
//                ],
            ]
        ],
    ],
        'params' => $params,
];
