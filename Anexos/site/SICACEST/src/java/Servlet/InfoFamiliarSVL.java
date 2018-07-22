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
@WebServlet(name = "InfoFamiliarSVL", urlPatterns = {"/insFamiliar"})
public class InfoFamiliarSVL extends HttpServlet {

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
        String id_User= (String)objsesion.getAttribute("SesionUsuario");
        String live_User = request.getParameter("live_User");
        String state_User = request.getParameter("state_User");
        String numherm_User = request.getParameter("numherm_User");
        String lugarherm_User = request.getParameter("lugarherm_User");
        String abuelos_User = request.getParameter("abuelos_User");
        String emb_User = request.getParameter("emb_User");
        String mesemb_User = request.getParameter("mesemb_User");
        String head_User = request.getParameter("head_User");
        String hijos_User = request.getParameter("hijos_User");
        String numhijos_User = request.getParameter("numhijos_User");
        String agehijos_User = request.getParameter("agehijos_User");
        String padre_User = request.getParameter("padre_User");
        String madre_User = request.getParameter("madre_User");
        Consultas con = new Consultas();
        if(con.InfoFamiliar(id_User, live_User, state_User, numherm_User, lugarherm_User, abuelos_User, emb_User, mesemb_User, head_User, hijos_User, numhijos_User, agehijos_User, padre_User, madre_User)){
            response.sendRedirect("pestanas.jsp");
        }else{
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
