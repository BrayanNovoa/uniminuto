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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author b41n
 */
public class LocalizacionSVL extends HttpServlet {

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
        String sector_user = request.getParameter("sector_User");
        String place_user = request.getParameter("place_User");
        String depto_user = request.getParameter("depto_User");
        System.out.println("Obteniendo el departamento: "+ depto_user);
        String city_user = request.getParameter("city_User");
        String dir_user = request.getParameter("dir_User");
        String barrio_user = request.getParameter("barrio_User");
        String estrato_user = request.getParameter("estrato_User");
        String vivienda_user = request.getParameter("vivienda_User");
        Consultas con = new Consultas();
        System.out.println("Iniciando consulta.");
        if(con.InfoVivienda(usuario, sector_user, place_user, depto_user, city_user, dir_user, barrio_user, estrato_user, vivienda_user)){
            System.out.println("Consulta realizada con éxito.");
            response.sendRedirect("pestanas.jsp");
        }else{
            System.out.println("Error insertando los datos.");
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
