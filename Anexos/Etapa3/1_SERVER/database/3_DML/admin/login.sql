SELECT rol_id FROM tb_usuarios WHERE usuario ='bnovoa.linux@gmail.com' AND password = '1234567' AND sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa') AND rectoria_id IN(SELECT rectoria_id FROM tb_rectorias WHERE rectoria = 'Villavicencio');


SELECT rol_id FROM tb_usuarios WHERE usuario ='bnovoa.linux@gmail.com' AND password = '1234567' AND sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa' AND rectoria_id IN(SELECT rectoria_id FROM tb_rectorias WHERE rectoria = 'Villavicencio'));