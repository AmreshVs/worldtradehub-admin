<?php

namespace common\components;

use Yii;
use yii\db\ActiveRecord;
use yii\helpers\Inflector;
use Yii\helpers\ArrayHelper;
use backend\models\CmsLang; 

/**
 * Class CModel
 * @package common\components
 *
 * @author yii2
 */
class CModel extends ActiveRecord
{
    const ACTIVE = 1;
    const INACTIVE = 2;
    const DELETE = 3;

    /**
     * Saves the current record.
     *
     * This method will insert / update basic information like `created, updated etc.`  of an collection
     * before saving an record
     *
     * @param bool $runValidation
     * @param null $attributeNames
     * @return bool
     * @throws \Exception
     * @throws \Throwable
     */
    public function save($runValidation = true, $attributeNames = null)
    {
        $user = Yii::$app->getUser();
        $isGuest = $user->getIsGuest();

        if ($this->getIsNewRecord()) {
            if ($this->hasAttribute('created_at')) {
                $this->setAttribute('created_at', date('Y-m-d H:i:s'));
            }

            if ($this->hasAttribute('created_user_id') && $isGuest === false) {
                $this->setAttribute('created_user_id', $user->getIdentity()->getId());
            }
        }

        if ($this->hasAttribute('updated_at')) {
            $this->setAttribute('updated_at', date('Y-m-d H:i:s'));
        }
        if ($this->hasAttribute('updated_user_id') && $isGuest === false) {
            $this->setAttribute('updated_user_id', $user->getIdentity()->getId());
        }
        return parent::save($runValidation, $attributeNames);
    }

    /**
     * This method is used to get the collections representing column
     * by default _id will be the collections default representing columns override this
     * method to specific column
     *
     * @return string
     * @throws \yii\base\InvalidConfigException
     *
     * @author yii2
     */
    public function representingColumn()
    {
        return $this->getPrimaryKeyColumn();
    }

    /**
     * @return mixed
     * @throws \yii\base\InvalidConfigException
     */
    public function getPrimaryKeyColumn()
    {
        return static::getTableSchema()->primaryKey[0];
    }

    /**
     * @return string
     *
     * @author yii2
     */
    public function representingColumnLabel()
    {
        $calledClass = static::class;
        return (new self())->getAttributeLabel((new $calledClass())->representingColumn());
    }

    /**
     * @return string
     * @throws \yii\base\InvalidConfigException
     */
    protected function key()
    {
        return Inflector::underscore($this->formName()) . '_key';
    }

    /**
     * @return null
     * @throws \yii\base\InvalidConfigException
     */
    public function getKey()
    {
        $attribute = $this->key();
        return isset($this->attributes[$attribute]) ? $this->attributes[$attribute] : null;
    }

    /**
     * @return bool|mixed
     */
    public function getError()
    {
        if (!$this->hasErrors()) {
            return false;
        }
        $errors = $this->getFirstErrors();

        return reset($errors);
    }
    
    /**
    * Used to set language based values on each masters language table based on
    * translationField() set on the respective models
    *
    * @param $translationModel
    * @param $primaryKey
    */
    public static function updateTranslationAttribute(&$translationModel, $primaryKey)
    {
        /* @var $translationModel self */
        if (($translationAttributes = $translationModel->translationAttributes()) === []) {
            return;
        }

        foreach ($translationAttributes as $translationField) {
            if ($translationModel->hasAttribute($translationField) === false) {
                # Invalid translation attributes
                return;
            }
        }

        $primaryKeyColumn = null;
        try {
            $primaryKeyColumn = (new static())->getPrimaryKeyColumn();
        } catch (InvalidConfigException $e) {
        }

        $relationColumn = $translationModel->translationRelationColumn();

        if (!$translationModel->hasAttribute($relationColumn) || $primaryKeyColumn === null) {
            return;
        }

        $model = static::find()
            ->select($translationAttributes)
            ->addSelect('language_code')
            ->where([$relationColumn => $primaryKey])
            ->asArray()
            ->all();
        $translationFieldValues = [];
        foreach ($model as $value) {
            foreach ($translationAttributes as $translationField) {
                $translationFieldValues[$translationField][$value['language_code']] = $value[$translationField];
            }

        }
        foreach ($translationAttributes as $translationField) {
            if (!ArrayHelper::keyExists($translationField, $translationFieldValues)) {
                continue;
            }
            $translationModel->{$translationField} = $translationFieldValues[$translationField];
        }
    }

    /**
    * Array of translation attribute for the specific model
    * @return array
    */
    public function translationAttributes()
    {
        return [];
    }

    /**
    * @param $data
    * @param $langCode
    * @param null $formName
    * @return bool
    * @throws \yii\base\InvalidParamException
    */
    public function loadTranslationAttribute($data, $langCode, $formName = null)
    {
        if ($this->hasAttribute('language_code')) {
            $this->setAttribute('language_code', $langCode);
        }
        
        $scope = $formName === null ? $this->formName() : $formName;
        if ($scope === '' && !empty($data)) {
            $this->setTranslationAttributes($data, $langCode);
            return true;
        }

        if (isset($data[$scope])) {
            $this->setTranslationAttributes($data[$scope], $langCode);
            return true;
        }

        return false;
    }

    /**
    * @param $values
    * @param $langCode
    */
    public function setTranslationAttributes($values, $langCode)
    {
        if (is_array($values)) {
            $translationAttributes = $this->translationAttributes();
            foreach ($translationAttributes as $attribute) {
                if ($this->hasAttribute($attribute) && isset($values[$attribute]) && isset($values[$attribute][$langCode])) {
                    $this->$attribute = $values[$attribute][$langCode];
                }
            }
        }
    }
}