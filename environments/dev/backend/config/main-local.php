<?php

use yii\debug\Module;

$config = [
    'components' => [
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => '',
        ],
    ],
];

if (!YII_ENV_TEST) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => Module::class,
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => \yii\gii\Module::class,
        'allowedIPs' => ['192.168.*', '::1'],

        'generators' => [
            # Custom model Generator : A Vijay
            'model' => [
                'class' => common\modules\gii\model\Generator::class,
                'apps' => ['api/modules/v1']
            ]
        ]
    ];
}

return $config;
