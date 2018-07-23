<%-- 
    Document   : index
    Created on : 27/03/2017, 03:57:45 PM
    Author     : b41n
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
        <script src="../js/main.js"></script>
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <div id="headerImage">
            <img src="../img/banner.png" alt="Sistema de Información Génesis UNIMINUTO" class="headerImg" title="Sistema de Información Génesis UNIMINUTO" width="100%" vspace="0" border="0" hspace="0" height="170" align="middle">
        </div>
        <form action="../ingreso" method="post" id="formlogin">
            <table class="login">
                <tr>
                    <th>
                        <h1>Iniciar Sesión</h1>
                        <input type="text" name="id_User" class="login-input" placeholder="Id" autocomplete="off" id="txtid" maxlength="9"/>
                    </th>
                </tr>
                <tr>
                    <th>
                        <input type="password" name="pass_User" class="login-input" placeholder="Contraseña" id="txtpass"/>
                    </th>
                </tr>
                <tr>
                    <th>
                        <input type="button" class="perfil-submit" value="Ingresar" id="btnlogin"/>
                    </th>
                </tr>
                <tr>
                    <th>
                        <p class="login-help"><a href="registro.jsp">Registrarme</a></p>
                        <p class="login-help"><a href="resetpass.jsp">Olvidó su contraseña?</a></p>
                    </th>
                </tr>
            </table>
            <!--<p class="login-help"><a href="loginadmin.jsp">Administrativos</a></p>-->
        </form>
        <script src="../js/inhabilitar.js"></script>
    </body>
</html>