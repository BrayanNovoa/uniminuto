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
        <table border="2" width="1000" align="center">
            <!--Contenido de Datos Básicos-->
            <tr bgcolor="#9fa9fb">
                <th colspan="10"><h1 align="center">Datos Básicos del estudiante <%out.print(usuario); %></h1></th>
            </tr>
            <tr bgcolor="9fa9fb">
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
            <tr bgcolor="#9fa9fb">
                <th colspan="10"><h1 align="center">Información de contacto del estudiante</h1></th>
            </tr>
            <tr bgcolor="9fa9fb">
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
            <tr bgcolor="#9fa9fb">
                <th colspan="10"><h1 align="center">Información de vivienda del estudiante <%out.print(usuario); %></h1></th>
            </tr>
            <tr bgcolor="9fa9fb">
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
            <tr bgcolor="#9fa9fb">
                <th colspan="10"><h1 align="center">Información de salud de estudiante <%out.print(usuario); %></h1></th>
            </tr>
            <tr bgcolor="9fa9fb">
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
            <tr bgcolor="#9fa9fb">
                <th colspan="10"><h1 align="center">Información financiera del estudiante <%out.print(usuario); %></h1></th>
            </tr>
            <tr bgcolor="9fa9fb">
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
            
            <tr bgcolor="#9fa9fb">
                <th colspan="10"><h1 align="center">Información familiar del estudiante <%out.print(usuario); %></h1></th>
            </tr>
            <tr bgcolor="9fa9fb">
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
        <div id="container">
            <!--Pestaña 1 activa por defecto-->
            <input id="tab-datos-basicos" type="radio" name="tab-group" checked="checked" />
            <label for="tab-datos-basicos">Datos básicos</label>
            <!--Pestaña 2 inactiva por defecto-->
            <input id="tab-contacto" type="radio" name="tab-group" />
            <label for="tab-contacto">Contacto</label>
            
            <!--Pestaña Vivienda inactiva por defecto-->
            <input id="tab-vivienda" type="radio" name="tab-group" />
            <label for="tab-vivienda">Vivienda</label>
            
            <!--Pestaña Salud inactiva por defecto-->
            <input id="tab-salud" type="radio" name="tab-group" />
            <label for="tab-salud">Salud</label>
            
            <!--Pestaña Financiera inactiva por defecto-->
            <input id="tab-financiera" type="radio" name="tab-group" />
            <label for="tab-financiera">Financiera</label>
            
            <!--Pestaña Familiar inactiva por defecto-->
            <input id="tab-familiar" type="radio" name="tab-group" />
            <label for="tab-familiar">Familiar</label>
            
            
            <!--Contenido a mostrar/ocultar-->
            <div id="content">
                <div id="content-datos-basicos">
                <!--Contenido del formulario Datos Básicos-->
                    <form action="datosBasicos" class="login" method="">
                        <h1>Datos básicos</h1><hr>
                        <select name="sltDepartamento" id="">
                            <option value="50">META</option>
                            <option value="32">dsdadad</option>
                            <option value="44">wewqrefsd</option>
                            <option value="33">ffwefew</option>
                            <option value="13">vhtsdfef</option>
                            <option value="43">wdwefrgre</option>
                        </select>
                        
                        
                    </form>
                </div>

                <div id="content-contacto">
                <!--Contenido de la Pestaña 2-->
                    <form action="insContacto" class="login" method="post">
                        <h1>Encuesta de <%out.print(usuario); %></h1><hr>
                        <input type="text" name="id_User" class="login-input" value="<%out.print(usuario); %>" readonly="readonly">
                        <input type="text" name="name_User" class="login-input" placeholder="Correo Uniminuto<%/*out.print(mail); */%>" readonly="readonly">
                        <hr><h1>Información de contacto</h1>
                        <input type="text" name="tel_User" class="login-input" placeholder="Teléfono Fijo">
                        <input type="text" name="cel_User" class="login-input" placeholder="Teléfono Celular">
                        <input type="text" name="mail_User" class="login-input" placeholder="Correo Electrónico">
                        <input type="submit" class="perfil-submit" value="Guardar">
                    </form>
                </div>

                <div id="content-vivienda">
                <!--Contenido de la Pestaña 3-->
                    <form action="vivienda" class="login" method="post">
                        <h1>Información de vivienda</h1><hr>
                        <input type="text" name="sector_User" class="login-input" placeholder="¿Vive En Sector Rural O Urbano?">
                        <input type="text" name="place_User" class="login-input" placeholder="Lugar De Vivienda">
                        <input type="text" name="depto_User" class="login-input" placeholder="Departamento">
                        <input type="text" name="city_User" class="login-input" placeholder="Ciudad">
                        <input type="text" name="dir_User" class="login-input" placeholder="Dirección De Residencia">
                        <input type="text" name="barrio_User" class="login-input" placeholder="Barrio">
                        <input type="text" name="estrato_User" class="login-input" placeholder="Estrato Socioeconómico">
                        <input type="text" name="vivienda_User" class="login-input" placeholder="Su Vivienda Es">
                        <input type="submit" class="perfil-submit" value="Guardar">
                    </form>
                </div>
                <div id="content-salud">
                    <!--Contenido de la Pestaña Salud-->
                    <form action="insSalud" class="login" method="post">
                        <hr><h1>Información de salud</h1>
                        <input type="text" name="sisben_User" class="login-input" placeholder="¿Pertenece Al SISBEN?">
                        <input type="text" name="eps_User" class="login-input" placeholder="¿Está Afiliado A EPS?">
                        <input type="text" name="problem_User" class="login-input" placeholder="¿Presenta Algún Problema De Salud O Enfermedad Crónica?">
                        <input type="text" name="poblacion_User" class="login-input" placeholder="Pertenece usted a las siguientes poblaciones especiales">
                        <input type="text" name="difi_User" class="login-input" placeholder="Alguna dificultad que pueda afectar su vida académica universitaria (visual, motora, auditiva, cognitiva, entre otras)">
                        <input type="text" name="drink_User" class="login-input" placeholder="Si consume bebidas alcohólica, por favor indique la frecuencia">
                        <input type="text" name="smoke_User" class="login-input" placeholder="Si fuma por favor indique la frecuencia">
                        <input type="submit" class="perfil-submit" value="Guardar">
                    </form>
                </div>
                <div id="content-financiera">
                    <!--Contenido de la Pestaña Financiera-->
                    <form action="insFinanciera" class="login" method="post">
                        <hr><h1>Información financiera</h1>
                        <input type="text" name="pago_User" class="login-input" placeholder="Medios de pago de la matrícula:">
                        <input type="text" name="quienpaga_User" class="login-input" placeholder="¿Quién paga la matrícula?">
                        <input type="text" name="work_User" class="login-input" placeholder="Situacion Laboral">
                        <input type="text" name="workspace_User" class="login-input" placeholder="Sector al que pertenece su trabajo">
                        <input type="text" name="typework_User" class="login-input" placeholder="trabaja como idependiente o empleado">
                        <input type="text" name="ingper_User" class="login-input" placeholder="Ingreso mensual suyo">
                        <input type="text" name="ingfam_User" class="login-input" placeholder="Ingreso mensual de su familia">
                        <input type="submit" class="perfil-submit" value="Guardar">
                    </form>
                </div>
                <div id="content-familiar">
                    <!--Contenido de la Pestaña Familiar-->
                    <form action="insFamiliar" class="login" method="post">
                        <hr><h1>Información familiar</h1>
                        <input type="text" name="live_User" class="login-input" placeholder="Usted vive actualmente con">
                        <input type="text" name="state_User" class="login-input" placeholder="Estado civil">
                        <input type="text" name="numherm_User" class="login-input" placeholder="Número de hermanos">
                        <input type="text" name="lugarherm_User" class="login-input" placeholder="Qué lugar ocupa entre los hermanos?">
                        <input type="text" name="abuelos_User" class="login-input" placeholder="Sus padres comparten vivienda con sus abuelos?">
                        <input type="text" name="emb_User" class="login-input" placeholder="Se encuentra en estado de embarazo?">
                        <input type="text" name="mesemb_User" class="login-input" placeholder="En qué mes de embarazo se encuentra?">
                        <input type="text" name="head_User" class="login-input" placeholder="Es cabeza de familia?">
                        <input type="text" name="hijos_User" class="login-input" placeholder="¿Tiene hijos?">
                        <input type="text" name="numhijos_User" class="login-input" placeholder="Número de hijos">
                        <input type="text" name="agehijos_User" class="login-input" placeholder="Edad de los hijos: separados por coma si es más de uno.">
                        <input type="text" name="padre_User" class="login-input" placeholder="Escolaridad del padre">
                        <input type="text" name="madre_User" class="login-input" placeholder="Escolaridad de la madre">
                        <input type="submit" class="perfil-submit" value="Guardar">
                        <p class="login-help"><a href="../logout">Cerrar Sesion</a></p>
                    </form>
                </div>
            </div>
        </div>
        <script src="../js/inhabilitar.js"></script>
    </body>
</html>
