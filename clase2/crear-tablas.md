# creación de tablas en SQL
> Para crear una tabla utilizamos el comando
> **CREATE TABLE**

> Sintaxis: 

    CREATE TABLE nombre  
    (  
        nombreCampo tipoDato [modificadores],
        nombreCampo2 tipoDato [modificadores],
        nombreCampo3 tipoDato [modificadores],
        nombreCampoX tipoDato [modificadores]
    );  


> Ejemplo práctico: 

    CREATE TABLE clientes  
    (  
        idCliente int primary key auto_increment,  
        nombre varchar(50) not null,  
        apellido varchar(50) not null,  
        telefono int not null,  
        email varchar(50) not null,  
        fechaAlta date not null  
    );   

## Eliminar una tabla

    DROP TABLE nombreTabla;  