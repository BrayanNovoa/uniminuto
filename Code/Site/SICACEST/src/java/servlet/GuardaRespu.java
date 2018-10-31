/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package servlet;

import controller.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author b41n
 */
public class GuardaRespu extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession objsesion = request.getSession(false);
        String sesion= (String)objsesion.getAttribute("SesionUsuario");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Consultas con = new Consultas();
            String pregunta[] = request.getParameterValues("preguntas");
            String respuesta[] = request.getParameterValues("respuestas");
            //String nE = request.getParameter("nEncuesta");
            String ruta="../encuesta.jsp#encuesta3";
            //String ruta="../encuesta.jsp#encuesta"+nE;
            //response.sendRedirect(ruta);
            
            for (int x=0;x<=respuesta.length-1;x++){
                out.println("<pre>Pregunta: "+pregunta[x]+"</pre>");
                out.println("<pre>Respuesta: "+respuesta[x]+"</pre>");
                out.println(x);
                
                if(con.guardarRespuesta(pregunta[x], respuesta[x], sesion)){
                    //response.sendRedirect(ruta);
                    if(x<=respuesta.length-1){
                        //response.sendRedirect(ruta);
                    }
                    //response.sendRedirect("registrado.jsp");
                }else{
                    response.sendRedirect("../error.jsp");
                }
            }
            response.sendRedirect(ruta);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
