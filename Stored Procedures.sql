USE Gimnasio;

DELIMITER //
CREATE PROCEDURE Cargar_Socio(
    IN Nombre VARCHAR(250),
    IN Apellido VARCHAR(250),
    IN DNI VARCHAR (9),
    IN Direccion VARCHAR(400),
    IN Edad INT,
	IN Telefono VARCHAR(25),
	IN Correo VARCHAR(400),
	IN TelefonoEmergencia VARCHAR(25))
BEGIN
    INSERT INTO Socio (Nombre, Apellido, DNI, Direccion, Edad, Telefono, Correo, TelefonoEmergencia)
    VALUES (Nombre, Apellido, DNI, Direccion, Edad, Telefono, Correo, TelefonoEmergencia);
END //
DELIMITER ;

CALL Cargar_Socio("Dario", "Kessler", 10999852, "asd143", 29, 3512684760,"dario@mail.com", 3512485870);

DELIMITER //
CREATE PROCEDURE Cargar_Proveedor(
    IN NombreNegocio VARCHAR(250),
	IN NombreProveedor VARCHAR(250),
	IN ApellidoProveedor VARCHAR(250),
	IN DNI VARCHAR(9),
	IN Direccion VARCHAR(400),
	IN Telefono VARCHAR(25),
	IN Correo VARCHAR(400))
BEGIN
    INSERT INTO Proveedor (NombreNegocio, NombreProveedor, ApellidoProveedor, DNI, Direccion, Telefono, Correo)
    VALUES (NombreNegocio, NombreProveedor, ApellidoProveedor, DNI, Direccion, Telefono, Correo);
END //
DELIMITER ;

CALL Cargar_Proveedor("Esteban SRL", "Esteban", "Quito", 36678923, "asd143", 3513334760,"estebanquito@mail.com");