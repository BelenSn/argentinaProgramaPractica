-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema curriculum
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema curriculum
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `curriculum` DEFAULT CHARACTER SET utf8 ;
USE `curriculum` ;

-- -----------------------------------------------------
-- Table `curriculum`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `curriculum`.`persona` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `domicilio` VARCHAR(45) NULL,
  `fechaNac` DATE NULL,
  `telefono` VARCHAR(12) NULL,
  `correo` VARCHAR(45) NULL,
  `sobre_mi` VARCHAR(200) NULL,
  `url_foto` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `curriculum`.`tipo_empleo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `curriculum`.`tipo_empleo` (
  `id` INT NOT NULL,
  `nombre_tipo` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `curriculum`.`experiencia_laboral`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `curriculum`.`experiencia_laboral` (
  `id` INT NOT NULL,
  `nombreEmpresa` VARCHAR(45) NULL,
  `esTrabajoActual` TINYINT NULL,
  `fechaInicio` DATE NULL,
  `fechaFin` DATE NULL,
  `descripcion` VARCHAR(100) NULL,
  `experiencia_laboralcol` VARCHAR(45) NULL,
  `persona_id` INT NOT NULL,
  `tipo_empleo_id` INT NOT NULL,
  PRIMARY KEY (`id`, `persona_id`, `tipo_empleo_id`),
  INDEX `fk_experiencia_laboral_persona_idx` (`persona_id` ASC),
  INDEX `fk_experiencia_laboral_tipo_empleo1_idx` (`tipo_empleo_id` ASC),
  CONSTRAINT `fk_experiencia_laboral_persona`
    FOREIGN KEY (`persona_id`)
    REFERENCES `curriculum`.`persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_experiencia_laboral_tipo_empleo1`
    FOREIGN KEY (`tipo_empleo_id`)
    REFERENCES `curriculum`.`tipo_empleo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
