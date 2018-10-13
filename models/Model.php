<?php
namespace models;
use \PDO;
class Model {
    protected $_db;
    
    //操作的表名，值由子类设置
    protected $table;
    //表单中的数据，值由控制器设置
    protected $data;

    /**
     * $data = [
     *  'title' = 'xxxxx',
     *  'content' = 'xxxx',
     *  'is_show' ='y'
     * ];
    */
    /**
     *钩子函数 
    */
    protected function _before_write(){}
    protected function _after_write(){}
    protected function _before_delete(){}
    protected function _after_delete(){}

    public function __construct(){
        $this->_db = \libs\Db::make();
    }

    public function insert(){

        $this->_before_write();
        $keys = [];
        $values = [];
        $token = [];

        foreach($this->data as $k => $v){
            $keys[] = $k;
            $values[] = $v;
            $token[] = '?';
        }

        $keys = implode(',',$keys);
        $token = implode(',',$token);
        $sql = "INSERT INTO {$this->table}($keys) VALUES($token)";
        $stmt =  $this->_db->prepare($sql);
        $stmt->execute($values);

        $this->data['id'] = $this->_db->lastInsertId();  

        $this->_after_write();
    }

    //接收表单中的数据
    public function fill($data){
        //判断是否在白名单中
        foreach($data as $k =>$v){
            if(!in_array($k,$this->fillable)){
                unset($data[$k]);
            }
        }
        $this->data = $data;

    }

    //查询表中所有数据
    public function findAll($options = []){
        $_option = [
            'fields' => '*',
            'where' => 1,
            'order_by' => 'updated_at',
            'order_way' => 'asc',
            'per_page' => 20,
            'join'=> '',
        ];
        //合并用户的配置
        if($options)
        {
            $_option = array_merge($_option,$options);
        }
        /**
         * 翻页
         */
        $page = isset($_GET['page']) ? max(1, (int)$_GET['page']) : 1;
        $offset = ($page-1)*$_option['per_page'];
        
        $sql = "SELECT {$_option['fields']}
                 FROM {$this->table} {$_option['join']}
                 WHERE {$_option['where']} 
                 ORDER BY {$_option['order_by']} {$_option['order_way']} 
                 LIMIT $offset,{$_option['per_page']}";

        // var_dump($sql);die;

        $stmt = $this->_db->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetchAll( PDO::FETCH_ASSOC );
        // echo $data; die;
        // var_dump($data);
        /**
         * 获取总的记录数
         */
        $stmt = $this->_db->prepare("SELECT COUNT(*) FROM {$this->table} WHERE {$_option['where']}");
        $stmt->execute();
        $count = $stmt->fetch( PDO::FETCH_COLUMN );
      
        return [
            'data' => $data,
            'count' => $count,
        ];
    }
    //查询单条数据
    public function findOne($id){

        $stmt = $this->_db->prepare("SELECT * FROM {$this->table} WHERE id=?");   
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
    //更新数据
    public function update($id){
   
        $this->_before_write();
        $set = [];
        $token = [];

        foreach($this->data as $k=>$v){
            $set[] = "$k=?";
            $values[] = $v;
            $token[] = '?';
        }

        $set = implode(',',$set);

        $values[] = $id;

        $sql = "UPDATE {$this->table} SET $set WHERE id=?";

        $stmt = $this->_db->prepare($sql);
        $stmt->execute($values);
        $this->_after_write();
    }

    //删除
    public function delete($id){
    
        $this->_before_delete();
        $stmt = $this->_db->prepare("DELETE FROM {$this->table} WHERE id=?");
        $stmt->execute([$id]);
        $this->_after_delete();
    }


}

?>