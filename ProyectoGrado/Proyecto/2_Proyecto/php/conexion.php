<?php
// datos para la conexion a mysql
define('DB_SERVER','localhost');
define('DB_NAME','sicacest');
define('DB_USER','programador');
define('DB_PASS','Programador');
$con = mysql_connect(DB_SERVER,DB_USER,DB_PASS);
mysql_select_db(DB_NAME,$con);
?>