
CREATE TABLE study_group(
    GroupID INT AUTO_INCREMENT PRIMARY KEY,
    group_name VARCHAR(150) NOT NULL,
    group_description TEXT,
    CreatedBy INT NOT NULL,
    CreationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    group_subject NVARCHAR(100), 
    FOREIGN KEY (CreatedBy) REFERENCES users (UserID) ON DELETE CASCADE
);

