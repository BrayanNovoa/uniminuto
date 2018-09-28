saveRespuestas.sql
INSERT INTO tb_respuestas (encuesta_id, pregunta_id, estudiante_cod, respuesta) VALUES((SELECT pregunta_id, encuesta_id FROM tb_preguntas WHERE pregunta= 'SEDE'),'324471','VILAVO');
INSERT INTO tb_respuestas (encuesta_id, pregunta_id, estudiante_cod, respuesta) VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta= 'SEDE'),(SELECT encuesta_id FROM tb_preguntas WHERE pregunta= 'SEDE'),'324471','VILAVO');
INSERT INTO tb_respuestas (encuesta_id, pregunta_id, estudiante_cod, respuesta) VALUES((SELECT encuesta_id FROM tb_preguntas WHERE pregunta= 'SEDE'),(SELECT pregunta_id FROM tb_preguntas WHERE pregunta= 'SEDE'),'324471','askldnalksdasl');



