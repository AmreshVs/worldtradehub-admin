<?php

namespace backend\models;

use common\helpers\Com;
use Yii;
use yii\data\ActiveDataProvider;
use yii\helpers\ArrayHelper;
use libphonenumber\PhoneNumberUtil;

/**
 * Class User
 * @package backend\models
 */
class User extends \common\models\User
{    
    const SCENARIO_CREATE = 'create';
    const SCENARIO_UPDATE = 'update';
    const PROMOTION_NOTIFICATION_ENABLED = 1;
    const PROMOTION_NOTIFICATION_DISABLED = 0;
    
    public $user_detail, $password, $user_name, $customer_name;
    
    /**
    * 
    * @return array
    */
    public function rules()
    {
        $rules =  [        
            [
                [
                    'first_name',
                    'email',
                    'mobile_number',
                    'status',
                ],
                'required',
                'on' => [
                    self::SCENARIO_CREATE,
                ]
            ],
            [
                [
                    'first_name',
                    'email',
                    'mobile_number',
                    'status',
                ],
                'required',
                'on' => [
                    self::SCENARIO_UPDATE,
                ]
            ],
            [['mobile_number', 'email'],'unique'],
            ['email', 'email'],
            [['mobile_number'],'integer'],
            [
                ['mobile_number'],
                'match', 
                'pattern'     => '/^[0-9]{7,15}$/',
                'message'     => Yii::t('backend', 'Mobile accept only 7 to 15 digit numbers'),
                'skipOnEmpty' => true,
                'skipOnError' => true   
            ],
/*            ['mobile_number', 'validateNumber'],*/
            ['referral_code', 'safe']
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
            'status',
            'country' => function (self $model) {
                return  Countries::find()
                    ->select(['name', 'id'])
                    ->where(['id' => $model->country_id])
                    ->one();
            },
            'state' => function (self $model) {
                return  States::find()
                    ->select(['name', 'id'])
                    ->where(['id' => $model->state_id])
                    ->one();
            },
            'city' => function (self $model) {
                return  Cities::find()
                    ->select(['name', 'id'])
                    ->where(['id' => $model->city_id])
                    ->one();
            },
            'register_type', 
        ];
    }
    
    /**
    * 
    * @return array
    */
    public function scenarios()
    {
        $scenarios = parent::scenarios();
        
        $scenarios[self::SCENARIO_CREATE] = [
            'first_name',
            'email',
            'mobile_number',
            'status',
            'last_name',
            'safe'
        ];
        
        $scenarios[self::SCENARIO_UPDATE] = [
            'first_name',
            'email',
            'mobile_number',
            'last_name',
            'status',

        ];
        
        return $scenarios;
    }
    
    
    /**
    * @return string
    */
    public function validateNumber()
    {
        $phoneNumber = $this->mobile_number;
        $phoneNumUtil = PhoneNumberUtil::getInstance();
        $parsedPhoneNum = $phoneNumUtil->parse($phoneNumber, "MY");
        $isValid = $phoneNumUtil->isValidNumber($parsedPhoneNum);
        if (!$isValid) {
            $this->addError('mobile_number', 'Please Enter Valid Malaysian Number');
        }
    }
    
    /**
    * 
    * @return array
    */
    public static function gettotalCustomers(){
        $query = Yii::$app->DB->createCommand("SELECT count(user_id) as user_count FROM {{%user}} WHERE status !=".User::DELETE);
        $count = $query->queryOne();
        return $count['user_count'];
    }
    
    /**
    *@return array
    */
    public function getUserData()
    {
        $userData = User::find()
            ->select(['user_id', "CONCAT_WS(' ',first_name,last_name) AS first_name"])
            ->Where(['status' => self::ACTIVE])
            ->asArray()
            ->All();
        
        if (!empty($userData)) {
            return ArrayHelper::map($userData,'user_id','first_name');
        } else {
            return [];
        }
    }
    
    /**
    *@return array
    */
    public function getOrderUserData()
    {
        $OrderUserData = User::find()
            ->select(['user_id', "CONCAT_WS(' - ', email, mobile_number) AS user_detail"])
            ->Where(['status' => self::ACTIVE])
            ->All();

        if (!empty($OrderUserData)) {
            return ArrayHelper::map($OrderUserData,'user_id', 'user_detail');
        } else {
            return [];
        }
    }
    
    /**
    * 
    * @return array
    */
    public function attributeLabels()
    {
        return [
            'user_detail' => yii::t('backend','Customer'),
            'first_name' => Yii::t('backend', 'Customer Name'),
            'email' => Yii::t('backend', 'Email'),
            'mobile_number' => Yii::t('backend', 'Mobile Number'),
            'status' => Yii::t('backend', 'Status')
            
        ];
    }
    
    /**
     * @param $event \yii\web\User
     * @throws \MongoDB\Driver\Exception\InvalidArgumentException
     * @throws \yii\base\InvalidParamException
     */
    protected static function afterLogin($event)
    {
        $dtHelper = DateTimeHelper::getInstance();
        /* @var $model self */
        $model = $event->identity;
        $model->last_login = $dtHelper->today();
        $model->save();
    }
    public static function getCustomerList(){
        $query = BranchReview::find()
                    ->alias('BR')
                    ->select([
                            'BR.user_id',
                            "CONCAT_WS(' ', U.first_name, U.last_name) AS customer_name",
                        ])
                    ->leftJoin(['BL' => BranchLang::tableName()], 'BL.branch_id = BR.branch_id')
                    ->leftJoin(['U' => User::tableName()], 'U.user_id = BR.user_id')
                    ->leftJoin(['VL' => VendorLang::tableName()], 'VL.vendor_id = BR.vendor_id')
                    ->asArray()
                    ->all();
        $query = ArrayHelper::map($query, 'user_id', 'customer_name');
        return $query;

    }
}
