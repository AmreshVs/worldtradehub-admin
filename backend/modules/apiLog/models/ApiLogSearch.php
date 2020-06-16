<?php

namespace backend\modules\apiLog\models;

use common\helpers\Com;
use yii\data\ActiveDataProvider;

/**
 * Class SourceMessage
 * @package backend\modules\translation\models
 */
class ApiLogSearch extends ApiLog
{
    /**
     * @return array
     */
    public function rules()
    {
        return [
            [['request_method'], 'string'],
        ];
        return [
            [['category'], 'string'],
            [['message', 'sort'], 'safe'],
        ];
    }

    /**
     * @param $params
     * @return ActiveDataProvider
     * @throws \ReflectionException
     * @throws \yii\base\InvalidParamException
     * @internal param bool $isRejectList
     * @internal param int|null $status
     */
    public function search($params)
    {
        $query = ApiLog::find();
        Com::setFilter(static::className(), $params);

        $query->limit(20);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => 20,
            ],
            'sort' => [
                'defaultOrder' => [
                    'created_at'   => SORT_DESC
                ]
            ],
        ]);

        $this->load($params);
        if (!$this->validate()) {
            return $dataProvider;
        }

//        $query->andFilterWhere(['like', 'message', $this->message]);
        $query->andFilterWhere(['like', 'request_method', $this->request_method]);

        return $dataProvider;
    }

}