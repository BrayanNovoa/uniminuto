CREATE DATABASE db_caracterizacion;
USE db_caracterizacion;



CREATE TABLE tb_roles(
	rol_id INT(3) NOT NULL AUTO_INCREMENT,
	rol_nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY(rol_id)
);

INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(1,'Administrador general');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(2,'Coordinador Estudiantes');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(3,'Coordinador Bienestar');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(4,'Estudiante');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(5,'Soporte');

CREATE TABLE tb_permisos(
	permiso_id INT(3) NOT NULL AUTO_INCREMENT,
	rol_id INT(3) NOT NULL,
	INDEX rol_ind (rol_id),
	FOREIGN KEY(rol_id) REFERENCES tb_roles(rol_id) ON DELETE CASCADE,
	permiso_nombre VARCHAR(50)NOT NULL,
	PRIMARY KEY(permiso_id)
);

INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(1,1,'Administrar DB');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(2,1,'Agregar Periodos Académicos');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(3,1,'Agregar Facultades');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(4,1,'Agregar Programas Académicos');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(5,1,'Agregar Usuarios');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(6,1,'Asignar Permisos');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(7,2,'Agregar Estudiantes');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(8,3,'Generar Reportes');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(9,4,'Llenar Encuestas');




CREATE TABLE tb_roles_permisos(
	roles_permisos_id INT(10) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(roles_permisos_id),
	rol_id INT(3) NOT NULL,
	INDEX rol_ind (rol_id),
	FOREIGN KEY(rol_id) REFERENCES tb_roles(rol_id) ON DELETE CASCADE,
	permiso_id INT(3) NOT NULL,
	INDEX permiso_ind (permiso_id),
	FOREIGN KEY(permiso_id) REFERENCES tb_permisos(permiso_id) ON DELETE CASCADE
);





CREATE TABLE tb_periodos(
	periodo_id INT NOT NULL AUTO_INCREMENT,
	agno INT(4) NOT NULL,
	semestre INT(1)NOT NULL,
	periodo VARCHAR(20) NOT NULL,
	PRIMARY KEY(periodo_id)
);

INSERT INTO tb_periodos(periodo_id, agno, semestre, periodo) VALUES(1,2016,1,'2016-1');
INSERT INTO tb_periodos(periodo_id, agno, semestre, periodo) VALUES(2,2016,2,'2016-2');
INSERT INTO tb_periodos(periodo_id, agno, semestre, periodo) VALUES(3,2017,1,'2017-a');
INSERT INTO tb_periodos(periodo_id, agno, semestre, periodo) VALUES(4,2017,2,'2017-b');
INSERT INTO tb_periodos(periodo_id, agno, semestre, periodo) VALUES(5,2018,1,'201810');
INSERT INTO tb_periodos(periodo_id, agno, semestre, periodo) VALUES(6,2018,2,'201820');


SELECT periodo_id FROM tb_periodos WHERE periodo ='201820';


DROP TABLE tb_programas;

DROP TABLE tb_facultades;

DROP TABLE tb_sedes;

DROP TABLE tb_rectorias;





CREATE TABLE tb_rectorias(
	rectoria_id INT(3) NOT NULL AUTO_INCREMENT,
	rectoria VARCHAR(50) NOT NULL,
	PRIMARY KEY(rectoria_id)
);
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(1,'Antioquia Y Eje Cafetero');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(2,'Sede Principal');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(3,'Sede Principal Virtual y a Distancia');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(4,'Bogotá Sur');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(5,'Cundinamarca');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(6,'Nariño');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(7,'Neiva');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(8,'Villavicencio');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(9,'Norte de Santander');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(11,'Bucaramanga');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(12,'Ibagué');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(13,'Cali');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(14,'Atlántico');





CREATE TABLE tb_sedes(
	sede_id INT(3) NOT NULL AUTO_INCREMENT,
	rectoria_id INT(3) NOT NULL,
	INDEX rectoria_ind (rectoria_id),
	FOREIGN KEY(rectoria_id) REFERENCES tb_rectorias(rectoria_id) ON DELETE CASCADE,
	sede VARCHAR(50) NOT NULL,
	PRIMARY KEY(sede_id)
);

