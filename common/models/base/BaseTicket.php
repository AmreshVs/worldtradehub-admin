<?php

namespace common\models\base;

use Yii;

/**
 * This is the model class for table "ticket".
 *
 * @property integer $ticket_id
 * @property string $ticket_key
 * @property string $logo_image_path
 * @property string $company_name
 * @property string $website
 * @property integer $meet_id
 * @property integer $zoom_id
 * @property string $whatsapp_number
 * @property string $fb_url
 * @property string $youtupe_link
 * @property string $company_desc
 * @property string $created_at
 */
class BaseTicket extends \common\components\CModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'ticket';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['meet_id', 'zoom_id'], 'string', 'max' => 256],
            [['youtupe_link', 'company_desc'], 'string'],
            [['created_at'], 'safe'],
            [['ticket_key'], 'string', 'max' => 16],
            [['logo_image_path', 'company_name', 'website', 'fb_url'], 'string', 'max' => 256],
            [['whatsapp_number'], 'string', 'max' => 20],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ticket_id' => 'Ticket ID',
            'ticket_key' => 'Ticket Key',
            'logo_image_path' => 'Logo Image Path',
            'company_name' => 'Company Name',
            'website' => 'Website',
            'meet_id' => 'Meet ID',
            'zoom_id' => 'Zoom ID',
            'whatsapp_number' => 'Whatsapp Number',
            'fb_url' => 'Fb Url',
            'youtupe_link' => 'Youtupe Link',
            'company_desc' => 'Company Desc',
            'created_at' => 'Created At',
        ];
    }
}
