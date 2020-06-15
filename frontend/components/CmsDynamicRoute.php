<?php

namespace frontend\components;

use common\models\Cms;
use yii\base\BootstrapInterface;

/**
 * Class CmsDynamicRoute
 * @package frontend\components
 *
 * @link: https://stackoverflow.com/a/36057877/5798881
 */
class CmsDynamicRoute implements BootstrapInterface
{
    /**
     * @param \yii\base\Application $app
     */
    public function bootstrap($app)
    {
        $model = CMS::find()->alias('C')
           ->select(['C.slug'])
           ->where(['C.cms_status' => CMS::ACTIVE])
           ->asArray()
           ->all();

       $cms = [];

       foreach ($model as $list) {
           $key = $list['slug'];
           $cms[] = [
               'pattern' => $key,
               'route' => 'page/cms',
               'defaults' => ['page' => $key]
           ];
       }

       $app->urlManager->addRules($cms, false);
    }

}   