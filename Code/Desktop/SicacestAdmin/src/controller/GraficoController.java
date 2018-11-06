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
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Desktop;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.LogarithmicAxis;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.plot.PolarPlot;
import org.jfree.chart.plot.XYPlot;
import org.jfree.chart.renderer.DefaultPolarItemRenderer;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.xy.XYDataset;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;
import view.Grafica;


/**
 *
 * @author b41n
 */
public class GraficoController implements interfaces.IGraficas{
    DbConnection entrar = new DbConnection();
    public static final String LOGO = "img/logorepo.png";
    public String sql;
    
    public Object dataTB;
    
    DefaultTableModel model;
    String titulo, tx,ty;
    public final static int LINEAL = 1;
    public final static int POLAR = 2;
    public final static int DISPERSION = 3;
    public final static int AREA = 4;
    public final static int LOGARITMICA = 5;
    public final static int SERIETIEMPO = 6;
    public final static int PASO = 7;
    public final static int PASOAREA = 8;
    public final static int PIECHART = 9;
    public final static int PIECHART3D = 10;
    public final static int BARCHART = 11;
    
    public final static int GENERAL = 1;
    public final static int PERIODOS = 2;
    public final static int FACULTADES = 3;
    public final static int PROGRAMAS = 4;
    public final static int ENCUESTAS = 5;
    public final static int ESTUDIANTES = 6;
    public final static int FACULTAD_ESTUDIANTES = 7;
    public final static int FACULTAD_PROGRAMA = 8;
    public final static int PROGRAMA_ESTUDIANTES = 9;
    
    public GraficoController(String titulo){
        this.titulo = titulo;
    }
    DefaultCategoryDataset dataset;
    DefaultPieDataset data;
    public JFreeChart grafico;
    ChartPanel chartPanel;
    XYSeries xyseries;
    XYDataset datasetxy;
    OutputStream out;
    PdfPTable tbRepo;
    
    @Override
    public boolean obtenerDatos(String sql){
        data = new DefaultPieDataset();
        dataset = new DefaultCategoryDataset();
        xyseries = new XYSeries("Titulo de la Gráfica");
        int i = 0;
        String [] campos ={"Programa", "Estudiantes"};
        String [] registro = new String[campos.length];
        model = new DefaultTableModel(null, campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int numcol= rsmd.getColumnCount();
            tbRepo = new PdfPTable(numcol);
            tbRepo.addCell("Programa Académico");
            tbRepo.addCell("Estudiantes");
            while(rs.next()){
                i=i+1;
                registro[0]=rs.getString(1);
                registro[1]=rs.getString(2);
                
                tbRepo.addCell(rs.getString(1));
                tbRepo.addCell(rs.getString(2));
                dataset.setValue(Integer.parseInt(registro[1]), "Estudiantes", registro[0]);
                xyseries.add(i,Integer.parseInt(registro[1]));
                data.setValue(registro[0], Integer.parseInt(registro[1]));
                //xySerie.addOrUpdate(i, Integer.parseInt(registro[1]));
                model.addRow(registro);
                System.out.println("Programa: "+i+" "+registro[0]);
            }
            datasetxy = new XYSeriesCollection(xyseries);
            System.out.println("Enviando el Registro.");
            generarTabla(registro);
            return true;
        }catch(NullPointerException | SQLException ex){
            System.out.println("ERROR: "+ex);
        }
        return false;
    }
    @Override
    public void generarTabla(String [] registro){
        view.Admin.tbEstProg.setModel(model);
        System.out.println("Generando la Tabla");
    }
    
    @Override
    public void graficarDatos(){
        chartPanel = new ChartPanel(grafico);
        Grafica gra = new Grafica(chartPanel);
        gra.setVisible(true);
    }
    
