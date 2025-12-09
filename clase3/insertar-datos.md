# Inserción de registros
> Para insertar registros en SQL tenemos tres maneras principales
 
## Sintaxis usando SET

    INSERT INTO nombreTabla  
        SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2,  
            nombreCampo3 = valor3,  
            nombreCampoX = valorX;  


> Ejemplo práctico: 
 
    INSERT INTO clientes  
        SET  
            idCliente = 1,  
            nombre = 'Lucía',  
            apellido = 'Pérez',  
            telefono = 1123456789,  
            email = 'lucia.gonzalez@mail.con',  
            fechaAlta = '2024-05-12';  

    INSERT INTO clientes  
        SET   
            nombre = 'Martín',  
            apellido = 'Pérez',  
            telefono = 1139876543,  
            email = 'martin.perez@mail.con',  
            fechaAlta = '2024-06-01'; 

## Sintaxis completa (se mencionan los campos) 

    INSERT INTO nombreTabla  
        ( nCampo, nCampo2, nCampo3, nCampoX )  
      VALUES  
        ( valor, valor2, valor3, valorX );  

> Ejemplo práctico:  

    INSERT INTO clientes  
        ( nombre, apellido, telefono, email, fechaAlta )  
      VALUES  
        ( 'Sofía', 'Ramírez', 1144455566, 'sofia.ramirez@mail.com', '2024-06-15' );


## Sintaxis simplificada (NO se mencionan los campos)

    INSERT INTO nombreTabla  
      VALUES  
        ( valor, valor2, valor3, valorX );  

> En la sintaxis simplificada, si bien no mencionamos los nombres de las columnas, estamos obligados a mencionar **todos y cada uno** de los valores en el orden exacto en el que fueron declarados.

> Ejemplo práctico: 

    INSERT INTO clientes  
      VALUES  
        ( DEFAULT, 'Carlos', 'López', 1144455567, 'carlos.lopez@mail.com', '2024-06-20' );  

### insertar múltiples registros
> En algunos casos vamos a necesitar insertar varios registros en una operación.
> No es necesario generar un único inserto por cada uno de los registros a agregar.
> Podemos generar un único inserto para varios registros en una misma operación.

    /* sintaxis completa */  
    INSERT INTO nombreTabla  
        ( nCampo, nCampo2, nCampo3, nCampoX )  
      VALUES  
        ( valor, valor2, valor3, valorX ),    
        ( valor, valor2, valor3, valorX ),    
        ( valor, valor2, valor3, valorX );      

    /* sintaxis simplificada */  
    INSERT INTO nombreTabla  
      VALUES  
        ( DEFAULT, valor2, valor3, valorX ),   
        ( DEFAULT, valor2, valor3, valorX ),    
        ( DEFAULT, valor2, valor3, valorX );      

