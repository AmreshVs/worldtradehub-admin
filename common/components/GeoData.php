<?php

namespace common\components;

use yii\base\BaseObject;

/**
 * Description of GeoData
 *
 * @author Saranya <saranya@.com>
 */
class GeoData extends BaseObject {

    /**
     *
     * @var string 
     */
    private $street_number;

    /**
     *
     * @var string 
     */
    private $locality;
    
    /**
     *
     * @var string 
     */
    private $route;
    
    /**
     *
     * @var string 
     */
    private $administrative_area_level_1;
    
    /**
     *
     * @var string 
     */
    private $country;
    
    /**
     *
     * @var integer
     */
    private $postal_code;
    
    /**
     * 
     * @param string $street_number
     */
    public function setstreet_number($street_number) {
        $this->street_number = $street_number;
    }

    /**
     * 
     * @return string
     */
    public function getStreetNumber() {
        return $this->street_number;
    }
    
    /**
     * 
     * @param string $locality
     */
    public function setLocality($locality)
    {
        $this->locality = $locality;
    }
    
    /**
     * 
     * @return string
     */
    public function getRoute()
    {
        return $this->locality;
    }
    
    /**
     * 
     * @param string $route
     */
    public function setRoute($route)
    {
        $this->route = $route;
    }
    
    /**
     * 
     * @return string
     */
    public function getLocality()
    {
        return $this->route;
    }
    
    /**
     * 
     * @param string $administrative_area_level_1
     */
    public function setadministrative_area_level_1($administrative_area_level_1) {
        $this->administrative_area_level_1 = $administrative_area_level_1;
    }

    /**
     * 
     * @return string
     */
    public function getAdministrativeAreaLevel_1() {
        return $this->administrative_area_level_1;
    }
    
    /**
     * 
     * @param string $country
     */
    public function setCountry($country) {
        $this->country = $country;
    }

    /**
     * 
     * @return string
     */
    public function getCountry() {
        return $this->country;
    }
    
    /**
     * 
     * @param string $postal_code
     */
    public function setpostal_code($postal_code) {
        $this->postal_code = $postal_code;
    }

    /**
     * 
     * @return string
     */
    public function getPostalCode() {
        return $this->postal_code;
    }
    
    
}
