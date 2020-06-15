<?php
namespace backend\modules\apiLog\controllers;

use backend\modules\apiLog\models\ApiLogSearch;
use common\components\CController;
use common\helpers\Com;
use Yii;

class ApiLogController extends CController
{

    /**
     * @return string
     * @throws \ReflectionException
     * @throws \yii\base\InvalidParamException
     */
    public function actionIndex()
    {
        $searchModel = new ApiLogSearch();
        $params = Yii::$app->request->queryParams;

        if ( $params === [] ) {
            $params = Com::getFilter($searchModel::className());
        }
        Yii::$app->request->queryParams = $params;

        return $this->renderPartial('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $searchModel->search(Yii::$app->request->queryParams)
        ]);
    }
}