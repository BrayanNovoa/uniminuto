package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class ArmandoPerfil_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
    HttpSession objsesion = request.getSession(false);
    String usuario= (String)objsesion.getAttribute("SesionUsuario");
    /*HttpSession objsesion2 = request.getSession(false);
    String mail= (String)objsesion2.getAttribute("MailUsuario");*/
    
    
    if(usuario==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }

      out.write("\n");
      out.write("<!DOCTYPE html> \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"description\" content=\"Encuesta de caracterizacion estudiantil UNIMINUTO.\">\n");
      out.write("        <title>Encuesta de caracterización estudiantil UNIMINUTO.</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/pestanas.css\">\n");
      out.write("        <!--<link rel=\"stylesheet\" href=\"css/bootstrap.css\">-->\n");
      out.write("<!--        <script src=\"js/inhabilitar.js\"></script>-->\n");
      out.write("    </head>\n");
      out.write("    <body> \n");
      out.write("        <br><br><br>\n");
      out.write("        \n");
      out.write("        <div id=\"container\">\n");
      out.write("            <!--Pestaña 1 activa por defecto-->\n");
      out.write("            <input id=\"tab-datos-basicos\" type=\"radio\" name=\"tab-group\" checked=\"checked\"/>\n");
      out.write("            <label for=\"tab-datos-basicos\" class=\"perfil-submit\">Datos básicos</label>\n");
      out.write("            <!--Pestaña 2 inactiva por defecto-->\n");
      out.write("            <input id=\"tab-contacto\" type=\"radio\" name=\"tab-group\" />\n");
      out.write("            <label for=\"tab-contacto\" class=\"perfil-submit\">Contacto</label>\n");
      out.write("            \n");
      out.write("            <!--Pestaña Vivienda inactiva por defecto-->\n");
      out.write("            <input id=\"tab-vivienda\" type=\"radio\" name=\"tab-group\" />\n");
      out.write("            <label for=\"tab-vivienda\" class=\"perfil-submit\">Vivienda</label>\n");
      out.write("            \n");
      out.write("            <!--Pestaña Salud inactiva por defecto-->\n");
      out.write("            <input id=\"tab-salud\" type=\"radio\" name=\"tab-group\" />\n");
      out.write("            <label for=\"tab-salud\" class=\"perfil-submit\">Salud</label>\n");
      out.write("            \n");
      out.write("            <!--Pestaña Financiera inactiva por defecto-->\n");
      out.write("            <input id=\"tab-financiera\" type=\"radio\" name=\"tab-group\" />\n");
      out.write("            <label for=\"tab-financiera\" class=\"perfil-submit\">Financiera</label>\n");
      out.write("            \n");
      out.write("            <!--Pestaña Familiar inactiva por defecto-->\n");
      out.write("            <input id=\"tab-familiar\" type=\"radio\" name=\"tab-group\" />\n");
      out.write("            <label for=\"tab-familiar\" class=\"perfil-submit\">Familiar</label>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <!--Contenido a mostrar/ocultar-->\n");
      out.write("            <div id=\"content\">\n");
      out.write("                <div id=\"content-datos-basicos\">\n");
      out.write("                <!--Contenido del formulario Datos Básicos-->\n");
      out.write("                    <form action=\"\" class=\"login\" method=\"\" style=\"width: 1050px;\">\n");
      out.write("                        <h1>Datos Básicos del estudiante ");
