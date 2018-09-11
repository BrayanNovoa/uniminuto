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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author b41n
 */
public class CargaRegistroController implements interfaces.ICargaDatos{
    
    DefaultTableModel model;
    Object[] registros;
    
    @Override
    public void cargarRegistroExistente(){
        // TODO add your handling code here:
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
                model = (DefaultTableModel)view.CargarDatosExistentes.tbRegistro.getModel();
                model.setColumnIdentifiers(titulos);

                registros = buffer.lines().toArray();
                for(int i = 0; i < registros.length; i++){
                    String linea = registros[i].toString().trim();
                    String[] datosFila = linea.split(",");
                    model.addRow(datosFila);
                }
                view.CargarDatosExistentes.btnGuardarRegistros.setEnabled(true);
            } catch (FileNotFoundException ex) {
                Logger.getLogger(CargaRegistroController.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IOException ex) {
                Logger.getLogger(CargaRegistroController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    @Override
    public boolean guardarRegistroCargado(){
        return false;
    }
    
}
