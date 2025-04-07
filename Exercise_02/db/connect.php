<?php
    //
    class Database {
        private $host = "";
        private $db_name = "";
        private $username = "";
        private $password = "";
    

        public $conn;

        //Publicly access when connecting to the database
        public function getConn() {
            $this->conn = null;

            try {
                $this->conn = new PDO("mysql:host=". $this->host .";dbname=". $this->db_name, $this->username, $this->password);
                $this->conn -> exec("set names utf8");


            } catch (PDOException $ex) {
                echo "Database could not be connected: " . $ex->getMessage();
            }

            return $this->conn;
        }

    }

?>