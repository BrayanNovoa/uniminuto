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
public interface IEncuestas {
    public boolean guardarEncuesta(String encuesta, String descripcion);
    public void buscarEncuestas();
    public boolean guardarTipoPregunta(String tipoPregunta, String descripcionTipo);
    public void buscarTipoPreguntas();
    public void llenarComboTipoEncuestas();
    public boolean guardarPregunta(String encuesta, String tipoPregunta, String pregunta);
    public void buscarPreguntas(String encuesta);
    
}
