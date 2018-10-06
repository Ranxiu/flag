<?php
namespace controllers;
use \models\User;
class UserController{
    public function login(){
       view('user/login'); 
    }
    public function do_login(){
        $username=$_POST['username'];
        $password=$_POST['password'];

        $user=new User;
        $data=$user->login($username,$password);
        if($data){
            $_SESSION['username']=$username;
            $_SESSION['user_id']=$data;
            header('Location:/index/index');
        }else{
            echo "<script>alert('用户名或密码错误');location.href='/user/login'</script>";
        }
    }
}