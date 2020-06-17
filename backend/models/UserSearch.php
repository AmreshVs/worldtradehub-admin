<?php
namespace backend\models;

use common\helpers\Com;
use Yii;
use yii\data\ActiveDataProvider;

/**
 * Class  UserSearch
 * @package backend/models
 */
class UserSearch extends User
{
    /**
    * 
    * @return array
    */
    public function rules()
    {    
        return [
            [['email', 'username', 'mobile_number', 'status'], 'safe'],            
        ];
    }
    
    /**
     * 
     * @param type $params
     * @return ActiveDataProvider
     */
    public function search($params, $type = 2)
    {
        $query = User::find()
            ->select('*')
            ->where([
                'status' => [USER::ACTIVE,  USER::INACTIVE],
                'register_type' => $type
            ]);
                
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'PageSize' => Com::postPerPage(),
            ],
            'sort' => [
                'attributes' => [
                    'email',
        
                ],
                'defaultOrder' => [
                    'email' => SORT_ASC,
        
                ]
            ]
        ]);
      
        $this->load($params);
        if(!$this->validate()) {
            return $dataProvider;
        }  
        
        $query->andFilterWhere(['like', 'email', $this->email])
                ->andFilterWhere(['like', 'username', $this->username])
                ->andFilterWhere(['like', 'mobile_number', $this->mobile_number])
                ->andFilterWhere(['like', 'status', $this->status]);
        
        return $dataProvider;   
    }  
}


