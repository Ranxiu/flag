<?php
namespace controllers;
use \models\Flag;
class FlagController{
    public function create(){
        $flag=new Flag;
        $data=$flag->get_one_num();
        view('flag/create',[
            'num'=>$data
        ]);
    }
    public function do_create(){
        $flag=new Flag;
        $arr=[];
        $count=count($_POST['content']);
        $n=0;
        foreach($_POST['content'] as $k=>$v){
            $arr['user_id']=$_SESSION['user_id'];
            $arr['content']=$_POST['content'][$k];
            $arr['start_time']=$_POST['start_time'][$k];
            $arr['end_time']=$_POST['end_time'][$k];
            $arr['num']=$_POST['num'][$k];
            $errno=$flag->add_flag($arr);
            if($errno){
                $n++;
            }
            if($n==$count){
                echo "<script>alert('flag已立下,快去学习吧?');location.href='/index/index'</script>";
            }
        }

    }
    public function edit(){
        $flag_id=$_GET['flag_id'];
        $flag=new Flag;
        $data=$flag->findOne($flag_id);
        view('/flag/edit',[
            'data'=>$data
        ]);
    }
    public function do_edit(){
        $flag_id=$_GET['flag_id'];
        $status=$_POST['status'];
        $flag=new Flag;
        $errno=$flag->update_flag($flag_id,$status);
        if($errno){
            echo "<script>alert('修改成功');location.href='/flag/content?flag_id={$flag_id}';</script>";
        }else{
            echo "<script>alert('修改失败');location.href='#'</script>";
        }
    }
    public function content(){
        $flag_id=$_GET['flag_id'];
        $flag=new Flag;
        $data=$flag->get_content($flag_id);
        view('/flag/content',[
            'data'=>$data,
        ]);
    }

    public function getAlls(){
        $flag=new Flag;
        $data = $flag->getAlls();
        // var_dump($data);
         
        echo  $data;
    }

    public function getAll(){
        $flag = new Flag;

        $username = $_POST["username"];


        $options = [
            'fields' => 'f.id,f.user_id,f.start_time,f.content,f.end_time,f.status,f.created_at,f.updated_at,u.username',
            'join' => 'f LEFT JOIN users u on f.user_id = u.id',
            'where'=> "u.username = '{$username}'",
            'order_by' => 'updated_at',
        ];

        

        $data = $flag->findAll($options);
        
        echo json_encode($data);
    }

    public function timeContent(){

        $flag = new Flag;

        $nowtime = $_POST["nowtime"];

        $options = [
            'fields' => 'f.id,f.user_id,f.start_time,f.content,f.end_time,f.status,f.created_at,f.updated_at,u.username',
            'join' => 'f LEFT JOIN users u on f.user_id = u.id',
            'where'=> "f.created_at like '%{$nowtime}%'",
            'order_by' => 'updated_at',
        ];

        $data = $flag->findAll($options);

        echo json_encode($data);

    }
}