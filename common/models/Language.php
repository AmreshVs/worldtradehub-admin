<?php

namespace common\models;

use common\models\base\BaseLanguage;
use yii\helpers\ArrayHelper;

/**
 * Class Language
 * @package common\models
 */
class Language extends BaseLanguage
{
    /*
    * getAppLanguages
    */
    public static function getAppLanguages()
    {
        $modelLanguage = self::find()
            ->select(['language_code', 'language_name'])
            ->where(['status' => self::ACTIVE])
            ->all();
        
        if ($modelLanguage === []) {
            $modelLanguage = [['language_code' => Configuration::DEFAULT_LANG_CODE]];
        }
        
        return ArrayHelper::map($modelLanguage, 'language_code', 'language_name');
    }

    /**
     * @param bool $asArray
     * @return array|\yii\db\ActiveRecord[]
     */
    public static function getAll($asArray = false)
    {
        $query = self::find()
            ->select(['language_code', 'language_name'])
            ->where(['status' => self::ACTIVE]);

        if ($asArray) {
            $query->asArray();
        }

        return $query->all();
    }

    /**
     * @param string $lang
     * @return int
     */
    public static function checkIsRtl($lang = 'en')
    {
        $query = self::find()
            ->select(['is_rtl'])
            ->where(['status' => self::ACTIVE])
            ->andWhere(['language_code' => $lang])
            ->asArray()->one();

        return !empty($query['is_rtl']) ? 1 : 0;
    }
}
