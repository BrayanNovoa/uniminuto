use db_caracterizacion;



CREATE TABLE tb_roles(
	rol_id INT(3) NOT NULL AUTO_INCREMENT,
	rol_nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY(rol_id)
);

INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(1,'Administrador general');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(2,'Coordinador Bienestar');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(3,'Estudiante');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(4,'Soporte');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(,'');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(,'');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(,'');


CREATE TABLE tb_permisos(
	permiso_id INT(3) NOT NULL AUTO_INCREMENT,
	permiso_nombre VARCHAR(50)NOT NULL,
	PRIMARY KEY(permiso_id)
);

INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(1,'Administrar DB');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(2,'Agregar Periodos Académicos');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(,'');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(,'');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(,'');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(,'');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(,'');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(,'');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(,'');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(,'');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(,'');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(,'');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(,'');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(,'');


INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(3,'Agregar Facultades');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(4,'Agregar Programas');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(5,'Agregar Estudiantes');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(6,'Generar Reportes');
INSERT INTO tb_permisos(permiso_id, permiso_nombre) VALUES(7,'Llenar Encuestas');

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


DROP TABLE tb_periodos;
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

CREATE TABLE tb_(
	id INT(3) NOT NULL AUTO_INCREMENT,
	VARCHAR(50) NOT NULL,
	PRIMARY KEY()
);



DROP TABLE tb_programas;

DROP TABLE tb_facultades;

DROP TABLE tb_sedes;

DROP TABLE tb_vicerrectorias;





CREATE TABLE tb_vicerrectorias(
	vicerrectoria_id INT(3) NOT NULL AUTO_INCREMENT,
	vicerrectoria VARCHAR(50) NOT NULL,
	PRIMARY KEY(vicerrectoria_id)
);
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(1,'Antioquia Y Eje Cafetero');
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(2,'Sede Principal');
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(3,'Sede Principal Virtual y a Distancia');
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(4,'Bogotá Sur');
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(5,'Cundinamarca');
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(6,'Nariño');
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(7,'Neiva');
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(8,'Villavicencio');
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(9,'Norte de Santander');
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(11,'Bucaramanga');
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(12,'Ibagué');
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(13,'Cali');
INSERT INTO tb_vicerrectorias(vicerrectoria_id, vicerrectoria) VALUES(14,'Atlántico');





CREATE TABLE tb_sedes(
	sede_id INT(3) NOT NULL AUTO_INCREMENT,
	vicerrectoria_id INT(3) NOT NULL,
	INDEX vicerrectoria_ind (vicerrectoria_id),
	FOREIGN KEY(vicerrectoria_id) REFERENCES tb_vicerrectorias(vicerrectoria_id) ON DELETE CASCADE,
	sede VARCHAR(50) NOT NULL,
	PRIMARY KEY(sede_id)
);

INSERT INTO tb_sedes(sede_id, vicerrectoria_id, sede) VALUES(1,8,'Sede Principal - Administrativa');
INSERT INTO tb_sedes(sede_id, vicerrectoria_id, sede) VALUES(2,8,'Mitú');
INSERT INTO tb_sedes(sede_id, vicerrectoria_id, sede) VALUES(3,8,'Puerto Carreño Vichada');
INSERT INTO tb_sedes(sede_id, vicerrectoria_id, sede) VALUES(4,8,'Orocué');

SELECT sede FROM tb_sedes WHERE vicerrectoria_id IN (SELECT vicerrectoria_id FROM tb_vicerrectorias WHERE vicerrectoria_id = 8);
SELECT sede FROM tb_sedes WHERE vicerrectoria_id IN (SELECT vicerrectoria_id FROM tb_vicerrectorias WHERE vicerrectoria = 'Villavicencio');




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







CREATE TABLE tb_();
CREATE TABLE tb_();


