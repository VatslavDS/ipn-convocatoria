{% extends 'layout.swig' %}
{% block content %}

<style type="text/css">
	* {
    box-sizing: border-box;
	}

	body {
		font-family: arial;
		padding: 0;
		margin: 0;
	}

	div#header {
		width: 80%;
		height: 100px;
		margin: 0 auto;
		text-align: center;
	}

	div#title {
		width: 80%;
		color: #666;
		margin: 0 auto;
		text-align: center;
	}

	div.subtitle {
		width: 100%;
		background-color: #ddd;
		margin: 0 auto;
		font-size: 1.2em;
		font-weight: bold;
		padding: 8px;
		border-top: 1px solid black;
		border-bottom: 1px solid black;
	}

	div#formulario {
		width: 930px;
		margin: 10px auto;
		border: 1px solid black;
		border-top: 0;
		
	}

	div.campos {
		width: 80%;
		margin: 10px auto;
		padding: 10px;
		line-height: 2em;
	}

	div#institucion-p1-nms, #institucion-p1-ns, #institucion-p1-p,
		#institucion-p2-nms, #institucion-p2-ns, #institucion-p2-p,
		#institucion-p3-nms, #institucion-p3-ns, #institucion-p3-p	{
		display: none;
	}

	div#plantel-p1-nms-ipn, #plantel-p1-ns-ipn,
		#plantel-p2-nms-ipn, #plantel-p2-ns-ipn,
		#plantel-p3-nms-ipn, #plantel-p3-ns-ipn {
		display: none;
	}

	div#plantel1-otro, #plantel2-otro, #plantel3-otro {
		display: none;
	}

	span#header_logo1 {
		float: left;
		width: 30%;
		height: 100px;
		background-color: #F99;
	}

	span#header_logo2 {
		float: right;
		width: 30%;
		height: 100px;
		background-color: #F99;
	}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script>

function check_p1institucion() {
	if (document.getElementById('p1-nms').checked) {
  	nivel = document.getElementById('p1-nms').value;
	}
	if (document.getElementById('p1-ns').checked) {
  	nivel = document.getElementById('p1-ns').value;
	}
	if (document.getElementById('p1-p').checked) {
  	nivel = document.getElementById('p1-p').value;
	}

    var institucion = document.getElementById("institucion-p1").value;

    if (nivel == "Nivel Medio Superior" && institucion == "IPN") {
    	document.getElementById("plantel-p1-nms-ipn").style.display='block'; 
    	document.getElementById("plantel-p1-ns-ipn").style.display='none';
    	document.getElementById("plantel1-otro").style.display='none';
    }
    if (nivel == "Nivel Medio Superior" && institucion == "Otro") {
    	document.getElementById("plantel-p1-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p1-ns-ipn").style.display='none';
    	document.getElementById("plantel1-otro").style.display='block';
    }

    if (nivel == "Nivel Superior" && institucion == "IPN") {
    	document.getElementById("plantel-p1-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p1-ns-ipn").style.display='block';
    	document.getElementById("plantel1-otro").style.display='none';
    }
    if (nivel == "Nivel Superior" && institucion == "Otro") {
    	document.getElementById("plantel-p1-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p1-ns-ipn").style.display='none';
    	document.getElementById("plantel1-otro").style.display='block';
    }
    
    if (nivel == "Posgrado" && institucion == "IPN") {
    	document.getElementById("plantel-p1-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p1-ns-ipn").style.display='none';
    	document.getElementById("plantel1-otro").style.display='block';
    }
    if (nivel == "Posgrado" && institucion == "Otro") {
    	document.getElementById("plantel-p1-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p1-ns-ipn").style.display='none';
    	document.getElementById("plantel1-otro").style.display='block';
    }
}

