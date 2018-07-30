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
    DefaultComboBoxModel<Object> model;
    
    @Override
    public boolean llenarComboRectorias(){
        //String[] opciones = new String[1];
        String sql ="SELECT vicerrectoria FROM tb_vicerrectorias;";
        java.sql.Connection cn = entrar.getConexion();
        try{
            java.sql.Statement st = cn.createStatement();
            java.sql.ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                //System.out.println(rs.getString(1));
                view.Login.cmbRectoria.addItem(rs.getString(1));
            }
            return true;
        }catch(java.sql.SQLException ex){
            javax.swing.JOptionPane.showMessageDialog(null, "ERROR: "+ex);
            System.out.println(ex);
        }
        return false;
    }
    
    @Override
    public boolean llenarComboSedes(String rectoria){
        String[] opciones = new String[1];
        String sql ="SELECT sede FROM tb_sedes WHERE vicerrectoria_id IN (SELECT vicerrectoria_id FROM tb_vicerrectorias WHERE vicerrectoria = '"+rectoria+"')";
        java.sql.Connection cn = entrar.getConexion();
        try{
            java.sql.Statement st = cn.createStatement();
            java.sql.ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                opciones[0]=rs.getString(1);
                //System.out.println(rs.getString(1));
                //System.out.println(opciones[0]);
                //view.Login.cmbSede.addItem(rs.getString(1));
                view.Login.cmbSede.addItem(opciones[0]);
            }
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
    public boolean verificarAcceso(String usuario, String sede, String rectoria, String password) {
        boolean acceso = false;
        System.out.println("Sede: "+sede+" Rectoría:"+rectoria+" Usuario: "+usuario);
        String consulta ="SELECT rol_id FROM tb_usuarios WHERE usuario ='"+usuario+"' AND password = '"+password+"' AND sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = '"+sede+"');";
        //String consulta ="SELECT usuario, password FROM tb_usuarios WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = '"+sede+"')";
        //String consulta ="SELECT facultad FROM tb_facultades;";
        java.sql.Connection cn = entrar.getConexion();
        try{
            java.sql.Statement st = cn.createStatement();
            java.sql.ResultSet rs = st.executeQuery(consulta);
            //while(rs.next()){
            if(rs.absolute(1)){
                System.out.println("Acceso Concedido a: "+usuario);
                System.out.println(rs.getString(1));
                Admin admin = new Admin();
                admin.setVisible(true);
                view.Admin.txtSede.setText(sede);
                view.Admin.txtSedeEstudiante.setText(sede);
                view.Admin.txtRectoria.setText(rectoria);
                view.Admin.txtUsuario.setText(usuario);
                acceso = true;
            }else{
                System.out.println("Verifique sus credenciales de acceso.");
                JOptionPane.showMessageDialog(null,"Verifique sus credenciales de acceso.");
            }
            return acceso;
        }catch(java.sql.SQLException ex){
            javax.swing.JOptionPane.showMessageDialog(null, "ERROR: "+ex);
            System.out.println("ERROR: "+ex);
        }
        return false;
    }
    
    public static void main(String[]args){
        LoginController login = new LoginController();
        //login.verificarAcceso("", "", "", "");
        login.verificarAcceso("bnovoa.linux@gmail.com", "Sede Principal - Administrativa", "Villavicencio", "1234567");
        //login.llenarComboSedes("Villavicencio");
    }
    
}
