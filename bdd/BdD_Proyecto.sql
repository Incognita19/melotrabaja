

DROP DATABASE IF EXISTS melotrabaja;
CREATE DATABASE melotrabaja;
USE melotrabaja;


create table publicaciones(
nombreuser varchar (12) not null,
hora date not null,
foto varchar (15) not null,
titulo varchar (30) not null,
id_publicaciones varchar (8) not null unique primary key,
fijadas enum("si" , "no") not null default "no"
);

create table publicacion(
nombreuser varchar (12) not null,
hora date not null,
foto varchar (15) not null,
titulo varchar (30) not null,
contenido varchar (5000) not null,
id_publicaciones varchar (8) not null unique primary key
);


create table perfil(
fechanac date,
curriculum varchar (500),
nombreuser varchar (12) not null unique primary key,
foto varchar not null,
genero enum('masculino','femenino','otro','unk') not null,
telefono int (9) not null unique,
registrado date not null,
email varchar (40) not null);

create table usuario(
nombreuser varchar (12) not null unique primary key,
contraseña varchar (10) not null,
email varchar (24) not null,
nombre varchar (12) not  null,
apellido varchar (12) not  null,
);


create table categoria(
tipo varchar (16) not null unique,
id_categoria varchar (8) not null unique primary key);


create table sesion(
nombreuser varchar(12) not null unique primary key,
fecha_inicio date not null,
fecha_finalizacion not null unique);

create table rel_tiene(
id_publicación varchar (8) not null unique primary key,
id_categorias varchar (8) not null unique);

create table rel_hace(
nombreuser varchar (12) not null unique primary key,
contraseña (8) not null unique);

create table rel_inicia(
fecha_inicio date not null,
fecha_finalizacion not null,
nombreuser varchar (12) not null unique primary key);

create table rel_cuenta_c(
id_publicaciones varchar (8) not null );

create table rel_especializa(
nombreuser varchar (12) not null unique primary key,
id_cat varchar (8) not null unique );

