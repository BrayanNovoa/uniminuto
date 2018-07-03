CREATE TABLE tb_respuestas(
	id INT(11) NOT NULL AUTO_INCREMENT;
	encuesta_id INT(11) NOT NULL,
	pregunta_id INT(11) NOT NULL,
	estudiante_id INT(11) NOT NULL,
	respuesta VARCHAR(50),
	PRIMARY KEY(id)
);