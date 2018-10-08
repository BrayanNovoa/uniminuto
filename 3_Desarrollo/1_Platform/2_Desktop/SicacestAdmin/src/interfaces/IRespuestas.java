/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package interfaces;

/**
 *
 * @author b41n
 */
public interface IRespuestas {
    public boolean guardarPosiblesRespuestas(String pregunta, String posibleRespuesta);
    public void obtenerRespuestas(String param);
    public void llenarTabla();
    
}
