CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `admin_name` varchar(45) NOT NULL,
  `contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `admin_name` (`admin_name`),
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