    public final void tipoGrafico(int tipo){
        switch(tipo){
            case LINEAL:
                System.out.println("Generando gráfica tipo LINEAL");
                grafico = ChartFactory.createXYLineChart(titulo, "Programas", "Estudiantes", datasetxy, PlotOrientation.VERTICAL, true, true, true);
                break;
            case POLAR:
                System.out.println("Generando gráfica tipo POLAR");
                grafico = ChartFactory.createPolarChart(titulo, datasetxy, true, true, true);
                PolarPlot polatplot = new PolarPlot();
                polatplot.setDataset(datasetxy);
                NumberAxis rangeAxis = new NumberAxis();
                rangeAxis.setAxisLineVisible(false);
                rangeAxis.setTickMarksVisible(false);
                polatplot.setAxis(rangeAxis);
                polatplot.setRenderer(new DefaultPolarItemRenderer());
                break;
            case DISPERSION:
                System.out.println("Generando gráfica tipo Dispersión");
                grafico = ChartFactory.createScatterPlot(titulo, tx, ty, datasetxy, PlotOrientation.VERTICAL, true, true, true);
                break;
            case AREA:
                System.out.println("Generando gráfica tipo AREA");
                grafico = ChartFactory.createXYAreaChart(titulo, tx, ty, datasetxy, PlotOrientation.VERTICAL, true, false, false);
                break;
            case LOGARITMICA:
                System.out.println("Generando gráfica");
                grafico = ChartFactory.createXYLineChart(titulo, tx, ty, datasetxy, PlotOrientation.VERTICAL, true, false, false);
                XYPlot ejes=grafico.getXYPlot();
                NumberAxis rango = new LogarithmicAxis(ty);
                ejes.setRangeAxis(rango);
                break;
            case SERIETIEMPO:
                System.out.println("Generando gráfica");
                grafico = ChartFactory.createTimeSeriesChart(titulo, tx, ty, datasetxy, true, true, true);
                break;
            case PASO:
                grafico = ChartFactory.createXYStepChart(titulo, ty, tx, datasetxy, PlotOrientation.VERTICAL, true, true, true);
                break;
            case PASOAREA:
                System.out.println("Generando gráfica");
                grafico = ChartFactory.createXYStepAreaChart(titulo, tx, ty, datasetxy, PlotOrientation.VERTICAL, true, true, true);
                break;
            case PIECHART:
                System.out.println("Generando gráfica");
                grafico = ChartFactory.createPieChart(titulo, data, true, true, true);
                break;
            case PIECHART3D:
                System.out.println("Generando gráfica 3D.\nDatos: "+data);
                grafico = ChartFactory.createPieChart3D(titulo, data, true, true, true);
                break;
            case BARCHART:
                System.out.println("Generando gráfica se barras.\nDatos: "+data);
                grafico = ChartFactory.createBarChart("Título de la gráfica","Programas","Estudiantes", dataset,PlotOrientation.VERTICAL, false, true,false);
                CategoryPlot plot = grafico.getCategoryPlot();
                plot.setRangeGridlinePaint(Color.BLACK);
                break;
        }
        chartPanel = new ChartPanel(grafico);
        view.Admin.pnlChartEstu.removeAll();
        view.Admin.pnlChartEstu.add(chartPanel, BorderLayout.CENTER);
        view.Admin.pnlChartEstu.validate();
        view.Admin.btnReportGen.setEnabled(true);
    }
    
    public final String realizarConsulta(int consulta){
        switch (consulta){
            case GENERAL:
                sql ="SELECT prog.programa AS Programa, (SELECT COUNT(*) FROM tb_estudiantes AS estu WHERE estu.programa_id = prog.programa_id) AS Estudiantes FROM tb_programas AS prog ORDER BY Programa;";
                obtenerDatos(sql);
                //msgConsultaOK();
                break;
            case PERIODOS:
                sql ="SELECT periodo, periodo_id FROM tb_periodos;";
                obtenerDatos(sql);
                //msgConsultaOK();
                break;
            case FACULTADES:
                sql="select facultad, sede_id FROM tb_facultades;";
                obtenerDatos(sql);
                //msgConsultaOK();
                break;
            case PROGRAMAS:
                sql="SELECT programa, facultad_id FROM tb_programas;";
                obtenerDatos(sql);
                //msgConsultaOK();
                break;
            case ENCUESTAS:
                sql="SELECT encuesta, encuesta_id FROM tb_encuestas;";
                obtenerDatos(sql);
                //msgConsultaOK();
                break;
            case ESTUDIANTES:
                sql="SELECT estudiante_cod, estudiante_id FROM tb_estudiantes;";
                obtenerDatos(sql);
                //msgConsultaOK();
                break;
            case FACULTAD_ESTUDIANTES:
                sql ="SELECT programa, (SELECT COUNT(*) FROM tb_estudiantes AS estu WHERE estu.programa_id = prog.programa_id) AS Estudiantes FROM tb_programas AS prog;";
                obtenerDatos(sql);
                //msgConsultaOK();
                break;
        }
        return sql;
    }
    