INSERT INTO tb_sedes(sede_id, rectoria_id, sede) VALUES(1,8,'Sede Principal - Administrativa');
INSERT INTO tb_sedes(sede_id, rectoria_id, sede) VALUES(2,8,'Mitú');
INSERT INTO tb_sedes(sede_id, rectoria_id, sede) VALUES(3,8,'Puerto Carreño Vichada');
INSERT INTO tb_sedes(sede_id, rectoria_id, sede) VALUES(4,8,'Orocué');

SELECT sede FROM tb_sedes WHERE rectoria_id IN (SELECT rectoria_id FROM tb_rectorias WHERE rectoria_id = 8);
SELECT sede FROM tb_sedes WHERE rectoria_id IN (SELECT rectoria_id FROM tb_rectorias WHERE rectoria = 'Villavicencio');




CREATE TABLE tb_facultades(
	facultad_id INT(3) NOT NULL AUTO_INCREMENT,
	sede_id INT(3) NOT NULL,
	INDEX sede_ind (sede_id),
	FOREIGN KEY(sede_id) REFERENCES tb_sedes(sede_id) ON DELETE CASCADE,
	facultad VARCHAR(50) NOT NULL,
	PRIMARY KEY(facultad_id)
);

INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(1,1,'Ingeniería Y Ciencias Básicas');
INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(2,1,'Administración');
INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(3,1,'Psicología');
INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(4,1,'Comunicación');


SELECT facultad FROM tb_facultades WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede_id = 1);
SELECT facultad FROM tb_facultades WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa');


CREATE TABLE tb_programas(
	programa_id INT(3) NOT NULL AUTO_INCREMENT,
	facultad_id INT(3) NOT NULL,
	INDEX facultad_ind (facultad_id),
	FOREIGN KEY(facultad_id) REFERENCES tb_facultades(facultad_id) ON DELETE CASCADE,
	programa VARCHAR(50) NOT NULL,
	PRIMARY KEY(programa_id)
);

INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(1,1,'Tecnología en Desarrollo de Software');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(2,1,'Redes de Computadoras');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(3,1,'Tecnología en Informática');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(4,1,'Ingeniría Ambiental');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(5,2,'Administración de empresas');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(6,3,'Psicología');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(7,3,'Pedagogía Infantil');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(8,4,'Cominicación Social');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(9,4,'Cominicación Gráfica');


CREATE TABLE tb_usuarios(
	usuario_id INT(3) NOT NULL AUTO_INCREMENT,
	usuario VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL,
	sede_id INT(3) NOT NULL,
	INDEX sede_ind2 (sede_id),
	FOREIGN KEY(sede_id) REFERENCES tb_sedes(sede_id) ON DELETE CASCADE,
	rol_id INT(3) NOT NULL,
	INDEX rol_ind2 (rol_id),
	FOREIGN KEY(rol_id) REFERENCES tb_roles(rol_id) ON DELETE CASCADE,
	PRIMARY KEY (usuario_id)
);




INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id, rol_id) VALUES (1,'bnovoa.linux@gmail.com','1234567',1,1);



INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id, rol_id) VALUES (1,'bnovoa.linux@gmail.com','1234567',1,1);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id, rol_id) VALUES (1,'','',,);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id, rol_id) VALUES (,'','',);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id, rol_id) VALUES (,'','',);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id, rol_id) VALUES (,'','',);

SELECT rol_id FROM tb_usuarios WHERE usuario ='bnovoa.linux@gmail.com' AND password = '1234567' AND sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa');
SELECT rol_id FROM tb_usuarios WHERE usuario ='"+usuario+"' AND password = '"+password+"' AND sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = '"+sede+"');



SELECT rol_id FROM tb_usuarios WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = '"+Sede Principal - Administrativa+"');




SELECT rol_id FROM tb_usuarios WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa');
SELECT usuario, password FROM tb_usuarios WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = '"+Sede Principal - Administrativa+"');




SELECT usuario, password FROM tb_usuarios WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = '"+Sede Principal - Administrativa+"');
SELECT facultad FROM tb_facultades WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa');





DROP TABLE tb_estudiantes;
CREATE TABLE tb_estudiantes(
	estudiante_id INT(11) NOT NULL AUTO_INCREMENT,
	programa_id INT(3) NOT NULL,
	INDEX programa_ind(programa_id),
	FOREIGN KEY(programa_id) REFERENCES tb_programas(programa_id) ON DELETE CASCADE,
	periodo_id INT(3) NOT NULL,
	INDEX periodo_ind(periodo_id),
	FOREIGN KEY(periodo_id) REFERENCES tb_periodos(periodo_id) ON DELETE CASCADE,
	estudiante VARCHAR(20) NOT NULL UNIQUE,
	PRIMARY KEY(estudiante_id)
);

