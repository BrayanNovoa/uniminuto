/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author b41n
 */
public class DbConInstall {
    private String PORT;
        private String DATABASE;
        private String CLASSNAME;
        private String JDBC_MYSQL_DRIVER;
        private String URL;
        private Connection cn = null;

    public DbConInstall(String HOST, String USERNAME,String PASSWORD, String PORT){
        try{
            CLASSNAME = "com.mysql.jdbc.Driver";
            JDBC_MYSQL_DRIVER="jdbc:mysql://";
            URL = JDBC_MYSQL_DRIVER+HOST+":"+PORT/*+"/"+DATABASE*/;
            Class.forName(CLASSNAME);
            cn=DriverManager.getConnection(URL,USERNAME,PASSWORD);
            System.out.println("Conectado a la base de datos");
        }catch(ClassNotFoundException | SQLException e){
            System.err.println("ERROR : "+e);
        }
    }
    public Connection getConexion(){
        return cn;
    } 
    public Connection closeConexion(){
        if (cn != null) {
                try {
                    cn.close();
                } catch (SQLException e) { 
                    System.out.println("EROOR: "+e);
                }
            }
        System.out.println("Conexión cerrada");
        return null;
    }
    
    public static void main(String[] args){
        DbConInstall cn= new DbConInstall("localhost","Programador","programador","3306");
        cn.getConexion();
        cn.closeConexion();
    }
}