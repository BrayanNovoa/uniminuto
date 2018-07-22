<%-- 
    Document   : adminlogin
    Created on : 29/03/2017, 11:50:20 AM
    Author     : b41n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.ConsultasAdmin"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio De Sesión Del Administrador</title>
        <script src="../js/main.js"></script>
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <div id="headerImage">
            <img src="../img/banner.png" alt="Sistema de Información Génesis UNIMINUTO" class="headerImg" title="Sistema de Información Génesis UNIMINUTO" width="100%" vspace="0" border="0" hspace="0" height="170" align="middle">
        </div>
        <form action="../adminlogin" class="login" method="post" id="formlogin">
            <h1>Sistema de Caracterización Académica y Estudiantil</h1>
            <h1>SICACEST</h1>
            <table class="login">
                <tr>
                    <th>
                        <input type="text" name="id_User" class="login-input" placeholder="Id" autocomplete="off" id="txtid" maxlength="9" />
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
            </table>
            
            <p class="login-help">
                <br><a href="resetpass.jsp">Olvidó su contraseña?</a>
            </p>
        </form>
    </body>
</html>
