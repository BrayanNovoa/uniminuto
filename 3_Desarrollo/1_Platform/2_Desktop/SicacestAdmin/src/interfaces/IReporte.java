/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package interfaces;

import java.io.File;

/**
 *
 * @author b41n
 */
public interface IReporte {
    public boolean generarReporte(String ruta);
    public void mostrarReporte(File archivo);
}
