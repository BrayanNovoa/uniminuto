package org.apache.jsp.admin.reportes;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Controlador.ConsultasAdmin;
import Controlador.ConexionDB;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/admin/reportes/../../WEB-INF/jspf/buscarUsuario.jspf");
  }

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
//    if(sesion==null){
//        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
//    }

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Reportes - Administrador</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../css/style.css\">\n");
      out.write("        <style>\n");
      out.write("            button {\n");
      out.write("                padding: 12px 50px;\n");
      out.write("\t\tborder: none;\n");
      out.write("\t\tbackground-color: rgb(91,234,208);\n");
      out.write("\t\tcolor: #333;\n");
      out.write("\t\tcursor: pointer;\n");
      out.write("\t\tdisplay: inline-block;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Reporte de estudiantes:</h1>\n");
      out.write("\t<hr />\n");
      out.write("        <form action=\"\" class=\"login\" method=\"post\" style=\"width: 1000px;\">\n");
      out.write("            <h1>Buscar por id</h1>\n");
      out.write("            <input type=\"text\" name=\"id_User\" class=\"login-input\" placeholder=\"Id\" autocomplete=\"off\" id=\"txtid\" maxlength=\"9\">\n");
      out.write("            <input type=\"submit\"  class=\"perfil-submit\" value=\"Buscar Usuario\">\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
String buscar = request.getParameter("id_User");
      out.write("\n");
      out.write("<table border=\"2\" width=\"1000\" align=\"center\">\n");
      out.write("            <!--Contenido de Datos Básicos-->\n");
      out.write("            <tr bgcolor=\"#9fa9fb\">\n");
      out.write("                <th colspan=\"14\"><h1 align=\"center\">Datos Básicos del estudiante ");
out.print(buscar); 
      out.write("</h1></th>\n");
      out.write("            </tr>\n");
      out.write("            <tr bgcolor=\"9fa9fb\">\n");
      out.write("                <th colspan=\"3\">Nombres</th>\n");
      out.write("                <th>Primer Apellido</th>\n");
      out.write("                <th>Segundo Apellido</th>\n");
      out.write("                <th>Documento</th>\n");
      out.write("                <th>Sexo</th>\n");
      out.write("                <th>Edad</th>\n");
      out.write("                <th colspan=\"2\">Departamento de nacimiento</th>\n");
      out.write("                <th colspan=\"2\">Ciudad de nacimiento</th>\n");
      out.write("                <th>RH</th>\n");
      out.write("                <th>Actualizar</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

                try{
                    Connection con=conexion.getConexion();
                    consulta ="SELECT nombres, apellido1, apellido2, documento, sexo, edad, id_departamento, id_ciudad, id_rh FROM tb_informacion_personal WHERE id_estudiante = "+buscar+";";
                    st = con.createStatement();
                    rs=st.executeQuery(consulta);
                    while(rs.next()){
                        System.out.println("Validar usuario a mostrar en Datos Básicos");
                        nombres=rs.getString(1);
                        apellido1=rs.getString(2);
                        apellido2=rs.getString(3);
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td id=\"pregunta\" colspan=\"3\">");
out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                            <td colspan=\"2\">");
out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("                            <td colspan=\"2\">");
out.print(rs.getString(8));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(9));
      out.write("</td>\n");
      out.write("                            ");
System.out.println("Imprimiendo la información de Datos Básicos");
      out.write("\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\"actualizarDatos\">\n");
      out.write("                                    <img src=\"img/actualizar.png\" width=\"30\">\n");
      out.write("                                </a>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                    }
                    st.close();
                    rs.close();
                    cn.close();
                }catch(Exception e){
                    System.out.println("Error en la consulta");
                }
            
      out.write("\n");
      out.write("            <!--Contenido de Contacto-->\n");
      out.write("            <tr bgcolor=\"#9fa9fb\">\n");
      out.write("                <th colspan=\"14\"><h1 align=\"center\">Información de contacto del estudiante ");
out.print(nombres+" "+apellido1+" "+apellido2);
      out.write("</h1></th>\n");
      out.write("            </tr>\n");
      out.write("            <tr bgcolor=\"9fa9fb\">\n");
      out.write("                <th colspan=\"2\">Teléfono fijo</th>\n");
      out.write("                <th colspan=\"2\">Teléfono celular</th>\n");
      out.write("                <th colspan=\"4\">Correo electrónico</th>\n");
      out.write("                <th>\n");
      out.write("                    <a href=\"actualizarDatos\">\n");
      out.write("                        Actualizar\n");
      out.write("                    </a>\n");
      out.write("                </th>\n");
      out.write("            </tr>\n");
      out.write("            ");

                try{
                    Connection con=conexion.getConexion();
                    consulta ="SELECT tel_fijo, tel_celular, correo FROM tb_contactos WHERE id_estudiante = "+buscar+";";
                    st = con.createStatement();
                    rs=st.executeQuery(consulta);
                    while(rs.next()){
                        System.out.println("Validar usuario a mostrar en Datos Básicos");
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"2\">");
out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                            <td colspan=\"2\">");
out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                            <td colspan=\"4\">");
out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                            ");
System.out.println("Imprimiendo la información de contacto");
      out.write("\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\"actualizarDatos\">\n");
      out.write("                                    <img src=\"img/actualizar.png\" width=\"30\">\n");
      out.write("                                </a>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                    }
                    st.close();
                    rs.close();
                    cn.close();
                }catch(Exception e){
                    System.out.println("Error en la consulta");
                }
            
      out.write("\n");
      out.write("            <tr bgcolor=\"#9fa9fb\">\n");
      out.write("                <th colspan=\"14\"><h1 align=\"center\">Información de vivienda del estudiante ");
