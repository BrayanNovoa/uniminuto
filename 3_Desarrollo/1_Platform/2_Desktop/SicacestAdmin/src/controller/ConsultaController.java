/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author b41n
 */
public class ConsultaController {
    int  opcion;
    DbConnection entrar = new DbConnection();
    DefaultTableModel model;
    
    public ConsultaController(int opcion){
        this.opcion=opcion;
    }
}