function check_p2institucion() {
	if (document.getElementById('p2-nms').checked) {
  	nivel = document.getElementById('p2-nms').value;
	}
	if (document.getElementById('p2-ns').checked) {
  	nivel = document.getElementById('p2-ns').value;
	}
	if (document.getElementById('p2-p').checked) {
  	nivel = document.getElementById('p2-p').value;
	}

    var institucion = document.getElementById("institucion-p2").value;

    if (nivel == "Nivel Medio Superior" && institucion == "IPN") {
    	document.getElementById("plantel-p2-nms-ipn").style.display='block'; 
    	document.getElementById("plantel-p2-ns-ipn").style.display='none';
    	document.getElementById("plantel2-otro").style.display='none';
    }
    if (nivel == "Nivel Medio Superior" && institucion == "Otro") {
    	document.getElementById("plantel-p2-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p2-ns-ipn").style.display='none';
    	document.getElementById("plantel2-otro").style.display='block';
    }

    if (nivel == "Nivel Superior" && institucion == "IPN") {
    	document.getElementById("plantel-p2-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p2-ns-ipn").style.display='block';
    	document.getElementById("plantel2-otro").style.display='none';
    }
    if (nivel == "Nivel Superior" && institucion == "Otro") {
    	document.getElementById("plantel-p2-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p2-ns-ipn").style.display='none';
    	document.getElementById("plantel2-otro").style.display='block';
    }
    
    if (nivel == "Posgrado" && institucion == "IPN") {
    	document.getElementById("plantel-p2-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p2-ns-ipn").style.display='none';
    	document.getElementById("plantel2-otro").style.display='block';
    }
    if (nivel == "Posgrado" && institucion == "Otro") {
    	document.getElementById("plantel-p2-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p2-ns-ipn").style.display='none';
    	document.getElementById("plantel2-otro").style.display='block';
    }
}

function check_p3institucion() {
	if (document.getElementById('p3-nms').checked) {
  	nivel = document.getElementById('p3-nms').value;
	}
	if (document.getElementById('p3-ns').checked) {
  	nivel = document.getElementById('p3-ns').value;
	}
	if (document.getElementById('p3-p').checked) {
  	nivel = document.getElementById('p3-p').value;
	}

    var institucion = document.getElementById("institucion-p3").value;

    if (nivel == "Nivel Medio Superior" && institucion == "IPN") {
    	document.getElementById("plantel-p3-nms-ipn").style.display='block'; 
    	document.getElementById("plantel-p3-ns-ipn").style.display='none';
    	document.getElementById("plantel3-otro").style.display='none';
    }
    if (nivel == "Nivel Medio Superior" && institucion == "Otro") {
    	document.getElementById("plantel-p3-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p3-ns-ipn").style.display='none';
    	document.getElementById("plantel3-otro").style.display='block';
    }

    if (nivel == "Nivel Superior" && institucion == "IPN") {
    	document.getElementById("plantel-p3-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p3-ns-ipn").style.display='block';
    	document.getElementById("plantel3-otro").style.display='none';
    }
    if (nivel == "Nivel Superior" && institucion == "Otro") {
    	document.getElementById("plantel-p3-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p3-ns-ipn").style.display='none';
    	document.getElementById("plantel3-otro").style.display='block';
    }
    
    if (nivel == "Posgrado" && institucion == "IPN") {
    	document.getElementById("plantel-p3-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p3-ns-ipn").style.display='none';
    	document.getElementById("plantel3-otro").style.display='block';
    }
    if (nivel == "Posgrado" && institucion == "Otro") {
    	document.getElementById("plantel-p3-nms-ipn").style.display='none'; 
    	document.getElementById("plantel-p3-ns-ipn").style.display='none';
    	document.getElementById("plantel3-otro").style.display='block';
    }
}



</script>
</head>
<body>

<div id="header">
	<span id="header_logo1">Logo 1</span>
	<span id="header_logo2">Logo 2</span>
</div>

<div id="title">
	<h1>FICHA TÉCNICA</h1>
	<h3>REGISTRO DE PROYECTOS</h3>
	<h4>Concurso Estudiantil Politécnico</h4>
