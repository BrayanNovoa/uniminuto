CREATE TABLE tb_sedes(
	id INT(11) NOT NULL AUTO_INCREMENT,
	sede VARCHAR(45),
	PRIMARY KEY(id)
);

INSERT INTO tb_sedes(id, sede) VALUES(1,'Llanos');
INSERT INTO tb_sedes(id, sede) VALUES(2,'Bogotá');
INSERT INTO tb_sedes(id, sede) VALUES(3,'Medellin');
INSERT INTO tb_sedes(id, sede) VALUES(4,'Vichada');
INSERT INTO tb_sedes(id, sede) VALUES(5,'Casanare');
INSERT INTO tb_sedes(id, sede) VALUES(6,'Vaupés');
INSERT INTO tb_sedes(id, sede) VALUES(7,'Tolima');
INSERT INTO tb_sedes(id, sede) VALUES(8,'Huila');
INSERT INTO tb_sedes(id, sede) VALUES(9,'Boyaca');
INSERT INTO tb_sedes(id, sede) VALUES(10,'Caquetá');
INSERT INTO tb_sedes(id, sede) VALUES(11,'Putumayo');
INSERT INTO tb_sedes(id, sede) VALUES(12,'Nariño');
INSERT INTO tb_sedes(id, sede) VALUES(13,'Valle');
INSERT INTO tb_sedes(id, sede) VALUES(14,'Antioquia');
INSERT INTO tb_sedes(id, sede) VALUES(15,'Caldas');
INSERT INTO tb_sedes(id, sede) VALUES(16,'Risaralda');
INSERT INTO tb_sedes(id, sede) VALUES(17,'Santander');
INSERT INTO tb_sedes(id, sede) VALUES(18,'Atlántico');
INSERT INTO tb_sedes(id, sede) VALUES(19,'Norte de Santander');

-- 
SELECT * FROM tb_sedes;