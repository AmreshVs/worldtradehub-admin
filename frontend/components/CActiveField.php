<?php

namespace frontend\components;

use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveField;

/**
 * CActiveField is the customized base ActiveField class.
 * This class is used to customizing the rendering of form fields that use CActiveForm widget
 * for forms.
 *
 * @author yii2
 */
class CActiveField extends ActiveField
{

    /**
     *
     * @var string
     */
    public $template = "{label}\n{input}\n{hint}\n{error}";

    /**
     *
     * @var array
     */
    public $inputOptions = ['class' => 'form-control'];

    /**
     *
     * @var array
     */
    public $labelOptions = [];

    /**
     *
     * @var array
     */
    public $options = ['class' => 'form-group'];


    /**
     * @param array $options
     * @return ActiveField
     *
     */
    public function hiddenInput($options = [])
    {
        $this->template = '{input}';

        return parent::hiddenInput($options);
    }

    /**
     * @param array $options
     * @return $this
     */
    public function fileInput($options = [])
    {
        // https://github.com/yiisoft/yii2/pull/795
        if ($this->inputOptions !== ['class' => 'form-control']) {
            $options = array_merge($this->inputOptions, $options);
        }
        // https://github.com/yiisoft/yii2/issues/8779
        if (!isset($this->form->options['enctype'])) {
            $this->form->options['enctype'] = 'multipart/form-data';
        }
        $this->addAriaAttributes($options);
        $this->adjustLabelFor($options);

        $this->icon();

        $this->parts['{input}'] = Html::activeFileInput($this->model, $this->attribute, ['class' => 'inputfile']);

        $label = Html::tag('i', '', ['class' => 'mdi mdi-upload']);
        $label .= Html::tag('span', 'Browse files');
        $this->label($label, ['class' => 'btn btn-lg btn-primary']);

        $this->parts['{input}'] .= $this->parts['{label}'];
        $this->parts['{label}'] = '';

        return $this;
    }

    /**
     *
     * @param string $icon
     * @param array $options
     * @return $this
     */
    public function icon($icon = null, array $options = [])
    {
        $options = ArrayHelper::merge(['data-left' => false, 'data-raw' => false], $options);
        if ($icon === null) {
            return $this;
        }
        $html = sprintf('<i class="fa fa-%s"></i>', $icon);

        if ($options['data-raw'] === true) {
            $html = $icon;
        }

        $iconClass = sprintf('input-group-addon %s', $icon);
        if (ArrayHelper::keyExists('data-btn', $options) && $options['data-btn'] === true) {
            $iconClass = sprintf('input-group-btn %s', $icon);
            $btnOptions = ['class' => 'btn btn-primary'];
            if (ArrayHelper::keyExists('data-btn-type', $options)) {
                $btnOptions['type'] = $options['data-btn-type'];
            }

            $html = Html::button($html, $btnOptions);
        }


        if ($options['data-left'] === true) {
            $this->parts['{input}'] = $html . $this->parts['{input}'];
        } else {
            $this->parts['{input}'] .= $html;
        }

        if (!ArrayHelper::keyExists('class', $options)) {
            $options['class'] = '';
        }
        $options['class'] .= ' input-group';

        return $this;
    }

    /**
     * @param null $label
     * @param array $options
     * @return $this
     */
    public function label($label = null, $options = [])
    {
        if ($label === false) {
            Html::addCssClass($this->options, 'no-label');
        }
        parent::label($label, $options);

        return $this;
    }

    /**
     * @param array $options
     * @return $this
     */
    public function imageInput(array $options = [])
    {
        // https://github.com/yiisoft/yii2/issues/8779
        if (!isset($this->form->options['enctype'])) {
            $this->form->options['enctype'] = 'multipart/form-data';
        }

        $this->addAriaAttributes($options);
        $this->adjustLabelFor($options);

        $this->icon();
        $this->label('', ['class' => '']);

        $label = 'change';
        if (!array_key_exists('value', $options)) {
            $options['value'] = '#';
            $label = 'add';
        }
        $imgWrapper = Html::activeFileInput($this->model, $this->attribute, ['class' => '']);
        $imgWrapper .= Html::img($options['value'], ['data-src' => $options['value']]);
        $imgWrapper .= $this->parts['{label}'];
        $this->parts['{label}'] = '';

        $imgWrapper .= Html::tag('span', $label, ['class' => 'img-input-action']);

        $this->parts['{input}'] = Html::tag('div', $imgWrapper, ['class' => 'img-input-wrapper']);

        return $this;
    }

