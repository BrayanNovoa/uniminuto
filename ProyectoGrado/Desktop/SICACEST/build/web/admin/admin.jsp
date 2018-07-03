<%-- 
    Document   : admin
    Created on : 29/03/2017, 11:49:38 AM
    Author     : b41n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.ConsultasAdmin"%>
<% 
    HttpSession objsesion = request.getSession(false);
    String sesion= (String)objsesion.getAttribute("SesionUsuario");
    String usuario="Administrador";
    if(sesion==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Administrador Del Sistema</title>
        <script src="../js/main.js"></script>
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <table class="perfil-tabla">
            <tr>
                <th colspan="4" class="perfil-tabla">
                    <h1>Bienvenido <%out.println(usuario);%></h1>
                </th>
            </tr>
            <tr>
                <td>
                    <button class="perfil-submit" onclick="window.location.href='encuestas/crearEncuesta.jsp'">
                        Encuestas
                    </button>
                </td>
                <td>
                    <button class="perfil-submit" onclick="window.location.href='reportes/index.jsp'">
                        Reportes
                    </button>
                </td>
                <td>
                    <button class="perfil-submit" onclick="window.location.href='perfil.jsp'">
                        Consultas
                    </button>
                </td>
                <td>
                    <button class="perfil-submit" onclick="window.location.href='perfil.jsp'">
                        Alertas
                    </button>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <form action="" class="login" method="post">
                        <h1>Buscar por id</h1>
                        <input type="text" name="id_User" class="login-input" placeholder="Id" autocomplete="off" id="txtid" maxlength="9">
                    </form>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <div>
                        <button class="perfil-submit" onclick="window.location.href='../logout'">
                            Cerrar Sesión
                        </button>
                    </div>
                </td>
            </tr>
        </table>
        <!-- -->
                
    </body>
</html>