/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;



import Clases.InfoContacto;
import Clases.InfoPersonal;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
//import java.sql.SQLException;

/**
 *
 * @author b41n
 */
public class ConsultasAdmin extends ConexionDB{
    
    public boolean AutenticarAdministrador(String usuario,String password){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        try{
            String autenticacion ="SELECT * FROM tb_user_admin WHERE id_admin = ? AND admin_pass = ?";
            pst= getConexion().prepareStatement(autenticacion);
            pst.setString(1,usuario);
            pst.setString(2, password);
            rs=pst.executeQuery();
            if(rs.absolute(1)){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            System.err.println("ERROR :"+e);
        }finally{
            try{
                System.out.println("Inicio de sesión del administrador "+usuario+".");
                if (getConexion()!=null)getConexion().close();
                if (pst!=null)pst.close();
                if (rs!=null)rs.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        return false;
    }
    public static LinkedList<InfoPersonal> getInfoPersonal(){
        return null;
    }
    
    public static LinkedList<InfoContacto> getInfoContacto(){
        LinkedList<InfoContacto> listaContactos = new LinkedList<InfoContacto>();
        ResultSet rs = null;
        
        try{
            ConexionDB conexion = new ConexionDB();
            Connection con=conexion.getConexion();
            String lista ="SELECT * FROM tb_contactos;";
            Statement st = con.createStatement();
            rs = st.executeQuery(lista );
            System.out.println("c: "+conexion);
            System.out.println("con: "+con);
            System.out.println("lista: "+lista);
            System.out.println("Iniciando Consulta");
            while(rs.next()){
                InfoContacto infoContacto = new InfoContacto();
                infoContacto.setIdEstudiante(rs.getInt("id_estudiante"));
                infoContacto.setTelFijo(rs.getString("tel_fijo"));
                infoContacto.setTelCelular(rs.getString("tel_celular"));
                infoContacto.setCorreo(rs.getString("correo"));
                listaContactos.add(infoContacto);
            }
            rs.close();
            st.close();
            con.close();
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return listaContactos;
    }
    
    
    public boolean ListarUsuarios(){
        PreparedStatement pst = null;
        ResultSet rs = null;
        try{
            String listaUsuarios ="SELECT * FROM tb_estudiantes;";
            pst=getConexion().prepareStatement(listaUsuarios);
            rs=pst.executeQuery();
            try{
                System.out.println("  Id\t\tCorreo Uniminuto\t\tPassword\n");
                while(rs.next()){
                    System.out.print(rs.getString(1)+"\t");
                    System.out.print(rs.getString(2)+"\t");
                    System.out.print(rs.getString(3)+"\t");
                    System.out.println();
                }
                return true;
            }catch(Exception e){
                    System.out.println("Error :"+e);
                }
            }catch(Exception e){
                System.out.println("Error :"+e);
            }
        return false;
    }
    /*
    public static void main(String[]args){
        ConsultasAdmin cons = new ConsultasAdmin();
        System.out.println(cons.ListarUsuarios());
    }*/
    public boolean BuscarUsuario(){
        PreparedStatement pst =null;
        ResultSet rs = null;
        String nombre="";
        try{
            String autenticacion ="SELECT Id_Encuesta,Nombres,Apellidos FROM Encuesta WHERE id_Encuesta = ?";
            pst= getConexion().prepareStatement(autenticacion);
            //pst.setString(1,usuario);
            rs=pst.executeQuery();
            if(rs.absolute(1)){
                System.out.println("\nInformacion Del Usuario Solicitado:\n");
                System.out.print(rs.getString(1)+"\t");
                System.out.print(rs.getString(2)+"\t");
                System.out.print(rs.getString(3)+"\t\n\n");
                String nombres = rs.getString(2);
                return true;
            }
            if(rs.absolute(0)){
            }
        }catch(Exception e){
            System.err.println("Error De Consulta :"+e);
        }finally{
            try{
                if (getConexion()!=null)getConexion().close();
                if (pst!=null)pst.close();
                if (rs!=null)rs.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        System.out.println("El usuario solicitado no ha diligenciado la encuesta");
        return false;
    }
    
    /**
     *
     * @param usuario
     * @return
     */
    public String BuscarUsuario(String usuario){
        PreparedStatement pst =null;
        ResultSet rs = null;
        try{
            String autenticacion ="SELECT id_estudiante, nombres, apellido1 FROM tb_informacion_personal WHERE id_estudiante = ?";
            pst= getConexion().prepareStatement(autenticacion);
            pst.setString(1, usuario);
            rs=pst.executeQuery();
            if(rs.absolute(1)){
                System.out.println("\nInformacion Del Usuario Solicitado:\n");
                System.out.print(rs.getString(1)+"\t");
                System.out.print(rs.getString(2)+"\t");
                System.out.print(rs.getString(3)+"\t\n\n");
            }
            if(rs.absolute(0)){
            }
        }catch(Exception e){
            System.err.println("Error De Consulta :"+e);
        }finally{
            try{
                if (getConexion()!=null)getConexion().close();
                if (pst!=null)pst.close();
                if (rs!=null)rs.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        System.out.println("El usuario solicitado no ha diligenciado la encuesta");
        return null;
    }
    /*
    public static void main(String[]args){
        ConsultasAdmin cons = new ConsultasAdmin();
        System.out.println(cons.BuscarUsuario("000324471"));
    }*/
    
    /*
    
    //Consultar Estado De Las Tablas
    if (rs.last()){
                        
                        for (int x=1;x<=rs.getMetaData().getColumnCount();x++){
                            System.out.print(" "+rs.getMetaData().getColumnName(x)+ "\t\t");
                        }
                        System.out.println("\n");
                    }
                    while(rs.next()){
                        int numOfRows = rs.getRow();
                        for(int a=1;a<=numOfRows;a++){
                            System.out.println("\n");
                        for(int f=1;f<=numOfCols;f++){
                        System.out.print(rs.getString(f)+"\t");
                    }   
                    }
                    }
    */
    public boolean crearEncuesta(String nombreEncuesta, String descripcionEncuesta){
        PreparedStatement pst =null;
        System.out.println("Nombre: "+nombreEncuesta);
        System.out.println("Descripcion: "+descripcionEncuesta);
        try{
            String insert ="INSERT INTO tb_encuestas (nombre_encuesta, descripcion) VALUES (?,?)";
            System.out.println("Creando la consulta: "+insert);
            pst= getConexion().prepareStatement(insert);
            pst.setString(1,nombreEncuesta);
            pst.setString(2,descripcionEncuesta);
        if(pst.executeUpdate()==1){
                System.out.println("La siguiente información ha sido grabada en la Base De Datos:\n");
                System.out.println("Encuesta :"+nombreEncuesta);
                System.out.println("Encuesta :"+descripcionEncuesta);
                return true;
            }
        }catch(SQLException sql_e){
            System.out.println("Error de conexion: "+sql_e);
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if (pst!=null)pst.close();
                System.out.println("Conexión cerrada");
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        return false;
    }
    
    public boolean SacarEncuesta(String param){
        CallableStatement cs = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try{
            String procedimiento ="CALL proc_sacar_encuesta(?)";
            System.out.println(param);
            pst= getConexion().prepareStatement(procedimiento);
            pst.setString(1,param);
            rs=pst.executeQuery(procedimiento);
            if(rs.absolute(1)){
            //pst= getConexion().prepareCall("CALL proc_sacar_encuesta("+param+")");
            
            //pst.executeQuery();
            //if(pst.isCloseOnCompletion()){
                System.out.println("Procedimiento Correcto");
            }else{
                System.out.println("ERROR de procedimiento");
            }
        }catch(Exception e){
            System.err.println("ERROR :"+e);
        }finally{
            try{
                System.out.println("Inicio de sesión del administrador.");
                if (getConexion()!=null)getConexion().close();
                if (pst!=null)pst.close();
                if (rs!=null)rs.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        return false;
    }
}