out.print(usuario); 
      out.write("</h1><hr>\n");
      out.write("                        \n");
      out.write("                        <table border=\"2\" width=\"1000\" align=\"center\">\n");
      out.write("                        <!--Contenido de Datos Básicos-->\n");
      out.write("                        <tr bgcolor=\"#9fa9fb\">\n");
      out.write("                            <th colspan=\"9\"><h1 align=\"center\"></h1></th>\n");
      out.write("                            <th>\n");
      out.write("                                <a href=\"actualizarDatos\">\n");
      out.write("                                    Actualizar\n");
      out.write("                                </a>\n");
      out.write("                            </th>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr bgcolor=\"9fa9fb\">\n");
      out.write("                            <th>Nombres</th>\n");
      out.write("                            <th>Primer Apellido</th>\n");
      out.write("                            <th>Segundo Apellido</th>\n");
      out.write("                            <th>Documento</th>\n");
      out.write("                            <th>Sexo</th>\n");
      out.write("                            <th>Edad</th>\n");
      out.write("                            <th>Departamento de nacimiento</th>\n");
      out.write("                            <th>Ciudad de nacimiento</th>\n");
      out.write("                            <th>RH</th>\n");
      out.write("                        </tr>\n");
      out.write("                        ");


                            try{
                                Connection cn =null;
                                Statement st =null;
                                ResultSet rs = null;
                                
                                Class.forName("com.mysql.jdbc.Driver");
                                cn=DriverManager.getConnection("jdbc:mysql://localhost/db_caracterizacion?user=Programador&password=programador");

                                st=cn.createStatement();
                                //String consulContactos="SELECT * FROM Contactos";
                                // String infoLocalizacion = "SELECT loc.sector, loc.lugar, dep.nombre AS departamento, ciu.nombre AS ciudad, loc.direccion, loc.barrio, loc.estrato, loc.tipo_vivienda FROM tb_localizacion AS loc, tb_departamentos as dep, tb_ciudades AS ciu WHERE loc.id_estudiante = 000324471 AND dep.nombre IN (SELECT nombre FROM tb_departamentos WHERE loc.tb_ciudades_id_departamento = dep.id_departamento) AND ciu.nombre IN (SELECT nombre FROM tb_ciudades WHERE loc.tb_ciudades_id_ciudad = ciu.id_ciudad);";
                                //rs=st.executeQuery("SELECT * FROM Contactos");
                                rs=st.executeQuery("SELECT nombres, apellido1, apellido2, documento, sexo, edad, id_departamento, id_ciudad, id_rh FROM tb_informacion_personal WHERE id_estudiante = "+usuario+";");
                                while(rs.next()){
                                    System.out.println("Validar usuario a mostrar en Datos Básicos");
                                    
      out.write("\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th>");
out.print(rs.getString(1));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(2));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(3));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(4));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(5));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(6));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(7));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(8));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(9));
      out.write("</th>\n");
      out.write("                                        ");
System.out.println("Imprimiendo la información de Datos Básicos");
      out.write("\n");
      out.write("                                        <th>\n");
      out.write("                                            <a href=\"actualizarDatos\">\n");
      out.write("                                                <img src=\"img/actualizar.png\" width=\"30\">\n");
      out.write("                                            </a>\n");
      out.write("                                        </th>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");

                                }
                                st.close();
                                rs.close();
                                cn.close();
                            }catch(Exception e){
                                System.out.println("Error en la consulta");
                            }
                        
      out.write("\n");
      out.write("                        </table>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div id=\"content-contacto\">\n");
      out.write("                <!--Contenido de la Pestaña 2-->\n");
      out.write("                    <form action=\"actualizarDatos\" class=\"login\" method=\"post\" style=\"width: 1050px;\">\n");
      out.write("                        <h1>Información de contacto del estudiante ");
