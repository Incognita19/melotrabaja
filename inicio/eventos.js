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

