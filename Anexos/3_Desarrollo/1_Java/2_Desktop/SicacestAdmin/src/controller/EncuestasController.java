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
import view.Cargador;

/**
 *
 * @author b41n
 */
public class EncuestasController implements interfaces.IEncuestas{
    DbConnection entrar = new DbConnection();
    DefaultTableModel model;
    
    @Override
    public boolean guardarEncuesta(String encuesta, String descripcion){
        PreparedStatement pst;
        Connection cn = entrar.getConexion();
        try{
            String sql = "INSERT INTO tb_encuestas (encuesta, descripcion)VALUES(?,?)";
            pst = entrar.getConexion().prepareStatement(sql);
            pst.setString(1, encuesta);
            pst.setString(2, descripcion);
            if(pst.executeUpdate()==1){
                System.out.println("Encuesta "+encuesta+" guardada con éxito\n"
                        +"Descripción: "+ descripcion);
                buscarEncuestas();
                JOptionPane.showMessageDialog(null, "Encuesta :"+encuesta+". Guardada correctamente." );
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
        }
        return false;
    }
    
    @Override
    public void buscarEncuestas(){
        int i = 0;
        String [] campos ={"encuesta", "descripcion"};
        String [] registro = new String[2];
        String sql ="SELECT encuesta, descripcion FROM tb_encuestas;";
        model = new DefaultTableModel(null, campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                i=i+1;
                registro[0]=rs.getString(campos[0]);
                registro[1]=rs.getString(campos[1]);
                model.addRow(registro);
                view.Admin.cmbEncuestas.addItem(rs.getString(campos[0]));
                System.out.println("Encuesta: "+i+" "+registro[0]);
            }
            i=0;
            view.Admin.tbEncuestas.setModel(model);
        }catch(NullPointerException | SQLException ex){
            System.out.println("ERROR: "+ex);
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
    
    @Override
    public void buscarTipoPreguntas(){
        String[] campos={"Tipo Pregunta", "Descripción"};
        String[] registro =new String [campos.length];
        String sql = "SELECT tipo_pregunta, tipo_preg_desc FROM tb_tipo_preguntas;";
        model = new DefaultTableModel(null,campos);
        try{
            Connection cn = entrar.getConexion();
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0]=rs.getString(1);
                registro[1]=rs.getString(2);
                System.out.println(registro[0]);
                model.addRow(registro);
                view.Admin.cmbTipoPregunta.addItem(rs.getString("tipo_pregunta"));
            }
            view.Admin.tbTipoPreguntas.setModel(model);
        }catch(SQLException ex){
            System.out.println("ERROR: "+ex);
        }
    }
    
    @Override
    public void llenarComboTipoEncuestas() {
        
    }
    
    public static void main(String [] args){
        EncuestasController enc = new EncuestasController();
        //enc.buscarEncuestas();
        //enc.guardarEncuesta("Prueba desde Java", "Prueba desde Java");
        //enc.guardarPregunta("Datos Básicos", "Texto", "Pregunta Prueba EncuestasController");
        //enc.buscarTipoPreguntas();
    }
}
