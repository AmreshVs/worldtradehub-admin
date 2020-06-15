<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "{{%language}}".
 *
 * @property integer $language_id
 * @property string $language_code
 * @property string $language_name
 * @property string $native_name
 * @property integer $is_rtl
 * @property integer $status
 */
class BaseLanguage extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%language}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['is_rtl', 'status'], 'integer'],
            [['language_code'], 'string', 'max' => 8],
            [['language_name', 'native_name'], 'string', 'max' => 64],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'language_id' => Yii::t('common', 'Language ID'),
            'language_code' => Yii::t('common', 'Language Code'),
            'language_name' => Yii::t('common', 'Language Name'),
            'native_name' => Yii::t('common', 'Native Name'),
            'is_rtl' => Yii::t('common', 'Is Rtl'),
            'status' => Yii::t('common', 'Status'),
        ];
    }
}
