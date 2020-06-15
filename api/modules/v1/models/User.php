<?php

namespace api\modules\v1\models;

use common\helpers\JwtHelper;
use common\helpers\UploadHelper;
use yii\helpers\ArrayHelper;
use api\modules\v1\models\UserAddress;

/**
 * Class User
 * @package api\modules\v1\models
 */
class User extends \common\models\User
{
    const SCENARIO_LOGIN = 'login';
    const SCENARIO_UPDATE = 'update';
    const SCENARIO_REGISTER_NORMAL = 'register-normal';
    const SCENARIO_REGISTER_SOCIAL = 'register-social';
    
    public $password, $register_type, $social_token;

    /**
     * @return array
     */
    public function rules()
    {
        $rules = [
            [
                ['device_token', 'device_type'],
                'required',
                'on' => self::SCENARIO_LOGIN
            ],
            [
                [
                    'username',
                    'email', 
                    'mobile_number', 
                    'register_type',
                    'country_id',
                    'state_id',
                    'city_id'
                ], 
                    'required', 
                    'on' => [self::SCENARIO_REGISTER_NORMAL]
                
            ],
            
        ];
        

        return ArrayHelper::merge(parent::rules(), $rules);
    }

    /**
     *
     * @return array
     */
    public function fields()
    {
        return [
            'user_key',
            'username',
            'email',
            'mobile_number',
            'access_token' => function (self $model) {
                return JwtHelper::getInstance()->token($model->getKey());
            },
            'country' => function (self $model) {
                return  Countries::find()
                    ->select(['name', 'id'])
                    ->where(['id' => $model->country_id])
                    ->one();
            },
            'state' => function (self $model) {
                return  States::find()
                    ->select(['name', 'id'])
                    ->where(['id' => $model->country_id])
                    ->one();
            },
            'city' => function (self $model) {
                return  Cities::find()
                    ->select(['name', 'id'])
                    ->where(['id' => $model->country_id])
                    ->one();
            }, 
        ];
    }

    /**
     * @return array
     */
    public function scenarios()
    {
        $scenarios = parent::scenarios();

        $scenarios[self::SCENARIO_REGISTER_NORMAL] =  [
            'username',
           // 'last_name',
            'email', 
         //   'password', 
            'mobile_number', 
            'register_type',
            'country_id',
            //'user_type',
           // 'device_type',
            //'device_token'
            'state_id',
            'city_id'
        ];
        
       
        
        return $scenarios;
    }
}