</div>

<form action="/form-uno", method="POST" enctype="multipart/form-data">
<div id="formulario">

<div class="subtitle">
	1. Datos del Proyecto	
</div>
<div class="campos">
<b>Nombre del Proyecto:</b><br>
<input type="text" name="nombre_proyecto" class="input_text" size="80" required/><br>

<b>Eje Temático:</b><br>
<select name="eje_tematico" required>
	<option value=""></option>
	<option value="Desarrollo Tecnologico">Desarrollo Tecnológico</option>
	<option value="Desarrollo Sostenible">Desarrollo Sostenible</option>
	<option value="Salud">Salud</option>
	<option value="Educacion">Educación</option>
	<option value="Ciencias Sociales y Administrativas">Ciencias Sociales y Administrativas</option>
</select><br>
</div>

<div class="subtitle">
	2. Datos de los Participantes	
</div>

<div class="campos">

<b>Nombre del Participante 1:</b><br>
<input type="text" name="nombre_del_participante1" class="input_text" size="80" required/><br>

<b>Categoría:</b><br>
Nivel Medio Superior <input type="radio" name="categoria_participante1" id="p1-nms" value="Nivel Medio Superior" />
Nivel Superior <input type="radio" name="categoria_participante1" id="p1-ns" value="Nivel Superior" />
Posgrado <input type="radio" name="categoria_participante1" id="p1-p" value="Posgrado" /><br>


<b>Institución:</b><br>
<select id="institucion-p1" name="institucion_participante1" onchange="check_p1institucion()">
  <option value="">
  <option value="IPN">IPN
  <option value="Otro">Otro
</select><br>

<div id="plantel-p1-nms-ipn">
<b>Plantel:</b><br>
<select id="plantel-p1-nms-ipn" name="plantel_participante1">
	<option value=""></option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 01 'GONZALO VÁZQUEZ VELA'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 01 "GONZALO VÁZQUEZ VELA"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 02 'MIGUEL BERNARD'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 02 "MIGUEL BERNARD"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 03 'ESTANISLAO RAMÍREZ RUÍZ'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 03 "ESTANISLAO RAMÍREZ RUÍZ"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 04 'LÁZARO CÁRDENAS'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 04 "LÁZARO CÁRDENAS"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 05 'BENITO JUÁREZ'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 05 "BENITO JUÁREZ"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 06 'MIGUEL OTHÓN DE MENDIZABAL'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 06 "MIGUEL OTHÓN DE MENDIZABAL"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 07 'CUAUHTÉMOC'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 07 "CUAUHTÉMOC"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 08 'NARCISSO BASSOLS'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 08 "NARCISSO BASSOLS"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 09 'JUAN DE DIOS BATÍZ'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 09 "JUAN DE DIOS BATÍZ"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 10 'CARLOS VALLEJO MARQUÉZ'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 10 "CARLOS VALLEJO MARQUÉZ"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 11 'WILFRIDO MASSIEU'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 11 "WILFRIDO MASSIEU"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 12 'JOSÉ MARIA MORELOS Y PAVÓN'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 12 "JOSÉ MARIA MORELOS Y PAVÓN"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 13 'RICARDO FLORES MAGÓN'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 13 "RICARDO FLORES MAGÓN"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 14 'LUIS ENRIQUE ERRO'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 14 "LUIS ENRIQUE ERRO"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 15 'DIÓDORO ANTÚNEZ ECHEGARAY'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 15 "DIÓDORO ANTÚNEZ ECHEGARAY"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 16 'HIDALGO'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 16 "HIDALGO"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 17 'LEÓN GUANAJUATO'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 17 "LEÓN GUANAJUATO"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 18 'ZACATECAS'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 18 "ZACATECAS"</option>
	<option value="CENTRO DE ESTUDIOS TECNOLÓGICOS NO. 01 'WALTER CROSS BUCHANAN'">
	CENTRO DE ESTUDIOS TECNOLÓGICOS NO. 01 "WALTER CROSS BUCHANAN"</option>
