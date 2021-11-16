

DROP DATABASE IF EXISTS melotrabaja;
CREATE DATABASE melotrabaja;
USE melotrabaja;
/*Esta entidad contiene los atributos del perfil del usuario en la aplicación--*/


create table usuario(
nombreuser varchar (12) not null unique primary key,
contraseña varchar (10) not null),
apellido varchar(12) not null),
nombre varchar (12) not null),
email varchar (24) not null);

create table tu_perfil(
fecha_nacimiento date,
id varchar (12) not null unique primary key,
foto varchar not null,
genero enum ('masculino','femenino','otro','unk') not null,
telefono int (9) not null unique,
administrador date not null,
email varchar (24) not null);

create table trabajo (
    curriculum varchar (500) not null,
    descripción_profesional varchar (4000) not null,
    id varchar (12) not null unique primary key);

create table categoria(
descripcion varchar (4000) not null unique,
id Varchar (8) not null unique primary key);

create table publicación(
hora date not null,
titulo varchar (24) not null,
contenido varchar (400) not null,
id varchar (8) not null unique primary key);

create table sesion(
nombre varchar(12) not null,
fecha-inicio date not null,
fecha-finalisación not null,
id (8) varchar not null unique primary key;
)
create table tiene (
    nombreuser (12) varchar not null unique 
    id_tu_perfil (8) varchar not null unique  
);
create table contiene(
    id_tu_perfil (8) varchar not null unique, 
    id_trabajo(8) varchar not null unique


);

create table especializa(
    id_trabajo (8) varchar not null unique ,
    id_categoria (8) varchar not null unique 
);
create table pose(
    id_categoria (8) varchar not null unique, 
    id_publicaciónes (8) varchar not null unique 
);
create table hace(
    nombreuser(12) varchar not null unique,
    id_publicaciónes (8) varchar not null unique


);
create table inicia(
    nombreuser(12) varchar not null unique,
    id_sesion(8) varchar not null unique

);

alter table tiene
add constraint FK_nombreuser,
foreign key (nombreuser),
references usuario(nombreuser),
on update cascade,
on delete cascade;

alter table tiene
 add constraint FK_id_tu_perfil,
 foreign key (id_tu_perfil),
 references tu_perfil(id),
on update cascade,
on delete cascade;

alter table hace
    add constraint FK_nombreuser, 
    foreign key (nombreuser),
    references usuario(nombreuser),
    on update cascade,
    on delete cascade;
    
alter table hace
    add constraint FK_id_publicaciones,
    foreign key (id_publicaciones),
    references publicaciones(id),
    on update cascade,
    on delete cascade; 

alter table inicia
    add constraint FK_nombreuser,
    foreign key (nombreuser),
    references usuario(nombreusuario),
    on update cascade,
    on delete cascade;

alter table inicia
    add constraint FK_id_sesion,
    foreign key (id_sesion),
    references sesion (id),
    on update cascade,
    on delete cascade;

alter table pose 
    add constraint FK_id_publicaciones,
    foreign key (id_publicaciones)
    references publicaciones(id)
    on update cascade
    on delete cascade;

alter table pose
    add constraint FK_id_categoria
    foreign key (id_categoria)
    references categoria(id)
    on update cascade
    on delete cascade;

alter table especializa
    add constraint FK_id_categoria
    foreign key (id_categoria)
    references categoria(id)
    on update cascade
    on delete cascade;

alter table especializa
    add constraint FK_id_trabajo
    foreign key (id_trabajo)
    references trabajo(id)
    on update cascade
    on delete cascade;

alter table contiene
    add constraint FK_id_tu_perfil
    foreign key (id_tu_perfil)
    references tu_perfil(id)
    on update cascade
    on delete cascade;

alter table contiene
    add constraint FK_id_trabajo
    foreign key (id_trabajo)
    references trabajo(id)
    on update cascade
    on delete cascade;
