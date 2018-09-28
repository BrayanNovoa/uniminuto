/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package interfaces;

import org.jfree.data.general.DefaultPieDataset;

/**
 *
 * @author b41n
 */
public interface IGraficas {
    public void obtenerDatos(String sql);
    public void generarDataSet(String [] registro);
    public void generarTabla(String [] registro);
    public void graficarDatos(DefaultPieDataset data);
    public void guardarImagen();
}
