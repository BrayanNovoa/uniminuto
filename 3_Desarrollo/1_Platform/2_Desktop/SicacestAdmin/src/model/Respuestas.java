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
public class Respuestas extends Preguntas {
    String respuestaId;
    String encuestaId;
    String estudianteCod;
    String respuesta;

    public Respuestas(String respuestaId, String encuestaId, String preguntaId, String estudianteCod, String respuesta) {
        super(preguntaId);
        this.respuestaId = respuestaId;
        this.encuestaId = encuestaId;
        this.estudianteCod = estudianteCod;
        this.respuesta = respuesta;
    }

    public String getRespuestaId() {
        return respuestaId;
    }

    public void setRespuestaId(String respuestaId) {
        this.respuestaId = respuestaId;
    }

    public String getEncuestaId() {
        return encuestaId;
    }

    public void setEncuestaId(String encuestaId) {
        this.encuestaId = encuestaId;
    }

    public String getEstudianteCod() {
        return estudianteCod;
    }

    public void setEstudianteCod(String estudianteCod) {
        this.estudianteCod = estudianteCod;
    }

    public String getRespuesta() {
        return respuesta;
    }

    public void setRespuesta(String respuesta) {
        this.respuesta = respuesta;
    }

    @Override
    public String getPreguntaId() {
        return preguntaId;
    }

    @Override
    public void setPreguntaId(String preguntaId) {
        this.preguntaId = preguntaId;
    }

    @Override
    public String getEncuestaID() {
        return encuestaID;
    }

    @Override
    public void setEncuestaID(String encuestaID) {
        this.encuestaID = encuestaID;
    }    
    
}
