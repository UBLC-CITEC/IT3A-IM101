CREATE TABLE `reservation_system`.`reservation` (
  `reservation_id` INT NOT NULL AUTO_INCREMENT,
  `guest_id` INT NOT NULL,
  `room_id` INT NOT NULL,
  `admin_id` INT NOT NULL,
  `check_in` DATETIME NOT NULL,
  `check_out` DATETIME NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`reservation_id`));
