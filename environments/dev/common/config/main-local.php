<?php

use yii\db\Connection;

return [
    'components' => [
        'db' => [
            'class' => Connection::class,
            'dsn' => 'mysql:host=192.168.1.181;dbname=foodpurby_v4_portland',
            'username' => 'techdevelop',
            'password' => '&$2fra*2!4gs#4',
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
