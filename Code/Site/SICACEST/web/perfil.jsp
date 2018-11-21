<%-- 
    Document   : estudiante
    Created on : 4/11/2018, 01:55:55 PM
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
    if(sesion==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }else{
        String tabId="tabId";
        String nombreEncuesta=null;
        String nombrePregunta=null;
        String tipoPregunta = null;
        String nombreRespuesta;
        String nombreEstudiante="";
        int numEncuestas=0;
        int numPreguntas=0;
        ConexionDB conexion = new ConexionDB();
        Connection con;
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
        int p =0;
        int g=0;%>
    <head>
        <!--    -->
        <title>Perfil del estudiante<%out.print(" "+usurioId);%></title>
        <link href="css/bootstrap4-0-0.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="js/bootstrap4-0-0.min.js"></script>
        <script src="js/jquery3-2-1.min.js"></script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap3-3-7.min.css">
        <script src="js/bootstrap3-3-7.js"></script>
        <link rel="stylesheet" href="css/perfil.css">
        <script src="js/jquery3-3-1.min.js"></script>
        <script src="js/perfil.js"></script>
        <%@include file="WEB-INF/jspf/ContarEncuestas.jspf"%>
        <%@include file="WEB-INF/jspf/traerEstudiante.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/homenav.jspf"%>
        <hr>
        <div class="container bootstrap snippet">
            <div class="row">
                <div class="col-sm-10"><h1><%out.print(nombreEstudiante);%></h1></div>
                <div class="col-sm-2"><a href="https://www.uniminuto.edu" target="blank" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="img/md.png"></a></div>
            </div>
            <div class="row">
                
                <div class="col-sm-12">
                    <ul class="nav nav-tabs">
                    <%//System.out.print("Construyendo TABS");
                    for(int i=1; i<=numEncuestas;i++){
                        if(i==1){%><%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                        <li class="active"><a data-toggle="tab" href="#<%out.print(tabId+i);%>"><%out.print(nombreEncuesta);%></a></li>
                            <%}if(i>1){%>
                        <%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                        <!--Construcción de las Pestañas-->
                        <li><a data-toggle="tab" href="#<%out.print(tabId+i);%>"><%out.print(nombreEncuesta);%></a></li><%}}%>
                    </ul>
                    <!--Contenido a mostrar/ocultar-->
                    <div class="tab-content">
                    <%for(int i=1;i<=numEncuestas;i++){
                        if(i==1){%><%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                        <div class="tab-pane active" id="<%out.print(tabId+i);%>">
                            <hr>
                            <form class="form" action="##" method="post" id="actaliceForm">
                                <%@include file="WEB-INF/jspf/ContarPreguntas.jspf"%>
                                <div class="form-group">
                                    <h4><%out.print(nombreEncuesta);%></h4>
                                    <%@include file="WEB-INF/jspf/LlenarPerfil.jspf"%>
                                </div>
                            </form>
                            <hr>
                        </div><!--/tab-pane-->
                        <%}
                        if(i>1){%>
                        <%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                        <div class="tab-pane" id="<%out.print(tabId+i);%>">
                            <hr>
                            <form class="form" action="guardando/Respuestas"  method="post" id="actaliceForm"><%en = en+1;%>
                                <%@include file="WEB-INF/jspf/ContarPreguntas.jspf"%>
                                <div class="form-group">
                                    <h4><%out.print(nombreEncuesta);%></h4>
                                    <%@include file="WEB-INF/jspf/LlenarPerfil.jspf"%>
                                    <div class="col-xs-6">
                                        <button type="submit" class="navbar-toggler navbar-toggler-right">
                                        Actualizar
                                        </button>
                                    </div>
                                </div>
                            </form>
                            <hr>
                        </div><!--/tab-pane--><%}}%>
                    </div><!--/tab-content-->
                </div><!--/col-9-->
            </div><!--/col-9-->
        </div><!--/row-->
        <script src="js/encuesta.js"></script>
    </body>                        
</html>
<%}//END OF MAIN ELSE.%>