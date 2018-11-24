<%-- 
    Document   : perfil
    Created on : 29/03/2017, 10:34:11 AM
    Author     : b41n
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="controller.ConexionDB"%>
<%@page import="java.sql.SQLException"%>
<% 
    HttpSession objsesion = request.getSession(false);
    String sesion= (String)objsesion.getAttribute("SesionUsuario");
    String usurioId = sesion;//request.getParameter("id_User");
    if(sesion==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }else{
        String nombreEstudiante="";
        ConexionDB conexion = new ConexionDB();
        Connection con=conexion.getConexion();
        String consulta="";
        Connection cn =null;
        Statement st =null;
        ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@include file="WEB-INF/jspf/traerEstudiante.jspf"%>
    <title>Usuario: <%out.println(nombreEstudiante);%></title>
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
    <link href="css/home.css" rel="stylesheet">
    <!-- 
    <link rel="stylesheet" href="css/style.css">
    -->
    <!-- -->
    </head>
    <body id="page-top">
        <%@include file="WEB-INF/jspf/homenav.jspf"%>
        <header class="masthead">
            <div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
                        <h1 class="mx-auto my-0 text-uppercase">Bienvenido</h1>
                        <h2 class="text-white-50 mx-auto mt-2 mb-5"><%out.print(""+nombreEstudiante);%></h2>
                        <button type="button" class="btn btn-primary" onclick="window.location.href='perfil.jsp'">
                        Perfil
                        </button>
                        <button type="button" class="btn btn-primary" onclick="window.location.href='logout'">
                        Cerrar Sesión
                        </button>
                </div>
            </div>
        </header>
        <table>
        </table>
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