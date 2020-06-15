<?php

namespace common\helpers;

use Yii;
use yii\base\InvalidConfigException;
use yii\helpers\Json;

/**
 * This class used to manage the all the RabbitMQ functionality's
 *
 * Class RabbitMQHelper
 * @package common\helpers
 *
 * @author yii2
 */
class RabbitMQHelper
{
    const TYPE_DEFAULT = 'td.tabaogo';

    /**
     * Route
     */
    const ROUTE_EMAIL = 'tabaogo.email';
    
    /**
     * @var
     */
    private static $instance;
    /**
     * @var string
     */
    private $type;
    /**
     * @var string
     */
    private $route;
    /**
     * @var array
     */
    private $data = [];

    /**
     * RabbitMQHelper constructor.
     */
    public function __construct()
    {
        Yii::$app->rabbitmq->load();
    }

    /**
     * @return RabbitMQHelper
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * @return array
     */
    public static function getProducers()
    {
        return [
            [
                'type' => self::TYPE_DEFAULT,
                'exchange' => 'td.tabaogo',
            ],            
        ];
    }

    /**
     *
     * @throws \yii\base\InvalidParamException
     * @throws \yii\base\InvalidConfigException
     */
    public function publish()
    {
        if ($this->type === null || $this->route === null) {
            throw new InvalidConfigException('Invalid RabbitMQ configuration');
        }
        try {
            $producer = Yii::$container->get(sprintf('rabbit_mq.producer.%s', $this->type));
        } catch (\Exception $exception) {
            print_r($exception);
            exit();
            #TODO:
            return $exception;
        }

        $producer->publish(Json::encode($this->data), $this->route);

    }

    /**
     * @param array $data
     *
     * @return $this
     */
    public function setData(array $data)
    {
        $this->data = $data;

        return $this;
    }

    /**
     * @param string $type
     * @return $this
     */
    public function setType($type)
    {
        $this->type = $type;

        return $this;
    }

    /**
     * @param string $route
     * @return $this
     */
    public function setRoute($route)
    {
        $this->route = $route;

        return $this;
    }
}