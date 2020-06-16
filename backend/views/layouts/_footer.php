<?php 

use backend\models\Configuration;
use yii\helpers\Url;
use backend\models\AdminUser;

echo \common\widgets\CAlert::widget(); 
?>
<footer class="footer">
    © Copyright <?= date('Y') ?> <?= Configuration::get(Configuration::APP_NAME); ?>
</footer>

<?php if(AdminUser::isVendor()){ ?>
                
<script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async=""></script>
<script>
    runOnLoad(function() {
        OneSignal.push(["getUserId", function(playerId) {
            if(playerId){
                Core.ajax({
                url  : '<?= Url::to(['vendor/web-push-notification']) ?>',
                type : 'POST',
                data :{ playerId : playerId, isAjax : 'Yes' },
                success: function (result) {
                    }            
                });
            }

        }]);
    });
    
    var OneSignal = window.OneSignal || [];
    OneSignal.push(function() {
        OneSignal.init({
            appId: "",
            autoRegister: false,
            notifyButton: {
              enable: true,
            },
        });
    });
</script>

<?php } ?>