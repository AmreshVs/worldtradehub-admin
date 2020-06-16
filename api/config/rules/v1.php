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
            'POST exhibitor-company-infomration' => 'exhibitor-company-infomration',
            'POST exhibitor-stall-book' => 'exhibitor-stall-book',
            'POST exhibitor-package-select' => 'exhibitor-package-select',
            'POST visitor-package-select' => 'visitor-package-select',
            'GET get-orders' => 'get-orders',
            'GET view-stall' => 'view-stall',
            'GET history' => 'history',
            'POST image-upload' => 'image-upload',
            'GET view-stall-details' => 'view-stall-details',
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
