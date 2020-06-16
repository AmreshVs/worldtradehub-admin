<?php

use yii\caching\FileCache;
use yii\db\Connection;
use yii\i18n\PhpMessageSource;
//use yii\i18n\DbMessageSource;
use yii\swiftmailer\Mailer;
use mikemadisonweb\rabbitmq\Configuration;
use common\helpers\RabbitMQHelper;
use mikemadisonweb\rabbitmq\controllers\ConsumerController;
use mikemadisonweb\rabbitmq\controllers\ProducerController;

if (!function_exists('_userScopeKey')) {
    /**
     * @param $param
     * @return string
     */
    function _userScopeKey($param)
    {
        $app = 'app';
        if (defined('APP')) {
            $app = APP;
        }
        $param = sprintf($param, $app);

        if (defined('USER_SCOPE_KEY')) {
            $param = sprintf("$param%s", sprintf('-%s', USER_SCOPE_KEY));
        }
        return $param;
    }
}

$config = [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'bootstrap' => [],
    'components' => [
        'cache' => [
            'class' => FileCache::class,
        ],
        'i18n' => [
            'translations' => [
                'api*' => [
                    'class' => PhpMessageSource::class,
                    'basePath' => '@common/messages',
                ],
                'backend*' => [
                    'class' => PhpMessageSource::class,
                    'basePath' => '@common/messages',
                ],
                'frontend*' => [
                    'class' => PhpMessageSource::class,
                    'basePath' => '@common/messages',
                ],
                'common*' => [
                    'class' => PhpMessageSource::class,
                    'basePath' => '@common/messages',
                ],
                'yii*' => [
                    'class' => PhpMessageSource::class,
                    'basePath' => '@common/messages',
                ]
            ],

            // 'translations' => [
            //     'api*' => [
            //         'class' => DbMessageSource::class,
            //         'enableCaching'=>false,
            //         'cachingDuration'=>0,
            //         'forceTranslation'=>true,
            //     ],
            //     'frontend*' => [
            //         'class' => DbMessageSource::class,
            //         'enableCaching'=>false,
            //         'cachingDuration'=>0,
            //         'forceTranslation'=>true,
            //     ],
            //     'backend*' => [
            //         'class' => DbMessageSource::class,
            //         'enableCaching'=>false,
            //         'cachingDuration'=>0,
            //         'forceTranslation'=>true,
            //     ],
            //     'common*' => [
            //         'class' => DbMessageSource::class,
            //         'enableCaching'=>false,
            //         'cachingDuration'=>0,
            //         'forceTranslation'=>true,
            //     ],
            //     'yii' => [
            //         'class' => DbMessageSource::class,
            //         'enableCaching'=>false,
            //         'cachingDuration'=>0,
            //         'forceTranslation'=>true,
            //     ],
            // ],
        
        ],
        'mailer' => [
            'class' => Mailer::class,
            'useFileTransport' => false,
            'transport' => [],
            'viewPath' => '@common/mail'
        ],
        'sqliteDb' => [
            'class' => Connection::class,
            'dsn' => 'sqlite:@api/runtime/log',
        ],
        'rabbitmq' => [
            'class' => Configuration::class,
            'connections' => [],
            'producers' => []
        ],
    ],
    'controllerMap' => [
        'rabbitmq-consumer' => ConsumerController::class,
        'rabbitmq-producer' => ProducerController::class,
    ],
    'container' => [
        'definitions' => [],
        'singletons' => [],
    ],
];

$producers = RabbitMQHelper::getProducers();
foreach ($producers as $producer) {
    $config['components']['rabbitmq']['producers'][$producer['type']] = [
        'connection' => 'default',
        'exchange_options' => [
            'name' => $producer['exchange'],
            'type' => 'topic',
            'durable' => true,
            'auto_delete' => false
        ],
        'queue_options' => [
            'declare' => false, // Use this if you don't want to create a queue on producing messages
        ]
    ];
}

return $config;
