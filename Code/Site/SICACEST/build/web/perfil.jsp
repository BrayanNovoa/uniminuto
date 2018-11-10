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
        int p =0;
        int g=0;%>
<head>
    <!--    -->
    <link href="css/bootstrap4-0-0.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="js/bootstrap4-0-0.min.js"></script>
    <script src="js/jquery3-2-1.min.js"></script>
    <title>Perfil del estudiante<%out.print(" "+usurioId);%></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap3-3-7.min.css">
    <script src="js/jquery3-3-1.min.js"></script>
    <script src="js/bootstrap3-3-7.js"></script>
<script src="js/perfil.js"></script>
<%@include file="WEB-INF/jspf/ContarEncuestas.jspf"%>
</head>
<body>
    <hr>
    <div class="container bootstrap snippet">
        <div class="row">
            <div class="col-sm-10"><h1>User name</h1></div>
            <div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="img/gravatar.jpg"></a></div>
        </div>
        <div class="row">
            <div class="col-sm-3"><!--left col-->
                <div class="text-center">
                    <img src="img/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
                    <h6>Upload a different photo...</h6>
                    <input type="file" class="text-center center-block file-upload">
                </div></hr><br>
                <div class="panel panel-default">
                    <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i></div>
                    <div class="panel-body"><a href="http://bootnipets.com">bootnipets.com</a></div>
                </div>
                <ul class="list-group">
                    <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
                </ul>

                <div class="panel panel-default">
                    <div class="panel-heading">Social Media</div>
                    <div class="panel-body">
                        <i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i class="fa fa-google-plus fa-2x"></i>
                    </div>
                </div>
            </div><!--/col-3-->
            <div class="col-sm-9">
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
                                <div class="col-xs-6">
                                    <!--<input type="text" class="form-control" name="first_name" id="first_name" value="Sede Principal - Administrativa" placeholder="Sede" title="Sede donde estudia.">-->
                                </div>
                            </div>
                        </form>
                        <hr>
                    </div><!--/tab-pane-->
                    <%}
                    if(i>1){%>
                    <%@include file="WEB-INF/jspf/ObtenerEncuestas.jspf"%>
                    <div class="tab-pane" id="<%out.print(tabId+i);%>">
                        <hr>
                        <form class="form" action="##" method="post" id="actaliceForm"><%en = en+1;%>
                            <%@include file="WEB-INF/jspf/ContarPreguntas.jspf"%>
                            <div class="form-group">
                                <h4><%out.print(nombreEncuesta);%></h4>
                                <%@include file="WEB-INF/jspf/LlenarPerfil.jspf"%>
                                <div class="col-xs-6">
                                    
                                    <!--<input type="text" class="form-control" name="first_name" id="first_name" value="Sede Principal - Administrativa" placeholder="Sede" title="Sede donde estudia.">-->
                                </div>
                            </div>
                        </form>
                        <hr>
                    </div><!--/tab-pane--><%}}%>
                </div><!--/tab-content-->
            </div><!--/col-9-->
        </div><!--/col-9-->
    </div><!--/row-->
</body>                              
</html>
<%}//END OF MAIN ELSE.%>