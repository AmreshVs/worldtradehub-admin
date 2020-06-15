<?php
namespace common\models;

use common\models\base\BaseTicket;
use common\components\AttributeKeyGeneratorBehaviour;
use Yii;
use yii\db\ActiveQuery;

/**
 * Class Ticket
 * @package common\models
 */
class Ticket extends BaseTicket
{
    public $event_title, $username, $register_type;
	 /**
     * @return array
     */
    public function behaviors()
    {
        $behaviors = parent::behaviors();
        $behaviors[] = [
            'class' => AttributeKeyGeneratorBehaviour::class,
            'attributes' => [
                'ticket_key'
            ]
        ];

        return $behaviors;
    }

    public static function getBlocks()
    {
    
        $blocks = [];
        $ids = ['empty1', 29, 30, 88, 'empty2', 89, 119, 120, 'empty3'];
        $tds = [];
        
        foreach ($ids as $key => $value) {
            if (strpos($value, 'empty') !== false) {
                $tds[$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            } else{
                $tds['slot'.$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            }
        
        }
        $blocks['room1']['first_row'] = $tds;


        $ids = [28, 'empty1', 'empty2', 'empty3', 87, 'empty4', 'empty5', 'empty6', 121];
        $tds = [];
        
        foreach ($ids as $key => $value) {
            if (strpos($value, 'empty') !== false) {
                $tds[$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            } else{
                $tds['slot'.$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            }
        
        }
        $blocks['room1']['second_row'] = $tds;

        $rows = [];
        $r1 = 27;
        $r3 = 31;
        $r5 = 86;
        $r7 = 118;
        $r9 = 122;

        $r1Arr = [];
        $r3Arr = [];
        $r5Arr = [];
        $r7Arr = [];
        $r9Arr = [];

        for($i = 0; $i < 26; $i++){
          array_push($r1Arr, $r1);
          array_push($r3Arr, $r3);
          array_push($r5Arr, $r5);
          array_push($r7Arr, $r7);
          array_push($r9Arr, $r9);
          $r1--; $r3++; $r5--; $r7--; $r9++;
        }

        for($i = 0; $i < 26; $i++){
            $rows['slot'.$r1Arr[$i]] = [
                    'id' => $r1Arr[$i],
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            $rows['slot'.$r3Arr[$i]] = [
                    'id' => $r3Arr[$i],
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            $rows['slot'.$r5Arr[$i]] = [
                    'id' => $r5Arr[$i],
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            $rows['slot'.$r7Arr[$i]] = [
                    'id' => $r7Arr[$i],
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            $rows['slot'.$r9Arr[$i]] = [
                    'id' => $r9Arr[$i],
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];

            
              // <td className={selected === r9Arr[i] ? "table-success" : ''} onClick={() => handleClick(r9Arr[i])} data-tip={`Stall <b>${r9Arr[i]}</b> <br> <b>Company Name</b> <br> <span>Description</span><br><span class="badge badge-primary">Diamond</span>`}>test {r9Arr[i]}</td>
           
          //);
          $r1--; $r3++; $r5--; $r7--; $r9++;
        }
        $blocks['room1']['normal_row'] = $rows;

        $ids = [1, 'empty1', 57, 'empty2', 'empty3', 'empty4', 92, 'empty5', 148];
        $tds = [];
        foreach ($ids as $key => $value) {
            if (strpos($value, 'empty') !== false) {
                $tds[$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            } else{
                $tds[$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            }
        
        }

        $blocks['room1']['second_last_row'] = $tds;

        $ids = [0, 'empty1', 58, 59, 60, 90, 91, 'empty2', 149];
        $tds = [];
        foreach ($ids as $key => $value) {
            if (strpos($value, 'empty') !== false) {
                $tds[$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            } else{
                $tds[$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            }
        
        }
        $blocks['room1']['last_row'] = $tds;

        $ids = ['empty1', 179, 180, 238, 'empty2', 239, 240, 270, 'empty3'];
        $tds = [];
        
        foreach ($ids as $key => $value) {
            if (strpos($value, 'empty') !== false) {
                $tds[$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            } else{
                $tds['slot'.$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            }
        
        }
        $blocks['room2']['first_row'] = $tds;


        $ids = [178, 'empty1', 'empty2', 'empty3', 237, 'empty4', 'empty5', 'empty6', 271];
        $tds = [];
        
        foreach ($ids as $key => $value) {
            if (strpos($value, 'empty') !== false) {
                $tds[$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            } else{
                $tds['slot'.$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            }
        
        }
        $blocks['room2']['second_row'] = $tds;

        $rows = [];
        $r1 = 177;
        $r3 = 181;
        $r5 = 236;
        $r7 = 241;
        $r9 = 272;

        $r1Arr = [];
        $r3Arr = [];
        $r5Arr = [];
        $r7Arr = [];
        $r9Arr = [];

        for($i = 0; $i < 26; $i++){
          array_push($r1Arr, $r1);
          array_push($r3Arr, $r3);
          array_push($r5Arr, $r5);
          array_push($r7Arr, $r7);
          array_push($r9Arr, $r9);
          $r1--; $r3++; $r5--; $r7--; $r9++;
        }

        for($i = 0; $i < 26; $i++){
            $rows['slot'.$r1Arr[$i]] = [
                    'id' => $r1Arr[$i],
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            $rows['slot'.$r3Arr[$i]] = [
                    'id' => $r3Arr[$i],
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            $rows['slot'.$r5Arr[$i]] = [
                    'id' => $r5Arr[$i],
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            $rows['slot'.$r7Arr[$i]] = [
                    'id' => $r7Arr[$i],
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            $rows['slot'.$r9Arr[$i]] = [
                    'id' => $r9Arr[$i],
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];

            
              // <td className={selected === r9Arr[i] ? "table-success" : ''} onClick={() => handleClick(r9Arr[i])} data-tip={`Stall <b>${r9Arr[i]}</b> <br> <b>Company Name</b> <br> <span>Description</span><br><span class="badge badge-primary">Diamond</span>`}>test {r9Arr[i]}</td>
           
          //);
          $r1--; $r3++; $r5--; $r7--; $r9++;
        }
        $blocks['room2']['normal_row'] = $rows;

        $ids = [151, 'empty1', 207, 'empty2', 'empty3', 'empty4', 267, 'empty5', 298];
        $tds = [];
        foreach ($ids as $key => $value) {
            if (strpos($value, 'empty') !== false) {
                $tds[$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            } else{
                $tds[$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            }
        
        }

        $blocks['room_2']['second_last_row'] = $tds;

        $ids = [150, 'empty1', 208, 209, 210, 268, 269, 'empty2', 299];
        $tds = [];
        foreach ($ids as $key => $value) {
            if (strpos($value, 'empty') !== false) {
                $tds[$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            } else{
                $tds[$value] = [
                    'id' => $value,
                    'name' => '',
                    'description' => '',
                    'type' => ''
                ];
            }
        
        }
        $blocks['room_2']['last_row'] = $tds;

        return $blocks;
    }
}
