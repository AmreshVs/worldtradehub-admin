<?php
namespace backend\models;

use common\helpers\Com;
use Yii;
use yii\data\ActiveDataProvider;

/**
 * Class  TicketSearch
 * @package backend/models
 */
class TicketSearch extends Ticket
{

    /**
    * 
    * @return array
    */
    public function rules()
    {    
        return [
            [[
                'company_name', 
                'website',
                'whatsapp_number', 
                'logo_image_path', 
                'username',
                'register_type',
                'event_title',
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
        $query = Ticket::find()
            ->alias('T')
            ->select([
                'T.*',
                'U.username',
                'U.register_type',
                'E.event_title',
            ])
            ->where(['ticket_status' => 1])
            ->leftJoin(['U' => User::tableName()],'U.user_id = T.user_id')
            ->leftJoin(['E' => Events::tableName()],'E.event_id = T.event_id');
            
        
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'PageSize' => Com::postPerPage(),
            ],
            'sort' => [
                'attributes' => [
                    'company_name',
              
                ],
                'defaultOrder' => [
                    'company_name' => SORT_ASC,
                
                ]
            ]
        ]);
      
        $this->load($params);
        if(!$this->validate()) {
            return $dataProvider;
        }  
     
        $query->andFilterWhere(['like', 'company_name', $this->company_name])
                ->andFilterWhere(['like', 'website', $this->website])
                ->andFilterWhere(['like', 'U.username', $this->username])
                ->andFilterWhere(['like', 'U.register_type', $this->register_type])
                ->andFilterWhere(['like', 'E.event_title', $this->event_title])
                ->andFilterWhere(['like', 'whatsapp_number', $this->whatsapp_number]);
        
        return $dataProvider;   
    }  
}


