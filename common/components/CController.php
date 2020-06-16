<?php

namespace common\components;

use common\helpers\AccessRules;
use common\helpers\Com;
use common\models\Configuration;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\ForbiddenHttpException;

/**
 *
 * CController is the customized base controller class.
 *
 * All controller classes for this application should extend from this class.
 *
 * Class CController
 * @package common\components
 *
 * @author yii2
 */
class CController extends Controller
{
    /**
     * @var
     */
    private $searchModel;
    /**
     * Application Language Code
     * @var string
     */
    private $language;

    /**
     * CController constructor.
     * @param string $id
     * @param \yii\base\Module $module
     * @param array $config
     */
    public function __construct($id, $module, array $config = array())
    {
        parent::__construct($id, $module, $config);

        # Check Whether the user login'ed
        if (!Yii::$app->user->getIsGuest() && $id === 'login') {
            $this->goHome();
        }

        if (!Com::isSession(APP_LANGUAGE)) {
            Com::setSession(APP_LANGUAGE, Configuration::DEFAULT_LANG_CODE);
        }
        $language = Com::session(APP_LANGUAGE);

        $this->setLanguage($language);
        $this->setTimeZone();

    }

    /**
     * @param \yii\base\Action $action
     * @return bool
     *
     * @throws \yii\base\InvalidParamException
     * @throws \ReflectionException
     * @throws \yii\web\BadRequestHttpException
     */
    public function beforeAction($action)
    {
        $actionId = $this->action->getUniqueId();
        $actionId = explode('/', $actionId);

        $actionT = end($actionId);
        $controllerT = $actionId[0];


        $actionT = implode(' ', explode('-', $actionT));
        $controllerT = implode(' ', explode('-', $controllerT));

        $this->view->title = ucfirst($actionT);

        if ($actionT === 'index') {
            $this->view->title = ucfirst($controllerT);
        }

        /**
         * Grid View Filter
         */
        if ($this->hasSearchModel()) {
            $params = Yii::$app->request->queryParams;

            if ($params === []) {
                $params = Com::getFilter($this->getSearchModel());
            }
            Yii::$app->request->queryParams = $params;
        }

        return parent::beforeAction($action);
    }

    /**
     * Controllers that are extended this Class will check the login, based on the following
     * behavior scenario
     *
     * @return array
     * @throws \yii\base\InvalidParamException
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::class,
                'rules' => [
                    [
                        'controllers' => ['site'], # Site Controller for Error handling
                        'allow' => true,
                    ],
                    [
                        'controllers' => ['login'],
                        'allow' => true,
                        'roles' => ['?']
                    ],
                    [
                        'controllers' => ['payment'],
                        'actions' => ['index', 'payment-success'],
                        'allow' => true,
                        'roles' => ['?']
                    ],
                    [
                        'controllers' => ['admin-user'],
                        'actions' => ['forgot-password', 'password-reset'],
                        'allow' => true,
                        'roles' => ['?']
                    ],
                    [
                        'allow' => true,
                        'roles' => ['@'],
                        'matchCallback' => function ($rule, $action) {
                            return AccessRules::check();
                        },
                        'denyCallback' => function () {
                            throw new ForbiddenHttpException('Access denied');
                        }
                    ]
                ],
            ]
        ];
    }

    /**
     * @return null
     */
    private function getSearchModel()
    {
        return $this->searchModel;
    }

    /**
     * @return bool
     */
    private function hasSearchModel()
    {
        return $this->getSearchModel() !== null;
    }

    /**
     * @param null $searchModel
     */
    public function setSearchModel($searchModel)
    {
        $this->searchModel = $searchModel;
    }


    public function getLanguage()
    {
        return $this->language;
    }

    /**
     * @param string $language
     */
    public function setLanguage($language = null)
    {

        if ($language === null) {
            $language = Configuration::DEFAULT_LANG_CODE;
        }
        
        Yii::$app->language = $language;

    }

    /**
     *
     */
    public function setTimeZone()
    {
        if (($timeZone = Configuration::get(Configuration::TIME_ZONE)) !== null) {
            Yii::$app->timeZone = $timeZone;
        }
    }
    
    /**
     * @param array $point
     * @param array $polygon
     * @return integer
     */
    public function DeliveryAreaCheck($point, $polygon)
    {
        if ($polygon[0] != $polygon[count($polygon) - 1]) {
            $polygon[count($polygon)] = $polygon[0];
        }
        $j = 0;
        $oddNodes = false;
        $x = $point[1];
        $y = $point[0];
        $n = count($polygon);
        for ($i = 0; $i < $n; $i++) {
            $j++;
            if ($j == $n) {
                $j = 0;
            }
            if ((($polygon[$i][0] < $y) && ($polygon[$j][0] >= $y)) || (($polygon[$j][0] < $y) && ($polygon[$i][0] >=
                        $y))) {
                if ($polygon[$i][1] + ($y - $polygon[$i][0]) / ($polygon[$j][0] - $polygon[$i][0]) * ($polygon[$j][1] -
                        $polygon[$i][1]) < $x) {
                    $oddNodes = !$oddNodes;
                }
            }
        }
   
        return $oddNodes ? 1 : 0;
    }
}