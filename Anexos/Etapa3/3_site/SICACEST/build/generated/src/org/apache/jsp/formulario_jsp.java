package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class formulario_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');
 
    HttpSession objsesion = request.getSession(false);
    String usuario= (String)objsesion.getAttribute("SesionUsuario");
    /*HttpSession objsesion2 = request.getSession(false);
    String mail= (String)objsesion2.getAttribute("MailUsuario");*/
    
    
    if(usuario==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Encuesta De Caracterización Estudiantes Uniminuto.</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/pestanas.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table class=\"perfil-form\">\n");
      out.write("            <tr class=\"perfil-form\">\n");
      out.write("                <th colspan=\"3\">\n");
      out.write("                    <h1>Encuesta</h1>\n");
      out.write("                </th>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <th>\n");
      out.write("                    <form action=\"encuestar\" class=\"login\" method=\"post\">\n");
      out.write("                        <hr><h1>Información Personal</h1>\n");
      out.write("                        <input type=\"text\" name=\"names_User\" class=\"login-input\" placeholder=\"Nombres\">\n");
      out.write("                        <input type=\"text\" name=\"apes_User\" class=\"login-input\" placeholder=\"Apellidos\">\n");
      out.write("                        <input type=\"text\" name=\"docu_User\" class=\"login-input\" placeholder=\"Documento de identidad\">\n");
      out.write("                        <input type=\"text\" name=\"sex_User\" class=\"login-input\" placeholder=\"Sexo\">\n");
      out.write("                        <input type=\"text\" name=\"age_User\" class=\"login-input\" placeholder=\"Edad\">\n");
      out.write("                        <input type=\"text\" name=\"depto_User\" class=\"login-input\" placeholder=\"Departamento de Nacimiento\">\n");
      out.write("                        <input type=\"text\" name=\"nacim_User\" class=\"login-input\" placeholder=\"Lugar de Nacimiento\">\n");
      out.write("                        <input type=\"text\" name=\"rh_User\" class=\"login-input\" placeholder=\"Tipo de sangre\">\n");
      out.write("                        <input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\">\n");
      out.write("                    </form>\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    <form class=\"login\" method=\"post\">\n");
      out.write("                        <h1>Encuesta de ");
out.print(usuario); 
      out.write("</h1>\n");
      out.write("                        <input type=\"text\" name=\"id_User\" class=\"login-input\" value=\"");
out.print(usuario); 
      out.write("\" readonly=\"readonly\">\n");
      out.write("                        <input type=\"text\" name=\"name_User\" class=\"login-input\" placeholder=\"Correo Uniminuto");
