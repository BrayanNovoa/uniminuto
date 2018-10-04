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
public class Usuario {
    
    String universidad;
    String rectoria;
    String sede;
    String usuario;
    String clave;
    public Usuario(String universidad,String rectoria, String sede, String usuario, String clave){
        this.universidad = universidad;
        this.rectoria = rectoria;
        this.sede = sede;
        this.usuario = usuario;
        this.clave = clave;
    }

    public String getUniversidad() {
        return universidad;
    }

    public void setUniversidad(String universidad) {
        this.universidad = universidad;
    }

    public String getRectoria() {
        return rectoria;
    }

    public void setRectoria(String rectoria) {
        this.rectoria = rectoria;
    }

    public String getSede() {
        return sede;
    }

    public void setSede(String sede) {
        this.sede = sede;
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
        return "Usuario{" + "universidad=" + universidad + ", rectoria=" + rectoria + ", sede=" + sede + ", usuario=" + usuario + ", clave=" + clave + '}';
    }
    
}
