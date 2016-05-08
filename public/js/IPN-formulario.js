/* VALIDAR PRIMER COMBO */  
function validar_combo_1() {

    /* VARIABLES DE FORM */
    nombre_del_proyecto = $('#nombre_del_proyecto').val();
    eje_tematico = document.getElementById("eje_tematico").value; 
    var campo_1 = "";
    var campo_2 = "";

    /* COMPROBANDO NOMBRE DEL PROYECTO */
    if (nombre_del_proyecto == "") {
        campo_1 = "error";  
    }
    if (nombre_del_proyecto != "") { 
        if(/^[A-zÀ-ú0-9 ]*$/.test(nombre_del_proyecto) == false) {
            document.getElementById("error_1").style.display='block';
            campo_1 = "error";  
        } 
        if(/^[A-zÀ-ú0-9 ]*$/.test(nombre_del_proyecto) == true) {
            document.getElementById("error_1").style.display='none';
            campo_1 = "ok"; 
        }
    }

    /* COMPROBANDO EJE TEMATICO */
    if (eje_tematico == "") {
        campo_2 = "error";
    }
    if (eje_tematico != "") {
        campo_2 = "ok";
    }
    
    /* COMPROBANDO QUE EXISTAN TODOS LOS VALORES */
   if (campo_1 == "ok" && campo_2 =="ok") {
        document.getElementById('boton_siguiente_1').style.display = 'inline';
        document.getElementById('mensaje_1').style.display = 'none';
    } else { 
        document.getElementById('boton_siguiente_1').style.display = 'none'; 
        document.getElementById('mensaje_1').style.display = 'block';
    }
}

