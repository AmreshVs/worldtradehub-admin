<?php

namespace api\components;

use yii\rest\UrlRule;

/**
 *
 * Class CUrlRule
 * @package api\components
 *
 * @author yii2
 */
class CUrlRule extends UrlRule
{
    /**
     * @var bool
     * @override true
     */
    public $pluralize = false;

    /**
     * @var array
     */
    public $tokens = [
        '{id}' => '<id:\\w+>'
    ];
}