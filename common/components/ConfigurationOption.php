<?php

namespace common\components;

/**
 * Interface ConfigurationName
 * @package common\components
 *
 * @author yii2
 */
interface ConfigurationOption
{
    /**
     * App Management
     */
    const DEFAULT_LANG_CODE = 'en';
    const APP_NAME = 'WEB_APPLICATION_NAME';
    const APP_EMAIL = 'APP_EMAIL';
    const APP_CURRENCY_CODE = 'APP_CURRENCY_CODE';
    const APP_TIME_ZONE = 'APP_TIME_ZONE';
    const OFFER_IMAGE_PATH = 'OFFER_IMAGE_PATH';
    const APP_LOGO_PATH = 'APP_LOGO_PATH';
    const FAV_LOGO_PATH = 'FAV_LOGO_PATH';
    const APP_PLACEHOLDER_PATH = 'APP_PLACEHOLDER_PATH';
    const RADIUS = 'RADIUS';
    const APP_CONTACT_NO = 'APP_CONTACT_NO';
    const APP_CONTACT_ADDRESS ='APP_CONTACT_ADDRESS';
    const APP_CITY = 'APP_CITY';
    const SITE_NAME = 'SITE_NAME';
    const SITE_COPYRIGHT = 'SITE_COPYRIGHT';
    const APP_DESCRIPTION = 'APP_DESCRIPTION';
    const META_KEYWORD = 'META_KEYWORD';
    const META_DESCRIPTION = 'META_DESCRIPTION';
    const MINIMUM_FUND_REQUEST = 'MINIMUM_FUND_REQUEST';
    const MAXMIMUM_FUND_REQUEST = 'MAXIMUM_FUND_REQUEST';
    const MAP_KEY = 'MAP_KEY';

    /**
     * Social media
     */
    const FACEBOOK_URL = 'FACEBOOK_URL';
    const TWITTER_URL = 'TWITTER_URL';
    const GOOGLE_PLUS_URL = 'GOOGLE_PLUS_URL';
    const LINKEDIN_URL = 'LINKEDIN_URL';
    const INSTAGRAM_URL = 'INSTAGRAM_URL';
    const YOUTUBE_URL = 'YOUTUBE_URL';

    /**
     * SMS Gateway settings
     */
    const IS_SMS_ENABLED = 'IS_SMS_ENABLED';
    const SMS_ACCOUNT_ID = 'SMS_GATEWAY_ACCOUNT_ID';
    const SMS_AUTH_TOKEN = 'SMS_GATEWAY_AUTH_TOKEN';
    const SMS_SENDER_ID = 'SMS_GATEWAY_SENDER_ID';
    const SMS_COUNTRY_CODE = 'SMS_GATEWAY_COUNTRY_CODE';
    const SMS_GATEWAY_FROM = 'SMS_GATEWAY_FROM';

    /**
     * SMTP Settings
     */
    const IS_SMTP_ENABLED = 'IS_SMTP_ENABLED';
    const SMTP_HOST = 'SMTP_HOST';
    const SMTP_PORT = 'SMTP_PORT';
    const SMTP_USERNAME = 'SMTP_USERNAME';
    const SMTP_PASSWORD = 'SMTP_PASSWORD';
    const SMTP_ENCRYPTION = 'SMTP_ENCRYPTION';

    const SMTP_ENCRYPTION_SSL = 'SSL';
    const SMTP_ENCRYPTION_TLS = 'TLS';

    /**
     * One Signal - Push Notification
     */
    const ONE_SIGNAL_APP_ID = 'ONE_SIGNAL_APP_ID';
    const ONE_SIGNAL_AUTH_ID = 'ONE_SIGNAL_AUTH_ID';

    /**
     * Facebook login auth configuration
     */
    const FACEBOOK_APP_ID = 'FACEBOOK_APP_ID';
    const FACEBOOK_APP_SECRET = 'FACEBOOK_APP_SECRET';

    /**
     * Powered by
     */
    const POWERED_BY_TITLE = 'POWERED_BY_TITLE';
    const POWERED_BY_FOOTER = 'POWERED_BY_FOOTER';

    /**
     * App Store Links
     */
    const ANDROID_LINK = 'ANDROID_LINK';
    const IOS_LINK = 'IOS_LINK';
    const SUPPILER_ANDROID_LINK = 'SUPPILER_ANDROID_LINK';
    const DRIVER_ANDROID_LINK = 'DRIVER_ANDROID_LINK';

    const MAX_DELIVERY_TIME = 'MAX_DELIVERY_TIME';
    const REJECTION_PRICE_DIFFERENCE = 'REJECTION_PRICE_DIFFERENCE';  

    /**
     * Loyalty Point
     */
    const MINIMUM_LOYALTY_POINTS = 'MINIMUM_LOYALTY_POINTS';
    const CONVERSION_LOYALTY_POINTS_COUNT = 'CONVERSION_LOYALTY_POINTS_COUNT';
    const CONVERSION_LOYALTY_POINTS_CURRENCY = 'CONVERSION_LOYALTY_POINTS_CURRENCY';
    const LOYALTY_POINTS_TERMS_AND_CONDITIONS = 'LOYALTY_POINTS_TERMS_AND_CONDITIONS';

