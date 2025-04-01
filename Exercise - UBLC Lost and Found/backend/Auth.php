<?php
session_start();
require_once 'db_connect.php'; // Include the database connection

// Login processing
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['login'])) {
    $username = $conn->real_escape_string($_POST['username']);
    $password = $_POST['password'];
    
    // Prepare and execute the SQL statement
    $sql = "SELECT UserID, Username, PasswordHash FROM Users WHERE Username = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    
    // Check if a user with the given username exists
    if ($row = $result->fetch_assoc()) {
        // Verify the password
        if (password_verify($password, $row['PasswordHash'])) {
            // Password is correct, set session variables
            $_SESSION['user_id'] = $row['User ID'];
            $_SESSION['username'] = $row['Username'];
            
            // Redirect to homepage
            header("Location: homepage.html");
            exit();
        } else {
            // Password verification failed
            header("Location: index.html?error=invalid_login");
            exit();
        }
    } else {
        // No user found with that username
        header("Location: index.html?error=invalid_login");
        exit();
    }
}

// Registration processing
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['signup'])) {
    $username = $conn->real_escape_string($_POST['signup-username']);
    $password = $_POST['signup-password'];
    
    // Hash the password
    $passwordHash = password_hash($password, PASSWORD_DEFAULT);
    
    // Check if username already exists
    $checkSql = "SELECT UserID FROM Users WHERE Username = ?";
    $checkStmt = $conn->prepare($checkSql);
    $checkStmt->bind_param("s", $username);
    $checkStmt->execute();
    $checkResult = $checkStmt->get_result();
    
    if ($checkResult->num_rows > 0) {
        // Username already exists
        header("Location: index.html?error=user_exists");
        exit();
    }
    
    // Insert new user
    $insertSql = "INSERT INTO Users (Username, PasswordHash) VALUES (?, ?)";
    $insertStmt = $conn->prepare($insertSql);
    $insertStmt->bind_param("ss", $username, $passwordHash);
    
    if ($insertStmt->execute()) {
        // Registration successful, redirect to login page
        header("Location: index.html?signup=success");
        exit();
    } else {
        // Registration failed
        header("Location: index.html?error=registration_failed");
        exit();
    }
}

$conn->close();
?>