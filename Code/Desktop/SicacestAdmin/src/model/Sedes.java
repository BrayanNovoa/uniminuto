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
public class Sedes extends Rectorias{
    String sedeId;
    String sedeNombre;
    
    public Sedes(String sedeId){
        super(sedeId);
    }

    public Sedes(String sedeId, String sedeNombre, String rectoriaId) {
        super(rectoriaId);
        this.sedeId = sedeId;
        this.sedeNombre = sedeNombre;
        this.rectoriaId = rectoriaId;
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
