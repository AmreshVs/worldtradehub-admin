<?php

namespace common\helpers;

use backend\models\Configuration;
use console\controllers\ProcessQueue;
use Yii;
use yii\base\InvalidConfigException;

/**
 * Class Mailer
 * @package common\helpers
 *
 * @author yii2
 */
class Mailer
{
    /**
     * @var
     */
    private $subject;
    /**
     * @var
     */
    private $message;
    /**
     * @var string|array
     */
    private $to;

    /**
     * @var string|array
     */
    private $cc;

    /**
     * @var
     */
    private static $instance;

    /**
     * Mailer constructor.
     * @throws \yii\base\InvalidConfigException
     */
    private function __construct()
    {
        # do configuration stuff
        if (Configuration::isSmtpEnabled() === false) {
            return;
        }

        /* @var $transport yii\swiftmailer\Mailer */
        $transport = Yii::$app->getMailer();

        $transport->setTransport([
            'class' => \Swift_SmtpTransport::class,
            'host' => Configuration::get(Configuration::SMTP_HOST),
            'username' => Configuration::get(Configuration::SMTP_USERNAME),
            'password' => Configuration::get(Configuration::SMTP_PASSWORD),
            'port' => Configuration::get(Configuration::SMTP_PORT),
            'encryption' => Configuration::get(Configuration::SMTP_ENCRYPTION),
        ]);

        $transport->messageConfig = [
            'from' => Configuration::get(Configuration::SMTP_USERNAME) => Configuration::get(Configuration::APP_NAME)],
        ];
    }

    /**
     * @return Mailer
     * @throws \yii\base\InvalidConfigException
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * @param bool $debug
     * @return bool
     * @throws InvalidConfigException
     */
    public function send($debug = false)
    {
        if (!Configuration::get(Configuration::IS_SMTP_ENABLED)) {
            return 'Mail is disabled';
        }
        if ($this->message === null || $this->to === null || $this->subject === null) {
            throw new InvalidConfigException('Invalid mail configuration');
        }

        try {
            
            return Yii::$app->mailer->compose()
                ->setTo($this->to)
                ->setCc($this->cc)
                ->setSubject($this->subject)
                ->setHtmlBody($this->message)
                ->send();

        } catch (\Swift_TransportException $Ste) {
            if ($debug) {
                return $Ste->getMessage();
            }
            return 0;
        }

    }


    /**
     * @param mixed $message
     * @return $this
     */
    public function setMessage($message)
    {
        $this->message = $message;
        return $this;
    }

    /**
     * @param mixed $subject
     * @return $this
     */
    public function setSubject($subject)
    {
        $this->subject = $subject;
        return $this;
    }

    /**
     * @param array|string $to
     * @return $this
     */
    public function setTo($to)
    {
        $this->to = $to;
        return $this;
    }

    /**
     * @param $to
     * @return $this
     */
    public function setCc($to)
    {
        $this->cc = $to;

        return $this;
    }
}