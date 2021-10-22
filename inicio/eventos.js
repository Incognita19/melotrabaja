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
    //document.getElementById('login').classList.remove('mostrarlogin');
// Al recibir el click se obtiene una clase de la BarraLateral llamado active y se agrega o se quita la clase 
// active haciendo que la barra lateral se expanda o se contraiga























// ____________________________________________________________________________________

//                  -- PANTALLA DE LOGIN --
// ____________________________________________________________________________________


})

const loginOpen = document.getElementById('loginOpen');
const loginContenedor = document.getElementById('loginContenedor');
const loginClose = document.getElementById('loginClose');
const login = document.getElementById('login');
// Se reciben las id y se guardan en constantes

openLogin.addEventListener('click', () => {
    loginContenedor.classList.add('mostrar');
    login.classList.add('mostrar');
// Se recibe un click y se muestra la pantalla de login
});


closeLogin.addEventListener('click', () => {
    loginContenedor.classList.remove('mostrar');
    login.classList.remove('mostrar');
// Se recibe un click y se cierra la pantalla de login
});



























// ____________________________________________________________________________________

//                  -- ACCESO A DATOS --
// ____________________________________________________________________________________



// ____________________________________________________________________________________

//                  -- FIJADAS --
// ____________________________________________________________________________________


    function compararFechas(a, b) {
        if (new Date(a.fecha).getTime() >  new Date(b.fecha).getTime()  ) {
            return -1;
        }

        if (new Date(a.fecha).getTime() <  new Date(b.fecha).getTime()  ) {
            return 1;
        }
        return 0;
    }

    const divcontenidoTop = document.getElementById("contenidoTop");
    const divcontenidoBot = document.getElementById("contenidoBot");



     function cargarFijadas(publicaciones) {
        
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
                    },
                //5 - Establecemos una función que se ejecuta en caso de éxito en la operación
                success:function (datos) {
                    
                    console.log(datos);
                
                    if (datos.Respuesta.estado == "OK") {
                        publicaciones = datos.Respuesta.datos;
    
                        publicaciones.forEach(publicacion => {

                            if (publicacion.fijada=="si") {
              
                                divPublicacion = document.createElement('div');
                                divPublicacion.classList.add('publicaciones', 'fijadas');
                    
                                alink=document.createElement("a");
                                texto=document.createTextNode(publicacion.titulo);
                                alink.appendChild(texto);
                                alink.href="/proyecto/melotrabaja/publicaciones/verpublicacion.php?id_publicacion="+publicacion;
                                ptitulo = document.createElement('p');
                                ptitulo.classList.add('titulo');
                                ptitulo.appendChild(alink);
                  
                                pnombreuser = document.createElement('p');
                                pnombreuser.classList.add('nombreuser');
                                pnombreuser.textContent=publicacion.
                                pfecha = document.createElement('p');
                                pfecha.classList.add('fecha');
                                pfecha.textContent=publicacion.
                                divfoto_usuario = document.createElement('div');
                                divfoto_usuario.style.backgroundColor = publicacion.foto_usuario;
                                divfoto_usuario.classList.add('foto_usuario');
                              
                                divPublicacion.appendChild(ptitulo);
                                divPublicacion.appendChild(pnombreuser);
                                divPublicacion.appendChild(pfecha);
                                divPublicacion.appendChild(divfoto_usuario);
                  
                                divcontenidoTop.appendChild(divPublicacion);
                              
                                }
                                else{
                                    divPublicacion = document.createElement('div');
                                    divPublicacion.classList.add('publicaciones', 'recientes');
                            
                                    ptitulo = document.createElement('p');
                                    ptitulo.classList.add('titulo');
                                    ptitulo.textContent=publicacion.titulo;
                            
                                    pnombreuser = document.createElement('p');
                                    pnombreuser.classList.add('nombreuser');
                                    pnombreuser.textContent=publicacion.nombreuser;
                        
                                    pfecha = document.createElement('p');
                                    pfecha.classList.add('fecha');
                                    pfecha.textContent=publicacion.fecha;
                        
                                    divfoto_usuario = document.createElement('div');
                                    divfoto_usuario.classList.add('foto_usuario');
                                    divfoto_usuario.style.backgroundColor = publicacion.foto_usuario;
                        
                                    divPublicacion.appendChild(ptitulo);
                                    divPublicacion.appendChild(pnombreuser);
                                    divPublicacion.appendChild(pfecha);
                                    divPublicacion.appendChild(divfoto_usuario);
                        
                                    divcontenidoBot.appendChild(divPublicacion);
                            
                                }
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

 