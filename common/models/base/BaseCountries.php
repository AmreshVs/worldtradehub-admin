<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "countries".
 *
 * @property integer $id
 * @property string $name
 * @property string $iso3
 * @property string $iso2
 * @property string $phonecode
 * @property string $capital
 * @property string $currency
 * @property string $native
 * @property string $emoji
 * @property string $emojiU
 * @property string $created_at
 * @property string $updated_at
 * @property integer $flag
 * @property string $wikiDataId
 *
 * @property BaseStates[] $states
 */
class BaseCountries extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'countries';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['created_at', 'updated_at'], 'safe'],
            [['flag'], 'integer'],
            [['name'], 'string', 'max' => 100],
            [['iso3'], 'string', 'max' => 3],
            [['iso2'], 'string', 'max' => 2],
            [['phonecode', 'capital', 'currency', 'native', 'wikiDataId'], 'string', 'max' => 255],
            [['emoji', 'emojiU'], 'string', 'max' => 191],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'iso3' => 'Iso3',
            'iso2' => 'Iso2',
            'phonecode' => 'Phonecode',
            'capital' => 'Capital',
            'currency' => 'Currency',
            'native' => 'Native',
            'emoji' => 'Emoji',
            'emojiU' => 'Emoji U',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'flag' => 'Flag',
            'wikiDataId' => 'Wiki Data ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStates()
    {
        return $this->hasMany(BaseStates::className(), ['country_id' => 'id']);
    }
}
