<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script src="jquery-3.6.0.js"></script>
    <script src="eventos.js"></script>
    <title>Inicio</title>
</head>
<body>
<!-- DIVS -->
<!-- DIV ENCABEZADO-->
<div class="fila" id="encabezado">
    <div id="meloTrabaja"></div>
    </div>
<!-- DIV BARRA-->
<div class="fila" id="barra">
    <div id="iconoMenu">
        <div id="menu_boton" onClick="AbrirMenu()"></div>
            <div id="menu_elementos">
            </div>
        </div>
    <button id="btnAcceder">Acceder</button>
    <div id="cartel">
        <span id="textoFijo">Somos una empresa</span> <span id="textoCambiante"></span>
    </div>










    <div class="buscar"></buscar>


    <input type="text" placeholder="Buscar" required>
        <div class="btn"> 
    <img id="iconoLupa" src="imagenes/lupa.png" alt="">


        </div>










</div>


>

<!-- DIV CONTENIDO -->

<div class="fila" id="pie">

    </div>
<!-- /DIVS -->
<script>cambiarcartel()</script>



</body>
</html>