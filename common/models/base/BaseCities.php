<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "cities".
 *
 * @property integer $id
 * @property string $name
 * @property integer $state_id
 * @property string $state_code
 * @property integer $country_id
 * @property string $country_code
 * @property string $latitude
 * @property string $longitude
 * @property string $created_at
 * @property string $updated_on
 * @property integer $flag
 * @property string $wikiDataId
 */
class BaseCities extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cities';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'name', 'state_id', 'state_code', 'country_id', 'country_code', 'latitude', 'longitude'], 'required'],
            [['id', 'state_id', 'country_id', 'flag'], 'integer'],
            [['latitude', 'longitude'], 'number'],
            [['created_at', 'updated_on'], 'safe'],
            [['name', 'state_code', 'wikiDataId'], 'string', 'max' => 255],
            [['country_code'], 'string', 'max' => 2],
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
            'state_id' => 'State ID',
            'state_code' => 'State Code',
            'country_id' => 'Country ID',
            'country_code' => 'Country Code',
            'latitude' => 'Latitude',
            'longitude' => 'Longitude',
            'created_at' => 'Created At',
            'updated_on' => 'Updated On',
            'flag' => 'Flag',
            'wikiDataId' => 'Wiki Data ID',
        ];
    }
}
