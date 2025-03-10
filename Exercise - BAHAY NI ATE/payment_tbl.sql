CREATE TABLE payment_tbl (
  payment_ID int NOT NULL,
  amount int NOT NULL,
  payment_date date NOT NULL,
  status varchar(45) NOT NULL,
  PRIMARY KEY (payment_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
