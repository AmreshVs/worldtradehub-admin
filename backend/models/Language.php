<?php
namespace backend\models;

/**
 * Class Language
 * @package backend\models
 */
class Language extends \common\models\Language
{
	public static function getAllLanguage(){
        return Language::find()
                ->select(['language_name','language_code'])
                ->where(['status' => self::ACTIVE])
                ->all();
    }
}
