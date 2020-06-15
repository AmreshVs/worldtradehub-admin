<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "states".
 *
 * @property integer $id
 * @property string $name
 * @property integer $country_id
 * @property string $country_code
 * @property string $fips_code
 * @property string $iso2
 * @property string $created_at
 * @property string $updated_at
 * @property integer $flag
 * @property string $wikiDataId
 *
 * @property BaseCountries $country
 */
class BaseStates extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'states';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'country_id', 'country_code'], 'required'],
            [['country_id', 'flag'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['name', 'fips_code', 'iso2', 'wikiDataId'], 'string', 'max' => 255],
            [['country_code'], 'string', 'max' => 2],
            [['country_id'], 'exist', 'skipOnError' => true, 'targetClass' => BaseCountries::className(), 'targetAttribute' => ['country_id' => 'id']],
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
            'country_id' => 'Country ID',
            'country_code' => 'Country Code',
            'fips_code' => 'Fips Code',
            'iso2' => 'Iso2',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'flag' => 'Flag',
            'wikiDataId' => 'Wiki Data ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCountry()
    {
        return $this->hasOne(BaseCountries::className(), ['id' => 'country_id']);
    }
}
