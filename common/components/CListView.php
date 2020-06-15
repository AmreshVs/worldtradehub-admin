<?php

namespace common\components;

use Closure;
use yii\widgets\ListView;

/**
 * Class CListView
 * @package common\components
 *
 * @author: yii2
 */
class CListView extends ListView
{
    /**
     * @var array
     */
    public $itemOptions = ['class' => 'item-list'];

    /**
     * @var Closure an anonymous function that is called once BEFORE rendering data model.
     * It should have the following signature:
     *
     * ```php
     * function ()
     * ```
     *
     * The return result of the function will be rendered directly.
     * Note: If the function returns `null`, nothing will be rendered before the item.
     * @see renderBeforeItemList
     * @author A Vijay<vijay.a@.com>
     */
    public $beforeItemList;

    /**
     * @var Closure an anonymous function that is called once AFTER rendering data model.
     *
     * It should have the same signature as [[beforeItemList]].
     *
     * The return result of the function will be rendered directly.
     * Note: If the function returns `null`, nothing will be rendered after the item.
     * @see renderAfterItemList
     * @author A Vijay<vijay.a@.com>
     */
    public $afterItemList;
    /**
     * @var bool
     */
    public $usePrimaryKey = false;

    /**
     * Renders all data models.
     * @return string the rendering result
     */
    public function renderItems()
    {
        $list = [];
        if (($before = $this->renderBeforeItemList()) !== null) {
            $list[] = $before;
        }
        $list[] = parent::renderItems();

        if (($after = $this->renderAfterItemList()) !== null) {
            $list[] = $after;
        }

        return implode('', $list);
    }

    /**
     * Calls [[beforeItemList]] closure, returns execution result.
     * If [[beforeItemList]] is not a closure, `null` will be returned.
     *
     * @return mixed|null
     */
    public function renderBeforeItemList()
    {
        if ($this->beforeItemList instanceof Closure) {
            return call_user_func($this->beforeItemList, $this);
        }
        return null;
    }

    /**
     * Calls [[afterItemList]] closure, returns execution result.
     * If [[afterItemList]] is not a closure, `null` will be returned.
     *
     * @return mixed|null
     */
    public function renderAfterItemList()
    {
        if ($this->afterItemList instanceof Closure) {
            return call_user_func($this->afterItemList, $this);
        }
        return null;
    }

    /**
     * @param mixed $model
     * @param mixed $key
     * @param int $index
     * @return string
     * @throws \yii\base\InvalidConfigException
     */
    public function renderItem($model, $key, $index)
    {
        if (!$this->usePrimaryKey) {
            /* @var $model CModel */
            if (($temp = $model->getKey()) !== null) {
                $key = $temp;
            }
        }
        return parent::renderItem($model, $key, $index);
    }
}