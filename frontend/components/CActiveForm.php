<?php

namespace frontend\components;

use yii\base\InvalidCallException;
use yii\base\Model;
use yii\db\ActiveRecord;
use yii\helpers\Inflector;
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
     * @var string
     */
    public $successCssClass = 'success';
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

    /**
     * Runs the widget.
     * This registers the necessary JavaScript code and renders the form close tag.
     *
     * @return string|void
     * @throws \ReflectionException
     */
    public function run()
    {
        if ($this->model !== null) {
            $modelName = '';
            if ($this->model instanceof ActiveRecord) {
                $modelName = $this->model->tableName();
            } else {
                if ($this->model instanceof Model) {
                    $reflect = new \ReflectionClass($this->model);
                    $modelName = Inflector::underscore($reflect->getShortName());

                }
            }
            $modelName = array_map(function ($value) {
                return strtolower($value);
            }, explode('_', preg_replace('/[{}%]/', '', $modelName)));
            $modelName = implode('-', $modelName);
            if(empty($this->options['id'])){
                $this->options['id'] = "$modelName-form";
            }
            $this->options['data-validate'] = 'true';
        }

        try {
            return parent::run();
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
            $attribute .= "[{$options['lang']}]";
            unset($options['lang']);
        }
        return parent::field($model, $attribute, $options);
    }
}