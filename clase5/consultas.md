# Consultas en SQL

> Podemos realizar consultas a: 

1. Server
2. Base de datos
3. Tablas
4. Vistas

## Consultas a Server

    -- listar todas las bases de datos en un server  
    SHOW DATABASES;  

    -- saber cuál es la base de datos activa  
    SELECT DATABASE();  

## Consultas a base da datos  

    -- listar las tablas de una base de datos  
    SHOW TABLES;  

## Consultas a tablas  

    -- ver la estructura de una tabla  
    DESCRIBE nombreTabla;  
    DESCRIBE proveedores;  

> cuándo queremos ver los registros dentro de una tabla utilizamos la palabra reservada **SELECT** acompañada de la palabra **FROM** 

    SELECT * FROM nombreTabla;  
    SELECT * FROM clientes;  
    SELECT * FROM proveedores;  

> Esta consulta nos devolverá una grilla de resultados con todas las columnas y todos los registros de la tabla especificada
 
### Orden de resultados 
> cuando realicemos una consulta, los resultados van a aparecer ordenados por algún criterio predeterminado
> si yo quiero ordenar por alguna columna, puedo especificar este criterio utilizando **ORDER BY** seguido por el nombre de la columna

    SELECT * FROM clientes  
       ORDER BY apellido;  
    SELECT * FROM clientes  
       ORDER BY fechaAlta DESC;  

### Seleccionado columnas de una tabla  
> Cuando nosotros ejecutamos la consulta **SELECT * FROM nombreTabla;** vamos a obtener un listado que contiene todas las columnas de esa tabla
> En algunas oportunidades tal vez sólo quisiéramos obtener datos de algunas columnas
> para obtener sólo algunas columnas debemos reemplazar el símbolo de * por un listado de estas columnas separadas por comas

    SELECT campo1, campo3, campoX  
      FROM nombreTabla;  

    SELECT apellido, nombre, telefono  
      FROM clientes;  

    SELECT apellido, nombre, telefono  
      FROM clientes  
      ORDER BY apellido;  

    SELECT producto, precio  
      FROM productos  
      ORDER BY idMarca, precio;  

