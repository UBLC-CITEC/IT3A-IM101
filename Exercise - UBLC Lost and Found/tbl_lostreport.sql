CREATE TABLE `lost_itemreport` (
  `report_id` int NOT NULL,
  `itemclass` varchar(45) DEFAULT NULL,
  `itemdesc` varchar(45) DEFAULT NULL,
  `student_contact` int DEFAULT NULL,
  `timestamp` varchar(45) DEFAULT NULL,
  `admin_name` varchar(45) NOT NULL,
  `reportstat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`report_id`),
  KEY `admin_name_idx` (`admin_name`),
  KEY `contact_idx` (`student_contact`),
  CONSTRAINT `admin_name` FOREIGN KEY (`admin_name`) REFERENCES `admin` (`admin_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contact` FOREIGN KEY (`student_contact`) REFERENCES `user` (`contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
