<?php

namespace backend\components;

use common\components\CModel;
use Yii;
use yii\grid\GridView;
use yii\helpers\Html;
use yii\base\Model;
use yii\db\ActiveRecord;

/**
 * Class CGridView
 * @package backend\components
 *
 * @author yii2
 */
class CGridView extends GridView
{


    /**
     * @var array
     */
    public $tableOptions = ['class' => 'table table-grid table-striped'];
    
    /**
     * @var bool
     */
    public $usePrimaryKey = false;
    
    public $layout = "{items}\n{pager}";
    
    public $appendFilterModalSelector = true;
    
    /**
     * @var bool
     */
    public $hideFilterRow = false;

    public $pjaxSettings = true;


    public $pager = [
        'options'=>['class'=>'pagination'],   // set clas name used in ui list of pagination
        'prevPageLabel'     => '<',   // Set the label for the "previous" page button
        'nextPageLabel'     => '>',   // Set the label for the "next" page button
        'nextPageCssClass'  =>'action page-item',    // Set CSS class for the "next" page button
        'prevPageCssClass'  =>'action page-item',    // Set CSS class for the "previous" page button
        'firstPageCssClass' =>'action page-item',    // Set CSS class for the "first" page button
        'lastPageCssClass'  =>'action page-item',    // Set CSS class for the "last" page button
        'pageCssClass' => 'page-item ',
        'linkOptions' => [
            'class' => 'page-link',
        ],
    ];
    



    /**
     *
     */
    public function renderPager()
    {
        $this->pager['firstPageLabel'] = Yii::t('backend', 'Previous');
        $this->pager['lastPageLabel'] = Yii::t('backend', 'Last');
        return Html::tag('nav', parent::renderPager(), ['class' => 'Page navigation example']);
    }

    /**
     * @param mixed $model
     * @param mixed $key
     * @param int $index
     * @return string
     * @throws \yii\base\InvalidConfigException
     */
    public function renderTableRow($model, $key, $index)
    {
        if (!$this->usePrimaryKey) {
            /* @var $model CModel */
            if (($temp = $model->getKey()) !== null) {
                $key = $temp;
            }
        }
        return parent::renderTableRow($model, $key, $index);
    }
    
    
    /**
     * @return string
     */
    public function renderFilters()
    {
        if ($this->hideFilterRow) {
            return '';
        }
        return parent::renderFilters();
    }
    
    /**
     *
     */
    public function init()
    {
        parent::init();
        
        if ($this->appendFilterModalSelector && $this->filterModel !== null && ($this->filterModel instanceof Model || $this->filterModel instanceof ActiveRecord)) {
            $modelName = '';

            if ($this->filterModel instanceof ActiveRecord) {
                $modelName = $this->filterModel->tableName();
            } else {
                if ($this->filterModel instanceof Model) {
                    try {
                        $reflect = new \ReflectionClass($this->filterModel);
                        $modelName = Inflector::underscore($reflect->getShortName());

                    } catch (\ReflectionException $exception) {
                    }
                }
            }

            $modelName = array_map(
                'strtolower',
                explode('_', preg_replace('/[{}%]/', '', $modelName))
            );

            $modelName = implode('-', $modelName);

            $this->filterSelector = "#$modelName-form";
        }
    }
}