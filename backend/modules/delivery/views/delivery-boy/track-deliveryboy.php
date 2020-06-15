<?php
use yii\helpers\Url;
use yii\widgets\Breadcrumbs;
use common\helpers\Com;

//echo '<pre>'; print_r($deliveryboy); echo '</pre>';
/* @var $this \yii\web\View */
/* @var $model \backend\models\Branch */
$this->title = Yii::t('backend', 'Track Delivery Boy');
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Delivery Boy'), 'url' => Url::to(['/delivery/delivery-boy'])];
$this->params['breadcrumbs'][] = ['label' => $this->title];
//Com::unsetSession(Com::isSession('__order_id'));
?>
<?= Breadcrumbs::widget([
            'options'  => ['class' => 'breadcrumb reset'],
            'homeLink' => [ 
                'label'    => Yii::t('backend', 'Home'),
                'url'      => Url::to(['/']),
                ],
            'links'    => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ]); ?>
<div class="main">

    
<div class="center"> 
    <div class="container"> 
        <div class="box_container full">            
            <div class="form_header"> 
                <h1><?= $this->title ?></h1> 
            </div> <!--form_header--> 
            <div class="row"> 
                <?php if (Com::isSession('__order_id') && Com::isSession('__isMap')) {?>
                    <div class="col-md-8"> 
                        <div id="googleMap" style="width:100%;height:420px;"></div>  
                    </div> 
                    <div class="col-md-4"> 
                        <div id="driveryboy_details" style="display: none;max-height: 40px; "></div> 
                        <input type='hidden' name='driveryboy_id' id="driveryboy_id"> 
                    </div>
                <?php } else if (!Com::isSession('__order_id')) { ?>
                    <div class="col-md-8"> 
                        <div id="googleMap" style="width:100%;height:420px;"></div>  
                    </div> 
                    <div class="col-md-4"> 
                        <div id="driveryboy_details" style="display: none;max-height: 40px; "></div> 
                        <input type='hidden' name='driveryboy_id' id="driveryboy_id"> 
                    </div>
                <?php } else { ?>
                    <div class="col-md-12">
                    <?php
                        $status = ["", "STATUS", "Available", "STATUS"];
                        foreach ($deliveryboy as $key => $value) {
                            $class_css = 'style="background:green;"';
                            $stat = 'ONLINE';
                            if ($value[6] == 1) {
                                $class_css = 'style="background:red;"';
                                $stat = 'Busy';
                            } else if ($value[6] == 2) {
                                $class_css = 'style="background:red;"';
                            }
                            echo '<button id="' . $value[4]. '" class="assign btn" '.$class_css.' onclick="getDriverValue(\'' .$value[4] .'\')">' .$value[3]. ' <br>('.$stat.')'. '</button>&nbsp;';
                        }
                    ?>

                    <div id="driveryboy_details" style="display: none;"></div>
                    <input type='hidden' name='driveryboy_id' id="driveryboy_id">
                </div> 
                <?php } ?>
            </div>
        </div> <!--container-->
</div> <!--center-->
</div> <!--main--> 
            
                <?php /*
                <div class="center">
    <div class="container">
        <div class="box_container full">           
            <div class="form_header">
                <h1><?= $this->title ?></h1>
            </div> <!--form_header-->
            <div class="row">
            <div class="col-md-8" style="display: none;">
                    <div id="googleMap" style="width:100%;height:420px;"></div> 
                </div>
                <div class="col-md-12">
                    <?php
                        $status = ["", "STATUS", "Available", "STATUS"];
                        foreach ($deliveryboy as $key => $value) {
                            $class_css = 'style="background:green;"';
                            $stat = 'ONLINE';
                            if ($value[6] == 1) {
                                $class_css = 'style="background:red;"';
                                $stat = 'Busy';
                            } else if ($value[6] == 2) {
                                $class_css = 'style="background:red;"';
                            }
                            echo '<button id="' . $value[4]. '" class="assign btn" '.$class_css.' onclick="getDriverValue(\'' .$value[4] .'\')">' .$value[3]. ' <br>('.$stat.')'. '</button>&nbsp;';
                        }
                    ?>

                    <div id="driveryboy_details" style="display: none;"></div>
                    <input type='hidden' name='driveryboy_id' id="driveryboy_id">
                </div> 
                </div> 
        </div> <!--container--> 
</div> <!--center--> */?>
            

<?php 
$count = count($deliveryboy); 
if (count($deliveryboy) > 0) {
    $locations = json_encode($deliveryboy);
} else {
    $locations = '';
}
    $this-> registerJsFile('https://maps.googleapis.com/maps/api/js?v=3.exp&key='.\common\models\Configuration::get(\common\models\Configuration::MAP_KEY));
    $this-> registerJs(
                    'function initialize() {
                        var count = '.$count.';
                        var locations = '. $locations .';
                        console.log(locations);
                        var icon = {
                                        url: "'. Com::res('images/deliveryboy_green.png', false) .'", 
                                        scaledSize: new google.maps.Size(28, 28), 
                                        origin: new google.maps.Point(0,0), 
                                        anchor: new google.maps.Point(0,20) 
                                    };
                                
                        
                      var mapProp = {
                        center:new google.maps.LatLng(locations[0][1],locations[0][2]), 
                        zoom:15,
                        mapTypeId: \'terrain\',
                      };
                      var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
                      for(l=0;l<count;l++)
                      {
                          
                            var delivery_boy_key = locations[l][4];
                            var marker = new google.maps.Marker({
                              position: new google.maps.LatLng(locations[l][1],locations[l][2]),
                              map     : map,
                              title   : locations[l][3],
                              icon    : icon
                            });
                            attachDetails(marker, "<button id=\'"+delivery_boy_key+"\' class=\"assign\" onclick=\"getDriverValue(\'"+delivery_boy_key+"\')\">'.Yii::t('backend', 'Deliveryboy details').'</button>", delivery_boy_key);
                       }
                             
                    }
                    initialize();
                    google.maps.event.addDomListener(window, \'load\', initialize);

                    function attachDetails(marker, details) 
                    {
                        var infowindow = new google.maps.InfoWindow({
                            content: details
                        });

                        marker.addListener(\'click\', function() {
                            infowindow.open(marker.get(\'map\'), marker);
                        });
                        
                        google.maps.event.addListener(marker.get(\'map\'), \'click\', function(){
                            infowindow.close(marker.get(\'map\'), marker);
                        });
                        google.maps.event.addListener(infowindow, \'domready\', function() {
                            
                        });
                        

                    }
                    window.getDriverValue = function (value) {
                        Core.ajax({
                            url         :   "'.Url::to(['delivery-boy/get-driveryboy-details']).'",
                            type        :   \'POST\',
                            data        :   {\'key\' : value},
                            dataType    :   \'json\',
                            done : function (json) {
                                $(\'#driveryboy_details\').slideUp();
                                $(\'#driveryboy_details\').html(json.deliveryboy_details);
                                $(\'#driveryboy_id\').val(json.driveryboy_key);
                                $(\'#driveryboy_details\').slideDown();
                            }
                        });
                    }
                    window.assignDriver = function () {
                        Core.ajax({
                            url         :   "'.Url::to(['delivery-boy/assign-delivery-boy']).'",
                            type        :   \'POST\',
                            data        :   {\'key\' : $("#driveryboy_id").val()},
                            dataType    :   \'json\',
                            done : function (json) {
                                window.location.href = "'.Url::to(['/order/index']).'";
                                return false;
                            },
                            
                        });
                    }'
                    );
?>
