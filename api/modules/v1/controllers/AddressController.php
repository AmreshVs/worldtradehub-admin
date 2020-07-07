<?php

namespace api\modules\v1\controllers;


use api\components\CController;
use api\modules\v1\models\Countries;
use api\modules\v1\models\States;
use api\modules\v1\models\Cities;
use yii\data\ActiveDataProvider;
use yii\web\UploadedFile;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;
use yii\helpers\Json;
use api\components\CResponse;
use Yii;
use backend\models\EventUploadForm;
use common\helpers\UploadHelper;
use common\helpers\Com;
use common\helpers\ModelHelper;



/**
 * Class AddressController
 * @package api\modules\v1\controllers
 */

class AddressController extends CController
{    
    /**
     * @throws \Exception
     * @throws \Throwable
     *
     * @return Country
     */
    public function actionGetCountry()
    {
        $model = Countries::find()->select(['name', 'id', 'phonecode'])->asArray()->all();
        //$CountryArr = ArrayHelper::map($model,'id', 'name');
        $this->setMessage('Country get successfully');
        return $model;
    }

    public function actionGetState($id)
    {
        $model = States::find()->select(['name', 'id'])->where(['country_id' => $id])->asArray()->all();
        //$CountryArr = ArrayHelper::map($model,'id', 'name');
        $this->setMessage('state get successfully');
        return $model;
    }


    public function actionGetCity($id)
    {
        $model = Cities::find()->select(['name', 'id'])->where(['state_id' => $id])->asArray()->all();
       // $CountryArr = ArrayHelper::map($model,'id', 'name');
        $this->setMessage('City get successfully');
        return $model;
    }
    
}