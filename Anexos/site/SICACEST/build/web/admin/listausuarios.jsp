<%-- 
    Document   : listausuarios
    Created on : 29/03/2017, 09:12:23 PM
    Author     : b41n
--%>
<%@page import="Controlador.ConexionDB"%>
<%@page import="Clases.CiudadesVM"%>
<%@page import="Controlador.Consultas"%>
<%@page import="Controlador.ConsultasAdmin"%>
<%@page import="Clases.InfoContacto"%>
<%@page language="java" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.LinkedList"%> 

<%
    HttpSession objsesion=request.getSession(false);
    String usuario=(String)objsesion.getAttribute("SesionUsuario");
    
    String nombres="";
    String apellido1="";
    String apellido2="";
    ConexionDB conexion = new ConexionDB();
    String consulta="";
    Connection cn =null;
    Statement st =null;
    ResultSet rs = null;
    String buscarUsuario ="include file=\"WEB-INF/jspf/buscarUsuario.jspf\"";
    if(usuario==null){
        buscarUsuario = null;
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }else{
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrativos - Lista De Usuarios.</title>
    </head>
    <body>
        <h1>Lista Completa De Usuarios</h1>
        <h1>Consulta a base de datos</h1>
        <table border="1">
            <tr>
            <td>id</td>
            <td>Teléfono fijo</td>
            <td>Teléfono celular</td>
            <td>Correo personal</td>
            </tr>
            <%
            LinkedList<InfoContacto> lista = ConsultasAdmin.getInfoContacto();
            for (int i=0;i<lista.size();i++)
            {
               out.println("<tr>");
               out.println("<td>"+lista.get(i).getIdEstudiante()+"</td>");
               out.println("<td>"+lista.get(i).getTelFijo()+"</td>");
               out.println("<td>"+lista.get(i).getTelCelular()+"</td>");
               out.println("<td>"+lista.get(i).getCorreo()+"</td>");
               out.println("</tr>");
            }
            %>
            <tr>
            <td>Ciudades</td>
            </tr>
            <%
            //String parametro="685";
            //LinkedList<CiudadesVM> listaCiudades = Consultas.getCiudades(parametro);
            LinkedList<CiudadesVM> listaCiudades = Consultas.getCiudades();
            %>
            <td>
                <select name="sltDepartamento" id="">
                    <%
            for (int i=0;i<listaCiudades.size();i++){
                out.println("<option value=\""+listaCiudades.get(i).getIdCiudad()+"\">"+listaCiudades.get(i).getNombre()+"</option>");
            }
                    %>
                </select>
            </td>
        </table>
                <%if(usuario!=null){
                    //out.println(buscarUsuario);
                }
    }%>
    </body>
    <%@include file="WEB-INF/jspf/buscarUsuario.jspf"%>
</html>
