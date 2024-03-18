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
-- -----------------------------------------------------
-- Schema propostaprojeto
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Esforco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Esforco` (
  `idEsforco` INT NOT NULL AUTO_INCREMENT,
  `inicioData` DATE NOT NULL,
  `prazoData` DATE NOT NULL,
  `inicioTempo` TIME NOT NULL,
  `prazoTempo` TIME NOT NULL,
  PRIMARY KEY (`idEsforco`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Alteracao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Alteracao` (
  `idAlteracao` INT NOT NULL AUTO_INCREMENT,
  `AlteracaoDate` DATE NULL,
  `Observacao` VARCHAR(45) NULL,
  `Esforco_idEsforco` INT NOT NULL,
  PRIMARY KEY (`idAlteracao`, `Esforco_idEsforco`),
  INDEX `fk_Alteracao_Esforco_idx` (`Esforco_idEsforco` ASC) VISIBLE,
  CONSTRAINT `fk_Alteracao_Esforco`
    FOREIGN KEY (`Esforco_idEsforco`)
    REFERENCES `mydb`.`Esforco` (`idEsforco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
