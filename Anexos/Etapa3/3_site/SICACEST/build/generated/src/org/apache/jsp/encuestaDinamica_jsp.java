package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import controller.ConexionDB;
import java.sql.SQLException;

public final class encuestaDinamica_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_dependants.add("/WEB-INF/jspf/jsDynamic.jspf");
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
    String usurio = request.getParameter("id_User");
    if(sesion==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }
    String nombreEncuesta=null;
    String nombrePregunta=null;
    String tipoPregunta = null;
    //String encuesta;
    int numEncuestas=0;
    int numPreguntas=0;
    ConexionDB conexion = new ConexionDB();
    Connection con=conexion.getConexion();
    String consulta="";
    Connection cn =null;
    Statement st =null;
    ResultSet rs = null;
    String jsPregunta=null;
    String jsFunction=null;
    String jsGuardarPreguntas=null;
    String jsCode=null;
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
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/pestanas.css\">\n");
      out.write("    ");
      out.write('\n');
      out.write('\n');

    try{
        consulta ="SELECT COUNT(*) FROM tb_encuestas;";
        //st = con.createStatement();
        rs=st.executeQuery(consulta);
        while(rs.next()){
            numEncuestas=rs.getInt(1);
            //System.out.println("Contando las encuestas existentes\nTotal: "+numEncuestas);
        }
        //st.close();
        //rs.close();
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
      out.write("    </head>\n");
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
        consulta ="SELECT encuesta FROM tb_encuestas WHERE encuesta_id = "+i+";";
        //System.out.println(consulta);
        //st = con.createStatement();
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
        consulta ="SELECT encuesta FROM tb_encuestas WHERE encuesta_id = "+i+";";
        //System.out.println(consulta);
        //st = con.createStatement();
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
      out.write("                    ");

                    out.println("<!--Pestaña "+nombreEncuesta+"-->");
                    out.println("<input id=\"tab-"+i+"\" type=\"radio\" name=\"tab-group\"/>");
                    out.println("<label for=\"tab-"+i+"\">"+nombreEncuesta+"</label>");
                }
            }
            
      out.write("\n");
      out.write("            <!--Contenido a mostrar/ocultar-->\n");
      out.write("            <div id=\"encuesta\">\n");
      out.write("                <!--Creación dinámica de formularios-->\n");
      out.write("                ");

            for(int i=1;i<=numEncuestas;i++){
                jsFunction="$(function(){\n\t\t\t$(\"#guardarEncuesta"+i+"\").click(function(){\n";
                
      out.write("\n");
      out.write("                ");
      out.write('\n');
      out.write('\n');

    try{
        consulta ="SELECT encuesta FROM tb_encuestas WHERE encuesta_id = "+i+";";
        //System.out.println(consulta);
        //st = con.createStatement();
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
      out.write("                ");

                //System.out.println("Construyendo las encuestas");
                //System.out.println("Construyendo la encuesta "+i+": "+nombreEncuesta);
                out.println("\t<div id=\"encuesta-"+i+"\">");
                out.println("\t<form action=\"insRespuestas\" class=\"login\" method=\"\">");
                en = en+1;
                
      out.write("\n");
      out.write("                ");
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
      out.write("                ");
out.println("\t<h1>"+nombreEncuesta+"</h1><hr>");
      out.write("\n");
      out.write("                ");
      out.write('\n');
      out.write('\n');

    jsCode="";
    try{
        int p =0;
        //jsPregunta=jsPregunta+preg;
        consulta ="SELECT pregunta, tipo_pregunta FROM tb_preguntas AS P, tb_tipo_preguntas AS TP WHERE encuesta_id IN(SELECT encuesta_id FROM tb_encuestas WHERE encuesta_id="+i+")AND TP.tipo_pregunta_id=P.tipo_pregunta_id;";
        
        //st = con.createStatement();
        rs = st.executeQuery(consulta);
        //out.println(jsFunction);
        //System.out.println(jsFunction);
        while(rs.next()){
            p= p+1;
            pre="enc"+en+"pre"+p;
            jsPregunta="var f"+pre+"=$(\"#"+pre+"\").val();\n";
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("    ");
//jsCode=jsCode+jsPregunta;
      out.write('\n');
      out.write("\n");
      out.write("            ");
nombrePregunta=rs.getString(1);
            tipoPregunta=rs.getString(2);
            try{
                if(tipoPregunta.equals("ARCHIVO")){
                    out.print("<input type=\"text\" id=\""+pre+"\" name=\"archivo\" class=\"login-input\" placeholder=\""+nombrePregunta+"\">\n");
                }if(tipoPregunta.equals("MULTIPLE")){
                    out.print("<input type=\""+tipoPregunta+"\" id=\""+pre+"\" name=\"respuestas\" class=\"login-input\" placeholder=\""+nombrePregunta+"\">\n");
                }if(tipoPregunta.equals("TEXTO")){
                    jsCode=jsCode+jsPregunta;
                    out.print("<input type=\"text\" id=\""+pre+"\" name=\"respuestas\" class=\"login-input\" placeholder=\""+nombrePregunta+"\">\n");
                }
            }catch(Exception e){
                
            }
        }
        out.print("\t<input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\"></form></div>");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            ");
out.print(jsFunction+jsCode);
      out.write("\n");
      out.write("        </script>\n");
      out.write("        ");
p=0;
        st.close();
        rs.close();
        
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
      out.write("                ");
System.out.println("Nombre pregunta "+i+" :"+nombrePregunta);
      out.write("\n");
      out.write("                ");
//@include file="WEB-INF/jspf/jsDynamic.jspf"
      out.write("\n");
      out.write("                ");

                    //for(int j=1;j<=numPreguntas ;j++){
                    //System.out.println("Nombre pregunta: "+nombrePregunta);
                    //System.out.println(nombrePregunta);
                    //System.out.println(tipoPregunta);
                //}
                //out.print(jsCode+"\n</script>");
                out.println("\t<input type=\"submit\" class=\"perfil-submit\" value=\"Guardar\">");
                out.println("\t</form>");
                out.println("\t</div>\n");
            }
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"js/inhabilitar.js\"></script>\n");
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