    public void msgConsultaOK(){
        JOptionPane.showMessageDialog(null, "Consulta Realizada");
    }
    
        @Override
    public void guardarImagen(){
        try {   
            out = new FileOutputStream("grafico.png");
            ChartUtilities.writeChartAsPNG(out,
                    grafico,
                    chartPanel.getWidth(),
                    chartPanel.getHeight());
            JOptionPane.showMessageDialog(null,"Imágen de la gráfica guardada.");
        } catch (IOException ex) {
            JOptionPane.showMessageDialog(null,"Error guardando la imágen de la gráfica.");
        }
    }
    
    public boolean generarReporte(String ruta){
        try{
            String line ="";
            for(int i =0;i<=77;i++){
                line+="_";
            }
            Paragraph encabezado = new Paragraph();
            encabezado.setAlignment(Element.ALIGN_CENTER);
            encabezado.add("Reporte General de la Población Estudiantil");
            FileOutputStream archivo;
            File file= new File(ruta);
            archivo = new FileOutputStream(file);
            Document documento = new Document();
            PdfWriter.getInstance(documento, archivo);
            Paragraph pGrafico = new Paragraph();
            Paragraph pLine = new Paragraph();
            PdfPTable tbEncabezado = new PdfPTable(2);
            pLine.add(line+"\n");
            documento.open();
            try {
                tbEncabezado.addCell("Reporte generado por: ");
                tbEncabezado.addCell(view.Admin.txtUsuario.getText());
                tbEncabezado.addCell("Rectoría: ");
                tbEncabezado.addCell(view.Admin.txtRectoria.getText());
                tbEncabezado.addCell("Sede: ");
                tbEncabezado.addCell(view.Admin.txtSede.getText());
                URL logoRepo = GraficoController.class.getResource("/img/logorepo.png");
                Image image = Image.getInstance(logoRepo);
                image.setAlignment(Element.ALIGN_CENTER);
                
                //java.awt.Image image = new ImageIcon(this.getClass().getResource("/images/bell-icon16.png")).getImage();
                documento.add(pLine);
                documento.add(image);
                documento.add(pLine);
                try {   
                    out = new FileOutputStream("grafico.png");
                    ChartUtilities.writeChartAsPNG(out, grafico, 550, 550);
                    Image imgChart = Image.getInstance("grafico.png");
                    imgChart.setAlignment(Element.ALIGN_CENTER);
                    imgChart.scaleToFit(450, 450);
                    pGrafico.add(imgChart);
                    JOptionPane.showMessageDialog(null,"Reporte guardado correctamente.");
                } catch (IOException ex) {
                    JOptionPane.showMessageDialog(null,"Error guardando la imágen de la gráfica.");
                }
                encabezado.add(line+"\n\n\n");
                documento.add(encabezado);
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(null,"Error obteniendo la imagen. "+ex);
                Logger.getLogger(GraficoController.class.getName()).log(Level.SEVERE, null, ex);
            }
            documento.add(tbEncabezado);
            documento.add(pGrafico);
            documento.add(tbRepo);
            documento.close();
            archivo.close();
            mostrarReporte(file);
            return true;
        }catch(DocumentException | FileNotFoundException e){
            System.out.println("ERROR: "+e);
        } catch (IOException ex) {
            Logger.getLogger(GraficoController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public void mostrarReporte(File archivo){
        try{
            Desktop.getDesktop().open(archivo);
        }catch(IOException e){
            JOptionPane.showMessageDialog(null,"ERROR: "+e);
        }
    }

}
