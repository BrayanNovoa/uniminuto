<?
if(isset($_COOKIE["cookie_user_id"])){
	echo "Usuario Con Sesion Iniciada";
}
	
else{
	echo "No haz iniciado sesion. <br /> <a href=index.html>Iniciar Sesión</a>";
}
?>