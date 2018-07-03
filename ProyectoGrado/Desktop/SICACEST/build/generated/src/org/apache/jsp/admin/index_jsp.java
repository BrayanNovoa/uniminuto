package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Controlador.ConsultasAdmin;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Inicio De Sesión Del Administrador</title>\n");
      out.write("        <script src=\"../js/main.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"headerImage\">\n");
      out.write("            <img src=\"../img/banner.png\" alt=\"Sistema de Información Génesis UNIMINUTO\" class=\"headerImg\" title=\"Sistema de Información Génesis UNIMINUTO\" width=\"100%\" vspace=\"0\" border=\"0\" hspace=\"0\" height=\"170\" align=\"middle\">\n");
      out.write("        </div>\n");
      out.write("        <form action=\"../adminlogin\" class=\"login\" method=\"post\" id=\"formlogin\">\n");
      out.write("            <h1>Sistema de Caracterización Académica y Estudiantil</h1>\n");
      out.write("            <h1>SICACEST</h1>\n");
      out.write("            <table class=\"login\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>\n");
      out.write("                        <input type=\"text\" name=\"id_User\" class=\"login-input\" placeholder=\"Id\" autocomplete=\"off\" id=\"txtid\" maxlength=\"9\" />\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>\n");
      out.write("                        <input type=\"password\" name=\"pass_User\" class=\"login-input\" placeholder=\"Contraseña\" id=\"txtpass\"/>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>\n");
      out.write("                        <input type=\"button\" class=\"perfil-submit\" value=\"Ingresar\" id=\"btnlogin\"/>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            <p class=\"login-help\">\n");
      out.write("                <br><a href=\"resetpass.jsp\">Olvidó su contraseña?</a>\n");
      out.write("            </p>\n");
      out.write("        </form>\n");
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
