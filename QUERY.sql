USE gimnasio;

SELECT nombre, apellido, dni, email FROM cliente;

SELECT nombre AS NOMBRE, apellido AS APELLIDO, dni AS DNI, fecha_nacimiento AS FECHA_DE_NACIMIENTO 
FROM empleado;

CREATE VIEW view_clientes_que_reservaron_espacios AS
SELECT  c.id_cliente, CONCAT (c.nombre,"",c.apellido) AS NOMBRE_COMPLETO,
	c.dni, c.fecha_nacimiento, c.direccion, c.email
FROM reserva_espacio r
	JOIN cliente c ON r.id_cliente = c.id_cliente;

SELECT c.id_cliente, c.nombre AS NOMBRE, c.apellido AS APELLIDO, c.dni, c.fecha_nacimiento AS Fecha_Nacimiento, c.direccion, c.telefono, c.email, c.telefono_emergencia
	FROM cliente c
    LEFT JOIN reserva_espacio r ON c.id_cliente = r.id_cliente
    LEFT JOIN espacio e ON e.id_espacio = r.id_cliente;
    

