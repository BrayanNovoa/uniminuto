/* 
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */


function ingreso(){
    var mailUser= document.getElementById("mail_User").value;
    var passUser= document.getElementById("pass_User").value;
    window.location.href='ingreso?pass_User='+passUser+'&mail_User='+mailUser;
}