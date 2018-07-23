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
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author b41n
 */

public class AdminController implements interfaces.IAdmin {
    DefaultTableModel model;
    DbConnection entrar = new DbConnection();
    
    @Override
    public boolean buscarRectoria(String rectoriaId){
        String sql = "SELECT vicerrectoria FROM tb_vicerrectorias WHERE vicerrectoria_id ="+rectoriaId+";";
        String nombre= null;
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                nombre = rs.getString("vicerrectoria");
                System.out.println(nombre);
            }
            JOptionPane.showMessageDialog(null, "Bienvenido administrador de Buenestar "+nombre);
            view.Admin.txtRectoria.setText(nombre);
            return true;
        }catch(NullPointerException | SQLException ex){
            System.out.println(ex);
        }
        return false;
    }
    
    @Override
    public boolean buscarSede(String rect){
        String sql ="select";
        return false;
    }
    
    public boolean buscarProgramas(){
        String[]campos={"facultad_id","programa"};
        String[]registro = new String[campos.length];
        String sql ="SELECT facultad_id, programa FROM tb_programas;";
        model = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0]=rs.getString(campos[0]);
                registro[1]=rs.getString(campos[1]);
                model.addRow(registro);
            }
            view.Admin.tbProgramas.setModel(model);
            
        }catch(SQLException ex){
            System.out.println("ERROR: "+ex);
        }
        return false;
    }
    
    public static void main(String [] args){
        AdminController adc = new AdminController();
        //adc.buscarFacultades();
        adc.buscarRectoria("8");
    }
    
    
    public boolean buscarFacultades(){
        String[] campos={"sede_id","facultad"};
        String[] registro = new String[campos.length];
        String sql = "SELECT sede_id, facultad FROM tb_facultades";
        model = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0]=rs.getString(campos[0]);
                registro[1]=rs.getString(campos[1]);
                model.addRow(registro);
            }
            view.Admin.tbFacultades.setModel(model);
            return true;
        }catch(SQLException ex){
            System.out.println("ERROR: "+ex);
        }
        return false;
    }
    
    
}
