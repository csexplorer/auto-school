<?php

namespace app\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class DashboardAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        '/bower_components/bootstrap/dist/css/bootstrap.min.css',
        '/bower_components/font-awesome/css/font-awesome.min.css',
        '/dist/css/AdminLTE.min.css',
        '/dist/css/skins/_all-skins.min.css',
        '/dist/css/my.css'
    ];
    public $js = [
        '/bower_components/bootstrap/dist/js/bootstrap.min.js',
        '/dist/js/adminlte.min.js',
        '/dist/js/demo.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        // 'yii\bootstrap\BootstrapAsset',
    ];
}
