<?php

namespace backend\models;

use Yii;
use yii\helpers\ArrayHelper;
/**
 * Class Role
 * @package backend\models
 */
class Role extends \common\models\Role
{
    /**
     * 
     * @return array
     */
    public function rules()
    {
        $rules =  [
            ['role_name', 'required']
        ];

        return ArrayHelper::merge($rules,parent::rules());
    }
    /**
     * 
     * @return array
     */
    public function attributeLabels()
    {
        return [
            'role_name' => Yii::t('backend', 'Role Name'),
            'role_status' => Yii::t('backend', 'Role Status')
        ];
    }
}
