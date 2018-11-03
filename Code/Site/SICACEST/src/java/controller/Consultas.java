/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.CiudadesVM;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

/**
 *
 * @author b41n
 */
public class Consultas extends ConexionDB{
    
    public boolean Autenticacion(String usuarioMail, String contrasena){
        PreparedStatement pst = null;
        ResultSet rs = null;
        try{
            String consulta ="SELECT programa_id FROM tb_estudiantes WHERE estudiante_cod= ? AND correo_insti = ?";//AND pass_user = ?
            pst= getConexion().prepareStatement(consulta);
            pst.setString(1,contrasena);
            pst.setString(2,usuarioMail);
            rs=pst.executeQuery();
            if(rs.next()){
                return true;
            }else if(rs.absolute(0)){
                return false;
            }
        }catch(SQLException e){
            System.err.println("ERROR :"+e);
        }finally{
            try{
                if (getConexion()!=null)getConexion().close();
                if (pst!=null)pst.close();
                if (rs!=null)rs.close();
                System.out.println("El usuario identificado como: "+usuarioMail+" inicia sesión.");
            }catch(SQLException e){
                System.err.println("ERROR :"+e);
            }
        }
        return false;
    }
    
    public static LinkedList<CiudadesVM> getCiudades(String parametro){
    LinkedList<CiudadesVM> listaCiudades = new LinkedList<>();
        ResultSet rs;
        ConexionDB conexion = new ConexionDB();
        Connection con=conexion.getConexion();
        try{
            String consultaCiudades ="SELECT * FROM tb_ciudades WHERE id_ciudad = "+parametro+";";
        try (Statement st = con.createStatement()) {
            rs = st.executeQuery(consultaCiudades);
            while(rs.next()){
                CiudadesVM infoCiudad = new CiudadesVM();
                infoCiudad.setIdCiudad(rs.getInt("id_ciudad"));
                infoCiudad.setIdDepartamento(rs.getString("id_departamento"));
                infoCiudad.setNombre(rs.getString("nombre"));
                infoCiudad.setCodCiudad(rs.getInt("cod_ciudad"));
                listaCiudades.add(infoCiudad);
            }
            rs.close();
        }
            con.close();
        }catch (SQLException e)
        {
            System.out.println(e);
        }
        return listaCiudades;
    }
    
    public static LinkedList<CiudadesVM> getCiudades(){
    LinkedList<CiudadesVM> listaCiudades = new LinkedList<>();
        ResultSet rs;
        ConexionDB conexion = new ConexionDB();
        Connection con=conexion.getConexion();
        try{
            String consultaCiudades ="SELECT * FROM tb_ciudades;";
        try (Statement st = con.createStatement()) {
            rs = st.executeQuery(consultaCiudades);
            while(rs.next()){
                CiudadesVM infoCiudad = new CiudadesVM();
                infoCiudad.setIdCiudad(rs.getInt("id_ciudad"));
                infoCiudad.setIdDepartamento(rs.getString("id_departamento"));
                infoCiudad.setNombre(rs.getString("nombre"));
                infoCiudad.setCodCiudad(rs.getInt("cod_ciudad"));
                listaCiudades.add(infoCiudad);
            }
            rs.close();
        }
            con.close();
        }catch (SQLException e)
        {
            System.out.println(e);
        }
        return listaCiudades;
    }
    
    
    public boolean RegistrarUsuario(String id_User, String mail_User, String pass_User){
        PreparedStatement pst = null;
        try{
            String consulta = "INSERT INTO tb_estudiantes (id_estudiante, pass_user, correo_inst) VALUES (?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            System.out.println("Añadiendo Datos A La Consulta");
            pst.setString(1, id_User);
            pst.setString(2, pass_User);
            pst.setString(3, mail_User);
            if(pst.executeUpdate()==1){
                System.out.println("Usuario Añadido: "+ id_User);
                System.out.println("Password Añadido.");
                System.out.println("Mail Añadido: "+ mail_User);
                System.out.println("Usuario Guardado Con Éxito");
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if (pst!=null)pst.close();
            }catch(SQLException e){
                System.err.println("ERROR :"+e);
            }
        }
        return false;
    }
    
    public boolean guardarRespuesta(String pregunta, String respuesta, String estudiante){
        PreparedStatement pst;
        String consulta;
        String sql;
        String sqlPregunta;
        String sqlEncuesta;
        String fin = "');\n";
        System.out.println("Guardando respuesta para la pregunta: "+pregunta);
        sql="INSERT INTO tb_respuestas (encuesta_id, pregunta_id, estudiante_cod, respuesta) VALUES(";
        sqlEncuesta = "(SELECT encuesta_id FROM tb_preguntas WHERE pregunta= '"+pregunta+"'),";
        sqlPregunta = "(SELECT pregunta_id FROM tb_preguntas WHERE pregunta= '"+pregunta+"'),";
        consulta=sql+sqlEncuesta+sqlPregunta+"'"+estudiante+"',"+"'"+respuesta+fin;
        try{
            pst = getConexion().prepareStatement(consulta);
            if(pst!=null){
                pst.execute(consulta);
                System.out.println("Respuesta Guardada: "+respuesta);
                return true;
            }else{
                System.out.println("ERROR Guardando la respuesta: "+respuesta);
            }
        }catch(SQLException ex){
            System.err.println("ERROR EN LA CONSULTA:\n"+consulta);
            System.out.println("ERROR Guardando la respuesta: "+respuesta);
            System.err.println("ERROR :"+ex);
            return false;
        }
        return false;
    }
    
    public boolean ConsultarEncuesta(String usuario){
        PreparedStatement pst = null;
        ResultSet rs = null;
        try{
            System.out.println("\nCreando La Consulta");
            String consulta ="SELECT * FROM tb_estudiantes WHERE id_estudiante = ?";
            System.out.println("Preparando La Consulta");
            pst= getConexion().prepareStatement(consulta);
            System.out.println("Obteniendo La Conexión");
            pst.setString(1,usuario);
            System.out.println("Asignando Valores A La Consulta");
            rs=pst.executeQuery();
            System.out.println("Ejecutando La Consulta");
            if(rs.absolute(1)){
                System.out.println("Validando La Consulta");
                System.out.println("Resultado De La Consulta\n");
                System.out.println("El Usuario "+usuario+" Existe.\n");
                return true;
            }
        }catch(SQLException e){
            System.err.println("ERROR :"+e);
            System.out.println("No Se Pudo Realizar La Consulta");
        }finally{
            try{
                
                if (getConexion()!=null)getConexion().close();
                if (pst!=null)pst.close();
                if (rs!=null)rs.close();
                
            }catch(SQLException e){
                System.err.println("ERROR :"+e);
            }
        }
        System.out.println("El Usuario Solicitado Con ID :"+usuario+", No Existe.");
        return false;
    }
    /*
    public static void main(String [] args){
        Método main para consultar
        Consultas cons = new Consultas();
        System.out.println(cons.ConsultarEncuesta("000324471"));
        cons.guardarRespuesta("SEDE", "VILLAVO", "324471");
    }
    */
    
}