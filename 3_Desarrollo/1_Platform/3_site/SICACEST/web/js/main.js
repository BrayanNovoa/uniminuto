/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
window.addEventListener('load', function (){
    //alert("Conectado Al Servidor");
    var form = document.getElementById("formlogin");
    document.getElementById('btnlogin').addEventListener('click', function(){
        //alert("click en iniciar");
        
        var usuario = document.getElementById('txtid').value;
        var contrasena = document.getElementById('txtpass').value;
        
        
        var flag = false;
        if(usuario.length > 0 && contrasena.length > 0){
            flag = true;
        }
        if(flag){
            document.getElementById("formlogin").submit();
            //alert('Inicio De Sesión Exitoso.');
        }else{
            alert('Por favor llene todos los camos.');
        }
    });
});