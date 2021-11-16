

DROP DATABASE IF EXISTS melotrabaja;
CREATE DATABASE melotrabaja;
USE melotrabaja;
/*Esta entidad contiene los atributos del perfil del usuario en la aplicación--*/


create table usuario(
nombreuser varchar (12) not null unique primary key,
contraseña varchar (10) not null,
apellido varchar(12) not null,
nombre varchar (12) not null,
email varchar (24) not null
);

create table tu_perfil(
fecha_nacimiento date,
id varchar (12) not null unique primary key, /*se corresponde con el nombre de usuario*/
foto varchar(6) not null,
genero enum ('masculino','femenino','otro','unk') not null,
telefono int (9) not null unique,
administrador date not null,
email varchar (24) not null);

create table trabajo (
    curriculum varchar (500) not null,
    descripción_profesional varchar (4000) not null,
    id int(8) not null unique auto_increment primary key);

create table categoria(
descripcion varchar (4000) not null unique,
id int (8) not null auto_increment unique primary key);

create table publicacion(
hora date not null,
titulo varchar (24) not null,
contenido varchar (400) not null,
id int(8) not null unique auto_increment primary key);

create table sesion(
nombre varchar(12) not null,
fecha-inicio date not null,
fecha-final date not null,
id int (8) not null unique auto_increment primary key);

create table tiene (
    nombreuser varchar (12) not null unique 
    id_tu_perfil int (8) not null unique  
);

create table contiene(
    id_tu_perfil int (8) not null unique, 
    id_trabajo int (8) not null unique


);

create table especializa(
    id_trabajo int (8) not null unique ,
    id_categoria int(8)  not null unique 
);
create table pose(
    id_categoria int(8) not null unique, 
    id_publicaciónes int(8)  not null unique 
);
create table hace(
    nombreuser varchar(12) not null unique,
    id_publicaciónes int (8)  not null unique


);
create table inicia(
    nombreuser varchar(12)  not null unique,
    id_sesion int(8) not null unique

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
