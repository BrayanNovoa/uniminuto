/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import view.Admin;

/**
 *
 * @author b41n
 */

public class AdminController implements interfaces.IAdmin {
    DefaultTableModel model;
    DbConnection entrar = new DbConnection();
    public Object[] estudiantes;
    
    @Override public boolean buscarPeriodos(){
        String [] campos = {"periodo"};
        String [] registro = new String [campos.length];
        String sql ="SELECT periodo FROM tb_periodos;";
        model = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
            registro[0]= rs.getString(campos[0]);
            System.out.println(registro[0]);
            model.addRow(registro);
            }
            view.Admin.tbPeriodos.setModel(model);
        } catch (java.sql.SQLException ex) {
            Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    
    @Override
    public boolean buscarFacultades(){
        String[] campos={"facultad"};
        //String[] campos={"sede_id","facultad"};
        String[] registro = new String[campos.length];
        String sql = "SELECT facultad FROM tb_facultades";
        model = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0]=rs.getString(campos[0]);
                //registro[1]=rs.getString(campos[1]);
                model.addRow(registro);
            }
            view.Admin.tbFacultades.setModel(model);
            return true;
        }catch(SQLException ex){
            System.out.println("ERROR: "+ex);
        }
        return false;
    }
    
    @Override
    public boolean buscarProgramas(){
        String[]campos={"programa"};
        String[]registro = new String[campos.length];
        String sql ="SELECT programa FROM tb_programas;";
        model = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0]=rs.getString(campos[0]);
                model.addRow(registro);
            }
            view.Admin.tbProgramas.setModel(model);
            
        }catch(SQLException ex){
            System.out.println("ERROR: "+ex);
        }
        return false;
    }
    
    @Override
    public boolean cargarListaEstudiantes(){
        JButton abrir = new JButton();
        JFileChooser jfc = new JFileChooser();
        jfc.setCurrentDirectory(new File("/home/b41n/Escritorio"));
        jfc.setDialogTitle("Cargar Lista De Estudiantes");
        jfc.setFileSelectionMode(JFileChooser.FILES_ONLY);
        if(jfc.showOpenDialog(abrir) == JFileChooser.APPROVE_OPTION){
            String ruta = jfc.getSelectedFile().getAbsolutePath();
            System.out.println("Ruta Del Archivo: "+ruta);
            File archivo = new File(ruta);
            try {
                BufferedReader buffer = new BufferedReader(new FileReader(archivo));
                String primerLinea = buffer.readLine().trim();
                String[] titulos = primerLinea.split(",");
                model = (DefaultTableModel)view.Admin.tbEstudiantes.getModel();
                model.setColumnIdentifiers(titulos);

                estudiantes = buffer.lines().toArray();
                for (int i = 0; i < estudiantes.length; i++){
                    String linea = estudiantes[i].toString().trim();
                    String[] datosFila = linea.split(",");
                    model.addRow(datosFila);
                }
                view.Admin.btnGuardarEstudiantes.setVisible(true);
            } catch (FileNotFoundException ex) {
                Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IOException ex) {
                Logger.getLogger(Admin.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return false;
    }
    
    @Override
    public boolean guardarEstudiantes(Object estudiantes[]){
        for(int i = 0; i <= estudiantes.length; i++){
            String linea = estudiantes[i].toString().trim();
            String[] datosFila = linea.split(",");
            //model.addRow(datosFila);
            System.out.println(estudiantes[i]);
        }
        return false;
    }
    
    public static void main(String [] args){
        AdminController adc = new AdminController();
        //adc.buscarFacultades();
        adc.buscarPeriodos();
    }
    
}
