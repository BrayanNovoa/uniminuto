SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `db_caracterizacion` ;
CREATE SCHEMA IF NOT EXISTS `db_caracterizacion` DEFAULT CHARACTER SET latin1 ;
USE `db_caracterizacion` ;

-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_periodos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_periodos` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_periodos` (
  `periodo_id` INT NOT NULL,
  `agno` VARCHAR(45) NULL,
  `semestre` VARCHAR(45) NULL,
  `periodo` VARCHAR(45) NULL,
  PRIMARY KEY (`periodo_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_facultades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_facultades` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_facultades` (
  `facultad_id` INT NOT NULL,
  `sede_id` VARCHAR(45) NULL,
  `facultad` VARCHAR(45) NULL,
  PRIMARY KEY (`facultad_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_programas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_programas` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_programas` (
  `programa_id` INT NOT NULL,
  `facultad_id` INT NOT NULL,
  `programa` VARCHAR(45) NULL,
  PRIMARY KEY (`programa_id`, `facultad_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_roles` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_roles` (
  `rol_id` INT NOT NULL,
  `rol_nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`rol_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_estudiantes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_estudiantes` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_estudiantes` (
  `estudiante_id` INT(9) NOT NULL,
  `periodo_id` INT NOT NULL,
  `programa_id` INT NOT NULL,
  `rol_id` INT NOT NULL,
  `estudiante` VARCHAR(45) NULL,
  PRIMARY KEY (`estudiante_id`, `periodo_id`, `programa_id`, `rol_id`),
  UNIQUE INDEX `estudiante_UNIQUE` (`estudiante` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_departamentos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_departamentos` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_departamentos` (
  `departamento_id` VARCHAR(3) NOT NULL COMMENT '	',
  `departamento` VARCHAR(45) NULL,
  PRIMARY KEY (`departamento_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_ciudades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_ciudades` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_ciudades` (
  `id_ciudad` INT NOT NULL,
  `departamento_id` VARCHAR(3) NOT NULL,
  `ciudad` VARCHAR(45) NULL,
  PRIMARY KEY (`id_ciudad`, `departamento_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_rectorias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_rectorias` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_rectorias` (
  `rectoria_id` INT NOT NULL,
  `rectoria` VARCHAR(45) NULL,
  PRIMARY KEY (`rectoria_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_sedes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_sedes` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_sedes` (
  `sede_id` INT NOT NULL,
  `rectoria_id` INT NOT NULL,
  `sede` VARCHAR(45) NULL,
  PRIMARY KEY (`sede_id`, `rectoria_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_usuarios` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_usuarios` (
  `usuario_id` INT NOT NULL,
  `usuario` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `sede_id` INT NOT NULL,
  `rol_id` INT NOT NULL,
  PRIMARY KEY (`usuario_id`, `sede_id`, `rol_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_permisos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_permisos` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_permisos` (
  `permiso_id` INT NOT NULL,
  `rol_id` INT NOT NULL,
  `permiso_nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`permiso_id`, `rol_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_encuestas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_encuestas` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_encuestas` (
  `encuesta_id` INT NOT NULL,
  `encuesta` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`encuesta_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_preguntas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_preguntas` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_preguntas` (
  `pregunta_id` INT NOT NULL,
  `encuesta_id` INT NOT NULL,
  `pregunta` VARCHAR(45) NULL,
  PRIMARY KEY (`pregunta_id`, `encuesta_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_respuestas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_respuestas` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_respuestas` (
  `respuesta_id` INT NOT NULL,
  `encuesta_id` VARCHAR(45) NULL,
  `pregunta_id` VARCHAR(45) NULL,
  `estudiante_id` VARCHAR(45) NULL,
  `respuesta` VARCHAR(45) NULL,
  `tb_preguntas_pregunta_id` INT NOT NULL,
  `tb_preguntas_encuesta_id` INT NOT NULL,
  PRIMARY KEY (`respuesta_id`, `tb_preguntas_pregunta_id`, `tb_preguntas_encuesta_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_sedes_has_tb_facultades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_sedes_has_tb_facultades` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_sedes_has_tb_facultades` (
  `tb_sedes_sede_id` INT NOT NULL,
  `tb_facultades_facultad_id` INT NOT NULL,
  PRIMARY KEY (`tb_sedes_sede_id`, `tb_facultades_facultad_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_estudiantes_has_tb_respuestas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_estudiantes_has_tb_respuestas` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_estudiantes_has_tb_respuestas` (
  `tb_estudiantes_estudiante_id` INT(9) NOT NULL,
  `tb_estudiantes_periodo_id` INT NOT NULL,
  `tb_estudiantes_programa_id` INT NOT NULL,
  `tb_estudiantes_rol_id` INT NOT NULL,
  `tb_respuestas_respuesta_id` INT NOT NULL,
  `tb_respuestas_tb_preguntas_pregunta_id` INT NOT NULL,
  `tb_respuestas_tb_preguntas_encuesta_id` INT NOT NULL,
  PRIMARY KEY (`tb_estudiantes_estudiante_id`, `tb_estudiantes_periodo_id`, `tb_estudiantes_programa_id`, `tb_estudiantes_rol_id`, `tb_respuestas_respuesta_id`, `tb_respuestas_tb_preguntas_pregunta_id`, `tb_respuestas_tb_preguntas_encuesta_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_roles_permisos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_roles_permisos` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_roles_permisos` (
  `roles_permisos_id` INT(10) NOT NULL AUTO_INCREMENT,
  `rol_id` INT(3) NOT NULL,
  `permiso_id` INT(3) NOT NULL,
  PRIMARY KEY (`roles_permisos_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_vicerrectorias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_vicerrectorias` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_vicerrectorias` (
  `vicerrectoria_id` INT(3) NOT NULL AUTO_INCREMENT,
  `vicerrectoria` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`vicerrectoria_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
