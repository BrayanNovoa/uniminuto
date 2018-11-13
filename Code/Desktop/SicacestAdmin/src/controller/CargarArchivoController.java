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
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.table.DefaultTableModel;
import interfaces.ICargarArchivo;
import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JProgressBar;
import view.Cargador;

/**
 *
 * @author b41n
 */
public class CargarArchivoController extends Thread implements ICargarArchivo{
    
    private static final int DELAY = 500;

  JProgressBar progressBar;

  public CargarArchivoController(JProgressBar bar) {
    progressBar = bar;
  }

  /*
  public void run() {
    int minimum = progressBar.getMinimum();
    int maximum = progressBar.getMaximum();
    for (int i = minimum; i < maximum; i++) {
      try {
          
        int value = progressBar.getValue();
        progressBar.setValue(value + 1);

        Thread.sleep(DELAY);
        
        
      } catch (InterruptedException ignoredException) {
      }
    }
  }
    */
    
    DefaultTableModel model;
    CargadorController carc = new CargadorController();
    DbConnection entrar = new DbConnection();
    public Object[] estudiantes;
    float total;
    int tamano;
    
    Object datoArchivo;
    String sql;
    PreparedStatement pst,pstR;
    
    public static void main(String args[]) {
    JFrame frame = new JFrame();
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
 
    JProgressBar aJProgressBar = new JProgressBar(0, 50);
    aJProgressBar.setStringPainted(true);

    JButton aJButton = new JButton("Guardar");

    ActionListener actionListener = (ActionEvent e) -> {
        aJButton.setEnabled(false);
        Thread stepper = new CargarArchivoController(aJProgressBar);
        stepper.start();
    };
    aJButton.addActionListener(actionListener);
    frame.add(aJProgressBar, BorderLayout.NORTH);
    frame.add(aJButton, BorderLayout.SOUTH);
    frame.setSize(300, 200);
    frame.setVisible(true);
  }
    
    
    @Override
    public boolean cargarListaEstudiantes(){
        model = (DefaultTableModel)view.CargarArchivo.tbEstudiantes.getModel();
        int a = model.getRowCount()-1;
        for (int i = a; i >= 0; i--) {          
            model.removeRow(model.getRowCount()-1);
            view.CargarArchivo.tbEstudiantes.setModel(model);
        }
        JButton abrir = new JButton();
        JFileChooser jfc = new JFileChooser();
        jfc.setCurrentDirectory(new File("/home/b41n/Escritorio/carga"));
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
                model.setColumnIdentifiers(titulos);
                estudiantes = buffer.lines().toArray();
                tamano=estudiantes.length;
                for(int i = 1; i <= estudiantes.length; i++){
                    String linea = estudiantes[i-1].toString().trim();
                    String[] datosFila = linea.split(",");
                    model.addRow(datosFila);
                    
                    
                    
                }
                view.CargarArchivo.tbEstudiantes.setModel(model);
                return true;
            } catch (FileNotFoundException ex) {
                Logger.getLogger(CargarArchivoController.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IOException ex) {
                Logger.getLogger(CargarArchivoController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }
    
    
    @Override
    public int guardarEstudiantes(){
        total = estudiantes.length;
        float tasa = 100/total;
        float avance;
        System.out.println(tasa);
        String consulta;
        String fin = "');\n";
        Cargador cargador = new Cargador("Guardar Estudiantes",total);
        cargador.setVisible(true);
        view.Cargador.txtAccion.setText("Estudiantes cargados al sistema:");
        for(int i=1; i<= total;i++){
            avance= tasa*i;
            view.Cargador.progress.setValue((int) avance);
            System.out.println("Progreso: "+tasa*i);
            //view.Cargador.txtPercent.setText(Float.toString(avance));
            view.Cargador.txtElemento.setText(""+estudiantes.length);
            sql="INSERT INTO tb_estudiantes (estudiante_cod, correo_insti, programa_id, periodo_id) VALUES ('"+model.getValueAt(i-1, 0)+"' ,'"+model.getValueAt(i-1, 1)+"' ,(SELECT programa_id FROM tb_programas WHERE programa= '"+model.getValueAt(i-1, 5)+"'),(SELECT periodo_id FROM tb_periodos WHERE periodo ='"+model.getValueAt(i-1, 2)+"'));";
            System.out.println("Consulta SQL: "+ sql);
            try{
                pst = entrar.getConexion().prepareStatement(sql);
                if(pst!=null){
                    Cargador.txtPercent.setText(Float.toString(avance)+"%");
                    //pst.execute(sql);
                    Cargador.txtStatus.setText("OK.");
                }else{
                    JOptionPane.showMessageDialog(null, "ERROR");
                }
            }catch(SQLException ex){
                System.err.println("ERROR:"+ex);
                Cargador.txtStatus.setText("ERROR: "+ex);
                JOptionPane.showMessageDialog(null, "ERROR: "+ex);
                //return false;
            }
            for(int j=3;j<model.getColumnCount();j++){
                consulta="INSERT INTO tb_respuestas (encuesta_id, pregunta_id, estudiante_cod, respuesta) VALUES ((SELECT encuesta_id FROM tb_preguntas WHERE pregunta= '"+model.getColumnName(j)+"'), (SELECT pregunta_id FROM tb_preguntas WHERE pregunta='"+model.getColumnName(j)+"'),'"+model.getValueAt(i-1, 0)+"','"+model.getValueAt(i-1, j)+"');";
                try{
                    pstR = entrar.getConexion().prepareStatement(consulta);
                    if(pstR!=null){
                        //pstR.execute(consulta);
                        System.out.println("Consulta SQL: "+consulta);
                    }
                }catch(SQLException ex){
                    System.err.println("ERROR:"+ex);
                    JOptionPane.showMessageDialog(null, "ERROR: "+ex);
                    //return false;
                }
                //Object m =  model.getValueAt(1, 5);
                //System.out.println(model.getValueAt(i-1, j));
                //System.out.println("Consulta SQL: "+consulta);
            }
            if(i==estudiantes.length){
                JOptionPane.showMessageDialog(null, "La lista de estudiantes ha sido guardada."+"Estudiante Guardados: "+i);
                System.out.println("Estudiantes Guardados: "+i);
                //return true;
            }
        }
        return tamano;
    }
    
    @Override
    public void run(){
        model = (DefaultTableModel)view.CargarArchivo.tbEstudiantes.getModel();
        int a = model.getRowCount()-1;
        for (int i = a; i >= 0; i--) {          
            model.removeRow(model.getRowCount()-1);
            view.CargarArchivo.tbEstudiantes.setModel(model);
        }
        JButton abrir = new JButton();
        JFileChooser jfc = new JFileChooser();
        jfc.setCurrentDirectory(new File("/home/b41n/Escritorio/carga"));
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
                model.setColumnIdentifiers(titulos);
                estudiantes = buffer.lines().toArray();
                for(int e = 1; e <= estudiantes.length; e++){
                    String linea = estudiantes[e-1].toString().trim();
                    String[] datosFila = linea.split(",");
                    model.addRow(datosFila);
                }
                total = estudiantes.length;
                    float tasa = 100/total;
                    float avance;
                    System.out.println(tasa);
                    String consulta;
                    Cargador cargador = new Cargador("Guardar Estudiantes",total);
                    cargador.setVisible(true);
                    view.Cargador.txtAccion.setText("Estudiantes cargados al sistema:");
                    for(int i=1; i<=estudiantes.length;i++){
                        avance= tasa*i;
                        Cargador.progress.setValue((int) avance);
                        System.out.println("Progreso: "+tasa*i);
                        Cargador.txtPercent.setText(Float.toString(avance)+"%");
                        //Cargador.txtElemento.setText(""+tamano);
                        sql="INSERT INTO tb_estudiantes (estudiante_cod, correo_insti, programa_id, periodo_id) VALUES ('"+model.getValueAt(i-1, 0)+"' ,'"+model.getValueAt(i-1, 1)+"' ,(SELECT programa_id FROM tb_programas WHERE programa= '"+model.getValueAt(i-1, 5)+"'),(SELECT periodo_id FROM tb_periodos WHERE periodo ='"+model.getValueAt(i-1, 2)+"'));";
                        System.out.println("Consulta SQL: "+ sql);
                        try{
                            pst = entrar.getConexion().prepareStatement(sql);
                            if(pst!=null){
                                Cargador.txtElemento.setText(""+i);
                                pst.execute(sql);
                                Thread.sleep(0);
                            }else{
                                JOptionPane.showMessageDialog(null, "ERROR");
                            }
                        }catch(SQLException ex){
                            System.err.println("ERROR:"+ex);
                            Cargador.txtStatus.setText("ERROR: "+ex);
                            JOptionPane.showMessageDialog(null, "ERROR: "+ex);
                        } catch (InterruptedException ex) {
                            Logger.getLogger(CargarArchivoController.class.getName()).log(Level.SEVERE, null, ex);
                            JOptionPane.showMessageDialog(null,"Error en la ejecución del hilo");
                        }
                        for(int j=3;j<model.getColumnCount();j++){
                            consulta="INSERT INTO tb_respuestas (encuesta_id, pregunta_id, estudiante_cod, respuesta) VALUES ((SELECT encuesta_id FROM tb_preguntas WHERE pregunta= '"+model.getColumnName(j)+"'), (SELECT pregunta_id FROM tb_preguntas WHERE pregunta='"+model.getColumnName(j)+"'),'"+model.getValueAt(i-1, 0)+"','"+model.getValueAt(i-1, j)+"');";
                            try{
                                pstR = entrar.getConexion().prepareStatement(consulta);
                                if(pstR!=null){
                                    pstR.execute(consulta);
                                    System.out.println("Consulta SQL: "+consulta);
                                }
                            }catch(SQLException ex){
                                System.err.println("ERROR:"+ex);
                                JOptionPane.showMessageDialog(null, "ERROR: "+ex);
                            }
                        }
                        if(i==estudiantes.length){
                            JOptionPane.showMessageDialog(null, "La lista de estudiantes ha sido guardada."+"Estudiante Guardados: "+i);
                            System.out.println("Estudiantes Guardados: "+i);
                        }
                    }
                view.CargarArchivo.tbEstudiantes.setModel(model);
            } catch (FileNotFoundException ex) {
                Logger.getLogger(CargarArchivoController.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IOException ex) {
                Logger.getLogger(CargarArchivoController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        
    }
    
}