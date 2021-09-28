function AbrirMenu() {
    var estadoMenu = $('#iconoMenu').css('width');
    
    if (estadoMenu=="50px") {
        $('#iconoMenu').animate(
            {
                width: "50px"
            },
            "fast"
        );
        $('#menu_boton').css('background-image',"url('imagen/menu_abierto.png')");
        $('.menu_item_texto').toggle();
    } else {
        $('#menu_cuerpo').animate(
            {
                width: "20px"
            },
            "fast"
        );
        $('#menu_boton').css('background-image',"url('imagen/menu_cerrado.png')");
        $('.menu_item_texto').toggle();
    }
}

    let posic = 0;

function cambiarcartel() {
    let texto = ['roja','azul','verde'];
    const zonacartel = document.getElementById("textoCambiante");
        posic++;
    if (posic==3) {
        posic = 0;
    }
    zonacartel.innerHTML = texto[posic];
    }
