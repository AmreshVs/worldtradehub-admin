<?php
use common\helpers\Com;

$deliveryboy_details    = "<table class='table table-striped'>";
    $deliveryboy_details .= "<tr>
                                </tr>
                                    <th>".Yii::t('backend', 'Name')."</th>
                                    <td>".$resultData['name']."</td>
                                </tr>
                                <tr>
                                    <th>".Yii::t('backend', 'Email')."</th>
                                    <td>".$resultData['email']."</td>
                                </tr>
                                <tr>
                                    <th>".Yii::t('backend', 'Phone Number')."</th>
                                    <td>".$resultData['phone_number']."</td>
                                </tr>";
        if (Com::isSession('__order_id') && !Com::isSession('__isMap')) {
        $deliveryboy_details .= "<tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                            <input type='button' value='Assign' id='assign_deliveryboy' class='btn' onclick='assignDriver()'>
                                    </td>
                                </tr>";
        }
        
    $deliveryboy_details .= "</table>";
echo $deliveryboy_details;             