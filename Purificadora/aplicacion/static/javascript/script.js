var totalF002=0;

// Evento click para el boton que activa la sidebar y la desactica co el mismo boton
$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
  });
//   Evento click para que la sidebar se desactive dando click en el are del content
$("#content").click(function(event) {
    if(document.querySelector(".toggled")){
        event.preventDefault();
        document.getElementById("wrapper").classList.remove("toggled");
    }
});
// Emula el click al hacer hover al dropright
$('.dropright').hover(function(){ 
    $('.dropdown-toggle').trigger('click'); 
});
// Soluciona el error de que en movil tienes que tocar dos veces para que se despliegue el dropright button
$('.dropdown-toggle').on('touchstart', function () {
    $('.dropdown-toggle').trigger('click');
});
// No deja arrastrar las imagenes
$('img').attr('draggable', false);

//Cerrar automaticamente el alerta
$(".alert-dismissible").fadeTo(2000, 500).slideUp(500, function(){
    $(".alert-dismissible").alert('close');
});

//Despliega el modal
(function()
{
    $(function()
    {
        $('#btn-modal-F001').on('click',function()
        {
            $('#PPA-F001').modal();
            return false;
        });

        $('#btn-modal-F002').on('click',function()
        {
            $('#PPA-F002').modal();
            return false;
        });

        $('#btn-modal-F009').on('click',function()
        {
            $('#PPA-F009').modal();
            return false;
        });

        $('#btn-modal-F010').on('click',function()
        {
            $('#PPA-F010').modal();
            return false;
        });

        $('#btn-modal-F011').on('click',function()
        {
            $('#PPA-F011').modal();
            return false;
        });

        $('#btn-modal-F012').on('click',function()
        {
            $('#PPA-F012').modal();
            return false;
        });

        $('#btn-modal-F015').on('click',function()
        {
            $('#PPA-F015').modal();
            return false;
        });

        $('#btn-modal-F016').on('click',function()
        {
            $('#PPA-F016').modal();
            return false;
        });

        $('#btn-modal-F023').on('click',function()
        {
            $('#PPA-F023').modal();
            return false;
        }); 

        $('#btn-modal-F024').on('click',function()
        {
            $('#PPA-F024').modal();
            return false;
        });    

        //-----Bitacoras de mantenimiento----------
        $('#btn-modal-F003').on('click',function()
        {
            $('#PPA-F003').modal();
            return false;
        });

        $('#btn-modal-F004').on('click',function()
        {
            $('#PPA-F004').modal();
            return false;
        });  

        $('#btn-modal-F017').on('click',function()
        {
            $('#PPA-F017').modal();
            return false;
        }); 

        $('#btn-modal-F018').on('click',function()
        {
            $('#PPA-F018').modal();
            return false;
        });  

        $('#btn-modal-F019').on('click',function()
        {
            $('#PPA-F019').modal();
            return false;
        });  

        $('#btn-modal-F025').on('click',function()
        {
            $('#PPA-F025').modal();
            return false;
        });  

        $('#btn-modal-F026').on('click',function()
        {
            $('#PPA-F026').modal();
            return false;
        }); 
         
        $('#btn-modal-F027').on('click',function()
        {
            $('#PPA-F027').modal();
            return false;
        }); 
        //-----Bitacoras de mantenimiento----------   
        $('#btn-modal-F021').on('click',function()
        {
            $('#PPA-F021').modal();
            return false;
        }); 
    }); 
}());