/* VALIDAR SEGUNDO COMBO */
function validar_combo_2() {

    /* VARIABLES DEL FORMULARIO */
    nombre_del_participante_1 = $('#nombre_del_participante_1').val();
    var campo_p1_1 = "";
    categoria_participante_1 = "";
    var campo_p1_2 = "";
    institucion_participante_1 = $('#institucion_participante_1').val();
    var campo_p1_3 = "";
    plantel_participante_1 = "";
    var campo_p1_4 = "";
    comprobante_participante_1 = "";
    var campo_p1_5 = "";
    nombre_del_participante_2 = $('#nombre_del_participante_2').val();
    var campo_p2_1 = "";
    categoria_participante_2 = "";
    var campo_p2_2 = "";
    institucion_participante_2 = $('#institucion_participante_2').val();
    var campo_p2_3 = "";
    plantel_participante_2 = "";
    var campo_p2_4 = "";
    comprobante_participante_2 = "";
    var campo_p2_5 = "";
    nombre_del_participante_3 = $('#nombre_del_participante_3').val();
    var campo_p3_1 = "";
    categoria_participante_3 = "";
    var campo_p3_2 = "";
    institucion_participante_3 = $('#institucion_participante_3').val();
    var campo_p3_3 = "";
    plantel_participante_3 = "";
    var campo_p3_4 = "";
    comprobante_participante_3 = "";
    var campo_p3_5 = "";

    /* VALIDANDO NOMBRE DEL PARTICIPANTE */
    if (nombre_del_participante_1 == "") {
        campo_p1_1 = "error";
    }
    if (nombre_del_participante_1 != "") { 
        if(/^[A-zÀ-ú0-9 ]*$/.test(nombre_del_participante_1) == false) {
            document.getElementById("error_2").style.display='block';
            campo_p1_1 = "error";
        } else { 
            document.getElementById("error_2").style.display='none';
            campo_p1_1 = "ok";
        }   
    }
    if (nombre_del_participante_2 == "") {
        campo_p2_1 = "error";
    }
    if (nombre_del_participante_2 != "") { 
        if(/^[A-zÀ-ú0-9 ]*$/.test(nombre_del_participante_2) == false) {
            document.getElementById("error_4").style.display='block';
            campo_p2_1 = "error";
        } else { 
            document.getElementById("error_4").style.display='none';
            campo_p2_1 = "ok";
        }   
    }
    if (nombre_del_participante_3 == "") {
        campo_p3_1 = "error";
    }
    if (nombre_del_participante_3 != "") { 
        if(/^[A-zÀ-ú0-9 ]*$/.test(nombre_del_participante_3) == false) {
            document.getElementById("error_6").style.display='block';
            campo_p3_1 = "error";
        } else { 
            document.getElementById("error_6").style.display='none';
            campo_p3_1 = "ok";
        }   
    }

    /* VALIDANDO RADIO BUTTON */
    if(document.getElementById('categoria_participante_1_A').checked) {
    categoria_participante_1 = $('#categoria_participante_1_A').val();
    campo_p1_2 = "ok";
    }
    if(document.getElementById('categoria_participante_1_B').checked) {
    categoria_participante_1 = $('#categoria_participante_1_B').val();
    campo_p1_2 = "ok";
    }
    if(document.getElementById('categoria_participante_1_C').checked) {
    categoria_participante_1 = $('#categoria_participante_1_C').val();
    campo_p1_2 = "ok";
    }
    if(document.getElementById('categoria_participante_2_A').checked) {
    categoria_participante_2 = $('#categoria_participante_2_A').val();
    campo_p2_2 = "ok";
    }
    if(document.getElementById('categoria_participante_2_B').checked) {
    categoria_participante_2 = $('#categoria_participante_2_B').val();
    campo_p2_2 = "ok";
    }
    if(document.getElementById('categoria_participante_2_C').checked) {
    categoria_participante_2 = $('#categoria_participante_2_C').val();
    campo_p2_2 = "ok";
    }
    if(document.getElementById('categoria_participante_3_A').checked) {
    categoria_participante_3 = $('#categoria_participante_3_A').val();
    campo_p3_2 = "ok";
    }
    if(document.getElementById('categoria_participante_3_B').checked) {
    categoria_participante_3 = $('#categoria_participante_3_B').val();
    campo_p3_2 = "ok";
    }
    if(document.getElementById('categoria_participante_3_C').checked) {
    categoria_participante_3 = $('#categoria_participante_3_C').val();
    campo_p3_2 = "ok";
    }

    /* COMPROBANDO QUE EXISTA VALOR DE INSTITUCION */
    if(institucion_participante_1 == "") {
    campo_p1_3 = "error";
    }
    if(institucion_participante_1 != "") {
    campo_p1_3 = "ok";
    }
    if(institucion_participante_2 == "") {
    campo_p2_3 = "error";
    }
    if(institucion_participante_2 != "") {
    campo_p2_3 = "ok";
    }
    if(institucion_participante_3 == "") {
    campo_p3_3 = "error";
    }
    if(institucion_participante_3 != "") {
    campo_p3_3 = "ok";
    }

    /* COMPROBANDO VALOR DE PLANTEL */
    if ($('#plantel_participante_1_A').val() != "") {
    plantel_participante_1 = $('#plantel_participante_1_A').val();
    campo_p1_4 = "ok";
    }
    if ($('#plantel_participante_1_B').val() != "") {
    plantel_participante_1 = $('#plantel_participante_1_B').val();
    campo_p1_4 = "ok";
    }
    if ($('#plantel_participante_1_C').val() != "") { 
        if(/^[A-zÀ-ú0-9 ]*$/.test($('#plantel_participante_1_C').val()) == false) {
            document.getElementById("error_3").style.display='block';
            campo_p1_4 = "error";
        } 
        else { 
            document.getElementById("error_3").style.display='none';
            plantel_participante_1 = $('#plantel_participante_1_C').val();
            campo_p1_4 = "ok";
        }
    }
    if ($('#plantel_participante_2_A').val() != "") {
    plantel_participante_2 = $('#plantel_participante_2_A').val();
    campo_p2_4 = "ok";
    }
    if ($('#plantel_participante_2_B').val() != "") {
    plantel_participante_2 = $('#plantel_participante_2_B').val();
    campo_p2_4 = "ok";
    }
    if ($('#plantel_participante_2_C').val() != "") { 
        if(/^[A-zÀ-ú0-9 ]*$/.test($('#plantel_participante_2_C').val()) == false) {
            document.getElementById("error_5").style.display='block';
            campo_p2_4 = "error";
        } 
        else { 
            document.getElementById("error_5").style.display='none';
            plantel_participante_2 = $('#plantel_participante_2_C').val();
            campo_p2_4 = "ok";
        }
    }
    if ($('#plantel_participante_3_A').val() != "") {
    plantel_participante_3 = $('#plantel_participante_3_A').val();
    campo_p3_4 = "ok";
    }
    if ($('#plantel_participante_3_B').val() != "") {
    plantel_participante_3 = $('#plantel_participante_3_B').val();
    campo_p3_4 = "ok";
    }
    if ($('#plantel_participante_3_C').val() != "") { 
        if(/^[A-zÀ-ú0-9 ]*$/.test($('#plantel_participante_3_C').val()) == false) {
            document.getElementById("error_7").style.display='block';
            campo_p3_4 = "error";
        } 
        else { 
            document.getElementById("error_7").style.display='none';
            plantel_participante_3 = $('#plantel_participante_3_C').val();
            campo_p3_4 = "ok";
        }
    }

    /* COMPROBANDO VARIABLE FILE */
   if ( $('#comprobante_participante_1').val() != "" ) {
    comprobante_participante_1 = $('#comprobante_participante_1').prop('files');
    campo_p1_5 = "ok";
   }
   if ( $('#comprobante_participante_2').val() != "" ) {
    comprobante_participante_2 = $('#comprobante_participante_2').prop('files');
    campo_p2_5 = "ok";
   }
   if ( $('#comprobante_participante_3').val() != "" ) {
    comprobante_participante_3 = $('#comprobante_participante_3').prop('files');
    campo_p3_5 = "ok";
   }



    /* COMPROBANDO QUE TODOS LOS CAMPOS ESTÉN LLENOS */
    if (campo_p1_1 == "ok" && campo_p1_2 == "ok" && campo_p1_3 == "ok" && campo_p1_4 == "ok" && campo_p1_5 == "ok"
    &&  campo_p2_1 == "ok" && campo_p2_2 == "ok" && campo_p2_3 == "ok" && campo_p2_4 == "ok" && campo_p2_5 == "ok"
    &&  campo_p3_1 == "ok" && campo_p3_2 == "ok" && campo_p3_3 == "ok" && campo_p3_4 == "ok" && campo_p3_5 == "ok") {
        document.getElementById('boton_siguiente_2').style.display = 'inline';
        document.getElementById('mensaje_2').style.display = 'none';
    } else { 
        document.getElementById('boton_siguiente_2').style.display = 'none'; 
        document.getElementById('mensaje_2').style.display = 'block';
    }
}

