


create table PERFIL(
num_telefono int(9), not null, unique,
foto varchar(40), null, no unique,
genero varchar(10), not null,no unique,
ciudad varchar(15), not null, unique,
curriculum varchar(500), not null, unique,
descripcion_Personal varchar(250), not null, unique,
fecha_Nac date(10),not null, not unique, 
CI int (8), no null, unique,primary key,
nacionalidad varchar(15),not null, no unique,
ID_perfil  varchar (16), not null, unique, primary key,
);
create table USUARIO(
nombre varchar(12), not null, no unique,
apellido varchar(15), not null, no unique,
correo_electronico varchar(40), not null, no unique,
CI int(8), not null, unique,primary key,
);
create table ADMINISTRADOR(
nombre varchar(12),not null, not unique,
apellido varchar(15), not null,  no unique,
correo_electronico varchar(40), not null, no unique,
CI int(8), not null, unique,primary key,
);
create table POST(
fecha_y_hora date(14), not null, no unique
contenido varchar(120), not null, no unique
titulo varchar(12), null, not unique,
ID varchar(16), not null, unique,primary key,
nombre_categoria varchar(20), not null, unique, 
);
create table CATEGORIAS(
nombre varchar(20),not null, unique,
ID varchar(16), not null, unique,primary key,
descripcion (500)varchar, not null, unique,

);
  create table CREA(
     usuario_nombre varchar(12), not null, no unique,
     CI int(8),not null, unique, 


 );  

  create table HABILITA(
     administrador_nombre varchar(12), not null, no unique,
     ID_perfil varchar(16), not null, no unique, FK,

 );

   create table APRUEBA(
     administrador_nombre varchar(12), not null, no unique,
     CI:int(8), not null, no unique, primary key, FK,

 );

 create table PUBLICA(
     nombre_ususario varchar (12), no null, no unique,
     Id_post varchar (16), no null, unique, FK,

 );

  create table TIENE(
      nombre_categorias varchar(20), no null, unique,
      Id_categorias varchar (16), no null, unique,


      

 );

 create table DEFINE( 
     nombre_administrador varchar(20), no null, unique,
     Id_categorias varchar (16), no null, unique,
     

 );