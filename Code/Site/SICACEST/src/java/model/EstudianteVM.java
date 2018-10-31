/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author b41n
 */
public class EstudianteVM {
    public int estudianteId;
    public String estudianteNombres;
    public String estudianteApellido1;
    public String estudianteApellido2;
    public String sede;
    public String programa;
    public String correo;

    public EstudianteVM(int estudianteId, String estudianteNombres, String estudianteApellido1, String estudianteApellido2, String sede, String programa, String correo) {
        this.estudianteId = estudianteId;
        this.estudianteNombres = estudianteNombres;
        this.estudianteApellido1 = estudianteApellido1;
        this.estudianteApellido2 = estudianteApellido2;
        this.sede = sede;
        this.programa = programa;
        this.correo = correo;
    }

    public int getEstudianteId() {
        return estudianteId;
    }

    public void setEstudianteId(int estudianteId) {
        this.estudianteId = estudianteId;
    }

    public String getEstudianteNombres() {
        return estudianteNombres;
    }

    public void setEstudianteNombres(String estudianteNombres) {
        this.estudianteNombres = estudianteNombres;
    }

    public String getEstudianteApellido1() {
        return estudianteApellido1;
    }

    public void setEstudianteApellido1(String estudianteApellido1) {
        this.estudianteApellido1 = estudianteApellido1;
    }

    public String getEstudianteApellido2() {
        return estudianteApellido2;
    }

    public void setEstudianteApellido2(String estudianteApellido2) {
        this.estudianteApellido2 = estudianteApellido2;
    }

    public String getSede() {
        return sede;
    }

    public void setSede(String sede) {
        this.sede = sede;
    }

    public String getPrograma() {
        return programa;
    }

    public void setPrograma(String programa) {
        this.programa = programa;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
    
}
