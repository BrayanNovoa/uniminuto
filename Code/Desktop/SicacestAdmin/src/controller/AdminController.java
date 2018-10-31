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
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import view.Cargador;

/**
 *
 * @author b41n
 */

public class AdminController implements interfaces.IAdmin {
    DefaultTableModel model;
    CargadorController carc = new CargadorController();
    DbConnection entrar = new DbConnection();
    public Object[] estudiantes;
    String sql;
    PreparedStatement pst;
    
    @Override
    public boolean guardarPeriodo(String periodo){
        try{
            sql = "INSERT INTO tb_periodos (periodo)VALUES(?)";
            pst = entrar.getConexion().prepareStatement(sql);
            pst.setString(1, periodo);
            if(pst.executeUpdate()==1){
                System.out.println("Periodo "+periodo+" guardado con éxito.");
                buscarPeriodos();
                JOptionPane.showMessageDialog(null, "Periodo "+periodo
                        +" guardado correctamente." );
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
            JOptionPane.showMessageDialog(null, "Error guardando el periodo " );
        }
        return false;
    }
    
    @Override public boolean buscarPeriodos(){
        String [] campos = {"periodo"};
        String [] registro = new String [campos.length];
        sql ="SELECT periodo FROM tb_periodos;";
        model = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
            registro[0]= rs.getString(campos[0]);
            model.addRow(registro);
            }
            view.Admin.tbPeriodos.setModel(model);
        } catch (java.sql.SQLException ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE,
                    null, ex);
        }
        return false;
    }
    
    @Override
    public boolean guardarFacultad(String facultad, String sede){
        try{
            sql = "INSERT INTO tb_facultades (sede_id, facultad)VALUES((select sede_id from tb_sedes where sede = '"+sede+"'),?)";
            pst = entrar.getConexion().prepareStatement(sql);
            pst.setString(1, facultad);
            if(pst.executeUpdate()==1){
                System.out.println("Facultad "+facultad+" guardada con éxito.");
                buscarFacultades();
                JOptionPane.showMessageDialog(null, "Facultad "+facultad
                        +" guardado correctamente." );
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
            JOptionPane.showMessageDialog(null, "Error guardando la facultad"+ facultad);
        }
        return false;
    }
    
    @Override
    public boolean buscarFacultades(){
        String[] campos={"facultad"};
        String[] registro = new String[campos.length];
        sql = "SELECT facultad FROM tb_facultades WHERE sede_id IN"+
                "(SELECT sede_id FROM tb_sedes WHERE sede='"+
                view.Admin.txtSede.getText()+"');";
        model = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0]=rs.getString(campos[0]);
                model.addRow(registro);
            }
            view.Admin.tbFacultades.setModel(model);
            return true;
        }catch(SQLException ex){
            System.out.println("ERROR: "+ex);
        }
        return false;
    }
    
    @Override
    public boolean guardarPrograma(String facultad, String programa){
        try{
            sql = "INSERT INTO tb_programas (facultad_id, programa)VALUES("+
                    "(SELECT facultad_id FROM tb_facultades WHERE facultad = '"+
                    facultad+"'),?)";
            pst = entrar.getConexion().prepareStatement(sql);
            pst.setString(1, programa);
            if(pst.executeUpdate()==1){
                System.out.println("Programa "+programa+" guardado con éxito.");
                buscarProgramas(facultad);
                JOptionPane.showMessageDialog(null, "Programa "+programa
                        +" guardado correctamente." );
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
            JOptionPane.showMessageDialog(null, "Error guardando el Programa" );
        }
        return false;
    }
    
    @Override
    public boolean buscarProgramas(String facultad){
        String[]campos={"programa"};
        String[]registro = new String[campos.length];
        sql ="select programa FROM tb_programas WHERE facultad_id IN"+
                "(SELECT facultad_id from tb_facultades WHERE facultad ='"+facultad+"');";
        model = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0]=rs.getString(campos[0]);
                model.addRow(registro);
            }
            view.Admin.tbProgramas.setModel(model);
            
        }catch(SQLException ex){
            System.out.println("ERROR: "+ex);
        }
        return false;
    }
    
    @Override
    public boolean cargarListaEstudiantes(){
        model = (DefaultTableModel)view.Admin.tbEstudiantes.getModel();
        int a = model.getRowCount()-1;
        for (int i = a; i >= 0; i--) {          
            model.removeRow(model.getRowCount()-1);
            view.Admin.tbEstudiantes.setModel(model);
        }
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
                //model = new DefaultTableModel(null,titulos);
                //model = (DefaultTableModel)view.Admin.tbEstudiantes.getModel();
                model.setColumnIdentifiers(titulos);
                estudiantes = buffer.lines().toArray();
                for(int i = 1; i <= estudiantes.length; i++){
                    String linea = estudiantes[i-1].toString().trim();
                    String[] datosFila = linea.split(",");
                    model.addRow(datosFila);
                }
                view.Admin.tbEstudiantes.setModel(model);
                view.Admin.btnGuardarEstudiantes.setVisible(true);
                return true;
            } catch (FileNotFoundException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IOException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }
    
    @Override
    public boolean guardarEstudiantes(String periodo, String programa){
        float total = estudiantes.length;
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
            sql="INSERT INTO tb_estudiantes (programa_id, periodo_id, estudiante_cod) VALUES(";
            sqlPrograma = "(SELECT programa_id FROM tb_programas WHERE programa= '"+programa+"'),";
            sqlPeriodo = "(SELECT periodo_id FROM tb_periodos WHERE periodo ='"+periodo+"'),";
            consulta=sql+sqlPrograma+sqlPeriodo+"'"+estudiantes[i-1].toString().trim()+fin;
            try{
                pst = entrar.getConexion().prepareStatement(consulta);
                if(pst!=null){
                    pst.execute(consulta);
                    view.Cargador.txtStatus.setText("OK.");
                }else{
                    JOptionPane.showMessageDialog(null, "ERROR");
                }
            }catch(SQLException ex){
                System.err.println("ERROR:"+ex);
                view.Cargador.txtStatus.setText("ERROR: "+ex);
                JOptionPane.showMessageDialog(null, "ERROR: "+ex);
                return false;
            }
            if(i==estudiantes.length){
                JOptionPane.showMessageDialog(null, "La lista de estudiantes ha sido guardada."+"Estudiante Guardados: "+i);
                System.out.println("Estudiantes Guardados: "+i);
                return true;
            }
        }
        return false;
    }
    public void filtroGeneral(){
        String[]campos={"Programa", "Estudiantes"};
        String[]registro = new String[campos.length];
        sql ="SELECT prog.programa AS Programa, (SELECT COUNT(*) FROM tb_estudiantes AS estu WHERE estu.programa_id = prog.programa_id) AS Estudiantes FROM tb_programas AS prog ORDER BY Programa;";
        model = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0]=rs.getString(campos[0]);
                registro[1]=rs.getString(campos[1]);
                model.addRow(registro);
            }
            view.Admin.tbConsultas.setModel(model);
        }catch(SQLException ex){
            System.out.println("ERROR: "+ex);
        }
    }
    public void filtroEncuesta(){
        
    }
    
    public void filtroEstudiante(String estudianteCod){
        String[]campos={"CODIGO_RESP", "Estudiante", "Encuesta", "Pregunta", "Respuesta"};
        String[]registro = new String[campos.length];
        sql="SELECT R.respuesta_id AS CODIGO_RESP, R.estudiante_cod AS Estudiante, E.encuesta AS Encuesta, P.pregunta AS Pregunta, R.respuesta AS Respuesta FROM tb_encuestas AS E, tb_preguntas AS P, tb_respuestas AS R WHERE E.encuesta_id=P.encuesta_id AND P.pregunta_id=R.pregunta_id AND R.estudiante_cod='"+estudianteCod+"';";
        model = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0]=rs.getString(campos[0]);
                registro[1]=rs.getString(campos[1]);
                registro[2]=rs.getString(campos[2]);
                registro[3]=rs.getString(campos[3]);
                registro[4]=rs.getString(campos[4]);
                model.addRow(registro);
            }
            view.Admin.tbConsultas.setModel(model);
        }catch(SQLException ex){
            System.out.println("ERROR: "+ex);
        }
    }
}
