

DROP DATABASE IF EXISTS melotrabaja;
CREATE DATABASE melotrabaja;
USE melotrabaja;
--Esta entidad contiene los atributos del perfil del usuario en la aplicación--


create table publicaciones(
nombreuser varchar (12) not null,
hora date not null,
titulo varchar (24) not null,
id_publicaciones varchar (8) not null unique,
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


create table usuario(
nombreuser varchar (12) not null unique primary key,
contraseña varchar (10) not null,
apellido varchar(12) not null,
nombre varchar (12) not null,
email varchar (24) not null
);

create table perfil(
fecha_nacimiento date,
curriculum varchar (500),
nombreuser varchar (12) not null unique primary key,
foto varchar not null,
genero enum('masculino','femenino','otro','unk') not null,
telefono int (9) not null unique,
registrado date not null,
email varchar (24) not null);

create table usuario(
nombreuser varchar (12) not null unique primary key,
contraseña varchar (10) not null,
email varchar (24) not null,
nombre varchar (12) not  null,
apellido varchar (12) not  null,
);


create table categoria(
descripcion varchar (4000) not null unique,
id_categoria Varchar (8) not null unique primary key);

create table publicaciones(
hora date not null,
titulo varchar (24) not null,
contenido varchar (400) not null,
id_publicaciones varchar (8) not null unique primary key);

create table Sesion(
nombreuser varchar(12) not null unique primary key,
fecha-inicio date not null,
fecha-finalisación not null unique);

create table tiene(
id_publicación varchar (8) not null unique primary key,
id_categorias varchar (8) not null unique);
create table rel_hace(
nombre_de_ususario varchar (12) not null unique primary key,
contraseeña (8) not null unique);

create table inicia(
fecha-inicio date not null,
fecha-finalisación not null,
nombre de usuario varchar (12) not null unique primary key);

create table cuenta_con(
id_cat varchar (8) not null ,
id_publicadiónes varchar (8) not null); 

create table especializa(
nombre de ususario varchar (12) not null unique primary key,
id_cat var char (8) not null unique );