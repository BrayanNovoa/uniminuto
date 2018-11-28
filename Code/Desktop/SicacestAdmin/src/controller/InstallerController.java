/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;


/**
 *
 * @author b41n
 */
public class InstallerController implements interfaces.IInstaller{
    File file;
    DefaultTableModel model;
    public Object[] lineas;
    String linea;
    String textoMuestra="";
    public Object[] estudiantes;
    String sql;
    PreparedStatement pst;
    DbConInstall entrar;
    int total;
    float avance;
    boolean flag=false;
    public Connection establecerConexion(String host, String user, String pass, String port){
        entrar = new DbConInstall(host,user,pass,port);
        Connection cn = entrar.getConexion();
        System.out.println(cn);
        if(cn == null){
            return null;
        }else{
            return cn;
        }
    }
    @Override
    public boolean cargarArchivo(){
        int nL=0;
        JButton abrir = new JButton();
        JFileChooser jfc = new JFileChooser();
        jfc.setCurrentDirectory(new File("/home/b41n/Escritorio"));
        jfc.setDialogTitle("Asistente de instalación.");
        jfc.setFileSelectionMode(JFileChooser.FILES_ONLY);
        switch (jfc.showOpenDialog(abrir)) {
            case JFileChooser.APPROVE_OPTION:
                String ruta = jfc.getSelectedFile().getAbsolutePath();
                System.out.println("Ruta Del Archivo: "+ruta);
                File archivo = new File(ruta);
                try {
                    int i=0;
                    BufferedReader buffer;
                    buffer = new BufferedReader(new InputStreamReader(new FileInputStream(archivo),"UTF-8"));
                    lineas = buffer.lines().toArray();
                    for (Object linea1 : lineas) {
                        nL=nL+1;
                    }
                    total=nL;
                    view.Installer.progress.setMaximum(total);
                    System.out.println("Ruta Del Archivo: "+ruta);
                    nL=0;
                    for (Object linea1 : lineas) {
                        textoMuestra = textoMuestra + linea1 + "\n";
                        nL=nL+1;
                        view.Installer.txpArchivo.setText(textoMuestra);
                        view.Installer.progress.setValue(nL);
                        calcularTasa(nL);
                    }
                    endInstall();
                    JOptionPane.showMessageDialog(null,
                            "Instalación de la Base de Datos Satisfactoria.\n"
                                    +nL+" Operaciones realizadas.");
                    return true;
                } catch (FileNotFoundException ex) {
                    Logger.getLogger(InstallerController.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IOException ex) {
                Logger.getLogger(CargarArchivoController.class.getName()).log(Level.SEVERE, null, ex);
            }
            case JFileChooser.CANCEL_OPTION:
                JOptionPane.showMessageDialog(null, "No se ha seleccionado ningún archivo.");
                return false;
            default:
                break;
        }
        return false;
    }
    
    public void calcularTasa(int proceso){
        float max = 100;
        float tasa = max/total;
        //System.out.println("Procesos: "+total);
        //System.out.println("proceso: "+proceso);
        avance= tasa*proceso;
        System.out.println("Avance: "+avance);
        view.Installer.progress.setValue(proceso);
        ejecutarConsulta(lineas[proceso-1].toString());
    }
    
    @Override
    public boolean ejecutarConsulta(String sql){
        try{
            pst = entrar.getConexion().prepareStatement(sql);
            int n = pst.executeUpdate();
            if("DROP DATABASE db_caracterizacion;".equals(sql)){
                n=1;
                JOptionPane.showMessageDialog(null,"Base de datos Creada.");
            }
            if (n>0){
                System.out.println("Ok.");
                //JOptionPane.showMessageDialog(null,"Registro Gguardado Con Exito");
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
            //JOptionPane.showMessageDialog(null, "Error en el registro :"+sql);
        }
        return false;
    }
    public boolean endInstall(){
        /*
        view.Login.btnInstallDB.setEnabled(false);
        view.Login.cmbSede.setEnabled(true);
        LoginController log = new LoginController();
        log.llenarComboRectorias();
        */
        return true;
    }
}