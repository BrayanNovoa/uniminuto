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
public class Preguntas extends Encuestas{
    String preguntaId;
    String tipoPregunta;
    String pregunta;
    String encuestaId;
    
    public Preguntas(){
        
    }
    
    public Preguntas(String preguntaId){
        
    }
    
    public Preguntas(String preguntaId,String encuestaId,String tipoPregunta, String pregunta){
        this.encuestaId=super.encuestaID;
        this.preguntaId=preguntaId;
        this.tipoPregunta = tipoPregunta;
        this.pregunta =pregunta;
    }

    public String getPreguntaId() {
        return preguntaId;
    }

    public void setPreguntaId(String preguntaId) {
        this.preguntaId = preguntaId;
    }

    public String getTipoPregunta() {
        return tipoPregunta;
    }

    public void setTipoPregunta(String tipoPregunta) {
        this.tipoPregunta = tipoPregunta;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }
    
}
