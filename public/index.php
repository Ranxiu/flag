<?php
// var_dump(substr($_SERVER['REQUEST_URI'],0,strpos($_SERVER['REQUEST_URI'],'?')));
// die();
// ini_set('session.gc_maxlifetime', 60*60*24);   // 设置 SESSION 10分钟过期
session_start();
define('ROOT',__DIR__.'/../');
//引入函数文件
require(ROOT.'libs/functions.php');
//自动加载函数
function autoClass($class){

    $path = str_replace('\\', '/', $class);
    require_once (ROOT . $path . '.php');
}
//注册加载函数
spl_autoload_register('autoClass');
$controller = '\controllers\IndexController';
$action = 'index';

if(isset($_SERVER['REQUEST_URI']) && $_SERVER['REQUEST_URI']!='/'){
    $route=$_SERVER['REQUEST_URI'];
    if(strpos($_SERVER['REQUEST_URI'],'?')){
        $route=substr($_SERVER['REQUEST_URI'],0,strpos($_SERVER['REQUEST_URI'],'?'));
        $pathInfo=explode('/',$route);
    }else{
        $pathInfo = explode('/',$_SERVER['REQUEST_URI']);
    }
    $controller = '\controllers\\'.ucfirst($pathInfo[1]).'Controller';
    $action = $pathInfo[2];
}

$_C = new $controller;

$_C->$action();

