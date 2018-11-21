DROP DATABASE db_caracterizacion;
# Creación de la Base de Datos.
CREATE DATABASE db_caracterizacion;
USE db_caracterizacion;
# Creación de la Tabla: tb_departamentos
CREATE TABLE tb_departamentos (departamento_id INT(3) NOT NULL AUTO_INCREMENT, departamento_cod VARCHAR(3) NOT NULL, departamento VARCHAR(45) NOT NULL, PRIMARY KEY (departamento_id), KEY departamento_cod(departamento_cod) );
# Creación de la Tabla: tb_ciudades
CREATE TABLE tb_ciudades (	ciudad_id INT NOT NULL,	departamento_cod VARCHAR(3) NOT NULL,	ciudad VARCHAR(45) NOT NULL,	ciudad_cod VARCHAR(3) NOT NULL,	PRIMARY KEY (ciudad_id),	INDEX departamento_ind (departamento_cod),    FOREIGN KEY (departamento_cod) REFERENCES tb_departamentos(departamento_cod) ON DELETE CASCADE);
# Creación de la Tabla: tb_periodos
CREATE TABLE tb_periodos(periodo_id INT NOT NULL AUTO_INCREMENT, periodo VARCHAR(20) NOT NULL, PRIMARY KEY(periodo_id));
# Creación de la Tabla: tb_rectorias
CREATE TABLE tb_rectorias(rectoria_id INT(3) NOT NULL AUTO_INCREMENT, rectoria VARCHAR(50) NOT NULL, PRIMARY KEY(rectoria_id));
# Creación de la Tabla: tb_sedes
CREATE TABLE tb_sedes(sede_id INT(3) NOT NULL AUTO_INCREMENT, rectoria_id INT(3) NOT NULL, INDEX rectoria_ind (rectoria_id), FOREIGN KEY(rectoria_id) REFERENCES tb_rectorias(rectoria_id) ON DELETE CASCADE, sede VARCHAR(50) NOT NULL, PRIMARY KEY(sede_id));
# Creación de la Tabla: tb_facultades
CREATE TABLE tb_facultades(facultad_id INT(3) NOT NULL AUTO_INCREMENT, sede_id INT(3) NOT NULL, INDEX sede_ind (sede_id), FOREIGN KEY(sede_id) REFERENCES tb_sedes(sede_id) ON DELETE CASCADE, facultad VARCHAR(50) NOT NULL, PRIMARY KEY(facultad_id));
# Creación de la Tabla: tb_programas
CREATE TABLE tb_programas(programa_id INT(3) NOT NULL AUTO_INCREMENT, facultad_id INT(3) NOT NULL, INDEX facultad_ind (facultad_id), FOREIGN KEY(facultad_id) REFERENCES tb_facultades(facultad_id) ON DELETE CASCADE, programa VARCHAR(50) NOT NULL, PRIMARY KEY(programa_id));
# Creación de la Tabla: tb_usuarios
CREATE TABLE tb_usuarios(usuario_id INT(3) NOT NULL AUTO_INCREMENT, usuario VARCHAR(50) NOT NULL, password VARCHAR(50) NOT NULL, sede_id INT(3) NOT NULL, INDEX sede_ind2 (sede_id), FOREIGN KEY(sede_id) REFERENCES tb_sedes(sede_id) ON DELETE CASCADE, PRIMARY KEY (usuario_id));
# Creación de la Tabla: tb_estudiantes
CREATE TABLE tb_estudiantes(estudiante_id INT(11) NOT NULL AUTO_INCREMENT, estudiante_cod VARCHAR(12) NOT NULL ON DELETE CASCADE, INDEX estudiante_ind1 (estudiante_cod), correo_insti VARCHAR(50) NOT NULL, programa_id INT(3) NOT NULL, INDEX programa_ind(programa_id), FOREIGN KEY(programa_id) REFERENCES tb_programas(programa_id) ON DELETE CASCADE, periodo_id INT(3) NOT NULL, INDEX periodo_ind(periodo_id), FOREIGN KEY(periodo_id) REFERENCES tb_periodos(periodo_id) ON DELETE CASCADE, PRIMARY KEY(estudiante_id, correo_insti));
# Creación de la Tabla: tb_encuestas
CREATE TABLE tb_encuestas(encuesta_id int(11) NOT NULL AUTO_INCREMENT, encuesta VARCHAR(50) NOT NULL, descripcion VARCHAR(300) NOT NULL, PRIMARY KEY(encuesta_id));
# Creación de la Tabla: tb_tipo_preguntas
CREATE TABLE tb_tipo_preguntas(tipo_pregunta_id INT(11) NOT NULL AUTO_INCREMENT, tipo_pregunta VARCHAR(45)NOT NULL, tipo_preg_desc VARCHAR(200)NOT NULL, PRIMARY KEY(tipo_pregunta_id));
# Creación de la Tabla: tb_preguntas
CREATE TABLE tb_preguntas(pregunta_id INT(11) NOT NULL AUTO_INCREMENT, encuesta_id INT(11) NOT NULL, INDEX encuesta_ind1 (encuesta_id), FOREIGN KEY (encuesta_id) REFERENCES tb_encuestas(encuesta_id) ON DELETE CASCADE, tipo_pregunta_id INT(11) NOT NULL, INDEX tipo_pregunta_ind1 (tipo_pregunta_id), FOREIGN KEY (tipo_pregunta_id) REFERENCES tb_tipo_preguntas(tipo_pregunta_id) ON DELETE CASCADE, pregunta VARCHAR(200), PRIMARY KEY(pregunta_id));
# Creación de la Tabla: tb_respuestas
CREATE TABLE tb_respuestas(respuesta_id INT(11) NOT NULL AUTO_INCREMENT, encuesta_id INT(11) NOT NULL, INDEX encuesta_ind2 (encuesta_id), FOREIGN KEY (encuesta_id) REFERENCES tb_encuestas(encuesta_id) ON DELETE CASCADE, pregunta_id INT(11) NOT NULL, INDEX pregunta_ind1 (pregunta_id), FOREIGN KEY (pregunta_id) REFERENCES tb_preguntas(pregunta_id) ON DELETE CASCADE, estudiante_cod VARCHAR(12) NOT NULL, INDEX estudiante_ind1 (estudiante_cod), FOREIGN KEY (estudiante_cod) REFERENCES tb_estudiantes(estudiante_cod) ON DELETE CASCADE, respuesta VARCHAR(100), PRIMARY KEY(respuesta_id, estudiante_cod));
# Creación de la Tabla: tb_posibles_respuestas
CREATE TABLE tb_posibles_respuestas(posible_respuesta_id INT(11) NOT NULL AUTO_INCREMENT, pregunta_id INT(11) NOT NULL, INDEX pregunta_ind2 (pregunta_id), FOREIGN KEY (pregunta_id) REFERENCES tb_preguntas(pregunta_id) ON DELETE CASCADE, posible_respuesta VARCHAR(100) NOT NULL, PRIMARY KEY(posible_respuesta_id));
#  Instalación Finalizada.