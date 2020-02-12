<?php

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */

use yii\helpers\Html;

$this->title = $name;
?>
<div class="site-error">

    <div class="alert alert-danger">
        <?= nl2br(Html::encode($message)) ?>
    </div>

    <p>
        Sizning so'rovingizni amalga oshirish davomida yuqoridagi xatolik yuz berdi.
    </p>
    <p>
        Agar siz buni serverdagi xatolik deb o'ylasangiz, iltimos biz bilan bog'laning. Rahmat.
    </p>

</div>
