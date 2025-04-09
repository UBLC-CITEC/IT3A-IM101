

CREATE TABLE comments (
    CommentID INT AUTO_INCREMENT PRIMARY KEY,
    PostID INT NOT NULL,
    CommentText TEXT NOT NULL,
    CommentedBy INT NOT NULL,
    CommentedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (PostID) REFERENCES posts(PostID) ON DELETE CASCADE,
    FOREIGN KEY (CommentedBy) REFERENCES users(UserID) ON DELETE CASCADE
);


SELECT c.*, u.full_name, u.profile_picture
FROM comments c
JOIN users u ON c.CommentedBy = u.UserID
WHERE c.PostID = ? ORDER BY c.CommentedAt ASC;

select * from comments;