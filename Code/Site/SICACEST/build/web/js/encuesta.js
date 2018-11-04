/* 
 * Esta aplicación fue desarrollada por Brayan Novoa.
 * Si desea ponerse en contacto por alguna duda no
 * dude en escribir al siguiente correo.
 * bnovoa.linux@gmail.com
 */
jQuery('.edad').keyup(function () { 
    this.value = this.value.replace(/[^0-9\.]/g,'');
    $(".edad").attr('maxlength', 2);
});

jQuery('.fijo').keyup(function () { 
    this.value = this.value.replace(/[^0-9\.]/g,'');
    $(".fijo").attr('maxlength', 7);
});

jQuery('.celular').keyup(function () { 
    this.value = this.value.replace(/[^0-9\.]/g,'');
    $(".celular").attr('maxlength', 10);
});
