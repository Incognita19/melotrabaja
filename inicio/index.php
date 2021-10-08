<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script src="jquery-3.6.0.js"></script>
    <script src="../bdd/datos.js"></script>
    <script src="https://kit.fontawesome.com/7241c4e3dc.js" crossorigin="anonymous"></script>
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
            <div class="toggle-btn" id="iconoMenu">    
            </div>
            <button  id="openLogin">
                    Acceder
            </button>

            <div class="buscar"></buscar>


        <input type="text" placeholder="Buscar" required>
                <div class="btn"> 
        <img id="iconoLupa" src="imagenes/lupa.png" alt="">
                </div>

            </div>

        </div>



        <!-- DIV CONTENIDO -->
        <div class="fila" id="contenido">
            <div id="bordeContenido">
                <div id="contenidoTop" class="separacionContenido">
                    <h3>PUBLICACIONES FIJADAS</h3>



                    </div>
                <div id="contenidoBot" class="separacionContenido">
                    <h3>PUBLICACIONES RECIENTES</h3>


                    

                </div>

            </div>

        </div>


        <div class="loginContenedor" id="loginContenedor">
            <div id="BarraLateral" >
                <div class="btn-cerrar">
                    <p>X</p>
                </div>
                <ul>
                    <li class="contLogoBarra">
                        <img src="imagenes/logo.png" alt="Logo" class="logoBarra">
                    </li>
                    <a href="../perfil">
                        <li class="boton">
                        <img src="imagenes/perfil-personal.png" alt="LogoPerfil" class="imgBarra">
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
                <div id="login1">
                    <h1>Login</h1><br>
                    <p>Nombre de usuario</p><br>
                    <input type="User" name="Nombre de usuario" id="Username"><br>
                    <p>Contraseña</p><br>
                    <input type="Contra" name="Contraseña" id="Password"><br>
                <!-- FORMULARIOS LOGIN -->
                    <button id="closeLogin">Cerrar</button>
                    <p class="cuentaReg" >¿Aún no tienes una cuenta?</p>
                    <img src="imagenes/robotLogin.png" alt="Logo" class="robotLogin" >
                    </div>
                </div>
            </div>


        <div class="fila" id="pie">

            </div>
        <!-- /DIVS -->



<script src="eventos.js"></script>
    <script>
        publicaciones = publicaciones.sort((a,b)=>compararFechas(a,b));
        cargarFijadas(publicaciones);
        cargarRecientes(publicaciones);
    </script>

</body>
</html>