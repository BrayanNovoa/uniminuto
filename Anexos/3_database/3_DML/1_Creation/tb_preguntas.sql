CREATE TABLE tb_preguntas(
id INT(11) NOT NULL AUTO_INCREMENT,
encuesta_id INT(11) NOT NULL,
pregunta VARCHAR(45),
PRIMARY KEY(id)
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