    const SPIN2WIN_LOYALTY_POINTS = 'SPIN2WIN_LOYALTY_POINTS';
    const SPIN2WIN_COUPON_TYPE_ONLINE_ITEM_BUY1_GET1_FREE = 'SPIN2WIN_COUPON_TYPE_ONLINE_ITEM_BUY1_GET1_FREE';
    const SPIN2WIN_COUPON_TYPE_ONLINE_ITEM_FLAT_OFFER = 'SPIN2WIN_COUPON_TYPE_ONLINE_ITEM_FLAT_OFFER';
    const SPIN2WIN_COUPON_TYPE_ONLINE_OFFER_COUPON = 'SPIN2WIN_COUPON_TYPE_ONLINE_OFFER_COUPON';

    /**
     * Live Chat
     */
    const LIVECHAT_SCRIPT_LICENCE_NUMBER = 'LIVECHAT_SCRIPT_LICENCE_NUMBER';

    /**
     * Terms and Condition
     */
    const TERMS_PAGENAME = 'TERMS_PAGENAME';
    const TERMS_CONTENTNAME = 'TERMS_CONTENTNAME';

    /**
     * Privacy Policy
     */
    const PRIVACY_PAGENAME = 'PRIVACY_PAGENAME';
    const PRIVACY_CONTENTNAME = 'PRIVACY_CONTENTNAME';

    /**
     * Cart
     */
    const MINIMUM_CART_VALUE = 'MINIMUM_CART_VALUE';
    const VAT_TAX = 'VAT_TAX';
    const COMMISSION_PERCENTAGE = 'COMMISSION_PERCENTAGE';
    const SERVICE_TAX = 'SERVICE_TAX';

    /**
     * Theme
     */
    const APP_PRIMARY_COLOR = 'APP_PRIMARY_COLOR';
    const APP_SECONDARY_COLOR = 'APP_SECONDARY_COLOR';
    const BUTTON_COLOR = 'BUTTON_COLOR';
    const BUTTON_HOVER_COLOR = 'BUTTON_HOVER_COLOR';
    const FONT_COLOR = 'FONT_COLOR';
    const FOOTER_APPS_COLOR = 'FOOTER_APPS_COLOR';

    /**
     * One signal Setting
     */
    const ONESIGNAL_APP_ID = 'ONESIGNAL_APP_ID';
    const ONESIGNAL_AUTH_ID = 'ONESIGNAL_AUTH_ID';
    const PUSH_NOTIFICATION_APP_ID = 'PUSH_NOTIFICATION_APP_ID';
    const PUSH_NOTIFICATION_REST_API_KEY = 'PUSH_NOTIFICATION_REST_API_KEY';
    const VENDOR_ONESIGNAL_APP_ID = 'VENDOR_ONESIGNAL_APP_ID';
    const VENDOR_ONESIGNAL_AUTH_ID = 'VENDOR_ONESIGNAL_AUTH_ID';
    const DELIVERYBOY_CHANNEL_ID = 'DELIVERYBOY_CHANNEL_ID';
    const DELIVERYBOY_ONESIGNAL_APP_ID = 'DELIVERYBOY_ONESIGNAL_APP_ID';
    const IS_CUSTOMER_NOTIFICATION_ENABLED = 'IS_CUSTOMER_NOTIFICATION_ENABLED';
    const IS_VENDOR_NOTIFICATION_ENABLED = 'IS_VENDOR_NOTIFICATION_ENABLED';
    const IS_DELIVERY_NOTIFICATION_ENABLED = 'IS_DELIVERY_NOTIFICATION_ENABLED';
    const IS_WEBPUSH_NOTIFICATION_ENABLED = 'IS_WEBPUSH_NOTIFICATION_ENABLED';
    const IS_CUSTOMER_SOUND_ENABLED = 'IS_CUSTOMER_SOUND_ENABLED';
    const IS_VENDOR_SOUND_ENABLED = 'IS_VENDOR_SOUND_ENABLED';
    const IS_DELIVERY_SOUND_ENABLED = 'IS_DELIVERY_SOUND_ENABLED';
    const DELIVERY_BOY_PUSH_NOTIFICATION_REST_API_KEY = 'DELIVERY_BOY_PUSH_NOTIFICATION_REST_API_KEY';
    const VENDOR_PUSH_NOTIFICATION_REST_API_KEY = 'VENDOR_PUSH_NOTIFICATION_REST_API_KEY';