</select>
</div>

<div id="plantel-p1-ns-ipn">
<b>Plantel:</b><br>
<select name="plantel_participante1">
	<option value=""></option>
	<option value="CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD - UNIDAD MILPA ALTA (CICS - UMA)">
	CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD - UNIDAD MILPA ALTA (CICS - UMA)</option>
	<option value="CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD - UNIDAD SANTO TOMÁS (CICS - UST)">
	CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD - UNIDAD SANTO TOMÁS (CICS - UST)</option>
	<option value="ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS ENCB">
	ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS ENCB</option>
	<option value="ESCUELA NACIONAL DE MEDICINA Y HOMEOPATÍA ENMYH">
	ESCUELA NACIONAL DE MEDICINA Y HOMEOPATÍA ENMYH</option>
	<option value="ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN UNIDAD SANTO TOMÁS">
	ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN UNIDAD SANTO TOMÁS</option>
	<option value="ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN UNIDAD TEPEPAN">
	ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN UNIDAD TEPEPAN</option>
	<option value="ESCUELA SUPERIOR DE CÓMPUTO ESCOM">
	ESCUELA SUPERIOR DE CÓMPUTO ESCOM</option>
	<option value="ESCUELA SUPERIOR DE ECONOMÍA ESE">
	ESCUELA SUPERIOR DE ECONOMÍA ESE</option>
	<option value="ESCUELA SUPERIOR DE ENFERMERÍA Y OBSTETRICIA ESEO">
	ESCUELA SUPERIOR DE ENFERMERÍA Y OBSTETRICIA ESEO</option>
	<option value="ESCUELA SUPERIOR DE FÍSICA MATEMÁTICAS ESFM">
	ESCUELA SUPERIOR DE FÍSICA MATEMÁTICAS ESFM</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO">
	ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN">
	ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN">
	ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO">
	ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS ESIQIE">
	ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS ESIQIE</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA TEXTIL ESIT">
	ESCUELA SUPERIOR DE INGENIERÍA TEXTIL ESIT</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO">
	ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN">
	ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO">
	ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO</option>
	<option value="ESCUELA SUPERIOR DE MEDICINA ESM">
	ESCUELA SUPERIOR DE MEDICINA ESM</option>
	<option value="ESCUELA SUPERIOR DE TURISMO EST">
	ESCUELA SUPERIOR DE TURISMO EST</option>
	<option value="UNIDAD PROFESIONAL INTERDISCIPLINARIA DE BIOTECNOLOGÍA UPIBI">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA DE BIOTECNOLOGÍA UPIBI</option>
	<option value="UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS GUANAJUATO (UPIIG)">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS GUANAJUATO (UPIIG)</option>
	<option value="UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS ZACATECAS (UPIIZ)">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS ZACATECAS (UPIIZ)</option>
	<option value="NIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y TECNOLOGÍAS AVANZADAS UPIITA">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y TECNOLOGÍAS AVANZADAS UPIITA</option>
	<option value="UNIDAD PROFESIONAL INTERDISCIPLINARIA Y CIENCIAS SOCIALES Y ADMIBNISTRATIVAS UPIICSA">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA Y CIENCIAS SOCIALES Y ADMIBNISTRATIVAS UPIICSA</option>
	</select>
</div>

<div id="plantel1-otro">
<b>Introduce tu escuela:</b><br>
<input type="text" name="plantel_participante1" class="input_text" size="80" required/><br>
</div>

Comprobante de Inscripción del Participante 1:<br>
<input type="file" name="comprobante1" required><br><br>


<b>Nombre del Participante 2:</b><br>
<input type="text" name="nombre_del_participante2" class="input_text" size="80" required/><br>

