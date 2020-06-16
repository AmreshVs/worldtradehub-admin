<?php

namespace common\helpers;

/**
 * Class DateTimeHelper
 * @package common\helpers
 *
 * @author yii2
 */
class DateTimeHelper
{
    /**
     * Date format
     */
    const MYSQL_DATE_FORMAT = 'Y-m-d';
    const MYSQL_TIME_FORMAT = 'H:i:s';
    const MYSQL_DATETIME_FORMAT = 'Y-m-d H:i:s';

    const CUSTOM_DATE_FORMAT = 'd/m/Y';
    const CUSTOM_TIME_FORMAT = 'h:i A';
    const CUSTOM_DATE_TIME_FORMAT = 'M d, Y, h:i A';
    const CUSTOM_DATE_FORMAT_1= 'd F Y';
    const CUSTOM_DATE_TIME_FORMAT_1 = 'd M Y h:i A';

    const YEAR = 'year';
    const MONTH = 'month';
    const DAY = 'day';
    const HOUR = 'hour';
    const MINUTE = 'minute';

    private static $instance;
    /**
     * @var
     */
    private $date;
    /**
     * @var
     */
    private $secondaryDate;
    /**
     * format in which following date should process
     * @var string
     */
    private $format;

    /**
     * @return DateTimeHelper
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }

        return self::$instance;
    }

    /**
     * @return mixed
     */
    private function getDate()
    {
        return $this->date;
    }

    /**
     * @param mixed $date
     * @return $this
     */
    public function setDate($date)
    {
        if (is_string($date)) {
            $date = strtotime($date);
        }
        $this->date = $date;

        return $this;
    }

    /**
     * @return mixed
     */
    private function getSecondaryDate()
    {
        return $this->secondaryDate;
    }

    /**
     * @param mixed $secondaryDate
     * @return $this
     */
    public function setSecondaryDate($secondaryDate)
    {
        $this->secondaryDate = strtotime($secondaryDate);
        return $this;
    }

    /**
     * @param $format
     * @param null|string|int|false $date
     * @return false|string
     */
    public function format($format, $date = null)
    {
        if ($date !== null) {
            if (is_string($date)) {
                $date = strtotime($date);
            }
            return date($format, $date);
        }
        if ($this->getDate() === null) {
            return date($format);
        }
        return date($format, $this->date);
    }

    /**
     * @return bool
     * @throws \RuntimeException
     */
    public function isToday()
    {
        $this->setSecondaryDate($this->today(true, false));
        $interval = $this->getDateInterval();

        return (int)$interval->days === 0;
    }

    /**
     * @return bool
     * @throws \RuntimeException
     */
    public function isPastDate()
    {
        $this->setSecondaryDate($this->today(true, false));
        $interval = $this->getDateInterval();

        return (int)$interval->days !== 0 && (int)$interval->invert === 1;
    }

    /**
     * @return bool
     * @throws \RuntimeException
     */
    public function isFutureDate()
    {
        $this->setSecondaryDate($this->today(true, false));

        $interval = $this->getDateInterval();

        return (int)$interval->days !== 0 && (int)$interval->invert === 0;
    }


    /**
     * @return bool|\DateInterval
     * @throws \RuntimeException
     * @internal param bool $isDateTime
     */
    private function getDateInterval()
    {
        if ($this->getDate() === null || $this->getSecondaryDate() === null) {
            throw new \RuntimeException('Please set the date using setDate() method');
        }
        $dateStart = new \DateTime($this->format(self::MYSQL_DATETIME_FORMAT, $this->getSecondaryDate()));
        $dateEnd = new \DateTime($this->format(self::MYSQL_DATETIME_FORMAT));

        return $dateStart->diff($dateEnd);
    }


    /**
     * @param bool $isDateTime
     * @param bool $current
     * @return false|string
     */
    public function today($isDateTime = true, $current = true)
    {
        $format = self::MYSQL_DATE_FORMAT;
        if ($isDateTime === false) {
            return date($format);
        }
        $format = self::MYSQL_DATETIME_FORMAT;
        if ($current === true) {
            return date($format);
        }

        return date($format, strtotime('00:00:00'));
    }

    /**
     * @param $date
     * @param $format
     * @return false|string
     */
    public function isValidFormat($date, $format)
    {
        return $date === $this->format($format, $date);
    }

    /**
     * @param $type
     * @param int $count
     * @param null|string $date
     * @return $this
     */
    public function add($type, $count = 1, $date = null)
    {
        $count = (int)$count;
        if ($count === 0) {
            $count = 1;
        }

        if ($date === null && ($date = $this->getDate()) === null) {
            $date = $this->today();
        }
        if (is_string($date)) {
            $date = strtotime($date);
        }

        $this->setDate(strtotime(sprintf('+%s %s', $count, $type), $date));

        return $this;
    }

    /**
     * @param $type
     * @param null $now
     * @return string
     * @throws \RuntimeException
     */
    public function differenceBy($type, $now = null, $format = null)
    {
        $this->setSecondaryDate($this->today());

        if ($this->getFormat() === self::MYSQL_DATE_FORMAT) {
            $this->setSecondaryDate($this->today(true, false));
        }
        if ($now !== null) {
            $this->setSecondaryDate($now);
        }
        $interval = $this->getDateInterval();
        $intervalVal = 0;

        switch ($type) {
            case self::DAY:
                $intervalVal = $interval->days;
                break;
            case self::HOUR:
                $intervalVal = $interval->h + ($interval->days * 24);
                break;
            case self::MINUTE:
                $intervalVal = $interval->i;
                break;

        }

        return sprintf('%s%d', $interval->invert === 1 ? '-' : '', $intervalVal);
    }

    /**
     * @param $type
     * @return false|string
     * @throws \RuntimeException
     */
    public function get($type)
    {
        if ($this->getDate() === null) {
            throw new \RuntimeException('Please set the date using setDate() method');
        }
        $format = $this->convertPhpFormat($type);

        return $this->format($format);
    }

    /**
     * @param $type
     * @return string
     */
    private function convertPhpFormat($type)
    {
        switch ($type) {
            case self::YEAR:
                $format = 'YYYY';
                break;
            case self::MONTH:
                $format = 'M';
                break;
            case self::DAY:
                $format = 'd';
                break;
            default:
                $format = '';
                break;
        }
        return $format;
    }

    /**
     * @return string
     */
    public function getFormat()
    {
        return $this->format;
    }

    /**
     * @param string $format
     * @return $this
     */
    public function setFormat($format)
    {

        $this->format = $format;

        return $this;
    }
}