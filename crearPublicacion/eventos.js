// ____________________________________________________________________________________

//                      -- BARRA LATERAL --
// ____________________________________________________________________________________


const btnToggle = document.querySelector('.toggle-btn');
// En la constante btnToggle se almacena la busqueda de la clase toggle-btn

btnToggle.addEventListener('click', function () {
// La constante btnToggle escucha un click para hacer una función

    document.getElementById('BarraLateral').classList.toggle('active');


    document.getElementById('loginContenedor').classList.toggle('mostrar');
    
    //document.getElementById('login').classList.add('mostrarlogin');

// Al recibir el click se obtiene una clase de la BarraLateral llamado active y se agrega o se quita la clase 
// active haciendo que la barra lateral se expanda o se contraiga
})



const btnCerrar = document.querySelector('.btn-cerrar');
// En la constante btnCerrar se almacena la busqueda de la clase btn-cerrar

btnCerrar.addEventListener('click', function () {
// La constante btnCerrar escucha un click para hacer una función

    document.getElementById('loginContenedor').classList.remove('mostrar');

    document.getElementById('BarraLateral').classList.toggle('active');
// Al recibir el click se obtiene una clase de la BarraLateral llamado active y se agrega o se quita la clase 
// active haciendo que la barra lateral se expanda o se contraiga



// ____________________________________________________________________________________

//                  -- PANTALLA DE LOGIN --
// ____________________________________________________________________________________


})

// const loginOpen = document.getElementById('loginOpen');
// const loginContenedor = document.getElementById('loginContenedor');
// const loginClose = document.getElementById('loginClose');
// const login = document.getElementById('login');
// // Se reciben las id y se guardan en constantes

// openLogin.addEventListener('click', () => {
//     loginContenedor.classList.add('mostrar');
//     login.classList.add('mostrar');
// // Se recibe un click y se muestra la pantalla de login
// });


// closeLogin.addEventListener('click', () => {
//     loginContenedor.classList.remove('mostrar');
//     login.classList.remove('mostrar');
// // Se recibe un click y se cierra la pantalla de login
// });




const robot = document.getElementById('infoRobot');


var btnActivo="";

function ObtenerEspacioLibre(elemento) {
    var div = document.getElementById(elemento);

    var contenido = div.children;
    var ocupado = 0;
    $(contenido).each(
        function() {
            ocupado = ocupado + this.offsetHeight;
        }
    );
    
    var espacio = div.clientHeight - ocupado;
    return espacio;
}


function ActivarBoton(idBoton) {
    

//    $(robot).fadeOut("slow");

    
    //Obtenemos todos los elementos del div contenedor
    var elementos = idBoton.parentElement.children;

    //Creamos un bucle sobre ellos con .each
    $(elementos).each(
        //Esta función colapsa todos los div con la clase 'contenido'
        function () {
            //Para cada elemento, obtenemos su lista de clases
            var clases = this.classList;
            //Si en esa clase encontramos la clase 'contenido'...
            if ( clases.contains("contenido") ) {
                //...colapsamos su altura
                $(this).animate(
                    {
                        height:"0%",
                        display:"none"
                    }
                );
            } 
        }
    );
    var alturaMax = ObtenerEspacioLibre(idBoton.parentElement.id);

    var divContenido = idBoton.nextElementSibling;
    $(divContenido).animate(
        {
            height:alturaMax+"px",
            display:"block"
        }
    );
    robot.style.opacity="0";
}

function AgregarBoton(textoBoton,contenido) {
    var contenido = document.getElementById(contenidoGen).innerHTML;
    var span = "<span>"+textoBoton+"</span>";
    var boton = "<div class='boton' onclick='ActivarBoton(this)'>"+
                span+"</div><div class='contenido'></div>";
    document.getElementById(contenidoGen).innerHTML += boton;
}




const divPublicacion = document.getElementById("publicacion");
const barraContenido = document.getElementById("barraContenido");
const botonPerfil = document.getElementById("botonPerfil");

function cargarPublicacion(publicacion) {
        
    $.ajax(
        {
            //1 - Indicar la URL de donde se obtienen los datos
            url:"../bdd/api.php",
            //2 - Método para el envío de los datos, puede ser 'GET' o 'POST'
            method: "POST",
            //3 - Indicar la forma que tendran los datos, en este caso es 'json'
            datatype: "json",
            //4 - Indicar los datos que se incluirán. 
            // Primero se indica el nombre del dato esperado por la página y luego el dato
            data:{
                'modo': 2,
                'publicacion': publicacion
                },
            //5 - Establecemos una función que se ejecuta en caso de éxito en la operación
            success:function (datos) {
                
                console.log(datos);
            
                if (datos.Respuesta.estado == "OK") {
                    publicacion = datos.Respuesta.datos;

                    publicacion.forEach(publicacion => {


                

                            ptitulo = document.createElement('h4');
                            ptitulo.classList.add('tituloPublicacion');
                            ptitulo.textContent=publicacion.titulo;
                            divPublicacion.appendChild(ptitulo);

                            pfecha = document.createElement('p');
                            pfecha.classList.add('fechaPublicacion');
                            pfecha.textContent=publicacion.hora;
                            divPublicacion.appendChild(pfecha);
                            
                            pcontenido = document.createElement('p');
                            pcontenido.classList.add('textoPublicacion');
                            pcontenido.textContent=publicacion.contenido;
                            divPublicacion.appendChild(pcontenido);
                            
 




                            pnombreuser = document.createElement('p');
                            pnombreuser.classList.add('nombrePerfil');
                            pnombreuser.textContent=publicacion.nombreuser;
                            barraContenido.insertBefore(pnombreuser,botonPerfil);
                            
                            divfoto_usuario = document.createElement('div');
                            divfoto_usuario.style.backgroundColor = publicacion.foto;
                            divfoto_usuario.classList.add('fotoPerfil');
                            barraContenido.insertBefore(divfoto_usuario,pnombreuser);


                             
                    });
                }
            },
            //6 - Establecemos una función que se ejecuta en caso de error
            error:function(errorThrown){
                console.error("ERROR:" + errorThrown.responseText);
            }
        }
    );

}

/**
 * Permite obtener el valor de un parámetro pasado a la página mediante GET
 * @returns El dato del primer parámetro incluído en la URL
 */
 function obtenerParametroURL() {
    let paginaURL = window.location.href;
    let datos = paginaURL.split('?');
    parametro = datos[1].split('=');
    parametro = parametro[1];
    return parametro;
}


 
/*Si clicamos en el botón del sol, borrarémos la clase css dark-mode del div 
con id page y se aplicará el estilo active al sol*/
document.getElementById('id-sun').onclick = function(){
    document.getElementById('page').classList.remove('dark-mode')
    document.getElementById('id-moon').classList.remove('active')
    this.classList.add('active')
  }
  /*Si clicamos en el botón de la luna, añadiremos la clase css dark-mode del div 
  con id page y se aplicará el estilo active a la luna*/
  document.getElementById('id-moon').onclick = function(){
    document.getElementById('page').classList.add('dark-mode')
    document.getElementById('id-sun').classList.remove('active')
    this.classList.add('active')
  }


  var container = document.getElementById('textArea');
  var editor = new Quill(container,{
    theme: 'snow',
    bounds:container
  });

  