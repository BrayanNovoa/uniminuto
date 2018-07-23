/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author b41n
 */
@WebServlet(name = "InfoFinancieraSVL", urlPatterns = {"/insFinanciera"})
public class InfoFinancieraSVL extends HttpServlet {

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
        String pago_User = request.getParameter("pago_User");
        String quienpaga_User = request.getParameter("quienpaga_User");
        String work_User = request.getParameter("work_User");
        String workspace_User = request.getParameter("Variable");
        String typework_User = request.getParameter("typework_User");
        String ingper_User = request.getParameter("ingper_User");
        String ingfam_User = request.getParameter("ingfam_User");
        
        Consultas con = new Consultas();
        
        if(con.InfoFinanciera(usuario, pago_User, quienpaga_User, work_User, workspace_User, typework_User, ingper_User, ingfam_User)){
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