function checar_combinacion_1() {

    /* VARIABLES NECESARIAS PARA COMBINACION */
    var nivel = "";
    var institucion = "";

    /* RECOGIENDO VALOR DE NIVEL */
    if (document.getElementById('categoria_participante_1_A').checked) {
    nivel = document.getElementById('categoria_participante_1_A').value;
    }
    if (document.getElementById('categoria_participante_1_B').checked) {
    nivel = document.getElementById('categoria_participante_1_B').value;
    }
    if (document.getElementById('categoria_participante_1_C').checked) {
    nivel = document.getElementById('categoria_participante_1_C').value;
    }

    /* RECOGIENDO VALOR DE INSTITUCION */
    var institucion = document.getElementById("institucion_participante_1").value;

    /* COMBINACIONES Y RESULTADOS */
    if (nivel == "Nivel Medio Superior" && institucion == "IPN") {
        document.getElementById("div_plantel_participante_1_A").style.display='block'; 
        document.getElementById("div_plantel_participante_1_B").style.display='none';
        document.getElementById("div_plantel_participante_1_C").style.display='none';
    }
    if (nivel == "Nivel Medio Superior" && institucion == "Otro") {
        document.getElementById("div_plantel_participante_1_A").style.display='none'; 
        document.getElementById("div_plantel_participante_1_B").style.display='none';
        document.getElementById("div_plantel_participante_1_C").style.display='block';
    }
    if (nivel == "Nivel Superior" && institucion == "IPN") {
        document.getElementById("div_plantel_participante_1_A").style.display='none'; 
        document.getElementById("div_plantel_participante_1_B").style.display='block';
        document.getElementById("div_plantel_participante_1_C").style.display='none';
    }
    if (nivel == "Nivel Superior" && institucion == "Otro") {
        document.getElementById("div_plantel_participante_1_A").style.display='none'; 
        document.getElementById("div_plantel_participante_1_B").style.display='none';
        document.getElementById("div_plantel_participante_1_C").style.display='block';
    }
    if (nivel == "Posgrado" && institucion == "IPN") {
        document.getElementById("div_plantel_participante_1_A").style.display='none'; 
        document.getElementById("div_plantel_participante_1_B").style.display='none';
        document.getElementById("div_plantel_participante_1_C").style.display='block';
    }
    if (nivel == "Posgrado" && institucion == "Otro") {
        document.getElementById("div_plantel_participante_1_A").style.display='none'; 
        document.getElementById("div_plantel_participante_1_B").style.display='none';
        document.getElementById("div_plantel_participante_1_C").style.display='block';
    }
}

