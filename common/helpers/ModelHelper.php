<?php

namespace common\helpers;

use common\components\CModel;
use yii\base\Arrayable;
use yii\base\BaseObject;
use yii\helpers\ArrayHelper;

/**
 * Class ModelHelper
 * @package common\helpers
 *
 * 
 */
class ModelHelper extends BaseObject
{
    /**
     * @var array
     */
    public $fieldScenario = [];
    /**
     * @var self
     */
    private static $instance;

    /**
     * @return ModelHelper
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * @param $class
     * @param $fieldScenario
     * @return $this
     */
    public function setFieldsScenario($class, $fieldScenario)
    {   
        if (!ArrayHelper::keyExists($class, $this->fieldScenario)) {
            $this->fieldScenario[$class] = $fieldScenario;
        }
        
        return $this;
    }

    /**
     * @param $class
     * @return string|null
     */
    public function getFieldsScenario($class)
    {
        if (ArrayHelper::keyExists($class, $this->fieldScenario)) {
            return $this->fieldScenario[$class];
        }

        return CModel::FIELDS_SCENARIO_DEFAULT;
    }

    /**
     * @param $model
     * @return array
     *
     * @deprecated
     */
    private function getFields($model)
    {
        $fields = [];
        if ($model instanceof CModel) {
            $fieldScenario = $this->getFieldsScenario(get_class($model));
            $fieldScenarios = $model->fieldsScenarios();

            if (ArrayHelper::keyExists($fieldScenario, $fieldScenarios)) {
                $fields = $fieldScenarios[$fieldScenario];
            }
        }

        return $fields;
    }

    /**
     * @param $model
     * @param array $fields
     * @return array
     */
    public function serializeModel($model, array $fields = [])
    {
        if ($model instanceof Arrayable) {
            return $model->toArray($fields);
        }

        return $model;
    }

    /**
     * @param array $models
     * @param array $fields
     * @return array
     */
    public function serializeModels(array $models, array $fields = [])
    {
        foreach ($models as $i => $model) {
            if ($model instanceof Arrayable) {
                $models[$i] = $model->toArray($fields);
            } elseif (is_array($model)) {
                $models[$i] = ArrayHelper::toArray($model);
            }
        }
        return $models;
    }
}