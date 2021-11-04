

DROP DATABASE IF EXISTS melotrabaja;
CREATE DATABASE melotrabaja;
USE melotrabaja;
--Esta entidad contiene los atributos del perfil del usuario en la aplicación--


create table usuario(
nombreuser varchar (12) not null unique primary key,
contraseña varchar (10) not null),
apellido varchar(12) not null),
nombre varchar (12) not null),
email varchar (24) not null);

create table perfil(
fecha_nacimiento date,
curriculum varchar (500),
nombreuser varchar (12) not null unique primary key,
foto varchar not null,
genero enum('masculino','femenino','otro','unk') not null,
telefono int (9) not null unique,
registrado date not null,
email varchar (24) not null);

create table tu perfil(
    nombre varchar(12) not null,
    apellido varchar (12) not null,
    id_perfil varchar (12) not null unique primary key,
    registrado date not null,
    fecha_nac date not null,
    email varchar (24) not null);

create table categoria(
descripcion varchar (4000) not null unique,
id_categoria Varchar (8) not null unique primary key);

create table publicaciones(
hora date not null,
titulo varchar (24) not null,
contenido varchar (400) not null,
id_publicaciones varchar (8) not null unique primary key);

create table sesion(
nombreuser varchar(12) not null unique primary key,
fecha-inicio date not null,
fecha-finalisación not null unique);

alter table tiene (
add constraint FK_nombreuser,
foreign key (usuario),
references perfil (pk_id_perfil);

alter table rel_hace(
 add constraint FK_nombreuser,
 foreign key (usuario),
 references publicaciones(pk_id_publicaciones) 
);

alter table inicia(
    add constraint FK_fecha_inicio, 
    foreign key (usuario),
    references sesion (pk_fecha_inicio),
);
alter table pose (
    add constraint FK_id_cat
    foreign key (categoria)
    references publicaciones(pk_id_publicaciones)
); 

alter table especializa(
    add constraint FK_id_perfil
    foreign key (perfil)
    references categoria(pk_id_categorias)
