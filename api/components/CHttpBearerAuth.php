<?php

namespace api\components;

use yii\base\Module;
use yii\filters\auth\HttpBearerAuth;

/**
 * CHttpBearerAuth is an action filter that supports the authentication method based on HTTP Bearer token.
 *
 * Class CHttpBearerAuth
 * @package api\components
 *
 * @author yii2
 */
class CHttpBearerAuth extends HttpBearerAuth
{

    /**
     * @param \yii\base\Action $action
     * @return string
     */
    protected function getActionId($action)
    {

        if ($this->owner->module instanceof Module) {
            $mid = $this->owner->module->getUniqueId();
            $id = $action->getUniqueId();

            if ($mid !== '' && strpos($id, $mid) === 0) {
                $id = substr($id, strlen($mid) + 1);
            }
        } else {
            $id = $action->id;
        }

        return $id;
    }
}