<?php
namespace controllers;
class IndexController{
    public function index(){
        view('index/index');
    }

    public function time(){
        date_default_timezone_set('PRC');
         
        $nowtime = date('Y-m-d H:i:s');
        $endtime = date('2019-01-19 00:00:00');

        $times = (strtotime($endtime) - strtotime($nowtime));

        // 天数
        $day = floor($times/86400);
        // 小时
        $hour = floor(($times-86400 * $day)/3600);
        // 分钟
        $minute = floor(($times-86400 * $day-3600 * $hour)/60);
        // 秒数
        $miao = floor(($times-86400 * $day-3600 * $hour-60*$minute));

        
        echo $day.'天'.$hour.'小时'.$minute.'分钟'.$miao.'秒';

        
    }
}