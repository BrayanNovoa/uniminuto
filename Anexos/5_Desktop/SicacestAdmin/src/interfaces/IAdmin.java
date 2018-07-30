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
public interface IAdmin {
    public boolean buscarProgramas();
    public boolean buscarFacultades();
    public boolean buscarPeriodos();
    public boolean cargarListaEstudiantes();
    public boolean guardarEstudiantes(Object estudiantes[]);
}
