<?php

namespace common\helpers;

use common\models\EmailQueue;
use Yii;
use yii\base\BaseObject;
use yii\mail\BaseMailer;
use yii\web\View;

/**
 * Class MailerQueueHelper
 * @package common\helpers
 *
 * @author yii2
 */
class  MailerQueueHelper extends BaseObject
{
    /**
     * @var array
     */
    public $to = [];
    /**
     * @var string
     */
    public $subject;
    /**
     * @var string
     */
    public $view;
    /**
     * @var array
     */
    private $viewParams = [];

    /**
     * @var self
     */
    public static $instance;
    /**
     * @var array
     */
    private $_view = [];

    /**
     * @return MailerQueueHelper
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }

        return self::$instance;
    }

    /**
     * @param array|string $to
     * @return MailerQueueHelper
     */
    public function setTo($to)
    {
        if (is_string($to)) {
            $to = [$to];
        }
        $this->to = $to;
        return $this;
    }

    /**
     * @param string $subject
     * @return MailerQueueHelper
     */
    public function setSubject($subject)
    {
        $this->subject = $subject;
        return $this;
    }

    /**
     * @param $view
     * @param array $params
     * @return $this
     */
    public function setView($view, array $params = [])
    {
        $this->view = $view;
        $this->viewParams = $params;
        return $this;
    }

    public function push()
    {
        /* @var $mailer yii\swiftmailer\Mailer */
        $mailer = Yii::$app->getMailer();

        $html = $mailer->render(
            $this->view,
            $this->viewParams,
            $mailer->htmlLayout
        );
        
        // $modelEmailQueue = new EmailQueue();
        // $modelEmailQueue->load([
        //     'to_address' => implode(',', $this->to),
        //     'subject' => $this->subject,
        //     'content' => $html,
        //     'status' => $modelEmailQueue::EMAIL_STATUS_DRAFT
        // ], '');

        // if (!$modelEmailQueue->save()) {
        //     return false;
        // }

        try {
            $mailer = Mailer::getInstance()->setTo(implode(',', $this->to));
            $mailer->setSubject($this->subject);
            $mailer->setMessage($html);
            $mailer->send(); //mail updated by lakshmanan
        } catch(Exception $e) {
            return false;
        }
        
        return true;
    }
}