function checar_combinacion_2() {

    /* VARIABLES NECESARIAS PARA COMBINACION */
    var nivel = "";
    var institucion = "";

    /* RECOGIENDO VALOR DE NIVEL */
    if (document.getElementById('categoria_participante_2_A').checked) {
    nivel = document.getElementById('categoria_participante_2_A').value;
    }
    if (document.getElementById('categoria_participante_2_B').checked) {
    nivel = document.getElementById('categoria_participante_2_B').value;
    }
    if (document.getElementById('categoria_participante_2_C').checked) {
    nivel = document.getElementById('categoria_participante_2_C').value;
    }

    /* RECOGIENDO VALOR DE INSTITUCION */
    var institucion = document.getElementById("institucion_participante_2").value;

    /* COMBINACIONES Y RESULTADOS */
    if (nivel == "Nivel Medio Superior" && institucion == "IPN") {
        document.getElementById("div_plantel_participante_2_A").style.display='block'; 
        document.getElementById("div_plantel_participante_2_B").style.display='none';
        document.getElementById("div_plantel_participante_2_C").style.display='none';
    }
    if (nivel == "Nivel Medio Superior" && institucion == "Otro") {
        document.getElementById("div_plantel_participante_2_A").style.display='none'; 
        document.getElementById("div_plantel_participante_2_B").style.display='none';
        document.getElementById("div_plantel_participante_2_C").style.display='block';
    }
    if (nivel == "Nivel Superior" && institucion == "IPN") {
        document.getElementById("div_plantel_participante_2_A").style.display='none'; 
        document.getElementById("div_plantel_participante_2_B").style.display='block';
        document.getElementById("div_plantel_participante_2_C").style.display='none';
    }
    if (nivel == "Nivel Superior" && institucion == "Otro") {
        document.getElementById("div_plantel_participante_2_A").style.display='none'; 
        document.getElementById("div_plantel_participante_2_B").style.display='none';
        document.getElementById("div_plantel_participante_2_C").style.display='block';
    }
    if (nivel == "Posgrado" && institucion == "IPN") {
        document.getElementById("div_plantel_participante_2_A").style.display='none'; 
        document.getElementById("div_plantel_participante_2_B").style.display='none';
        document.getElementById("div_plantel_participante_2_C").style.display='block';
    }
    if (nivel == "Posgrado" && institucion == "Otro") {
        document.getElementById("div_plantel_participante_2_A").style.display='none'; 
        document.getElementById("div_plantel_participante_2_B").style.display='none';
        document.getElementById("div_plantel_participante_2_C").style.display='block';
    }
}

