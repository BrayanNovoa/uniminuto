package org.apache.jsp.NO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import Controlador.ConexionDB;

public final class encuestaDinamica_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/NO/../WEB-INF/jspf/ContarEncuestas.jspf");
    _jspx_dependants.add("/NO/../WEB-INF/jspf/style.jspf");
    _jspx_dependants.add("/NO/../WEB-INF/jspf/ObtenerEncuestas.jspf");
    _jspx_dependants.add("/NO/../WEB-INF/jspf/ContarPreguntas.jspf");
    _jspx_dependants.add("/NO/../WEB-INF/jspf/ObtenerPreguntas.jspf");
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
      out.write("<!DOCTYPE html>\n");
 
    HttpSession objsesion = request.getSession(false);
    String sesion= (String)objsesion.getAttribute("SesionUsuario");
    String id_buscarrio = request.getParameter("id_User");    
    String nombreEncuesta=null;
    String nombrePregunta=null;
    //String encuesta;
    int numEncuestas=0;
    int numPreguntas=0;
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

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"description\" content=\"Encuesta de caracterizacion estudiantil UNIMINUTO.\">\n");
      out.write("        <title>Encuesta de caracterización estudiantil UNIMINUTO.</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/pestanas.css\">        \n");
      out.write("        <!--<script src=\"js/inhabilitar.js\"></script>-->\n");
      out.write("    </head>\n");
      out.write("    ");
      out.write('\n');
      out.write('\n');

    try{
        Connection con=conexion.getConexion();
        consulta ="SELECT COUNT(*) FROM tb_encuestas;";
        st = con.createStatement();
        rs=st.executeQuery(consulta);
        while(rs.next()){
            numEncuestas=rs.getInt(1);
            System.out.println("Contando las encuestas existentes\nTotal: "+numEncuestas);
        }
        st.close();
        rs.close();
        //con.close();
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
            out.println("#container input#tab-"+i+":checked ~ #content #content-"+i+",");
        }
        if(i==numEncuestas){
            out.print("#container input#tab-"+i+":checked ~ #content #content-"+i);
            out.print(" {\n");
        }
    }
    out.println("\topacity: 1;");
    out.println("\tz-index: 100;");
    out.println("}");

      out.write("\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"container\">\n");
      out.write("            <!--Creación dinámica de tabs-->\n");
      out.write("            ");

            System.out.println("Construyendo TABS");
            for(int i=1; i<=numEncuestas;i++){
                if(i==1){
                    
      out.write("\n");
      out.write("                    ");
      out.write('\n');
      out.write('\n');

    try{
        Connection con=conexion.getConexion();
        consulta ="SELECT nombre_encuesta FROM tb_encuestas WHERE id = "+i+";";
        //System.out.println(consulta);
        st = con.createStatement();
        rs = st.executeQuery(consulta);
        if(rs.absolute(1)){
            nombreEncuesta=rs.getString(1);
            System.out.println("Encuesta #"+i+": "+nombreEncuesta);
        }
        st.close();
        rs.close();
        //con.close();
        }catch(Exception e){
            System.out.println("ERROR: "+e);
            System.out.println("No ha sido posible obtener el nombre de la encuesta"+e);
        }finally{
            try{
                //if (getConexion()!=null)getConexion().close();
                if (st!=null)st.close();
                if (rs!=null)rs.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }

      out.write("\n");
      out.write("                    ");

                    out.println("<!--Pestaña "+nombreEncuesta+"-->");
                    out.println("<input id=\"tab-"+i+"\" type=\"radio\" name=\"tab-group\" checked=\"checked\"/>");
                    out.println("<label for=\"tab-"+i+"\">"+nombreEncuesta+"</label>");
                }
                if(i>1){
                    
      out.write("\n");
      out.write("                    ");
      out.write('\n');
      out.write('\n');

    try{
        Connection con=conexion.getConexion();
        consulta ="SELECT nombre_encuesta FROM tb_encuestas WHERE id = "+i+";";
        //System.out.println(consulta);
        st = con.createStatement();
        rs = st.executeQuery(consulta);
        if(rs.absolute(1)){
            nombreEncuesta=rs.getString(1);
            System.out.println("Encuesta #"+i+": "+nombreEncuesta);
        }
        st.close();
        rs.close();
        //con.close();
        }catch(Exception e){
            System.out.println("ERROR: "+e);
            System.out.println("No ha sido posible obtener el nombre de la encuesta"+e);
        }finally{
            try{
                //if (getConexion()!=null)getConexion().close();
                if (st!=null)st.close();
                if (rs!=null)rs.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }

      out.write("\n");
      out.write("                    ");

                    out.println("<!--Pestaña "+nombreEncuesta+"-->");
                    out.println("<input id=\"tab-"+i+"\" type=\"radio\" name=\"tab-group\"/>");
                    out.println("<label for=\"tab-"+i+"\">"+nombreEncuesta+"</label>");
                }
                
            }
            
      out.write("\n");
      out.write("            <!--Contenido a mostrar/ocultar-->\n");
      out.write("            <div id=\"content\">\n");
      out.write("                <!--Creación dinámica de formularios-->\n");
      out.write("                ");
System.out.println("Construyendo las encuestas");
      out.write("\n");
      out.write("                ");

            for(int i=1;i<=numEncuestas;i++){
                
      out.write("\n");
      out.write("                ");
      out.write('\n');
      out.write('\n');

    try{
        Connection con=conexion.getConexion();
        consulta ="SELECT nombre_encuesta FROM tb_encuestas WHERE id = "+i+";";
        //System.out.println(consulta);
        st = con.createStatement();
        rs = st.executeQuery(consulta);
        if(rs.absolute(1)){
            nombreEncuesta=rs.getString(1);
            System.out.println("Encuesta #"+i+": "+nombreEncuesta);
        }
        st.close();
        rs.close();
        //con.close();
        }catch(Exception e){
            System.out.println("ERROR: "+e);
            System.out.println("No ha sido posible obtener el nombre de la encuesta"+e);
        }finally{
            try{
                //if (getConexion()!=null)getConexion().close();
                if (st!=null)st.close();
                if (rs!=null)rs.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }

      out.write("\n");
      out.write("                ");

                System.out.println("Construyendo las encuesta "+i+" "+nombreEncuesta);
                System.out.println("Nombre pregunta: "+nombrePregunta);
                out.println("\t<div id=\"content-"+i+"\">");
                out.println("\t<form action=\"../insRespuestas\" class=\"login\" method=\"\">");
                
      out.write("\n");
      out.write("                ");
      out.write('\n');
      out.write('\n');

    try{
        Connection con=conexion.getConexion();
        consulta ="SELECT COUNT(*) FROM tb_preguntas WHERE encuesta_id = "+i+";";
        st = con.createStatement();
        rs=st.executeQuery(consulta);
        System.out.println("Contando las preguntas de la encuesta :"+ nombreEncuesta);
        while(rs.next()){
            numPreguntas=rs.getInt(1);
            System.out.println("Cantidad de preguntas: "+numPreguntas);
        }
        st.close();
        rs.close();
        //con.close();
    }catch(Exception e){
        System.out.println("Error: "+e);
    }

      out.write("\n");
      out.write("                ");

                out.println("\t<h1>"+nombreEncuesta+" Preguntas: "+numPreguntas+"<h1/><hr>");
                
      out.write("\n");
      out.write("                ");
      out.write('\n');
      out.write('\n');

    try{
        Connection con=conexion.getConexion();
        consulta ="SELECT pregunta FROM tb_preguntas WHERE encuesta_id = "+i+";";
        //System.out.println(consulta);
        st = con.createStatement();
        rs = st.executeQuery(consulta);
        while(rs.next()){
            nombrePregunta=rs.getString(1);
            System.out.println("Pregunta #"+i+": "+ nombrePregunta);
            out.println("<input type=\"text\" name=\""+i+"\" class=\"login-input\" placeholder=\""+nombrePregunta+"\">");
        }
        st.close();
        rs.close();
        //con.close();
        }catch(Exception e){
            System.out.println("ERROR: "+e);
            System.out.println("No ha sido posible obtener el nombre de la pregunta. "+e);
        }finally{
            try{
                //if (getConexion()!=null)getConexion().close();
                if (st!=null)st.close();
                if (rs!=null)rs.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }

      out.write("\n");
      out.write("                \n");
      out.write("                ");

                for(int j=1;j<=numPreguntas ;j++){
                    System.out.println(nombrePregunta);
                }
                out.println("\t<input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\">");
                out.println("\t</form>");
                out.println("\t</div>\n");
                out.println("");
            }
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
