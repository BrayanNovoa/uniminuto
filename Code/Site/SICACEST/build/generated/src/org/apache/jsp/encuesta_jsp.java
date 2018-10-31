package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import controller.ConexionDB;
import java.sql.SQLException;

public final class encuesta_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(6);
    _jspx_dependants.add("/WEB-INF/jspf/ContarEncuestas.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/style.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/ObtenerEncuestas.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/ContarPreguntas.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/ObtenerPreguntas.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/ObtenerPosiblesRespuestas.jspf");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
 
    HttpSession objsesion = request.getSession(false);
    String sesion= (String)objsesion.getAttribute("SesionUsuario");
    String usurioId = request.getParameter("id_User");
    if(sesion==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }else{
        String nombreEncuesta=null;
        String nombrePregunta=null;
        String tipoPregunta = null;
        //String encuesta;
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
        int g=0;
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"description\" content=\"Encuesta de caracterizacion estudiantil UNIMINUTO.\">\n");
      out.write("        <title>Encuesta de caracterización estudiantil UNIMINUTO.</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"Sistema de Caracterización Estudiantil\">\n");
      out.write("        <meta name=\"author\" content=\"Brayan Novoa\">\n");
      out.write("        \n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"themes/grayscale/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom fonts for this template -->\n");
      out.write("        <link href=\"themes/grayscale/vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Varela+Round\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Personal Styles\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("         -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/pestanas.css\">\n");
      out.write("        \n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"themes/grayscale/css/grayscale.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"themes/grayscale/css/grayscale.min.css\" rel=\"stylesheet\">\n");
      out.write("    ");
      out.write('\n');
      out.write('\n');

    try{
        consulta ="SELECT COUNT(*) FROM tb_encuestas;";
        st = con.createStatement();
        rs=st.executeQuery(consulta);
        while(rs.next()){
            numEncuestas=rs.getInt(1);
        }
    }catch(Exception e){
        System.out.println("Error: "+e);
    }

      out.write("\n");
      out.write("    <style>\n");
      out.write("        ");
      out.write('\n');
      out.write('\n');

    for(int i=1;i<=numEncuestas;i++){
        if(i<numEncuestas){
            out.println("#container input#tab"+i+":checked ~ #encuesta #encuesta"+i+",");
        }
        if(i==numEncuestas){
            out.print("#container input#tab"+i+":checked ~ #encuesta #encuesta"+i);
            out.print(" {\n");
        }
    }
    out.println("\topacity: 1;");
    out.println("\tz-index: 100;");
    out.println("}");

      out.write("\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"panel panel-default\">\n");
      out.write("            <div class=\"panel-body\">\n");
      out.write("                <section id=\"contact\" class=\"panel-body\">\n");
      out.write("                    <div id=\"container\">\n");
      out.write("                        <!--Creación dinámica de tabs-->\n");
      out.write("                        ");
//System.out.print("Construyendo TABS");
                        for(int i=1; i<=numEncuestas;i++){
                            if(i==1){
      out.write("\n");
      out.write("                                ");
      out.write('\n');
      out.write('\n');

    try{
        consulta ="SELECT encuesta FROM tb_encuestas WHERE encuesta_id = "+i+";";
        //System.out.println(consulta);
        st = con.createStatement();
        rs = st.executeQuery(consulta);
        if(rs.absolute(1)){
            nombreEncuesta=rs.getString(1);
        }
        }catch(Exception e){
            System.out.println("ERROR: "+e);
            System.out.println("No ha sido posible obtener el nombre de la encuesta. \nERROR: "+e);
        }finally{
            try{
                if (st!=null)st.close();
                if (rs!=null)rs.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }

      out.write("\n");
      out.write("                                ");
out.print("<!--Pestaña "+nombreEncuesta+"-->\n");
                                out.print("<input id=\"tab"+i+"\" type=\"radio\" name=\"tab-group\" checked=\"checked\"/>\n");
                                out.print("<label for=\"tab"+i+"\">"+i+"</label>\n");
                            }
                            if(i>1){
      out.write("\n");
      out.write("                                ");
      out.write('\n');
      out.write('\n');

    try{
        consulta ="SELECT encuesta FROM tb_encuestas WHERE encuesta_id = "+i+";";
        //System.out.println(consulta);
        st = con.createStatement();
        rs = st.executeQuery(consulta);
        if(rs.absolute(1)){
            nombreEncuesta=rs.getString(1);
        }
        }catch(Exception e){
            System.out.println("ERROR: "+e);
            System.out.println("No ha sido posible obtener el nombre de la encuesta. \nERROR: "+e);
        }finally{
            try{
                if (st!=null)st.close();
                if (rs!=null)rs.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }

      out.write("\n");
      out.write("                                <!--Construcción de las Pestañas-->\n");
      out.write("                                ");
out.print("<!--Pestaña "+nombreEncuesta+"-->\n");
                                out.print("<input id=\"tab"+i+"\" type=\"radio\" name=\"tab-group\"/>\n");
                                out.print("<label for=\"tab"+i+"\">"+i+"</label>\n");
                            }
                        }
      out.write("\n");
      out.write("                        <!--Contenido a mostrar/ocultar-->\n");
      out.write("                        <div id=\"encuesta\" class=\"form-group container row\">\n");
      out.write("                            <!--Creación dinámica de formularios-->\n");
      out.write("                            ");

                        for(int i=1;i<=numEncuestas;i++){
      out.write("\n");
      out.write("                            ");
      out.write('\n');
      out.write('\n');

    try{
        consulta ="SELECT encuesta FROM tb_encuestas WHERE encuesta_id = "+i+";";
        //System.out.println(consulta);
        st = con.createStatement();
        rs = st.executeQuery(consulta);
        if(rs.absolute(1)){
            nombreEncuesta=rs.getString(1);
        }
        }catch(Exception e){
            System.out.println("ERROR: "+e);
            System.out.println("No ha sido posible obtener el nombre de la encuesta. \nERROR: "+e);
        }finally{
            try{
                if (st!=null)st.close();
                if (rs!=null)rs.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }

      out.write("\n");
      out.write("                            ");

                            out.print("\t<div id=\"encuesta"+i+"\" class=\"\">");
                            out.print("\t<form action=\"guardando/Respuestas\" method=\"\">");
                            en = en+1;
      out.write("\n");
      out.write("                            ");
      out.write('\n');
      out.write('\n');

    try{
        consulta ="SELECT COUNT(*) FROM tb_preguntas WHERE encuesta_id = "+i+";";
        //st = con.createStatement();
        rs=st.executeQuery(consulta);
        //System.out.println("Contando las preguntas de la encuesta :"+ nombreEncuesta);
        if(rs.absolute(1)){
            numPreguntas=rs.getInt(1);
            //System.out.println("Cantidad de preguntas: "+numPreguntas);
        }
        //st.close();
        //rs.close();
        //con.close();
    }catch(Exception e){
        System.out.println("Error: "+e);
    }

      out.write("\n");
      out.write("                            <h2 class=\"text-white\">");
out.print(nombreEncuesta);
      out.write("</h2>\n");
      out.write("                            ");
      out.write('\n');
      out.write('\n');

    jsCode="";
    try{
        int p =0;
        //jsPregunta=jsPregunta+preg;
        consulta ="SELECT pregunta, tipo_pregunta FROM tb_preguntas AS P, tb_tipo_preguntas AS TP WHERE encuesta_id IN(SELECT encuesta_id FROM tb_encuestas WHERE encuesta_id="+i+")AND TP.tipo_pregunta_id=P.tipo_pregunta_id;";
        
        st = con.createStatement();
        //out.print("<div class=\"form-group\">");
        rs = st.executeQuery(consulta);
        //out.println(jsFunction);
        //System.out.println(jsFunction);
        while(rs.next()){
            p= p+1;
            pre="enc"+en+"pre"+p;
            jsPregunta="var f"+pre+"=$(\"#"+pre+"\").val();\n";
            nombrePregunta=rs.getString(1);
            tipoPregunta=rs.getString(2);
            try{
                if(tipoPregunta.equals("ARCHIVO")){
                    out.print("\t<label for=\""+pre+"\">"+nombrePregunta+"</label>\n");
                    out.print("\t<input type=\"text\" id=\""+pre+"\" name=\"archivo\" class=\"form-control login-input\" placeholder=\""+nombrePregunta+"\"/>\n");
                    //out.print("<input type=\"text\" id=\""+pre+"\" name=\"archivo\" class=\"login-input\" placeholder=\""+nombrePregunta+"\"/>\n");
                }else if(tipoPregunta.equals("DESPLEGABLE")){
                    out.print("\t<label for=\""+pre+"\">"+nombrePregunta+"</label>\n");
                    out.print("\t<select id=\""+pre+"\" name=\"desplegable\" class=\"form-control login-input\" placeholder=\""+nombrePregunta+"\">");
      out.write("\n");
      out.write("                    <!--OBTENEMOS LAS OPCIONES POSIBLES -->\n");
      out.write("                    ");
      out.write('\n');
      out.write('\n');

    try{
        consulta="SELECT r.posible_respuesta FROM tb_preguntas AS p, tb_posibles_respuestas AS r WHERE p.pregunta_id=r.pregunta_id AND p.pregunta='"+nombrePregunta+"';";
        //System.out.println(consulta);
        stpr = con.createStatement();
        rspr = stpr.executeQuery(consulta);
        while(rspr.next()){
            posibleRespuesta=rspr.getString(1);
            out.println("<option>"+posibleRespuesta+"</option>");
        }
        }catch(Exception e){
        System.out.println("Error: "+e);
    }

      out.write('\n');
      out.write("\n");
      out.write("                    ");
out.println("\t</select>");
                }else if(tipoPregunta.equals("MULTIPLE")){
                    out.print("<input type=\""+tipoPregunta+"\" id=\""+pre+"\" name=\"respuestas\" class=\"form-control login-input\" placeholder=\""+nombrePregunta+"\"/>\n");
                }else if(tipoPregunta.equals("TEXTO")){
                    out.print("\t<label for=\""+pre+"\">"+nombrePregunta+"</label>\n");
                    out.print("\t<input type=\"text\" id=\""+pre+"\" name=\"preguntas\" class=\"hide\" value=\""+nombrePregunta+"\"/>\n<!--<img src=\"../img/actualizar.png\" class=\"imgIcon\" />-->\n");
                    out.print("<input type=\"text\" id=\""+pre+"\" name=\"respuestas\" class=\"form-control login-input\" placeholder=\""+nombrePregunta+"\"/>\n");
                }
            }catch(Exception e){
                
            }
        }
        out.print("<input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\" /></div>\n</form>");
      out.write("\n");
      out.write("        <!--<script type=\"text/javascript\">\n");
      out.write("            ");
//out.print(jsFunction+jsCode);
      out.write("\n");
      out.write("        </script>-->\n");
      out.write("        ");
p=0;
        //st.close();
        //rs.close();
        
        }catch(Exception e){
            System.out.println("ERROR: "+e);
            System.out.println("No ha sido posible obtener el nombre de la pregunta. "+e);
        }

      out.write("\n");
      out.write("                            ");
}
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <!--CIERRE DEL CONTENEDOR DE LAS ENCUESTAS-->\n");
      out.write("                    </div>\n");
      out.write("                </section>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"panel-footer\">\n");
      out.write("                <section>\n");
      out.write("                    <footer class=\" page-footer bg-black small text-center text-white-50\">\n");
      out.write("                        <div>\n");
      out.write("                            Copyright &copy; sicacest.com 2018\n");
      out.write("                        </div>\n");
      out.write("                    </footer>\n");
      out.write("                </section>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Bootstrap core JavaScript -->\n");
      out.write("        <script src=\"themes/grayscale/vendor/jquery/jquery.min.js\"></script>\n");
      out.write("        <script src=\"themes/grayscale/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <!-- Plugin JavaScript -->\n");
      out.write("        <script src=\"themes/grayscale/vendor/jquery-easing/jquery.easing.min.js\"></script>\n");
      out.write("        <!-- Custom scripts for this template -->\n");
      out.write("        <script src=\"themes/grayscale/js/grayscale.min.js\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
}//END OF MAIN ELSE.
      out.write("\n");
      out.write("    ");
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
