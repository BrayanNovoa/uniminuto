INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Datos básicos','Contiene la información personal del estudiante');
INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Información de contacto','Contiene la información');
INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Información de vivienda','Contiene la información');
INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Información de salud','Contiene la información');
INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Información financiera','Contiene la información');
INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Información familiar','Contiene la información');
INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES ('Información Económica','Contiene la información');

SELECT * FROM tb_encuestas;
SELECT * FROM tb_encuestas WHERE id = 1;
SELECT nombre_encuesta FROM tb_encuestas WHERE id = 1;