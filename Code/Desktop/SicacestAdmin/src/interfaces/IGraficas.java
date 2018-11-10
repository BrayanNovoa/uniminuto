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
public interface IGraficas {
    public boolean obtenerDatos(String sql, String [] campos, String titleChart, int consulta);
    public void generarTabla(String [] registro);
    public void graficarDatos();
    public void guardarImagen();
}
