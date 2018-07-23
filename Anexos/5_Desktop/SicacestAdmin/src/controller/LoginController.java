/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

/**
 *
 * @author b41n
 */
public class LoginController implements interfaces.ILogin {
    DbConnection entrar = new DbConnection();

    @Override
    public boolean verificarAcceso(String usuario, String sede, String rectoria, String password) {
        boolean acceso;
        String consulta ="SELECT facultad FROM tb_facultades";
        java.sql.Connection cn = entrar.getConexion();
        try{
            java.sql.Statement st = cn.createStatement();
            java.sql.ResultSet rs = st.executeQuery(consulta);
            //while(rs.absolute(1)){
            while(rs.next()){
                System.out.println(rs.getString(1));
            }
            acceso = true;
            return acceso;
        }catch(java.sql.SQLException ex){
            javax.swing.JOptionPane.showMessageDialog(null, "ERROR: "+ex);
            System.out.println("ERROR: "+ex);
        }
        return false;
    }
    
    public static void main(String[]args){
        LoginController login = new LoginController();
        login.verificarAcceso("", "", "", "");
    }
    
}
