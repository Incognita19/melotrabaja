

DROP DATABASE IF EXISTS melotrabaja;
CREATE DATABASE melotrabaja;
USE melotrabaja;
--Esta entidad contiene los atributos del perfil del usuario en la aplicación--


Create table Usuario(
Nombre_De_Usuario varchar (12) not null unique primary key,
Contraseña varchar (10) not null);

create table Perfil(
Fecha_Nacimiento date,
Curriculum varchar (500),
Nombre_De_Usuario varchar (12) not null unique primary key,
Foto varchar not null,
Genero enum('masculino','femenino','otro','unk') not null,
Telefono int (9) not null unique,
Registrado date not null,
Email varchar (40) not null);

create table Categoria(
Tipo varchar (16) not null unique,
Id_Categoria Varchar (8) not null unique primary key);

create table Publicaciones(
Hora date not null,
titulo varchar (24) not null,
Contenido varchar (400) not null,
Id_Publicaciones varchar (8) not null unique primary key);

create table Sesion(
Nombre de Usuario varchar(12) not null unique primary key,
Fecha-Inicio date not null,
Fecha-Finalisación not null unique);

create table Rel_Tiene(
Id_Publicación varchar (8) not null unique primary key,
Id_categorias varchar (8) not null unique);
create table Rel_Hace(
Nombre_de_Ususario varchar (12) not null unique primary key,
Contraseeña (8) not null unique);

create table Rel-Inicia(
Fecha-Inicio date not null,
Fecha-Finalisación not null,
Nombre de Usuario varchar (12) not null unique primary key);

create table Rel-Cuenta_C(
Id_Publicadiónes varchar (8) not null Rel-Especializa(
Nombre de Ususario varchar (12) not null unique primary key,
ID_Cat var char (8) not null unique );