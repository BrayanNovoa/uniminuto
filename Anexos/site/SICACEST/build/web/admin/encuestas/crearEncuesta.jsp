<%-- 
    Document   : agregarEncuestas
    Created on : 22/11/2017, 02:52:24 PM
    Author     : b41n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    HttpSession objSesion = request.getSession(false);
    String usuario= (String)objSesion.getAttribute("SesionUsuario");
    
//    if(usuario==null){
//        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
//    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Encuesta de caracterizacion estudiantil UNIMINUTO.">
        <title>Administrador Crear Encuesta.</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/pestanas.css">
    </head>
    <body>
        <div id="content-contacto">
            <!--Contenido del formulario de Contacto-->
                <form action="../../createEncuesta" class="login" method="post">
                    <h1>Crear nueva encuesta</h1><hr>
                    <input type="text" name="nombreEncuesta" class="login-input" placeholder="Nombre de la encuesta">
                    <input type="text" name="descripcionEncuesta" class="login-input" placeholder="Descripción de la encuesta">
                    <input type="submit" class="perfil-submit" value="Guardar">
                </form>
            </div>
    </body>
</html>