out.print(buscar); 
      out.write("</h1></th>\n");
      out.write("            </tr>\n");
      out.write("            <tr bgcolor=\"9fa9fb\">\n");
      out.write("                <th>Sector</th>\n");
      out.write("                <th>Lugar</th>\n");
      out.write("                <th>Departamento</th>\n");
      out.write("                <th>Ciudad</th>\n");
      out.write("                <th>Dirección</th>\n");
      out.write("                <th>Barrio</th>\n");
      out.write("                <th>Estrato</th>\n");
      out.write("                <th>Tipo de vivienda</th>\n");
      out.write("                <th>Actualizar</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

                try{
                    Connection con=conexion.getConexion();
                    consulta ="SELECT loc.sector, loc.lugar, dep.nombre AS departamento, ciu.nombre AS ciudad, loc.direccion, loc.barrio, loc.estrato, loc.tipo_vivienda FROM tb_localizacion AS loc, tb_departamentos as dep, tb_ciudades AS ciu WHERE loc.id_estudiante = "+buscar+" AND dep.nombre IN (SELECT nombre FROM tb_departamentos WHERE loc.tb_ciudades_id_departamento = dep.id_departamento) AND ciu.nombre IN (SELECT nombre FROM tb_ciudades WHERE loc.tb_ciudades_id_ciudad = ciu.id_ciudad);";
                    st = con.createStatement();
                    rs=st.executeQuery(consulta);
                    while(rs.next()){
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(8));
      out.write("</td>\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\"actualizarDatos\">\n");
      out.write("                                    <img src=\"img/actualizar.png\" width=\"30\">\n");
      out.write("                                </a>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                    }
                    st.close();
                    rs.close();
                    cn.close();
                }catch(Exception e){}
            
      out.write("\n");
      out.write("            <tr bgcolor=\"#9fa9fb\">\n");
      out.write("                <th colspan=\"14\"><h1 align=\"center\">Información de salud de estudiante ");
out.print(buscar); 
      out.write("</h1></th>\n");
      out.write("            </tr>\n");
      out.write("            <tr bgcolor=\"9fa9fb\">\n");
      out.write("                <th>SISBEN</th>\n");
      out.write("                <th>EPS</th>\n");
      out.write("                <th>Enfermedad</th>\n");
      out.write("                <th>Condición especial</th>\n");
      out.write("                <th>Dificultad</th>\n");
      out.write("                <th>Consumo alcohol</th>\n");
      out.write("                <th>Consumo tabaco</th>\n");
      out.write("                <th>Actualizar</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

                try{
                    Connection con=conexion.getConexion();
                    consulta ="SELECT SISBEN, EPS, enfermedad, especiales, dificultad, alcohol, cigarrillo FROM tb_info_salud WHERE id_estudiante = "+buscar+";";
                    st = con.createStatement();
                    rs=st.executeQuery(consulta);
                    while(rs.next()){
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\"actualizarDatos\">\n");
      out.write("                                    <img src=\"img/actualizar.png\" width=\"30\">\n");
      out.write("                                </a>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                    }
                    st.close();
                    rs.close();
                    cn.close();
                }catch(Exception e){}
            
      out.write("\n");
      out.write("            <tr bgcolor=\"#9fa9fb\">\n");
      out.write("                <th colspan=\"14\"><h1 align=\"center\">Información financiera del estudiante ");
out.print(buscar); 
      out.write("</h1></th>\n");
      out.write("            </tr>\n");
      out.write("            <tr bgcolor=\"9fa9fb\">\n");
      out.write("                <th>Modo de pago</th>\n");
      out.write("                <th>Quién paga</th>\n");
      out.write("                <th>Situacion laboral</th>\n");
      out.write("                <th>Sector laboral</th>\n");
      out.write("                <th>Tipo de trabajo</th>\n");
      out.write("                <th>Ingreso Personal</th>\n");
      out.write("                <th>Ingreso Familiar</th>\n");
      out.write("                <th>Actualizar</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

                try{
                    Connection con=conexion.getConexion();
                    consulta ="SELECT medio_pago, quien_paga, situacion_laboral, sector_laboral, tipo_trabajo, ingreso_personal, ingreso_familiar FROM tb_info_financiera WHERE id_estudiante = "+buscar+";";
                    st = con.createStatement();
                    rs=st.executeQuery(consulta);
                    while(rs.next()){
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\"actualizarDatos\">\n");
      out.write("                                    <img src=\"img/actualizar.png\" width=\"30\">\n");
      out.write("                                </a>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                    }
                    st.close();
                    rs.close();
                    cn.close();
                }catch(Exception e){}
            
      out.write("\n");
      out.write("            \n");
      out.write("            <tr bgcolor=\"#9fa9fb\">\n");
      out.write("                <th colspan=\"14\"><h1 align=\"center\">Información familiar del estudiante ");
out.print(buscar); 
      out.write("</h1></th>\n");
      out.write("            </tr>\n");
      out.write("            <tr bgcolor=\"9fa9fb\">\n");
      out.write("                <th>Vive con</th>\n");
      out.write("                <th>Estado civil</th>\n");
      out.write("                <th>Hermanos</th>\n");
      out.write("                <th>Lugar entre hermanos</th>\n");
      out.write("                <th>Padres viven con abuelos</th>\n");
      out.write("                <th>Embarazo</th>\n");
      out.write("                <th>Mes</th>\n");
      out.write("                <th>Cabeza Familia</th>\n");
      out.write("                <th>Tiene hijos</th>\n");
      out.write("                <th>Numero hijos</th>\n");
      out.write("                <th>Edades hijos</th>\n");
      out.write("                <th>scolaridad padre</th>\n");
      out.write("                <th>scolaridad madre</th>\n");
      out.write("                <th>Actualizar</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

                try{
                    Connection con=conexion.getConexion();
                    consulta ="SELECT vive_con, estado_civil, num_hermanos,lugar_hermanos, padres_viven_con_abuelos, embarazo, mes_embarazo, cabeza_familia, hijos, num_hijos, edad_hijos, escolaridad_padre, escolaridad_madre FROM tb_info_familiar WHERE id_estudiante = "+buscar+";";
                    st = con.createStatement();
                    rs=st.executeQuery(consulta);
                    while(rs.next()){
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(8));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(9));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(10));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(11));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(12));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString(13));
      out.write("</td>\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\"actualizarDatos\">\n");
      out.write("                                    <img src=\"img/actualizar.png\" width=\"30\">\n");
      out.write("                                </a>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                    }
                    st.close();
                    rs.close();
                    cn.close();
                }catch(Exception e){}
            
      out.write("\n");
      out.write("        </table>");
      out.write("\n");
      out.write("            <button class=\"perfil-submit\" id=\"btnlogin\">Exportar a PDF</button>\n");
      out.write("        </form>\n");
      out.write("            <!--<script src=\"../../js/reporteEstudiante.js\"></script>-->\n");
      out.write("        <script src=\"../../js/jspdf.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            //Iniciamos la librería jsPDF\n");
      out.write("            const pdf = new jsPDF();\n");
      out.write("            // Seleccionamos el boton\n");
      out.write("            let boton = document.querySelector('button');\n");
      out.write("            // Seleccionamos el input\n");
      out.write("            let input = document.querySelector('input');\n");
      out.write("            let nombre = document.getElementById('pregunta');\n");
      out.write("            // Agregamos un evento 'click' al boton\n");
      out.write("            boton.addEventListener('click', printPDF);\n");
      out.write("            //Opciones actuales\n");
      out.write("            function printPDF(){\n");
      out.write("            \t// @param 1 - Coordenada\n");
      out.write("            \t// @param 1 - Coordenada\n");
      out.write("            \t// @param 1 - String o array de Strins a ser agregados a la página. Cada linea es agregada una linea abajo, las configuraciones de espaciado son declaradas antes de esta llamada.\n");
      out.write("            \tpdf.text(10, 10, 'Corporación Universitaria Minuto De Dios');\n");
      out.write("                pdf.text(10, 20, 'Vicerrectoría Regional: LLANOS');\n");
      out.write("                pdf.text(10, 30, 'Reporte General Del Estudiante: ID: ');\n");
      out.write("            \t// Agregamos las variables disponibles.\n");
      out.write("                \n");
      out.write("                pdf.text(10, 100,  pregunta.innerHTML);\n");
      out.write("                \n");
      out.write("                pdf.text(10, 30, 'Reporte General Del Estudiante: ID: ');\n");
      out.write("                pdf.text(10, 100,  pregunta.innerHTML);\n");
      out.write("                \n");
      out.write("                pdf.text(10, 50, 'Nombres');\n");
      out.write("                pdf.text(10, 55,  pregunta.innerHTML);\n");
      out.write("                \n");
      out.write("            \t// Guardamos el documento y le asigna un nombre\n");
      out.write("            \tpdf.output('save', 'Estudiantes.pdf')\n");
      out.write("            \t//pdf.save();\n");
      out.write("            \tconsole.log('Guardando');\n");
      out.write("            }\n");
      out.write("\t</script>\n");
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
