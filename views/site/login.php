<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */

/* @var $model app\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Login';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="login-box-body">
    <p class="login-box-msg">Tizimga kirish uchun ma'lumotlarni kiriting.</p>

    <?php $form = ActiveForm::begin(['id' => 'login-form', 'action' => ['site/login'], 'options' => ['method' => 'post']]); ?>

    <?= $form->field($model, 'phoneNumber')->textInput(['autofocus' => true])->label('Telefon raqam') ?>

    <?= $form->field($model, 'password')->passwordInput()->label('Parol') ?>

    <div class="row">
        <div class="col-xs-8">
            <?= $form->field($model, 'rememberMe')->checkbox()->label('Meni eslab qol') ?>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
            <?= Html::submitButton('Kirish', ['class' => 'btn btn-primary btn-block btn-flat', 'name' => 'login-button']) ?>
        </div>
        <!-- /.col -->
    </div>

    <?php ActiveForm::end(); ?>

</div>
