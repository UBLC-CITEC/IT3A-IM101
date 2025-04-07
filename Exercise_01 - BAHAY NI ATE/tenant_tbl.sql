CREATE TABLE `tenant_tbl` (
  `tenant_ID` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` int NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`tenant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