//Al dar click al botón agregar se cierra el modal
(function()
{
    $(function()
    {
        $('#btn-crear-F001').on('click',function()
        {
            $('#PPA-F001').modal('toggle');
        });

        $('#btn-crear-F002').on('click',function()
        {
            $('#PPA-F002').modal('toggle');
        });

        $('#btn-crear-F009').on('click',function()
        {
            $('#PPA-F009').modal('toggle');
        });

        $('#btn-crear-F010').on('click',function()
        {
            $('#PPA-F010').modal('toggle');
        });

        $('#btn-crear-F011').on('click',function()
        {
            $('#PPA-F011').modal('toggle');
        });

        $('#btn-crear-F012').on('click',function()
        {
            $('#PPA-F012').modal('toggle');
        });

        $('#btn-crear-F023').on('click',function()
        {
            $('#PPA-F023').modal('toggle');
        });

        //------Bitacoras de mantenimiento---------
        $('#btn-crear-F003').on('click',function()
        {
            $('#PPA-F003').modal('toggle');
        });  

        $('#btn-crear-F004').on('click',function()
        {
            $('#PPA-F004').modal('toggle');
        });  

        $('#btn-crear-F017').on('click',function()
        {
            $('#PPA-F017').modal('toggle');
        });  

        $('#btn-crear-F018').on('click',function()
        {
            $('#PPA-F018').modal('toggle');
        });  

        $('#btn-crear-F019').on('click',function()
        {
            $('#PPA-F019').modal('toggle');
        });  

        $('#btn-crear-F025').on('click',function()
        {
            $('#PPA-F025').modal('toggle');
        });  

        $('#btn-crear-F026').on('click',function()
        {
            $('#PPA-F026').modal('toggle');
        }); 

        $('#btn-crear-F027').on('click',function()
        {
            $('#PPA-F027').modal('toggle');
        });  
        //-----Bitacoras de mantenimiento----------
        $('#btn-crear-F021').on('click',function()
        {
            $('#PPA-F021').modal('toggle');
        });
    }); 
}());
//Borra los inputs de registros si le clickea a los botones para cerrar
function borrarBitacorasDelBoton()
{
    $('textarea').prop('value','');
    $('input[type=text]').prop('value','');
    $('input[type=date]').prop('value','');
    $('input[type=time]').prop('value','');
    $('input[type=number]').prop('value','');
    $('input[type=checkbox]').prop('checked',false);
    buttons = document.querySelectorAll(".submit")
    buttons.forEach(button => {
        button.disabled = true;
        document.getElementById('labelResultado').innerHTML=0;
        totalF002=0;
    }); 
}

