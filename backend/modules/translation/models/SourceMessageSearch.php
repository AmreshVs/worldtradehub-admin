<?php

namespace backend\modules\translation\models;

use common\helpers\Com;
use yii\data\ActiveDataProvider;

/**
 * Class SourceMessage
 * @package backend\modules\translation\models
 */
class SourceMessageSearch extends SourceMessage
{
    /**
     * @return array
     */
    public function rules()
    {
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
        $query = SourceMessage::find();
        Com::setFilter(static::className(), $params);

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => 20,
            ],
        ]);

        $this->load($params);
        if (!$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere(['like', 'message', $this->message]);
        $query->andFilterWhere(['like', 'category', $this->category]);

        return $dataProvider;
    }

}