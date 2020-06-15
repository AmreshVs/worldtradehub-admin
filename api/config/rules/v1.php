<?php

use api\components\CUrlRule;

return [
    [
        'class' => CUrlRule::class,
        'controller' => [
            'v1/language'
        ],
    ],
    [
        'class' => CUrlRule::class,
        'controller' => [
            'v1/user'
        ],
        'extraPatterns' => [
            'GET view' => 'view',
            'POST login' => 'login',
            'POST otp-login' => 'otp-login',
            'POST register' => 'register',
            'POST verify_otp' => 'verify_otp',
            'POST resend_otp' => 'resend_otp',
            'POST forgot-password' => 'forgot-password',
            'POST update' => 'update',
        ]
    ],
    [
        'class' => CUrlRule::class,
        'controller' => [
            'v1/expo'
        ],
        'extraPatterns' => [
            //'GET' => 'index',
    
        ]
    ],
    [
        'class' => CUrlRule::class,
        'controller' => [
            'v1/ticket'
        ],
        'extraPatterns' => [
            'POST update' => 'update',
            'GET get-orders' => 'get-orders',
            'GET view-stall' => 'view-stall',
            'GET history' => 'history',
    
        ]
    ],
    [
        'class' => CUrlRule::class,
        'controller' => [
            'v1/favourite'
        ],
        'extraPatterns' => [
            'GET create' => 'create',
    
        ]
    ],
    [
        'class' => CUrlRule::class,
        'controller' => [
            'v1/address'
        ],
        'extraPatterns' => [
            'GET get-country' => 'get-country',
            'GET get-state' => 'get-state',
            'GET get-city' => 'get-city',

    
        ]
    ]
    
];
