# modificación de registros en SQL
> para modificar los datos de una tabla utilizamos el comando **UPDATE**
> debemos especificar mediante un filtro que registro queremos modificar

> Sintaxis: 

    UPDATE nombreTabla  
        SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2  
      WHERE colPK = valorID;  

> Ejemplo práctico: 

    UPDATE clientes  
        SET 
            apellido = 'González'  
      WHERE idCliente = 1;  

    UPDATE clientes  
       SET  
            email = 'calos.lopez@mail.com',  
            telefono = '1144455569'  
      WHERE idCliente = 4;  

> Caso práctico: 
> suponiendo que tenemos una tabla llamada "productos"
> Y en dicha tabla tenemos una columna llamada "precio"
> Y también otra columna llamada "idMarca"

    tabla: productos
        |
         - columnas:  precio, idMarca

> si quisiéramos incrementar el precio de todos los productos de una marca específica, el código sería:

    UPDATE productos    
        SET  
            precio = precio * 1.05  
        WHERE idMarca = 5;  

---
> Safe Update: MySQL Workbench cuenta con un módulo seguro para modificaciones y para bajas.
> si yo me olvido de insertar el filtro **WHERE** me daría error. Pero cuidado que esto no es una característica de lenguaje SQL
