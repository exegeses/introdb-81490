create table proveedores
(
    idProveedor smallint unsigned primary key auto_increment,
    razonSocial varchar(55) not null,
    cuit varchar(13) unique not null,
    telefono varchar(23) not null,
    email varchar(50) not null,
    direccion varchar(100) not null
);


