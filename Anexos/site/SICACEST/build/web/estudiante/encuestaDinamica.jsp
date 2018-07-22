<%-- 
    Document   : encuestaDinamica
    Created on : 22/11/2017, 03:30:46 PM
    Author     : b41n
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Controlador.ConexionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    HttpSession objsesion = request.getSession(false);
    String sesion= (String)objsesion.getAttribute("SesionUsuario");
    String id_buscarrio = request.getParameter("id_User");    
    String nombreEncuesta=null;
    String nombrePregunta=null;
    String tipoPregunta = null;
    //String encuesta;
    int numEncuestas=0;
    int numPreguntas=0;
    String apellido1="";
    String apellido2="";
    ConexionDB conexion = new ConexionDB();
    String consulta="";
    Connection cn =null;
    Statement st =null;
    ResultSet rs = null;
    
    if(sesion==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Encuesta de caracterizacion estudiantil UNIMINUTO.">
        <title>Encuesta de caracterización estudiantil UNIMINUTO.</title>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/pestanas.css">
    </head>
    <%@include file="../WEB-INF/jspf/ContarEncuestas.jspf"%>
    <style>
        <%@include file="../WEB-INF/jspf/style.jspf"%>
    </style>
    <body>
        <div id="container">
            <!--Creación dinámica de tabs-->
            <%
            System.out.println("Construyendo TABS");
            for(int i=1; i<=numEncuestas;i++){
                if(i==1){
                    %>
                    <%@include file="../WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                    <%
                    out.println("<!--Pestaña "+nombreEncuesta+"-->");
                    out.println("<input id=\"tab-"+i+"\" type=\"radio\" name=\"tab-group\" checked=\"checked\"/>");
                    out.println("<label for=\"tab-"+i+"\">"+nombreEncuesta+"</label>");
                }
                if(i>1){
                    %>
                    <%@include file="../WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                    <%
                    out.println("<!--Pestaña "+nombreEncuesta+"-->");
                    out.println("<input id=\"tab-"+i+"\" type=\"radio\" name=\"tab-group\"/>");
                    out.println("<label for=\"tab-"+i+"\">"+nombreEncuesta+"</label>");
                }
            }
            %>
            <!--Contenido a mostrar/ocultar-->
            <div id="content">
                <!--Creación dinámica de formularios-->
                <%System.out.println("Construyendo las encuestas");%>
                <%
            for(int i=1;i<=numEncuestas;i++){
                %>
                <%@include file="../WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                <%
                System.out.println("Construyendo las encuesta "+i+" "+nombreEncuesta);
                System.out.println("Nombre pregunta: "+nombrePregunta);
                out.println("\t<div id=\"content-"+i+"\">");
                out.println("\t<form action=\"../insRespuestas\" class=\"login\" method=\"\">");
                %>
                <%@include file="../WEB-INF/jspf/ContarPreguntas.jspf"%>
                <%
                out.println("\t<h1>"+nombreEncuesta+" Preguntas: "+numPreguntas+"<h1/><hr>");
                %>
                <%@include file="../WEB-INF/jspf/ObtenerPreguntas.jspf"%>
                
                <%
                for(int j=1;j<=numPreguntas ;j++){
                    System.out.println(nombrePregunta);
                    System.out.println(tipoPregunta);
                }
                out.println("\t<input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\">");
                out.println("\t</form>");
                out.println("\t</div>\n");
                out.println("");
            }
                %>
            </div>
        </div>
        <script src="../js/inhabilitar.js"></script>
    </body>
</html>