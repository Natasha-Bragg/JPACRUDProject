-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema musicdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `musicdb` ;

-- -----------------------------------------------------
-- Schema musicdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `musicdb` DEFAULT CHARACTER SET utf8 ;
USE `musicdb` ;

-- -----------------------------------------------------
-- Table `avengers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `avengers` ;

CREATE TABLE IF NOT EXISTS `avengers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL DEFAULT 'Billy',
  `last_name` VARCHAR(100) NOT NULL DEFAULT 'opps i forgot to enter a last name',
  `superhero_name` VARCHAR(100) NOT NULL DEFAULT 'I must not be that important',
  `powers` VARCHAR(1000) NOT NULL,
  `number_of_movies` INT NULL,
  `fun_facts` VARCHAR(1000) NULL,
  `avenger_rank` INT NULL,
  `myers_briggs_type` VARCHAR(45) NULL,
  `quote` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS musicuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'musicuser'@'localhost' IDENTIFIED BY 'musicuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'musicuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `avengers`
-- -----------------------------------------------------
START TRANSACTION;
USE `musicdb`;
INSERT INTO `avengers` (`id`, `first_name`, `last_name`, `superhero_name`, `powers`, `number_of_movies`, `fun_facts`, `avenger_rank`, `myers_briggs_type`, `quote`) VALUES (1, 'Tony', 'Stark', 'Iron Man', 'Genius level intellect Proficient scientist and engineer Highly skilled martial artist and hand-to-hand combatant Powered armor suit: Superhuman strength and durability (when using his armor) Supersonic flight Energy repulsor and missile projection Regenerative life support', 11, NULL, 1, 'ENTP', '\"I love you 3000.\" “Genius, billionaire, playboy philanthropist”');
INSERT INTO `avengers` (`id`, `first_name`, `last_name`, `superhero_name`, `powers`, `number_of_movies`, `fun_facts`, `avenger_rank`, `myers_briggs_type`, `quote`) VALUES (2, 'Steve', 'Rogers', 'Captain America', 'Super Soldier', 11, NULL, 2, 'ISFJ', '\"I can do this all day.\"');
INSERT INTO `avengers` (`id`, `first_name`, `last_name`, `superhero_name`, `powers`, `number_of_movies`, `fun_facts`, `avenger_rank`, `myers_briggs_type`, `quote`) VALUES (3, 'Natasha', 'Romanoff', 'Black Widow', 'Spy', 12, NULL, 3, 'ISPTP', '“I Get Emails From A Raccoon. Nothing Sounds Crazy Anymore.”');
INSERT INTO `avengers` (`id`, `first_name`, `last_name`, `superhero_name`, `powers`, `number_of_movies`, `fun_facts`, `avenger_rank`, `myers_briggs_type`, `quote`) VALUES (4, 'Bruce', 'Banner', 'Hulk', 'Intellegence, Strength, Anger', 8, 'Got his powers from Gamma Radiation', 4, 'INTP', '\"That\'s my secret, Cap: I\'m always angry.\"');
INSERT INTO `avengers` (`id`, `first_name`, `last_name`, `superhero_name`, `powers`, `number_of_movies`, `fun_facts`, `avenger_rank`, `myers_briggs_type`, `quote`) VALUES (5, 'T\'Challa', 'Son of T\'Chaka', 'Black Panther', 'Spiritually linked to the Panther god Bast', 5, NULL, 5, 'ISFP', '\"I never yielded! And as you can see, I am not dead!\"');
INSERT INTO `avengers` (`id`, `first_name`, `last_name`, `superhero_name`, `powers`, `number_of_movies`, `fun_facts`, `avenger_rank`, `myers_briggs_type`, `quote`) VALUES (6, 'Carol', 'Danvers', 'Captain Marvel', 'Has the power of the Tesseract', 4, 'Human, Kree, Tesseract', 6, 'ESFP', '“ I’ve Been Fighting With One Arm Behind My Back. What Happens When I\'m Finally Set Free?”');

COMMIT;

