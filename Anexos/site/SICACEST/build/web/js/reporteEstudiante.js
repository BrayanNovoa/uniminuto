/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//Iniciamos la librería jsPDF
//const pdf = require(jsPDF);
//var pdf = require('jspdf.min.js');

//var doc = new jsPDF('p', 'pt');

var columns = ["ID", "Name", "Age", "City"];
var data = [
    [1, "Jonatan", 25, "Gothenburg"],
    [2, "Simon", 23, "Gothenburg"],
    [3, "Hanna", 21, "Stockholm"]
];

//doc.autoTable(columns, data);
//doc.save("table.pdf");

//const pdf = new jsPDF();
// Seleccionamos el boton
//let boton = document.querySelector('button');
// Seleccionamos el input
//let input = document.querySelector('input');
var nombre = document.getElementById('pregunta');
// Agregamos un evento 'click' al boton
boton.addEventListener('click', printPDF);
//Opciones actuales
function printPDF(){
    // @param 1 - Coordenada
    // @param 1 - Coordenada
    // @param 1 - String o array de Strins a ser agregados a la página. Cada linea es agregada una linea abajo, las configuraciones de espaciado son declaradas antes de esta llamada.
    pdf.text(10, 10, 'Prueba de PDF! usando JavaScript.');
    // Agregamos las variables disponibles.
    pdf.text(10, 20, 'Nombre Del Estudiante: ${input.value}');
    pdf.text(10, 20, 'Nombre Del Estudiante: pregunta.innerHTML');
    // Guardamos el documento y le asigna un nombre
    pdf.output('save', 'Estudiantes.pdf')
    //pdf.save();
    console.log('Guardando');
}