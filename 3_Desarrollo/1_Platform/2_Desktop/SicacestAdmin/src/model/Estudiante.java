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
public class Estudiante extends Usuarios {
    
    String estudianteId;
    String periodoId;
    String programaId;
    String estudianteCod;
    
    public Estudiante(){
        
    }
    public Estudiante(String estudianteId){
    this.estudianteId=estudianteId;
    }
    public Estudiante(String estudianteId, String usuarioId){
        super(usuarioId);
        this.estudianteId=estudianteId;
    }
    
    public Estudiante(String estudianteId, String periodoId, String programaId, String estudianteCod){
        this.estudianteId=estudianteId;
        this.periodoId=periodoId;
        this.programaId=programaId;
        this.estudianteCod=estudianteCod;
    }
    public Estudiante(String estudianteId, String periodoId, String programaId, String estudianteCod, String usuarioId){
        super(usuarioId);
        this.estudianteId=estudianteId;
        this.periodoId=periodoId;
        this.programaId=programaId;
        this.estudianteCod=estudianteCod;
    }

    public String getEstudianteId() {
        return estudianteId;
    }

    public void setEstudianteId(String estudianteId) {
        this.estudianteId = estudianteId;
    }

    public String getPeriodoId() {
        return periodoId;
    }

    public void setPeriodoId(String periodoId) {
        this.periodoId = periodoId;
    }

    public String getProgramaId() {
        return programaId;
    }

    public void setProgramaId(String programaId) {
        this.programaId = programaId;
    }

    public String getEstudianteCod() {
        return estudianteCod;
    }

    public void setEstudianteCod(String estudianteCod) {
        this.estudianteCod = estudianteCod;
    }
    
}
