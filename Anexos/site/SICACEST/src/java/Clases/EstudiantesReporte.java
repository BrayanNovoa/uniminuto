/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.File;
import java.util.LinkedList;
import Modelos.EstudianteVM;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.export.Exporter;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;
/**
 *
 * @author b41n
 */
public class EstudiantesReporte {
    public static void main(String[] args) {
        LinkedList<EstudianteVM> listaEstudiantes = new LinkedList();
        listaEstudiantes.add(new EstudianteVM(000324471
                ,"Brayan Mauricio"
                ,"Novoa"
                ,"Salazar"
                ,"Llanos"
                ,"Tecnología en Desarrollo de Software"
                ,"bnovoasalaz@uniminuto.edu.co"));
        try{
            //indicamos La Plantilla
            JasperReport reporte = (JasperReport) JRLoader.loadObject(new File("src/java/Modelos/ReporteEstudiantes.jasper"));
            //Cargamos Al Reporte Los Datos
            JasperPrint jasperPrint = JasperFillManager.fillReport(reporte, null, new JRBeanCollectionDataSource(listaEstudiantes));
            //Creamos El Exportes
            Exporter exporter = new JRPdfExporter();
            //Definimos la información a exportar
            exporter.setExporterInput(new SimpleExporterInput(jasperPrint));
            //Definimos donde guardar lo Exportado
            exporter.setExporterOutput(new SimpleOutputStreamExporterOutput("Caracterizacion.pdf"));
            //Exportamos
            exporter.exportReport();
        }catch(JRException e){
            System.out.println("Error generando el reporte: "+e.getMessage());
        }
    }
}