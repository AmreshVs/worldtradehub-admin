<?php

namespace common\models;

use common\models\base\BaseRole;
use common\components\AttributeKeyGeneratorBehaviour;

/**
 * Class Role
 * @package common\models
 */
class Role extends BaseRole
{
    /**
     * 
     * @return array
     */
    public function behaviors()
    {
        $behaviors = parent::behaviors();
        
        $behaviors[] = [
            'class' => AttributeKeyGeneratorBehaviour::class,
            'attributes' => [
                'role_key'
            ]
        ];
        
        return $behaviors;
    }
}