function checar_combinacion_3() {

    /* VARIABLES NECESARIAS PARA COMBINACION */
    var nivel = "";
    var institucion = "";

    /* RECOGIENDO VALOR DE NIVEL */
    if (document.getElementById('categoria_participante_3_A').checked) {
    nivel = document.getElementById('categoria_participante_3_A').value;
    }
    if (document.getElementById('categoria_participante_3_B').checked) {
    nivel = document.getElementById('categoria_participante_3_B').value;
    }
    if (document.getElementById('categoria_participante_3_C').checked) {
    nivel = document.getElementById('categoria_participante_3_C').value;
    }

    /* RECOGIENDO VALOR DE INSTITUCION */
    var institucion = document.getElementById("institucion_participante_3").value;

    /* COMBINACIONES Y RESULTADOS */
    if (nivel == "Nivel Medio Superior" && institucion == "IPN") {
        document.getElementById("div_plantel_participante_3_A").style.display='block'; 
        document.getElementById("div_plantel_participante_3_B").style.display='none';
        document.getElementById("div_plantel_participante_3_C").style.display='none';
    }
    if (nivel == "Nivel Medio Superior" && institucion == "Otro") {
        document.getElementById("div_plantel_participante_3_A").style.display='none'; 
        document.getElementById("div_plantel_participante_3_B").style.display='none';
        document.getElementById("div_plantel_participante_3_C").style.display='block';
    }
    if (nivel == "Nivel Superior" && institucion == "IPN") {
        document.getElementById("div_plantel_participante_3_A").style.display='none'; 
        document.getElementById("div_plantel_participante_3_B").style.display='block';
        document.getElementById("div_plantel_participante_3_C").style.display='none';
    }
    if (nivel == "Nivel Superior" && institucion == "Otro") {
        document.getElementById("div_plantel_participante_3_A").style.display='none'; 
        document.getElementById("div_plantel_participante_3_B").style.display='none';
        document.getElementById("div_plantel_participante_3_C").style.display='block';
    }
    if (nivel == "Posgrado" && institucion == "IPN") {
        document.getElementById("div_plantel_participante_3_A").style.display='none'; 
        document.getElementById("div_plantel_participante_3_B").style.display='none';
        document.getElementById("div_plantel_participante_3_C").style.display='block';
    }
    if (nivel == "Posgrado" && institucion == "Otro") {
        document.getElementById("div_plantel_participante_3_A").style.display='none'; 
        document.getElementById("div_plantel_participante_3_B").style.display='none';
        document.getElementById("div_plantel_participante_3_C").style.display='block';
    }
}

function validar_combo_3() {
    resumen = $('#resumen').val();
    status = "";
    if (resumen != "") { 
        if(/^[A-zÀ-ú0-9.,\n ]*$/.test(resumen) == false) {
            document.getElementById("error_8").style.display='block';
            status = "error";
        } 
        else { 
            document.getElementById("error_8").style.display='none';
            status = "ok"; 
        }
    }

    if (status == "ok") {
        document.getElementById('boton_siguiente_3').style.display = 'inline';
        document.getElementById('mensaje_3').style.display = 'none';
    } else { 
        document.getElementById('boton_siguiente_3').style.display = 'none'; 
        document.getElementById('mensaje_3').style.display = 'block';
    }

}


