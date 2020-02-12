<?php
use yii\helpers\Url;
//echo "<pre>";
//var_dump(Yii::$app->user->identity->first_name); die();

?>
<header class="main-header">
    <!-- Logo -->
    <a href="<?= yii\helpers\Url::home() ?>" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>E-J</b></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>E - JURNAL</b></span>
    </a>
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">
            <?php if (!Yii::$app->user->isGuest) : $user = Yii::$app->user->identity; $avatar = !empty($user->photo) ? '/uploads/'.$user->photo : '/dist/img/user.png'; ?>
            <ul class="nav navbar-nav">
                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="<?=$avatar?>" class="user-image" alt="User Image">
                        <span class="hidden-xs"><?= $user->last_name . " " . $user->first_name ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <img src="<?=$avatar?>" class="img-circle" alt="User Image">

                            <p>
                                <?= $user->last_name . " " . $user->first_name ?>
                                <br>
                                <em><?=$user->speciality?></em>
<!--                                <small>Member since Nov. 2012</small>-->
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="<?= Url::to(['/teacher/profile'])?>" class="btn btn-default btn-flat">Shaxsiy kabinet</a>
                            </div>
                            <div class="pull-right">
                                <a href="<?= Url::to(['/site/logout']) ?>" data-method="post" class="btn btn-default btn-flat">Chiqish</a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
            <? endif; ?>
        </div>
    </nav>
</header>