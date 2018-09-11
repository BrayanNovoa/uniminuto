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
public interface ILogin {
    public boolean validarCampos(String sede, String rectoria);
    public boolean verificarAcceso(String usuario, String sede,String rectoria, String password);
    public boolean llenarComboRectorias();
    public boolean llenarComboSedes(String rectoria);
}
