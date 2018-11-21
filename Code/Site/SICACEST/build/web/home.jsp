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
    }else{
%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Usuario: <%out.println(usuario);%></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap core CSS -->
    <link href="themes/grayscale/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="themes/grayscale/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="themes/grayscale/css/grayscale.css" rel="stylesheet">
    
    <link href="themes/grayscale/css/grayscale.min.css" rel="stylesheet">
    <!-- 
    
    <link rel="stylesheet" href="css/style.css">
    -->
    <!-- -->
    </head>
    <body id="page-top">
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        <%@include file="WEB-INF/jspf/header.jspf"%>
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
        <%@include file="WEB-INF/jspf/contact.jspf"%>
        <%@include file="WEB-INF/jspf/footer.jspf"%>

        <!-- Bootstrap core JavaScript -->
        <script src="themes/grayscale/vendor/jquery/jquery.min.js"></script>
        <script src="themes/grayscale/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="themes/grayscale/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for this template -->
        <script src="themes/grayscale/js/grayscale.min.js"></script>
        <script src="js/index.js"></script>
    </body>
</html>
<%}%>