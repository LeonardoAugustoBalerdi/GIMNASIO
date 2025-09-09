USE Gimnasio;

-- 						CONSULTAS SIMPLES

SELECT Idsocio, CONCAT (Nombre, " ",Apellido) AS Nombre_Completo_Socio FROM Socio;

UPDATE Empleado SET TelefonoEmergencia = 3512225823 WHERE Idempleado = 7;

SELECT CONCAT (i.Nombre, " ",i.Apellido) AS Nombre_Completo_Instructor, i.Correo FROM Instructor i WHERE Idsucursal = 1;

SELECT SUM(Stock) FROM Producto;

SELECT AVG (Precio) AS Precio_Promedio_De_Los_Productos FROM Producto;

SELECT CONCAT ("$", AVG (Precio))AS Precio_Promedio_De_Los_Productos FROM Producto;

SELECT Descripcion, CONCAT ("$" , Precio) AS Costo FROM PlanAbono;


-- 						CONSULTAS COMPLEJAS
-- Mostrar el nombre completo del socio con su objetivo de entrenamiento
SELECT s.Idsocio, s.Apellido, s.Nombre, o.Descripcion
	FROM EjercicioSocio e
	JOIN ObjetivoEntrenamiento o ON o.Idobjetivoentrenamiento = e.Idobjetivoentrenamiento
    JOIN Socio s ON s.Idsocio = Idejerciciosocio;

-- Mostrar el nombre de la clase y en que gimnasio se imparten con su correspondiente direccion
SELECT c.Descripcion, suc.Nombre, suc.Direccion
	FROM Clase c
	LEFT JOIN Sucursal suc ON suc.Idsucursal = c.Idsucursal
	ORDER BY c.Descripcion;

-- Mostrar el listado de empleados que trabaja en cada sucursal
SELECT CONCAT(e.Apellido, " ",e.Nombre) AS Nombre_Completo, s.Nombre
	FROM Empleado e
    JOIN Sucursal s ON e.Idsucursal = s.Idsucursal;

-- Mostrar el listado de instructores que trabaja en cada sucursal
SELECT CONCAT(i.Apellido, " ",i.Nombre) AS Nombre_Instructor, s.Nombre
    FROM instructor i
    JOIN sucursal s
    ON i.IDsucursal = s.IDsucursal;

--  Mostrar las clases con el nombre de la sector del gimnasio, que cupo de inscripcion tiene cada clase y en que sucursal se dicta
SELECT c.Descripcion AS Clase, z.Descripcion AS Espacio, z.Capacidad, suc.Nombre
	FROM Clase c
	JOIN Zona z ON c.Idzona = z.Idzona
    JOIN Sucursal suc ON c.Idsucursal = suc.Idsucursal;