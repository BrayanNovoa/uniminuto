/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;
import view.Admin;

/**
 *
 * @author b41n
 */

public class LoginController implements interfaces.ILogin {
    DbConnection entrar = new DbConnection();
    DefaultComboBoxModel<String> model;
    
    @Override
    public boolean verificarAcceso(String usuario, String sede,
            String rectoria, String password) {
        boolean acceso = false;
        System.out.println("Sede: "+sede+
                " Rectoría: "+rectoria+
                " Usuario: "+usuario);
        String consulta ="SELECT usuario FROM tb_usuarios WHERE usuario ='"+
                usuario+"' AND password = '"+password+
                "' AND sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = '"+
                sede+"' AND rectoria_id IN(SELECT rectoria_id FROM tb_rectorias"
                + " WHERE rectoria = '"+rectoria+"'));";
        java.sql.Connection cn = entrar.getConexion();
        try{
            java.sql.Statement st = cn.createStatement();
            java.sql.ResultSet rs = st.executeQuery(consulta);
            if(rs.absolute(1)){
                System.out.println("Acceso Concedido a: "+usuario);
                System.out.println(rs.getString(1));
                Admin admin = new Admin();
                admin.setVisible(true);
                view.Admin.txtSede.setText(sede);
                view.Admin.txtRectoria.setText(rectoria);
                view.Admin.txtUsuario.setText(usuario);
                acceso = true;
            }else{
                System.out.println("Verifique sus credenciales de acceso.");
            }
            return acceso;
        }catch(java.sql.SQLException ex){
            javax.swing.JOptionPane.showMessageDialog(null, "ERROR: "+ex);
            System.out.println("ERROR: "+ex);
        }
        return false;
    }
    
    @Override
    public boolean llenarComboRectorias(){
        String sql ="SELECT rectoria FROM tb_rectorias;";
        java.sql.Connection cn = entrar.getConexion();
        try{
            java.sql.Statement st = cn.createStatement();
            java.sql.ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                view.Login.cmbRectoria.addItem(rs.getString(1));
            }
            return true;
        }catch(java.sql.SQLException ex){
            JOptionPane.showMessageDialog(null,
                    "ERROR: "+ex);
            System.out.println(ex);
        }catch(NullPointerException e){
            JOptionPane.showMessageDialog(null,
                    "Asegúrese de haber instalado la Base de Datos.");
        }
        return false;
    }
    
    @Override
    public boolean llenarComboSedes(String rectoria){
        String[] opciones = new String[1];
        String sql ="SELECT sede FROM tb_sedes WHERE rectoria_id IN "
                + "(SELECT rectoria_id FROM tb_rectorias WHERE rectoria = '"+
                rectoria+"')";
        model = new DefaultComboBoxModel<>();
        java.sql.Connection cn = entrar.getConexion();
        try{
            java.sql.Statement st = cn.createStatement();
            java.sql.ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                opciones[0]=rs.getString(1);
                model.addElement(opciones[0]);
            }
            view.Login.cmbSede.setModel(model);
            view.Login.cmbSede.setEnabled(true);
            return true;
        }catch(java.lang.NullPointerException | java.sql.SQLException ex){
            javax.swing.JOptionPane.showMessageDialog(null, "ERROR: "+ex);
            System.out.println(ex);
        }
        view.Login.cmbSede.setEnabled(false);
        return false;
    }
    
    @Override
    public boolean validarCampos(String sede, String rectoria){
        if(rectoria.equals("Seleccionar Rectoría...")||sede.equals("Seleccionar Sede...")){
            JOptionPane.showMessageDialog(null, "Debe seleccionar Rectoría y Sede.");
            return false;
        }
        return true;
    }
    
}
