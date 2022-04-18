-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema beersdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `beersdb` ;

-- -----------------------------------------------------
-- Schema beersdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `beersdb` DEFAULT CHARACTER SET utf8 ;
USE `beersdb` ;

-- -----------------------------------------------------
-- Table `beer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `beer` ;

CREATE TABLE IF NOT EXISTS `beer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` VARCHAR(100) NOT NULL,
  `abv` DOUBLE NOT NULL,
  `ibu` INT NOT NULL,
  `type` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS beerdrinker@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'beerdrinker'@'localhost' IDENTIFIED BY 'beerdrinker';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'beerdrinker'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `beer`
-- -----------------------------------------------------
START TRANSACTION;
USE `beersdb`;
INSERT INTO `beer` (`id`, `name`, `description`, `abv`, `ibu`, `type`) VALUES (1, 'Grabber Orange Wheat', 'Hints of orange and coriander', 6.5, 25, 'Wheat');
INSERT INTO `beer` (`id`, `name`, `description`, `abv`, `ibu`, `type`) VALUES (2, 'Larry\'s Lager', 'Just a damn good beer', 5.0, 13, 'Lager');
INSERT INTO `beer` (`id`, `name`, `description`, `abv`, `ibu`, `type`) VALUES (3, 'Brickyard Amber Ale', 'Moderate, hoppy beer with caramel malt', 5.5, 30, 'Ale');
INSERT INTO `beer` (`id`, `name`, `description`, `abv`, `ibu`, `type`) VALUES (4, 'Oatmeal Stout', 'Mild roasted coffee and oats', 5.6, 28, 'Stout');
INSERT INTO `beer` (`id`, `name`, `description`, `abv`, `ibu`, `type`) VALUES (5, 'Lucky 7', 'Big hoppy flavor and aroma ', 7.0, 47, 'IPA');
INSERT INTO `beer` (`id`, `name`, `description`, `abv`, `ibu`, `type`) VALUES (6, '8 Daze of Haze', 'Juicy hop aroma and flavor, low bitterness', 7.4, 10, 'IPA');
INSERT INTO `beer` (`id`, `name`, `description`, `abv`, `ibu`, `type`) VALUES (8, 'Test Drive IPA', 'A bitter, moderately strong American pale ale', 4.5, 50, 'IPA');
INSERT INTO `beer` (`id`, `name`, `description`, `abv`, `ibu`, `type`) VALUES (9, 'Sweet Stout', 'Milk Stout with hints of chocolate', 6.5, 25, 'Stout');
INSERT INTO `beer` (`id`, `name`, `description`, `abv`, `ibu`, `type`) VALUES (10, 'Sweet Ride Cream Ale', 'American Cream Ale with Vanilla', 6.1, 18, 'Ale');

COMMIT;

