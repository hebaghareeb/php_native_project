<?php

class DB
{
    private $host = "localhost";
    private $dbname = "furniture";
    private $password = "";
    private $user = "root";
    private $dbType = "mysql";
    private $connection;
    public function __construct()
    {

        $this->connection = new pdo("$this->dbType:host=$this->host;dbname=$this->dbname", $this->user, $this->password);
    }
    public function get_connection()
    {
        return $this->connection;
    }
    public function select($cols, $table, $condition = 1, $cond2 =1)
    {
        return  $this->connection->query("select $cols from $table where $condition ORDER by $cond2");
    }
    public function delete($table, $condition)
    {
        return $this->connection->query("delete from $table where $condition");
    }
    public function insert($table, $cols, $values)
    {
        return $this->connection->query("insert into $table ($cols) values ($values) ");
    }
    public function update($table, $cols, $condition = 1)
    {
        return $this->connection->query("update $table set $cols where $condition");
    }
    public function join()
    {
        return $this->connection->query("select category.id  as id , COUNT(furniture.cat) as count
        from furniture,category
        where category.id = furniture.cat
        GROUP BY category.id");
    }
    public function index_select()
    {
        return $this->connection->query("select furniture.id,image,name from furniture,category where furniture.cat =category.id GROUP BY category.id ;
        ");
    }
}


