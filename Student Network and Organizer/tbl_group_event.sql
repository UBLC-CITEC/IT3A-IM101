
CREATE TABLE group_event (
    EventID INT AUTO_INCREMENT PRIMARY KEY,
    GroupID INT NOT NULL,
    EventName VARCHAR(150) NOT NULL,
    EventDate DATETIME NOT NULL,
    Location VARCHAR(255),
    event_description TEXT,
    FOREIGN KEY (GroupID) REFERENCES study_group (GroupID) ON DELETE CASCADE
);
