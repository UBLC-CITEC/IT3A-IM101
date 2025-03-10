CREATE TABLE `user` (
  `student_no` int NOT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  `contact` int DEFAULT NULL,
  PRIMARY KEY (`student_no`),
  KEY `contact` (`contact`),
  KEY `student_name` (`student_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
