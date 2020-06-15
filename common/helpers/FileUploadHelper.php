<?php

namespace common\helpers;

use yii\helpers\ArrayHelper;
use yii\web\UploadedFile;

/**
 * Class FileUploadHelper
 * @package backend\components
 *
 * @author yii2
 */
class FileUploadHelper
{
    /**
     * @var self
     */
    private static $instance;
    /**
     * @var array
     */
    private $files = [];
    /**
     * @var array
     */
    private $inputParam = ['name', 'type', 'tmp_name', 'error', 'size'];
    /**
     * @var array
     */
    private $inputParamAssociative = [];

    /**
     * FileUploadHelper constructor.
     */
    public function __construct()
    {
        $array = [];
        foreach ($this->inputParam as $param) {
            $array[$param] = [];
        }
        $this->inputParamAssociative = $array;
    }

    /**
     * @return self
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * @return $this
     */
    public function convertFileArray()
    {
        $files = $_FILES;
        if (!is_array($files)) {
            return $this;
        }
        foreach ($files as $name => $file) {
            if (is_numeric($name) || !is_array($file)) {
                continue;
            }
            $this->processUploadModel($name, $file);
        }

        $_FILES = $this->files;
        $this->files = [];

        return $this;
    }

    /**
     * @param $name
     * @param $file
     */
    private function processUploadModel($name, $file)
    {
        if ($this->isValidateFileInput($file) && $file['name'] === []) {
            return;
        }

        $modelInput = [$name => $this->inputParamAssociative];
        foreach ((array)$file['name'] as $inputName => $value) {
            $modelInput[$name] = ArrayHelper::merge($modelInput[$name],
                $this->processUploadModelInput($inputName, $file));
        }
        $this->files = ArrayHelper::merge($this->files, $modelInput);
    }

    /**
     * @param $name
     * @param $file
     * @return array
     */
    private function processUploadModelInput($name, $file)
    {
        if (!is_array($file['name'][$name])) {
            $input = [];
            foreach ($this->inputParam as $param) {
                $input[$param][$name] = $file[$param][$name];
            }
            return $input;
        }

        $langCodes = array_keys($file['name'][$name]);
        $inputLangArr = $this->inputParamAssociative;
        foreach ($langCodes as $langCode) {
            $input = [];
            foreach ($this->inputParam as $param) {
                $input[$param][$this->getAttributeName($name, $langCode)] = $file[$param][$name][$langCode];
            }
            $inputLangArr = ArrayHelper::merge($inputLangArr, $input);
        }

        return $inputLangArr;
    }


    /**
     * @param $input
     * @return bool
     */
    private function isValidateFileInput($input)
    {
        $inputParam = ['name', 'type', 'tmp_name', 'error', 'size'];
        $isValid = true;

        foreach ($inputParam as $param) {
            if (!ArrayHelper::keyExists($param, $input)) {
                $isValid = false;
                break;
            }
        }

        return $isValid;
    }

    /**
     * @param $model
     * @param $attribute
     * @param null $langCode
     * @return UploadedFile
     */
    public function getFileInstance($model, $attribute, $langCode = null)
    {
        $attribute = $this->getAttributeName($attribute, $langCode);
       
        return UploadedFile::getInstance($model, $attribute);
    }

    /**
     * @param $model
     * @param $attribute
     * @param null $langCode
     * @return UploadedFile[]
     */
    public function getFileInstances($model, $attribute, $langCode = null)
    {
        $attribute = $this->getAttributeName($attribute, $langCode);

        return UploadedFile::getInstances($model, $attribute);
    }

    /**
     * @param $attribute
     * @param null $langCode
     * @return string
     */
    private function getAttributeName($attribute, $langCode = null)
    {
        if ($langCode !== null && is_string($langCode)) {
            return sprintf('%s_%s', $attribute, $langCode);
        }
        
        return $attribute;
    }
}