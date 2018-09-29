/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

import java.awt.BorderLayout;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.LogarithmicAxis;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.plot.XYPlot;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;


/**
 *
 * @author b41n
 */
public class GraficoController implements interfaces.IGraficas{
    DbConnection entrar = new DbConnection();
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
    
    public GraficoController (String titulo){
        this.titulo = titulo;
    }
    DefaultPieDataset data;
    JFreeChart grafico;
    ChartPanel chartPanel;
    XYSeriesCollection datos;
    XYSeriesCollection dataxy;
    
    @Override
    public void obtenerDatos(String sql){
        data = new DefaultPieDataset();
        dataxy = new XYSeriesCollection();
        XYSeries xySerie = new XYSeries("Estudiantes por Programa");
        int i = 0;
        String [] campos ={"Programa", "Estudiantes"};
        String [] registro = new String[campos.length];
        model = new DefaultTableModel(null, campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                i=i+1;
                registro[0]=rs.getString(campos[0]);
                registro[1]=rs.getString(campos[1]);
                data.setValue(registro[0], Integer.parseInt(registro[1]));
                xySerie.addOrUpdate(i, Integer.parseInt(registro[1]));
                model.addRow(registro);
                System.out.println("Programa: "+i+" "+registro[0]);
            }
            System.out.println("Enviando el Registro.");
            generarTabla(registro);
        }catch(NullPointerException | SQLException ex){
            System.out.println("ERROR: "+ex);
        }
    }
    @Override
    public void generarTabla(String [] registro){
        //view.Admin.tbEstProg.setModel(model);
        System.out.println("Generando la Tabla");
    }
    public static void main(String []args){
        /*
        GraficoController graf = new GraficoController(PASO, "Estudiantes por Programa");
        String sql ="SELECT programa, (SELECT COUNT(*) FROM tb_estudiantes AS estu WHERE estu.programa_id = prog.programa_id) AS Estudiantes FROM tb_programas AS prog;";
        graf.obtenerDatos(sql);
        */
    }
    /*
    @Override
    public void generarDataSet(String [] registro){
        
    }
    */
    @Override
    public void graficarDatos(/*DefaultPieDataset data*/){
        //grafico = ChartFactory.createPieChart(titulo, data);
        //grafico = ChartFactory.createPieChart3D(titulo, data);
         /*titulo,
         data, 
         true, 
         true, 
         false);
        */
        // Creamos el Panel del Grafico con ChartPanel
        chartPanel = new ChartPanel(grafico);
        //view.Admin.pnlChartEstu.removeAll();
        //view.Admin.pnlChartEstu.add(chartPanel, BorderLayout.CENTER);
        //view.Admin.pnlChartEstu.validate();
        //Grafica gra = new Grafica(chartPanel);
        //gra.setVisible(true);
        //guardarImagen();
        
    }
    @Override
    public void guardarImagen(){
        try {   
            OutputStream out = new FileOutputStream("grafico.png");
            ChartUtilities.writeChartAsPNG(out,
                    grafico,
                    chartPanel.getWidth(),
                    chartPanel.getHeight());
            JOptionPane.showMessageDialog(null,"Imágen de la gráfica guardada.");
        } catch (IOException ex) {
            JOptionPane.showMessageDialog(null,"Error guardando la imágen de la gráfica.");
        }
        
    }
    
    public final void tipoGrafico(int tipo){
        switch(tipo){
            case LINEAL:
                grafico = ChartFactory.createXYLineChart(titulo, "Programas", "Estudiantes", dataxy, PlotOrientation.VERTICAL, true, true, true);
                break;
            case POLAR:
                grafico = ChartFactory.createPolarChart(titulo, dataxy, true, true, true);
                break;
            case DISPERSION:
                grafico = ChartFactory.createScatterPlot(titulo, tx, ty, dataxy, PlotOrientation.VERTICAL, true, true, true);
                break;
            case AREA:
                grafico = ChartFactory.createXYAreaChart(titulo, tx, ty, dataxy, PlotOrientation.VERTICAL, true, true, true);
                break;
            case LOGARITMICA:
                grafico = ChartFactory.createXYLineChart(titulo, tx, ty, dataxy, PlotOrientation.VERTICAL, true, true, true);
                XYPlot ejes=grafico.getXYPlot();
                NumberAxis rango = new LogarithmicAxis(ty);
                ejes.setRangeAxis(rango);
                break;
            case SERIETIEMPO:
                grafico = ChartFactory.createTimeSeriesChart(titulo, tx, ty, dataxy, true, true, true);
                break;
            case PASO:
                grafico = ChartFactory.createXYStepChart(titulo, ty, tx, dataxy, PlotOrientation.VERTICAL, true, true, true);
                break;
            case PASOAREA:
                grafico = ChartFactory.createXYStepAreaChart(titulo, tx, ty, dataxy, PlotOrientation.VERTICAL, true, true, true);
                break;
            case PIECHART:
                grafico = ChartFactory.createPieChart(titulo, data, true, true, true);
                break;
            case PIECHART3D:
                grafico = ChartFactory.createPieChart3D(titulo, data, true, true, true);
                break;
        }
        chartPanel = new ChartPanel(grafico);
        //view.Admin.pnlChartEstu.removeAll();
        //view.Admin.pnlChartEstu.add(chartPanel, BorderLayout.CENTER);
        //view.Admin.pnlChartEstu.validate();
    }

}
