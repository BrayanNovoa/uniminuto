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
public class EncuestaController implements interfaces.IEncuestas{
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
                System.out.println("Encuesta Añadida: "+ encuesta);
                System.out.println("Descripción Añadida: "+ descripcion);
                System.out.println("Encuesta guardada con éxito");
                buscarEncuestas();
                JOptionPane.showMessageDialog(null, "La encuesta :"+encuesta+". Guardada correctamente." );
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
    public boolean guardarTipoPregunta(String tipoPregunta, String descripcionTipo){
        String sql = "INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('"+tipoPregunta+"', '"+descripcionTipo+"');";
        try{
            PreparedStatement pst;
            pst = entrar.getConexion().prepareStatement(sql);
            if(pst.executeUpdate()==1){
                JOptionPane.showMessageDialog(null, "El tipo de pregunta :"+tipoPregunta+". se ha guardado correctamente.");
                System.out.println("ERROR: "+tipoPregunta);
                return true;
            }
        }catch(SQLException ex){
            System.out.println("ERROR: "+ex);
        }
        return false;
    }
    
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
    
    @Override
    public boolean guardarPregunta(String encuesta, String tipoPregunta, String pregunta){
        Cargador cargador = new Cargador("Guardar Encuesta",1);
        cargador.setVisible(true);
        view.Cargador.txtAccion.setText("Guardando");
        try{
            PreparedStatement pst;
            Connection cn = entrar.getConexion();
            view.Cargador.txtElemento.setText(pregunta);
            String sql ="INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES(";
            String sqlEncuesta="(SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='"+encuesta+"'),";
            String sqlTipoPregunta="(SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta = '"+tipoPregunta+"'),'"+pregunta+"');\n";
            String consulta = sql+sqlEncuesta+sqlTipoPregunta;
            System.out.println(consulta);
            pst = entrar.getConexion().prepareStatement(consulta);
            if(pst.executeUpdate()==1){
                view.Cargador.txtStatus.setText("OK.");
                JOptionPane.showMessageDialog(null, "Guardado:");
            }else{
                JOptionPane.showMessageDialog(null, "ERROR");
            }   
        }catch(NullPointerException | SQLException ex){
            view.Cargador.txtStatus.setText("ERROR.");
            System.out.println("ERROR: "+ex);
            JOptionPane.showMessageDialog(null, "ERROR: "+ex);
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
        //enc.guardarEncuesta("Prueba desde Java", "Prueba desde Java");
        //enc.guardarTipoPregunta("Texto");
        //enc.guardarPregunta("Datos Básicos", "Texto", "Pregunta Prueba EncuestaController");
        enc.buscarTipoPreguntas();
        
    }
}
