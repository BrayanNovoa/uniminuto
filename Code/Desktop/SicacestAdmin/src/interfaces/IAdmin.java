/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */

package interfaces;
/**
 *
 * @author Brayan Novoa
 */
public interface IAdmin {
    public boolean guardarPeriodo(String periodo);
    public boolean buscarPeriodos();
    public boolean guardarFacultad(String facultad, String sede);
    public boolean buscarFacultades();
    public boolean guardarPrograma(String facultad, String programa);
    public boolean buscarProgramas(String facultad);
    public boolean cargarListaEstudiantes();
    public boolean guardarEstudiantes(String periodo,String programa);
}
