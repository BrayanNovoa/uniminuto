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
public class Facultades extends Sedes{

    String facultadId;
    String facultadNombre;
    
    public Facultades(String facultadId){
        super(facultadId);
    }
    
    public Facultades(String facultadId, String facultadNombre, String sedeId) {
        super(sedeId);
        this.facultadId = facultadId;
        this.facultadNombre = facultadNombre;
        this.sedeId = sedeId;
    }

    public String getFacultadId() {
        return facultadId;
    }

    public void setFacultadId(String facultadId) {
        this.facultadId = facultadId;
    }

    public String getFacultadNombre() {
        return facultadNombre;
    }

    public void setFacultadNombre(String facultadNombre) {
        this.facultadNombre = facultadNombre;
    }

    @Override
    public String toString() {
        return "Facultad{" + "sedeId=" + sedeId + ", facultadId=" + facultadId + ", facultadNombre=" + facultadNombre + '}';
    }
    
}
