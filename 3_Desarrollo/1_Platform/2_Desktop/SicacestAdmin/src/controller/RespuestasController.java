/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
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
    DbConnection dbcon = new DbConnection();
    DefaultTableModel model;
    
    @Override
    public void obtenerRespuestas(String param){
        String sql="SELECT * FROM tb_respuestas";
        Connection connection = dbcon.getConexion();
        try {
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int numberOfColumns = rsmd.getColumnCount();
            String campos[] = new String[numberOfColumns];
            String[] registro = new String[campos.length];
            String columnName = null;
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
