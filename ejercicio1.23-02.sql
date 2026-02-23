-- Ejercicio 1: Creación de Tipos de Objetos
-- Crea un tipo de objeto Producto con los siguientes atributos:
-- id_producto (NUMBER, clave primaria)
-- nombre (VARCHAR2(50))
-- precio (NUMBER(6,2))

-- Instrucciones:
-- 1. Crea el tipo de objeto Producto.
-- 2. Crea una tabla llamada Productos basada en ese tipo.
-- 3. Inserta tres productos en la tabla.


CREATE OR REPLACE TYPE Producto AS OBJECT (
    id_producto NUMBER PRIMARY KEY,
    nombre      VARCHAR2(50),
    precio      NUMBER(6,2)
);
/
CREATE TABLE Productos OF Producto;
/

INSERT INTO Productos VALUES (Producto(1, 'Teclado', 25.99));
INSERT INTO Productos VALUES (Producto(2, 'Ratón', 15.50));
INSERT INTO Productos VALUES (Producto(3, 'Monitor', 189.99));