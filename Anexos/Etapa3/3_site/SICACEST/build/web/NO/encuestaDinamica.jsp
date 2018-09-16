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
    String usurio = request.getParameter("id_User");
    if(sesion==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }
    String nombreEncuesta=null;
    String nombrePregunta=null;
    String tipoPregunta = null;
    //String encuesta;
    int numEncuestas=0;
    int numPreguntas=0;
    ConexionDB conexion = new ConexionDB();
    Connection con=conexion.getConexion();
    String consulta="";
    Connection cn =null;
    Statement st =null;
    ResultSet rs = null;
    String jsPregunta=null;
    String jsFunction=null;
    String jsGuardarPreguntas=null;
    String jsCode=null;
    String pre=null;
    String preg=null;
    int en =0;
    int g=0;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Encuesta de caracterizacion estudiantil UNIMINUTO.">
        <title>Encuesta de caracterización estudiantil UNIMINUTO.</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/pestanas.css">
    <%@include file="WEB-INF/jspf/ContarEncuestas.jspf"%>
    <style>
        <%@include file="WEB-INF/jspf/style.jspf"%>
    </style>
    </head>
    <body>
        <div id="container">
            <!--Creación dinámica de tabs-->
            <%
            System.out.println("Construyendo TABS");
            for(int i=1; i<=numEncuestas;i++){
                if(i==1){
                    %>
                    <%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                    <%
                    out.println("<!--Pestaña "+nombreEncuesta+"-->");
                    out.println("<input id=\"tab-"+i+"\" type=\"radio\" name=\"tab-group\" checked=\"checked\"/>");
                    out.println("<label for=\"tab-"+i+"\">"+nombreEncuesta+"</label>");
                }
                if(i>1){
                    %>
                    <%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                    <%
                    out.println("<!--Pestaña "+nombreEncuesta+"-->");
                    out.println("<input id=\"tab-"+i+"\" type=\"radio\" name=\"tab-group\"/>");
                    out.println("<label for=\"tab-"+i+"\">"+nombreEncuesta+"</label>");
                }
            }
            %>
            <!--Contenido a mostrar/ocultar-->
            <div id="encuesta">
                <!--Creación dinámica de formularios-->
                <%
            for(int i=1;i<=numEncuestas;i++){
                jsFunction="$(function(){\n\t\t\t$(\"#guardarEncuesta"+i+"\").click(function(){\n";
                %>
                <%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                <%
                //System.out.println("Construyendo las encuestas");
                //System.out.println("Construyendo la encuesta "+i+": "+nombreEncuesta);
                out.println("\t<div id=\"encuesta-"+i+"\">");
                out.println("\t<form action=\"insRespuestas\" class=\"login\" method=\"\">");
                en = en+1;
                %>
                <%@include file="WEB-INF/jspf/ContarPreguntas.jspf"%>
                <%out.println("\t<h1>"+nombreEncuesta+"</h1><hr>");%>
                <%@include file="WEB-INF/jspf/ObtenerPreguntas.jspf"%>
                <%System.out.println("Nombre pregunta "+i+" :"+nombrePregunta);%>
                <%//@include file="WEB-INF/jspf/jsDynamic.jspf"%>
                <%
                    //for(int j=1;j<=numPreguntas ;j++){
                    //System.out.println("Nombre pregunta: "+nombrePregunta);
                    //System.out.println(nombrePregunta);
                    //System.out.println(tipoPregunta);
                //}
                //out.print(jsCode+"\n</script>");
                out.println("\t<input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\">");
                out.println("\t</form>");
                out.println("\t</div>\n");
            }
                %>
            </div>
        </div>
        <script src="js/inhabilitar.js"></script>
    </body>
</html>