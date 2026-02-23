-- Ejercicio 2: Creación de un Tipo con Herencia
-- Crea un nuevo tipo de objeto llamado ProductoElectronico,
-- que herede de Producto y tenga un atributo adicional llamado garantia
-- (NUMBER, en meses).

-- Instrucciones:
-- 1. Crea el tipo ProductoElectronico como un subtipo de Producto.
-- 2. Inserta un producto en la tabla Productos utilizando ProductoElectronico.
-- 3. Realiza una consulta para obtener todos los productos con su información.

CREATE TYPE ProductoElectronico UNDER Producto (
   garantia NUMBER
);
/

CREATE TABLE Productos OF Producto (
   id_producto PRIMARY KEY
);

INSERT INTO Productos 
VALUES (ProductoElectronico(4, 'Portatil', 799.99, 24));


SELECT * FROM Productos;
