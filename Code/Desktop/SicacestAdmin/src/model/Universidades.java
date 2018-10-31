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
public class Universidades {
    String universidadId;
    String nombreUniversidad;
    String estado;

    public Universidades(String universidadId) {
        this.universidadId = universidadId;
    }

    public Universidades(String universidadId, String nombreUniversidad, String estado) {
        this.universidadId = universidadId;
        this.nombreUniversidad = nombreUniversidad;
        this.estado = estado;
    }

    public String getUniversidadId() {
        return universidadId;
    }

    public void setUniversidadId(String universidadId) {
        this.universidadId = universidadId;
    }

    public String getNombreUniversidad() {
        return nombreUniversidad;
    }

    public void setNombreUniversidad(String nombreUniversidad) {
        this.nombreUniversidad = nombreUniversidad;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "Universidad{" + "universidadId=" + universidadId + ", nombreUniversidad=" + nombreUniversidad + ", estado=" + estado + '}';
    }
    
}
