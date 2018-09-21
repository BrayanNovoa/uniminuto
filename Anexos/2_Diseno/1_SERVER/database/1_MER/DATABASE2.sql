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
  PRIMARY KEY (`programa_id`, `facultad_id`),
  INDEX `fk_tb_programas_tb_facultades1_idx` (`facultad_id` ASC),
  CONSTRAINT `fk_tb_programas_tb_facultades1`
    FOREIGN KEY (`facultad_id`)
    REFERENCES `db_caracterizacion`.`tb_facultades` (`facultad_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
  UNIQUE INDEX `estudiante_UNIQUE` (`estudiante` ASC),
  INDEX `fk_tb_estudiantes_tb_periodos1_idx` (`periodo_id` ASC),
  INDEX `fk_tb_estudiantes_tb_programas1_idx` (`programa_id` ASC),
  INDEX `fk_tb_estudiantes_tb_roles1_idx` (`rol_id` ASC),
  CONSTRAINT `fk_tb_estudiantes_tb_periodos1`
    FOREIGN KEY (`periodo_id`)
    REFERENCES `db_caracterizacion`.`tb_periodos` (`periodo_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_estudiantes_tb_programas1`
    FOREIGN KEY (`programa_id`)
    REFERENCES `db_caracterizacion`.`tb_programas` (`programa_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_estudiantes_tb_roles1`
    FOREIGN KEY (`rol_id`)
    REFERENCES `db_caracterizacion`.`tb_roles` (`rol_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
  PRIMARY KEY (`id_ciudad`, `departamento_id`),
  INDEX `fk_tb_ciudades_tb_departamentos1_idx` (`departamento_id` ASC),
  CONSTRAINT `fk_tb_ciudades_tb_departamentos1`
    FOREIGN KEY (`departamento_id`)
    REFERENCES `db_caracterizacion`.`tb_departamentos` (`departamento_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
  PRIMARY KEY (`sede_id`, `rectoria_id`),
  INDEX `fk_tb_sedes_tb_rectorias1_idx` (`rectoria_id` ASC),
  CONSTRAINT `fk_tb_sedes_tb_rectorias1`
    FOREIGN KEY (`rectoria_id`)
    REFERENCES `db_caracterizacion`.`tb_rectorias` (`rectoria_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
  PRIMARY KEY (`usuario_id`, `sede_id`, `rol_id`),
  INDEX `fk_tb_usuarios_tb_sedes1_idx` (`sede_id` ASC),
  INDEX `fk_tb_usuarios_tb_roles1_idx` (`rol_id` ASC),
  CONSTRAINT `fk_tb_usuarios_tb_sedes1`
    FOREIGN KEY (`sede_id`)
    REFERENCES `db_caracterizacion`.`tb_sedes` (`sede_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_usuarios_tb_roles1`
    FOREIGN KEY (`rol_id`)
    REFERENCES `db_caracterizacion`.`tb_roles` (`rol_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_permisos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_permisos` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_permisos` (
  `permiso_id` INT NOT NULL,
  `rol_id` INT NOT NULL,
  `permiso_nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`permiso_id`, `rol_id`),
  INDEX `fk_tb_permisos_tb_roles1_idx` (`rol_id` ASC),
  CONSTRAINT `fk_tb_permisos_tb_roles1`
    FOREIGN KEY (`rol_id`)
    REFERENCES `db_caracterizacion`.`tb_roles` (`rol_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
  PRIMARY KEY (`pregunta_id`, `encuesta_id`),
  INDEX `fk_tb_preguntas_tb_encuestas1_idx` (`encuesta_id` ASC),
  CONSTRAINT `fk_tb_preguntas_tb_encuestas1`
    FOREIGN KEY (`encuesta_id`)
    REFERENCES `db_caracterizacion`.`tb_encuestas` (`encuesta_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
  PRIMARY KEY (`respuesta_id`, `tb_preguntas_pregunta_id`, `tb_preguntas_encuesta_id`),
  INDEX `fk_tb_respuestas_tb_preguntas1_idx` (`tb_preguntas_pregunta_id` ASC, `tb_preguntas_encuesta_id` ASC),
  CONSTRAINT `fk_tb_respuestas_tb_preguntas1`
    FOREIGN KEY (`tb_preguntas_pregunta_id` , `tb_preguntas_encuesta_id`)
    REFERENCES `db_caracterizacion`.`tb_preguntas` (`pregunta_id` , `encuesta_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_sedes_has_tb_facultades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_sedes_has_tb_facultades` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_sedes_has_tb_facultades` (
  `tb_sedes_sede_id` INT NOT NULL,
  `tb_facultades_facultad_id` INT NOT NULL,
  PRIMARY KEY (`tb_sedes_sede_id`, `tb_facultades_facultad_id`),
  INDEX `fk_tb_sedes_has_tb_facultades_tb_facultades1_idx` (`tb_facultades_facultad_id` ASC),
  INDEX `fk_tb_sedes_has_tb_facultades_tb_sedes1_idx` (`tb_sedes_sede_id` ASC),
  CONSTRAINT `fk_tb_sedes_has_tb_facultades_tb_sedes1`
    FOREIGN KEY (`tb_sedes_sede_id`)
    REFERENCES `db_caracterizacion`.`tb_sedes` (`sede_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_sedes_has_tb_facultades_tb_facultades1`
    FOREIGN KEY (`tb_facultades_facultad_id`)
    REFERENCES `db_caracterizacion`.`tb_facultades` (`facultad_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
  PRIMARY KEY (`tb_estudiantes_estudiante_id`, `tb_estudiantes_periodo_id`, `tb_estudiantes_programa_id`, `tb_estudiantes_rol_id`, `tb_respuestas_respuesta_id`, `tb_respuestas_tb_preguntas_pregunta_id`, `tb_respuestas_tb_preguntas_encuesta_id`),
  INDEX `fk_tb_estudiantes_has_tb_respuestas_tb_respuestas1_idx` (`tb_respuestas_respuesta_id` ASC, `tb_respuestas_tb_preguntas_pregunta_id` ASC, `tb_respuestas_tb_preguntas_encuesta_id` ASC),
  INDEX `fk_tb_estudiantes_has_tb_respuestas_tb_estudiantes1_idx` (`tb_estudiantes_estudiante_id` ASC, `tb_estudiantes_periodo_id` ASC, `tb_estudiantes_programa_id` ASC, `tb_estudiantes_rol_id` ASC),
  CONSTRAINT `fk_tb_estudiantes_has_tb_respuestas_tb_estudiantes1`
    FOREIGN KEY (`tb_estudiantes_estudiante_id` , `tb_estudiantes_periodo_id` , `tb_estudiantes_programa_id` , `tb_estudiantes_rol_id`)
    REFERENCES `db_caracterizacion`.`tb_estudiantes` (`estudiante_id` , `periodo_id` , `programa_id` , `rol_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_estudiantes_has_tb_respuestas_tb_respuestas1`
    FOREIGN KEY (`tb_respuestas_respuesta_id` , `tb_respuestas_tb_preguntas_pregunta_id` , `tb_respuestas_tb_preguntas_encuesta_id`)
    REFERENCES `db_caracterizacion`.`tb_respuestas` (`respuesta_id` , `tb_preguntas_pregunta_id` , `tb_preguntas_encuesta_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_caracterizacion`.`tb_roles_permisos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_caracterizacion`.`tb_roles_permisos` ;

CREATE TABLE IF NOT EXISTS `db_caracterizacion`.`tb_roles_permisos` (
  `roles_permisos_id` INT(10) NOT NULL AUTO_INCREMENT,
  `rol_id` INT(3) NOT NULL,
  `permiso_id` INT(3) NOT NULL,
  PRIMARY KEY (`roles_permisos_id`),
  INDEX `rol_ind` (`rol_id` ASC),
  INDEX `permiso_ind` (`permiso_id` ASC),
  CONSTRAINT `tb_roles_permisos_ibfk_1`
    FOREIGN KEY (`rol_id`)
    REFERENCES `db_caracterizacion`.`tb_roles` (`rol_id`)
    ON DELETE CASCADE,
  CONSTRAINT `tb_roles_permisos_ibfk_2`
    FOREIGN KEY (`permiso_id`)
    REFERENCES `db_caracterizacion`.`tb_permisos` (`permiso_id`)
    ON DELETE CASCADE)
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
