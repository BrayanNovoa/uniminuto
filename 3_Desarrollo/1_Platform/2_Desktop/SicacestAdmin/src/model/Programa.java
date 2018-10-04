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
public class Programa extends Facultad{
    String programaId;
    String programaNombre;

    public Programa(String programaId, String programaNombre, String facultadId) {
        super(facultadId);
        this.programaId = programaId;
        this.programaNombre = programaNombre;
    }
    
    
    
}
