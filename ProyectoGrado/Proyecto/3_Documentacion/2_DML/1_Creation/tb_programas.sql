CREATE TABLE tb_programas(
	id INT(11) NOT NULL AUTO_INCREMENT,
	programa VARCHAR(45),
	PRIMARY KEY(id)
);
INSERT INTO tb_programas(id, programa) VALUES(1,'Tecnología en Desarrollo de Software');
INSERT INTO tb_programas(id, programa) VALUES(2,'Tecnología en Comunicación Gráfica');
INSERT INTO tb_programas(id, programa) VALUES(3,'Administración de Empresas');
INSERT INTO tb_programas(id, programa) VALUES(4,'Ingeniería Ambiental');
INSERT INTO tb_programas(id, programa) VALUES(5,'Contaduría Pública');
INSERT INTO tb_programas(id, programa) VALUES(6,'Comunicación Social y Periodismo');
INSERT INTO tb_programas(id, programa) VALUES(7,'Mercadéo');
INSERT INTO tb_programas(id, programa) VALUES(8,'Administración Financiera');
INSERT INTO tb_programas(id, programa) VALUES(9,'Salud Ocupacional');
INSERT INTO tb_programas(id, programa) VALUES(10,'Pedagogía Infantil');
INSERT INTO tb_programas(id, programa) VALUES(11,'Psicología');

--
SELECT * FROM tb_programas;