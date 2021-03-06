-- MySQL Script generated by MySQL Workbench
-- 01/26/16 21:13:30
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema CS580
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema CS580
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CS580` DEFAULT CHARACTER SET utf8 ;
USE `CS580` ;

-- -----------------------------------------------------
-- Table `CS580`.`Organization`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CS580`.`Organization` (
  `id` INT NOT NULL,
  `name` VARCHAR(20) NULL,
  `address` VARCHAR(45) NULL,
  `phone` VARCHAR(16) NULL,
  `contact` VARCHAR(20) NULL,
  `comment` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CS580`.`Trip`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CS580`.`Trip` (
  `id` INT NOT NULL,
  `contact` VARCHAR(30) NULL,
  `phone` VARCHAR(16) NULL,
  `email` VARCHAR(30) NULL,
  `name` VARCHAR(20) NULL,
  `num_people` VARCHAR(10) NULL,
  `overtime_payment_type` VARCHAR(1) NULL,
  `start_date` VARCHAR(10) NULL,
  `overtime_rate` VARCHAR(6) NULL,
  `end_date` VARCHAR(10) NULL,
  `disable_account` VARCHAR(1) NULL,
  `Organization_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Organization_id`),
  INDEX `fk_Trip_Organization1_idx` (`Organization_id` ASC),
  CONSTRAINT `fk_Trip_Organization1`
    FOREIGN KEY (`Organization_id`)
    REFERENCES `CS580`.`Organization` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CS580`.`Guide`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CS580`.`Guide` (
  `id` INT NOT NULL,
  `name_chn` VARCHAR(3) NULL,
  `name_eng` VARCHAR(20) NULL,
  `email` VARCHAR(30) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CS580`.`TripReminder`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CS580`.`TripReminder` (
  `id` INT NOT NULL,
  `content` VARCHAR(30) NULL,
  `datetime` VARCHAR(10) NULL,
  `Guide_id` INT NOT NULL,
  `Trip_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Guide_id`, `Trip_id`),
  INDEX `fk_TripReminder_Guide_idx` (`Guide_id` ASC),
  INDEX `fk_TripReminder_Trip1_idx` (`Trip_id` ASC),
  CONSTRAINT `fk_TripReminder_Guide`
    FOREIGN KEY (`Guide_id`)
    REFERENCES `CS580`.`Guide` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TripReminder_Trip1`
    FOREIGN KEY (`Trip_id`)
    REFERENCES `CS580`.`Trip` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CS580`.`TripTicket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CS580`.`TripTicket` (
  `id` INT NOT NULL,
  `name` VARCHAR(30) NULL,
  `quantity` VARCHAR(30) NULL,
  `handler` VARCHAR(30) NULL,
  `Trip_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Trip_id`),
  INDEX `fk_TripTicket_Trip1_idx` (`Trip_id` ASC),
  CONSTRAINT `fk_TripTicket_Trip1`
    FOREIGN KEY (`Trip_id`)
    REFERENCES `CS580`.`Trip` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CS580`.`Location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CS580`.`Location` (
  `id` INT NOT NULL,
  `name_eng` VARCHAR(45) NULL,
  `name_chn` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CS580`.`VehicleType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CS580`.`VehicleType` (
  `id` INT NOT NULL,
  `name` VARCHAR(10) NULL,
  `code` VARCHAR(4) NULL,
  `comment` VARCHAR(45) NULL,
  `Location_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Location_id`),
  INDEX `fk_VehicleType_Location1_idx` (`Location_id` ASC),
  CONSTRAINT `fk_VehicleType_Location1`
    FOREIGN KEY (`Location_id`)
    REFERENCES `CS580`.`Location` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CS580`.`Vehicle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CS580`.`Vehicle` (
  `id` INT NOT NULL,
  `v_type` VARCHAR(1) NULL,
  `comment` VARCHAR(45) NULL,
  `VehicleType_id` INT NOT NULL,
  PRIMARY KEY (`id`, `VehicleType_id`),
  INDEX `fk_Vehicle_VehicleType1_idx` (`VehicleType_id` ASC),
  CONSTRAINT `fk_Vehicle_VehicleType1`
    FOREIGN KEY (`VehicleType_id`)
    REFERENCES `CS580`.`VehicleType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CS580`.`PartnerCompany`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CS580`.`PartnerCompany` (
  `id` INT NOT NULL,
  `name` VARCHAR(20) NULL,
  `contact` VARCHAR(30) NULL,
  `phone` VARCHAR(16) NULL,
  `comment` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CS580`.`TripStep`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CS580`.`TripStep` (
  `id` INT NOT NULL,
  `date` VARCHAR(10) NULL,
  `trip_plan_location` VARCHAR(45) NULL,
  `type` VARCHAR(2) NULL,
  `vehicle_location` VARCHAR(45) NULL,
  `vehicle_type` VARCHAR(45) NULL,
  `use_partner_company` VARCHAR(45) NULL,
  `flight` VARCHAR(10) NULL,
  `guide_room` VARCHAR(1) NULL,
  `guide_room_by` VARCHAR(1) NULL,
  `guests_room` VARCHAR(2) NULL,
  `guests_room_by` VARCHAR(2) NULL,
  `breakfast` VARCHAR(1) NULL,
  `lunch` VARCHAR(2) NULL,
  `dinner` VARCHAR(1) NULL,
  `Guide_id` INT NOT NULL,
  `Vehicle_id` INT NOT NULL,
  `PartnerCompany_id` INT NOT NULL,
  `Trip_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Guide_id`, `Vehicle_id`, `PartnerCompany_id`, `Trip_id`),
  INDEX `fk_TripStep_Guide1_idx` (`Guide_id` ASC),
  INDEX `fk_TripStep_Vehicle1_idx` (`Vehicle_id` ASC),
  INDEX `fk_TripStep_PartnerCompany1_idx` (`PartnerCompany_id` ASC),
  INDEX `fk_TripStep_Trip1_idx` (`Trip_id` ASC),
  CONSTRAINT `fk_TripStep_Guide1`
    FOREIGN KEY (`Guide_id`)
    REFERENCES `CS580`.`Guide` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TripStep_Vehicle1`
    FOREIGN KEY (`Vehicle_id`)
    REFERENCES `CS580`.`Vehicle` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TripStep_PartnerCompany1`
    FOREIGN KEY (`PartnerCompany_id`)
    REFERENCES `CS580`.`PartnerCompany` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TripStep_Trip1`
    FOREIGN KEY (`Trip_id`)
    REFERENCES `CS580`.`Trip` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CS580`.`VehicleReservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CS580`.`VehicleReservation` (
  `id` INT NOT NULL,
  `date` VARCHAR(10) NULL,
  `trip_step_id` INT NOT NULL,
  `VehicleType_id` INT NOT NULL,
  `TripStep_Trip_id` INT NOT NULL,
  PRIMARY KEY (`id`, `trip_step_id`, `VehicleType_id`, `TripStep_Trip_id`),
  INDEX `fk_VehicleReservation_VehicleType1_idx` (`VehicleType_id` ASC),
  INDEX `fk_VehicleReservation_TripStep1_idx` (`TripStep_Trip_id` ASC),
  CONSTRAINT `fk_VehicleReservation_VehicleType1`
    FOREIGN KEY (`VehicleType_id`)
    REFERENCES `CS580`.`VehicleType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VehicleReservation_TripStep1`
    FOREIGN KEY (`TripStep_Trip_id`)
    REFERENCES `CS580`.`TripStep` (`Trip_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CS580`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CS580`.`User` (
  `id` INT NOT NULL,
  `username` VARCHAR(20) NULL,
  `email` VARCHAR(30) NULL,
  `permission` VARCHAR(45) NULL,
  `comment` VARCHAR(45) NULL,
  `Organization_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Organization_id`),
  INDEX `fk_User_Organization1_idx` (`Organization_id` ASC),
  CONSTRAINT `fk_User_Organization1`
    FOREIGN KEY (`Organization_id`)
    REFERENCES `CS580`.`Organization` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
