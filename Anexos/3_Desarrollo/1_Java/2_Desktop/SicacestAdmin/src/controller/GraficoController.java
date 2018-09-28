/*
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
package controller;

import java.awt.BorderLayout;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.table.DefaultTableModel;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.LogarithmicAxis;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.plot.XYPlot;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;
import view.Grafica;

/**
 *
 * @author b41n
 */
public class GraficoController implements interfaces.IGraficas{
    DbConnection entrar = new DbConnection();
    DefaultTableModel model;
    String titulo, tx,ty;
    final static int LINEAL = 1;
    final static int POLAR = 2;
    final static int DISPERSION = 3;
    final static int AREA = 4;
    final static int LOGARITMICA = 5;
    final static int SERIETIEMPO = 6;
    final static int PASO = 7;
    final static int PASOAREA = 8;
    
    public GraficoController (int tipo, String titulo){
        this.titulo = titulo;
        //tipoGrafico(tipo);
    }
    JFreeChart grafico;
    XYSeriesCollection datos = new XYSeriesCollection();
    
    @Override
    public void obtenerDatos(String sql){
        DefaultPieDataset data = new DefaultPieDataset();
        int i = 0;
        String [] campos ={"Programa", "Estudiantes"};
        String [] registro = new String[campos.length];
        //String sql ="SELECT encuesta, descripcion FROM tb_encuestas;";
        model = new DefaultTableModel(null, campos);
        Connection cn = entrar.getConexion();
        try{
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                i=i+1;
                registro[0]=rs.getString(campos[0]);
                registro[1]=rs.getString(campos[1]);
                //generarDataSet(registro[0],Integer.parseInt(registro[1]));
                data.setValue(registro[0], Integer.parseInt(registro[1]));
                model.addRow(registro);
                System.out.println("Programa: "+i+" "+registro[0]);
            }
            graficarDatos(data);
            //generarDataSet(registro);
            System.out.println("Enviando el Registro.");
            generarTabla(registro);
        }catch(NullPointerException | SQLException ex){
            System.out.println("ERROR: "+ex);
        }
    }
    @Override
    public void generarTabla(String [] registro){
        view.Admin.tbEstProg.setModel(model);
        System.out.println("Generando la Tabla");
        //generarDataSet();
    }
    public static void main(String []args){
        /*
        GraficoController graf = new GraficoController(PASO, "Estudiantes por Programa");
        String sql ="SELECT programa, (SELECT COUNT(*) FROM tb_estudiantes AS estu WHERE estu.programa_id = prog.programa_id) AS Estudiantes FROM tb_programas AS prog;";
        graf.obtenerDatos(sql);
        */
    }
    @Override
    public void generarDataSet(String [] registro){
        //Obtenemos Los datos a Graficar
        //data.setValue(caracteristica, cantidad);
        /*
        System.out.println("Generando el DataSet");
        DefaultPieDataset data = new DefaultPieDataset();
        data.setValue(registro[0], Integer.parseInt(registro[1]));
        graficarDatos(data);
        data.setValue("Mujeres", mujeres);
        data.setValue("Hombres", hombres);
        
        
        data.setValue("Psicología", 120);
        data.setValue("Pedagogía", 180);
        data.setValue("Com. Social", 190);
        data.setValue("Com. Gráfica", 130);
        data.setValue("Adm. Empresas", 190);
        data.setValue("Salud Ocupacional", 120);
        data.setValue("Tec. Dllo. Software", 80);
        data.setValue("Tec. Redes", 50);
        data.setValue("Ing. Ambiental", 90);
        */
        // Creamos el Grafico
         //"Estudiantes Por Programa: "+total+"\n Hombres: "+hombres+"   Mujeres: "+mujeres,
        
    }
    @Override
    public void graficarDatos(DefaultPieDataset data){
        JFreeChart chart = ChartFactory.createPieChart(
         titulo,
         data, 
         true, 
         true, 
         false);
        // Creamos el Panel del Grafico con ChartPanel
        ChartPanel chartPanel = new ChartPanel(chart);
        view.Admin.pnlCartEstu.removeAll();
        view.Admin.pnlCartEstu.add(chartPanel, BorderLayout.CENTER);
        view.Admin.pnlCartEstu.validate();
        //Grafica gra = new Grafica(chartPanel);
        //gra.setVisible(true);
        //view.Grafica.pnlChartEstu.removeAll();
        //view.Grafica.pnlChartEstu.add(chartPanel, BorderLayout.CENTER);
        //view.Grafica.pnlChartEstu.validate();
        
    }
    @Override
    public void guardarImagen(){
        
    }
    
    public final void tipoGrafico(int tipo){
        switch(tipo){
            case LINEAL:
                grafico = ChartFactory.createXYLineChart(titulo, tx, ty, datos, PlotOrientation.VERTICAL, true, true, true);
                break;
            case POLAR:
                grafico = ChartFactory.createPolarChart(titulo, datos, true, true, true);
                break;
            case DISPERSION:
                grafico = ChartFactory.createScatterPlot(titulo, tx, ty, datos, PlotOrientation.VERTICAL, true, true, true);
                break;
            case AREA:
                grafico = ChartFactory.createXYAreaChart(titulo, tx, ty, datos, PlotOrientation.VERTICAL, true, true, true);
                break;
            case LOGARITMICA:
                grafico = ChartFactory.createXYLineChart(titulo, tx, ty, datos, PlotOrientation.VERTICAL, true, true, true);
                XYPlot ejes=grafico.getXYPlot();
                NumberAxis rango = new LogarithmicAxis(ty);
                ejes.setRangeAxis(rango);
                break;
            case SERIETIEMPO:
                grafico = ChartFactory.createTimeSeriesChart(titulo, tx, ty, datos, true, true, true);
                break;
            case PASO:
                grafico = ChartFactory.createXYStepChart(titulo, ty, tx, datos, PlotOrientation.VERTICAL, true, true, true);
                break;
            case PASOAREA:
                grafico = ChartFactory.createXYStepAreaChart(titulo, tx, ty, datos, PlotOrientation.VERTICAL, true, true, true);
                break;
                
        }
            
    }
        
    public void agregarGrafico(String id,double [] x,double []y){
        XYSeries s = new XYSeries(id);
        int n = x.length;
        for(int i=0;i<n;i++){
            s.add(x[i],y[i]);
        }
        datos.addSeries(s);
    }
    
    public ChartPanel obtienePanel(){
        return new ChartPanel(grafico);
    }
}
