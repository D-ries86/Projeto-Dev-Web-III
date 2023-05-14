-- MySQL Workbench Synchronization
-- Generated: 2023-05-14 17:28
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: deriq

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `littletoothpets`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

CREATE TABLE IF NOT EXISTS `littletoothpets`.`tbcliente` (
  `idCliente` INT(11) NOT NULL,
  `nome` VARCHAR(70) NOT NULL,
  `cpf` VARCHAR(14) CHARACTER SET 'utf8' NOT NULL,
  `telefone` VARCHAR(15) NOT NULL,
  `cidade` VARCHAR(30) NOT NULL,
  `numero` INT(6) NOT NULL,
  `cep` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `littletoothpets`.`tbservico` (
  `idServico` INT(11) NOT NULL AUTO_INCREMENT,
  `data` TIMESTAMP NOT NULL,
  `tbcliente_idCliente` INT(11) NOT NULL,
  `tbpet_idPet` INT(11) NOT NULL,
  PRIMARY KEY (`idServico`),
  INDEX `fk_tbservico_tbcliente_idx` (`tbcliente_idCliente` ASC) VISIBLE,
  INDEX `fk_tbservico_tbpet1_idx` (`tbpet_idPet` ASC) VISIBLE,
  CONSTRAINT `fk_tbservico_tbcliente`
    FOREIGN KEY (`tbcliente_idCliente`)
    REFERENCES `littletoothpets`.`tbcliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbservico_tbpet1`
    FOREIGN KEY (`tbpet_idPet`)
    REFERENCES `littletoothpets`.`tbpet` (`idPet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `littletoothpets`.`tbpet` (
  `idPet` INT(11) NOT NULL,
  `nome` VARCHAR(80) NOT NULL,
  `raca` VARCHAR(50) NOT NULL,
  `porte` VARCHAR(7) NOT NULL,
  `idade` DECIMAL(60) NOT NULL,
  `peso` DOUBLE NOT NULL,
  `descricao` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`idPet`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
