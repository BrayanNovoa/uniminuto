/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
    $("#btnlogin").click(function(){
        var userMail=$("#userMail").val();
        var userPass=$("#userPass").val();
        var dataString="userMail="+userMail+"&userPass="+userPass+"&insert=";
        if($.trim(userMail).length>0 & $.trim(userPass).length>0){
            $.ajax({
                type: "POST",
                url:"ingreso",
                data: dataString,
                crossDomain: true,
                cache: false,
                beforeSend: function(){
                    $("#btnlogin").val('Connectando...');
                },
                success: function(data){
                    if(data==="success"){
                        $("#btnlogin").val('Iniciar Sesión');
                        location.href='home.jsp';
                        //alert("Bienvenido");
                    }else if(data==="error"){
                        alert("Verifique sus datos");
                    }
                }
            });
        }return false;
    });
});