//Función de borrado dando click fuera del area del modal
function borrarBitacoras()
{   
    // Si el modal esta abierto cuando pierde el enfoque no se borran los forms esto evita que si estas capturando y te regresas a editar no se borre todo
    if (document.querySelector(".modal-open")){
        
    }
    // Si el modal esta cerrado cuando pierde el enfoque borra todo
    else {
        $('textarea').prop('value','');
        $('input[type=text]').prop('value','');
        $('input[type=date]').prop('value','');
        $('input[type=time]').prop('value','');
        $('input[type=number]').prop('value','');
        $('input[type=checkbox]').prop('checked',false);
        buttons = document.querySelectorAll(".submit")
        buttons.forEach(button => {
            button.disabled = true;
            document.getElementById('labelResultado').innerHTML=0;
            totalF002=0;
        });
    }
}
// Cuando un valor del formulario cambia se activa el .change de jquery y entra la funcion para validar
$(document).ready(function (){
    $('input[type=text], input[type=date], input[type=time],input[type=number],input[type=checkbox]').change(function(){
        // Si el evento change pertenece a un modal en especifico este evento event debajo para cada funcion evita que se ejecuten todas las funciones con el evento .change principal que esta una linea arriba
        $('#PPA-F002').change(validateF002)
        $('#PPA-F023').change(validateF023)
        $('#PPA–F005').change(validateF005)
        $('#PPA–F006').change(validateF006)
        $('#PPA–F007').change(validateF007)
        $('#PPA–F008').change(validateF008)
        $('#PPA–F013').change(validateF013)
        $('#PPA–F014').change(validateF014)
        $('#PPA–F028').change(validateF028)
        $('#PPA–F029').change(validateF029)
        $('#PPA-F003').change(validateF003)
        $('#PPA-F004').change(validateF004)
        $('#PPA-F017').change(validateF017)
        $('#PPA-F018').change(validateF018)
        $('#PPA-F019').change(validateF019)
        $('#PPA-F025').change(validateF025)
        $('#PPA-F026').change(validateF026)
        $('#PPA-F027').change(validateF027)
        $('#PPA-F001').change(validateF001)
        $('#PPA-F009').change(validateF009)
        $('#PPA-F010').change(validateF010)
        $('#PPA-F011').change(validateF011)
        $('#PPA-F012').change(validateF012)
        $('#PPA-F015').change(validateF015)
        $('#PPA-F016').change(validateF016)
        $('#PPA-F024').change(validateF024)
        $('#PPA–F020').change(validateF020)
        $('#PPA-F021').change(validateF021)
    });
});
// A partir de aqui todas las avalidaciones son hechas, los de tipo texto, date, time, se validan con la longitud del valor, los de tipo checkbox se validan con is checked de jquery, si cumple con la validacion
// añade el attribute disabled con el valor false, que esto hace que sea visible, si no cumple vuelve -si es que estaba activo- a estar inactivo
function validateF002(){
    if ($('#Fecha-inicio-F002').val().length   >   0   &&
        $('#Garrafon-F002').val().length  >   0   &&
        $('#Fecha-fin-F002').val().length  >   0   &&
        $('#Observaciones-F002').val().length  >   0   &&
        ($('#Checkbox-l-F002').is(":checked") || $('#Checkbox-m-F002').is(":checked") || $('#Checkbox-mi-F002').is(":checked") || $('#Checkbox-j-F002').is(":checked") || $('#Checkbox-v-F002').is(":checked"))) {
            $("#btn-crear-F002").prop("disabled",false);
    }
    else {
        $("#btn-crear-F002").prop("disabled",true);
    }
}
function validateF023(){
    if ($('#Fecha-F023').val().length   >   0   &&
        $('#Codigo-F023').val().length  >   0   &&
        $('#Edificio-F023').val().length  >   0   &&
        $('#Piso-F023').val().length  >   0 ) {
            $("#btn-registrar-F023").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F023").prop("disabled",true);
    }
}
function validateF005(){
    if ($('#Fecha-PPA-F005').val().length   >   0   &&
        $('#Hora-PPA-F005').val().length  >   0   &&
        $('#Cl-PPA-F005').val().length  >   0 ) {
            
            $("#btn-registrar-F005").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F005").prop("disabled",true);
    }
}
function validateF006(){
    if ($('#Fecha-PPA–F006').val().length   >   0   &&
        $('#Hora-PPA–F006').val().length  >   0   &&
        $('#Cl-PPA–F006').val().length  >   0  ) {
            $("#btn-registrar-F006").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F006").prop("disabled",true);
    }
}
function validateF007(){
    if ($('#Fecha-PPA–F007').val().length   >   0   &&
        $('#Hora-PPA–F007').val().length  >   0   &&
        $('#Gotas-PPA–F007').val().length  >   0   &&
        $('#ml-PPA–F007').val().length  >   0   &&
        $('#ppm-PPA–F007').val().length  >   0   ) {
            $("#btn-registrar-F007").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F007").prop("disabled",true);
    }
}
function validateF008(){
    if ($('#Fecha-PPA–F008').val().length   >   0   &&
        $('#Hora-PPA–F008').val().length  >   0   &&
        $('#pH-M1-PPA–F008').val().length  >   0   &&
        $('#pH-M2-PPA–F008').val().length  >   0    ) {
            $("#btn-registrar-F008").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F008").prop("disabled",true);
    }
}
function validateF013(){
    if ($('#Fecha-PPA–F013').val().length   >   0   &&
        $('#Hora-PPA–F013').val().length  >   0   &&
        $('#Dispensador-PPA–F013').val().length  >   0   &&
        $('#Saturacion-PPA–F013').val().length  >   0   &&
        $('#Olor-PPA–F013').val().length  >   0   &&
        $('#Sabor-PPA–F013').val().length  >   0   &&
        $('#Color-PPA–F013').val().length  >   0    ) {
            $("#btn-registrar-F013").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F013").prop("disabled",true);
    }
}
function validateF014(){
    if ($('#Fecha-PPA–F014').val().length   >   0   &&
        $('#Hora-PPA–F014').val().length  >   0   &&
        $('#Saturacion-PPA–F014').val().length  >   0   &&
        $('#Olor-PPA–F014').val().length  >   0   &&
        $('#Sabor-PPA–F014').val().length  >   0   &&
        $('#Color-PPA–F014').val().length  >   0   ) {
            $("#btn-registrar-F014").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F014").prop("disabled",true);
    }
}
function validateF028(){
    if ($('#Fecha-PPA–F028').val().length   >   0   &&
        $('#Hora-Muestra-PPA–F028').val().length  >   0   &&
        $('#Hora-Analisis-PPA–F028').val().length  >   0   &&
        $('#pH1-PPA–F028').val().length  >   0   &&
        $('#pH2-PPA–F028').val().length  >   0   &&
        $('#Olor-PPA–F028').val().length  >   0   &&
        $('#Cloro-Libre-Residual-PPA–F028').val().length  >   0   &&
        $('#SD-PPA–F028').val().length  >   0   &&
        $('#T-PPA–F028').val().length  >   0   &&
        $('#Dureza-PPA–F028').val().length  >   0  ) {
            $("#btn-registrar-F028").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F028").prop("disabled",true);
    }
}
function validateF029(){
    if ($('#Fecha-PPA-F029').val().length   >   0   &&
        $('#Hora-Muestreo-PPA-F029').val().length  >   0   &&
        $('#Hora-Analisis-PPA-F029').val().length  >   0   &&
        $('#pH1-PPA-F029').val().length  >   0   &&
        $('#pH2-PPA-F029').val().length  >   0   &&
        $('#Olor-PPA-F029').val().length  >   0   &&
        $('#Cloro-Libre-Residual-PPA-F029').val().length  >   0   &&
        $('#SD-PPA-F029').val().length  >   0   &&
        $('#T-PPA-F029').val().length  >   0   &&
        $('#ID-PPA-F029').val().length  >   0   ) {
            $("#btn-registrar-F029").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F029").prop("disabled",true);
    }
}
function validateF003(){
    if ($('#Fecha-F003').val().length   >   0   &&
        $('#Hora-F003').val().length  >   0   &&
        $('#Resguardo-F003').val().length  >   0   &&
        $('#Ubicacion-F003').val().length  >   0   ) {
            $("#btn-registrar-F003").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F003").prop("disabled",true);
    }
}
function validateF004(){
    if ($('#Fecha-F004').val().length   >   0   &&
        $('#Hora-F004').val().length  >   0   &&
        $('#Tipo-Operacion-F004').val().length  >   0   ) {
            $("#btn-registrar-F004").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F004").prop("disabled",true);
    }
}
function validateF017(){
    if ($('#Fecha-F017').val().length   >   0   &&
        $('#Sal-F017').val().length  >   0   &&
        $('#Hora-Encendido-F017').val().length  >   0   &&
        $('#Hora-Apagado-F017').val().length  >   0  ) {
            $("#btn-registrar-F017").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F017").prop("disabled",true);
    }
}
function validateF018(){
    if ($('#Fecha-F018').val().length   >   0   &&
        $('#Hora-Encendido-F018').val().length  >   0   &&
        $('#Hora-Apagado-F018').val().length  >   0  ) {
            $("#btn-registrar-F018").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F018").prop("disabled",true);
    }
}
function validateF019(){
    if ($('#Fecha-F019').val().length   >   0   &&
        $('#Hora-Encendido-F019').val().length  >   0   &&
        $('#Hora-Apagado-F019').val().length  >   0  ) {
            $("#btn-registrar-F019").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F019").prop("disabled",true);
    }
}
function validateF025(){
    if ($('#Fecha-F025').val().length   >   0   &&
        $('#Hora-F025').val().length  >   0   &&
        $('#Tipo-Operacion-F025').val().length  >   0   ) {
            $("#btn-registrar-F025").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F025").prop("disabled",true);
    }
}
function validateF026(){
    if ($('#Fecha-F026').val().length   >   0   &&
        $('#Hora-F026').val().length  >   0   &&
        $('#Observaciones-F026').val().length  >   0   ) {
            $("#btn-registrar-F026").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F026").prop("disabled",true);
    }
}
function validateF027(){
    if ($('#Fecha-F027').val().length   >   0   &&
        $('#Hora-F027').val().length  >   0   &&
        $('#Observaciones-F027').val().length  >   0   ) {
            $("#btn-registrar-F027").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F027").prop("disabled",true);
    }
}
function validateF001(){
    if ($('#Fecha-F001').val().length   >   0   &&
        $('#Hora-F001').val().length  >   0   &&
        $('#Cantidad-F001').val().length  >   0   ) {
            $("#btn-registrar-F001").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F001").prop("disabled",true);
    }
}
function validateF009(){
    if ($('#Fecha-F009').val().length   >   0   &&
        $('#Lote-F009').val().length  >   0   &&
        $('#Unidades-verificadas-F009').val().length  >   0  && 
        $('#Unidades-no-conformes-F009').val().length  >   0   ) {
            $("#btn-registrar-F009").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F009").prop("disabled",true);
    }
}
function validateF010(){
    if ($('#Fecha-F010').val().length   >   0   &&
        $('#Encendido-F010').val().length   >   0   &&
        $('#Apagado-F010').val().length   >   0   &&
        $('#In-F010').val().length  >   0   &&
        $('#Out-F010').val().length  >   0    ) {
            $("#btn-registrar-F010").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F010").prop("disabled",true);
    }
}
function validateF011(){
    if ($('#Fecha-F011').val().length   >   0   &&
        $('#Encendido-F011').val().length   >   0   &&
        $('#Apagado-F011').val().length   >   0 ) {
            $("#btn-registrar-F011").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F011").prop("disabled",true);
    }
}
function validateF012(){
    if ($('#Fecha-F012').val().length   >   0   &&
        $('#Encendido-F012').val().length   >   0   &&
        $('#Apagado-F012').val().length   >   0 ) {
            $("#btn-registrar-F012").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F012").prop("disabled",true);
    }
}
function validateF015(){
    if ($('#Fecha-F015').val().length   >   0   &&
        $('#Inicio-F015').val().length   >   0 &&
        $('#Final-F015').val().length   >   0 &&
        $('#Cantidad-F015').val().length   >   0 ) {
            $("#btn-registrar-F015").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F015").prop("disabled",true);
    }
}
function validateF016(){
    if ($('#Fecha-F016').val().length   >   0   &&
        $('#Inicio-F016').val().length   >   0 &&
        $('#Final-F016').val().length   >   0 &&
        $('#Cantidad-F016').val().length   >   0 ) {
            $("#btn-registrar-F016").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F016").prop("disabled",true);
    }
}

