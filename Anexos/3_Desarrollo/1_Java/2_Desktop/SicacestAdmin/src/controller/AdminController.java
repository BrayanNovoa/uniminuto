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
    
    @Override public boolean buscarPeriodos(){
        String [] campos = {"periodo"};
        String [] registro = new String [campos.length];
        String sql ="SELECT periodo FROM tb_periodos;";
        model = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
            registro[0]= rs.getString(campos[0]);
            System.out.println(registro[0]);
            model.addRow(registro);
            }
            view.Admin.tbPeriodos.setModel(model);
        } catch (java.sql.SQLException ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    @Override
    public boolean buscarFacultades(){
        String[] campos={"facultad"};
        String[] registro = new String[campos.length];
        String sql = "SELECT facultad FROM tb_facultades WHERE sede_id IN(SELECT sede_id FROM tb_sedes WHERE sede='"+view.Admin.txtSede.getText()+"');";
        model = new DefaultTableModel(null,campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0]=rs.getString(campos[0]);
                view.Admin.cmbFacultades.addItem(registro[0]);
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
    public boolean buscarProgramas(String facultad){
        String[]campos={"programa"};
        String[]registro = new String[campos.length];
        String sql ="select programa FROM tb_programas WHERE facultad_id IN(SELECT facultad_id from tb_facultades WHERE facultad ='"+facultad+"');";
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
                model = (DefaultTableModel)view.Admin.tbEstudiantes.getModel();
                model.setColumnIdentifiers(titulos);

                estudiantes = buffer.lines().toArray();
                for(int i = 1; i <= estudiantes.length; i++){
                    String linea = estudiantes[i-1].toString().trim();
                    String[] datosFila = linea.split(",");
                    model.addRow(datosFila);
                }
                view.Admin.btnGuardarEstudiantes.setVisible(true);
            } catch (FileNotFoundException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IOException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return false;
    }
    
    @Override
    public boolean guardarEstudiantes(Object estudiantes[], String periodo, String programa){
        float total = estudiantes.length;
        float tasa = 100/total;
        float avance;
        System.out.println(tasa);
        PreparedStatement pst;
        String consulta;
        String sql;
        String sqlPrograma;
        String sqlPeriodo;
        String fin = "');\n";
        Cargador cargador = new Cargador("Guardar Estudiantes",total);
        cargador.setVisible(true);
        view.Cargador.txtAccion.setText("Guardando");
        for(int i=1; i<= total;i++){
            avance= tasa*i;
            view.Cargador.progress.setValue((int) avance);
            System.out.println("Progreso: "+tasa*i);
            view.Cargador.txtPercent.setText(Float.toString(avance));
            view.Cargador.txtElemento.setText(estudiantes[i-1].toString());
            sql="INSERT INTO tb_estudiantes (programa_id, periodo_id, rol_id, estudiante_cod) VALUES(";
            sqlPrograma = "(SELECT programa_id FROM tb_programas WHERE programa= '"+programa+"'),";
            sqlPeriodo = "(SELECT periodo_id FROM tb_periodos WHERE periodo ='"+periodo+"'),";
            consulta=sql+sqlPrograma+sqlPeriodo+"4,"+"'"+estudiantes[i-1].toString().trim()+fin;
            //System.out.println(consulta);
            try{
                pst = entrar.getConexion().prepareStatement(consulta);
                if(pst!=null){
                    pst.execute(consulta);
                    //System.out.println("Estudiante Guardado: "+estudiantes[i-1]);
                    view.Cargador.txtStatus.setText("OK.");
                }else{
                    JOptionPane.showMessageDialog(null, "ERROR");
                }
            }catch(SQLException ex){
                if(ex.equals("Duplicate entry '000324471' for key 'estudiante'")){
                    System.err.println("ERROR :"+ex);
                    //JOptionPane.showMessageDialog(null, "Estudiante "+estudiantes[i-1]+" ya se encuentra registrado.");
                }
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
    
    public static void main(String [] args){
        AdminController adc = new AdminController();
        //adc.buscarFacultades();
        //adc.buscarPeriodos();
    }
    
}
