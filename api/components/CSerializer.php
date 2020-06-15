<?php

namespace api\components;

use yii\rest\Serializer;

/**
 * Class CSerializer
 * @package api\components
 *
 * @author yii2
 */
class CSerializer extends Serializer
{

    /**
     * @param \yii\data\Pagination $pagination
     */
    protected function addPaginationHeaders($pagination)
    {
        parent::addPaginationHeaders($pagination);

        if ($this->response->getHeaders()->has('link')) {
            $this->response->getHeaders()->remove('link');
        }
    }
}