function validateF024(){
    if ($('#percent-1').val().length  >   0 &&
        $('#revision-1').val().length  >   0 &&
        $('#percent-2').val().length  >   0 &&
        $('#revision-2').val().length  >   0 &&
        $('#percent-3').val().length  >   0 &&
        $('#revision-3').val().length  >   0 &&
        $('#percent-4').val().length  >   0 &&
        $('#revision-4').val().length  >   0 &&
        $('#percent-5').val().length  >   0 &&
        $('#revision-5').val().length  >   0 &&
        $('#percent-6').val().length  >   0 &&
        $('#revision-6').val().length  >   0 &&
        $('#percent-7').val().length  >   0 &&
        $('#revision-7').val().length  >   0 &&
        $('#percent-8').val().length  >   0 &&
        $('#revision-8').val().length  >   0 &&
        $('#percent-9').val().length  >   0 &&
        $('#revision-9').val().length  >   0 &&
        $('#percent-10').val().length  >   0 &&
        $('#revision-10').val().length  >   0 &&
        $('#percent-11').val().length  >   0 &&
        $('#revision-11').val().length  >   0 &&
        $('#Promedio-F024').val().length  >   0 &&
        $('#Revisiones-F024').val().length  >   0 &&
        $('#Fecha-F024').val().length  >   0 &&
        $('#Acciones-correctivas-F024').val().length  >   0  ) { 
            $("#btn-registrar-F024").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F024").prop("disabled",true);
    }
}
function validateF020(){
    if ($('#Fecha-Solicitud-F020').val().length   >   0   &&
        $('#Area-F020').val().length  >   0   &&
        $('#Volumen-F020').val().length  >   0   &&
        $('#Fecha-Entrega-F020').val().length  >   0   &&
        $('#Persona-Entrego-F020').val().length  >   0   &&
        $('#Nombre-Solicitante-F020').val().length  >   0   &&
        $('#Firma-Receptor-F020').val().length  >   0   ) {
            $("#btn-registrar-F020").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F020").prop("disabled",true);
    }
}
function validateF021(){
    if ($('#Fecha-Solicitud-F021').val().length   >   0   &&
        $('#Area-F021').val().length  >   0   &&
        $('#Solicitante-F021').val().length  >   0   &&
        $('#Unidades-Solicitadas-F021').val().length  >   0   &&
        $('#Fecha-Entrega-F021').val().length  >   0   &&
        $('#Unidades-Entregadas-F021').val().length  >   0   &&
        $('#Persona-Entrego-F021').val().length  >   0   &&
        $('#Nombre-Receptor-F021').val().length  >   0   &&
        $('#Firma-Receptor-F021').val().length  >   0   ) {
            $("#btn-registrar-F021").prop("disabled",false);
    }
    else {
        $("#btn-registrar-F021").prop("disabled",true);
    }
}

