<?php

namespace common\components;


use common\helpers\Com;
use yii\base\Behavior;
use yii\base\Model;
use yii\db\BaseActiveRecord;

/**
 * Class KeyGeneratorBehaviour
 * @package common\components
 *
 * AttributeKeyGeneratorBehaviour provides an ability of automatic model attribute key generation.
 * This behavior is very useful in case of usage of ActiveRecord for unique key columns.
 *
 * This behavior should be attached to [[\yii\base\Model]] or [[\yii\db\BaseActiveRecord]] descendant.
 *
 * You should specify exact attributes via [[attributes]].
 *
 * For example:
 *
 * ```php
 * use common\components\AttributeKeyGeneratorBehaviour;
 *
 * class Item extends CModel
 * {
 *     public function behaviors()
 *     {
 *         return [
 *             'key-generator' => [
 *                 'class' => AttributeKeyGeneratorBehaviour::className(),
 *                 'attributes' => [
 *                     'item_key'
 *                 ],
 *             ],
 *         ];
 *     }
 *
 *     // ...
 * }
 * ```
 *
 * @author A Vijay <vijay.a@technoduce.com>
 */
class AttributeKeyGeneratorBehaviour extends Behavior
{
    const KEY_LOWERCASE = 1;
    const KEY_UPPERCASE = 2;

    /**
     * Length of the key
     * @var int
     */
    private $length = 16;
    /**
     * @var Model|BaseActiveRecord the owner of this behavior.
     */
    public $owner;
    /**
     * @var array | string attribute key generator map in format: attributeName or [AttributeName1, AttributeName2].
     * ```php
     *  'item_key'
     * ```
     *  or
     *
     * ```php
     * [
     *     'item_key'
     * ]
     * ```
     *
     * or
     *
     * ```php
     * [
     *      # Default to self::KEY_LOWERCASE
     *     [ 'item_key' => self::KEY_LOWERCASE or self::KEY_UPPERCASE, 'length' => 16 ]
     *
     * ]
     * ```
     *
     */
    public $attributes;

    /**
     * @param \yii\base\Component $owner
     */
    public function attach($owner)
    {
        parent::attach($owner);
    }

    /**
     * @return array
     */
    public function events()
    {
        $events = [];
        $events[BaseActiveRecord::EVENT_BEFORE_INSERT] = 'beforeSave';

        return $events;
    }

    /**
     * @throws \yii\base\Exception
     * @throws \yii\base\InvalidParamException
     */
    public function beforeSave()
    {
        $this->generateKey();
    }

    /**
     * @param array $attributeKeys
     * @return array
     */
    private function sanitize(array $attributeKeys)
    {
        $sanitizedAttributeKeys = [];
        foreach ($attributeKeys as $key => $attribute) {

            if (is_array($attribute)) {
                if ($attribute === []) {
                    continue;
                }
                $length = $this->length;
                if (array_key_exists('length', $attribute)) {
                    $length = $attribute['length'];
                    unset($attribute['length']);
                }
                list($attribute, $keyCase) = each($attribute);
                $key = [
                    $attribute => $keyCase,
                    'length' => $length
                ];

            } else {
                $key = [
                    $attribute => self::KEY_LOWERCASE,
                    'length' => $this->length
                ];
            }

            $sanitizedAttributeKeys[] = $key;
        }

        return $sanitizedAttributeKeys;
    }

    /**
     *
     * @throws \yii\base\Exception
     * @throws \yii\base\InvalidParamException
     */
    protected function generateKey()
    {
        $attributeKeys = [];

        if (is_array($this->attributes)) {
            $attributeKeys = $this->attributes;
        } else {
            if (is_string($this->attributes)) {
                $attributeKeys = [$this->attributes];
            }
        }
        $attributeKeys = $this->sanitize($attributeKeys);


        $ownerAttributes = array_keys($this->owner->getAttributes());

        if ($this->owner->getIsNewRecord()) {
            foreach ($attributeKeys as $attributeKey) {
                $length = $attributeKey['length'];
                unset($attributeKey['length']);

                list($attribute, $keyCase) = [array_keys($attributeKey)[0], array_values($attributeKey)[0]];

                if (!in_array($attribute, $ownerAttributes, true)) {
                    continue;
                }

                while (true) {
                    $key = strtolower(Com::generateRandomString($length, true));
                    if ($keyCase === self::KEY_UPPERCASE) {
                        $key = strtoupper($key);
                    }

                    $model = $this->owner->findOne([$attribute => $key]);
                    if ($model === null) {
                        $this->owner->{$attribute} = $key;
                        break;
                    }
                }
            }
        }
    }
}