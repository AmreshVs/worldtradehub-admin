<?php

use yii\db\Connection;

return [
    'components' => [
        'db' => [
            'class' => Connection::class,
            'dsn' => 'mysql:host=148.72.88.28s;dbname=worldtradehub',
            'username' => 'worldtradehub_dev',
            'password' => 'VWpx+W?E7YB}',
            'charset' => 'utf8',
        ],
        // 'rabbitmq' => [
        //     'class' => \mikemadisonweb\rabbitmq\Configuration::class,
        //     'connections' => [
        //         'default' => [
        //             'host' => '137.135.114.149',
        //             'port' => '15672',
        //             'user' => 'admin',
        //             'password' => '6pA/u}mU#:RPa+#h',
        //             'vhost' => '/',
        //             'heartbeat' => 0,
        //         ]
        //     ]
        // ]
    ],
];
