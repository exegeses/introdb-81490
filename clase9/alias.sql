# Alias en SQL
/*
    Podemos renombrar el enunciado de una columna utilizando un alias.
    Esta columna no se va a renombrar de manera permanente
    sino que sólo se renombrará el enunciado para este reporte.
    Podemos implementar un alias con la palabra reservada **AS**
*/
SELECT
        producto AS Producto,
        precio AS Contado,
        precio * 1.04 AS Lista
FROM
    productos;

SELECT
    producto AS Producto,
    precio AS Contado,
    precio * 1.04 AS Lista,
    marca AS Marca,
    categoria AS Categoría
FROM
    productos AS p
JOIN marcas AS m
  ON p.idMarca = m.idMarca
JOIN categorias AS c
  ON p.idCategoria = c.idCategoria;
