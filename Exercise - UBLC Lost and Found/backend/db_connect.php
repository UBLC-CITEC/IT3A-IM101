<?php
// Database connection parameters
$servername = "sql311.infinityfree.com";
$username = "if0_38590457";
$password = "agHQbJMJRed3"; // Replace with your actual password
$dbname = "if0_38590457_lostandfoundatabase"; // Adjust if your database suffix is different

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Set character set to UTF-8
$conn->set_charset("utf8mb4");
?>