<b>Categoría:</b><br>
Nivel Medio Superior <input type="radio" name="categoria_participante2" id="p2-nms" value="Nivel Medio Superior" />
Nivel Superior <input type="radio" name="categoria_participante2" id="p2-ns" value="Nivel Superior" />
Posgrado <input type="radio" name="categoria_participante2" id="p2-p" value="Posgrado" /><br>

<b>Institución:</b><br>
<select id="institucion-p2" name="institucion_participante2" onchange="check_p2institucion()">
  <option value="">
  <option value="IPN">IPN
  <option value="Otro">Otro
</select><br>

<div id="plantel-p2-nms-ipn">
<b>Plantel:</b><br>
<select id="plantel-p2-nms-ipn" name="plantel_participante2">
	<option value=""></option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 01 'GONZALO VÁZQUEZ VELA'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 01 "GONZALO VÁZQUEZ VELA"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 02 'MIGUEL BERNARD'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 02 "MIGUEL BERNARD"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 03 'ESTANISLAO RAMÍREZ RUÍZ'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 03 "ESTANISLAO RAMÍREZ RUÍZ"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 04 'LÁZARO CÁRDENAS'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 04 "LÁZARO CÁRDENAS"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 05 'BENITO JUÁREZ'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 05 "BENITO JUÁREZ"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 06 'MIGUEL OTHÓN DE MENDIZABAL'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 06 "MIGUEL OTHÓN DE MENDIZABAL"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 07 'CUAUHTÉMOC'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 07 "CUAUHTÉMOC"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 08 'NARCISSO BASSOLS'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 08 "NARCISSO BASSOLS"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 09 'JUAN DE DIOS BATÍZ'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 09 "JUAN DE DIOS BATÍZ"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 10 'CARLOS VALLEJO MARQUÉZ'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 10 "CARLOS VALLEJO MARQUÉZ"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 11 'WILFRIDO MASSIEU'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 11 "WILFRIDO MASSIEU"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 12 'JOSÉ MARIA MORELOS Y PAVÓN'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 12 "JOSÉ MARIA MORELOS Y PAVÓN"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 13 'RICARDO FLORES MAGÓN'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 13 "RICARDO FLORES MAGÓN"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 14 'LUIS ENRIQUE ERRO'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 14 "LUIS ENRIQUE ERRO"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 15 'DIÓDORO ANTÚNEZ ECHEGARAY'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 15 "DIÓDORO ANTÚNEZ ECHEGARAY"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 16 'HIDALGO'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 16 "HIDALGO"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 17 'LEÓN GUANAJUATO'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 17 "LEÓN GUANAJUATO"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 18 'ZACATECAS'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 18 "ZACATECAS"</option>
	<option value="CENTRO DE ESTUDIOS TECNOLÓGICOS NO. 01 'WALTER CROSS BUCHANAN'">
	CENTRO DE ESTUDIOS TECNOLÓGICOS NO. 01 "WALTER CROSS BUCHANAN"</option>
</select>
</div>

