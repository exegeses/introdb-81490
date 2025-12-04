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

## sintaxis completa
## sintaxis simplificada