out.print(usuario); 
      out.write("</h1><hr>\n");
      out.write("                        <select name=\"sltDepartamento\" id=\"\">\n");
      out.write("                            <option value=\"50\">META</option>\n");
      out.write("                            <option value=\"32\">dsdadad</option>\n");
      out.write("                            <option value=\"44\">wewqrefsd</option>\n");
      out.write("                            <option value=\"33\">ffwefew</option>\n");
      out.write("                            <option value=\"13\">vhtsdfef</option>\n");
      out.write("                            <option value=\"43\">wdwefrgre</option>\n");
      out.write("                        </select>\n");
      out.write("                        <table border=\"2\" width=\"1000\" align=\"center\">\n");
      out.write("                        <!--Contenido de Datos Básicos-->\n");
      out.write("                        <tr bgcolor=\"#9fa9fb\">\n");
      out.write("                            <th colspan=\"8\"><h1 align=\"center\"></h1></th>\n");
      out.write("                            <th>\n");
      out.write("                                <a href=\"actualizarDatos\">\n");
      out.write("                                    Actualizar\n");
      out.write("                                </a>\n");
      out.write("                            </th>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr bgcolor=\"9fa9fb\">\n");
      out.write("                            <th>Nombres</th>\n");
      out.write("                            <th>Primer Apellido</th>\n");
      out.write("                            <th>Segundo Apellido</th>\n");
      out.write("                            <th>Documento</th>\n");
      out.write("                            <th>Sexo</th>\n");
      out.write("                            <th>Edad</th>\n");
      out.write("                            <th>Departamento de nacimiento</th>\n");
      out.write("                            <th>Ciudad de nacimiento</th>\n");
      out.write("                            <th>RH</th>\n");
      out.write("                        </tr>\n");
      out.write("                        ");


                            try{
                                Connection cn =null;
                                Statement st =null;
                                ResultSet rs = null;
                                
                                Class.forName("com.mysql.jdbc.Driver");
                                cn=DriverManager.getConnection("jdbc:mysql://localhost/db_caracterizacion?user=Programador&password=programador");

                                st=cn.createStatement();
                                //String consulContactos="SELECT * FROM Contactos";
                                // String infoLocalizacion = "SELECT loc.sector, loc.lugar, dep.nombre AS departamento, ciu.nombre AS ciudad, loc.direccion, loc.barrio, loc.estrato, loc.tipo_vivienda FROM tb_localizacion AS loc, tb_departamentos as dep, tb_ciudades AS ciu WHERE loc.id_estudiante = 000324471 AND dep.nombre IN (SELECT nombre FROM tb_departamentos WHERE loc.tb_ciudades_id_departamento = dep.id_departamento) AND ciu.nombre IN (SELECT nombre FROM tb_ciudades WHERE loc.tb_ciudades_id_ciudad = ciu.id_ciudad);";
                                //rs=st.executeQuery("SELECT * FROM Contactos");
                                rs=st.executeQuery("SELECT nombres, apellido1, apellido2, documento, sexo, edad, id_departamento, id_ciudad, id_rh FROM tb_informacion_personal WHERE id_estudiante = "+usuario+";");
                                while(rs.next()){
                                    System.out.println("Validar usuario a mostrar en Datos Básicos");
                                    
      out.write("\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th>");
out.print(rs.getString(1));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(2));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(3));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(4));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(5));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(6));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(7));
      out.write("</th>\n");
      out.write("                                        <th>");
out.print(rs.getString(8));
      out.write("</th>\n");
      out.write("                                        ");
System.out.println("Imprimiendo la información de Datos Básicos");
      out.write("\n");
      out.write("                                        <th>\n");
      out.write("                                            <a href=\"Editar.jsp?cod=");
out.print(rs.getString(1));
      out.write("\">\n");
      out.write("                                                <img src=\"Iconos/editar.png\" width=\"30\">\n");
      out.write("                                            </a>\n");
      out.write("                                            <a href=\"Eliminar.jsp?cod=");
out.print(rs.getString(1));
      out.write("\">\n");
      out.write("                                                <img src=\"Iconos/eliminar.png\" width=\"30\">\n");
      out.write("                                            </a>\n");
      out.write("                                        </th>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");

                                }
                                st.close();
                                rs.close();
                                cn.close();
                            }catch(Exception e){
                                System.out.println("Error en la consulta");
                            }
                        
      out.write("\n");
      out.write("                        </table>\n");
      out.write("                        <input type=\"submit\" class=\"perfil-submit\" value=\"Actualizar\">\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div id=\"content-vivienda\">\n");
      out.write("                <!--Contenido de la Pestaña 3-->\n");
      out.write("                    <form action=\"actualizarDatos\" class=\"login\" method=\"post\" style=\"width: 1050px;\">\n");
      out.write("                        <h1>Información de vivienda</h1><hr>\n");
      out.write("                        \n");
      out.write("                        <table border=\"2\" width=\"1000\" align=\"center\">\n");
      out.write("                            <tr bgcolor=\"#9fa9fb\">\n");
      out.write("                                <th colspan=\"8\"><h1 align=\"center\">Información de vivienda del estudiante ");
