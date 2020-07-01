<?php
use yii\helpers\Url;
use common\models\Configuration;
use yii\helpers\Html;

$uploadHelper = \common\helpers\UploadHelper::getInstance();
$logo = $uploadHelper->get(Configuration::get(Configuration::APP_LOGO_PATH));


?>

<section class="boxed-container myaccount">
        <div class="container wow fadeInUp md">         


            <div class="row">
                <div class="col-sm-12">
                        <h3 class="title-border wow fadeInUp upper">Choose Your Payment Methode</h3>
                </div>
            </div>

            <div class="row">
               <div class="col-sm-12">
                 <div class="pay">
                    <img src="/backend/web/theme/images/razorpay.png">
                        <form  action="<?= Url::to('/admin/payment/payment-success?env=dev') ?>" method="POST">
                        <script
                            src="https://checkout.razorpay.com/v1/checkout.js"
                            data-key="rzp_test_SJUiLCFql9rqkF"
                            data-amount="<?= $model['subscription_price'] * 100 ?>"
                            data-buttontext="Pay with Razorpay"
                            data-name="World Trade Hub"
                            data-description="Buy a Stall"
                            data-image="<?= $logo ?>"
                            data-prefill.name="<?= $modelUser->username ?>"
                            data-prefill.email="<?= $modelUser->email ?>"
                            data-theme.color="#635CD"
                        ></script>
                        <input type="hidden" value="<?= $_GET['ticket_key'] ?>" name="order_key">
                        </form>
               </div>
            </div>
        </div>
    </section>

<script type="text/javascript">
    runOnLoad(function() {
        $('.razorpay-payment-button').click();
        
    });
</script>