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
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.table.DefaultTableModel;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.swing.JOptionPane;
import view.Cargador;

/**
 *
 * @author b41n
 */
public class CargarArchivoController implements Runnable{
    
    private final AtomicBoolean running = new AtomicBoolean(false);
    public CargarArchivoController() {}
    DefaultTableModel model;
    CargadorController carc = new CargadorController();
    DbConnection entrar = new DbConnection();
    Connection cn;
    Statement st;
    ResultSet rs;
    public Object[] estudiantes;
    float total;
    int tamano;
    Object datoArchivo;
    String sqlconf;
    String sql;
    PreparedStatement pst,pstR;
    

    public void stop(){
        running.set(false);
    }
    
    @Override
    public void run(){
        running.set(true);
        model = (DefaultTableModel)view.CargarArchivo.tbEstudiantes.getModel();
        int a = (model.getRowCount()*0)-1;
        int i;
        //System.out.println("Valor de a antes de borrar la tabla"+a);
        //System.out.println("Valor de i antes de borrar la tabla"+i);
        try{
            for(i = a; i >= 0; i--) {
                model.removeRow(model.getRowCount()-1);
                view.CargarArchivo.tbEstudiantes.setModel(model);
            }
            //System.out.println("Valor de a al final de borrar la tabla"+a);
            //System.out.println("Valor de i al final de borrar la tabla"+i);
        } catch(ArrayIndexOutOfBoundsException ex){
                Logger.getLogger(CargarArchivoController.class.getName()).log(Level.SEVERE, null, ex);
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
            BufferedReader buffer;
            try {
                buffer = new BufferedReader(new InputStreamReader(new FileInputStream(archivo),"UTF-8"));
                //BufferedReader buffer = new BufferedReader(new FileReader(archivo));
                String primerLinea = buffer.readLine().trim();
                String[] titulos = primerLinea.split(",");
                model.setColumnIdentifiers(titulos);
                estudiantes = buffer.lines().toArray();
                int e;
                for(e = 0; e <= estudiantes.length-1; e++){
                    String linea = estudiantes[e].toString().trim();
                    String[] datosFila = linea.split(",");
                    model.addRow(datosFila);
                }
                //System.out.println("Valor de e despues de cargar los datos a la tabla"+e);
                total = estudiantes.length;
                    float tasa = 100/total;
                    float avance;
                    System.out.println(tasa);
                    String consulta;
                    Cargador cargador = new Cargador("Guardar Estudiantes",total);
                    cargador.setVisible(true);
                    view.Cargador.txtAccion.setText("Estudiantes cargados al sistema:");
                    int j;
                    for(j=1; j<=estudiantes.length;j++){
                        avance= tasa*j;
                        Cargador.progress.setValue((int) avance);
                        System.out.println("Progreso: "+tasa*j);
                        Cargador.txtPercent.setText(Float.toString(avance)+"%");
                        
                        sqlconf="SELECT estudiante_cod FROM tb_estudiantes WHERE estudiante_cod='"+model.getValueAt(j-1, 0)+"';";
                        try{
                            cn = entrar.getConexion();
                            st = cn.createStatement();
                            rs = st.executeQuery(sqlconf);
                            if(rs.next()){
                                JOptionPane.showMessageDialog(null, "El estudiante "+model.getValueAt(j-1, 0)+" Ya se encuentra registrado.\n Por favor revise el archivo que está cargando.");
                                break;
                            }else{
                                sql="INSERT INTO tb_estudiantes (estudiante_cod, correo_insti, programa_id, periodo_id) VALUES ('"+model.getValueAt(j-1, 0)+"' ,'"+model.getValueAt(j-1, 1)+"' ,(SELECT programa_id FROM tb_programas WHERE programa= '"+model.getValueAt(j-1, 5)+"'),(SELECT periodo_id FROM tb_periodos WHERE periodo ='"+model.getValueAt(j-1, 2)+"'));";
                                //System.out.println("Consulta SQL: "+ sql);
                                try{
                                    pst = entrar.getConexion().prepareStatement(sql);
                                    if(pst!=null){
                                        Cargador.txtElemento.setText(""+j);
                                        pst.execute(sql);
                                    }else{
                                        JOptionPane.showMessageDialog(null, "ERROR");
                                    }
                                }catch(SQLException ex){
                                    System.err.println("ERROR:"+ex);
                                    Cargador.txtStatus.setText("ERROR: "+ex);
                                    JOptionPane.showMessageDialog(null, "ERROR: "+ex);
                                }
                                int k;
                                for(k=3;k<model.getColumnCount();k++){
                                    consulta="INSERT INTO tb_respuestas (encuesta_id, pregunta_id, estudiante_cod, respuesta) VALUES ((SELECT encuesta_id FROM tb_preguntas WHERE pregunta= '"+model.getColumnName(k)+"'), (SELECT pregunta_id FROM tb_preguntas WHERE pregunta='"+model.getColumnName(k)+"'),'"+model.getValueAt(j-1, 0)+"','"+model.getValueAt(j-1, k)+"');";
                                    try{
                                        pstR = entrar.getConexion().prepareStatement(consulta);
                                        if(pstR!=null){
                                            //System.out.println("Consulta SQL: "+consulta);
                                            pstR.execute(consulta);
                                        }
                                    }catch(SQLException ex){
                                        System.err.println("ERROR:"+ex);
                                        JOptionPane.showMessageDialog(null, "ERROR: "+ex);
                                    }
                                }
                                if(j==estudiantes.length){
                                    //JOptionPane.showMessageDialog(null, "La lista de estudiantes ha sido guardada."+"Estudiante Guardados: "+j);
                                    System.out.println("Estudiantes Guardados: "+j);
                                    Thread.interrupted();
                                }
                            }
                        }catch(SQLException ex){
                            System.out.println(ex);
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