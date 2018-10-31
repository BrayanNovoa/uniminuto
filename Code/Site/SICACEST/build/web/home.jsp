<%-- 
    Document   : perfil
    Created on : 29/03/2017, 10:34:11 AM
    Author     : b41n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    HttpSession objsesion = request.getSession(false);
    String usuario= (String)objsesion.getAttribute("SesionUsuario");
    
    if(usuario==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sesión De Usuario.</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    
    <body>
        <table class="perfil-tabla">
            <tr>
                <th colspan="2" class="perfil-tabla">
                    <h1>Bienvenido <%out.println(usuario);%></h1>
                </th>
            </tr>
            <tr>
                <td>
                    <div class="perfil-form">
                        <button class="perfil-submit" onclick="window.location.href='encuesta.jsp'">
                            Encuesta
                        </button>
                    </div>
                </td>
                <td>
                    <div class="perfil-form">
                        <button class="perfil-submit" onclick="window.location.href='perfil.jsp'">
                            Perfil
                        </button>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="perfil-form">
                        
                            <button class="perfil-submit" onclick="window.location.href='logout'">
                                Cerrar Sesión
                            </button>
                        
                    </div>
                </td>
            </tr>
        </table>
        <table>
            
        </table>
                
        <!-- -->
               
    </body>
</html>
