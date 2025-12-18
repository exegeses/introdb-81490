# Consultas v2
## Fórmula (sintaxis)

    SELECT [*, campo, campo]  
      FROM [tabla]  
      WHERE [condición]
        [AND | OR]
      ORDER BY [campo, campo];  

> Obtener producto y precio de la tabla productos ordenados por precio

    SELECT producto, precio  
      FROM productos  
      ORDER BY precio;  

## Filtros
> En algunos casos no vamos a querer obtener la totalidad de los registros de una tabla.
> Para implementar un filtro utilizamos la palabra reservada **WHERE**  

> Obtener listado de productos con un precio hasta 700

    SELECT producto, precio  
      FROM productos  
      WHERE precio <= 700;   

> Obtener listado de productos con un precio entre 100 y 700

    SELECT producto, precio  
      FROM productos  
      WHERE precio >= 100   
        AND precio <= 700   

> RANGOS con la palabra BETWEEN

    SELECT producto, precio  
      FRON productos  
      WHERE precio BETWEEN 100 AND 700;   

    SELECT producto, precio  
      FRON productos  
      WHERE fecha BETWEEN '2024-05-10' AND '2025-12-18';    

> Obtener los productos de las marcas 12 (Philips) y 7 (HP)
 
    SELECT producto, precio    
      FRON productos  
     WHERE idMarca = 7  
        OR idMarca = 12;  
      
> función IN()  
    
    SELECT producto, precio  
      FROM productos  
      WHERE idMarca IN(7, 12);  
