CREATE TABLE `com_report` (
  `rep_id` int NOT NULL,
  `owner` varchar(45) DEFAULT NULL,
  ` admin_id` int DEFAULT NULL,
  `timestamp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rep_id`),
  KEY `student_name_idx` (`owner`),
  KEY `admin_id_idx` (` admin_id`),
  CONSTRAINT `student_name` FOREIGN KEY (`owner`) REFERENCES `user` (`student_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
