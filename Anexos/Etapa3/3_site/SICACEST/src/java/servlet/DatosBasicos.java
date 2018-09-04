/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
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
public class DatosBasicos extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession objsesion = request.getSession(false);
        String usuario= (String)objsesion.getAttribute("SesionUsuario");
        String names_user = request.getParameter("names_User");
        String ape1_user = request.getParameter("ape1_User");
        String ape2_user = request.getParameter("ape2_User");
        String docu_user = request.getParameter("docu_User");
        String sex_user = request.getParameter("sex_User");
        String age_user = request.getParameter("age_User");
        String depto_user = request.getParameter("depto_User");
        String ciu_user = request.getParameter("ciu_User");
        String rh_user = request.getParameter("rh_User");
        Consultas con = new Consultas();
        if(con.DatosBasicos(usuario, names_user, ape1_user, ape2_user, docu_user, sex_user, age_user, depto_user, ciu_user, rh_user)){
            response.sendRedirect("pestanas.jsp");
        }else{
            //System.out.println("Error Realizando Encuesta .");
            response.sendRedirect("errorencuesta.jsp");
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
