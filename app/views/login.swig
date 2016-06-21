{% extends 'layout.swig' %}
{% block content %}
<style type="text/css">

  * {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
  }
  body {
    font-family: trebuchet ms;
  }

  div#master {
    background-color: white;
  }

  #institucion_combo_2,
  #institucion_combo_3,
  #institucion_combo_4,
  div#institucion_combo_1 {
    display: none;
  }

  span#mensaje {
    display: block;
  }
  #error_2,
  #error_3,
  #error_4,
  #error_5,
  span#error_1 {
    color: red;
    display: none;
  }

  div#button {
    text-align: center;
  }

  button#registrar {
    color: white;
    text-decoration: none;
    width: 100px;
    height: 40px;
    display: none;
    border: none;
    cursor: pointer;
    background-color: #6c1645;
    transition-duration: 0.3s;
    margin: 20px;
  }
  button#registrar:hover {
    transition-duration: 0.3s;
    background-color: #333;
    width: 110px;
    height: 50px;

  }

  div#header {
    background-color: white;
    width: 1100px;
    height: 100px;
    margin: 0 auto;
  }

  span#logo_sep {
    float: left;
    margin-left: 50px;
    margin-top: 20px;
  }
  span#logo_ipn {
    float: right;
    margin-right: 50px;
    margin-top: 20px;
  }

  img#logo_sep {
    width: 250px;
  }
  img#logo_ipn {
    width: 250px;
  }

  div#head_title {
    background-color: white;
    width: 1100px;
    height: 160px;
    margin: 0 auto;

  }

  img#head-title {
    width: 1100px;
  }

  div#contenedor {
    width: 900px;
    margin: 0 auto;
    padding-top: 30px;
    background-color: white;
    background-image: url("img/img-fondo.png");
    background-position: center top;
    padding-bottom: 50px;
  }

  span#titulo-form {
    color: #6c1645;
    font-weight: bolder;
    font-size: 1.5em;
    margin-left: 10%;
  }

  div#formulario {
    background-image: url("img/img-form-background-before.png");
    width: 600px;
    margin: 0 auto;
    padding: 10px;
    border-radius: 10px;
    margin-top: 100px;
    margin-bottom: 100px;
    padding: 50px;
    color: white;
    line-height: 30px;

  }
  div#formulario:hover {
    background-image: url("img/img-form-background-after.png");

  }

  input.input_text {
    width: 100%;
    height: 30px;
    padding: 3px;
  }
  select {
    width: 90px;
    height: 30px;
  }

  div#footer {
    width: 1100px;
    height: 150px;
    background-color: #6c1645;
    margin: 0 auto;
    text-align: center;
    padding-top: 20px;
    color: white;
    padding-left: 100px;
    padding-right: 100px;
  }
  span#peque {
    font-size: 0.8em;
  }
  @media only screen and (max-width: 1000px) {
    div#header {
      background-color: white;
      width: 100%;
      height: 300px;
      margin: 0 auto;
      text-align: center;
    }
    div#footer {
      width: 100%;
      height: 100%;
      padding: 5px;
      font-size: 0.8em;
      padding-top: 20px;
      padding-bottom: 20px;
    }
    span#logo_sep {
      margin-left: 0;
      display: block;
      float: left;
    }
    span#logo_ipn {
      margin-left: 15%;
      display: block;
      float: left;
    }
    img#logo_sep {
      width: 50%;
    }
    img#logo_ipn {
      width: 50%;
    }
    div#head_title {
      background-color: white;
      width: 100%;

      margin: 0 auto;

    }
    img#head-title {
      width: 100%;
    }

    div#contenedor {
      width: 100%;
      margin: 0 auto;
      padding-top: 30px;
      background-color: white;

      padding-bottom: 50px;
    }
    div#formulario {
      background-image: url("img/img-form-background-before.png");
      width: 100%;
      margin: 0 auto;
      padding: 10px;
      border-radius: 10px;
      margin-top: 20px;
      padding: 20px;
      color: white;
      line-height: 30px;

    }
    div#datos {
      text-align: center;
      font-size: 0.8em;
    }
    span#titulo-form {

      margin-left: 0;
    }

  }
  @media only screen and (max-width: 800px) {
    div#header {
      background-color: white;
      width: 100%;
      height: 200px;
      margin: 0 auto;
      text-align: center;
    }

    div#head_title {
      background-color: white;
      width: 100%;
      height: 150px;
      margin: 0 auto;

    }
    img#head-title {
      width: 100%;
    }

  }
  @media only screen and (max-width: 600px) {
    div#header {
      background-color: white;
      width: 100%;
      height: 100px;
      margin: 0 auto;
      text-align: center;
    }

    div#head_title {
      background-color: white;
      width: 100%;
      height: 150px;
      margin: 0 auto;

    }
    img#head-title {
      width: 100%;
    }

  }
  @media only screen and (max-width: 500px) {
    div#header {
      background-color: white;
      width: 100%;
      height: 100px;
      margin: 0 auto;
      text-align: center;
    }

    div#head_title {
      background-color: white;
      width: 100%;
      height: 125px;
      margin: 0 auto;

    }
    img#head-title {
      width: 100%;
    }

  }
  @media only screen and (max-width: 400px) {
    div#header {
      background-color: white;
      width: 100%;
      height: 100px;
      margin: 0 auto;
      text-align: center;
    }

    div#head_title {
      background-color: white;
      width: 100%;
      height: 70px;
      margin: 0 auto;

    }
    img#head-title {
      width: 100%;
    }

  }

  button#entrar {
    background-color: #6c1645;
    padding: 10px;
    margin-top: 20px;
    color: white;
    font-weight: bold;
    border: none;
    cursor: pointer;
  }

</style>
  <div id="master">
    <div id="header">
      <span id="logo_sep"><img src="img/logo-sep-horizontal.jpg" id="logo_sep"></span>
      <span id="logo_ipn"><img src="img/logo-ipn-horizontal.jpg" id="logo_ipn"></span>
    </div>
    <div id="head_title">
      <img src="img/head-title.jpg" id="head-title">
    </div>
    <div id="contenedor">
      <div id="datos">
        <span id="titulo-form">Iniciar Sesión</span>
      </div>
      <div id="formulario">
        <form action="/login" method="post">
          <p>
            <b>Iniciar Sesión</b>
          </p>
          Username:<br>
          <input type="text" name="username" class="input_text">
          Password:<br>
          <input type="password" name="password" class="input_text">

          <input type="submit" id="entrar" value="Entrar"/>
        </form>
        <a href="/signup">Dar de alta</a>
      </div>

    </div>

    <div id="footer">
      <b>INSTITUTO POLITECNICO NACIONAL</b><br>
      <span id="peque"> D.R. Instituto Politécnico Nacional (IPN), Av. Luis Enrique Erro S/N, Unidad Profesional Adolfo López Mateos, Zacatenco, Delegación Gustavo A. Madero, C.P. 07738, Ciudad de México, México, 2009-2013.
      Esta página es una obra intelectual protegida por la Ley Federal del Derecho de Autor, puede ser reproducida con fines no lucrativos, siempre y cuando no se mutile, se cite la fuente completa y su dirección electrónica; su uso para otros fines, requiere autorización previa y por escrito del Director General del Instituto.
      </span>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  {% endblock %}
