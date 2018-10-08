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
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author b41n
 */
public class RespuestasController implements interfaces.IRespuestas{
    DbConnection entrar = new DbConnection();
    DefaultTableModel model;
    String sql;
    String [] campos;
    String [] registro;
    PreparedStatement pst;
    Statement st;
    ResultSet rs;
    @Override
    public boolean guardarPosiblesRespuestas(String pregunta, String posibleRespuesta){
        try{
            sql = "INSERT INTO tb_posibles_respuestas (pregunta_id, posible_respuesta)VALUES((SELECT pregunta_id FROM tb_preguntas WHERE pregunta='"+pregunta+"'),?)";
            pst = entrar.getConexion().prepareStatement(sql);
            pst.setString(1, posibleRespuesta);
            if(pst.executeUpdate()==1){
                System.out.println("Posible respuesta "+posibleRespuesta+
                        " guardada con éxito");
                //buscarPosiblesRespuestas(pregunta);
                JOptionPane.showMessageDialog(null, "Posible respuesta :"+posibleRespuesta+". Guardada correctamente." );
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
        }
        return false;
    }
    
    public void buscarPosiblesRespuestas(String pregunta){
        campos = new String[]{"Pregunta", "Posibles Respuestas"};
        registro = new String[campos.length];
        sql = "SELECT p.pregunta, r.posible_respuesta FROM tb_preguntas AS p, tb_posibles_respuestas AS r WHERE p.pregunta='"+pregunta+"';";
        model = new DefaultTableModel(null,campos);
        try{
            Connection cn = entrar.getConexion();
            st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0] = rs.getString(1);
                registro[1] = rs.getString(2);
                model.addRow(registro);
            }
            view.Admin.tbPosiblesRespuestas.setModel(model);
        }catch(SQLException ex){
            System.out.println("ERROR"+ex);
        }
    }
    
    @Override
    public void obtenerRespuestas(String param){
        sql="SELECT R.respuesta_id AS CODIGO_RESP, E.encuesta, P.pregunta, R.respuesta FROM tb_encuestas AS E, tb_preguntas AS P, tb_respuestas AS R WHERE E.encuesta_id=P.encuesta_id AND P.pregunta_id=R.pregunta_id;";
        Connection connection = entrar.getConexion();
        try {
            st = connection.createStatement();
            rs = st.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int numberOfColumns = rsmd.getColumnCount();
            campos = new String[numberOfColumns];
            registro = new String[campos.length];
            String columnName;
            model = new DefaultTableModel(null,campos);
            
            for (int i = 1; i < numberOfColumns + 1; i++) {
                columnName = rsmd.getColumnName(i);
                campos[i-1]=columnName;
                System.out.println(campos[i-1]);
            }
            while(rs.next()){
                for(int f=1;f<=numberOfColumns;f++){
                    registro[f-1]=rs.getString(f);
                }
                model.addRow(registro);
                
            }
            
            model.setColumnIdentifiers(campos);
            view.Admin.tbRespuestas.setModel(model);
        } catch (java.sql.SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error");
            Logger.getLogger(RespuestasController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    public void llenarTabla(){
        
    }
}