INSERT INTO tb_estudiantes (programa_id, periodo_id, rol_id, estudiante) VALUES
(1, 6, '000324471',4);
(1, 6, '000121312',4);


INSERT INTO tb_estudiantes (programa_id, periodo_id, estudiante) VALUES(
	(SELECT programa_id FROM tb_programas WHERE programa= 'Tecnología en Desarrollo de Software'),
	(SELECT periodo_id FROM tb_periodos WHERE periodo ='201820'),
	'1111111')
;

(1, 6, '000121312');


SELECT rol_id FROM tb_usuarios WHERE usuario ='bnovoa.linux@gmail.com' AND password = '1234567' AND sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa');




INSERT INTO `tb_rectorias` (`rectoria_id`, `rectoria`) VALUES
(1, 'Antioquia Y Eje Cafetero'),
(2, 'Sede Principal'),
(3, 'Sede Principal Virtual y a Distancia'),
(4, 'Bogotá Sur'),
(5, 'Cundinamarca'),
(6, 'Nariño'),
(7, 'Neiva'),
(8, 'Villavicencio'),
(9, 'Norte de Santander'),
(11, 'Bucaramanga'),
(12, 'Ibagué'),
(13, 'Cali'),
(14, 'Atlántico');




CREATE TABLE tb_encuestas(
encuesta_id int(11) NOT NULL AUTO_INCREMENT,
encuesta VARCHAR(50) NOT NULL,
descripcion VARCHAR(50) NOT NULL,
PRIMARY KEY(encuesta_id)
);

---- INICIO DE LOS PROCEDIMIENTOS

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

---- FIN DE LOS PROCEDIMIENTOS




CREATE TABLE tb_preguntas(
pregunta_id INT(11) NOT NULL AUTO_INCREMENT,
encuesta_id INT(11) NOT NULL,
pregunta VARCHAR(45),
PRIMARY KEY(pregunta_id)
);


ALTER TABLE tb_preguntas ADD INDEX(encuesta_id);
ALTER TABLE tb_preguntas ADD FOREIGN KEY (encuesta_id) REFERENCES tb_encuestas(id) ON DELETE RESTRICT ON UPDATE RESTRICT ;


-- INSTRUCCIÓN QUE SETEA EL NUMERO SIGUIENTE DE SU ID INCREMENTAL

ALTER TABLE `tb_encuestas` AUTO_INCREMENT =7;


INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(1,1,'Nombres');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(2,1,'Primer apellido');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(3,1,'Segundo Apellido');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(4,1,'Documento');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(5,1,'Sexo');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(6,1,'Edad');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(7,1,'Departamento de nacimiento');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(8,1,'Ciudad de nacimiento');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(9,1,'RH');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(10,2,'Teléfono fijo');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(11,2,'Teléfono celular');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(12,2,'Correo Electrónico');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(13,3,'Vive en sector Rural o Urbano?');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(14,3,'Lugar de vivienda');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(15,3,'Departamento');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(16,3,'Ciudad');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(17,3,'Dirección de vivienda');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(18,3,'Barrio');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(19,3,'Estrato');
INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(21,4,'Pertenece al SISBEN?');




INSERT INTO tb_preguntas(id, encuesta_id, pregunta) VALUES(20,3,'Tipo de vivienda');
-- OBTENE EL NÚMERO DE PREGUNTAS QUE TIENE UNA ENCUESTA POR EL ID DE LA MISMA
SELECT COUNT(id) FROM tb_preguntas WHERE encuesta_id = 1;
-- OBTIENE LA LISTA DE PREGUNTAS DE UNA ENCUESTA POR SU ID
SELECT pregunta FROM tb_preguntas WHERE encuesta_id = 1;

SELECT encuesta_id FROM tb_preguntas GROUP BY encuesta_id;







CREATE TABLE tb_respuestas(
	respuesta_id INT(11) NOT NULL AUTO_INCREMENT;
	encuesta_id INT(11) NOT NULL,
	pregunta_id INT(11) NOT NULL,
	estudiante_id INT(11) NOT NULL,
	respuesta VARCHAR(50),
	PRIMARY KEY(respuesta_id)
);



CREATE TABLE tb_();
CREATE TABLE tb_();


