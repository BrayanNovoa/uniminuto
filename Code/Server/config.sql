USE db_caracterizacion;
INSERT INTO tb_periodos(periodo_id,periodo) VALUES(6,'2018-02');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(1,'Vicerrectoría Regional Orinoquía');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(2,'Sede Principal');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(3,'Sede Principal Virtual y a Distancia');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(4,'Bogotá Sur');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(5,'Cundinamarca');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(6,'Nariño');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(7,'Neiva');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(8,'Antioquia Y Eje Cafetero');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(9,'Norte de Santander');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(11,'Bucaramanga');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(12,'Ibagué');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(13,'Cali');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(14,'Atlántico');
INSERT INTO tb_sedes(sede_id, rectoria_id, sede) VALUES(1,1,'Sede Principal - Administrativa');
INSERT INTO tb_sedes(sede_id, rectoria_id, sede) VALUES(2,1,'Mitú');
INSERT INTO tb_sedes(sede_id, rectoria_id, sede) VALUES(3,1,'Puerto Carreño Vichada');
INSERT INTO tb_sedes(sede_id, rectoria_id, sede) VALUES(4,1,'Orocué');
INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(1,1,'Ingeniería Y Ciencias Básicas');
INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(2,1,'Ciencias Económicas y Administrativas');
INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(3,1,'Ciencias Humanas');
INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(4,1,'Ciencias de la Comunicación');
INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(5,1,'Ciencias Sociales y Políticas');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(1,1,'Tecnología en Desarrollo de Software');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(2,1,'Tecnología en Redes de Computadoras');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(3,1,'Tecnología en Informática');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(4,1,'Ingeniería Agroecológica');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(5,2,'Administración de empresas');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(6,3,'Psicología');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(7,3,'Pedagogía Infantil');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(8,4,'Cominicación Social');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(9,4,'Cominicación Gráfica');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(10,5,'Derecho');
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id) VALUES (1,'martha.jaime@uniminuto.edu','1234567',1);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id) VALUES (2,'bnovoasalaz@uniminuto.edu.co','1234567',1);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id) VALUES (3,'jchave13@uniminuto.edu.co','1234567',1);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id) VALUES (4,'dgarcia6@uniminuto.edu.co','1234567',1);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id) VALUES (5,'magutierrezc.admin@uniminuto.edu.co','1234567',1);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id) VALUES (6,'whernande18@uniminuto.edu.co','1234567',1);
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('DATOS GENERALES','Información de registro del estudiante');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('DATOS BÁSICOS','Información personal del estudiante');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('SECTOR SALUD','Información del sector Salud');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('SECTOR VIVIENDA','Información del sector Vivienda');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('CONTACTO','Información del sector Contacto');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('SECTOR SOCIOECONOMICO','Información del sector Socioeconómico');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('REDES DE APOYO','Información de las Redes de Apoyo');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('SECTOR FAMILIAR','Información del sector Familiar');
INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('ARCHIVO', 'Este dato se obtiene de un archivo .CSV que contenga la información.');
INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('TEXTO', 'Sirve para almacenar cualquier tipo de dato en formato de texto. se recomienda para almacenar cifras numéricas que no requieren ningún tipo de operaciónes matemáticas.');
INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('DESPLEGABLE', 'Permite al estudiante seleccionar una sola opción posible de una lista desplegable.');
INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('MULTIPLE', 'Se usa para permitir al estudiante seleccionar varias posibles respuestas para una misma pregunta.');
INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('NUMERO', 'Se usa para almacenar valores numéricos solo en caso de ser requeridos para realizar operaciones matemáticas.');
INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('RANGO', 'Se usa para guardar valores entre un rango preestablecidos.');
# Inserción de las preguntas de cada encuesta.
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS GENERALES'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'SEDE');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS GENERALES'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'Número de Documento de Identidad (solo el número)');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS GENERALES'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'Programa al que pertenece');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS GENERALES'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'Modalidad de estudio');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'Nombres');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'Apellidos');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'Departamento de nacimiento');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'Ciudad de nacimiento');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'Sexo');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Edad');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'Tipo de sangre');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Pertenece a SISBEN?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Está afiliado a EPS?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Presenta algún  problema de salud o enfermedad crónica?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Pertenece usted a alguna de las siguientes poblaciones especiales?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Manifiesta algún tipo de dificultad que pueda afectar su vida académica?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), 'Si consume bebidas alcohólica, por favor indique la frecuencia');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), 'Si fuma, por favor indique la frecuencia');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), 'Su vivienda es');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Vive en sector rural o urbano?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), 'Estrato Socioeconómico');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), 'Lugar de vivienda');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Ciudad');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Localidad');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Barrio');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Dirección de residencia');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='CONTACTO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Teléfono fijo');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='CONTACTO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Teléfono celular');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='CONTACTO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Correo electrónico');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), 'Medios de pago de la matrícula');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Quién paga la matrícula?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Actualmente se encuentra laborando?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), 'Sector al que pertenece su trabajo');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Trabaja como idependiente o empleado?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), 'Ingreso mensual suyo en salarios mínimos');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Ingreso mensual de su familia');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Usted vive actualmente con?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), 'Estado civil');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Número de hermanos');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), '¿Qué lugar ocupa entre los hermanos?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Se encuentra en estado de embarazo?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿En qué mes de embarazo se encuentra?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Sus padres comparten vivienda con sus abuelos?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR FAMILIAR'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Tiene hijos?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR FAMILIAR'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), '¿Es madre/padre cabeza de familia?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR FAMILIAR'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Número de hijos');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR FAMILIAR'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Edad de los hijos');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR FAMILIAR'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), 'Escolaridad de la madre');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR FAMILIAR'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='DESPLEGABLE'), 'Escolaridad del padre');
# Inserción de las posibles respuestas para las preguntas desplegables
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Pertenece a SISBEN?'),'SI');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Pertenece a SISBEN?'),'NO');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Está afiliado a EPS?'),'SI');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Está afiliado a EPS?'),'NO');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Presenta algún  problema de salud o enfermedad crónica?'),'SI');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Presenta algún  problema de salud o enfermedad crónica?'),'NO');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Pertenece usted a alguna de las siguientes poblaciones especiales?'),'Población étnica');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Pertenece usted a alguna de las siguientes poblaciones especiales?'),'Población afectada por la violencia');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Pertenece usted a alguna de las siguientes poblaciones especiales?'),'Población jóven y adulta iletrada');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Pertenece usted a alguna de las siguientes poblaciones especiales?'),'Población con necesidades educativas especiales');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Pertenece usted a alguna de las siguientes poblaciones especiales?'),'Población rural dispersa');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Pertenece usted a alguna de las siguientes poblaciones especiales?'),'Ninguna de las anteriores');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Manifiesta algún tipo de dificultad que pueda afectar su vida académica?'),'SI');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Manifiesta algún tipo de dificultad que pueda afectar su vida académica?'),'NO');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Si consume bebidas alcohólica, por favor indique la frecuencia'),'NO APLICA');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Si consume bebidas alcohólica, por favor indique la frecuencia'),'Diariamente');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Si consume bebidas alcohólica, por favor indique la frecuencia'),'Cada tercer día');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Si consume bebidas alcohólica, por favor indique la frecuencia'),'Una vez a la semana');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Si consume bebidas alcohólica, por favor indique la frecuencia'),'Una vez al mes');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Si fuma, por favor indique la frecuencia'),'NO APLICA');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Si fuma, por favor indique la frecuencia'),'Un cigarrillo de vez en cuando');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Si fuma, por favor indique la frecuencia'),'Menos de medio paquete al día');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Si fuma, por favor indique la frecuencia'),'Medio paquete al día');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Si fuma, por favor indique la frecuencia'),'Más de medio paquete al día');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Si fuma, por favor indique la frecuencia'),'Un paquete al día');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Si fuma, por favor indique la frecuencia'),'Más de un paquete al día');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Su vivienda es'),'En arriendo');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Su vivienda es'),'Familiar');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Su vivienda es'),'Propia');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Vive en sector rural o urbano?'),'Rural');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Vive en sector rural o urbano?'),'Urbano');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Estrato Socioeconómico'),'1');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Estrato Socioeconómico'),'2');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Estrato Socioeconómico'),'3');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Estrato Socioeconómico'),'4');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Estrato Socioeconómico'),'5');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Lugar de vivienda'),'Casa');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Lugar de vivienda'),'Apartamento');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Lugar de vivienda'),'Otro');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Medios de pago de la matrícula'),'Efectivo');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Medios de pago de la matrícula'),'Crédito');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Quién paga la matrícula?'),'Estudiante');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Quién paga la matrícula?'),'Padres');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Quién paga la matrícula?'),'Beca');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Actualmente se encuentra laborando?'),'SI');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Actualmente se encuentra laborando?'),'NO');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Sector al que pertenece su trabajo'),'Financiero');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Sector al que pertenece su trabajo'),'Ciencias de la salud');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Sector al que pertenece su trabajo'),'Petróleo y gas');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Sector al que pertenece su trabajo'),'Tecnologías de la Información y Telecomunicaciones');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Sector al que pertenece su trabajo'),'Ventas y mercadeo');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Sector al que pertenece su trabajo'),'Ingeniería e industria');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Trabaja como idependiente o empleado?'),'NO APLICA');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Trabaja como idependiente o empleado?'),'Independiente');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Trabaja como idependiente o empleado?'),'Empleado');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Ingreso mensual suyo en salarios mínimos'),'1-2');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Ingreso mensual suyo en salarios mínimos'),'2-3');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Ingreso mensual suyo en salarios mínimos'),'3-4');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Ingreso mensual suyo en salarios mínimos'),'Más de 4 salarios mínimos');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Usted vive actualmente con?'),'Padres');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Usted vive actualmente con?'),'Solo');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Usted vive actualmente con?'),'Pareja');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Estado civil'),'Soltero(a)');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Estado civil'),'Casado(a)');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Estado civil'),'Union Libre');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Estado civil'),'Diivorciado(a)');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Estado civil'),'Viudo(a)');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Se encuentra en estado de embarazo?'),'NO APLICA');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Se encuentra en estado de embarazo?'),'SI');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Se encuentra en estado de embarazo?'),'NO');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿En qué mes de embarazo se encuentra?'),'NO APLICA');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿En qué mes de embarazo se encuentra?'),'1');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿En qué mes de embarazo se encuentra?'),'2');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿En qué mes de embarazo se encuentra?'),'3');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿En qué mes de embarazo se encuentra?'),'4');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿En qué mes de embarazo se encuentra?'),'5');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿En qué mes de embarazo se encuentra?'),'6');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿En qué mes de embarazo se encuentra?'),'7');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿En qué mes de embarazo se encuentra?'),'8');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿En qué mes de embarazo se encuentra?'),'9');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Sus padres comparten vivienda con sus abuelos?'),'SI');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Sus padres comparten vivienda con sus abuelos?'),'NO');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Tiene hijos?'),'SI');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Tiene hijos?'),'NO');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Es madre/padre cabeza de familia?'),'SI');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='¿Es madre/padre cabeza de familia?'),'NO');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad del padre'),'No sabe');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad del padre'),'Primaria');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad del padre'),'Bachiller');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad del padre'),'Carrera técnica');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad del padre'),'Carrera Tecnológica');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad del padre'),'Carrera Profesional');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad del padre'),'Educación continua');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad de la madre'),'No sabe');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad de la madre'),'Primaria');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad de la madre'),'Bachiller');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad de la madre'),'Carrera técnica');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad de la madre'),'Carrera Tecnológica');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad de la madre'),'Carrera Profesional');
INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='Escolaridad de la madre'),'Educación continua');
# Configuración de la Base de datos Realizada
