# Consultas de coincidencia

> en este caso el filtro va a tener una cadena de caracteres.
> la idea es obtener todos los registros que coincidan con una cadena de caracteres en un campo

> Obtener todos los productos que en la columna descripción contengan la palabra "inalámbrico"

    SELECT producto, precio, descripcion  
      FROM productos  
      WHERE descripcion LIKE "%inalambrico%";   

> Utilizamos la palabra reservada **LIKE** en vez del símbolo **=** (de igual)
> Además combinamos dentro de las comillas el símbolo de **%** porcentaje como una especie de comodín que podría ocupar uno, varios o incluso ningún carácter.

> Obtener todos los productos que en la columna descripción contengan la palabra "inalámbrico"
> que sean de la categoría 16 (Audio)

    SELECT producto, precio, descripcion  
      FROM productos  
      WHERE descripcion LIKE "%inalambrico%"  
        AND idCategoria = 16;  
