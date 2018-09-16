INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES(
	(SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='encuesta'),
	(SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta = 'tipoPregunta'),
	'pregunta'
	)
;


Se usa para guardar valores entre un rango preesta