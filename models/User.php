<?php
namespace models;
class User extends Model{
    public $table="users";
    public function login($username,$password){
        $stmt=$this->_db->prepare("select id from {$this->table} where username=? and password=?");
        $stmt->execute([
            $username,
            $password
        ]);
        return $stmt->fetch(\PDO::FETCH_COLUMN);
    }
}