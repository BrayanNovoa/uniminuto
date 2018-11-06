package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import controller.ConexionDB;
import java.sql.SQLException;

public final class estudiante_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/WEB-INF/jspf/ContarEncuestas.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/ObtenerEncuestas.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/ContarPreguntas.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/LlenarPerfil.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/ArchivoPerfil.jspf");
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
    String usurioId = sesion;//request.getParameter("id_User");
    //out.print(usurioId);
    if(sesion==null){
        request.getRequestDispatcher("sessionerror.jsp").forward(request, response);
    }else{
        String tabId="tabId";
        String nombreEncuesta=null;
        String nombrePregunta=null;
        String tipoPregunta = null;
        String nombreRespuesta;
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
      out.write("<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<head>\n");
      out.write("<title>Perfil del estudiante");
out.println(" "+usurioId);
      out.write("</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"js/perfil.js\"></script>\n");
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
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <hr>\n");
      out.write("    <div class=\"container bootstrap snippet\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-10\"><h1>User name</h1></div>\n");
      out.write("            <div class=\"col-sm-2\"><a href=\"/users\" class=\"pull-right\"><img title=\"profile image\" class=\"img-circle img-responsive\" src=\"http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100\"></a></div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-3\"><!--left col-->\n");
      out.write("                <div class=\"text-center\">\n");
      out.write("                    <img src=\"http://ssl.gstatic.com/accounts/ui/avatar_2x.png\" class=\"avatar img-circle img-thumbnail\" alt=\"avatar\">\n");
      out.write("                    <h6>Upload a different photo...</h6>\n");
      out.write("                    <input type=\"file\" class=\"text-center center-block file-upload\">\n");
      out.write("                </div></hr><br>\n");
      out.write("                <div class=\"panel panel-default\">\n");
      out.write("                    <div class=\"panel-heading\">Website <i class=\"fa fa-link fa-1x\"></i></div>\n");
      out.write("                    <div class=\"panel-body\"><a href=\"http://bootnipets.com\">bootnipets.com</a></div>\n");
      out.write("                </div>\n");
      out.write("                <ul class=\"list-group\">\n");
      out.write("                    <li class=\"list-group-item text-muted\">Activity <i class=\"fa fa-dashboard fa-1x\"></i></li>\n");
      out.write("                    <li class=\"list-group-item text-right\"><span class=\"pull-left\"><strong>Shares</strong></span> 125</li>\n");
      out.write("                    <li class=\"list-group-item text-right\"><span class=\"pull-left\"><strong>Likes</strong></span> 13</li>\n");
      out.write("                    <li class=\"list-group-item text-right\"><span class=\"pull-left\"><strong>Posts</strong></span> 37</li>\n");
      out.write("                    <li class=\"list-group-item text-right\"><span class=\"pull-left\"><strong>Followers</strong></span> 78</li>\n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("              <div class=\"panel panel-default\">\n");
      out.write("                <div class=\"panel-heading\">Social Media</div>\n");
      out.write("                <div class=\"panel-body\">\n");
      out.write("                    <i class=\"fa fa-facebook fa-2x\"></i> <i class=\"fa fa-github fa-2x\"></i> <i class=\"fa fa-twitter fa-2x\"></i> <i class=\"fa fa-pinterest fa-2x\"></i> <i class=\"fa fa-google-plus fa-2x\"></i>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("            </div><!--/col-3-->\n");
      out.write("            <div class=\"col-sm-9\">\n");
      out.write("                <ul class=\"nav nav-tabs\">\n");
      out.write("                ");
//System.out.print("Construyendo TABS");
                for(int i=1; i<=numEncuestas;i++){
                    if(i==1){
      out.write("\n");
      out.write("                    ");
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
      out.write("                    <li class=\"active\"><a data-toggle=\"tab\" href=\"#");
out.print(tabId+i);
      out.write('"');
      out.write('>');
out.print(nombreEncuesta);
      out.write("</a></li>\n");
      out.write("                        ");

                    }
                    if(i>1){
      out.write("\n");
      out.write("                    ");
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
      out.write("                    <!--Construcción de las Pestañas-->\n");
      out.write("                    <li><a data-toggle=\"tab\" href=\"#");
out.print(tabId+i);
      out.write('"');
      out.write('>');
out.print(nombreEncuesta);
      out.write("</a></li>\n");
      out.write("                        ");

                    }
                }
      out.write("\n");
      out.write("                </ul>\n");
      out.write("                <!--Contenido a mostrar/ocultar-->\n");
      out.write("                <div class=\"tab-content\">\n");
      out.write("                ");

                for(int i=1;i<=numEncuestas;i++){
                    if(i==1){
      out.write("\n");
      out.write("                    ");
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
      out.write("                    <div class=\"tab-pane active\" id=\"");
out.print(tabId+i);
      out.write("\">\n");
      out.write("                        <hr>\n");
      out.write("                        <form class=\"form\" action=\"##\" method=\"post\" id=\"actaliceForm\">\n");
      out.write("                            ");
      out.write('\n');
      out.write('\n');

    try{
        consulta ="SELECT COUNT(*) FROM tb_preguntas WHERE encuesta_id = "+i+";";
        rs=st.executeQuery(consulta);
        if(rs.absolute(1)){
            numPreguntas=rs.getInt(1);
        }
    }catch(Exception e){
        System.out.println("Error: "+e);
    }

      out.write("\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <h4>");
out.print(nombreEncuesta);
      out.write("</h4>\n");
      out.write("                                <div class=\"col-xs-6\">\n");
      out.write("                                    ");
      out.write('\n');
      out.write('\n');

    try{
        String q = consulta;
        int p =0;
        q ="SELECT pregunta, tipo_pregunta FROM tb_preguntas AS P, tb_tipo_preguntas AS TP WHERE encuesta_id IN(SELECT encuesta_id FROM tb_encuestas WHERE encuesta_id="+i+")AND TP.tipo_pregunta_id=P.tipo_pregunta_id;";
        st = con.createStatement();
        rs = st.executeQuery(q);
        while(rs.next()){
            p= p+1;
            pre="enc"+en+"pre"+p;
            nombrePregunta=rs.getString(1);
            tipoPregunta=rs.getString(2);
            try{
                if(tipoPregunta.equals("ARCHIVO")){
      out.write("\n");
      out.write("                ");
      out.write('\n');
      out.write('\n');

    try{
        consulta ="SELECT respuesta FROM tb_respuestas WHERE estudiante_cod ='"+usurioId+"' AND pregunta_id IN(SELECT pregunta_id FROM tb_preguntas WHERE pregunta='"+nombrePregunta+"');";
        st = con.createStatement();
        rspr = st.executeQuery(consulta);
        while(rspr.next()){
            nombreRespuesta=rspr.getString(1);
      out.write("\n");
      out.write("            <div class=\"col-xs-6\">\n");
      out.write("                <label for=\"");
out.print(pre);
      out.write("\"><h4>");
out.print(nombrePregunta);
      out.write("</h4></label>\n");
      out.write("                <input type=\"text\" id=\"");
out.print(pre);
      out.write("\" class=\"form-control\" name=\"archivo\" value=\"");
out.print(nombreRespuesta);
      out.write("\" placeholder=\"");
out.print(nombrePregunta);
      out.write("\" title=\"");
out.print(nombrePregunta);
      out.write("\" readonly=\"readonly\">\n");
      out.write("            </div>\n");
      out.write("        ");
}
        }catch(Exception e){
            System.out.println("ERROR: "+e);
            System.out.println("No ha sido posible obtener la pregunta. \nERROR: "+e);
        }

      out.write('\n');
      out.write("\n");
      out.write("                ");
}else if(tipoPregunta.equals("DESPLEGABLE")){
      out.write("\n");
      out.write("                \n");
      out.write("                ");
}else if(tipoPregunta.equals("MULTIPLE")){
      out.write("\n");
      out.write("\n");
      out.write("                ");
}else if(tipoPregunta.equals("TEXTO")){
      out.write("\n");
      out.write("                <label for=\"");
out.print(pre);
      out.write("\"><h4>");
out.print(nombrePregunta);
      out.write("</h4></label>\n");
      out.write("                <input type=\"text\" id=\"");
out.print(pre);
      out.write("\" class=\"form-control\" name=\"updateObject\" placeholder=\"l");
out.print(nombrePregunta);
      out.write("\" title=\"enter your last name if any.\">\n");
      out.write("                ");
}else if(tipoPregunta.equals("NUMERO")){
      out.write("\n");
      out.write("\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            ");
}catch(Exception e){
                System.out.println("ERROR: "+e);
            }
        }
        p=0;
        }catch(Exception e){
            System.out.println("ERROR: "+e);
            System.out.println("No ha sido posible obtener el nombre de la pregunta. "+e);
        }

      out.write("\n");
      out.write("                                    <!--<input type=\"text\" class=\"form-control\" name=\"first_name\" id=\"first_name\" value=\"Sede Principal - Administrativa\" placeholder=\"Sede\" title=\"Sede donde estudia.\">-->\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                        <hr>\n");
      out.write("                    </div><!--/tab-pane-->\n");
      out.write("                        ");

                    }
                    if(i>1){
      out.write("\n");
      out.write("                    ");
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
      out.write("                    <div class=\"tab-pane\" id=\"");
out.print(tabId+i);
      out.write("\">\n");
      out.write("                        <hr>\n");
      out.write("                        <form class=\"form\" action=\"##\" method=\"post\" id=\"actaliceForm\">\n");
      out.write("                            ");
      out.write('\n');
      out.write('\n');

    try{
        consulta ="SELECT COUNT(*) FROM tb_preguntas WHERE encuesta_id = "+i+";";
        rs=st.executeQuery(consulta);
        if(rs.absolute(1)){
            numPreguntas=rs.getInt(1);
        }
    }catch(Exception e){
        System.out.println("Error: "+e);
    }

      out.write("\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <h4>");
out.print(nombreEncuesta);
      out.write("</h4>\n");
      out.write("                                ");
      out.write('\n');
      out.write('\n');

    try{
        String q = consulta;
        int p =0;
        q ="SELECT pregunta, tipo_pregunta FROM tb_preguntas AS P, tb_tipo_preguntas AS TP WHERE encuesta_id IN(SELECT encuesta_id FROM tb_encuestas WHERE encuesta_id="+i+")AND TP.tipo_pregunta_id=P.tipo_pregunta_id;";
        st = con.createStatement();
        rs = st.executeQuery(q);
        while(rs.next()){
            p= p+1;
            pre="enc"+en+"pre"+p;
            nombrePregunta=rs.getString(1);
            tipoPregunta=rs.getString(2);
            try{
                if(tipoPregunta.equals("ARCHIVO")){
      out.write("\n");
      out.write("                ");
      out.write('\n');
      out.write('\n');

    try{
        consulta ="SELECT respuesta FROM tb_respuestas WHERE estudiante_cod ='"+usurioId+"' AND pregunta_id IN(SELECT pregunta_id FROM tb_preguntas WHERE pregunta='"+nombrePregunta+"');";
        st = con.createStatement();
        rspr = st.executeQuery(consulta);
        while(rspr.next()){
            nombreRespuesta=rspr.getString(1);
      out.write("\n");
      out.write("            <div class=\"col-xs-6\">\n");
      out.write("                <label for=\"");
out.print(pre);
      out.write("\"><h4>");
out.print(nombrePregunta);
      out.write("</h4></label>\n");
      out.write("                <input type=\"text\" id=\"");
out.print(pre);
      out.write("\" class=\"form-control\" name=\"archivo\" value=\"");
out.print(nombreRespuesta);
      out.write("\" placeholder=\"");
out.print(nombrePregunta);
      out.write("\" title=\"");
out.print(nombrePregunta);
      out.write("\" readonly=\"readonly\">\n");
      out.write("            </div>\n");
      out.write("        ");
}
        }catch(Exception e){
            System.out.println("ERROR: "+e);
            System.out.println("No ha sido posible obtener la pregunta. \nERROR: "+e);
        }

      out.write('\n');
      out.write("\n");
      out.write("                ");
}else if(tipoPregunta.equals("DESPLEGABLE")){
      out.write("\n");
      out.write("                \n");
      out.write("                ");
}else if(tipoPregunta.equals("MULTIPLE")){
      out.write("\n");
      out.write("\n");
      out.write("                ");
}else if(tipoPregunta.equals("TEXTO")){
      out.write("\n");
      out.write("                <label for=\"");
out.print(pre);
      out.write("\"><h4>");
out.print(nombrePregunta);
      out.write("</h4></label>\n");
      out.write("                <input type=\"text\" id=\"");
out.print(pre);
      out.write("\" class=\"form-control\" name=\"updateObject\" placeholder=\"l");
out.print(nombrePregunta);
      out.write("\" title=\"enter your last name if any.\">\n");
      out.write("                ");
}else if(tipoPregunta.equals("NUMERO")){
      out.write("\n");
      out.write("\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            ");
}catch(Exception e){
                System.out.println("ERROR: "+e);
            }
        }
        p=0;
        }catch(Exception e){
            System.out.println("ERROR: "+e);
            System.out.println("No ha sido posible obtener el nombre de la pregunta. "+e);
        }

      out.write("\n");
      out.write("                                <div class=\"col-xs-6\">\n");
      out.write("                                    \n");
      out.write("                                    <!--<input type=\"text\" class=\"form-control\" name=\"first_name\" id=\"first_name\" value=\"Sede Principal - Administrativa\" placeholder=\"Sede\" title=\"Sede donde estudia.\">-->\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                        <hr>\n");
      out.write("                    </div><!--/tab-pane-->\n");
      out.write("                        ");

                    }
                
                
      out.write("\n");
      out.write("                    \n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                </div><!--/tab-pane-->\n");
      out.write("                </div><!--/tab-pane-->\n");
      out.write("            </div><!--/tab-content-->\n");
      out.write("        </div><!--/col-9-->\n");
      out.write("    </div><!--/row-->\n");
      out.write("</body>                              \n");
      out.write("</html>\n");
}//END OF MAIN ELSE.
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
