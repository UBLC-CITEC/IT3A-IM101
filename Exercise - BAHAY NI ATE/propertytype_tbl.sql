CREATE TABLE propertytpe_tbl (
  property_typeID int NOT NULL,
  type_name varchar(45) NOT NULL,
  description varchar(45) NOT NULL,
  price int NOT NULL,
  PRIMARY KEY (property_typeID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
