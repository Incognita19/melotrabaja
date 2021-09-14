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
        <h3>Publicaciones Destacadas</h3>
        <div class="publicaciones destacadas">
                <p class="titulo">Reprehenderit ut quos aute excepteur temporibus </p>
                <p class="nombreuser">Adm1</p>
                <p class="fecha">10/08/2021</p>
            </div>
            <div class="publicaciones destacadas">
            <p class="titulo">Voluptatem nostrum sequi delectus sint autem ex</p>
                <p class="nombreuser">Adm2</p>
                <p class="fecha">10/04/2021</p>
            </div>
            <div class="publicaciones destacadas">
            <p class="titulo">Totam dignissimos reprehenderit et nisi </p>
                <p class="nombreuser">Adm3</p>
                <p class="fecha">15/07/2021</p>
            </div>
            <div class="publicaciones destacadas">
            <p class="titulo">Aut saepe do in accusamus dolore aliquip et d</p>
                <p class="nombreuser">Adm4</p>
                <p class="fecha">05/02/2021</p>
            </div>
</div>
        <div class="separacionContenido">
        <h3>Publicaciones Recientes</h3>
            <div class="publicaciones recientes">
            <p class="titulo">Et quia omnis nemo molestias cu</p>
                <p class="nombreuser">User1</p>
                <p class="fecha">30/12/2021</p>
            </div>
            <div class="publicaciones recientes">
            <p class="titulo">Voluptas nobis modi nesciunt error </p>
                <p class="nombreuser">User2</p>
                <p class="fecha">02/02/2021</p>
            </div>
            <div class="publicaciones recientes">
            <p class="titulo">Est placeat cumque dolor est enim</p>
                <p class="nombreuser">User3</p>
                <p class="fecha">05/08/2021</p>
            </div>
            <div class="publicaciones recientes">
            <p class="titulo">Suscipit omnis irure enim ut irure omnis</p>
                <p class="nombreuser">User4</p>
                <p class="fecha">01/06/2021</p>
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
        <li class="btn-barra">
            <a href=""><button class="boton">SASD</button></a>
        </li>
        <li class="btn-barra">
            <a href=""><button class="boton">ASDASD</button></a>
        </li>
        <li class="btn-barra">
            <a href=""><button class="boton">ASDASD</button></a>
        </li>
    </ul>
</div>
<div class="loginContenedor" id="loginContenedor">
        <div class="login">
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