function validar_combo_4() {
    antecedentes = $('#antecedentes').val();
    justificacion = $('#justificacion').val();
    metodologia = $('#metodologia').val();
    propuesta = $('#propuesta').val();
    resultados = $('#resultados').val();
    conclusiones = $('#conclusiones').val();
    referencias = "";
    referencia_1 = "";
    referencia_2 = "";
    referencia_3 = "";
    referencia_4 = "";
    referencia_5 = "";
    referencia_6 = "";
    referencia_7 = "";
    referencia_8 = "";
    referencia_9 = "";
    referencia_10 = "";
    archivo_proyecto = "";
    anexo = "";
    var campo_1 = "";
    var campo_2 = "";
    var campo_3 = "";
    var campo_4 = "";
    var campo_5 = "";
    var campo_6 = "";
    var campo_7 = "";
    var campo_8 = "";

    if (antecedentes != "") { if(/^[A-zÀ-ú0-9.,\n ]*$/.test(antecedentes) == false) {
            document.getElementById("error_9").style.display='block';
            campo_1 = "error";
    } 
    else { document.getElementById("error_9").style.display='none';
    campo_1 = "ok"; }
    }
    if (justificacion != "") { if(/^[A-zÀ-ú0-9.,\n ]*$/.test(justificacion) == false) {
            document.getElementById("error_10").style.display='block';
            campo_2 = "error";
    } 
    else { document.getElementById("error_10").style.display='none';
    campo_2 = "ok"; }
    }
    if (metodologia != "") { if(/^[A-zÀ-ú0-9.,\n ]*$/.test(metodologia) == false) {
            document.getElementById("error_11").style.display='block';
            campo_3 = "error";
    } 
    else { document.getElementById("error_11").style.display='none';
    campo_3 = "ok"; }
    }
    if (propuesta != "") { if(/^[A-zÀ-ú0-9.,\n ]*$/.test(propuesta) == false) {
            document.getElementById("error_12").style.display='block';
            campo_4 = "error";
    } 
    else { document.getElementById("error_12").style.display='none';
    campo_4 = "ok"; }
    }
    if (resultados != "") { if(/^[A-zÀ-ú0-9.,\n ]*$/.test(resultados) == false) {
            document.getElementById("error_13").style.display='block';
            campo_5 = "error";
    } 
    else { document.getElementById("error_13").style.display='none';
    campo_5 = "ok"; }
    }
    if (conclusiones != "") { if(/^[A-zÀ-ú0-9.,\n ]*$/.test(conclusiones) == false) {
            document.getElementById("error_14").style.display='block';
            campo_6 = "error";
    } 
    else { document.getElementById("error_14").style.display='none';
    campo_6 = "ok"; }
    }

    /* OBTENIENDO BIBLIOGRAFIAS */
    if ( $('#referencia_1').val() !== "" ) {
	 referencia_1 = $('#referencia_1').val();
     referencias = referencia_1;
        if ( $('#referencia_2').val() !== "" ) {
        	referencia_2 = " , " + $('#referencia_2').val();
        	referencias = referencia_1 + referencia_2;
        }
        if ( $('#referencia_2').val() !== "" && $('#referencia_3').val() !== "" ) {
        	referencia_2 = " , " + $('#referencia_2').val();
        	referencia_3 = " , " + $('#referencia_3').val();
        	referencias = referencia_1 + referencia_2 + referencia_3;
        }
        if ( $('#referencia_2').val() !== "" && $('#referencia_3').val() !== "" && $('#referencia_4').val() !== "") {
        	referencia_2 = " , " + $('#referencia_2').val();
        	referencia_3 = " , " + $('#referencia_3').val();
        	referencia_4 = " , " + $('#referencia_4').val();
        	referencias = referencia_1 + referencia_2 + referencia_3 + referencia_4;
        }
        if ( $('#referencia_2').val() !== "" && $('#referencia_3').val() !== "" && $('#referencia_4').val() !== "" &&
        	 $('#referencia_5').val() !== "" ) {
        	referencia_2 = " , " + $('#referencia_2').val();
        	referencia_3 = " , " + $('#referencia_3').val();
        	referencia_4 = " , " + $('#referencia_4').val();
        	referencia_5 = " , " + $('#referencia_5').val();
        	referencias = referencia_1 + referencia_2 + referencia_3 + referencia_4 + referencia_5;
        }
        if ( $('#referencia_2').val() !== "" && $('#referencia_3').val() !== "" && $('#referencia_4').val() !== "" &&
        	 $('#referencia_5').val() !== "" && $('#referencia_6').val() !== "") {
        	referencia_2 = " , " + $('#referencia_2').val();
        	referencia_3 = " , " + $('#referencia_3').val();
        	referencia_4 = " , " + $('#referencia_4').val();
        	referencia_5 = " , " + $('#referencia_5').val();
        	referencia_6 = " , " + $('#referencia_6').val();
        	referencias = referencia_1 + referencia_2 + referencia_3 + referencia_4 + referencia_5 + referencia_6;
        }
        if ( $('#referencia_2').val() !== "" && $('#referencia_3').val() !== "" && $('#referencia_4').val() !== "" &&
        	 $('#referencia_5').val() !== "" && $('#referencia_6').val() !== "" && $('#referencia_7').val() !== "") {
        	referencia_2 = " , " + $('#referencia_2').val();
        	referencia_3 = " , " + $('#referencia_3').val();
        	referencia_4 = " , " + $('#referencia_4').val();
        	referencia_5 = " , " + $('#referencia_5').val();
        	referencia_6 = " , " + $('#referencia_6').val();
        	referencia_7 = " , " + $('#referencia_7').val();
        	referencias = referencia_1 + referencia_2 + referencia_3 + referencia_4 + referencia_5 + referencia_6 + referencia_7;
        }
        if ( $('#referencia_2').val() !== "" && $('#referencia_3').val() !== "" && $('#referencia_4').val() !== "" &&
        	 $('#referencia_5').val() !== "" && $('#referencia_6').val() !== "" && $('#referencia_7').val() !== "" &&
        	 $('#referencia_8').val() !== "") {
        	referencia_2 = " , " + $('#referencia_2').val();
        	referencia_3 = " , " + $('#referencia_3').val();
        	referencia_4 = " , " + $('#referencia_4').val();
        	referencia_5 = " , " + $('#referencia_5').val();
        	referencia_6 = " , " + $('#referencia_6').val();
        	referencia_7 = " , " + $('#referencia_7').val();
        	referencia_8 = " , " + $('#referencia_8').val();
        	referencias = referencia_1 + referencia_2 + referencia_3 + referencia_4 + referencia_5 + 
        	referencia_6 + referencia_7 + referencia_8;
        }
        if ( $('#referencia_2').val() !== "" && $('#referencia_3').val() !== "" && $('#referencia_4').val() !== "" &&
        	 $('#referencia_5').val() !== "" && $('#referencia_6').val() !== "" && $('#referencia_7').val() !== "" &&
        	 $('#referencia_8').val() !== "" && $('#referencia_9').val() !== "") {
        	referencia_2 = " , " + $('#referencia_2').val();
        	referencia_3 = " , " + $('#referencia_3').val();
        	referencia_4 = " , " + $('#referencia_4').val();
        	referencia_5 = " , " + $('#referencia_5').val();
        	referencia_6 = " , " + $('#referencia_6').val();
        	referencia_7 = " , " + $('#referencia_7').val();
        	referencia_8 = " , " + $('#referencia_8').val();
        	referencia_9 = " , " + $('#referencia_9').val();
        	referencias = referencia_1 + referencia_2 + referencia_3 + referencia_4 + referencia_5 + 
        	referencia_6 + referencia_7 + referencia_8 + referencia_9;
        }
        if ( $('#referencia_2').val() !== "" && $('#referencia_3').val() !== "" && $('#referencia_4').val() !== "" &&
        	 $('#referencia_5').val() !== "" && $('#referencia_6').val() !== "" && $('#referencia_7').val() !== "" &&
        	 $('#referencia_8').val() !== "" && $('#referencia_9').val() !== "" && $('#referencia_10').val() !== "") {
        	referencia_2 = " , " + $('#referencia_2').val();
        	referencia_3 = " , " + $('#referencia_3').val();
        	referencia_4 = " , " + $('#referencia_4').val();
        	referencia_5 = " , " + $('#referencia_5').val();
        	referencia_6 = " , " + $('#referencia_6').val();
        	referencia_7 = " , " + $('#referencia_7').val();
        	referencia_8 = " , " + $('#referencia_8').val();
        	referencia_9 = " , " + $('#referencia_9').val();
        	referencia_10 = " , " + $('#referencia_10').val();
        	referencias = referencia_1 + referencia_2 + referencia_3 + referencia_4 + referencia_5 + 
        	referencia_6 + referencia_7 + referencia_8 + referencia_9 + referencia_10;
        }
        
    campo_7 = "ok";

    }


    /* OBTENIENDO DOCUMENTO */
    if ( $('#archivo_proyecto').val() != "" ) {
    archivo_proyecto = $('#archivo_proyecto').prop('files');
    campo_8 = "ok";
   }


    if (campo_1 == "ok" && campo_2 == "ok" && campo_3 == "ok" && campo_4 == "ok" 
     && campo_5 == "ok" && campo_6 == "ok" && campo_7 == "ok" && campo_8 == "ok") {
        document.getElementById('boton_siguiente_4').style.display = 'inline';
        document.getElementById('mensaje_4').style.display = 'none';
    } else { 
        document.getElementById('boton_siguiente_4').style.display = 'none'; 
        document.getElementById('mensaje_4').style.display = 'block';
    }

}

