CREATE TABLE tb_encuestas(
id int(11) NOT NULL AUTO_INCREMENT,
nombre_encuesta VARCHAR(50) NOT NULL,
descripcion VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Datos básicos','Contiene la información personal del estudiante');
INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Información de contacto','Contiene la información');
INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Información de vivienda','Contiene la información');
INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Información de salud','Contiene la información');
INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Información financiera','Contiene la información');
INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Información familiar','Contiene la información');


CREATE PROCEDURE proc_sacar_estudiantes (IN id_estudiante INT)
 BEGIN
 SELECT * FROM tb_estudiantes WHERE tipo = tipoCliente;
END

CREATE PROCEDURE proc_sacar_encuesta (IN encuesta INT)
 BEGIN
 SELECT * FROM tb_encuestas WHERE id = encuesta
END

CALL proc_sacar_clientes_tipo(1);


DELIMITER $$
DROP PROCEDURE IF EXIST proc_sacar_encuesta$$
CREATE PROCEDURE proc_sacar_encuesta (IN encuesta INT(11))
BEGIN
/*DECLARE nombre varchar(45)*/
SELECT * FROM tb_encuestas WHERE encuesta = id;
END $$
DELIMITER ;

CALL proc_sacar_encuesta(1);