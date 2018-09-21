CREATE TABLE repo_estudiantes(
	id INT(11) NOT NULL AUTO_INCREMENT,
	nombres VARCHAR(45),
	apellido1 VARCHAR(45),
	apellido2 VARCHAR(45),
	sede VARCHAR(45),
	programa VARCHAR(45),
	correo VARCHAR(45),
	PRIMARY KEY(id)
);


INSERT INTO repo_estudiantes(id, nombres, apellido1, apellido2, sede, programa, correo) VALUES(000324471,'Brayan Mauricio','Novoa','Salazar','Llanos','Tecnología en Desarrollo de Software','bnovoasalaz@uniminuto.edu.co');
INSERT INTO repo_estudiantes(id, nombres, apellido1, apellido2, sede, programa, correo) VALUES(000123456,'Derly Carolina','Campos','Lopez','Llanos','Tecnología en Desarrollo de Software','dcamposlope@uniminuto.edu.co');
INSERT INTO repo_estudiantes(id, nombres, apellido1, apellido2, sede, programa, correo) VALUES(000331127,'Jonathan Adolfo','Martinez','Leon','Llanos','Administración de Empresas','jadolfo@uniminuto.edu.co');
INSERT INTO repo_estudiantes(id, nombres, apellido1, apellido2, sede, programa, correo) VALUES(000146623,'Shirley Julieth','Suarez','Sanchez','Llanos','Lic. en Ciencias Naturales','shijusu@uniminuto.edu.co');
INSERT INTO repo_estudiantes(id, nombres, apellido1, apellido2, sede, programa, correo) VALUES(000322255,'Lorena','Zapata','Castro','Llanos','Comunicación Social Y Periodismo','lorzaca@uniminuto.edu.co');
INSERT INTO repo_estudiantes(id, nombres, apellido1, apellido2, sede, programa, correo) VALUES(000268779,'Yolima Solange','Pachon','Acuña','Llanos','Psicología','yosopa@uniminuto.edu.co');


SELECT id, nombres, apellido1, apellido2, sede, programa, correo FROM repo_estudiantes;


CREATE TABLE repo_gestantes(
	id INT(11) NOT NULL,
	nombres VARCHAR(45),
	apellido1 VARCHAR(45),
	edad int(2),
	telefono VARCHAR(45),
	sede VARCHAR(45),
	programa VARCHAR(45),
	PRIMARY KEY(id)
);
DROP TABLE repo_gestantes;

INSERT INTO repo_gestantes(id, nombres, apellido1, edad, telefono, sede, programa) VALUES(000233223,'Laura Alejandra','Moreno',19,'3230097863','Llanos','Comunicación Social y Periodismo');
INSERT INTO repo_gestantes(id, nombres, apellido1, edad, telefono, sede, programa) VALUES(000342565,'María del Pilar','Fajardo',18,'3108799856','Llanos','Administración Financiera');
INSERT INTO repo_gestantes(id, nombres, apellido1, edad, telefono, sede, programa) VALUES(000764573,'Angie Tatiana','Bello',22,'3133442345','Llanos','Pedagogía');
INSERT INTO repo_gestantes(id, nombres, apellido1, edad, telefono, sede, programa) VALUES(000198453,'Ruth Angélica','Barreto',23,'3143224565','Llanos','Psicología');
INSERT INTO repo_gestantes(id, nombres, apellido1, edad, telefono, sede, programa) VALUES(000332455,'Paola Andrea','Dorado',21,'3123647823','Llanos','Comunicación Gráfica');
INSERT INTO repo_gestantes(id, nombres, apellido1, edad, telefono, sede, programa) VALUES(000345523,'Liz Johana','Vargas',24,'3193372198','Llanos','Psicología');

SELECT id, nombres, apellido1, edad, telefono, sede, programa FROM repo_gestantes;



SELECT
 nombres,
 apellido1,
 apellido2,
 sede.sede AS SEDE,
 programa.programa AS PROGRAMA
 FROM tb_informacion_personal, sede.tb_sedes, programa.tb_programas
  WHERE
 id_estudiante = 000324471;



 SELECT
 nombres,
 apellido1,
 apellido2,
 sede,
 programa
 FROM tb_informacion_personal, tb_sedes, tb_programas;
 WHERE
 sede IN
 (SELECT 
 	programa
 	FROM tb_programas
 	WHERE
 	tb_estudiante_detalle = programa_id)
 AND
 programa IN
 (SELECT
 	nombre
 	FROM tb_ciudades
 	WHERE
 	tb_ciudades_id_ciudad = ciu.id_ciudad)
 ;