/* BOTONES DE NAVEGACION */
function siguiente_1() {
    document.getElementById('contenedor_1').style.display = 'none';
    document.getElementById('contenedor_2').style.display = 'block';
}
function siguiente_2() {
    document.getElementById('contenedor_2').style.display = 'none';
    document.getElementById('contenedor_3').style.display = 'block';
}
function siguiente_3() {
    document.getElementById('contenedor_3').style.display = 'none';
    document.getElementById('contenedor_4').style.display = 'block';
}
function siguiente_4() {
    document.getElementById('contenedor_4').style.display = 'none';
    document.getElementById('contenedor_5').style.display = 'block';
}


function anterior_1() {
    document.getElementById('contenedor_1').style.display = 'block';
    document.getElementById('contenedor_2').style.display = 'none';
}
function anterior_2() {
    document.getElementById('contenedor_2').style.display = 'block';
    document.getElementById('contenedor_3').style.display = 'none';
}
function anterior_3() {
    document.getElementById('contenedor_3').style.display = 'block';
    document.getElementById('contenedor_4').style.display = 'none';
}
function anterior_4() {
    document.getElementById('contenedor_4').style.display = 'block';
    document.getElementById('contenedor_5').style.display = 'none';
}

var bibliografias = 1;
var limite = 10;
function addInput(divName){
    if (bibliografias == limite)  {
    alert("Has llegando al limite de referencias.");
    }
    else {
        var newdiv = document.createElement('div');
        newdiv.innerHTML = "Referencia Bibliográfica " + (bibliografias + 1) + 
        ": <b>(en formato APA)</b> <input type='text' size='45' id='referencia_" + (bibliografias+1) + "'>";
        document.getElementById(divName).appendChild(newdiv);
        bibliografias++;
    }
}

