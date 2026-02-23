-- Ejercicio 4: Manipulación de Objetos

-- 1. Crea un nuevo tipo de objeto llamado Cliente, que tenga:
--    id_cliente (NUMBER)
--    nombre (VARCHAR2(50))
--    telefono (VARCHAR2(15))

-- 2. Crea una tabla Clientes basada en Cliente.

-- 3. Agrega una restricción de clave primaria sobre id_cliente.

-- 4. Inserta al menos tres clientes en la tabla.

-- 5. Realiza una consulta para obtener los clientes
--    cuyo nombre comience con "A".

CREATE TYPE Cliente AS OBJECT (
   id_cliente NUMBER,
   nombre VARCHAR2(50),
   telefono VARCHAR2(15)
);
/

INSERT INTO Clientes VALUES (Cliente(1, 'Ana Lopez', '600123456'));
INSERT INTO Clientes VALUES (Cliente(2, 'Alberto Ruiz', '611234567'));
INSERT INTO Clientes VALUES (Cliente(3, 'Carlos Perez', '622345678'));

SELECT c.id_cliente, c.nombre, c.telefono
FROM Clientes c
WHERE c.nombre LIKE 'A%';