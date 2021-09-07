


create table PERFIL(
Num_Telefono:int(9), not null, unique,
Foto:varchar(40), null, no unique,
Genero:varchar(10), not null,no unique,
Ciudad:varchar(15), not null, unique,
Curriculum:varchar(500), not null, unique,
Descripcion Personal:varchar(250), not null, unique,
Fecha_Nac:date(10),not null, not unico,
CI:int (8), no null, unico,
Nacionalidad:varchar(15),not null, no unique,
);
create table USUARIO(
Nombre:varchar(12), not null, no unique,
Apellido:varchar(15), not null, no unique,
Correo electronico:varchar(40), not null, no unique,
CI:int(8), not null, unique,
);
create table ADMINISTRADOR(
Nombre:varchar(12),not null, not unique,
Apellido:varchar(15), not null,  no unique,
Correo_electronico:varchar(40), not null, no unique,
CI:int(8), not null, unique,
);
create table POST(
Fecha_Y_Hora:date(14), not null, no unique
Contenido:varchar(120), not null, no unique
Titulo:varchar(12), null, not unique,
ID:varchar, not null, unique,
);
create table CATEGORIAS(
Nombre:varchar(20),not null, unique,
ID:varchar, not null, unique,
Descripcion:varchar, not null, unique,

);