<div id="plantel-p2-ns-ipn">
<b>Plantel:</b><br>
<select name="plantel_participante2">
	<option value=""></option>
	<option value="CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD - UNIDAD MILPA ALTA (CICS - UMA)">
	CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD - UNIDAD MILPA ALTA (CICS - UMA)</option>
	<option value="CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD - UNIDAD SANTO TOMÁS (CICS - UST)">
	CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD - UNIDAD SANTO TOMÁS (CICS - UST)</option>
	<option value="ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS ENCB">
	ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS ENCB</option>
	<option value="ESCUELA NACIONAL DE MEDICINA Y HOMEOPATÍA ENMYH">
	ESCUELA NACIONAL DE MEDICINA Y HOMEOPATÍA ENMYH</option>
	<option value="ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN UNIDAD SANTO TOMÁS">
	ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN UNIDAD SANTO TOMÁS</option>
	<option value="ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN UNIDAD TEPEPAN">
	ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN UNIDAD TEPEPAN</option>
	<option value="ESCUELA SUPERIOR DE CÓMPUTO ESCOM">
	ESCUELA SUPERIOR DE CÓMPUTO ESCOM</option>
	<option value="ESCUELA SUPERIOR DE ECONOMÍA ESE">
	ESCUELA SUPERIOR DE ECONOMÍA ESE</option>
	<option value="ESCUELA SUPERIOR DE ENFERMERÍA Y OBSTETRICIA ESEO">
	ESCUELA SUPERIOR DE ENFERMERÍA Y OBSTETRICIA ESEO</option>
	<option value="ESCUELA SUPERIOR DE FÍSICA MATEMÁTICAS ESFM">
	ESCUELA SUPERIOR DE FÍSICA MATEMÁTICAS ESFM</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO">
	ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN">
	ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN">
	ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO">
	ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS ESIQIE">
	ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS ESIQIE</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA TEXTIL ESIT">
	ESCUELA SUPERIOR DE INGENIERÍA TEXTIL ESIT</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO">
	ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN">
	ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO">
	ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO</option>
	<option value="ESCUELA SUPERIOR DE MEDICINA ESM">
	ESCUELA SUPERIOR DE MEDICINA ESM</option>
	<option value="ESCUELA SUPERIOR DE TURISMO EST">
	ESCUELA SUPERIOR DE TURISMO EST</option>
	<option value="UNIDAD PROFESIONAL INTERDISCIPLINARIA DE BIOTECNOLOGÍA UPIBI">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA DE BIOTECNOLOGÍA UPIBI</option>
	<option value="UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS GUANAJUATO (UPIIG)">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS GUANAJUATO (UPIIG)</option>
	<option value="UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS ZACATECAS (UPIIZ)">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS ZACATECAS (UPIIZ)</option>
	<option value="NIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y TECNOLOGÍAS AVANZADAS UPIITA">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y TECNOLOGÍAS AVANZADAS UPIITA</option>
	<option value="UNIDAD PROFESIONAL INTERDISCIPLINARIA Y CIENCIAS SOCIALES Y ADMIBNISTRATIVAS UPIICSA">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA Y CIENCIAS SOCIALES Y ADMIBNISTRATIVAS UPIICSA</option>
	</select>
</div>

<div id="plantel2-otro">
<b>Introduce tu escuela:</b><br>
<input type="text" name="plantel_participante2" class="input_text" size="80" required/><br>
</div>

Comprobante de Inscripción del Participante 2:<br>
<input type="file" name="comprobante2" required><br><br>

<b>Nombre del Participante 3:</b><br>
<input type="text" name="nombre_del_participante3" class="input_text" size="80" required/><br>

<b>Categoría:</b><br>
Nivel Medio Superior <input type="radio" name="categoria_participante3" id="p3-nms" value="Nivel Medio Superior" />
Nivel Superior <input type="radio" name="categoria_participante3" id="p3-ns" value="Nivel Superior" />
Posgrado <input type="radio" name="categoria_participante3" id="p3-p" value="Posgrado" /><br>

<b>Institución:</b><br>
<select id="institucion-p3" name="institucion_participante3" onchange="check_p3institucion()">
  <option value="">
  <option value="IPN">IPN
  <option value="Otro">Otro
</select><br>

