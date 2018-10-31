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
public class Encuestas {
    String encuestaID;
    String nombreEncuesta;
    String encuestaDescripcion;
    
    public Encuestas(){
        
    }
    
    public Encuestas(String encuestaId){
        this.encuestaID=encuestaId;
    }

    public Encuestas(String encuestaID, String nombreEncuesta, String encuestaDescripcion) {
        this.encuestaID = encuestaID;
        this.nombreEncuesta = nombreEncuesta;
        this.encuestaDescripcion = encuestaDescripcion;
    }

    public String getEncuestaID() {
        return encuestaID;
    }

    public void setEncuestaID(String encuestaID) {
        this.encuestaID = encuestaID;
    }

    public String getNombreEncuesta() {
        return nombreEncuesta;
    }

    public void setNombreEncuesta(String nombreEncuesta) {
        this.nombreEncuesta = nombreEncuesta;
    }

    public String getEncuestaDescripcion() {
        return encuestaDescripcion;
    }

    public void setEncuestaDescripcion(String encuestaDescripcion) {
        this.encuestaDescripcion = encuestaDescripcion;
    }

    @Override
    public String toString() {
        return "Encuesta{" + "encuestaID=" + encuestaID + ", nombreEncuesta=" + nombreEncuesta + ", encuestaDescripcion=" + encuestaDescripcion + '}';
    }
    
    
}
