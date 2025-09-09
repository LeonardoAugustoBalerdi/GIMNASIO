USE Gimnasio;

-- Mostrame apellido y Nombre de los socios y su objetivo en el gimnasio.
CREATE VIEW vista_Objetivo_EntrenamientoxSocio AS
SELECT s.Apellido, s.Nombre, o.Descripcion
	FROM EjercicioSocio e
		JOIN ObjetivoEntrenamiento o ON o.Idobjetivoentrenamiento = e.Idobjetivoentrenamiento
		JOIN Socio s ON s.Idsocio = Idejerciciosocio
        ORDER BY s.Apellido ASC;

SELECT * FROM vista_Objetivo_EntrenamientoxSocio;


-- Traeme todas las clases y en que gimnasio se imparten
CREATE VIEW vista_ClasesxSucursal AS
SELECT c.Descripcion, suc.Nombre, suc.Direccion
	FROM Clase c
		LEFT JOIN Sucursal suc ON suc.Idsucursal = c.Idsucursal
		ORDER BY c.Descripcion;

SELECT * FROM vista_ClasesxSucursal;


-- Quiero que me muestres el listado de empleados que trabaja en cada sucursal acomodado por alfabeto
CREATE VIEW vista_EmpleadosxSucursal AS
SELECT CONCAT(e.Apellido, " ",e.Nombre) AS Nombre_Completo, s.Nombre
	FROM Empleado e
		JOIN Sucursal s ON e.Idsucursal = s.Idsucursal
		ORDER BY Nombre_Completo ASC;

SELECT * FROM vista_EmpleadosxSucursal;


-- Mostrar las clases con el nombre de la sector del gimnasio, que cupo de inscripcion tiene cada clase y en que sucursal se dicta y ordenar por nombre de las clase
CREATE VIEW vista_ClasesyCapacidad AS
SELECT c.Descripcion AS Clase, z.Descripcion AS Espacio, z.Capacidad, suc.Nombre
	FROM Clase c
		JOIN Zona z ON c.Idzona = z.Idzona
		JOIN Sucursal suc ON c.Idsucursal = suc.Idsucursal
		ORDER BY Clase;

SELECT * FROM vista_ClasesyCapacida;