/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

/**
 *
 * @author b41n
 */
public class CargadorController implements interfaces.ICargador{
    @Override
    public float calcularTasa(float total){
        int max = 100;
        float tasa = total/max;
        return tasa;
    }
}
