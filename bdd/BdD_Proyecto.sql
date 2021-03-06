
DROP DATABASE IF EXISTS melotrabaja;
CREATE DATABASE melotrabaja;
USE melotrabaja;


/*Esta entidad contiene los atributos del usuario que se usan para el registro y el inicio de sesion--*/
create table usuario(
nombreuser varchar (12) not null unique primary key, /*Esta es la columna donde se almacena el nombre del usuario que es primary key (identifica la tabla)*/
contraseña varchar (10) not null,/**/
apellido varchar(12) not null,/**/
nombre varchar (12) not null,/**/
email varchar (24) not null/**/
);
/**/
create table tu_perfil(
fecha_nacimiento date,
id varchar (12) not null unique primary key, /*se corresponde con el nombre de usuario*/
foto varchar(6) not null,
genero enum ('masculino','femenino','otro','unk') not null,
telefono int (9) not null unique,
administrador date not null,
email varchar (24) not null);

create table trabajo (
    curriculum text not null,
    descripción_profesional text not null,
    id int(8) not null unique auto_increment primary key);

create table categoria(
descripcion text not null ,
id int (8) not null auto_increment unique primary key);

create table publicacion(
fecha timestamp not null default current_timestamp,
titulo varchar (24) not null,
contenido varchar (400) not null,
fijadas enum("si","no") not null default "no",
id_publicacion int(8) not null unique auto_increment primary key,
nombreuser varchar (12) not null default "Anonimo",
foto varchar (7) not null default "#4287f5"
);

create table sesion(
nombreuser varchar(12) not null,
fecha_inicio date not null,
fecha_final date not null,
id int (8) not null unique auto_increment primary key);

create table tiene (
    nombreuser varchar (12) not null unique,
    id_tu_perfil varchar (12) not null unique  
);

create table contiene(
    id_tu_perfil varchar (12) not null unique, 
    id_trabajo int (8) not null unique


);

create table especializa(
    id_trabajo int (8) not null unique,
    id_categoria int(8)  not null unique 
);
create table posee(
    id_categoria int(8) not null unique, 
    id_publicacion int(8)  not null unique 
);
create table hace(
    nombreuser varchar(12) not null unique,
    id_publicacion int (8)  not null unique


);
create table inicia(
    nombreuser varchar(12)  not null unique,
    id_sesion int(8) not null unique

);







alter table tiene
add constraint FK_nombre_user
foreign key (nombreuser)
references usuario(nombreuser)
on update cascade
on delete cascade;

alter table tiene
 add constraint FK_id_tu_perfil
 foreign key (id_tu_perfil)
 references tu_perfil(id)
on update cascade
on delete cascade;

alter table hace
    add constraint FK_nombreuser
    foreign key (nombreuser)
    references usuario(nombreuser)
    on update cascade
    on delete cascade;
    
alter table hace
    add constraint FK_id_publicacion
    foreign key (id_publicacion)
    references publicacion(id_publicacion)
    on update cascade
    on delete cascade; 

alter table inicia
    add constraint FK_nombreusuario
    foreign key (nombreuser)
    references usuario(nombreuser)
    on update cascade
    on delete cascade;

alter table inicia
    add constraint FK_id_sesion
    foreign key (id_sesion)
    references sesion (id)
    on update cascade
    on delete cascade;

alter table posee 
    add constraint FK_publicacion
    foreign key (id_publicacion)
    references publicacion(id_publicacion)
    on update cascade
    on delete cascade;

alter table posee
    add constraint FK_categoria
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
    add constraint FK_trabajo
    foreign key (id_trabajo)
    references trabajo(id)
    on update cascade
    on delete cascade;

alter table contiene
    add constraint FK_tu_perfil
    foreign key (id_tu_perfil)
    references tu_perfil(id)
    on update cascade
    on delete cascade;

alter table contiene
    add constraint FK_id_trabajo1
    foreign key (id_trabajo)
    references trabajo(id)
    on update cascade
    on delete cascade;