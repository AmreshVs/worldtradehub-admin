<?php

namespace api\components;

use yii\web\Application;

/**
 * Class CApplication
 * @package api\components
 */
class CApplication extends Application
{
    /**
     * Returns the user component.
     *
     * @return null|object
     * @throws \yii\base\InvalidConfigException
     */
    public function getVendor()
    {
        return $this->get('vendor');
    }

    /**
     * @return array
     */
    public function coreComponents()
    {
        return array_merge(parent::coreComponents(), ['vendor' => ['class' => Vendor::class]]);
    }
}