out.print(usuario); 
      out.write("</h1></th>\n");
      out.write("                                <th>\n");
      out.write("                                    <a href=\"actualizarDatos\">\n");
      out.write("                                        <img src=\"img/actualizar.png\" width=\"30\">\n");
      out.write("                                    </a>\n");
      out.write("                                </th>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr bgcolor=\"9fa9fb\">\n");
      out.write("                                <th>Sector</th>\n");
      out.write("                                <th>Lugar</th>\n");
      out.write("                                <th>Departamento</th>\n");
      out.write("                                <th>Ciudad</th>\n");
      out.write("                                <th>Dirección</th>\n");
      out.write("                                <th>Barrio</th>\n");
      out.write("                                <th>Estrato</th>\n");
      out.write("                                <th>Tipo de vivienda</th>\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                                try{
                                    Connection cn =null;
                                    Statement st =null;
                                    ResultSet rs = null;
                                    Class.forName("com.mysql.jdbc.Driver");
                                    cn=DriverManager.getConnection("jdbc:mysql://localhost/db_caracterizacion?user=Programador&password=programador");

                                    st=cn.createStatement();
                                    //String consulContactos="SELECT * FROM Contactos";
                                     String infoLocalizacion = "SELECT loc.sector, loc.lugar, dep.nombre AS departamento, ciu.nombre AS ciudad, loc.direccion, loc.barrio, loc.estrato, loc.tipo_vivienda FROM tb_localizacion AS loc, tb_departamentos as dep, tb_ciudades AS ciu WHERE loc.id_estudiante = 000324471 AND dep.nombre IN (SELECT nombre FROM tb_departamentos WHERE loc.tb_ciudades_id_departamento = dep.id_departamento) AND ciu.nombre IN (SELECT nombre FROM tb_ciudades WHERE loc.tb_ciudades_id_ciudad = ciu.id_ciudad);";
                                    //rs=st.executeQuery("SELECT * FROM Contactos");
                                    rs=st.executeQuery("SELECT loc.sector, loc.lugar, dep.nombre AS departamento, ciu.nombre AS ciudad, loc.direccion, loc.barrio, loc.estrato, loc.tipo_vivienda FROM tb_localizacion AS loc, tb_departamentos as dep, tb_ciudades AS ciu WHERE loc.id_estudiante = "+usuario+" AND dep.nombre IN (SELECT nombre FROM tb_departamentos WHERE loc.tb_ciudades_id_departamento = dep.id_departamento) AND ciu.nombre IN (SELECT nombre FROM tb_ciudades WHERE loc.tb_ciudades_id_ciudad = ciu.id_ciudad);");
                                    while(rs.next()){
                                        
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th>");
out.print(rs.getString(1));
      out.write("</th>\n");
      out.write("                                            <th>");
out.print(rs.getString(2));
      out.write("</th>\n");
      out.write("                                            <th>");
out.print(rs.getString(3));
      out.write("</th>\n");
      out.write("                                            <th>");
out.print(rs.getString(4));
      out.write("</th>\n");
      out.write("                                            <th>");
out.print(rs.getString(5));
      out.write("</th>\n");
      out.write("                                            <th>");
out.print(rs.getString(6));
      out.write("</th>\n");
      out.write("                                            <th>");
out.print(rs.getString(7));
      out.write("</th>\n");
      out.write("                                            <th>");
out.print(rs.getString(8));
      out.write("</th>\n");
      out.write("                                            <th>\n");
      out.write("                                                <a href=\"Editar.jsp?cod=");
out.print(rs.getString(1));
      out.write("\">\n");
      out.write("                                                    <img src=\"Iconos/editar.png\" width=\"30\">\n");
      out.write("                                                </a>\n");
      out.write("                                                <a href=\"Eliminar.jsp?cod=");
out.print(rs.getString(1));
      out.write("\">\n");
      out.write("                                                    <img src=\"Iconos/eliminar.png\" width=\"30\">\n");
      out.write("                                                </a>\n");
      out.write("                                            </th>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");

                                    }
                                    st.close();
                                    rs.close();
                                    cn.close();
                                }catch(Exception e){}
                            
      out.write("\n");
      out.write("                        </table>\n");
      out.write("                        <input type=\"submit\" class=\"perfil-submit\" value=\"Actualizar\">\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"content-salud\">\n");
      out.write("                    <!--Contenido de la Pestaña Salud-->\n");
      out.write("                    <form action=\"insSalud\" class=\"login\" method=\"post\" style=\"width: 1050px;\">\n");
      out.write("                        <hr><h1>Información de salud</h1>\n");
      out.write("                        <input type=\"text\" name=\"sisben_User\" class=\"login-input\" placeholder=\"¿Pertenece Al SISBEN?\">\n");
      out.write("                        <input type=\"text\" name=\"eps_User\" class=\"login-input\" placeholder=\"¿Está Afiliado A EPS?\">\n");
      out.write("                        <input type=\"text\" name=\"problem_User\" class=\"login-input\" placeholder=\"¿Presenta Algún Problema De Salud O Enfermedad Crónica?\">\n");
      out.write("                        <input type=\"text\" name=\"poblacion_User\" class=\"login-input\" placeholder=\"Pertenece usted a las siguientes poblaciones especiales\">\n");
      out.write("                        <input type=\"text\" name=\"difi_User\" class=\"login-input\" placeholder=\"Alguna dificultad que pueda afectar su vida académica universitaria (visual, motora, auditiva, cognitiva, entre otras)\">\n");
      out.write("                        <input type=\"text\" name=\"drink_User\" class=\"login-input\" placeholder=\"Si consume bebidas alcohólica, por favor indique la frecuencia\">\n");
      out.write("                        <input type=\"text\" name=\"smoke_User\" class=\"login-input\" placeholder=\"Si fuma por favor indique la frecuencia\">\n");
      out.write("                        <input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\">\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"content-financiera\">\n");
      out.write("                    <!--Contenido de la Pestaña Financiera-->\n");
      out.write("                    <form action=\"insFinanciera\" class=\"login\"  method=\"post\" style=\"width: 1050px;\">\n");
      out.write("                        <hr><h1>Información financiera</h1>\n");
      out.write("                        <input type=\"text\" name=\"pago_User\" class=\"login-input\" placeholder=\"Medios de pago de la matrícula:\">\n");
      out.write("                        <input type=\"text\" name=\"quienpaga_User\" class=\"login-input\" placeholder=\"¿Quién paga la matrícula?\">\n");
      out.write("                        <input type=\"text\" name=\"work_User\" class=\"login-input\" placeholder=\"Situacion Laboral\">\n");
      out.write("                        <input type=\"text\" name=\"workspace_User\" class=\"login-input\" placeholder=\"Sector al que pertenece su trabajo\">\n");
      out.write("                        <input type=\"text\" name=\"typework_User\" class=\"login-input\" placeholder=\"trabaja como idependiente o empleado\">\n");
      out.write("                        <input type=\"text\" name=\"ingper_User\" class=\"login-input\" placeholder=\"Ingreso mensual suyo\">\n");
      out.write("                        <input type=\"text\" name=\"ingfam_User\" class=\"login-input\" placeholder=\"Ingreso mensual de su familia\">\n");
      out.write("                        <input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\">\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"content-familiar\">\n");
      out.write("                    <!--Contenido de la Pestaña Familiar-->\n");
      out.write("                    <form action=\"insFamiliar\" class=\"login\"  method=\"post\" style=\"width: 1050px;\">\n");
      out.write("                        <hr><h1>Información familiar</h1>\n");
      out.write("                        <input type=\"text\" name=\"live_User\" class=\"login-input\" placeholder=\"Usted vive actualmente con\">\n");
      out.write("                        <input type=\"text\" name=\"state_User\" class=\"login-input\" placeholder=\"Estado civil\">\n");
      out.write("                        <input type=\"text\" name=\"numherm_User\" class=\"login-input\" placeholder=\"Número de hermanos\">\n");
      out.write("                        <input type=\"text\" name=\"lugarherm_User\" class=\"login-input\" placeholder=\"¿Qué lugar ocupa entre los hermanos?\">\n");
      out.write("                        <input type=\"text\" name=\"emb_User\" class=\"login-input\" placeholder=\"Se encuentra en estado de embarazo?\">\n");
      out.write("                        <input type=\"text\" name=\"mesemb_User\" class=\"login-input\" placeholder=\"En qué mes de embarazo se encuentra.\">\n");
      out.write("                        <input type=\"text\" name=\"abuelos_User\" class=\"login-input\" placeholder=\"¿Sus padres comparten vivienda con sus abuelos?\">\n");
      out.write("                        <input type=\"text\" name=\"hijos_User\" class=\"login-input\" placeholder=\"¿Tiene hijos?\">\n");
      out.write("                        <input type=\"text\" name=\"head_User\" class=\"login-input\" placeholder=\"Es madre cabeza de familia\">\n");
      out.write("                        <input type=\"text\" name=\"numhijos_User\" class=\"login-input\" placeholder=\"Número de hijos\">\n");
      out.write("                        <input type=\"text\" name=\"agehijos_User\" class=\"login-input\" placeholder=\"Edad de los hijos\">\n");
      out.write("                        <input type=\"text\" name=\"padres_User\" class=\"login-input\" placeholder=\"Escolaridad de lo padres\">\n");
      out.write("                        <input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\">\n");
      out.write("                        <p class=\"login-help\"><a href=\"logout\">Cerrar Sesion</a></p>\n");
      out.write("                        <p class=\"login-help\"><a href=\"perfil.jsp\">¡Ya he terminado<br>Salir!</a></p>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