    /**
     * Deliver Boy
     */
   const DELIVERY_BOY_ACCESS_URL = 'DELIVERY_BOY_ACCESS_URL';
   const COMPANY_KEY = 'COMPANY_KEY';
   const ORDER_PER_DRIVER = 'ORDER_PER_DRIVER';
   const DELIVERY_BOY_BEARER = 'DELIVERY_BOY_BEARER';
   const DELIVERY_BOY_RADIUS = 'DELIVERY_BOY_RADIUS';
   const DELIVERYBOY_ONESIGNAL_AUTH_ID = 'DELIVERYBOY_ONESIGNAL_AUTH_ID';
   const ORDER_ACCEPT_TIME_LIMIT = 'ORDER_ACCEPT_TIME_LIMIT';
   const DELIVERYBOY_RADIUS = 'DELIVERYBOY_RADIUS';
   const DELIVERY_BOY_ORDER_ASSIGN_TYPE = 'DELIVERY_BOY_ORDER_ASSIGN_TYPE';
   const DELIVERY_BOY_ORDER_ASSIGN_AUTOMATIC = 2;
   const DELIVERY_BOY_ORDER_ASSIGN_MANUAL = 1;

   const IS_ENABLED_DELIVERYBOY = 'IS_ENABLED_DELIVERYBOY';
   const CURRENCY_CODE_RM = 'RM';
   const CURRENCY_CODE_INR = 'INR';
   const CURRENCY_CODE_KES = 'KES';
   const CURRENCY_SYMBOL = 'CURRENCY_SYMBOL';
   const CURRENCY_SYMBOL_SIDE = 'CURRENCY_SYMBOL_SIDE';
   const CURRENCY_SYMBOL_LEFT = 'CURRENCY_SYMBOL_LEFT';
   const CURRENCY_SYMBOL_RIGHT = 'CURRENCY_SYMBOL_RIGHT';
   const CURRENCY_DECIMAL_PLACE = 'CURRENCY_DECIMAL_PLACE';
   const PREORDER_DATE_COUNT = 'PREORDER_DATE_COUNT';
   const CURRENCY_VALUE = 'CURRENCY_VALUE';

   const TIME_ZONE = 'TIME_ZONE';

   const LOYALTY_POINT_TYPE = 'LOYALTY_POINT_TYPE';

   const APP_LATITUDE = 'APP_LATITUDE';
   const APP_LONGITUDE = 'APP_LONGITUDE';

   const TABAOGO_CREDIT = 'TABAOGO_CREDIT';

   const DISTANCE_TIME = 'DISTANCE_TIME';
   const SOCKET_URL = 'SOCKET_URL';

   /**
    * Referral Points
    */
   const LEVEL1_REFERRAL_POINTS = 'LEVEL1_REFERRAL_POINTS';
   const LEVEL2_REFERRAL_POINTS = 'LEVEL2_REFERRAL_POINTS';
   const LEVEL3_REFERRAL_POINTS = 'LEVEL3_REFERRAL_POINTS';

   /**
    * Location Details
    */
   const COUNTRY = 'COUNTRY';
   const CITY = 'CITY';
   const CITY_SELANGOR  = 'CITY_SELANGOR';
   const CITY_KUALA_LUMPUR = 'KUALA_LUMPUR';
   const CITY_MELAKA = 'CITY_MELAKA';

   /*
    * order details
    */
   const ORDER_ACCEPT_TIME = 'ORDER_ACCEPT_TIME';
   const ORDER_CANCELLATION_TIME = 'ORDER_CANCELLATION_TIME';

   /**
    * Delivery Charge setting
    */

   const DELIVERY_CHARGE_TYPE = 'DELIVERY_CHARGE_TYPE';
   const DELIVERY_CHARGE_RADIUS = 'DELIVERY_CHARGE_RADIUS';
   const DELIVERY_CHARGE_BASE_KM = 'DELIVERY_CHARGE_BASE_KM';
   const DELIVERY_CHARGE_BASE_CHARGE = 'DELIVERY_CHARGE_BASE_CHARGE';
   const DELIVERY_CHARGE_ADD_KM = 'DELIVERY_CHARGE_ADD_KM';
   const DELIVERY_CHARGE_ADD_CHARGE = 'DELIVERY_CHARGE_ADD_CHARGE';



   const STRIPE_PUBLISHABLE_KEY = 'STRIPE_PUBLISHABLE_KEY';
   const STRIPE_SECRET_KEY = 'STRIPE_SECRET_KEY';
   const STRIPE_CURRENCY = 'STRIPE_CURRENCY';

    const APP_DEFAULT_LANG = 'APP_DEFAULT_LANG';

    /* Mobile Translation */
    const TRANSLATION_SYNC_VERSION = 'TRANSLATION_SYNC_VERSION';

    #Currency Format
    const CURRENCY_FORMAT = 'CURRENCY_FORMAT';

    /**
     * HOUR FORMAT 12 or 24
     */
    const HOUR_FORMAT_12_24 = 'HOUR_FORMAT_12_24';
    
    const DRIVER_ALLOCATION = 'DRIVER_ALLOCATION';


    const LOYALTY_REDEMPTION_AMOUNT = 'LOYALTY_POINT_REEDM_AMOUNT';
    const LOYALTY_TARGET_POINT = 'LOYALTY_TAEGRT_POINT';
    const LOYALITY_STATUS = 'STATUS';
}