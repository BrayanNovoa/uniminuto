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
    String usurioId = request.getParameter("id_User");
    if(sesion==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }else{
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
        int g=0;%>
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
            <%//System.out.print("Construyendo TABS");
            for(int i=1; i<=numEncuestas;i++){
                if(i==1){%>
                    <%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                    <%out.print("<!--Pestaña "+nombreEncuesta+"-->");
                    out.print("<input id=\"tab"+i+"\" type=\"radio\" name=\"tab-group\" checked=\"checked\"/>");
                    out.print("<label for=\"tab"+i+"\">"+i+"</label>");
                }
                if(i>1){%>
                    <%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                    <!--Construcción de las Pestañas-->
                    <%out.print("<!--Pestaña "+nombreEncuesta+"-->");
                    out.print("<input id=\"tab"+i+"\" type=\"radio\" name=\"tab-group\"/>");
                    out.print("<label for=\"tab"+i+"\">"+i+"</label>");
                }
            }%>
            <!--Contenido a mostrar/ocultar-->
            <div id="encuesta">
                <!--Creación dinámica de formularios-->
                <%
            for(int i=1;i<=numEncuestas;i++){
                jsFunction="$(function(){\n\t\t\t$(\"#guardarEncuesta"+i+"\").click(function(){\n";%>
                <%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                <%
                //System.out.print("Construyendo las encuestas");
                //System.out.print("Construyendo la encuesta "+i+": "+nombreEncuesta);
                out.print("\t<div id=\"encuesta"+i+"\">");
                out.print("\t<form action=\"guardando/Respuestas\" class=\"login\" method=\"\">");
                en = en+1;%>
                <%@include file="WEB-INF/jspf/ContarPreguntas.jspf"%>
                <%out.print("\t<h1>"+nombreEncuesta+"</h1><hr>");%>
                <%@include file="WEB-INF/jspf/ObtenerPreguntas.jspf"%>
                <%System.out.print("Nombre pregunta "+i+" :"+nombrePregunta);%>
                <%//@include file="WEB-INF/jspf/jsDynamic.jspf"%>
                <%
                //out.print("\t<input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\"></form></div>");
                
                //out.print(jsFunction+jsCode+"\n</script>");
            }
                %>
            </div>
        </div>
        <script type="text/javascript">
            <%out.print(jsFunction+jsCode);%>
        </script>
        <script src="js/inhabilitar.js"></script>
    </body>
</html>
<%
    }//END OF MAIN ELSE.
    
%>
    