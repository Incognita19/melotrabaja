

DROP DATABASE IF EXISTS melotrabaja;
CREATE DATABASE melotrabaja;
USE melotrabaja;
/*
/*Esta entidad contiene los atributos del perfil del usuario en la aplicación*/


create table publicacion(
nombreuser varchar (12) not null,
hora date not null,
titulo varchar (24) not null,
id_publicaciones varchar (8) not null unique
);