    /**
     * @param array|string $items
     * @param array $options
     * @param array $conditions
     * @return ActiveField
     */
    public function dropDownList($items, $options = [], $conditions = [])
    {
        if (!array_key_exists('class', $options)) {
            $options['class'] = 'chosen-select form-control';
        }
        $this->template = '{label}{input}{hint}{error}';
        $this->labelOptions = [];

        if (is_string($items)) {
            $model = $items;
            $representingColumn = call_user_func_array([$model, 'representingColumn'], []);
            $primaryKeyColumn = call_user_func_array([$model, 'getPrimaryKeyColumn'], []);

            $items = call_user_func([$model, 'find'])
                ->andWhere($conditions)
                ->orderBy($representingColumn)
                ->all();
            $items = ArrayHelper::map($items, $primaryKeyColumn, $representingColumn);

            if (!array_key_exists('data-placeholder', $options)) {
                $options['data-placeholder'] = sprintf('Select %s',
                    call_user_func_array([$model, 'representingColumnLabel'], []));
            }
        }
        if (!array_key_exists('data-placeholder', $options)) {
            $options['data-placeholder'] = 'Please Select an option';
        }
        // $items = ArrayHelper::merge(['' => ''], $items);

        return parent::dropDownList($items, $options); // TODO: Change the autogenerated stub
    }

    /**
     * @param array $items
     * @param array $options
     * @return ActiveField
     */
    public function radioList($items, $options = [])
    {
        $this->template = '{label}{input}{hint}{error}';
        $this->labelOptions = [];

        if (!array_key_exists('item', $options)) {
            /**
             * @param $index
             * @param $label
             * @param $name
             * @param $checked
             * @param $value
             * @return string
             * @link http://stackoverflow.com/questions/28234684/yii-2-radiolist-template
             * @link http://stackoverflow.com/a/28631700/5798881
             */
            $options['item'] = function ($index, $label, $name, $checked, $value) {
                $id = $this->getInputId() . "-$index";
                $radio = Html::radio($name, $checked, ['value' => $value, 'id' => $id, 'class' => 'radio']);
                $radio .= Html::label($label, $id, ['class' => 'radio']);

                return $radio;
            };
        }

        return parent::radioList($items, $options); // TODO: Change the autogenerated stub
    }

    /**
     * @param array $options
     * @return $this
     * @internal param array $input
     */
    public function switchInput(array $options = [])
    {
        $this->template = '{input}';

        $this->label(false);
        $id = $this->getInputId();
        $this->checkbox(['id' => $id], false);

        $this->parts['{input}'] .= Html::tag('span', Html::label('', $id));

        if (!array_key_exists('class', $options)) {
            $options['class'] = '';
        }
        $options['class'] .= ' switch-button switch-button';

        $this->parts['{input}'] = Html::tag('div', $this->parts['{input}'], $options);

        return $this;
    }

    /**
     * @param $options array
     * @return $this
     */
    public function dateInput(array $options = [])
    {
        $options = ArrayHelper::merge(['type' => 'default', 'class' => ''], $options);

        $this->textInput();

        $html = Html::tag(
            'span',
            '<i class="icon-th mdi mdi-calendar"></i>',
            ['class' => 'input-group-addon btn btn-primary']
        );

        $pickerConfig = [
            'data-min-view' => '2',
            'data-date-format' => 'dd/mm/yyyy',
            'class' => 'input-group date ' . $options['class']
        ];

        switch ($options['type']) {
            case 'no-future-date':
                $pickerConfig['class'] .= ' no-future-date';
                break;
            case 'no-past-date':
                $pickerConfig['class'] .= ' no-past-date';
                break;
            case 'default':
                Html::addCssClass($pickerConfig, 'default-date-picker');
                break;
            default:
                $pickerConfig['class'] .= ' no-future-date';
                break;
        }

        $this->parts['{input}'] .= $html;
        $this->parts['{input}'] = Html::tag(
            'div',
            $this->parts['{input}'],
            $pickerConfig
        );

        return $this;
    }

    /**
     * @param array $options
     * @return $this
     */
    public function passwordInput($options = [])
    {
        $this->options['class'] .= ' password-field-group';

        parent::passwordInput($options);

        $this->parts['{input}'] .= Html::tag('span', '', ['class' => 'las la-eye pwd-viewer-toggle']);

        return $this;
    }
}