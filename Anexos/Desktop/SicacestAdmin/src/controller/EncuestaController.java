/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author b41n
 */
public class EncuestaController {
    DbConnection entrar = new DbConnection();
    DefaultTableModel model;
    
    public void buscarEncuestas(){
        String [] campos ={"nombre_encuesta", "descripcion"};
        String [] registro = new String[2];
        int c = 0;
        String sql ="SELECT nombre_encuesta, descripcion FROM tb_encuestas;";
        model = new DefaultTableModel(null, campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0]=rs.getString(campos[0]);
                registro[1]=rs.getString(campos[1]);
                model.addRow(registro);
                view.Encuestas.cmbEncuestas.addItem(rs.getString(campos[0]));
            }
            view.Encuestas.tbEncuestas.setModel(model);
        }catch(NullPointerException | SQLException ex){
            /*
            if(ex.equals("NullPointerException")){
                System.out.println("ERROR: "+ex);
            }
            if(ex.equals(ex)){
                System.out.println("ERROR: "+ex);
            }
            */
        }
    }
    
    public boolean guardarEncuesta(String encuesta, String descripcion){
        PreparedStatement pst = null;
        Connection cn = entrar.getConexion();
        try{
            String sql = "INSERT INTO tb_encuestas (nombre_encuesta, descripcion)VALUES(?,?)";
            pst = entrar.getConexion().prepareStatement(sql);
            pst.setString(1, encuesta);
            pst.setString(2, descripcion);
            if(pst.executeUpdate()==1){
                System.out.println("Encuesta Añadida: "+ encuesta);
                System.out.println("Descripción Añadida: "+ descripcion);
                System.out.println("Encuesta guardada con éxito");
                JOptionPane.showMessageDialog(null, "Encuesta "+encuesta+" guardada correctamente." );
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
        }
        return false;
    }
    
    public void buscarPreguntas(String encuesta){
        String [] campos={"id","encuesta_id","pregunta"};
        String [] registro = new String[campos.length];
        String sql = "SELECT id, encuesta_id, pregunta FROM tb_encuestas;";
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            
        }catch(SQLException ex){
            System.out.println("ERROR"+ex);
        }
        
    }
    
    
    
    public static void main(String [] args){
        EncuestaController enc = new EncuestaController();
        //enc.buscarEncuestas();
        enc.guardarEncuesta("Prueba desde Java", "Prueba desde Java");
    }
}
