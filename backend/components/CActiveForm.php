<?php

namespace backend\components;

use yii\base\InvalidCallException;
use yii\db\ActiveRecord;
use yii\widgets\ActiveForm;

/**
 * CActiveForm is the customized base ActiveForm class.
 * Form created in this application should use CActiveForm widget
 *
 * Class CActiveForm
 * @package common\components
 *
 * @author yii2
 */
class CActiveForm extends ActiveForm
{
    /**
     * @var CActiveField
     */
    public $fieldClass = CActiveField::class;
    
    /**
     *
     * @var string
     */
    public $errorCssClass = 'has-danger';
    
    /**
     * @var string
     */
    public $successCssClass = 'has-success';
    /**
     * @var
     */
    private $model;

    /**
     * @param $model
     * @return $this
     */
    public function setModel($model)
    {
        $this->model = $model;
        return $this;
    }

    public function setAction($action)
    {
        $this->action = $action;
        return $this;
    }

    /**
     * Runs the widget.
     * This registers the necessary JavaScript code and renders the form close tag.
     * @throws InvalidCallException if `beginField()` and `endField()` calls are not matching.
     */
    public function run()
    {
        $generateModelId = $this->options['id'] !== '' && substr($this->options['id'], 0,
                strlen(static::$autoIdPrefix)) === static::$autoIdPrefix;

        if ($this->model instanceof ActiveRecord && $generateModelId) {

            $modelName = array_map(function ($value) {
                return strtolower($value);
            }, explode('_', preg_replace('/[{}%]/', '', $this->model->tableName())));
            $modelName = implode('-', $modelName);

            $this->options['id'] = "$modelName-form";
            $this->options['data-validate'] = 'true';
        }
        try {
          return  parent::run(); // TODO: Change the autogenerated stub
        } catch (InvalidCallException $e) {
        }
    }

    /**
     * @param \yii\base\Model $model
     * @param string $attribute
     * @param array $options
     *
     * @return CActiveField | \yii\widgets\ActiveField
     */
    public function field($model, $attribute, $options = [])
    {
        if (array_key_exists('lang', $options)) {
            $start = strpos($attribute, '[');
            $end = strpos($attribute, ']');
            if(is_array($options['lang'])) {
                foreach ($options['lang'] as $key => $value) {
                    $attribute .= "[{$value}]";    
                }
            } else {
                $attribute .= "[{$options['lang']}]";
            }           
            if ($start !== false && $end !== false) {
                $multiple = substr($attribute, $start, $end + 1 - $start);
                $attribute = str_replace($multiple, '', $attribute);
                $attribute .= $multiple;
            }
            unset($options['lang']);
        }
        return parent::field($model, $attribute, $options);
    }
}