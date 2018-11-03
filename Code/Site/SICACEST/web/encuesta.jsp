<%-- 
    Document   : encuestaDinamica
    Created on : 22/11/2017, 03:30:46 PM
    Author     : b41n
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="controller.ConexionDB"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<% 
    HttpSession objsesion = request.getSession(false);
    String sesion= (String)objsesion.getAttribute("SesionUsuario");
    String usurioId = sesion;//request.getParameter("id_User");
    //out.print(usurioId);
    if(sesion==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }else{
        String nombreEncuesta=null;
        String nombrePregunta=null;
        String tipoPregunta = null;
        String nombreRespuesta;
        int numEncuestas=0;
        int numPreguntas=0;
        ConexionDB conexion = new ConexionDB();
        Connection con=conexion.getConexion();
        String consulta="";
        String posibleRespuesta="";
        Connection cn =null;
        Statement st =null;
        ResultSet rs = null;
        Statement stpr =null;
        ResultSet rspr = null;
        String pre=null;
        String preg=null;
        int en =0;
        int g=0;%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Encuesta de caracterizacion estudiantil UNIMINUTO.">
        <title>Encuesta de caracterización estudiantil UNIMINUTO.</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Sistema de Caracterización Estudiantil">
        <meta name="author" content="Brayan Novoa">
        
        <!-- Bootstrap core CSS
        -->
        <link href="themes/grayscale/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
        <!--<link href="themes/grayscale/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
        <!--<link href="css/bootstrap3-3-7.css" rel="stylesheet">-->

        <!-- Custom fonts for this template -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        
        <link href="themes/grayscale/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <!-- Personal Styles
         -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/pestanas.css">
        
        <!-- Custom styles for this template -->
        <link href="themes/grayscale/css/grayscale.css" rel="stylesheet">
        <link href="themes/grayscale/css/grayscale.min.css" rel="stylesheet">
    <%@include file="WEB-INF/jspf/ContarEncuestas.jspf"%>
    <style>
        <%@include file="WEB-INF/jspf/style.jspf"%>
    </style>
    </head>
    <body>
        
        <div class="container">
            
        <div class="panel panel-default">
            <div class="panel-body">
                <section id="contact" class="panel-body">
                    <div id="container">
                        <!--Creación dinámica de tabs-->
                        <%//System.out.print("Construyendo TABS");
                        for(int i=1; i<=numEncuestas;i++){
                            if(i==1){%>
                                <%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                                <%out.print("<!--Pestaña "+nombreEncuesta+"-->\n");
                                out.print("<input class=\"label-btn\" id=\"tab"+i+"\" type=\"radio\" name=\"tab-group\" checked=\"checked\"/>\n");
                                out.print("<label class=\"label-btn\" for=\"tab"+i+"\">"+i+"</label>\n");
                            }
                            if(i>1){%>
                                <%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                                <!--Construcción de las Pestañas-->
                                <%out.print("<!--Pestaña "+nombreEncuesta+"-->\n");
                                out.print("<input class=\"label-btn\" id=\"tab"+i+"\" type=\"radio\" name=\"tab-group\"/>\n");
                                out.print("<label class=\"label-btn\" for=\"tab"+i+"\">"+i+"</label>\n");
                            }
                        }%>
                        <!--Contenido a mostrar/ocultar-->
                        <div id="encuesta" class="form-group container">
                            <!--Creación dinámica de formularios-->
                            <%
                        for(int i=1;i<=numEncuestas;i++){%>
                            <%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                            <%
                            out.print("\t<div id=\"encuesta"+i+"\">");
                            out.print("\t<form class=\"main-center\" action=\"guardando/Respuestas\" method=\"\">");
                            en = en+1;%>
                            
                            <%@include file="WEB-INF/jspf/ContarPreguntas.jspf"%>
                            <h2 class="text-center text-white"><%out.print(nombreEncuesta);%></h2>
                            <%@include file="WEB-INF/jspf/ObtenerPreguntas.jspf"%>
                            <%}%>
                        </div><!--CIERRE DEL CONTENEDOR DE LAS ENCUESTAS-->
                    </div><!--CIERRE DEL CONTENEDOR PRINCIPAL-->
                </section>
            </div>
        </div>
        </div>
        <!-- Bootstrap core JavaScript -->
        <script src="themes/grayscale/vendor/jquery/jquery.min.js"></script>
        <script src="themes/grayscale/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Plugin JavaScript -->
        <script src="themes/grayscale/vendor/jquery-easing/jquery.easing.min.js"></script>
        <!-- Custom scripts for this template -->
        <script src="themes/grayscale/js/grayscale.min.js"></script>
  </body>
</html>
<%}//END OF MAIN ELSE.%>
    