<?php

namespace backend\components;

use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveField;
use Yii;

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
    public $errorOptions = ['class' => 'form-control-feedback'];
    
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
        
        //$label = Html::tag('span', '');
//        $label = Html::tag('i', '', ['class' => 'fa fa-attachment']);
//        $this->label($label, ['class' => '']);
        
        $this->icon();
        if (!ArrayHelper::keyExists('class', $options)) {
            $options['class'] = '';
        }
        $options['class'] .= ' file-input';
        
        //$this->parts['{input}'] = $this->parts['{label}'];
        $this->parts['{input}'] = Html::activeFileInput($this->model, $this->attribute, $options);

        $this->parts['{label}'] = '';
        //$this->parts['{input}'] .= Html::textInput('file-input-placeholder', '', ['readonly' => true]);

        $this->parts['{input}'] = Html::tag('div', $this->parts['{input}'], ['class' => 'file-input-wrapper']);

        return $this;
    }

    /**
     * @param array $options
     * @return $this
     */
    public function fileDragInput($options = [])
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

        if (!ArrayHelper::keyExists('class', $options)) {
            $options['class'] = '';
        }
        $options['class'] .= ' file-input sr-only';
        if (!ArrayHelper::keyExists('width', $options)) {
            $options['width'] = 200;
        }
        if (!ArrayHelper::keyExists('height', $options)) {
            $options['height'] = 200;
        }
        $this->parts['{input}'] = Html::activeFileInput($this->model, $this->attribute, $options);

        $abs_img = '';

        if ($this->model[$this->attribute] !== null) {
            $abs_img = Html::tag('img', 'Choose files',
                ['class' => 'abs_path', 'src' => $this->model[$this->attribute], 'alt' => 'Image']);
        }


        //$img  = Html::tag('img', 'Choose files', ['class' => 'avatar', 'id' => 'avatar', 'src' => Com::res('img/drag-here.png', false), 'alt' => 'avatar']);

        $abs_img .= Html::tag('i', '', ['class' => 'fa fa-upload']);

        $this->label($abs_img, ['class' => ($abs_img != '') ? 'upload uploaded' : 'upload']);

        $this->parts['{input}'] .= $this->parts['{label}'];
        $this->parts['{label}'] = '';

        /*footer content (progress bar)*/
        $progress_bar_inner = Html::tag('div', '0%', [
            'class' => 'progress-bar progress-bar-striped progress-bar-animated',
            'role' => 'progressbar',
            'aria-valuenow' => 0,
            'aria-valuemin' => 0,
            'aria-valuemax' => 100
        ]);
        $progress_bar = Html::tag('div', $progress_bar_inner, ['class' => 'progress', 'style' => 'display:none']);

        $this->parts['{input}'] = Html::tag('div', $this->parts['{input}'],
                ['class' => 'file-input-wrapper upload']) . $progress_bar/* . $abs_img*/
        ;


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
        Html::addCssClass($options, 'chosen-select form-control');


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
            $options['data-placeholder'] = Yii::t('backend', 'Please select an Option');
        }
        //$items = ArrayHelper::merge(['' => ''], $items);

        return parent::dropDownList($items, $options);
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
            $options['item'] = function ($index, $label, $name, $checked, $value) use ($options) {
                $id = $this->getInputId() . "-$index";
                $radioOptions =  ['value' => $value, 'id' => $id, 'class' => 'custom-control-input'];
                if(isset($options['radioOptions'])) {
                    $radioOptions = array_merge($radioOptions , $options['radioOptions']);
                }
                $radio = Html::radio($name, $checked,$radioOptions);
                $radio .= Html::label($label, $id, ['class' => 'custom-control-label']);
                $Html = Html::tag('div', $radio, ['class' => 'custom-control custom-radio']);
                
                return $Html;
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

        Html::addCssClass($options, 'switch');

        $this->parts['{input}'] .= Html::tag('span', '', ['class' => 'slider']);

        $this->parts['{input}'] = Html::label($this->parts['{input}'], $id, $options);


        return $this;
    }

    /**
     * @return $this
     * @internal param array $options
     */
    public function dateInput()
    {
        $this->textInput();

        $html = Html::tag(
            'span',
            '<i class="icon-th mdi mdi-calendar"></i>',
            ['class' => 'input-group-addon btn btn-primary']
        );

        $this->parts['{input}'] .= $html;
        $this->parts['{input}'] = Html::tag(
            'div',
            $this->parts['{input}'],
            [
                'data-min-view' => '1',
                'data-date-format' => 'yyyy-mm-dd',
                'class' => 'input-group date datetimepicker'
            ]
        );

        return $this;
    }


    /**
     *
     * @param string $icon
     * @param bool $left
     * @param bool $raw
     * @return $this
     */
    public function icon($icon = null, $left = true, $raw = false)
    {
        if ($icon === null) {
            return $this;
        }
        $html = sprintf('<i class="fa fa-%s"></i>', $icon);
        if ($raw) {
            $html = $icon;
        }

        $html = Html::tag(
            'span',
            $html,
            ['class' => sprintf('input-group-addon %s', $icon)]
        );
        if ($left) {
            $this->parts['{input}'] = $html . $this->parts['{input}'];
        } else {
            $this->parts['{input}'] .= $html;
        }
        $this->parts['{input}'] = Html::tag(
            'div',
            $this->parts['{input}'],
            ['class' => 'input-group']
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

        $this->parts['{input}'] .= Html::tag('span', '', ['class' => 'mdi mdi-eye pwd-viewer-toggle']);

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
            $this->options['class'] .= ' no-label';
        }
        parent::label($label, $options);

        return $this;
    }
}