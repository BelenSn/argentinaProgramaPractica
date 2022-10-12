-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema porfolio_web
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema porfolio_web
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `porfolio_web` DEFAULT CHARACTER SET utf8 ;
USE `porfolio_web` ;

-- -----------------------------------------------------
-- Table `porfolio_web`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio_web`.`usuario` (
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio_web`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio_web`.`persona` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `imagen_url` VARCHAR(100) NULL,
  `descripcion` VARCHAR(200) NULL,
  `usuario_username` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_persona_usuario1_idx` (`usuario_username` ASC),
  CONSTRAINT `fk_persona_usuario1`
    FOREIGN KEY (`usuario_username`)
    REFERENCES `porfolio_web`.`usuario` (`username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio_web`.`experiencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio_web`.`experiencia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `empresa` VARCHAR(45) NOT NULL,
  `imagen_url` VARCHAR(100) NULL,
  `fechaInicio` DATE NOT NULL,
  `fechaFin` DATE NULL,
  `descripcion` VARCHAR(200) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio_web`.`formacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio_web`.`formacion` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `institucion` VARCHAR(45) NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `imagen_url` VARCHAR(100) NULL,
  `fechaInicio` DATE NOT NULL,
  `fechaFin` DATE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio_web`.`proyecto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio_web`.`proyecto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `imagen_url` VARCHAR(100) NULL,
  `fecha` DATE NOT NULL,
  `descripcion` VARCHAR(145) NULL,
  `link` VARCHAR(145) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio_web`.`habilidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio_web`.`habilidad` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `porcentaje` DECIMAL(20) NOT NULL,
  `imagen_url` VARCHAR(100) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio_web`.`persona_has_experiencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio_web`.`persona_has_experiencia` (
  `persona_id` INT NOT NULL,
  `experiencia_id` INT NOT NULL,
  PRIMARY KEY (`persona_id`, `experiencia_id`),
  INDEX `fk_persona_has_experiencia_experiencia1_idx` (`experiencia_id` ASC),
  INDEX `fk_persona_has_experiencia_persona_idx` (`persona_id` ASC),
  CONSTRAINT `fk_persona_has_experiencia_persona`
    FOREIGN KEY (`persona_id`)
    REFERENCES `porfolio_web`.`persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_has_experiencia_experiencia1`
    FOREIGN KEY (`experiencia_id`)
    REFERENCES `porfolio_web`.`experiencia` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio_web`.`persona_has_formacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio_web`.`persona_has_formacion` (
  `persona_id` INT NOT NULL,
  `formacion_id` INT NOT NULL,
  PRIMARY KEY (`persona_id`, `formacion_id`),
  INDEX `fk_persona_has_formacion_formacion1_idx` (`formacion_id` ASC),
  INDEX `fk_persona_has_formacion_persona1_idx` (`persona_id` ASC),
  CONSTRAINT `fk_persona_has_formacion_persona1`
    FOREIGN KEY (`persona_id`)
    REFERENCES `porfolio_web`.`persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_has_formacion_formacion1`
    FOREIGN KEY (`formacion_id`)
    REFERENCES `porfolio_web`.`formacion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio_web`.`persona_has_proyecto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio_web`.`persona_has_proyecto` (
  `persona_id` INT NOT NULL,
  `proyecto_id` INT NOT NULL,
  PRIMARY KEY (`persona_id`, `proyecto_id`),
  INDEX `fk_persona_has_proyecto_proyecto1_idx` (`proyecto_id` ASC),
  INDEX `fk_persona_has_proyecto_persona1_idx` (`persona_id` ASC),
  CONSTRAINT `fk_persona_has_proyecto_persona1`
    FOREIGN KEY (`persona_id`)
    REFERENCES `porfolio_web`.`persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_has_proyecto_proyecto1`
    FOREIGN KEY (`proyecto_id`)
    REFERENCES `porfolio_web`.`proyecto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porfolio_web`.`persona_has_habilidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porfolio_web`.`persona_has_habilidad` (
  `persona_id` INT NOT NULL,
  `habilidad_id` INT NOT NULL,
  PRIMARY KEY (`persona_id`, `habilidad_id`),
  INDEX `fk_persona_has_habilidad_habilidad1_idx` (`habilidad_id` ASC),
  INDEX `fk_persona_has_habilidad_persona1_idx` (`persona_id` ASC),
  CONSTRAINT `fk_persona_has_habilidad_persona1`
    FOREIGN KEY (`persona_id`)
    REFERENCES `porfolio_web`.`persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_has_habilidad_habilidad1`
    FOREIGN KEY (`habilidad_id`)
    REFERENCES `porfolio_web`.`habilidad` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
