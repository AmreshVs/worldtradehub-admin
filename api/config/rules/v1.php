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
            'v1/event'
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
            //'GET get-orders' => 'get-orders',
            'OPTIONS get-orders' => 'options',
            'GET get-orders' => 'get-orders',

            'OPTIONS exhibitor-company-infomration' => 'options',
            'POST exhibitor-company-infomration' => 'exhibitor-company-infomration',

            'OPTIONS exhibitor-stall-book' => 'options',
            'POST exhibitor-stall-book' => 'exhibitor-stall-book',

            'OPTIONS exhibitor-package-select' => 'options',
            'POST exhibitor-package-select' => 'exhibitor-package-select',

            'OPTIONS visitor-package-select' => 'options',
            'POST visitor-package-select' => 'visitor-package-select',

            'OPTIONS view-stall' => 'options',
            'GET view-stall' => 'view-stall',

            'OPTIONS history' => 'options',
            'GET history' => 'history',

            'OPTIONS image-upload' => 'options',
            'POST image-upload' => 'image-upload',

            'OPTIONS view-stall-details' => 'options',
            'GET view-stall-details' => 'view-stall-details',

            'OPTIONS update-stall-details' => 'options',
            'POST update-stall-details' => 'update-stall-details',
    
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
