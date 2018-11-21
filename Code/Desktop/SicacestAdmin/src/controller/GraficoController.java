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
    public final static int GENPER = 2;
    public final static int MADCABFAMPER = 3;
    public final static int GESPER = 4;
    public final static int FACULTAD_ESTUDIANTES = 5;
    public final static int ESTUDIANTE = 6;
    
    public final static int CHARTNO =1;
    public final static int CHARTSI =2;
    
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
    int tpRepo=0;
    
    @Override
    public boolean obtenerDatos(String sql, String[] campos,  String titleChart, int consulta){
        data = new DefaultPieDataset();
        dataset = new DefaultCategoryDataset();
        xyseries = new XYSeries("Titulo de la Gráfica");
        int i = 0;
        //String [] campos ={column1, column2};
        String [] registro = new String[campos.length];
        model = new DefaultTableModel(null, campos);
        Connection cn = entrar.getConexion();
        switch (consulta) {
            case GENERAL:
            case GENPER:
                try{
                    Statement st = cn.createStatement();
                    ResultSet rs = st.executeQuery(sql);
                    ResultSetMetaData rsmd = rs.getMetaData();
                    int numcol= rsmd.getColumnCount();
                    tbRepo = new PdfPTable(numcol);
                    tbRepo.addCell(campos[0]);
                    tbRepo.addCell(campos[1]);
                    while(rs.next()){
                        i=i+1;
                        registro[0]=rs.getString(1);
                        registro[1]=rs.getString(2);
                        tbRepo.addCell(rs.getString(1));
                        tbRepo.addCell(rs.getString(2));
                        dataset.setValue(Integer.parseInt(registro[1]), "Estudiantes", registro[0]);
                        xyseries.add(i,Integer.parseInt(registro[1]));
                        data.setValue(registro[0], Integer.parseInt(registro[1]));
                        model.addRow(registro);
                        System.out.println("Programa: "+i+" "+registro[0]);
                    }
                    datasetxy = new XYSeriesCollection(xyseries);
                    System.out.println("Enviando el Registro.");
                    generarTabla(registro);
                    tpRepo=CHARTSI;
                    return true;
                }catch(NullPointerException | SQLException ex){
                    System.out.println("ERROR: "+ex);
                }
                break;
            case MADCABFAMPER:
            case GESPER:
            case ESTUDIANTE:
                //JOptionPane.showMessageDialog(null,"Consulta sin gráfica.");
                System.out.println("Consulta sin gráfica.");
                try{
                    Statement st = cn.createStatement();
                    ResultSet rs = st.executeQuery(sql);
                    ResultSetMetaData rsmd = rs.getMetaData();
                    int numcol= rsmd.getColumnCount();
                    tbRepo = new PdfPTable(numcol);
                    if(consulta==ESTUDIANTE){
                        tbRepo.addCell(campos[0]);
                        tbRepo.addCell(campos[1]);
                    }else{
                        tbRepo.addCell(campos[0]);
                        tbRepo.addCell(campos[1]);
                        tbRepo.addCell(campos[2]);
                    }
                    while(rs.next()){
                        i=i+1;
                        if(consulta==ESTUDIANTE){
                            registro[0]=rs.getString(1);
                            registro[1]=rs.getString(2);
                            tbRepo.addCell(rs.getString(1));
                            tbRepo.addCell(rs.getString(2));
                        }else{
                            registro[0]=rs.getString(1);
                            registro[1]=rs.getString(2);
                            registro[2]=rs.getString(3);
                            tbRepo.addCell(rs.getString(1));
                            tbRepo.addCell(rs.getString(2));
                            tbRepo.addCell(rs.getString(3));
                        }
                        model.addRow(registro);
                        System.out.println("Programa: "+i+" "+registro[0]);
                    }
                    System.out.println("Enviando el Registro.");
                    view.Admin.tbEstProg.setModel(model);
                    view.Admin.btnReportGen.setEnabled(true);
                    tpRepo=CHARTNO;
                    return true;
                }catch(NullPointerException | SQLException ex){
                    System.out.println("ERROR: "+ex);
                }
                break;
            default:
                break;
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
    
    public final String elegirConsulta(int consulta){
        //String [] columns= {"Programa","Estudiantes"};
        String[] columns;
        columns = new String[2];
        switch (consulta){
            case GENERAL:
                sql ="SELECT prog.programa AS Programa, (SELECT COUNT(*) FROM tb_estudiantes AS estu WHERE estu.programa_id = prog.programa_id) AS Estudiantes FROM tb_programas AS prog ORDER BY Programa;";
                columns[0]="Programa";
                columns[1]="Inscritos";
                obtenerDatos(sql, columns, "Reporte general de la población estudiantil", GENERAL);
                //msgConsultaOK();
                break;
            case GENPER:
                columns[0]="Periodo";
                columns[1]="Inscritos";
                sql ="SELECT peri.periodo AS Periodo, (SELECT COUNT(*) FROM tb_estudiantes AS estu WHERE estu.periodo_id = peri.periodo_id ) AS Estudiantes FROM tb_periodos AS peri ORDER BY peri.periodo_id ;";
                obtenerDatos(sql, columns, "Reporte general de la población estudiantil por periodo", GENPER);
                //msgConsultaOK();
                break;
            case MADCABFAMPER:
                columns = new String[3];
                columns[0]="Periodo";
                columns[1]="Estudiante";
                columns[2]="Cabeza Familia";
                sql="SELECT Z.periodo AS Periodo, R.estudiante_cod AS Estudiante, R.respuesta AS Gestante FROM tb_encuestas AS E, tb_preguntas AS P, tb_respuestas AS R, tb_periodos AS Z, tb_estudiantes AS X WHERE E.encuesta_id=P.encuesta_id AND P.pregunta_id=R.pregunta_id AND R.estudiante_cod=X.estudiante_cod AND X.periodo_id=Z.periodo_id AND P.pregunta='¿Es madre/padre cabeza de familia?'AND R.respuesta='SI'ORDER BY R.pregunta_id, R.estudiante_cod;";
                obtenerDatos(sql, columns, "Reporte de estudiantes Madres cabeza de familia por periodo.", MADCABFAMPER);
                //msgConsultaOK();
                break;
            case GESPER:
                sql="SELECT Z.periodo AS Periodo, R.estudiante_cod AS Estudiante, R.respuesta AS Gestante FROM tb_encuestas AS E, tb_preguntas AS P, tb_respuestas AS R, tb_periodos AS Z, tb_estudiantes AS X WHERE E.encuesta_id=P.encuesta_id AND P.pregunta_id=R.pregunta_id AND R.estudiante_cod=X.estudiante_cod AND X.periodo_id=Z.periodo_id AND P.pregunta='¿Se encuentra en estado de embarazo?'AND R.respuesta='SI'ORDER BY R.pregunta_id, R.estudiante_cod;";
                columns = new String[3];
                columns[0]="Periodo";
                columns[1]="Estudiante";
                columns[2]="Gestante";
                obtenerDatos(sql, columns, "Reporte estudiantes gestantes por periodo", GESPER);
                //msgConsultaOK();
                break;
            case ESTUDIANTE:
                columns[0]="Pregunta";
                columns[1]="Respuesta";
                sql="SELECT P.pregunta AS Pregunta, R.respuesta AS Respuesta FROM tb_encuestas AS E, tb_preguntas AS P, tb_respuestas AS R WHERE E.encuesta_id=P.encuesta_id AND P.pregunta_id=R.pregunta_id AND R.estudiante_cod='"+view.Admin.txtEstChart.getText()+"'ORDER BY R.pregunta_id, R.estudiante_cod;";
                obtenerDatos(sql, columns, "Reporte de los datos poroporcionados por el estudiante", ESTUDIANTE);
                //msgConsultaOK();
                break;
            case FACULTAD_ESTUDIANTES:
                sql ="SELECT programa, (SELECT COUNT(*) FROM tb_estudiantes AS estu WHERE estu.programa_id = prog.programa_id) AS Estudiantes FROM tb_programas AS prog;";
                //obtenerDatos(sql, "", "", "",FACULTAD_ESTUDIANTES);
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
    
    public boolean generarReporte(String ruta, String nomRepo){
        try{
            int np;
            String line ="";
            for(int i =0;i<=77;i++){
                line+="_";
            }
            String nPage="Pág. ";
            Paragraph page= new Paragraph();
            page.setAlignment(Element.ALIGN_RIGHT);
            Paragraph encabezado = new Paragraph();
            encabezado.setAlignment(Element.ALIGN_CENTER);
            //encabezado.add("Reporte General de la Población Estudiantil");
            encabezado.add(nomRepo);
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
                np=1;
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
                page.add(nPage+np);
                documento.add(page);
                encabezado.add(pLine);
                encabezado.add(image);
                encabezado.add(pLine);
                try {
                    out = new FileOutputStream("grafico.png");
                    if(tpRepo==CHARTSI){
                        ChartUtilities.writeChartAsPNG(out, grafico, 550, 550);
                        Image imgChart = Image.getInstance("grafico.png");
                        imgChart.setAlignment(Element.ALIGN_CENTER);
                        imgChart.scaleToFit(450, 450);
                        pGrafico.add(imgChart);
                    }
                    JOptionPane.showMessageDialog(null,"Reporte guardado correctamente.");
                } catch (IOException ex) {
                    JOptionPane.showMessageDialog(null,"Error guardando la imágen de la gráfica.");
                }
                documento.add(new Paragraph(""));
                documento.add(encabezado);
            } catch (IOException ex) {
                JOptionPane.showMessageDialog(null,"Error obteniendo la imagen. "+ex);
                Logger.getLogger(GraficoController.class.getName()).log(Level.SEVERE, null, ex);
            }
            documento.add(tbEncabezado);
            if(tpRepo==CHARTSI){
                documento.add(pGrafico);
            }
            documento.newPage();
            Paragraph page2= new Paragraph("Pág. 2");
            page2.setAlignment(Element.ALIGN_RIGHT);
            documento.add(page2);
            documento.add(encabezado);
            documento.add(tbEncabezado);
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
