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
public class RegistrarEncuertas extends HttpServlet {

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
        
        // Variables para la tabla: 
        String names_user = request.getParameter("names_User");
        String apes_user = request.getParameter("apes_User");
        String docu_user = request.getParameter("docu_User");
        String sex_user = request.getParameter("sex_User");
        String age_user = request.getParameter("age_User");
        String depto_user = request.getParameter("depto_User");
        String nacim_user = request.getParameter("nacim_User");
        String rh_user = request.getParameter("rh_User");
        
        // Variables para la tabla: 
        String tel_user = request.getParameter("tel_User");
        String cel_user = request.getParameter("cel_User");
        String mail_user = request.getParameter("mail_User");
        
        
        // Variables para la tabla: 
        String sector_user = request.getParameter("sector_User");
        String plac_user = request.getParameter("plac_User");
        String city_user = request.getParameter("city_User");
        String local_user = request.getParameter("local_User");
        String dir_user = request.getParameter("dir_User");
        String barrio_user = request.getParameter("barrio_User");
        String estrato_user = request.getParameter("estrato_User");
        String vivienda_user = request.getParameter("vivienda_User");
        String sede_user = request.getParameter("sede_User");
        
        // Variables para la tabla: tb_info_salud
        String sisben_user = request.getParameter("sisben_User");
        String eps_user = request.getParameter("eps_User");
        String problem_user = request.getParameter("problem_User");
        String poblacion_user = request.getParameter("poblacion_User");
        String difi_user = request.getParameter("difi_User");
        String drink_user = request.getParameter("drink_User");
        String smoke_user = request.getParameter("smoke_User");
        
        // Variables para la tabla: tb_info_financiera
        String pago_user = request.getParameter("pago_User");
        String quienpaga_user = request.getParameter("quienpaga_User");
        String work_user = request.getParameter("work_User");
        String workspace_user = request.getParameter("Variable");
        String typework_user = request.getParameter("typework_User");
        String ingper_user = request.getParameter("ingper_User");
        String ingfam_user = request.getParameter("ingfam_User");
        
        // Variables para la tabla: tb_info_familiar
        String live_user = request.getParameter("live_User");
        String state_user = request.getParameter("state_User");
        String numherm_user = request.getParameter("numherm_User");
        String lugarherm_user = request.getParameter("lugarherm_User");
        String emb_user = request.getParameter("emb_User");
        String mesemb_user = request.getParameter("mesemb_User");
        String abuelos_user = request.getParameter("abuelos_User");
        String hijos_user = request.getParameter("hijos_User");
        String head_user = request.getParameter("head_User");
        String numhijos_user = request.getParameter("numhijos_User");
        String agehijos_user = request.getParameter("agehijos_User");
        String padres_user = request.getParameter("padres_User");
        
        // Crear un nuevo formulario con la información académica donde se 
        // registre la siguiente información
        String prog_user = request.getParameter("prog_User");
        String expli_user = request.getParameter("expli_User");
        String mod_user = request.getParameter("mod_User");
        
        Consultas con = new Consultas();
        if(con.RegistrarEncuesta(usuario, names_user, apes_user, docu_user, sex_user, age_user, depto_user, nacim_user, rh_user, tel_user, cel_user, mail_user, sector_user, plac_user, city_user, local_user, dir_user, barrio_user, estrato_user, vivienda_user, sede_user, prog_user, expli_user, mod_user, sisben_user, eps_user, problem_user, poblacion_user, difi_user, drink_user, smoke_user, pago_user, quienpaga_user, work_user, workspace_user, typework_user, ingper_user, ingfam_user, live_user, state_user, numherm_user, lugarherm_user, emb_user, mesemb_user, abuelos_user, hijos_user, head_user, numhijos_user, agehijos_user, padres_user)){
            response.sendRedirect("encuestallena.jsp");
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
