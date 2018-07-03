-----------------------------------------------------
---Consulta completa por tabla-----------------------
-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_estudiantes------------------------------
-----------------------------------------------------
--Consulta la información de un estudiante por su id_estudiante
SELECT * FROM tb_estudiantes WHERE id_estudiante = ?;
SELECT * FROM tb_estudiantes WHERE id_estudiante = 000324471;
-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_departamentos----------------------------
-----------------------------------------------------
-- OBTIENE LA LISTA DE DEPARTAMENTOS
SELECT * FROM tb_departamentos;
-- CONSULTA EL NOMBRE DE UN DEPARTAMENTO ESPECÍFICO POR SU ID
SELECT id_departamento, nombre FROM tb_departamentos WHERE id_departamento = '50';

-- CONSULTA QUE OBTIENE LA LISTA DE DEPARTAMENTOS CON SU RESPECTIVO ID ORDENADOS DE FORMA ASCENDENTE
SELECT id_departamento, nombre FROM tb_departamentos ORDER BY nombre ASC;

-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_ciudades------------------------------
-----------------------------------------------------
SELECT * FROM tb_ciudades;
SELECT id_departamento, id_ciudad, nombre FROM tb_ciudades;
SELECT id_departamento, id_ciudad, nombre FROM tb_ciudades WHERE nombre LIKE '%VILLAVIC%'
SELECT id_departamento, id_ciudad, nombre FROM tb_ciudades WHERE id_ciudad = 685;
SELECT id_departamento, id_ciudad, nombre FROM tb_ciudades WHERE id_departamento = 50 ORDER BY nombre ASC;
SELECT id_departamento, id_ciudad, nombre FROM tb_ciudades WHERE id_departamento = 50 ORDER BY nombre DESC;

SELECT id_departamento, id_ciudad, nombre FROM tb_ciudades ORDER BY nombre ASC;
-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_informacion_personal---------------------
-----------------------------------------------------
SELECT * FROM tb_informacion_personal;
-- CONSULTA LA INFORMACIÓN PERSONAL DE UN ESTUDIANTE ESPECÍFICO POR SU ID
SELECT * FROM tb_informacion_personal WHERE id_estudiante = 000324471;

