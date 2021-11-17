
<?php

    /* Zona de Ejecución */
    $info = new Respuesta;
    $info->estado = "";
    $info->datos= "";
    
    
    
    if ($_POST) {
        if (isset($_POST['modo']) ) {
            
            $modo = ValidarDatos($_POST['modo']);

            switch ($modo) {
                case '1':
                    $info = obtenerpublicaciones();
                    break;
                case '2':
                    $info = obtenerpublicacion();
                    break;
                case '3':
                    $info = Publicar();
                    break;
                default:
                    # code...
                    break;
            }
        }
    }

   $json = TransformarEnJSON($info);
    MostrarJSON($json);

    function TransformarEnJSON($objeto){
        //1 - Creamos un objeto mediante la clase standard para 
        //  contener la secuencia JSON que crearemos.
        $jsonDatos = new stdClass;

        //2 - Obtenemos el nombre de la clase del objeto que queremos transformar
        $nombreClase = get_class($objeto);

        //3 - Creamos un array asociativo en el objeto contenedor, 
        // en el cual agregamos el objeto que queremos transformar 
        // asignándolo a su nombre de clase. 
        $jsonDatos=array("$nombreClase" => $objeto);

        //4 - Finalmente convertimos el objeto contenedor con la función json_encode
        //   y guardamos el resultado en una variable nueva.
        $objJSON = json_encode( $jsonDatos );

        //5 - Los datos en formato JSON se entregan con return para finalizar la función. 
        return $objJSON;
    }

    /**
     * Transforma un objeto con datos (debe basarse en una clase) en una secuencia
     * JSON para ser enviada al JavaScript del lado del cliente.
     */
    function MostrarJSON($datosEnJSON){
        // Encabezados requeridos para la correcta lectura de los datos en el lado
        //  del cliente.
        header("Access-Control-Allow-Origin: *");
        header("Content-Type: application/json; charset=UTF-8");
    
        //Establecemos el código de respuesta HTTP correspondiente
        // el código 200 indica que el procedimiento fue exitoso.
        http_response_code(200);
    
        //Devolvemos el contenido del objeto $datosEnJSON mediante echo.
        echo($datosEnJSON);
    
    }
    /** */
    class Respuesta{
        public $estado;
        public $datos;
    }


    class BaseDeDatos{
        public $conexion;
        public $estado;
        public $mensaje;
    }

    class publicaciones{
        public $nombreuser;
        public $titulo;
        public $hora;
        public $foto;
        public $fijadas;
    }

    
    class publicacion{
        public $nombreuser;
        public $titulo;
        public $hora;
        public $foto;
        public $contenido;
    }

    /**
     * Valida y limpia datos de ingreso para evitar ataques de inyecciones SQL
     * @param datos Los datos de ingreso que se quieren limpiar.
     */
    function ValidarDatos($datos){
        $datos = trim($datos);
        $datos = stripslashes($datos);
        $datos = htmlspecialchars($datos);
        return $datos;
    }


    function CrearConexion(){
        $servidor="localhost";
        $usuario="alumno";
        $password="alumno";
        $bdd="melotrabaja";
    
        $basededatos = new BaseDeDatos;
    
        $basededatos->conexion = new mysqli($servidor, $usuario, $password, $bdd);
        $basededatos->estado = "OK";
        $basededatos->mensaje = "OK";
    
        if ($basededatos->conexion->connect_error) {
            $basededatos->estado = "ERROR";
            $basededatos->mensaje = $basededatos->conexion->connect_error;
            return $basededatos;
            exit(1);
        }
        return $basededatos;
    }
    

    function obtenerpublicaciones(){
        $basededatos = CrearConexion();
        $respuesta = new Respuesta;

        $consulta = "SELECT nombreuser,hora,titulo,foto,fijadas,id as 'id_publicaciones' from publicaciones";

        $datos = $basededatos->conexion->query($consulta);
 
        if ($datos->num_rows > 0) {
            $respuesta->estado = "OK";
            $respuesta->datos = array();

            while ( $fila=$datos->fetch_assoc() ) {
                $publicaciones = new publicaciones;
                $publicaciones->nombreuser = $fila['nombreuser'];
                $publicaciones->hora = $fila['hora'];
                $publicaciones->foto = $fila['foto'];
                $publicaciones->titulo = $fila['titulo'];
                $publicaciones->fijadas = $fila['fijadas'];
                $publicaciones->id_publicaciones = $fila['id_publicaciones'];
                //$publicaciones->contenido = $fila['contenido'];
                
                array_push($respuesta->datos, $publicaciones);
            }
        }
        else {
            $respuesta->estado = "ERROR";
            $respuesta->datos = "No se encontraron registros";
        }

        
        $basededatos->conexion->close(); 
        return $respuesta;
    }


    function obtenerpublicacion(){
        $basededatos = CrearConexion();
        $respuesta = new Respuesta;
        
        $publicacion = ValidarDatos($_POST['publicacion']);
        $consulta = "SELECT nombreuser,hora,titulo,foto,contenido,id_publicaciones from publicacion where id_publicaciones = ?";
        $sentencia = $basededatos->conexion->prepare($consulta);
        $sentencia->bind_param("s",$publicacion);
        $sentencia->execute();

        $datos = $sentencia->get_result();


 
        if ($datos->num_rows > 0) {
            $respuesta->estado = "OK";
            $respuesta->datos = array();

            while ( $fila=$datos->fetch_assoc() ) {
                $publicacion = new publicacion;
                $publicacion->nombreuser = $fila['nombreuser'];
                $publicacion->hora = $fila['hora'];
                $publicacion->foto = $fila['foto'];
                $publicacion->titulo = $fila['titulo'];
                $publicacion->contenido = $fila['contenido'];
                $publicacion->id_publicaciones = $fila['id_publicaciones'];
                //$publicaciones->contenido = $fila['contenido'];
                
                array_push($respuesta->datos, $publicacion);
            }
        }
        else {
            $respuesta->estado = "ERROR";
            $respuesta->datos = "No se encontraron registros";
        }

        
        $basededatos->conexion->close(); 
        return $respuesta;
    }





    function Publicar(){
        $basededatos = CrearConexion();
        $respuesta = new Respuesta;
        
        $publicacion = ValidarDatos($_POST['publicacion']);
        $consulta = "SELECT nombreuser,hora,titulo,foto,contenido,id_publicaciones from publicacion where id_publicaciones = ?";
        $sentencia = $basededatos->conexion->prepare($consulta);
        $sentencia->bind_param("s",$publicacion);
        $sentencia->execute();

        $datos = $sentencia->get_result();


 
        if ($datos->num_rows > 0) {
            $respuesta->estado = "OK";
            $respuesta->datos = array();

            while ( $fila=$datos->fetch_assoc() ) {
                $publicacion = new publicacion;
                $publicacion->nombreuser = $fila['nombreuser'];
                $publicacion->hora = $fila['hora'];
                $publicacion->foto = $fila['foto'];
                $publicacion->titulo = $fila['titulo'];
                $publicacion->contenido = $fila['contenido'];
                $publicacion->id_publicaciones = $fila['id_publicaciones'];
                //$publicaciones->contenido = $fila['contenido'];
                
                array_push($respuesta->datos, $publicacion);
            }
        }
        else {
            $respuesta->estado = "ERROR";
            $respuesta->datos = "No se encontraron registros";
        }

        
        $basededatos->conexion->close(); 
        return $respuesta;
    }

?>