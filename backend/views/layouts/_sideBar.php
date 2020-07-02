  <?php

use common\helpers\Com;
use backend\helpers\SidebarMenu;
use yii\helpers\Url;
use backend\models\AdminUser;
use yii\helpers\Html;
use backend\models\Configuration;

?>
<aside class="left-sidebar">
    <div class="d-flex no-block nav-text-box align-items-center">
        <span>
            <a href = "<?= Url::to(['/']) ?>"><?=Html::img(Configuration::get(Configuration::APP_LOGO_PATH))?></a>
        </span>
        <a class="nav-toggler waves-effect waves-dark ml-auto hidden-sm-up" href="javascript:void(0)">
            <i class="ti-menu ti-close"></i>
        </a>
    </div>
    <div class="scroll-sidebar">
        <nav class="sidebar-nav">
            <ul id="sidebarnav">

                <?php
                //SidebarMenu::add(yii::t('backend','Dashboard'), Url::to(['/dashboard']), 'signal');

                $settingsId = SidebarMenu::add(yii::t('backend','Settings'), '#', 'gears');
                SidebarMenu::addSub($settingsId, yii::t('backend','Application Configuration'), Url::to(['/configuration/app-config']) );

                SidebarMenu::add(yii::t('backend','Stall Bookings'), Url::to(['/ticket/']), 'building');
                SidebarMenu::add(yii::t('backend','Events'), Url::to(['/event/']), 'plus-circle');

                SidebarMenu::add(yii::t('backend','Vistors'), Url::to(['/user/']), 'group');

                SidebarMenu::add(yii::t('backend','Exhibitors'), Url::to(['/exhibitor/']), 'user');



                SidebarMenu::render();
                
                ?>
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>
