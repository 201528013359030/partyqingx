<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\SysTradeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Sys Trades';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sys-trade-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Sys Trade', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'code',
            'name',
            'descrition:ntext',
            'pcode',
            // 'createTime',
            // 'updateTime',
            // 'vision',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
