<?php

use yii\helpers\Url;

$user = Yii::$app->user;
?>
<!-- =============================================== -->

<!-- Left side column. contains the sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->

        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">ASOSIY MENYULAR</li>
            <? if ($user->can('admin')) : ?>
                <li>
                    <a href="<?= Url::to(['category/index']) ?>">
                        <i class="fa fa-briefcase"></i>
                        <span>Kategoriya</span>
                    </a>
                </li>
                <li>
                    <a href="<?= Url::to(['groups/index']) ?>">
                        <i class="fa fa-users"></i>
                        <span>Guruhlar</span>
                    </a>
                </li>
                <li>
                    <a href="<?= Url::to(['student/index']) ?>">
                        <i class="fa fa-user"></i>
                        <span>O'quvchilar</span>
                    </a>
                </li>
                <li>
                    <a href="<?= Url::to(['subject/index']) ?>">
                        <i class="fa fa-book"></i>
                        <span>Fanlar</span>
                    </a>
                </li>
                <li>
                    <a href="<?= Url::to(['teacher/index']) ?>">
                        <i class="fa fa-user"></i>
                        <span>O'qituvchilar</span>
                    </a>
                </li>
                <li>
                    <a href="<?= Url::to(['group-subjects/index']) ?>">
                        <i class="fa fa-users"></i>
                        <span>Guruh fanlari</span>
                    </a>
                </li>
                <li>
                    <a href="<?= Url::to(['group-teachers/index']) ?>">
                        <i class="fa fa-users"></i>
                        <span>Guruh o'qituvchilari</span>
                    </a>
                </li>
                <li>
                    <a href="<?= Url::to(['subject-teachers/index']) ?>">
                        <i class="fa fa-book"></i>
                        <span>Fan o'qituvchilari</span>
                    </a>
                </li>
                <li>
                    <a href="<?= Url::to(['groups/archived']) ?>">
                        <i class="fa fa-book"></i>
                        <span>Arxivdagi guruhlar</span>
                    </a>
                </li>
            <? else : ?>
                <li>
                    <a href="<?= Url::to(['teacher/groups']) ?>">
                        <i class="fa fa-book"></i>
                        <span>Guruhlar</span>
                    </a>
                </li>
            <? endif; ?>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>

<!-- =============================================== -->