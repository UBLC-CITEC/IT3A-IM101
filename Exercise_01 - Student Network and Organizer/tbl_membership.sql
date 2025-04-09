
CREATE TABLE membership (
    MembershipID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    GroupID INT NOT NULL,
    UserRole ENUM('Member', 'Leader', 'Adviser', 'Alumni') NOT NULL,
    JoinDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES users (UserID) ON DELETE CASCADE,
    FOREIGN KEY (GroupID) REFERENCES study_group (GroupID) ON DELETE CASCADE
);
