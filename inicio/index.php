<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script src="jquery-3.6.0.js"></script>
    
    <title>Inicio</title>
</head>
<body>
<!-- DIVS -->
<!-- DIV ENCABEZADO-->
<div class="fila" id="encabezado">
    <div id="meloTrabaja">
        <h1>MELOTRABAJA</h1> 
    </div>
    </div>


<!-- DIV BARRA-->


<div class="fila" id="barra">
    <div class="toggle-btn" id="iconoMenu"></div>
    <button  id="openLogin">
             Acceder
    </button>

    <div id="iconoLupa"></div>

</div>

<!-- DIV CONTENIDO -->
<div class="fila" id="contenido">
    <div id="bordeContenido">
        <div id="contenidoTop" class="separacionContenido">
        <p>Publicaciones Fijadas</p>
            <div id="fijado" class="publicaciones">
                <p id="titulo">Reprehenderit ut quos aute excepteur temporibus </p>
                <p id="nombreuser">Adm1</p>
                <p id="fecha">10/08/2021</p>
            </div>
            <div id="fijado" class="publicaciones">
            <p id="titulo">Voluptatem nostrum sequi delectus sint autem ex</p>
                <p id="nombreuser">Adm2</p>
                <p id="fecha">10/04/2021</p>
            </div>
            <div id="fijado" class="publicaciones">
            <p id="titulo">Totam dignissimos reprehenderit et nisi </p>
                <p id="nombreuser">Adm3</p>
                <p id="fecha">15/07/2021</p>
            </div>
            <div id="fijado" class="publicaciones">
            <p id="titulo">Aut saepe do in accusamus dolore aliquip et d</p>
                <p id="nombreuser">Adm4</p>
                <p id="fecha">05/02/2021</p>
            </div>
</div>
        <div class="separacionContenido">
        <p>Publicaciones Recientes</p>
            <div id="recientes" class="publicaciones">
            <p id="titulo">Et quia omnis nemo molestias cu</p>
                <p id="nombreuser">User1</p>
                <p id="fecha">30/12/2021</p>
            </div>
            <div id="recientes" class="publicaciones">
            <p id="titulo">Voluptas nobis modi nesciunt error </p>
                <p id="nombreuser">User2</p>
                <p id="fecha">02/02/2021</p>
            </div>
            <div id="recientes" class="publicaciones">
            <p id="titulo">Est placeat cumque dolor est enim</p>
                <p id="nombreuser">User3</p>
                <p id="fecha">05/08/2021</p>
            </div>
            <div id="recientes" class="publicaciones">
            <p id="titulo">Suscipit omnis irure enim ut irure omnis</p>
                <p id="nombreuser">User4</p>
                <p id="fecha">01/06/2021</p>
            </div>
        </div>
    </div>

    </div>

<div id="BarraLateral" >
        <div class="btn-cerrar">
            <p>X</p>
        </div>
        <ul>
        <li>
            <img src="imagenes/logo.png" alt="Logo" class="logo">
        </li>
        <li>ABC</li>
        <li>DCC</li>
        <li>ERT</li>
    </ul>
</div>
<div class="loginContenedor" id="loginContenedor">
        <div class="login">
            <h1>Login</h1>
        <!-- FORMULARIOS LOGIN -->
            <button id="closeLogin">Cerrar</button>
        </div>
    </div>
<div class="fila" id="pie">

    </div>
<!-- /DIVS -->



<script src="eventos.js"></script>
</body>
</html>