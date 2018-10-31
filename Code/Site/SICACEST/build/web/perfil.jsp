<%-- 
    Document   : estudiante
    Created on : 1/10/2017, 11:06:58 AM
    Author     : b41n
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    HttpSession objsesion = request.getSession(false);
    String usuario= (String)objsesion.getAttribute("SesionUsuario");
    /*HttpSession objsesion2 = request.getSession(false);
    String mail= (String)objsesion2.getAttribute("MailUsuario");*/
    if(usuario==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }
%>
<!DOCTYPE html> 
<!DOCTYPE html>
<html>
    <head>
        <meta name="description" content="Encuesta de caracterizacion estudiantil UNIMINUTO.">
        <title>Encuesta de caracterización estudiantil UNIMINUTO.</title>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/pestanas.css">
    </head>
    <body>
        <table border="1" width="1000" align="center">
            <!--Contenido de Datos Básicos-->
            <tr bgcolor="#122C52">
                <th colspan="10"><p align="center">Datos Básicos del estudiante <%out.print(usuario); %></p></th>
            </tr>
            <tr bgcolor="#E0FFFF">
                <th>Nombres</th>
                <th>Primer Apellido</th>
                <th>Segundo Apellido</th>
                <th>Documento</th>
                <th>Sexo</th>
                <th>Edad</th>
                <th>Departamento de nacimiento</th>
                <th>Ciudad de nacimiento</th>
                <th>RH</th>
                <th>
                    <a href="actualizarDatos">
                        <img src="../img/actualizar.png" width="30">
                    </a>
                </th>
            </tr>
            <%
                Connection cn =null;
                Statement st =null;
                ResultSet rs = null;
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost/db_caracterizacion?user=Programador&password=programador");
                    
                    st=cn.createStatement();
                    //String consulContactos="SELECT * FROM Contactos";
                    // String infoLocalizacion = "SELECT loc.sector, loc.lugar, dep.nombre AS departamento, ciu.nombre AS ciudad, loc.direccion, loc.barrio, loc.estrato, loc.tipo_vivienda FROM tb_localizacion AS loc, tb_departamentos as dep, tb_ciudades AS ciu WHERE loc.id_estudiante = 000324471 AND dep.nombre IN (SELECT nombre FROM tb_departamentos WHERE loc.tb_ciudades_id_departamento = dep.id_departamento) AND ciu.nombre IN (SELECT nombre FROM tb_ciudades WHERE loc.tb_ciudades_id_ciudad = ciu.id_ciudad);";
                    //rs=st.executeQuery("SELECT * FROM Contactos");
                    rs=st.executeQuery("SELECT nombres, apellido1, apellido2, documento, sexo, edad, id_departamento, id_ciudad, id_rh FROM tb_informacion_personal WHERE id_estudiante = "+usuario+";");
                    while(rs.next()){
                        System.out.println("Validar usuario a mostrar en Datos Básicos");
                        %>
                        <tr>
                            <th><%out.print(rs.getString(1));%></th>
                            <th><%out.print(rs.getString(2));%></th>
                            <th><%out.print(rs.getString(3));%></th>
                            <th><%out.print(rs.getString(4));%></th>
                            <th><%out.print(rs.getString(5));%></th>
                            <th><%out.print(rs.getString(6));%></th>
                            <th><%out.print(rs.getString(7));%></th>
                            <th><%out.print(rs.getString(8));%></th>
                            <th><%out.print(rs.getString(9));%></th>
                            <%System.out.println("Imprimiendo la información de Datos Básicos");%>
                        </tr>
                        <%
                    }
                    st.close();
                    rs.close();
                    cn.close();
                }catch(Exception e){
                    System.out.println("Error en la consulta");
                }
            %>
            <!--Contenido de Contacto-->
            <tr bgcolor="#122C52">
                <th colspan="10"><p align="center">Información de contacto del estudiante</p></th>
            </tr>
            <tr bgcolor="#E0FFFF">
                <th>Teléfono fijo</th>
                <th>Teléfono celular</th>
                <th>Correo electrónico</th>
                <th>
                    <a href="actualizarDatos">
                        <img src="../img/actualizar.png" width="30">
                    </a>
                </th>
            </tr>
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost/db_caracterizacion?user=Programador&password=programador");

                    st=cn.createStatement();
                    //String consulContactos="SELECT * FROM Contactos";
                    // String infoLocalizacion = "SELECT loc.sector, loc.lugar, dep.nombre AS departamento, ciu.nombre AS ciudad, loc.direccion, loc.barrio, loc.estrato, loc.tipo_vivienda FROM tb_localizacion AS loc, tb_departamentos as dep, tb_ciudades AS ciu WHERE loc.id_estudiante = 000324471 AND dep.nombre IN (SELECT nombre FROM tb_departamentos WHERE loc.tb_ciudades_id_departamento = dep.id_departamento) AND ciu.nombre IN (SELECT nombre FROM tb_ciudades WHERE loc.tb_ciudades_id_ciudad = ciu.id_ciudad);";
                    //rs=st.executeQuery("SELECT * FROM Contactos");
                    rs=st.executeQuery("SELECT tel_fijo, tel_celular, correo FROM tb_contactos WHERE id_estudiante = "+usuario+";");
                    while(rs.next()){
                        System.out.println("Validar usuario a mostrar en Datos Básicos");
                        %>
                        <tr>
                            <th><%out.print(rs.getString(1));%></th>
                            <th><%out.print(rs.getString(2));%></th>
                            <th><%out.print(rs.getString(3));%></th>
                            <%System.out.println("Imprimiendo la información de Datos Básicos");%>
                        </tr>
                        <%
                    }
                    st.close();
                    rs.close();
                    cn.close();
                }catch(Exception e){
                    System.out.println("Error en la consulta");
                }
            %>
            <tr bgcolor="#122C52">
                <th colspan="10"><p align="center">Información de vivienda del estudiante <%out.print(usuario); %></p></th>
            </tr>
            <tr bgcolor="#E0FFFF">
                <th>Sector</th>
                <th>Lugar</th>
                <th>Departamento</th>
                <th>Ciudad</th>
                <th>Dirección</th>
                <th>Barrio</th>
                <th>Estrato</th>
                <th>Tipo de vivienda</th>
                <th>
                    <a href="actualizarDatos">
                        <img src="../img/actualizar.png" width="30">
                    </a>
                </th>
            </tr>
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost/db_caracterizacion?user=Programador&password=programador");
                    
                    st=cn.createStatement();
                    //String consulContactos="SELECT * FROM Contactos";
                    // String infoLocalizacion = "SELECT loc.sector, loc.lugar, dep.nombre AS departamento, ciu.nombre AS ciudad, loc.direccion, loc.barrio, loc.estrato, loc.tipo_vivienda FROM tb_localizacion AS loc, tb_departamentos as dep, tb_ciudades AS ciu WHERE loc.id_estudiante = 000324471 AND dep.nombre IN (SELECT nombre FROM tb_departamentos WHERE loc.tb_ciudades_id_departamento = dep.id_departamento) AND ciu.nombre IN (SELECT nombre FROM tb_ciudades WHERE loc.tb_ciudades_id_ciudad = ciu.id_ciudad);";
                    //rs=st.executeQuery("SELECT * FROM Contactos");
                    rs=st.executeQuery("SELECT loc.sector, loc.lugar, dep.nombre AS departamento, ciu.nombre AS ciudad, loc.direccion, loc.barrio, loc.estrato, loc.tipo_vivienda FROM tb_localizacion AS loc, tb_departamentos as dep, tb_ciudades AS ciu WHERE loc.id_estudiante = "+usuario+" AND dep.nombre IN (SELECT nombre FROM tb_departamentos WHERE loc.tb_ciudades_id_departamento = dep.id_departamento) AND ciu.nombre IN (SELECT nombre FROM tb_ciudades WHERE loc.tb_ciudades_id_ciudad = ciu.id_ciudad);");
                    while(rs.next()){
                        %>
                        <tr>
                            <th><%out.print(rs.getString(1));%></th>
                            <th><%out.print(rs.getString(2));%></th>
                            <th><%out.print(rs.getString(3));%></th>
                            <th><%out.print(rs.getString(4));%></th>
                            <th><%out.print(rs.getString(5));%></th>
                            <th><%out.print(rs.getString(6));%></th>
                            <th><%out.print(rs.getString(7));%></th>
                            <th><%out.print(rs.getString(8));%></th>
                        </tr>
                        <%
                    }
                    st.close();
                    rs.close();
                    cn.close();
                }catch(Exception e){}
            %>
            <tr bgcolor="#122C52">
                <th colspan="10"><p align="center">Información de salud de estudiante <%out.print(usuario); %></p></th>
            </tr>
            <tr bgcolor="#E0FFFF">
                <th>SISBEN</th>
                <th>EPS</th>
                <th>Enfermedad</th>
                <th>Condición especial</th>
                <th>Dificultad</th>
                <th>Consumo alcohol</th>
                <th>Consumo tabaco</th>
                <th>Actualizar</th>
                <th>
                    <a href="actualizarDatos">
                        <img src="../img/actualizar.png" width="30">
                    </a>
                </th>
            </tr>
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost/db_caracterizacion?user=Programador&password=programador");
                    
                    st=cn.createStatement();
                    rs=st.executeQuery("SELECT SISBEN, EPS, enfermedad, especiales, dificultad, alcohol, cigarrillo FROM tb_info_salud WHERE id_estudiante = "+usuario+";");
                    while(rs.next()){
                        %>
                        <tr>
                            <th><%out.print(rs.getString(1));%></th>
                            <th><%out.print(rs.getString(2));%></th>
                            <th><%out.print(rs.getString(3));%></th>
                            <th><%out.print(rs.getString(4));%></th>
                            <th><%out.print(rs.getString(5));%></th>
                            <th><%out.print(rs.getString(6));%></th>
                            <th><%out.print(rs.getString(7));%></th>
                        </tr>
                        <%
                    }
                    st.close();
                    rs.close();
                    cn.close();
                }catch(Exception e){}
            %>
            <tr bgcolor="#122C52">
                <th colspan="10"><p align="center">Información financiera del estudiante <%out.print(usuario); %></p></th>
            </tr>
            <tr bgcolor="#E0FFFF">
                <th>Modo de pago</th>
                <th>Quién paga</th>
                <th>Situacion laboral</th>
                <th>Sector laboral</th>
                <th>Tipo de trabajo</th>
                <th>Ingreso Personal</th>
                <th>Ingreso Familiar</th>
                <th>Actualizar</th>
                <th>
                    <a href="actualizarDatos">
                        <img src="../img/actualizar.png" width="30">
                    </a>
                </th>
            </tr>
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost/db_caracterizacion?user=Programador&password=programador");
                    
                    st=cn.createStatement();
                    rs=st.executeQuery("SELECT medio_pago, quien_paga, situacion_laboral, sector_laboral, tipo_trabajo, ingreso_personal, ingreso_familiar FROM tb_info_financiera WHERE id_estudiante = "+usuario+";");
                    while(rs.next()){
                        %>
                        <tr>
                            <th><%out.print(rs.getString(1));%></th>
                            <th><%out.print(rs.getString(2));%></th>
                            <th><%out.print(rs.getString(3));%></th>
                            <th><%out.print(rs.getString(4));%></th>
                            <th><%out.print(rs.getString(5));%></th>
                            <th><%out.print(rs.getString(6));%></th>
                            <th><%out.print(rs.getString(7));%></th>
                        </tr>
                        <%
                    }
                    st.close();
                    rs.close();
                    cn.close();
                }catch(Exception e){}
            %>
            
            <tr bgcolor="#122C52">
                <th colspan="10"><p align="center">Información familiar del estudiante <%out.print(usuario); %></p></th>
            </tr>
            <tr bgcolor="#122C52">
                <th>Modo de pago</th>
                <th>Quién paga</th>
                <th>Situacion laboral</th>
                <th>Sector laboral</th>
                <th>Tipo de trabajo</th>
                <th>Ingreso Personal</th>
                <th>Ingreso Familiar</th>
                <th>Actualizar</th>
                <th>
                    <a href="actualizarDatos">
                        <img src="../img/actualizar.png" width="30">
                    </a>
                </th>
            </tr>
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost/db_caracterizacion?user=Programador&password=programador");
                    
                    st=cn.createStatement();
                    rs=st.executeQuery("SELECT vive_con, estado_civil, num_hermanos,lugar_hermanos, padres_viven_con_abuelos, embarazo, mes_embarazo, cabeza_familia, hijos, num_hijos, edad_hijos, escolaridad_padre, escolaridad_madre FROM tb_info_familiar WHERE id_estudiante = "+usuario+";");
                    while(rs.next()){
                        %>
                        <tr>
                            <th><%out.print(rs.getString(1));%></th>
                            <th><%out.print(rs.getString(2));%></th>
                            <th><%out.print(rs.getString(3));%></th>
                            <th><%out.print(rs.getString(4));%></th>
                            <th><%out.print(rs.getString(5));%></th>
                            <th><%out.print(rs.getString(6));%></th>
                            <th><%out.print(rs.getString(7));%></th>
                        </tr>
                        <%
                    }
                    st.close();
                    rs.close();
                    cn.close();
                }catch(Exception e){}
            %>
        </table>
         
        <!-- <script src="../js/inhabilitar.js"></script>-->
    </body>
</html>
