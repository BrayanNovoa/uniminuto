<?
$usuario = $_POST["n_usuario"];
$password = $_POST["pwd"];

$conexion = mysqli_connect("localhost","root","444");

mysqli_select_db("Developer",$conexion);

$sql = "SELECT id_usuario FROM usuario WHERE nombre_usuario = '$usuario' AND contrasenna = '$password'";
$comprobar = mysqli_query($sql);

if(mysqli_num_rows($comprobar) > 0) 
	{
	$id_usuario = mysqli_result($comprobar,0);
	setcookie("cookie_user_id","$id_usuario",time() + 3600);
	header("Location:inicio.php");
	}
else{
	echo "Usuario O Contrasena Incorrectos.";
	echo "No haz iniciado sesion." <br /> <a href="index.html">Iniciar Sesion</a>
}
	
?>