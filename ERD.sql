-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Screen_1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Screen_1` (
  `Tracking` INT NOT NULL,
  `Shipping Store` VARCHAR(45) NOT NULL,
  `Cards and Envelops` VARCHAR(45) NOT NULL,
  `Postal Store gifts` VARCHAR(45) NOT NULL,
  `Price` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Tracking`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Screen_2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Screen_2` (
  `Shipping_Supplies` INT NOT NULL,
  `Postal_Store` VARCHAR(45) NOT NULL,
  `Bussiness_Supplies` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `Price` VARCHAR(45) NOT NULL,
  `Screen_2col` VARCHAR(45) NOT NULL,
  `Screen_1_Tracking` INT NOT NULL,
  PRIMARY KEY (`Shipping_Supplies`, `Screen_1_Tracking`),
  INDEX `fk_Screen_2_Screen_11_idx` (`Screen_1_Tracking` ASC) VISIBLE,
  CONSTRAINT `fk_Screen_2_Screen_11`
    FOREIGN KEY (`Screen_1_Tracking`)
    REFERENCES `mydb`.`Screen_1` (`Tracking`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Screen_3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Screen_3` (
  `Shipping_Supplies` INT NOT NULL,
  `Cards and Envelops` VARCHAR(45) NOT NULL,
  `Postal Store gifts` VARCHAR(45) NOT NULL,
  `Locations` VARCHAR(45) NOT NULL,
  `Price` VARCHAR(45) NOT NULL,
  `` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Shipping_Supplies`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Screen_4`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Screen_4` (
  `Tracking` INT NOT NULL,
  `Shipping Stores` VARCHAR(45) NOT NULL,
  `Postal Store` VARCHAR(45) NOT NULL,
  `Bussiness Supplies` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `Screen_3_Shipping_Supplies` INT NOT NULL,
  PRIMARY KEY (`Tracking`, `Screen_3_Shipping_Supplies`),
  INDEX `fk_Screen_4_Screen_31_idx` (`Screen_3_Shipping_Supplies` ASC) VISIBLE,
  CONSTRAINT `fk_Screen_4_Screen_31`
    FOREIGN KEY (`Screen_3_Shipping_Supplies`)
    REFERENCES `mydb`.`Screen_3` (`Shipping_Supplies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Screen_5`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Screen_5` (
  `Traccking` INT NOT NULL,
  `Stamps` VARCHAR(45) NOT NULL,
  `Shipping_Stores` VARCHAR(45) NOT NULL,
  `Cards and Envelopes` VARCHAR(45) NOT NULL,
  `Bussiness Supplies` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `` VARCHAR(45) NULL,
  `Screen_5_Traccking` INT NOT NULL,
  `Screen_1_Tracking` INT NOT NULL,
  PRIMARY KEY (`Traccking`),
  INDEX `fk_Screen_5_Screen_5_idx` (`Screen_5_Traccking` ASC) VISIBLE,
  INDEX `fk_Screen_5_Screen_11_idx` (`Screen_1_Tracking` ASC) VISIBLE,
  CONSTRAINT `fk_Screen_5_Screen_5`
    FOREIGN KEY (`Screen_5_Traccking`)
    REFERENCES `mydb`.`Screen_5` (`Traccking`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Screen_5_Screen_11`
    FOREIGN KEY (`Screen_1_Tracking`)
    REFERENCES `mydb`.`Screen_1` (`Tracking`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Screen_7`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Screen_7` (
  `Stamps` INT NOT NULL,
  `Cards and Envelopes` VARCHAR(45) NOT NULL,
  `Postal Store Gifts` VARCHAR(45) NOT NULL,
  `Bussiness Supplies` VARCHAR(45) NOT NULL,
  `Locations` VARCHAR(45) NOT NULL,
  `Price` VARCHAR(45) NOT NULL,
  `` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Stamps`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Screen_6`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Screen_6` (
  `Tracking` INT NOT NULL,
  `Shipping Stores` VARCHAR(45) NOT NULL,
  `Cards and Envelopes` VARCHAR(45) NOT NULL,
  `Postal Stores` VARCHAR(45) NOT NULL,
  `Postal Store gifts` VARCHAR(45) NOT NULL,
  `Bussiness Supplies` VARCHAR(45) NOT NULL,
  `Price` VARCHAR(45) NOT NULL,
  `Screen_6_Tracking` INT NOT NULL,
  `Screen_7_Stamps` INT NOT NULL,
  PRIMARY KEY (`Tracking`, `Screen_6_Tracking`, `Screen_7_Stamps`),
  INDEX `fk_Screen_6_Screen_61_idx` (`Screen_6_Tracking` ASC) VISIBLE,
  INDEX `fk_Screen_6_Screen_71_idx` (`Screen_7_Stamps` ASC) VISIBLE,
  CONSTRAINT `fk_Screen_6_Screen_61`
    FOREIGN KEY (`Screen_6_Tracking`)
    REFERENCES `mydb`.`Screen_6` (`Tracking`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Screen_6_Screen_71`
    FOREIGN KEY (`Screen_7_Stamps`)
    REFERENCES `mydb`.`Screen_7` (`Stamps`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Screen_10`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Screen_10` (
  `Stamps` INT NOT NULL,
  `Shipping Supplies` VARCHAR(45) NOT NULL,
  `Cards and Envelopes` VARCHAR(45) NOT NULL,
  `Bussiness_Supplies` VARCHAR(45) NOT NULL,
  `Locations` VARCHAR(45) NOT NULL,
  `Price` VARCHAR(45) NOT NULL,
  `Screen_6_Tracking` INT NOT NULL,
  `Screen_6_Screen_6_Tracking` INT NOT NULL,
  `Screen_6_Screen_7_Stamps` INT NOT NULL,
  PRIMARY KEY (`Stamps`, `Screen_6_Tracking`, `Screen_6_Screen_6_Tracking`, `Screen_6_Screen_7_Stamps`),
  INDEX `fk_Screen_10_Screen_61_idx` (`Screen_6_Tracking` ASC, `Screen_6_Screen_6_Tracking` ASC, `Screen_6_Screen_7_Stamps` ASC) VISIBLE,
  CONSTRAINT `fk_Screen_10_Screen_61`
    FOREIGN KEY (`Screen_6_Tracking` , `Screen_6_Screen_6_Tracking` , `Screen_6_Screen_7_Stamps`)
    REFERENCES `mydb`.`Screen_6` (`Tracking` , `Screen_6_Tracking` , `Screen_7_Stamps`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Screen_9`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Screen_9` (
  `Tracking` INT NOT NULL,
  `Stamps` VARCHAR(45) NOT NULL,
  `Stamps` VARCHAR(45) NOT NULL,
  `Cards and Envelops` VARCHAR(45) NOT NULL,
  `Shipping Supplies` VARCHAR(45) NOT NULL,
  `Cards and Envelopes` VARCHAR(45) NOT NULL,
  `Postal Stores` VARCHAR(45) NOT NULL,
  `Postal Store Gifts` VARCHAR(45) NOT NULL,
  `` VARCHAR(45) NOT NULL,
  `Screen_7_Stamps` INT NOT NULL,
  `Screen_10_Stamps` INT NOT NULL,
  `Screen_10_Screen_6_Tracking` INT NOT NULL,
  `Screen_10_Screen_6_Screen_6_Tracking` INT NOT NULL,
  `Screen_10_Screen_6_Screen_7_Stamps` INT NOT NULL,
  PRIMARY KEY (`Tracking`, `Screen_7_Stamps`),
  INDEX `fk_Screen_9_Screen_71_idx` (`Screen_7_Stamps` ASC) VISIBLE,
  INDEX `fk_Screen_9_Screen_101_idx` (`Screen_10_Stamps` ASC, `Screen_10_Screen_6_Tracking` ASC, `Screen_10_Screen_6_Screen_6_Tracking` ASC, `Screen_10_Screen_6_Screen_7_Stamps` ASC) VISIBLE,
  CONSTRAINT `fk_Screen_9_Screen_71`
    FOREIGN KEY (`Screen_7_Stamps`)
    REFERENCES `mydb`.`Screen_7` (`Stamps`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Screen_9_Screen_101`
    FOREIGN KEY (`Screen_10_Stamps` , `Screen_10_Screen_6_Tracking` , `Screen_10_Screen_6_Screen_6_Tracking` , `Screen_10_Screen_6_Screen_7_Stamps`)
    REFERENCES `mydb`.`Screen_10` (`Stamps` , `Screen_6_Tracking` , `Screen_6_Screen_6_Tracking` , `Screen_6_Screen_7_Stamps`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
