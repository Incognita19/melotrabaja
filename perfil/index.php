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
        <div id="logo"></div>
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
<div class="fila" id="contenidoGen">
    <div id="bordeContenido">
    <div class="boton" id="boton1" onclick="ActivarBoton(this)">
            <span>TU PERFIL</span>
        </div>
        <div class="contenido" id="contenido1"></div>
        <div class="boton" id="boton2" onclick="ActivarBoton(this)">
            <span>DETALLES DE LA CUENTA</span>
        </div>
        <div class="contenido" id="contenido2"></div>
    <div class="boton" id="boton3" onclick="ActivarBoton(this)">
            <span>CONTRASEÑA Y SEGURIDAD</span>
        </div>
        <div class="contenido" id="contenido3"></div>
    <div class="boton" id="boton4" onclick="ActivarBoton(this)">
            <span>TRABAJOS</span>
        </div>
        <div class="contenido" id="contenido4">
        </div>




    </div>

</div>

<div class="info" id="infoRobot">
                <!-- <img src="imagenes/RobotMuestra.png" id="robotMuestra" alt=""> -->
                <p id="textoRobot">
                Hola! Acá estoy de vuelta, clickea los botones encima de mi (Luego de desaparecerme clickea de nuevo!)
                </p>
        </div>

<div class="loginContenedor" id="loginContenedor">
<div id="BarraLateral" >
        <div class="btn-cerrar">
            <p>X</p>
        </div>
        <ul>
        <li>
            <img src="imagenes/logo.png" alt="Logo" class="logo">
        </li>
        <a href="http://">
            <li class="boton">
            <p>PERFIL</p>
            </li>
        </a>
        <a href="http://">
            <li class="boton">
            <p>asdasd</p>
            </li>
        </a>
        <a href="http://">
            <li class="boton">
            <p>asdasd</p>
            </li>
        </a>
    </ul>
</div>
        <div class="login" class="mostrarlogin" id="login">
            <h1>Login</h1><br>
            <p>Nombre de usuario</p><br>
            <input type="User" name="Nombre de usuario" id="Username"><br>
            <p>Contraseña</p><br>
            <input type="Contra" name="Contraseña" id="Password"><br>
            <p>Registrarse</p>
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