function validarTotal(checkbox) //Realiza la suma de las checkboxes con estado checked y cambia el label de total
{
    total=document.getElementById('labelResultado')

    if(checkbox.checked==true)
    {
        totalF002+=1;
        total.innerHTML=totalF002;
    }

    else
    {
        totalF002-=1;
        total.innerHTML=totalF002;
    }
}

function promediar()    //Realiza el promedio de cumpliento para la bitácora 24
{
    let promedio=0
    id=String('percent-')


    for(let i=0;i<11;i++)   /*El ciclo va manipulando la cadena para acceder a los valores 
                            de todos los textbox de porcentaje y sumando los valores en la variable promedio*/
    {
        let num=i+1;    
        id+=num;
        promedio+=Number(document.getElementById(id).value);

        if(i>8)
        {
            id=id.slice(0,id.length-2);
        }

        else
        {
            id=id.slice(0,id.length-1);
        }

    }

    promedio=promedio/11
    document.getElementById('Promedio-F024').value=promedio;

}

function sumaRevisiones()   //Realiza la suma de revisiones para la bitácora 24
{
    let suma=0
    id=String('revision-')


    for(let i=0;i<11;i++)   /*El ciclo va manipulando la cadena para acceder a los valores 
                            de todos los textbox de revisiones y sumando los valores en la variable suma*/
    {
        let num=i+1;
        id+=num;
        suma+=Number(document.getElementById(id).value);

        if(i>8)
        {
            id=id.slice(0,id.length-2);
        }

        else
        {
            id=id.slice(0,id.length-1);
        }

    }

    document.getElementById('Revisiones-F024').value=suma;

}