<div id="plantel-p3-nms-ipn">
<b>Plantel:</b><br>
<select id="plantel-p3-nms-ipn" name="plantel_participante3">
	<option value=""></option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 01 'GONZALO VÁZQUEZ VELA'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 01 "GONZALO VÁZQUEZ VELA"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 02 'MIGUEL BERNARD'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 02 "MIGUEL BERNARD"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 03 'ESTANISLAO RAMÍREZ RUÍZ'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 03 "ESTANISLAO RAMÍREZ RUÍZ"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 04 'LÁZARO CÁRDENAS'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 04 "LÁZARO CÁRDENAS"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 05 'BENITO JUÁREZ'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 05 "BENITO JUÁREZ"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 06 'MIGUEL OTHÓN DE MENDIZABAL'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 06 "MIGUEL OTHÓN DE MENDIZABAL"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 07 'CUAUHTÉMOC'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 07 "CUAUHTÉMOC"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 08 'NARCISSO BASSOLS'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 08 "NARCISSO BASSOLS"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 09 'JUAN DE DIOS BATÍZ'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 09 "JUAN DE DIOS BATÍZ"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 10 'CARLOS VALLEJO MARQUÉZ'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 10 "CARLOS VALLEJO MARQUÉZ"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 11 'WILFRIDO MASSIEU'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 11 "WILFRIDO MASSIEU"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 12 'JOSÉ MARIA MORELOS Y PAVÓN'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 12 "JOSÉ MARIA MORELOS Y PAVÓN"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 13 'RICARDO FLORES MAGÓN'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 13 "RICARDO FLORES MAGÓN"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 14 'LUIS ENRIQUE ERRO'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 14 "LUIS ENRIQUE ERRO"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 15 'DIÓDORO ANTÚNEZ ECHEGARAY'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 15 "DIÓDORO ANTÚNEZ ECHEGARAY"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 16 'HIDALGO'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 16 "HIDALGO"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 17 'LEÓN GUANAJUATO'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 17 "LEÓN GUANAJUATO"</option>
	<option value="CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 18 'ZACATECAS'">
	CENTRO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS NO. 18 "ZACATECAS"</option>
	<option value="CENTRO DE ESTUDIOS TECNOLÓGICOS NO. 01 'WALTER CROSS BUCHANAN'">
	CENTRO DE ESTUDIOS TECNOLÓGICOS NO. 01 "WALTER CROSS BUCHANAN"</option>
</select>
</div>

<div id="plantel-p3-ns-ipn">
<b>Plantel:</b><br>
<select name="plantel_participante3">
	<option value=""></option>
	<option value="CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD - UNIDAD MILPA ALTA (CICS - UMA)">
	CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD - UNIDAD MILPA ALTA (CICS - UMA)</option>
	<option value="CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD - UNIDAD SANTO TOMÁS (CICS - UST)">
	CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD - UNIDAD SANTO TOMÁS (CICS - UST)</option>
	<option value="ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS ENCB">
	ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS ENCB</option>
	<option value="ESCUELA NACIONAL DE MEDICINA Y HOMEOPATÍA ENMYH">
	ESCUELA NACIONAL DE MEDICINA Y HOMEOPATÍA ENMYH</option>
	<option value="ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN UNIDAD SANTO TOMÁS">
	ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN UNIDAD SANTO TOMÁS</option>
	<option value="ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN UNIDAD TEPEPAN">
	ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN UNIDAD TEPEPAN</option>
	<option value="ESCUELA SUPERIOR DE CÓMPUTO ESCOM">
	ESCUELA SUPERIOR DE CÓMPUTO ESCOM</option>
	<option value="ESCUELA SUPERIOR DE ECONOMÍA ESE">
	ESCUELA SUPERIOR DE ECONOMÍA ESE</option>
	<option value="ESCUELA SUPERIOR DE ENFERMERÍA Y OBSTETRICIA ESEO">
	ESCUELA SUPERIOR DE ENFERMERÍA Y OBSTETRICIA ESEO</option>
	<option value="ESCUELA SUPERIOR DE FÍSICA MATEMÁTICAS ESFM">
	ESCUELA SUPERIOR DE FÍSICA MATEMÁTICAS ESFM</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO">
	ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN">
	ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN">
	ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO">
	ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS ESIQIE">
	ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS ESIQIE</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA TEXTIL ESIT">
	ESCUELA SUPERIOR DE INGENIERÍA TEXTIL ESIT</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO">
	ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN">
	ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN</option>
	<option value="ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO">
	ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO</option>
	<option value="ESCUELA SUPERIOR DE MEDICINA ESM">
	ESCUELA SUPERIOR DE MEDICINA ESM</option>
	<option value="ESCUELA SUPERIOR DE TURISMO EST">
	ESCUELA SUPERIOR DE TURISMO EST</option>
	<option value="UNIDAD PROFESIONAL INTERDISCIPLINARIA DE BIOTECNOLOGÍA UPIBI">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA DE BIOTECNOLOGÍA UPIBI</option>
	<option value="UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS GUANAJUATO (UPIIG)">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS GUANAJUATO (UPIIG)</option>
	<option value="UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS ZACATECAS (UPIIZ)">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS ZACATECAS (UPIIZ)</option>
	<option value="NIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y TECNOLOGÍAS AVANZADAS UPIITA">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y TECNOLOGÍAS AVANZADAS UPIITA</option>
	<option value="UNIDAD PROFESIONAL INTERDISCIPLINARIA Y CIENCIAS SOCIALES Y ADMIBNISTRATIVAS UPIICSA">
	UNIDAD PROFESIONAL INTERDISCIPLINARIA Y CIENCIAS SOCIALES Y ADMIBNISTRATIVAS UPIICSA</option>
	</select>
