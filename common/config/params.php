<?php

$constant = [
    'STATUS_SUCCESS' => 1,
    'STATUS_FAIL' => 0,
    'APP' => 'Delivery-Squad',
    'APP_LANGUAGE' => 'app-language',
    'ACCESS_RULE' => 'ACCESS_RULE',
    'API_HOST' => sprintf('%s', $_SERVER['HTTP_HOST'])
];

foreach ($constant as $key => $value) {
    if (defined($key)) {
        continue;
    }
    define($key, $value);

}

//define('STATUS_FAIL', 0);
//
//define('APP', 'tabaogo');
//define('APP_LANGUAGE', 'app-language');
//define('ACCESS_RULE', 'ACCESS_RULE');

//define('API_HOST', sprintf('%s', $_SERVER['HTTP_HOST']));

return [
    'adminEmail' => 'admin@example.com',
    'supportEmail' => 'support@example.com',
    'user.passwordResetTokenExpire' => 3600,
];
