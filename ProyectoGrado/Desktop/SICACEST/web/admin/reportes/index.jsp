<%-- 
    Document   : index
    Created on : 21/04/2018, 08:38:23 PM
    Author     : b41n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.ConsultasAdmin"%>
<% 
    HttpSession objsesion = request.getSession(false);
    String sesion= (String)objsesion.getAttribute("SesionUsuario");
    String id_buscarrio = request.getParameter("id_User");    
    String nombre="Brayan";
    String nombres="";
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
<!DOCTYPE html>
<html>
    <head>
        <title>Reportes - Administrador</title>
        <link rel="stylesheet" href="../../css/style.css">
        <style>
            button {
                padding: 12px 50px;
		border: none;
		background-color: rgb(91,234,208);
		color: #333;
		cursor: pointer;
		display: inline-block;
            }
        </style>
    </head>
    <body>
        <h1>Reporte de estudiantes:</h1>
	<hr />
        <form action="" class="login" method="post" style="width: 1000px;">
            <h1>Buscar por id</h1>
            <input type="text" name="id_User" class="login-input" placeholder="Id" autocomplete="off" id="txtid" maxlength="9">
            <input type="submit"  class="perfil-submit" value="Buscar Usuario">
            <%@include file="../../WEB-INF/jspf/buscarUsuario.jspf"%>
            <button class="perfil-submit" id="btnlogin">Exportar a PDF</button>
        </form>
            <!--<script src="../../js/reporteEstudiante.js"></script>-->
        <script src="../../js/jspdf.min.js"></script>
        <script>
            //Iniciamos la librería jsPDF
            const pdf = new jsPDF();
            // Seleccionamos el boton
            let boton = document.querySelector('button');
            // Seleccionamos el input
            let input = document.querySelector('input');
            let nombre = document.getElementById('pregunta');
            // Agregamos un evento 'click' al boton
            boton.addEventListener('click', printPDF);
            //Opciones actuales
            function printPDF(){
            	// @param 1 - Coordenada
            	// @param 1 - Coordenada
            	// @param 1 - String o array de Strins a ser agregados a la página. Cada linea es agregada una linea abajo, las configuraciones de espaciado son declaradas antes de esta llamada.
            	pdf.text(10, 10, 'Corporación Universitaria Minuto De Dios');
                pdf.text(10, 20, 'Vicerrectoría Regional: LLANOS');
                pdf.text(10, 30, 'Reporte General Del Estudiante: ID: ');
            	// Agregamos las variables disponibles.
                
                pdf.text(10, 100,  pregunta.innerHTML);
                
                pdf.text(10, 30, 'Reporte General Del Estudiante: ID: ');
                pdf.text(10, 100,  pregunta.innerHTML);
                
                pdf.text(10, 50, 'Nombres');
                pdf.text(10, 55,  pregunta.innerHTML);
                
            	// Guardamos el documento y le asigna un nombre
            	pdf.output('save', 'Estudiantes.pdf')
            	//pdf.save();
            	console.log('Guardando');
            }
	</script>
    </body>
</html>
