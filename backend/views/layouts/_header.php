<?php

use common\helpers\Com;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use backend\models\Language;

/* Yii::$app->language= 'ar';
/*@var $user backend\models\user */

$user = Yii::$app->getUser()->getIdentity();
$name = sprintf('%s %s %s',' ', $user->first_name ,  $user->last_name);

$language = Language::getAppLanguages();
$lang = Yii::$app->language;
?>

<header class="topbar">
    <nav class="navbar top-navbar navbar-expand-md navbar-dark">
        <?php if(false): ?>
        <div class="navbar-header">
            <a class="navbar-brand" href="<?= Url::to('/') ?>">
                <img src="<?= Com::res('images/logo-icon.png') ?> " alt="homepage" class="dark-logo"/>
            </a>
        </div>
        <?php endif; ?>
        <div class="navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <?php if(false): ?>
                <li class="nav-item hidden-sm-up">
                    <a class="nav-link nav-toggler waves-effect waves-light"
                                                     href="javascript:void(0)"><i class="ti-menu"></i></a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle waves-effect waves-dark" href="#" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false"> <i class="ti-email"></i>
                        <div class="notify"><span class="heartbit"></span> <span class="point"></span></div>
                    </a>
                    <div class="dropdown-menu mailbox animated bounceInDown">
                        <span class="with-arrow"><span class="bg-primary"></span></span>
                        <ul>
                            <li>
                                <div class="drop-title bg-primary text-white">
                                    <h4 class="m-b-0 m-t-5">4 New</h4>
                                    <span class="font-light">Notifications</span>
                                </div>
                            </li>
                            <li>
                                <div class="message-center">
                                    <!-- Message -->
                                    <a href="javascript:void(0)">
                                        <div class="btn btn-danger btn-circle"><i class="fa fa-link"></i></div>
                                        <div class="mail-contnet">
                                            <h5>Luanch Admin</h5> <span
                                                    class="mail-desc">Just see the my new admin!</span> <span
                                                    class="time">9:30 AM</span></div>
                                    </a>
                                    <!-- Message -->
                                    <a href="javascript:void(0)">
                                        <div class="btn btn-success btn-circle"><i class="ti-calendar"></i></div>
                                        <div class="mail-contnet">
                                            <h5>Event today</h5> <span class="mail-desc">Just a reminder that you have event</span>
                                            <span class="time">9:10 AM</span></div>
                                    </a>
                                    <!-- Message -->
                                    <a href="javascript:void(0)">
                                        <div class="btn btn-info btn-circle"><i class="ti-settings"></i></div>
                                        <div class="mail-contnet">
                                            <h5>Settings</h5> <span class="mail-desc">You can customize this template as you want</span>
                                            <span class="time">9:08 AM</span></div>
                                    </a>
                                    <!-- Message -->
                                    <a href="javascript:void(0)">
                                        <div class="btn btn-primary btn-circle"><i class="ti-user"></i></div>
                                        <div class="mail-contnet">
                                            <h5>Pavan kumar</h5> <span class="mail-desc">Just see the my admin!</span>
                                            <span class="time">9:02 AM</span></div>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <a class="nav-link text-center m-b-5" href="javascript:void(0);"> <strong>Check all
                                        notifications</strong> <i class="fa fa-angle-right"></i> </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- ============================================================== -->
                <!-- End Comment -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Messages -->
                <!-- ============================================================== -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle waves-effect waves-dark" href="#" id="2" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false"> <i class="icon-note"></i>
                        <div class="notify"><span class="heartbit"></span> <span class="point"></span></div>
                    </a>
                    <div class="dropdown-menu mailbox animated bounceInDown" aria-labelledby="2">
                        <span class="with-arrow"><span class="bg-danger"></span></span>
                        <ul>
                            <li>
                                <div class="drop-title text-white bg-danger">
                                    <h4 class="m-b-0 m-t-5">5 New</h4>
                                    <span class="font-light">Messages</span>
                                </div>
                            </li>
                            <li>
                                <div class="message-center">
                                    <!-- Message -->
                                    <a href="javascript:void(0)">
                                        <div class="user-img"><img src="../assets/images/users/1.jpg" alt="user"
                                                                   class="img-circle"> <span
                                                    class="profile-status online pull-right"></span></div>
                                        <div class="mail-contnet">
                                            <h5>Pavan kumar</h5> <span class="mail-desc">Just see the my admin!</span>
                                            <span class="time">9:30 AM</span></div>
                                    </a>
                                    <!-- Message -->
                                    <a href="javascript:void(0)">
                                        <div class="user-img"><img src="../assets/images/users/2.jpg" alt="user"
                                                                   class="img-circle"> <span
                                                    class="profile-status busy pull-right"></span></div>
                                        <div class="mail-contnet">
                                            <h5>Sonu Nigam</h5> <span
                                                    class="mail-desc">I've sung a song! See you at</span> <span
                                                    class="time">9:10 AM</span></div>
                                    </a>
                                    <!-- Message -->
                                    <a href="javascript:void(0)">
                                        <div class="user-img"><img src="../assets/images/users/3.jpg" alt="user"
                                                                   class="img-circle"> <span
                                                    class="profile-status away pull-right"></span></div>
                                        <div class="mail-contnet">
                                            <h5>Arijit Sinh</h5> <span class="mail-desc">I am a singer!</span> <span
                                                    class="time">9:08 AM</span></div>
                                    </a>
                                    <!-- Message -->
                                    <a href="javascript:void(0)">
                                        <div class="user-img">
                                            <img src="<?= Com::res('images/users/4.jpg') ?>" alt="user" class="img-circle">
                                            <span class="profile-status offline pull-right"></span>
                                        </div>
                                        <div class="mail-contnet">
                                            <h5>Pavan kumar</h5> <span class="mail-desc">Just see the my admin!</span>
                                            <span class="time">9:02 AM</span></div>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <a class="nav-link text-center link m-b-5" href="javascript:void(0);"> <b>See all
                                        e-Mails</b> <i class="fa fa-angle-right"></i> </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- ============================================================== -->
                <!-- End Messages -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Search -->
                <!-- ============================================================== -->
                <li class="nav-item search-box"><a class="nav-link waves-effect waves-dark" href="javascript:void(0)"><i
                                class="ti-search"></i></a>
                    <form class="app-search">
                        <input type="text" class="form-control" placeholder="Search &amp; enter"> <a class="srh-btn"><i
                                    class="ti-close"></i></a>
                    </form>
                </li><?php endif ;?>
            </ul> 
            <ul class="navbar-nav my-lg-0">
                <!-- ============================================================== -->
                <!-- mega menu -->
                <!-- ============================================================== -->
                <?php if(false): ?>
                <li class="nav-item dropdown mega-dropdown"><a class="nav-link dropdown-toggle waves-effect waves-dark"
                                                               href="#" data-toggle="dropdown" aria-haspopup="true"
                                                               aria-expanded="false"><i
                                class="ti-layout-width-default"></i></a>
                    <div class="dropdown-menu animated bounceInDown">
                        <ul class="mega-dropdown-menu row">
                            <li class="col-lg-3 col-xlg-2 m-b-30">
                                <h4 class="m-b-20">CAROUSEL</h4>
                                <!-- CAROUSEL -->
                                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner" role="listbox">
                                        <div class="carousel-item active">
                                            <div class="container"><img class="d-block img-fluid"
                                                                        src="../assets/images/big/img1.jpg"
                                                                        alt="First slide"></div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="container"><img class="d-block img-fluid"
                                                                        src="../assets/images/big/img2.jpg"
                                                                        alt="Second slide"></div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="container"><img class="d-block img-fluid"
                                                                        src="../assets/images/big/img3.jpg"
                                                                        alt="Third slide"></div>
                                        </div>
                                    </div>
                                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                                       data-slide="prev"> <span class="carousel-control-prev-icon"
                                                                aria-hidden="true"></span> <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                                       data-slide="next"> <span class="carousel-control-next-icon"
                                                                aria-hidden="true"></span> <span
                                                class="sr-only">Next</span> </a>
                                </div>
                                <!-- End CAROUSEL -->
                            </li>
                            <li class="col-lg-3 m-b-30">
                                <h4 class="m-b-20">ACCORDION</h4>
                                <!-- Accordian -->
                                <div id="accordion" class="nav-accordion" role="tablist" aria-multiselectable="true">
                                    <div class="card">
                                        <div class="card-header" role="tab" id="headingOne">
                                            <h5 class="mb-0">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                                                   aria-expanded="true" aria-controls="collapseOne">
                                                    Collapsible Group Item #1
                                                </a>
                                            </h5></div>
                                        <div id="collapseOne" class="collapse show" role="tabpanel"
                                             aria-labelledby="headingOne">
                                            <div class="card-body"> Anim pariatur cliche reprehenderit, enim eiusmod
                                                high.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header" role="tab" id="headingTwo">
                                            <h5 class="mb-0">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion"
                                                   href="#collapseTwo" aria-expanded="false"
                                                   aria-controls="collapseTwo">
                                                    Collapsible Group Item #2
                                                </a>
                                            </h5></div>
                                        <div id="collapseTwo" class="collapse" role="tabpanel"
                                             aria-labelledby="headingTwo">
                                            <div class="card-body"> Anim pariatur cliche reprehenderit, enim eiusmod
                                                high life accusamus terry richardson ad squid.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header" role="tab" id="headingThree">
                                            <h5 class="mb-0">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion"
                                                   href="#collapseThree" aria-expanded="false"
                                                   aria-controls="collapseThree">
                                                    Collapsible Group Item #3
                                                </a>
                                            </h5></div>
                                        <div id="collapseThree" class="collapse" role="tabpanel"
                                             aria-labelledby="headingThree">
                                            <div class="card-body"> Anim pariatur cliche reprehenderit, enim eiusmod
                                                high life accusamus terry richardson ad squid.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="col-lg-3  m-b-30">
                                <h4 class="m-b-20">CONTACT US</h4>
                                <!-- Contact -->
                                <form>
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="exampleInputname1"
                                               placeholder="Enter Name"></div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Enter email"></div>
                                    <div class="form-group">
                                        <textarea class="form-control" id="exampleTextarea" rows="3"
                                                  placeholder="Message"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-info">Submit</button>
                                </form>
                            </li>
                            <li class="col-lg-3 col-xlg-4 m-b-30">
                                <h4 class="m-b-20">List style</h4>
                                <!-- List style -->
                                <ul class="list-style-none">
                                    <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> You can
                                            give link</a></li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> Give link</a>
                                    </li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> Another
                                            Give link</a></li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> Forth link</a>
                                    </li>
                                    <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> Another
                                            fifth link</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </li>
                <?php endif;?>
                <!-- ============================================================== -->
                <!-- End mega menu -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- User profile and search -->
                <!-- ============================================================== -->

        


