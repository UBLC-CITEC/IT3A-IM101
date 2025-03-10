CREATE TABLE reservation_tbl (
  reservation_ID int NOT NULL,
  start_date date NOT NULL,
  end_date date NOT NULL,
  status varchar(45) NOT NULL,
  property_ID int DEFAULT NULL,
  tenant_ID int DEFAULT NULL,
  PRIMARY KEY (reservation_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
