<?php
namespace backend\models;

use common\helpers\Com;
use Yii;
use yii\data\ActiveDataProvider;

/**
 * Class  EventSearch
 * @package backend/models
 */
class EventSearch extends Events
{
    /**
    * 
    * @return array
    */
    public function rules()
    {    
        return [
            [[
                'event_title', 
                'event_start_date', 
                'event_end_date', 
                'event_desc', 
                'event_image', 
                'event_status',
                'event_key',
            ], 'safe'],            
        ];
    }
    
    /**
     * 
     * @param type $params
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Events::find()
            ->select('*')
            ->where(['event_status' => [Events::ACTIVE,  Events::INACTIVE]]);
        
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'PageSize' => Com::postPerPage(),
            ],
            'sort' => [
                'attributes' => [
                    'event_title',
              
                ],
                'defaultOrder' => [
                    'event_title' => SORT_ASC,
                
                ]
            ]
        ]);
      
        $this->load($params);
        if(!$this->validate()) {
            return $dataProvider;
        }  
        
        $query->andFilterWhere(['like', 'event_title', $this->event_title])
                ->andFilterWhere(['like', 'event_status', $this->event_status]);
        
        return $dataProvider;   
    }  
}


