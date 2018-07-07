/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author b41n
 */
public class ConexionDB {
    private String USERNAME = "Programador";
    private String PASSWORD = "programador";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "db_caracterizacion";
    //private String DATABASE = "Caracterizacion";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String JDBC_MYSQL_DRIVER="jdbc:mysql://";
    private String URL = JDBC_MYSQL_DRIVER+HOST+":"+PORT+"/"+DATABASE;
    
    private Connection cn=null;
    public ConexionDB(){
        try{
            Class.forName(CLASSNAME);
            cn=DriverManager.getConnection(URL,USERNAME,PASSWORD);
            System.out.println("Conectado a la base de datos");
            //JOptionPane.showMessageDialog(null,"Conectado");
        }catch(ClassNotFoundException | SQLException e){
            System.err.println("ERROR :");
        }finally {
            
        }
    } 
    public Connection getConexion(){
        return cn;
    } 
    /*public Connection closeConexion(){
        if (cn != null) {
                try {
                    cn.close();
                } catch (SQLException e) { 
                    System.out.println("EROOR: "+e);
                }
            }
        System.out.println("Conexión cerrada");
        return null;
    }*/
    /*public static void main(String[] args){
        ConexionDB cn= new ConexionDB();
        cn.getConexion();
        cn.closeConexion();
    }*/
}
