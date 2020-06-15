<?php

use yii\db\Connection;


return [
    'components' => [
        'db' => [
            'class' => Connection::class,
             'dsn' => 'mysql:host=148.72.88.28;dbname=worldtradehub',
            'username' => 'worldtradehub_dev',
            'password' => 'VWpx+W?E7YB}'
            'charset' => 'utf8',
        ],
        // 'rabbitmq' => [
        //     'class' => \mikemadisonweb\rabbitmq\Configuration::class,
        //     'connections' => [
        //         'default' => [
        //             'host' => '192.168.1.224',
        //             'port' => '5672',
        //             'user' => 'guest',
        //             'password' => 'guest',
        //             'vhost' => '/',
        //             'heartbeat' => 0,
        //         ]
        //     ]
        // ]
    ],
];
