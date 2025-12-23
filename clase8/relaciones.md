# Consultas a dos o más tablas

> En algunos casos vamos a necesitar obtener datos provenientes de dos o más tablas
> Para lograrlo tenemos dos técnicas

## Table Relation

> Para lograr esta técnica debemos mencionar en el listado de las tablas (después del **FROM**) todas las tablas necesarias separadas por comas
> Y luego mediante un filtro (**WHERE**)
> se iguala la clave foránea de la tabla principal con la clave primaria de la tabla secundaria

    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

    SELECT campoTabla1, campoTabla1, campoTabla2, campoTabla3  
      FROM tabla1, tabla2, tabla3  
      WHERE tabla1.fk = tabla2.pk  
        AND tabla1.fk = tabla3.pk;  

> Ejemplo práctico:

    SELECT producto, precio, marca  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, marca, categoria  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;

    SELECT titulo, anio, genero, editorial  
      FROM libros, generos, editoriales  
      WHERE libros.idGenero = generos.idGenero  
        AND libros.idEditorial = editoriales.idEditorial;  

    SELECT titulo, anio, genero  
      FROM libros, generos  
      WHERE libros.idGenero = generos.idGenero;  

    SELECT piloto, campeonatos, escuderia, pais  
      FROM pilotos, escuderias, paises  
      WHERE pilotos.idEscuderia = escuderias.idEscuderia  
        AND pilotos.idPais = paises.idPais;  

## JOIN
> Para lograr esta técnica debemos mencionar después del **FROM** una sola tabla
> Sólo mencionamos la tabla principal
> Para mencionar la segunda tabla utilizamos la palabra reservada **JOIN**
> finalmente después de la palabra **ON** igualamos la clave foránea de la tabla principal con la clave primaria de la tabla secundaria
> (podríamos decir que cada **JOIN** tiene un **ON**)

    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1    
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk;  

    SELECT campoTabla1, campoTabla1, campoTabla2, campoTabla3  
      FROM tabla1    
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk  
      JOIN tabla3  
        ON tabla1.fk = tabla3.pk;  

> Ejemplos prácticos: 

    SELECT producto, precio, marca  
      FROM productos    
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, marca, categoria  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  

    SELECT titulo, anio, editorial  
      FROM libros  
      JOIN editoriales  
        ON libros.idEditorial = editoriales.idEditorial;  

    SELECT titulo, anio, editorial, genero  
      FROM libros  
      JOIN editoriales  
        ON libros.idEditorial = editoriales.idEditorial  
      JOIN generos  
        ON libros.idGenero = generos.idGenero;  

    SELECT piloto, escuderia, campeonatos  
      FROM pilotos  
      JOIN escuderias  
        ON pilotos.idEscuderia = escuderias.idEscuderia;  