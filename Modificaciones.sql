USE Gimnasio;

-- Cambiar el tipo de dato de las tablas Socio, Instructor y Empleado de DATE a INT, para que muentre los años y no la fecha de nacimiento.
ALTER TABLE Socio MODIFY COLUMN Edad INT NOT NULL;
ALTER TABLE Instructor MODIFY COLUMN Edad INT NOT NULL;
ALTER TABLE Empleado MODIFY COLUMN Edad INT NOT NULL;

-- Cambiar el tipo de dato de las tablas PlanSocio FechaCompra que se genero como TIMESTAMP a DATE.
ALTER TABLE PlanSocio MODIFY COLUMN FechaCompra DATE NOT NULL;

-- Cambiar el tipo de dato de las tablas Socio, Instructor y Empleado de DATE a INT, para que muentre los años y no la fecha de nacimiento.
ALTER TABLE Socio MODIFY COLUMN Edad INT NOT NULL;

-- Agregamos el campo Idsucursal en la Tabla Negocio y la referenciamos a la tabla Sucursal
ALTER TABLE Negocio ADD Idsucursal INT;
ALTER TABLE Negocio ADD CONSTRAINT Idsucursal
FOREIGN KEY (Idsucursal) REFERENCES Sucursal (Idsucursal);


ALTER TABLE PlanentrEnamiento MODIFY COLUMN Lunes VARCHAR (400);
ALTER TABLE PlanentrEnamiento MODIFY COLUMN Martes VARCHAR (400);
ALTER TABLE PlanentrEnamiento MODIFY COLUMN Miercoles VARCHAR (400);
ALTER TABLE PlanentrEnamiento MODIFY COLUMN Jueves VARCHAR (400);
ALTER TABLE PlanentrEnamiento MODIFY COLUMN Viernes VARCHAR (400);
ALTER TABLE PlanentrEnamiento MODIFY COLUMN Sabado VARCHAR (400);
ALTER TABLE PlanentrEnamiento MODIFY COLUMN Domingo VARCHAR (400);

