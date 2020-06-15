<?php

namespace backend\modules\translation\models;

/**
 * Class SourceMessage
 * @package backend\modules\translation\models
 */
class SourceMessage extends \common\models\SourceMessage
{

    /**
     * @return array
     */
    public function rules()
    {
        return [
            [['category', 'message'], 'required'],
            [['message'], 'validateMessage']
        ];
    }

    /**
     * @return array
     */
 

      public static function getCategoryList()
    {
        return [
            'api'=>'Mobile',
            'frontend'=>'Frontend',
            'backend'=>'Backend',
            'common'=> 'Common'
    
        ];
    }

    /**
     * @param $attribute
     * @param $params
     * @param $validator
     */
    public function validateMessage($attribute, $params, $validator)
    {
        $model = self::find()->where(['message' => $this->message, 'category' => $this->category]);
        if( !$this->isNewRecord ){
            $model->andWhere(['not in', 'id', [$this->getPrimaryKey()]]);
        }
        if ( $model->one() !== null ){
            $this->addError($attribute, 'Message must be unique. ');
        }
    }
}