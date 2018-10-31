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
public class Rectorias extends Universidades{
    String rectoriaId;
    String rectoria;

    public Rectorias(String rectoriaId) {
        super(rectoriaId);
    }

    public Rectorias(String rectoriaId, String rectoria, String universidadId) {
        super(universidadId);
        this.rectoriaId = rectoriaId;
        this.rectoria = rectoria;
        this.universidadId = universidadId;
    }

    public String getRectoriaId() {
        return rectoriaId;
    }

    public void setRectoriaId(String rectoriaId) {
        this.rectoriaId = rectoriaId;
    }

    public String getRectoria() {
        return rectoria;
    }

    public void setRectoria(String rectoria) {
        this.rectoria = rectoria;
    }

    @Override
    public String toString() {
        return "Rectoria{" + "universidadId=" + universidadId + ",rectoriaId=" + rectoriaId + ", rectoria=" + rectoria + '}';
    }
    
}
