CREATE TABLE `reservation_system`.`room` (
  `room_id` INT NOT NULL AUTO_INCREMENT,
  `room_type_id` INT NOT NULL,
  `room_number` VARCHAR(45) NOT NULL,
  `floor` VARCHAR(5) NOT NULL,
  `status` VARCHAR(20) NOT NULL,
  `notes` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`room_id`));
