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
import java.sql.SQLException;
import javax.swing.JOptionPane;
import view.Cargador;

/**
 *
 * @author b41n
 */
public class CargarArchivoController implements ICargarArchivo{
    
    DefaultTableModel model;
    CargadorController carc = new CargadorController();
    DbConnection entrar = new DbConnection();
    public Object[] estudiantes;
    Object datoArchivo;
    String sql;
    PreparedStatement pst,pstR;
    
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
                //model = new DefaultTableModel(null,titulos);
                //model = (DefaultTableModel)view.Admin.tbEstudiantes.getModel();
                model.setColumnIdentifiers(titulos);
                estudiantes = buffer.lines().toArray();
                for(int i = 1; i <= estudiantes.length; i++){
                    String linea = estudiantes[i-1].toString().trim();
                    String[] datosFila = linea.split(",");
                    model.addRow(datosFila);
                }
                view.CargarArchivo.tbEstudiantes.setModel(model);
                //view.Admin.btnGuardarEstudiantes.setVisible(true);
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
    public boolean guardarEstudiantes(String periodo){
        float total = estudiantes.length;
        String l = model.getColumnName(1);
        Object m =  model.getValueAt(0, 2);
        //JOptionPane.showMessageDialog(null, "Column Name 1: "+l);
        JOptionPane.showMessageDialog(null, "Column Name 1: "+m);
        float tasa = 100/total;
        float avance;
        System.out.println(tasa);
        String consulta;
        String sqlPrograma;
        String sqlPeriodo;
        String fin = "');\n";
        Cargador cargador = new Cargador("Guardar Estudiantes",total);
        cargador.setVisible(true);
        view.Cargador.txtAccion.setText("Estudiantes cargados al sistema:");
        for(int i=1; i<= total;i++){
            avance= tasa*i;
            view.Cargador.progress.setValue((int) avance);
            System.out.println("Progreso: "+tasa*i);
            view.Cargador.txtPercent.setText(Float.toString(avance));
            view.Cargador.txtElemento.setText(""+estudiantes.length);
            // Lo primero que hacemos es insertar el código del estudiente, el correo,
            // su programa y el periodo de registro
            sql="INSERT INTO tb_estudiantes (estudiante_cod, correo_insti, programa_id, periodo_id) VALUES ('"+model.getValueAt(i-1, 0)+"' ,'"+model.getValueAt(i-1, 1)+"' ,(SELECT programa_id FROM tb_programas WHERE programa= '"+model.getValueAt(i-1, 4)+"'),(SELECT periodo_id FROM tb_periodos WHERE periodo ='2019-01'));";
            //System.out.println("Consulta SQL: "+ sql);
            try{
                pst = entrar.getConexion().prepareStatement(sql);
                if(pst!=null){
                    pst.execute(sql);
                    //view.Cargador.txtStatus.setText("OK.");
                }else{
                    JOptionPane.showMessageDialog(null, "ERROR");
                }
            }catch(SQLException ex){
                System.err.println("ERROR:"+ex);
                view.Cargador.txtStatus.setText("ERROR: "+ex);
                JOptionPane.showMessageDialog(null, "ERROR: "+ex);
                return false;
            }
            //// Inicio de carga de los datos de Archivo:
            //for(int r=1; r<= total;r++){
                for(int j=2;j<model.getColumnCount();j++){
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
                        return false;
                    }
                    //Object m =  model.getValueAt(1, 5);
                    //System.out.println(model.getValueAt(i-1, j));
                    //System.out.println("Consulta SQL: "+consulta);
                }
                
            //}
            if(i==estudiantes.length){
                JOptionPane.showMessageDialog(null, "La lista de estudiantes ha sido guardada."+"Estudiante Guardados: "+i);
                System.out.println("Estudiantes Guardados: "+i);
                return true;
            }
        }
        return false;
    }
    
}
