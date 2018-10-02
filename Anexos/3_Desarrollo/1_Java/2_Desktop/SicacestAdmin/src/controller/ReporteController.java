/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.awt.Desktop;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author b41n
 */
public class ReporteController implements interfaces.IReporte{
    
    public ReporteController(File archivo, String titulo){
        
    }
    @Override
    public boolean generarReporte(String ruta){
        try{
            String line ="";
            for(int i =0;i<=77;i++){
                line+="_";
            }
            FileOutputStream archivo;
            File file= new File(ruta);
            archivo = new FileOutputStream(file);
            Document documento = new Document();
            PdfWriter.getInstance(documento, archivo);
            Paragraph pEncabezado = new Paragraph();
            Paragraph encabezado = new Paragraph();
            documento.open();
            try {
                PdfPTable tablaEncabezado = new PdfPTable(2);
                tablaEncabezado.addCell("Programa Académico");
                tablaEncabezado.addCell("Estudiantes");
                tablaEncabezado.addCell("TDS");
                tablaEncabezado.addCell("81");
                encabezado.setAlignment(Element.ALIGN_CENTER);
                encabezado.add("Reporte General de la Población Estudiantil");
                encabezado.add(line+"\n");
                Image img =  Image.getInstance("src/img/logo.png");
                img.setAlignment(Element.ALIGN_CENTER);
                img.scaleToFit(100, 100);
                encabezado.add(img);
                encabezado.add(line+"\n");
                documento.add(encabezado);
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(null,"Error obteniendo la imagen. "+ex);
                Logger.getLogger(ReporteController.class.getName()).log(Level.SEVERE, null, ex);
            }
            pEncabezado.add("Vicerrectoría: "+"Regionall Llanos\n");
            pEncabezado.add("Sede: "+"Villavicencio\n");
            pEncabezado.add("Reporte generado poren: "+"Regional Orinoquía\n");
            PdfPTable tbRepo = new PdfPTable(2);
            tbRepo.addCell("Programa Académico");
            tbRepo.addCell("Estudiantes");
            tbRepo.addCell("TDS");
            tbRepo.addCell("81");
            //documento.add(encabezado);
            documento.add(pEncabezado);
            documento.add(tbRepo);
            documento.close();
            archivo.close();
            mostrarReporte(file);
            return true;
        }catch(DocumentException | FileNotFoundException  e){
                System.out.println("ERROR: "+e);
        } catch (IOException ex) {
            Logger.getLogger(ReporteController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    @Override
    public void mostrarReporte(File archivo){
        try{
            Desktop.getDesktop().open(archivo);
        }catch(IOException e){
            JOptionPane.showMessageDialog(null,"ERROR: "+e);
        }
    }
    public static void main(String[] args){
        /*
        ReporteController repo = new ReporteController(null, null);
        if(repo.generarReporte("/home/b41n/Escritorio/nuevo.pdf")){
            //JOptionPane.showMessageDialog(null, "Reporte "+"generado");
        }
        */
    }
}
