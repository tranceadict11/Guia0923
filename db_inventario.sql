-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_inventario
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_inventario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_inventario` DEFAULT CHARACTER SET utf8 ;
USE `db_inventario` ;

-- -----------------------------------------------------
-- Table `db_inventario`.`tbl_persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_inventario`.`tbl_persona` (
  `idpersona` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL DEFAULT NULL,
  `apellido` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`idpersona`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_inventario`.`tbl_unidad_medida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_inventario`.`tbl_unidad_medida` (
  `id_unidad_medida` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL DEFAULT NULL,
  `abreviado` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id_unidad_medida`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_inventario`.`tbl_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_inventario`.`tbl_producto` (
  `id_producto` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  `descripcion` VARCHAR(500) NULL DEFAULT NULL,
  `id_unidad_medida` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  INDEX `id_unidad_medida` (`id_unidad_medida` ASC),
  CONSTRAINT `tbl_producto_ibfk_1`
    FOREIGN KEY (`id_unidad_medida`)
    REFERENCES `db_inventario`.`tbl_unidad_medida` (`id_unidad_medida`))
ENGINE = InnoDB
AUTO_INCREMENT = 18
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
