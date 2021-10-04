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

    
    <div class="buscar"></buscar>


<input type="text" placeholder="Buscar" required>
    <div class="btn"> 
<img id="iconoLupa" src="imagenes/lupa.png" alt="">

</div>
</div>
</div>
<!-- DIV CONTENIDO -->
<div class="fila" id="contenidoGen">
    <div id="bordeContenido">
        <div class="boton" id="boton1" onclick="ActivarBoton(this)">
            <span>TU PERFIL</span>
        </div>
            <div class="contenido" id="contenido1">
                <div id="contenidoPerfil">
                    <div class="cuadroImgPerfil"></div>

                <div id="textosPerfil">

                    <table>
                        <tr>
                            <td><span class="nomDatoPerfil">Nombres: </span></td>
                            <td><span class="datoPerfil">Sae</span></td>
                        </tr>
                        <tr>
                            <td><span class="nomDatoPerfil">Apellidos: </span></td>
                            <td><span class="datoPerfil">Byeok</span></td>
                        </tr>
                        <tr>
                            <td><span class="nomDatoPerfil">Nickname: </span></td>
                            <td><span class="datoPerfil">Saebyeok19</span></td>
                        </tr>
                        <tr>
                            <td><span class="nomDatoPerfil">Email: </span></td>
                            <td><span class="datoPerfil">sae-byeok@gmail.com</span></td>
                        </tr>
                        <tr>
                            <td><span class="nomDatoPerfil">Fecha Nac: </span></td>
                            <td><span class="datoPerfil">25/04/1998</span></td>
                        </tr>
                        <tr>
                            <td><span class="nomDatoPerfil">Registrado: </span></td>
                            <td><span class="datoPerfil">15/09/20020</span></td>
                        </tr>
                    </table>


                </div>






            <div class="cuadroDescPerfil"></div>
                </div>
        </div>

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
                Hola! Acá estoy de vuelta, clickea los botones encima de mi!
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


</div>
<div class="fila" id="pie">

    </div>
<!-- /DIVS -->



<script src="eventos.js"></script>
</body>
</html>