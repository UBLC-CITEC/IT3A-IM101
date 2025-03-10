CREATE TABLE `reservation_system`.`authentication` (
  `guest_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password_hash` VARCHAR(255) NOT NULL,
  `last_login` DATETIME(6) NOT NULL,
  `status` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`guest_id`));
