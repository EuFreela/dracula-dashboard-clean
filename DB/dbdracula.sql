-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dbDracula
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbDracula
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbDracula` DEFAULT CHARACTER SET utf8 ;
USE `dbDracula` ;

-- -----------------------------------------------------
-- Table `dbDracula`.`server`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbDracula`.`server` (
  `id` INT NULL AUTO_INCREMENT,
  `active` TINYINT(1) NOT NULL COMMENT '0 - inativo; 1 - ativo',
  `ip` VARCHAR(20) NOT NULL,
  `port` INT NOT NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbDracula`.`reload`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbDracula`.`reload` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `status` TINYINT(1) NOT NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL,
  `hosts_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbDracula`.`hosts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbDracula`.`hosts` (
  `id` INT NULL AUTO_INCREMENT,
  `online` TINYINT(1) NOT NULL,
  `ip` VARCHAR(20) NOT NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbDracula`.`machine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbDracula`.`machine` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `os` VARCHAR(255) NULL,
  `osversion` VARCHAR(45) NULL,
  `osuser` VARCHAR(45) NULL,
  `oshome` VARCHAR(45) NULL,
  `osproperties` LONGTEXT NULL,
  `machine` VARCHAR(45) NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL,
  `hosts_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbDracula`.`plugins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbDracula`.`plugins` (
  `id` INT NULL AUTO_INCREMENT,
  `status` TINYINT(1) NOT NULL,
  `name` VARCHAR(45) NULL,
  `page` VARCHAR(45) NULL,
  `shortname` VARCHAR(45) NOT NULL,
  `img` LONGTEXT NULL,
  `about` LONGTEXT NULL,
  `created_at` TIMESTAMP(6) NULL,
  `updated_at` TIMESTAMP(6) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbDracula`.`systemsg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbDracula`.`systemsg` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` INT NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `msg` LONGTEXT NOT NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `dbDracula`.`server`
-- -----------------------------------------------------
START TRANSACTION;
USE `dbDracula`;
INSERT INTO `dbDracula`.`server` (`id`, `active`, `ip`, `port`, `created_at`, `updated_at`) VALUES (1, 1, '0.tcp.ngrok.io', 18847, NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `dbDracula`.`reload`
-- -----------------------------------------------------
START TRANSACTION;
USE `dbDracula`;
INSERT INTO `dbDracula`.`reload` (`id`, `status`, `created_at`, `updated_at`, `hosts_id`) VALUES (1, 0, NULL, NULL, DEFAULT);

COMMIT;
