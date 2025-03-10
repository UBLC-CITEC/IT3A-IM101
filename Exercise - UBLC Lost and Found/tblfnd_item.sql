CREATE TABLE `found_item` (
  `item_id` int NOT NULL,
  `admin_id` int DEFAULT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `item_class` varchar(45) DEFAULT NULL,
  `item_desc` varchar(45) DEFAULT NULL,
  `timestamp` varchar(45) DEFAULT NULL,
  `item_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `admin_id_idx` (`admin_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
