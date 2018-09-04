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
    
    public boolean Autenticacion(String usuario, String contrasena){
        PreparedStatement pst = null;
        ResultSet rs = null;
        try{
            String consulta ="SELECT * FROM tb_estudiantes WHERE estudiante= ? ";//AND pass_user = ?
            pst= getConexion().prepareStatement(consulta);
            pst.setString(1,usuario);
            //pst.setString(2,contrasena);
            rs=pst.executeQuery();
            if(rs.absolute(1)){
                return true;
            }
        }catch(Exception e){
            System.err.println("ERROR :"+e);
        }finally{
            try{
                if (getConexion()!=null)getConexion().close();
                if (pst!=null)pst.close();
                if (rs!=null)rs.close();
                System.out.println("El usuario identificado con id: "+usuario+" inicia sesión.");
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        return false;
    }
    
    public static LinkedList<CiudadesVM> getCiudades(String parametro){
    LinkedList<CiudadesVM> listaCiudades = new LinkedList<CiudadesVM>();
        ResultSet rs = null;
        
        try{
            ConexionDB conexion = new ConexionDB();
            Connection con=conexion.getConexion();
            String consultaCiudades ="SELECT * FROM tb_ciudades WHERE id_ciudad = "+parametro+";";
            Statement st = con.createStatement();
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
            st.close();
            con.close();
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return listaCiudades;
    }
    
    public static LinkedList<CiudadesVM> getCiudades(){
    LinkedList<CiudadesVM> listaCiudades = new LinkedList<CiudadesVM>();
        ResultSet rs = null;
        
        try{
            ConexionDB conexion = new ConexionDB();
            Connection con=conexion.getConexion();
            String consultaCiudades ="SELECT * FROM tb_ciudades;";
            Statement st = con.createStatement();
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
            st.close();
            con.close();
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return listaCiudades;
    }
    /*
    public static void main(String [] args){
        Consultas cons = new Consultas();
        System.out.println(cons.Autenticacion("000324471","novoa"));
    }*/
    
    
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
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        return false;
    }
    
    public boolean guardarRespuestas(){
        return false;
    }
    
    /*
    public static void main(String [] args){
        System.out.println("Instanciando El Objeto de la Clase que Hereda La Conexión A La Base De Datos.");
        Consultas cons = new Consultas();
        System.out.println("Objeto Inicializado.");
        System.out.println("Llamando Al Método Registrar.");
        System.out.println(cons.Registrar("123456789", "pilarica@uniminuto.edu.com", "pilarica"));
        System.out.println("Enviando Parámetros.");
    }*/
    public boolean InfoContacto(String id_User, String tel_User, String cel_User, String mail_User){
        PreparedStatement pst = null;
        try{
            System.out.println("Creando la consulta");
            String insInfoContacto = "INSERT INTO tb_contactos(id_estudiante, tel_fijo, tel_celular, correo) VALUES (?,?,?,?)";
            pst = getConexion().prepareStatement(insInfoContacto);
            pst.setString(1, id_User);
            pst.setString(2, tel_User);
            pst.setString(3, cel_User);
            pst.setString(4, mail_User);
            if(pst.executeUpdate()==1){
                System.out.println("La siguiente información ha sido grabada en la Base De Datos:\n");
                System.out.println("Usuario :"+id_User);
                System.out.println("Nombres :"+tel_User);
                System.out.println("Apellidos :"+cel_User);
                System.out.println("Documento :"+mail_User);
                System.out.println("Encuesta Guardada Con Éxito");
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
    public boolean InfoVivienda(String id_User, String sector_User, String place_User, String depto_User, String city_User, String dir_User, String barrio_User, String estrato_User, String vivienda_User){
        PreparedStatement pst = null;
        try{
            System.out.println("Creando la consulta que guarda la información de la localización del usuario.");
            String insInfoContacto = "INSERT INTO tb_localizacion(id_estudiante, sector, lugar, tb_ciudades_id_departamento, tb_ciudades_id_ciudad, direccion, barrio, estrato, tipo_vivienda) VALUES (?,?,?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(insInfoContacto);
            
            pst.setString(1, id_User);
            System.out.println("ID: "+ id_User);
            pst.setString(2, sector_User);
            System.out.println("Sector: "+sector_User);
            pst.setString(3, place_User);
            System.out.println("Place: "+ place_User);
            pst.setString(4, depto_User);
            System.out.println("Departamento: "+ depto_User);
            pst.setString(5, city_User);
            System.out.println("Ciudad: "+ city_User);
            pst.setString(6, dir_User);
            System.out.println("Dir: "+ dir_User);
            pst.setString(7, barrio_User);
            System.out.println("Barrio: "+barrio_User);
            pst.setString(8, estrato_User);
            System.out.println("Estrato: "+ estrato_User);
            pst.setString(9, vivienda_User);
            System.out.println("Vivienda: "+vivienda_User);
            if(pst.executeUpdate()==1){
                System.out.println("Los siguientes datos han sido grabados en la Base De Datos:\n");
                System.out.println("Usuario :"+id_User);
                System.out.println("Encuesta Guardada Con Éxito");
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
    
    public boolean DatosBasicos(String id_User,String names_User, String ape1_User, String ape2_User, String docu_User, String sex_User, String age_User, String depto_user, String ciud_user, String rh_user){
        PreparedStatement pst = null;
        try{
            String consulta ="INSERT INTO tb_informacion_personal(id_estudiante,nombres,apellido1,apellido2,documento,sexo,edad,id_departamento,id_ciudad,id_rh) VALUES (?,?,?,?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            
            System.out.println("Registrando los datos básicos del usuario.");
            pst.setString(1, id_User);
            System.out.println("Id: "+ id_User);
            pst.setString(2, names_User);
            System.out.println("Nombres: "+names_User);
            pst.setString(3, ape1_User);
            pst.setString(4, ape2_User);
            System.out.println("Apellidos: "+ape1_User+" "+ape2_User);
            pst.setString(5, docu_User);
            System.out.println("Documento: ");
            pst.setString(6, sex_User);
            System.out.println("Sexo: ");
            pst.setString(7, age_User);
            System.out.println("Edad: "+age_User);
            pst.setString(8, depto_user);
            System.out.println("Departamento: ");
            pst.setString(9, ciud_user);
            System.out.println("Ciudad: ");
            pst.setString(10, rh_user);
            System.out.println("RH: ");
            System.out.println("Consulta Lista.");
            
            if(pst.executeUpdate()==1){
                System.out.println("Encuesta Guardada Con Éxito");
                System.out.println("Los siguientes datos han sido grabados en la Base De Datos:\n");
                System.out.println("Usuario :"+id_User);
                System.out.println("Nombres :"+names_User);
                System.out.println("Apellidos :"+ape1_User);
                System.out.println("Apellidos :"+ape2_User);
                System.out.println("Documento :"+docu_User);
                System.out.println("Sexo :"+sex_User);
                System.out.println("Edad :"+age_User);
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if (pst!=null)pst.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        return false;
    }
    /*
    //Funcion Para Probar Insersión En La Tabla Encuesta
    public static void main(String [] args){
        Consultas cons = new Consultas();
        System.out.println(cons.DatosPersonales("2222", "Brayan", "Novoa", "12345", "M", "26"));
        System.out.println("Enviando Datos .");
    }*/
    
    public boolean InfoSalud(String id_User,String sisben_User, String eps_User, String problem_User, String poblacion_User, String difi_User, String drink_User, String smoke_User){
        PreparedStatement pst = null;
        System.out.println("Iniciando Consulta:");
        try{
            System.out.println("Registrando la información de salud del usuario."+id_User);
            String consulta = "INSERT INTO tb_info_salud (id_estudiante, SISBEN, EPS, enfermedad, especiales, dificultad, alcohol, cigarrillo) VALUES(?,?,?,?,?,?,?,?);";
            System.out.println("Consulta Creada: "+consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, id_User);
            pst.setString(2, sisben_User);
            System.out.println(sisben_User);
            pst.setString(3, eps_User);
            System.out.println(eps_User);
            pst.setString(4, problem_User);
            System.out.println(problem_User);
            pst.setString(5, poblacion_User);
            System.out.println(poblacion_User);
            pst.setString(6, difi_User);
            System.out.println(difi_User);
            pst.setString(7, drink_User);
            System.out.println(drink_User);
            pst.setString(8, smoke_User);
            System.out.println(smoke_User);
            if (pst.executeUpdate()==1){
                System.out.println("Encuesta Guardada Con Éxito");
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if (pst!=null)pst.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        return false;
    }
    public boolean InfoFinanciera(String id_User, String pago_User, String quienpaga_User, String work_User, String workspace_User, String typework_User, String ingper_User, String ingfam_User){
        PreparedStatement pst = null;
        System.out.println("Iniciando Consulta:");
        try{
            System.out.println("Registrando la información financiera del usuario."+id_User);
            String consulta = "INSERT INTO tb_info_financiera (id_estudiante, medio_pago, quien_paga, situacion_laboral, sector_laboral, tipo_trabajo, ingreso_personal, ingreso_familiar) VALUES(?,?,?,?,?,?,?,?);";
            System.out.println("Consulta Creada: "+consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, id_User);
            pst.setString(2, pago_User);
            pst.setString(3, quienpaga_User);
            pst.setString(4, work_User);
            pst.setString(5, workspace_User);
            pst.setString(6, typework_User);
            pst.setString(7, ingper_User);
            pst.setString(8, ingfam_User);
            if (pst.executeUpdate()==1){
                System.out.println("Encuesta Guardada Con Éxito");
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if (pst!=null)pst.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        return false;
    }
    
    public boolean InfoFamiliar(String id_User, String live_User, String state_User, String numherm_User, String lugarherm_User, String abuelos_User, String emb_User, String mesemb_User, String head_User, String hijos_User, String numhijos_User, String agehijos_User, String padre_User, String madre_User){
        PreparedStatement pst = null;
        System.out.println("Iniciando Consulta:");
        try{
            System.out.println("Registrando la información familiar del usuario."+id_User);
            String consulta = "INSERT INTO tb_info_familiar (id_estudiante, vive_con, estado_civil, num_hermanos, lugar_hermanos, padres_viven_con_abuelos, embarazo, mes_embarazo, cabeza_familia, hijos, num_hijos,edad_hijos, escolaridad_padre, escolaridad_madre) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
            System.out.println("Consulta Creada: "+consulta);
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, id_User);
            pst.setString(2, live_User);
            pst.setString(3, state_User);
            pst.setString(4, numherm_User);
            pst.setString(5, lugarherm_User);
            pst.setString(6, abuelos_User);
            pst.setString(7, emb_User);
            pst.setString(8, mesemb_User);
            pst.setString(9, head_User);
            pst.setString(10, hijos_User);
            pst.setString(11, numhijos_User);
            pst.setString(12, agehijos_User);
            pst.setString(13, padre_User);
            pst.setString(14, madre_User);
            if (pst.executeUpdate()==1){
                System.out.println("Encuesta Guardada Con Éxito");
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if (pst!=null)pst.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        return false;
    }
    
    public boolean RegistrarEncuesta(String id_User,String names_User, String apes_User, String docu_User, String sex_User, String age_User, String depto_User, String nacim_User, String rh_User, String tel_User, String cel_User, String mail_User, String sector_User, String place_User, String city_User, String local_User, String dir_User, String barrio_User, String estrato_User, String vivienda_User, String sede_User, String prog_User, String expli_User, String mod_User, String sisben_User, String eps_User, String problem_User, String poblacion_User, String difi_User, String drink_User, String smoke_User, String pago_User, String quienpaga_User, String work_User, String workspace_User, String typework_User, String ingper_User, String ingfam_User, String live_User, String state_User, String numherm_User, String lugarherm_User, String emb_User, String mesemb_User, String abuelos_User, String hijos_User, String head_User, String numhijos_User, String agehijos_User, String padres_User){
        PreparedStatement pst = null;
        try{
            String consulta ="INSERT INTO Encuesta(Id_Encuesta,Nombres,Apellidos,Documento,Sexo,Edad,Depto_Nacimiento,Lugar_Nacimiento,RH,Tel_Fijo,Num_Celular,Correo_Electronico,Sector_Vivienda,Lugar_Vivienda,Ciudad,Localidad,Direccion_Residencia,Barrio,Estrato,Tipo_Vivienda,Sede,Programa,Explicacion,Modalidad,SISBEN,EPS,Problema,Poblacion,Dificultad,Alcohol,Tabaco,Medio_Pago,Quien_Paga,Situacion_Laboral,Sector_Laboral,Perfil_Laboral,Ingreso_Personal,Ingreso_Familiar,Vive_Con,Estado_Civil,Num_Hermanos,Lugar_Entre_Hermanos,Embarazo,Mes_Embarazo,Padres_Viven_Con_Abuelos,Tiene_Hijos,Cabeza_Familia,Num_Hijos,Edad_Hijos,Escolaridad_Padres) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            
            pst.setString(1, id_User);
            pst.setString(2, names_User);
            pst.setString(3, apes_User);
            pst.setString(4, docu_User);
            pst.setString(5, sex_User);
            pst.setString(6, age_User);
            pst.setString(7, depto_User);
            pst.setString(8, nacim_User);
            pst.setString(9, rh_User);
            
            
            pst.setString(10, tel_User);
            pst.setString(11, cel_User);
            pst.setString(12, mail_User);
            
            
            pst.setString(13, sector_User);
            pst.setString(14, place_User);
            pst.setString(15, city_User);
            pst.setString(16, local_User);
            pst.setString(17, dir_User);
            pst.setString(18, barrio_User);
            pst.setString(19, estrato_User);
            pst.setString(20, vivienda_User);
            
            
            pst.setString(21, sede_User);
            
            pst.setString(22, prog_User);
            
            pst.setString(23, expli_User);
            
            pst.setString(24, mod_User);
            
            pst.setString(25, sisben_User);
            
            pst.setString(26, eps_User);
            
            pst.setString(27, problem_User);
            
            pst.setString(28, poblacion_User);
            
            pst.setString(29, difi_User);
            
            pst.setString(30, drink_User);
            
            pst.setString(31, smoke_User);
            
            pst.setString(32, pago_User);
            
            pst.setString(33, quienpaga_User);
            
            pst.setString(34, work_User);
            
            
            pst.setString(35, workspace_User);
            
            pst.setString(36, typework_User);
            
            pst.setString(37, ingper_User);
            
            pst.setString(38, ingfam_User);
            
            pst.setString(39, live_User);
            
            pst.setString(40, state_User);
            
            pst.setString(41, numherm_User);
            
            pst.setString(42, lugarherm_User);
            
            pst.setString(43, emb_User);
            
            pst.setString(44, mesemb_User);
            
            pst.setString(45, abuelos_User);
            
            pst.setString(46, hijos_User);
            
            pst.setString(47, head_User);
            
            pst.setString(48, numhijos_User);
            
            pst.setString(49, agehijos_User);
            
            pst.setString(50, padres_User);
            
            
            
            System.out.println("Consulta Lista.");
            
            if(pst.executeUpdate()==1){
                System.out.println("Encuesta Guardada Con Éxito");
                return true;
            }
        }catch(SQLException ex){
            System.err.println("ERROR :"+ex);
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if (pst!=null)pst.close();
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        return false;
    }
    
    /*
    //Funcion Para Probar Insersión En La Tabla Encuesta
    public static void main(String [] args){
        Consultas cons = new Consultas();
        System.out.println(cons.RegistrarEncuesta("123456789","Pilar","Medina","9313055338","F","24","Valle","Medellín","o+","6670305","3203134515","angelesfajardo16@hotmail.com","Urbano","Casa","Villavicencio","Santa Helena","Jordan Santa Helena","Camino Real","3","Familiar","Cundinamarca","Derecho","Ninguno","Presencial","N","S","Ninguno","Ninguno","Ninguno","S","S","Contado","Estudiante","Trabaja","Comercio","Inependiente","1200000","4800000","Sola","Soltera","5","3","N","0","N","N","N","0","0","Bachiller"));
        System.out.println("Enviando Datos .");
    }*/
    
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
        }catch(Exception e){
            System.err.println("ERROR :"+e);
            System.out.println("No Se Pudo Realizar La Consulta");
        }finally{
            try{
                
                if (getConexion()!=null)getConexion().close();
                if (pst!=null)pst.close();
                if (rs!=null)rs.close();
                
            }catch(Exception e){
                System.err.println("ERROR :"+e);
            }
        }
        System.out.println("El Usuario Solicitado Con ID :"+usuario+", No Existe.");
        return false;
    }
//    public static void main(String [] args){
//        //Método main para consultar
//        Consultas cons = new Consultas();
//        System.out.println(cons.ConsultarEncuesta("000324471"));
//    }


}