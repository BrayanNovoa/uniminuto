/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package model;

/**
 *
 * @author b41n
 */
public class Usuarios {
    
    String usuarioId;
    String universidadId;
    String rectoriaId;
    String sedeId;
    String usuario;
    String clave;
    public Usuarios(){
        
    }
    public Usuarios(String usuarioId){
        this.usuarioId=usuarioId;
    }
    public Usuarios(String universidadId,String rectoriaId, String sedeId, String usuario, String clave){
        this.universidadId = universidadId;
        this.rectoriaId = rectoriaId;
        this.sedeId = sedeId;
        this.usuario = usuario;
        this.clave = clave;
    }

    public String getUniversidad() {
        return universidadId;
    }

    public void setUniversidadId(String universidadId) {
        this.universidadId = universidadId;
    }

    public String getRectoriaId() {
        return rectoriaId;
    }

    public void setRectoriaId(String rectoriaId) {
        this.rectoriaId = rectoriaId;
    }

    public String getSedeId() {
        return sedeId;
    }

    public void setSedeId(String sedeId) {
        this.sedeId = sedeId;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    @Override
    public String toString() {
        return "Usuario{" + "universidadId=" + universidadId + ", rectoriaId=" + rectoriaId + ", sedeId=" + sedeId + ", usuario=" + usuario + ", clave=" + clave + '}';
    }
    
}