function registrar() {
    anexo = "Sin anexo";
    if ( $('#url').val() != "" ) {
    anexo = $('#url').val();
   }




    var fd = new FormData();
    fd.append("archivo_proyecto", archivo_proyecto[0]);
    
    fd.append("comprobante_participante_1", comprobante_participante_1[0]); 
    fd.append("comprobante_participante_2", comprobante_participante_2[0]); 
    fd.append("comprobante_participante_3", comprobante_participante_3[0]);


    fd.append("nombre_del_proyecto",nombre_del_proyecto);
    fd.append("eje_tematico",eje_tematico);
    fd.append("nombre_del_participante_1",nombre_del_participante_1);
    fd.append("categoria_participante_1", categoria_participante_1);
    fd.append("institucion_participante_1", institucion_participante_1);
    fd.append("plantel_participante_1", plantel_participante_1);
    fd.append("nombre_del_participante_2", nombre_del_participante_2);
    fd.append("categoria_participante_2", categoria_participante_2);
    fd.append("institucion_participante_2", institucion_participante_2); 
    fd.append("plantel_participante_2", plantel_participante_2);
    fd.append("nombre_del_participante_3", nombre_del_participante_3);
    fd.append("categoria_participante_3", categoria_participante_3);
    fd.append("institucion_participante_3", institucion_participante_3);
    fd.append("plantel_participante_3",plantel_participante_3);
    fd.append("comprobante_participante_3", comprobante_participante_3);
    fd.append("resumen", resumen);
    fd.append("antecedentes", antecedentes);
    fd.append("justificacion", justificacion);
    fd.append("metodologia", metodologia);
    fd.append("propuesta", propuesta);
    fd.append("resultados", resultados);
    fd.append("conclusiones", conclusiones);
    fd.append("referencias", referencias);
    fd.append("archivo_proyecto", $('#archivo_proyecto').val());
    fd.append("anexo", anexo);

document.getElementById('anexo').style.display = 'none';
    document.getElementById('boton_registrar').style.display = 'none';
    document.getElementById('boton_inicio').style.display = 'block'; 
    document.getElementById('boton_anterior_4').style.display = 'none';  
    document.getElementById('datos').innerHTML = "<div id='centrar-gracias'> Gracias por registrarte.</div>"




    $.ajax({
        url: '/form-uno',
        data: fd,
        contentType: false,
        processData: false,
        type: 'POST',
        success: function(data){
            console.log(data);
        }
    });

}
