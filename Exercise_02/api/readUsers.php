<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

//get Data
include_once '../db/connect.php';
include_once '../class/user.php';

//variable for JSON OUTPUT
$returnJson = array();

//coming from connect ../class/connect.php
$database = new Database();
$db = $database->getConn();

//coming from user ../class/user.php
$user = new User($db);

//getting all the users from table user
$getAllUsers = $user->readAllUser();

if($getAllUsers) {
    $returnJson = array(
        "Result" => "Success",
        "users" => $getAllUsers
    );
    //return $returnJson;
} else {
    $returnJson = array(
        "Result" => "Failed"

    );
}

echo json_encode($returnJson);
?>