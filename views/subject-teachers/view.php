<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\SubjectTeachers */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => "Fan O'qituvchilari", 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="subject-teachers-view">

    <p>
        <?= Html::a('Yangilash', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a("O'chirish", ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Ishonchingiz komilmi?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            [
                'attribute' => 'subject_id',
                'value' => function ($model) {
                    return $model->subject->name;
                }
            ],
            [
                'attribute' => 'teacher_id',
                'value' => function ($model) {
                    return $model->teacher->fullName;
                }
            ]
        ],
    ]) ?>

</div>
