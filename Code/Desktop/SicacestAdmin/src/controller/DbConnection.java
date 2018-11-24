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
public class DbConnection {
    private String USERNAME = "Programador";
    private String PASSWORD = "12345";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "db_caracterizacion";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String JDBC_MYSQL_DRIVER="jdbc:mysql://";
    private String URL = JDBC_MYSQL_DRIVER+HOST+":"+PORT+"/"+DATABASE;
    
    private Connection cn=null;
    public DbConnection(){
        try{
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
}
