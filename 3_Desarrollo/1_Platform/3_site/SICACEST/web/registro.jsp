<%-- 
    Document   : registro
    Created on : 27/03/2017, 06:47:28 PM
    Author     : b41n
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrarme</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <form action="../registro" class="login" method="post" id="formlogin">
            <h1>Registrarme!</h1>
            <input type="password" name="id_User" class="login-input" placeholder="Id" maxlength="9" id="txtid">
            <input type="text" name="mail_User" class="login-input" placeholder="Correo Institucional" id="txtmail">
            <input type="password" name="pass_User" class="login-input" placeholder="Contraseña" id="txtpass">
            <input type="submit" class="perfil-submit" value="Registrarme" id="btnlogin">
            <p class="login-help"><a href="index.jsp">Ya estoy registrado!<br>Iniciar Sesión</a></p>
        </form>
        <script src="js/registro.js"></script>
    </body>
</html>
