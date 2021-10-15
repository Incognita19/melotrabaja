

DROP DATABASE IF EXISTS melotrabaja;
CREATE DATABASE melotrabaja;
USE melotrabaja;
--Esta entidad contiene los atributos del perfil del usuario en la aplicación--
















create table PERFIL(
nombre_ususario varchar (12) not null unique,
num_telefono int(9) not null unique,
foto varchar(40) null,
genero varchar(10) not null,
ciudad varchar(15) not null unique,
curriculum varchar(500) not null unique,
descripcion_Personal varchar(250) not null unique,
fecha_Nac date(10) not null not unique, 
nacionalidad varchar(15) not null,
ID_perfil  varchar (16) not null unique primary key,
);
--Aca estan los atributos que debe tener el Usuario para registrarse--
create table REGISTRO_USUARIO(
nombre_usuario varchar (12) not null unique primary key,
nombre varchar(12) not null no unique,
apellido varchar(15) not null no unique,
correo_electronico varchar(40) not null no unique,
);
--LOS ATRIBUTOS QUE TIENE EL USUARIO EN EL INICIO  DE LA APLICACIÓN--
create table INICIO_USUARIO(
    nombre_usuario VARCHAR(12) UNIQUE NOT NULL primary KEY,
    passHash VARCHAR(60) not null,
    passToken varchar(60) not null
);
--LA ENTIDAD DE LA SESION EN LA APLICACIÓN-- 
create table sesion(
ID_sesion varchar(90) UNIQUE NOT NULL primary KEY,
estado enum ("active","closed") NOT NULL DEFAULT "active",
tiempo_inicio timestamp NOT NULL DEFAULT CORRECT_TIMESTAMP,
tiempo_fin timestamp 
);
--CONTIENE LA INFORMACION DE LOS ATRIBUTOS DEL ADMINISTRADOR--
create table ADMINISTRADOR(
nombre varchar(12) not null  no unique,
apellido varchar(15) not null no unique,
correo_electronico varchar(40) not null no unique,
CI int(8)  not null  unique primary key,
);
--REGISTRA LAS LA INFORMACIÓN DE LAS PUBLICACIÓNES-- 
create table POST(
nombre_ususario varchar (12) not null unique,
fecha_y_hora date(14) not null,
contenido varchar(120) not null,
titulo varchar(12) not null,
ID varchar(16) not null unique primary key,
nombre_categoria varchar(20) not null unique, 
);
--CONTIENE LOS ATRIBUTOS DE CADA CATREGORIA DE LOS POST--
create table CATEGORIAS(
nombre varchar(20) not null  unique,
ID varchar(16) not null unique primary key,
descripcion (500)varchar not null unique,
);

--Muestra la relación entre usuario y perfil--

  create table CREA(
     usuario_nombre varchar(12) not null  unique,
    ID_perfil  varchar (16) not null unique primary key,
 );

--Muestra la relación entre administrador perfil--

  create table HABILITA(
     administrador_nombre varchar(12) not null,
     ID_perfil varchar(16) not null,
 );
--Muestra la relación entre administrador y usuario--
   create table APRUEBA(
     administrador_nombre varchar(12) not null,
     CI:int(8) not null primary key,
 );
--Muestra la relación entre usuario y post--
 create table PUBLICA(
     nombre_usuario varchar (12) no null no unique,
     Id_post varchar (16) no null unique FK,
 );
--Muestra la relación entre post y categoria--
  create table TIENE(
      nombre_categorias varchar(20) not null unique,
      Id_categorias varchar (16) not null unique,
 );
--Muestra la relación entre adminstrador y categorias--
  create table DEFINE( 
     nombre_administrador varchar(20) not null unique,
     Id_categorias varchar (16) not null unique,
 );
--Muestra la relación entre usuario y la sesion--
 create table inicia(
    usuario_nombre varchar(12) not null,
    sesion_ID varchar(90) NOT NULL UNIQUE primary KEY,
);
