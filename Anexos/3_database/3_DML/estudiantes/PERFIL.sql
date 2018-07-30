-----------------------------------------------------
---Consulta completa por tabla-----------------------
-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_estudiantes------------------------------
-----------------------------------------------------
SELECT nombres, apellido1, apellido2, documento, sexo, edad, id_departamento, id_ciudad, id_rh FROM tb_informacion_personal WHERE id_estudiante = 000324471;



-----------------------------------------------------
---Consulta completa por tabla-----------------------
-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_estudiantes------------------------------
-----------------------------------------------------
--Consulta la información de un estudiante por su id_estudiante
SELECT
 sector,
 lugar,
 dep.nombre AS departamento,
 ciu.nombre AS ciudad,
 direccion,
 barrio,
 estrato,
 tipo_vivienda
 FROM tb_localizacion, tb_departamentos AS dep, tb_ciudades AS ciu
 WHERE
 id_estudiante = 000324471
 AND
 dep.nombre IN
 (SELECT 
 	nombre
 	FROM tb_departamentos
 	WHERE
 	tb_ciudades_id_departamento = dep.id_departamento)
 AND
 ciu.nombre IN
 (SELECT
 	nombre
 	FROM tb_ciudades
 	WHERE
 	tb_ciudades_id_ciudad = ciu.id_ciudad)
 ;
------------------------
-- CONSULTA EN UNA LÍNEA
SELECT loc.sector, loc.lugar, dep.nombre AS departamento, ciu.nombre AS ciudad, loc.direccion, loc.barrio, loc.estrato, loc.tipo_vivienda FROM tb_localizacion AS loc, tb_departamentos AS dep, tb_ciudades AS ciu WHERE loc.id_estudiante = 000324471 AND dep.nombre IN (SELECT nombre FROM tb_departamentos WHERE loc.tb_ciudades_id_departamento = dep.id_departamento) AND ciu.nombre IN (SELECT nombre FROM tb_ciudades WHERE loc.tb_ciudades_id_ciudad = ciu.id_ciudad);