INSERT INTO tb_informacion_personal(id_estudiante,nombres,apellido1,apellido2,documento,sexo,edad,id_departamento,id_ciudad,id_rh) VALUES (?,?,?,?,?,?,?,?,?,?)
-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_contactos------------------------------
-----------------------------------------------------
-- CONSULTA COMPLETA A LA TABLA
SELECT * FROM tb_contactos;
-- CONSULTA LA INFORMACIÓN DE CONTACTO DE UN ESTUDIANTE ESPECÍFICO POR SU ID
SELECT tel_fijo, tel_celular, correo FROM tb_contactos WHERE id_estudiante = 000324471;
INSERT INTO tb_contactos(id_estudiante, tel_fijo, tel_celular, correo) VALUES (?,?,?,?);
-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_localizacion-----------------------------
-----------------------------------------------------
SELECT * FROM tb_localizacion;
SELECT sector, lugar, tb_ciudades_id_departamento, tb_ciudades_id_ciudad, direccion, barrio, estrato, tipo_vivienda FROM tb_localizacion WHERE id_estudiante = 000324471;
SELECT sector, lugar, tb_ciudades_id_departamento, ciudad = (SELECT NOMBRE FROM tb_ciudades WHERE id_estudiante = 000324471), direccion, barrio, estrato, tipo_vivienda FROM tb_localizacion WHERE id_estudiante = 000324471;
SELECT * FROM tb_localizacion WHERE id_estudiante = 000324471;
-- CONSULTA QUE OBTIENE LA INFORMACIÓN DE LA LOCALIZACIÓN DEL ESTUDIANTE
-- 
SELECT loc.sector, loc.lugar, dep.nombre AS departamento, ciu.nombre AS ciudad, loc.direccion, loc.barrio, loc.estrato, loc.tipo_vivienda FROM tb_localizacion AS loc, tb_departamentos as dep, tb_ciudades AS ciu WHERE loc.id_estudiante = 000324471 AND dep.nombre IN (SELECT nombre FROM tb_departamentos WHERE loc.tb_ciudades_id_departamento = dep.id_departamento) AND ciu.nombre IN (SELECT nombre FROM tb_ciudades WHERE loc.tb_ciudades_id_ciudad = ciu.id_ciudad);
-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_info_salud------------------------------
-----------------------------------------------------
SELECT * FROM tb_info_salud WHERE id_estudiante = 000324471;
SELECT SISBEN, EPS, enfermedad, especiales, dificultad, alcohol, cigarrillo FROM tb_info_salud WHERE id_estudiante = 000324471;
INSERT INTO tb_info_salud (id_estudiante, SISBEN, EPS, enfermedad, especiales, dificultad, alcohol, cigarrillo) VALUES(000324471,'NO','SI','Ninguna','Ninguna','Ninguna','1 vez al mes','10 unidades al día');
INSERT INTO tb_info_salud (id_estudiante, SISBEN, EPS, enfermedad, especiales, dificultad, alcohol, cigarrillo) VALUES(12345,'NO','SI','Ninguna','Ninguna','Ninguna','1 vez al mes','10 unidades al día');
-- consulta para el método prepareStatement
INSERT INTO tb_info_salud (id_estudiante, SISBEN, EPS, enfermedad, especiales, dificultad, alcohol, cigarrillo) VALUES(?,?,?,?,?,?,?,?);
-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_info_financiera--------------------------
-----------------------------------------------------
SELECT * FROM tb_info_financiera WHERE id_estudiante = 000324471;
SELECT medio_pago, quien_paga, situacion_laboral, sector_laboral, tipo_trabajo, ingreso_personal, ingreso_familiar FROM tb_info_financiera WHERE id_estudiante = 000324471;
INSERT INTO tb_info_financiera (id_estudiante, medio_pago, quien_paga, situacion_laboral, sector_laboral, tipo_trabajo, ingreso_personal, ingreso_familiar) VALUES(000324471,'Contado','Familia','Trabaja','Desarrollo de software','Independiente','1200000','3000000');
-- consulta para el método prepareStatement
"INSERT INTO tb_info_financiera (id_estudiante, medio_pago, quien_paga, situacion_laboral, sector_laboral, tipo_trabajo, ingreso_personal, ingreso_familiar) VALUES(?,?,?,?,?,?,?,?);"
-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_info_familiar----------------------------
-----------------------------------------------------
SELECT * FROM tb_info_familiar
SELECT vive_con, estado_civil, num_hermanos,lugar_hermanos, padres_viven_con_abuelos, embarazo, mes_embarazo, cabeza_familia, hijos, num_hijos, edad_hijos, escolaridad_padre, escolaridad_madre FROM tb_info_familiar;
SELECT vive_con, estado_civil, num_hermanos,lugar_hermanos, padres_viven_con_abuelos, embarazo, mes_embarazo, cabeza_familia, hijos, num_hijos, edad_hijos, escolaridad_padre, escolaridad_madre FROM tb_info_familiar WHERE id_estudiante = 000324471;
INSERT INTO tb_info_familiar (id_estudiante, vive_con, estado_civil, num_hermanos, lugar_hermanos, padres_viven_con_abuelos, embarazo, mes_embarazo, cabeza_familia, hijos, num_hijos,edad_hijos, escolaridad_padre, escolaridad_madre) VALUES (000324471,'Padres','Soltero','1','2','NO','NULL','NULL','NO','NO','0','NULL','Bachiller','Tecnología');
-- consulta para el método prepareStatement
INSERT INTO tb_info_familiar (id_estudiante, vive_con, estado_civil, num_hermanos, lugar_hermanos, padres_viven_con_abuelos, embarazo, mes_embarazo, cabeza_familia, hijos, num_hijos,edad_hijos, escolaridad_padre, escolaridad_madre) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?);
-- ALTERACIÓN A LA TABLA, SE AGREGA UN NUEVO CAMPO
ALTER TABLE  `tb_info_familiar` ADD  `cabeza_familia` VARCHAR( 2 ) NOT NULL AFTER  `mes_embarazo` ;
ALTER TABLE  tb_info_familiar ADD  edad_hijos VARCHAR( 45 ) NOT NULL AFTER  num_hijos;
-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_rh---------------------------------------
-----------------------------------------------------
SELECT * FROM tb_rh
-----------------------------------------------------
---------TABLA---------------------------------------
---------tb_user_admin---------------------------------------
-----------------------------------------------------
SELECT * FROM tb_user_admin
INSERT INTO tb_user_admin (id_admin, admin_pass) VALUES (000324471,'novoa');






SELECT sector, lugar, tb_ciudades_id_departamento, tb_ciudades_id_ciudad = (SELECT NOMBRE FROM tb_ciudades WHERE id_ciudad = 685), direccion, barrio, estrato, tipo_vivienda FROM tb_localizacion WHERE id_estudiante = 000324471;

SELECT loc.sector, loc.lugar, loc.tb_ciudades_id_departamento, loc.tb_ciudades_id_ciudad, loc.direccion, loc.barrio, loc.estrato, loc.tipo_vivienda FROM tb_localizacion AS loc WHERE loc.id_estudiante = 000324471 AND loc.tb_ciudades_id_departamento IN(SELECT nombre FROM dep.tb_departamentos FROM tb_departamentos AS dep WHERE dep.id_departamento = loc.tb_ciudades_id_departamento);
