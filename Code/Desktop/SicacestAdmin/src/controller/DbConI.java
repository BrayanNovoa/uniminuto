/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.Connection;

/**
 *
 * @author Brayan
 */
public class DbConI {
    DbConInstall entrarI;
    public Connection establecerConexion(String host, String user, String pass, String port){
        entrarI = new DbConInstall(host,user,pass,port);
        Connection cn = entrarI.getConexion();
        System.out.println(cn);
        if(cn == null){
            return null;
        }else{
            return cn;
        }
    }
    
}
