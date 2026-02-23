-- Ejercicio 3: Consultas sobre Objetos
-- Utilizando la tabla Productos, realiza las siguientes consultas:

-- 1. Recupera el id_producto y el nombre de todos los productos.

-- 2. Recupera el nombre y el precio de los productos
--    cuyo precio sea mayor a 50.

-- 3. Si existen productos de tipo ProductoElectronico,
--    obtén su garantia junto con su nombre.

SELECT p.id_producto, p.nombre
FROM Productos p;

SELECT p.nombre, p.precio
FROM Productos p
WHERE p.precio > 50;

SELECT p.nombre,
       TREAT(VALUE(p) AS ProductoElectronico).garantia AS garantia
FROM Productos p
WHERE VALUE(p) IS OF (ProductoElectronico);