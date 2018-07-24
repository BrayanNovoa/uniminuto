/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author b41n
 */
public class AdminDbController {
    DbConnection entrar = new DbConnection();
    DefaultTableModel modelRectorias;
    DefaultTableModel modelSedes;
    
    public void cargar(String valor){
        String [] campos = {"Vicerrectorías"};
        String [] registro = new String [campos.length];
        String sql ="SELECT vicerrectoria FROM tb_vicerrectorias WHERE vicerrectoria LIKE '%"+valor+"%';";
        modelRectorias = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
            registro[0]= rs.getString("vicerrectoria");
            modelRectorias.addRow(registro);
            }
            view.AdminDB.tbRectorias.setModel(modelRectorias);
        } catch (SQLException ex) {
            Logger.getLogger(AdminDbController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public void buscarSedes(String sede){
        System.out.println(sede);
        String [] campos = {"Sedes"};
        String [] registro = new String [1];
        String sql ="SELECT sede FROM tb_sedes WHERE vicerrectoria_id IN (SELECT vicerrectoria_id FROM tb_vicerrectorias WHERE vicerrectoria LIKE '%"+sede+"%')";
        modelSedes = new DefaultTableModel(null,campos);
        //DbConection entrar = new DbConnection();
        Connection cn = entrar.getConexion();
        try {
            
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0]= rs.getString("sede");
                System.out.println(registro[0]);
                modelSedes.addRow(registro);
            }
            view.AdminDB.tbSedes.setModel(modelSedes);
        } catch (java.sql.SQLException ex) {
            Logger.getLogger(AdminDbController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void guardarEstudiantes(Object[] estudiantes){
        for (int i = 0; i < estudiantes.length; i++){
            String linea = estudiantes[i].toString().trim();
            String[] datosFila = linea.split(",");
            //model.addRow(datosFila);
            System.out.println(estudiantes[i]);
        }
    }
    public static void main(String[]args){
        AdminDbController admin = new AdminDbController();
        //admin.cargar("");
        admin.buscarSedes("Villavicencio");
    }
    
}
