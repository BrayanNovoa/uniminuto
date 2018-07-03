<%-- 
    Document   : formulario
    Created on : 27/03/2017, 07:35:59 PM
    Author     : b41n
--%>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Encuesta De Caracterización Estudiantes Uniminuto.</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/pestanas.css">
    </head>
    <body>
        <table class="perfil-form">
            <tr class="perfil-form">
                <th colspan="3">
                    <h1>Encuesta</h1>
                </th>
            </tr>
            <tr>
                <th>
                    <form action="encuestar" class="login" method="post">
                        <hr><h1>Información Personal</h1>
                        <input type="text" name="names_User" class="login-input" placeholder="Nombres">
                        <input type="text" name="apes_User" class="login-input" placeholder="Apellidos">
                        <input type="text" name="docu_User" class="login-input" placeholder="Documento de identidad">
                        <input type="text" name="sex_User" class="login-input" placeholder="Sexo">
                        <input type="text" name="age_User" class="login-input" placeholder="Edad">
                        <input type="text" name="depto_User" class="login-input" placeholder="Departamento de Nacimiento">
                        <input type="text" name="nacim_User" class="login-input" placeholder="Lugar de Nacimiento">
                        <input type="text" name="rh_User" class="login-input" placeholder="Tipo de sangre">
                        <input type="submit" class="perfil-submit" value="Guardar">
                    </form>
                </th>
                <th>
                    <form class="login" method="post">
                        <h1>Encuesta de <%out.print(usuario); %></h1>
                        <input type="text" name="id_User" class="login-input" value="<%out.print(usuario); %>" readonly="readonly">
                        <input type="text" name="name_User" class="login-input" placeholder="Correo Uniminuto<%/*out.print(mail); */%>" readonly="readonly">
                        <hr><h1>Información De Contacto</h1>
                        <input type="text" name="tel_User" class="login-input" placeholder="Teléfono Fijo">
                        <input type="text" name="cel_User" class="login-input" placeholder="Teléfono Celular">
                        <input type="text" name="mail_User" class="login-input" placeholder="Correo Electrónico">
                        <input type="submit" class="perfil-submit" value="Guardar">
                    </form>
                </th>
                <th>
                    <form action="" class="login" method="post">
                        <hr><h1>Información </h1>
                        <input type="text" name="sector_User" class="login-input" placeholder="¿Vive En Sector Rural O Urbano?">
                        <input type="text" name="place_User" class="login-input" placeholder="Lugar De Vivienda">
                        <input type="text" name="local_User" class="login-input" placeholder="Departamento">
                        <input type="text" name="city_User" class="login-input" placeholder="Ciudad">
                        <input type="text" name="dir_User" class="login-input" placeholder="Dirección De Residencia">
                        <input type="text" name="barrio_User" class="login-input" placeholder="Barrio">
                        <input type="text" name="estrato_User" class="login-input" placeholder="Estrato Socioeconómico">
                        <input type="text" name="vivienda_User" class="login-input" placeholder="Su Vivienda Es">
                        <input type="submit" class="perfil-submit" value="Guardar">
                    </form>
                </th>
            </tr>
            <tr>
                <th>
                    <form action="" class="login" method="post">
                        <hr><h1>Información De Salud</h1>
                        <input type="text" name="sisben_User" class="login-input" placeholder="¿Pertenece Al SISBEN?">
                        <input type="text" name="eps_User" class="login-input" placeholder="¿Está Afiliado A EPS?">
                        <input type="text" name="problem_User" class="login-input" placeholder="¿Presenta Algún Problema De Salud O Enfermedad Crónica?">
                        <input type="text" name="poblacion_User" class="login-input" placeholder="Pertenece usted a las siguientes poblaciones especiales">
                        <input type="text" name="difi_User" class="login-input" placeholder="Alguna dificultad que pueda afectar su vida académica universitaria (visual, motora, auditiva, cognitiva, entre otras)">
                        <input type="text" name="drink_User" class="login-input" placeholder="Si consume bebidas alcohólica, por favor indique la frecuencia">
                        <input type="text" name="smoke_User" class="login-input" placeholder="Si fuma por favor indique la frecuencia">
                        <input type="submit" class="perfil-submit" value="Guardar">
                    </form>
                </th>
                <th>
                    <form action="" class="login" method="post">
                        <hr><h1>Información Financiera</h1>
                        <input type="text" name="pago_User" class="login-input" placeholder="Medios de pago de la matrícula:">
                        <input type="text" name="quienpaga_User" class="login-input" placeholder="¿Quién paga la matrícula?">
                        <input type="text" name="work_User" class="login-input" placeholder="Situacion Laboral">
                        <input type="text" name="workspace_User" class="login-input" placeholder="Sector al que pertenece su trabajo">
                        <input type="text" name="typework_User" class="login-input" placeholder="trabaja como idependiente o empleado">
                        <input type="text" name="ingper_User" class="login-input" placeholder="Ingreso mensual suyo">
                        <input type="text" name="ingfam_User" class="login-input" placeholder="Ingreso mensual de su familia">
                        <input type="submit" class="perfil-submit" value="Guardar">
                    </form>
                </th>
                <th>
                    <form action="" class="login" method="post">
                        <hr><h1>Información Familiar</h1>
                        <input type="text" name="live_User" class="login-input" placeholder="Usted vive actualmente con">
                        <input type="text" name="state_User" class="login-input" placeholder="Estado civil">
                        <input type="text" name="numherm_User" class="login-input" placeholder="Número de hermanos">
                        <input type="text" name="lugarherm_User" class="login-input" placeholder="¿Qué lugar ocupa entre los hermanos?">
                        <input type="text" name="emb_User" class="login-input" placeholder="Se encuentra en estado de embarazo?">
                        <input type="text" name="mesemb_User" class="login-input" placeholder="En qué mes de embarazo se encuentra.">
                        <input type="text" name="abuelos_User" class="login-input" placeholder="¿Sus padres comparten vivienda con sus abuelos?">
                        <input type="text" name="hijos_User" class="login-input" placeholder="¿Tiene hijos?">
                        <input type="text" name="head_User" class="login-input" placeholder="Es madre cabeza de familia">
                        <input type="text" name="numhijos_User" class="login-input" placeholder="Número de hijos">
                        <input type="text" name="agehijos_User" class="login-input" placeholder="Edad de los hijos">
                        <input type="text" name="padres_User" class="login-input" placeholder="Escolaridad de lo padres">
                        <input type="submit" class="perfil-submit" value="Guardar">
                        <p class="login-help"><a href="logout">Cerrar Sesion</a></p>
                        <p class="login-help"><a href="logout">¡Ya he terminado<br>Salir!</a></p>
                    </form>
                </th>
            </tr>
        </table>
    </body>
</html>