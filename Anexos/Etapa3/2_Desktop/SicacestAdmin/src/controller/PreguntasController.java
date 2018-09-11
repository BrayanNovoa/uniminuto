/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import view.Cargador;

/**
 *
 * @author b41n
 */
public class PreguntasController implements interfaces.IPreguntas{
    DbConnection entrar = new DbConnection();
    DefaultTableModel model;
    
    @Override
    public boolean guardarPregunta(String encuesta, String tipoPregunta, String pregunta){
        Cargador cargador = new Cargador("Guardar Encuesta",1);
        cargador.setVisible(true);
        view.Cargador.txtAccion.setText("Guardando");
        try{
            PreparedStatement pst;
            Connection cn = entrar.getConexion();
            view.Cargador.txtElemento.setText(pregunta);
            String sql ="INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES(";
            String sqlEncuesta="(SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='"+encuesta+"'),";
            String sqlTipoPregunta="(SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta = '"+tipoPregunta+"'),'"+pregunta+"');\n";
            String consulta = sql+sqlEncuesta+sqlTipoPregunta;
            System.out.println(consulta);
            pst = entrar.getConexion().prepareStatement(consulta);
            if(pst.executeUpdate()==1){
                view.Cargador.txtStatus.setText("OK.");
                JOptionPane.showMessageDialog(null, "Guardado:");
            }else{
                JOptionPane.showMessageDialog(null, "ERROR");
            }   
        }catch(NullPointerException | SQLException ex){
            view.Cargador.txtStatus.setText("ERROR.");
            System.out.println("ERROR: "+ex);
            JOptionPane.showMessageDialog(null, "ERROR: "+ex);
        }
        return false;
    }
    
    @Override
    public void buscarPreguntas(String encuesta){
        String [] campos={"Pregunta", "Tipo Pregunta"};
        String [] registro = new String[campos.length];
        String sql = "SELECT pregunta, tipo_pregunta FROM tb_preguntas AS P, tb_tipo_preguntas AS TP WHERE encuesta_id IN(SELECT encuesta_id FROM tb_encuestas WHERE encuesta='"+encuesta+"') AND TP.tipo_pregunta_id=P.tipo_pregunta_id;";
        //String sql = "SELECT pregunta, tipo_pregunta FROM tb_preguntas AS P, tb_tipo_preguntas AS TP WHERE encuesta_id IN(SELECT encuesta_id FROM tb_encuestas WHERE encuesta='"+encuesta+"') AND TP.tipo_pregunta_id=P.tipo_pregunta_id;";
        model = new DefaultTableModel(null,campos);
        try{
            Connection cn = entrar.getConexion();
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                registro[0] = rs.getString(1);
                registro[1] = rs.getString(2);
                model.addRow(registro);
            }
            view.Admin.tbPreguntas.setModel(model);
        }catch(SQLException ex){
            System.out.println("ERROR"+ex);
        }
    }
    
    public static void main(String [] args){
        PreguntasController enc = new PreguntasController();
        //enc.buscarEncuestas();
        //enc.guardarEncuesta("Prueba desde Java", "Prueba desde Java");
        enc.guardarPregunta("Pruebas Controladores", "Preguntas Script Testing", "Pregunta Prueba EncuestaController1");
        //enc.buscarTipoPreguntas();
    }
    
}
