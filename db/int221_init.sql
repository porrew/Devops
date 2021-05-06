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
-- Table `mydb`.`Brand`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Brand` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Brand` (
  `Brand_Id` INT NOT NULL,
  `Brand_name` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`Brand_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Product` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Product` (
  `Product_Id` INT NOT NULL AUTO_INCREMENT,
  `Product_Name` VARCHAR(1000) NOT NULL,
  `Description` VARCHAR(1000) NOT NULL,
  `Price` DOUBLE NOT NULL,
  `Date` DATE NOT NULL,
  `Path` VARCHAR(1000) NOT NULL,
  `Brand_Brand_Id` INT NOT NULL,
  PRIMARY KEY (`Product_Id`),
  INDEX `fk_Product_Brand1_idx` (`Brand_Brand_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Product_Brand1`
    FOREIGN KEY (`Brand_Brand_Id`)
    REFERENCES `mydb`.`Brand` (`Brand_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Color`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Color` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Color` (
  `Color_Id` INT NOT NULL,
  `Color_Name` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`Color_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Have`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Have` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Have` (
  `Product_Product_Id` INT NOT NULL,
  `Color_Color_Id` INT NOT NULL,
  PRIMARY KEY (`Product_Product_Id`, `Color_Color_Id`),
  INDEX `fk_Product_has_Color_Color1_idx` (`Color_Color_Id` ASC) VISIBLE,
  INDEX `fk_Product_has_Color_Product_idx` (`Product_Product_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Product_has_Color_Product`
    FOREIGN KEY (`Product_Product_Id`)
    REFERENCES `mydb`.`Product` (`Product_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Product_has_Color_Color1`
    FOREIGN KEY (`Color_Color_Id`)
    REFERENCES `mydb`.`Color` (`Color_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;