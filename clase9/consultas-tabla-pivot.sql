# consultas a través de una tabla pivote
SELECT producto, razonSocial
FROM productos
JOIN productos_proveedores
  ON productos.idProducto = productos_proveedores.idProducto
JOIN proveedores
  ON productos_proveedores.idProveedor = proveedores.idProveedor;


/* usando alias */
SELECT producto, razonSocial
FROM productos AS p
 JOIN productos_proveedores AS ppv
   ON p.idProducto = ppv.idProducto
 JOIN proveedores AS pv
   ON ppv.idProveedor = pv.idProveedor;

/* 5 tablas */
SELECT
    producto AS Producto,
    precio AS Contado,
    precio * 1.04 AS Lista,
    marca AS Marca,
    categoria AS Categoría,
    razonSocial AS Proveedor,
    telefono AS Teléfono
FROM
    productos AS p
 JOIN marcas AS m
   ON p.idMarca = m.idMarca
 JOIN categorias AS c
   ON p.idCategoria = c.idCategoria
 JOIN productos_proveedores AS ppv
   ON p.idProducto = ppv.idProducto
 JOIN proveedores AS pv
   ON ppv.idProveedor = pv.idProveedor;