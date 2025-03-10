CREATE TABLE property_tbl (
  property_id int NOT NULL,
  landlord_id varchar(45) NOT NULL,
  property_type_id varchar(45) NOT NULL,
  name varchar(45) NOT NULL,
  address varchar(45) NOT NULL,
  price varchar(45) NOT NULL,
  description varchar(45) NOT NULL,
  images varchar(45) NOT NULL,
  location varchar(45) NOT NULL,
  availability_status varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
