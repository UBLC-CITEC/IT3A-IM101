<?php

    class User {

        //variables to connect to database only 
        private $conn;
        private $table_name = "user_login";

        //
        public $user;
        public $password;
        public $contact;
        public $email;

        //this will call the connection we created from db/connect.php
        public function __construct($db) {
            $this->conn = $db;
        }
        
            
        public function readAllUser () {

            $query = 'SELECT * FROM ' . $this->table_name;
            $stmt = $this->conn->prepare($query);
            $stmt -> execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
            
        }


    }

?>