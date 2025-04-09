use study_net_org;

CREATE TABLE users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
	username VARCHAR(50) NOT NULL,
    Email VARCHAR(150) UNIQUE NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    profile_picture VARCHAR(255),
    Bio TEXT,
    UserType ENUM('Student', 'Alumni', 'Adviser', 'Admin') NOT NULL,
    contact_info VARCHAR(255)
);

