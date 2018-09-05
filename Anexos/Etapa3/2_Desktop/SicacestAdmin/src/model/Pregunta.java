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
public class Pregunta {
    String encuesta;
    String tipoPregunta;
    String pregunta;
    public Pregunta(String encuesta, String tipoPregunta, String pregunta){
        this.encuesta = encuesta;
        this.tipoPregunta = tipoPregunta;
        this.pregunta =pregunta;
    }

    public String getEncuesta() {
        return encuesta;
    }

    public void setEncuesta(String encuesta) {
        this.encuesta = encuesta;
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

    @Override
    public String toString() {
        return "Pregunta{" + "encuesta=" + encuesta + ", tipoPregunta=" + tipoPregunta + ", pregunta=" + pregunta + '}';
    }
    
}