</div>

<div id="plantel3-otro">
<b>Introduce tu escuela:</b><br>
<input type="text" name="plantel_participante3" class="input_text" size="80" required/><br>
</div>

Comprobante de Inscripción del Participante 3:<br>
<input type="file" name="comprobante3" required><br><br>

</div>

<div class="subtitle">
	3. Resumen del Proyecto	
</div>

<div class="campos">

<b>Máximo 2 cuartillas.</b>  Se deberá indicar claramente cuál fue el problema que se pretende resolver, 
el desarrollo que se debe seguir, los principales resultados que se esperan obtener obtenidos y 
las principales aportaciones de la investigación. Este resumen se utilizará para difundir 
los proyectos ganadores en diversos medios.<br>
<div id="textarea"><textarea name="resumen"rows="4" cols="85" required></textarea></div>

</div>

<div class="subtitle">
	4. Documento Escrito	
</div>

<div class="campos">
<b>Se deben incluir el desarrollo de la propuesta y estará compuesto con los siguientes elementos:</b><br>
<ol>
  <li>Antecedentes.</li>
  <textarea name="antecedentes" rows="4" cols="90" maxlength="400" placeholder="Máximo de 400 Palabras" required></textarea>
  <li>Justificación (planteamiento del problema).</li>
  <textarea name="justificacion" rows="4" cols="90" maxlength="100" placeholder="Máximo de 100 Palabras" required></textarea>
  <li>Metodología.</li>
  <textarea name="metodologia" rows="4" cols="90" maxlength="200" placeholder="Máximo de 200 Palabras" required></textarea>
  <li>Propuesta.</li>
  <textarea name="propuesta" rows="4" cols="90" minlength="800" maxlength="1000" placeholder="800 - 1000 Palabras" required></textarea>
  <li>Resultados e impacto esperados de la propuesta.</li>
  <textarea name="resultados" rows="4" cols="90" maxlength="200" placeholder="Máximo de 200 Palabras" required></textarea>
  <li>Conclusiones.</li>
  <textarea name="conclusiones" rows="4" cols="90" maxlength="200" placeholder="Máximo de 200 Palabras" required></textarea>
  <li>Referencias Bibliográficas.</li>
  <input type="text" name="bibliografia" class="input_text" size="80" required/> <button>+</button><br>
</ol>  

<b>Subir Archivo:</b>
<input type="file" name="archivo_proyecto"><br>

</div>

<div class="subtitle">
	5. Anexo	
</div>

<div class="campos">
<b>Incluir en caso de que los participantes cuenten con material audiovisual que apoyen su propuesta:</b><br>
URL:
<input type="text" name="anexo" class="input_text" size="80"/><br>
</div>

</div>

  <input type="submit" value="Enviar">

</form>


</body>
{% endblock %}
