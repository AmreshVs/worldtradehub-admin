<?php

namespace common\helpers;

use Exception;
use Lcobucci\JWT\Builder;
use Lcobucci\JWT\Parser;
use Lcobucci\JWT\Signer\Hmac\Sha256;
use Lcobucci\JWT\ValidationData;

/**
 * Class JwtHelper
 * @package common\helpers
 *
 * @link https://stackoverflow.com/a/29946630/5798881
 *
 * @author yii2
 */
class JwtHelper
{
    /**
     *
     */
    const CLAIM_ISSUER = API_HOST;
    /**
     *
     */
    const CLAIM_VALID_FROM = 0; # In seconds
    /**
     *
     */
    const CLAIM_EXPIRATION = 31536000; # In seconds / 24 Hours
    /**
     *
     */
    const CLAIM_JWT_ID = '61B8A33A25DBAKVJ';
    /**
     *
     */
    const SIGNATURE_KEY = 'MYNkaZaz3r3rkIGOv77h9gff0aDJDKVJ';
    /**
     *
     */
    const PRIVATE_CLAIM_ID = 'token';

    /**
     * @var
     */
    private $signature;
    /**
     * @var
     */
    private static $instance;

    /**
     * Jwt constructor.
     */
    private function __construct()
    {
        $this->signature = new Sha256();
    }

    /**
     * @return JwtHelper
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * @param $id
     * @return string
     * @throws \BadMethodCallException
     */
    public function token($id)
    {
        $token = (new Builder())
            ->setIssuer(self::CLAIM_ISSUER)
            ->setAudience(self::CLAIM_ISSUER)
            ->setId(self::CLAIM_JWT_ID, true)
            ->setIssuedAt(time())
            ->setNotBefore(time() + self::CLAIM_VALID_FROM)
            ->setExpiration(time() + self::CLAIM_EXPIRATION)
            ->set(self::PRIVATE_CLAIM_ID, $id)
            ->sign($this->signature, self::SIGNATURE_KEY);

        return (string)$token->getToken();
    }

    /**
     * @param $token
     * @return bool
     * @throws \BadMethodCallException
     */
    public function isValid($token)
    {       
        
        if (!is_string($token)) {
            $token = (string)$token;
        }
        $validator = new ValidationData();

        $validator->setIssuer(self::CLAIM_ISSUER);
        $validator->setAudience(self::CLAIM_ISSUER);
        $validator->setId(self::CLAIM_JWT_ID);

        try {
            $token = (new Parser())->parse((string)$token);
            return $token->validate($validator) && $token->verify($this->signature, self::SIGNATURE_KEY);
        } catch (Exception $runtimeException) {
            return false;
        }
    }

    /**
     * @param $token
     * @return string|null
     * @throws \BadMethodCallException
     * @throws \OutOfBoundsException
     */
    public function getPrivateClaim($token)
    {
        
        if (!$this->isValid($token)) {
            return null;
        }
        try {
            $token = (new Parser())->parse((string)$token);

            return $token->getClaim(self::PRIVATE_CLAIM_ID);

        } catch (Exception $exception) {
            return null;
        }
    }
}