/*out.print(mail); */
      out.write("\" readonly=\"readonly\">\n");
      out.write("                        <hr><h1>Información De Contacto</h1>\n");
      out.write("                        <input type=\"text\" name=\"tel_User\" class=\"login-input\" placeholder=\"Teléfono Fijo\">\n");
      out.write("                        <input type=\"text\" name=\"cel_User\" class=\"login-input\" placeholder=\"Teléfono Celular\">\n");
      out.write("                        <input type=\"text\" name=\"mail_User\" class=\"login-input\" placeholder=\"Correo Electrónico\">\n");
      out.write("                        <input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\">\n");
      out.write("                    </form>\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    <form action=\"\" class=\"login\" method=\"post\">\n");
      out.write("                        <hr><h1>Información </h1>\n");
      out.write("                        <input type=\"text\" name=\"sector_User\" class=\"login-input\" placeholder=\"¿Vive En Sector Rural O Urbano?\">\n");
      out.write("                        <input type=\"text\" name=\"place_User\" class=\"login-input\" placeholder=\"Lugar De Vivienda\">\n");
      out.write("                        <input type=\"text\" name=\"local_User\" class=\"login-input\" placeholder=\"Departamento\">\n");
      out.write("                        <input type=\"text\" name=\"city_User\" class=\"login-input\" placeholder=\"Ciudad\">\n");
      out.write("                        <input type=\"text\" name=\"dir_User\" class=\"login-input\" placeholder=\"Dirección De Residencia\">\n");
      out.write("                        <input type=\"text\" name=\"barrio_User\" class=\"login-input\" placeholder=\"Barrio\">\n");
      out.write("                        <input type=\"text\" name=\"estrato_User\" class=\"login-input\" placeholder=\"Estrato Socioeconómico\">\n");
      out.write("                        <input type=\"text\" name=\"vivienda_User\" class=\"login-input\" placeholder=\"Su Vivienda Es\">\n");
      out.write("                        <input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\">\n");
      out.write("                    </form>\n");
      out.write("                </th>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <th>\n");
      out.write("                    <form action=\"\" class=\"login\" method=\"post\">\n");
      out.write("                        <hr><h1>Información De Salud</h1>\n");
      out.write("                        <input type=\"text\" name=\"sisben_User\" class=\"login-input\" placeholder=\"¿Pertenece Al SISBEN?\">\n");
      out.write("                        <input type=\"text\" name=\"eps_User\" class=\"login-input\" placeholder=\"¿Está Afiliado A EPS?\">\n");
      out.write("                        <input type=\"text\" name=\"problem_User\" class=\"login-input\" placeholder=\"¿Presenta Algún Problema De Salud O Enfermedad Crónica?\">\n");
      out.write("                        <input type=\"text\" name=\"poblacion_User\" class=\"login-input\" placeholder=\"Pertenece usted a las siguientes poblaciones especiales\">\n");
      out.write("                        <input type=\"text\" name=\"difi_User\" class=\"login-input\" placeholder=\"Alguna dificultad que pueda afectar su vida académica universitaria (visual, motora, auditiva, cognitiva, entre otras)\">\n");
      out.write("                        <input type=\"text\" name=\"drink_User\" class=\"login-input\" placeholder=\"Si consume bebidas alcohólica, por favor indique la frecuencia\">\n");
      out.write("                        <input type=\"text\" name=\"smoke_User\" class=\"login-input\" placeholder=\"Si fuma por favor indique la frecuencia\">\n");
      out.write("                        <input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\">\n");
      out.write("                    </form>\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    <form action=\"\" class=\"login\" method=\"post\">\n");
      out.write("                        <hr><h1>Información Financiera</h1>\n");
      out.write("                        <input type=\"text\" name=\"pago_User\" class=\"login-input\" placeholder=\"Medios de pago de la matrícula:\">\n");
      out.write("                        <input type=\"text\" name=\"quienpaga_User\" class=\"login-input\" placeholder=\"¿Quién paga la matrícula?\">\n");
      out.write("                        <input type=\"text\" name=\"work_User\" class=\"login-input\" placeholder=\"Situacion Laboral\">\n");
      out.write("                        <input type=\"text\" name=\"workspace_User\" class=\"login-input\" placeholder=\"Sector al que pertenece su trabajo\">\n");
      out.write("                        <input type=\"text\" name=\"typework_User\" class=\"login-input\" placeholder=\"trabaja como idependiente o empleado\">\n");
      out.write("                        <input type=\"text\" name=\"ingper_User\" class=\"login-input\" placeholder=\"Ingreso mensual suyo\">\n");
      out.write("                        <input type=\"text\" name=\"ingfam_User\" class=\"login-input\" placeholder=\"Ingreso mensual de su familia\">\n");
      out.write("                        <input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\">\n");
      out.write("                    </form>\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    <form action=\"\" class=\"login\" method=\"post\">\n");
      out.write("                        <hr><h1>Información Familiar</h1>\n");
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
      out.write("                        <p class=\"login-help\"><a href=\"logout\">¡Ya he terminado<br>Salir!</a></p>\n");
      out.write("                    </form>\n");
      out.write("                </th>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
