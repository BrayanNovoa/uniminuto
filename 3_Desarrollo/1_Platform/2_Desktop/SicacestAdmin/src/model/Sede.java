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
public class Sede extends Rectoria{
    String sedeId;
    String sedeNombre;
    
    public Sede(String sedeId){
        super(sedeId);
    }

    public Sede(String sedeId, String sedeNombre, String rectoriaId) {
        super(rectoriaId);
        this.sedeId = sedeId;
        this.sedeNombre = sedeNombre;
    }

    public String getSedeId() {
        return sedeId;
    }

    public void setSedeId(String sedeId) {
        this.sedeId = sedeId;
    }

    public String getSedeNombre() {
        return sedeNombre;
    }

    public void setSedeNombre(String sedeNombre) {
        this.sedeNombre = sedeNombre;
    }

    @Override
    public String toString() {
        return "Sede{" + "sedeId=" + sedeId + ", sedeNombre=" + sedeNombre + '}';
    }
    
}
