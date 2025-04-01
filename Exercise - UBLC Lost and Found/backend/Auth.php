<?php
session_start();
require_once 'db_connect.php'; // Include the database connection

class UserAuth {
    private $conn;

    public function __construct($dbConnection) {
        $this->conn = $dbConnection;
    }

    public function login($username, $password) {
        $username = $this->conn->real_escape_string($username);
        
        // Prepare and execute the SQL statement
        $sql = "SELECT UserID, Username, PasswordHash FROM Users WHERE Username = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();
        
        // Check if a user with the given username exists
        if ($row = $result->fetch_assoc()) {
            // Verify the password
            if (password_verify($password, $row['PasswordHash'])) {
                // Password is correct, set session variables
                $_SESSION['user_id'] = $row['User ID']; // Corrected here
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

    public function register($username, $password, $email) {
        $username = $this->conn->real_escape_string($username);
        $email = $this->conn->real_escape_string($email); // Sanitize email input
        
        // Hash the password
        $passwordHash = password_hash($password, PASSWORD_DEFAULT);
        
        // Check if username or email already exists
        $checkSql = "SELECT UserID FROM Users WHERE Username = ? OR Email = ?";
        $checkStmt = $this->conn->prepare($checkSql);
        $checkStmt->bind_param("ss", $username, $email);
        $checkStmt->execute();
        $checkResult = $checkStmt->get_result();
        
        if ($checkResult->num_rows > 0) {
            // Username or email already exists
            header("Location: index.html?error=user_exists");
            exit();
        }
        
        // Insert new user
        $insertSql = "INSERT INTO Users (Username, PasswordHash, Email) VALUES (?, ?, ?)";
        $insertStmt = $this->conn->prepare($insertSql);
        $insertStmt->bind_param("sss", $username, $passwordHash, $email); // Include email in the insert
        
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
}

// Create an instance of UserAuth
$userAuth = new UserAuth($conn);

// Login processing
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['login'])) {
    $userAuth->login($_POST['username'], $_POST['password']);
}

// Registration processing
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['signup'])) {
    $userAuth->register($_POST['signup-username'], $_POST['signup-password'], $_POST['signup-email']); // Pass email
}

$conn->close();
?>
