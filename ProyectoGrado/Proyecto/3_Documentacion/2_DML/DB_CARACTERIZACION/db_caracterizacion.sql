SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE TABLE `db_caracterizacion`.`tb_estudiantes` (
  `id_estudiante` INT(9) NOT NULL,
  PRIMARY KEY (`id_estudiante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE `db_caracterizacion`.`Informacion_personal`(
`apellido1` VARCHAR(45) NOT NULL ,
`apellido2` VARCHAR(45) NOT NULL ,
`documento` VARCHAR(45) NOT NULL ,
`sexo` VARCHAR(2) NOT NULL ,
`edad` VARCHAR(1) NOT NULL ,
`id_rh` INT(11) NOT NULL ,
`id_estudiante` INT(9) NOT NULL,
`id_departamento` VARCHAR(3) NOT NULL `edad`,
`id_ciudad` INT(11) NOT NULL AFTER `id_departamento`,
`fk_Informacion_personal_tb_estudiantes1_idx` (`id_estudiante` ASC),
PRIMARY KEY (`id_estudiante`),
ADD UNIQUE INDEX `tb_estudiantes_id_estudiante_UNIQUE` (`id_estudiante` ASC),
ADD INDEX `fk_Informacion_personal_tb_ciudades1_idx` (`id_ciudad` ASC, `id_departamento` ASC);

CREATE TABLE `db_caracterizacion`.`tb_rh`(
`grupo_sanguineo` VARCHAR(3) NOT NULL );

CREATE TABLE `db_caracterizacion`.`tb_contactos` (
  `id_estudiante` INT(9) NOT NULL,
  `tel_fijo` VARCHAR(45) NULL DEFAULT NULL,
  `tel_celular` VARCHAR(45) NULL DEFAULT NULL,
  `correo` VARCHAR(45) NULL DEFAULT NULL,
  INDEX `fk_tb_contactos_tb_estudiantes1_idx` (`id_estudiante` ASC),
  PRIMARY KEY (`id_estudiante`),
  CONSTRAINT `fk_tb_contactos_tb_estudiantes1`
    FOREIGN KEY (`id_estudiante`)
    REFERENCES `db_caracterizacion`.`tb_estudiantes` (`id_estudiante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


CREATE TABLE `db_caracterizacion`.`tb_localizacion` (
  `id_estudiante` INT(9) NOT NULL,
  `sector` VARCHAR(6) NULL DEFAULT NULL,
  `lugar` VARCHAR(45) NULL DEFAULT NULL,
  `tb_ciudades_id_departamento` VARCHAR(3) NOT NULL,
  `tb_ciudades_id_ciudad` INT(11) NOT NULL,
  `direccion` VARCHAR(45) NULL DEFAULT NULL,
  `barrio` VARCHAR(45) NULL DEFAULT NULL,
  `estrato` VARCHAR(1) NULL DEFAULT NULL,
  `tipo_vivienda` VARCHAR(8) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`, `tb_ciudades_id_departamento`, `tb_ciudades_id_ciudad`),
  INDEX `fk_tb_localizacion_tb_ciudades1_idx` (`tb_ciudades_id_ciudad` ASC, `tb_ciudades_id_departamento` ASC),
  CONSTRAINT `fk_tb_localizacion_tb_estudiantes1`
    FOREIGN KEY (`id_estudiante`)
    REFERENCES `db_caracterizacion`.`tb_estudiantes` (`id_estudiante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_localizacion_tb_ciudades1`
    FOREIGN KEY (`tb_ciudades_id_ciudad` , `tb_ciudades_id_departamento`)
    REFERENCES `db_caracterizacion`.`tb_ciudades` (`id_ciudad` , `id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE `db_caracterizacion`.`tb_ciudades` (
  `id_ciudad` INT(11) NOT NULL,
  `id_departamento` VARCHAR(3) NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_ciudad`, `id_departamento`),
  INDEX `fk_tb_ciudades_tb_departamentos1_idx` (`id_departamento` ASC),
  CONSTRAINT `fk_tb_ciudades_tb_departamentos1`
    FOREIGN KEY (`id_departamento`)
    REFERENCES `db_caracterizacion`.`tb_departamentos` (`id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE `db_caracterizacion`.`tb_departamentos` (
  `id_departamento` VARCHAR(3) NOT NULL COMMENT '	',
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_departamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE `db_caracterizacion`.`tb_info_salud` (
  `id_estudiante` INT(9) NOT NULL,
  `SISBEN` VARCHAR(2) NULL DEFAULT NULL,
  `EPS` VARCHAR(2) NULL DEFAULT NULL,
  `enfermedad` VARCHAR(45) NULL DEFAULT NULL,
  `especiales` VARCHAR(45) NULL DEFAULT NULL,
  `dificultad` VARCHAR(45) NULL DEFAULT NULL,
  `alcohol` VARCHAR(45) NULL DEFAULT NULL,
  `cigarrillo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`),
  CONSTRAINT `fk_tb_info_salud_tb_estudiantes1`
    FOREIGN KEY (`id_estudiante`)
    REFERENCES `db_caracterizacion`.`tb_estudiantes` (`id_estudiante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE `db_caracterizacion`.`tb_info_financiera` (
  `id_estudiante` INT(9) NOT NULL,
  `medio_pago` VARCHAR(45) NULL DEFAULT NULL,
  `quien_paga` VARCHAR(45) NULL DEFAULT NULL,
  `situacion_laboral` VARCHAR(45) NULL DEFAULT NULL,
  `sector_laboral` VARCHAR(45) NULL DEFAULT NULL,
  `tipo_trabajo` VARCHAR(45) NULL DEFAULT NULL,
  `ingreso_personal` VARCHAR(45) NULL DEFAULT NULL,
  `ingreso_familiar` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`),
  CONSTRAINT `fk_tb_info_financiera_tb_estudiantes1`
    FOREIGN KEY (`id_estudiante`)
    REFERENCES `db_caracterizacion`.`tb_estudiantes` (`id_estudiante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE `db_caracterizacion`.`tb_info_familiar` (
  `id_estudiante` INT(9) NOT NULL,
  `vive_con` VARCHAR(45) NULL DEFAULT NULL,
  `estado_civil` VARCHAR(45) NULL DEFAULT NULL,
  `num_hermanos` VARCHAR(2) NULL DEFAULT NULL,
  `lugar_hermanos` VARCHAR(45) NULL DEFAULT NULL,
  `embarazo` VARCHAR(45) NULL DEFAULT NULL,
  `mes_embarazo` VARCHAR(45) NULL DEFAULT NULL,
  `padres_viven_con_abuelos` VARCHAR(45) NULL DEFAULT NULL,
  `hijos` VARCHAR(45) NULL DEFAULT NULL,
  `num_hijos` VARCHAR(45) NULL DEFAULT NULL,
  `escolaridad_padre` VARCHAR(45) NULL DEFAULT NULL,
  `escolaridad_madre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`),
  CONSTRAINT `fk_tb_info_familiar_tb_estudiantes1`
    FOREIGN KEY (`id_estudiante`)
    REFERENCES `db_caracterizacion`.`tb_estudiantes` (`id_estudiante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

ALTER TABLE `db_caracterizacion`.`Informacion_personal` 
ADD CONSTRAINT `fk_Informacion_personal_tb_rh`
  FOREIGN KEY (`id_rh`)
  REFERENCES `db_caracterizacion`.`tb_rh` (`id_rh`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Informacion_personal_tb_estudiantes1`
  FOREIGN KEY (`id_estudiante`)
  REFERENCES `db_caracterizacion`.`tb_estudiantes` (`id_estudiante`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Informacion_personal_tb_ciudades1`
  FOREIGN KEY (`id_ciudad` , `id_departamento`)
  REFERENCES `db_caracterizacion`.`tb_ciudades` (`id_ciudad` , `id_departamento`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

CREATE TABLE `db_caracterizacion`.`tb_user_admin` (
  `id_admin` INT(9) NOT NULL,
  `admin_pass` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_admin`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