<li class="language-drop">
    <?= Html::dropDownList('language', $user->getPrimaryKey(),  
        $language, ['options' => [
                        $lang => [
                            'selected' => true
                        ]
                    ],
                        'class' => 'selectpicker',
                        'id' => 'change-lang'
                    ]) ?>
<!--                            <select class="selectpicker"  data-style="btn-language" id="change-lang">
        <option value="en"  data-content='<span class="flag-icon flag-english"></span> English'>EN</option>
        <option value="no"  data-content='<span class="flag-icon flag-arab"></span> Norwegian'>norwegian</option>
    </select>-->
</li>
        
             
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle acc waves-effect waves-dark" href="#"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <?= yii::t('backend','Hi'), ucfirst($name); ?>
                              <i class="icon-user"></i></a>
                        <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                            <span class="with-arrow"><span class="bg-primary"></span></span>
                            <div class="d-flex no-block align-items-center p-15 bg-primary text-white m-b-10">
                                <?php if(false) : ?>
                                        <div class="">
                                            <img src="../assets/images/users/1.jpg" alt="user" class="img-circle"
                                                           width="60">
                                        </div>
                                <?php endif ; ?>
                                <span class="fa fa-2x fa-user-circle"></span>
                                <div class="m-l-10">
                                    <h4 class="m-b-0"><?= ucfirst($name) ?></h4>
                                    <?php if(false) : ?>
                                                <p class=" m-b-0"><a href="http://www.wrappixel.com/cdn-cgi/l/email-protection"
                                                                 class="__cf_email__"
                                                                 data-cfemail="b2c4d3c0c7dcf2d5dfd3dbde9cd1dddf">[email&#160;protected]</a>
                                                </p>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <a class="dropdown-item" href="<?= Url::to(['admin-user/profile-view']); ?>"><i class="ti-user m-r-5 m-l-5"></i> 
                                <?= Yii::t('backend', 'My Profile') ?> </a>
                            <a class="dropdown-item" href="<?= Url::to(['admin-user/change-password']); ?>">
                                <i class="fa fa-key m-r-5 m-l-5"></i><?= Yii::t('backend', 'Change Password') ?></a>
                            <?php if (false) : ?> 
                                    <a class="dropdown-item" href="javascript:void(0)"><i class="ti-wallet m-r-5 m-l-5"></i> My
                                        Balance</a>
                                    <a class="dropdown-item" href="javascript:void(0)"><i class="ti-email m-r-5 m-l-5"></i>
                                        Inbox</a>
                            <?php endif; ?>
                            <a class="dropdown-item" href="<?= Url::to(['admin-user/profile-update']); ?>">
                                <i class="ti-settings m-r-5 m-l-5"></i>
                                <?= Yii::t('backend',  'Account Setting') ?></a>
                            <a class="dropdown-item" href="<?= Url::to(['login/logout']); ?>"><i class="fa fa-power-off m-r-5 m-l-5"></i>
                               <?= Yii::t('backend', 'Logout') ?></a>
                        </div>
                    </li>
                    <?php if(false): ?>
                    <li class="nav-item right-side-toggle">
                        <a class="nav-link  waves-effect waves-light"
                           href="javascript:void(0)"><i class="ti-settings"></i></a></li>
                    <?php endif; ?> 
            </ul>
        </div>
    </nav>
</header>
<script type="text/javascript">
    runOnLoad(function () {
        var $this;

        $('#change-lang').on('change', function () {
            $this = $(this);
            Core.ajax({
                url: '<?= Url::to(['dashboard/change-language/']) ?>',
                data: {lang: $this.val()},
                done: function (json) {
                    if (parseInt(json.status) === 1) {
                        window.location.reload(true);
                        return;
                    }
                    Core.handleInvalidServerResponse(json);
                }
            });
        });
    })
</script>