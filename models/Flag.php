<?php
namespace models;
class Flag extends Model{
    public $table='flags';
    public function add_flag($data){
        $stmt=$this->_db->prepare("insert into {$this->table} (user_id,content,start_time,end_time,num) values(?,?,?,?,?)");
        return $stmt->execute([
                $data['user_id'],
                $data['content'],
                $data['start_time'],
                $data['end_time'],
                $data['num'],
        ]);
    }
    public function get_one_num(){
        $stmt=$this->_db->prepare("select num from {$this->table} where user_id=? order by created_at desc limit 1");
        $stmt->execute([
            $_SESSION['user_id']
        ]);
        return $stmt->fetch(\PDO::FETCH_COLUMN);
    }
    public function update_flag($flag_id,$status){
        $stmt=$this->_db->prepare("update {$this->table} set  status=?,updated_at=now() where id=?");
        return $stmt->execute([
                $status,
                $flag_id
        ]);
    }
    public function get_content($flag_id){
        $stmt=$this->_db->prepare("select * from {$this->table} f left join users u on f.user_id=u.id where f.id=?");
        $stmt->execute([
                    $flag_id
                ]);
        return $stmt->fetch(\PDO::FETCH_ASSOC);
    }
}