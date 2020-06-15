<?php
namespace common\models;

use common\models\base\BaseEvents;
use common\components\AttributeKeyGeneratorBehaviour;
use Yii;
use yii\db\ActiveQuery;

/**
 * Class Events
 * @package common\models
 */
class Events extends BaseEvents
{
	 /**
     * @return array
     */
    public function behaviors()
    {
        $behaviors = parent::behaviors();

        $behaviors[] = [
            'class' => AttributeKeyGeneratorBehaviour::class,
            'attributes' => [
                'event_key'
            ]
        ];

        return $behaviors;
    }
}
