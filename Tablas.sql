CREATE DATABASE IF NOT EXISTS Gimnasio;

USE Gimnasio;

CREATE TABLE Sucursal
	(
      Idsucursal INT AUTO_INCREMENT PRIMARY KEY,
      Nombre VARCHAR (250),
      Direccion VARCHAR (400),
      Telefono VARCHAR (25),
      Ciudad VARCHAR (400)
	);

CREATE TABLE IF NOT EXISTS Socio
	( 
      Idsocio INT AUTO_INCREMENT PRIMARY KEY,
      Idsucursal INT,
      Nombre VARCHAR (250) NOT NULL,
      Apellido VARCHAR (250) NOT NULL,
      DNI VARCHAR (9) UNIQUE NOT NULL,
      Direccion VARCHAR (400),
      Edad DATE NOT NULL,
      Telefono VARCHAR (25),
      Correo VARCHAR (400) UNIQUE NOT NULL,
      TelefonoEmergencia VARCHAR (25),
      FOREIGN KEY (Idsucursal) REFERENCES Sucursal (Idsucursal)
    );
    
CREATE TABLE IF NOT EXISTS PlanAbono
	( 
      Idplan INT AUTO_INCREMENT PRIMARY KEY,
      Descripcion VARCHAR (250) NOT NULL,
      DiaN VARCHAR (250) NOT NULL,
      Precio NUMERIC
    );

CREATE TABLE IF NOT EXISTS PlanSocio
	( 
      Idplansocio INT AUTO_INCREMENT PRIMARY KEY,
	  Idsocio INT,
      Idplan INT,
	  FechaCompra TIMESTAMP,
      FechaLimite DATE NOT NULL,
      FOREIGN KEY (Idsocio) REFERENCES Socio(Idsocio),
      FOREIGN KEY (Idplan) REFERENCES PlanAbono(Idplan)
    );

CREATE TABLE IF NOT EXISTS Instructor
	( 
      Idinstructor INT AUTO_INCREMENT PRIMARY KEY,
      Nombre VARCHAR (250) NOT NULL,
      Apellido VARCHAR (250) NOT NULL,
      DNI VARCHAR (9) UNIQUE NOT NULL,
      Direccion VARCHAR (400),
      Edad DATE NOT NULL,
      Telefono VARCHAR (25),
      Correo VARCHAR (400) UNIQUE NOT NULL,
      TelefonoEmergencia VARCHAR (25),
      Idsucursal INT,
      FOREIGN KEY (Idsucursal) REFERENCES Sucursal (Idsucursal)
    );

CREATE TABLE IF NOT EXISTS FichaSocio
	( 
      Idficha INT AUTO_INCREMENT PRIMARY KEY,
	  FechaInscripcion TIMESTAMP,
      Peso FLOAT NOT NULL,
      Altura FLOAT NOT NULL,
      IMC FLOAT NOT NULL,
      Cintura FLOAT NOT NULL,
      Abdomen FLOAT NOT NULL,
      Observaciones TEXT,
      Idsocio INT,
      Idinstructor INT,
      FOREIGN KEY (Idsocio) REFERENCES Socio(Idsocio),
      FOREIGN KEY (Idinstructor) REFERENCES Instructor (Idinstructor)
    );

CREATE TABLE ObjetivoEntrenamiento
	(
	  Idobjetivoentrenamiento INT AUTO_INCREMENT PRIMARY KEY,
      Descripcion VARCHAR (200)
	);

CREATE TABLE PlanEntrenamiento
	(
      Idplanentrenamiento INT AUTO_INCREMENT PRIMARY KEY,
      Lunes BIT,
      Martes BIT,
      Miercoles BIT,
      Jueves BIT,
      Viernes BIT,
      Sabado BIT,
      Domingo BIT,
      Idobjetivoentrenamiento INT,
      FOREIGN KEY (Idobjetivoentrenamiento) REFERENCES ObjetivoEntrenamiento (Idobjetivoentrenamiento)
    );

CREATE TABLE Ejercicio
	(
      Idejercicio INT AUTO_INCREMENT PRIMARY KEY,
      Descripcion VARCHAR (200),
      Observaciones TEXT,
      Idplanentrenamiento INT,
      FOREIGN KEY (Idplanentrenamiento) REFERENCES PlanEntrenamiento (Idplanentrenamiento)
    );

CREATE TABLE EjercicioSocio
	(
      Idejerciciosocio INT AUTO_INCREMENT PRIMARY KEY,
      Idsocio INT,
      Idobjetivoentrenamiento INT,
      FOREIGN KEY (Idsocio) REFERENCES Socio (Idsocio),
      FOREIGN KEY (Idobjetivoentrenamiento) REFERENCES ObjetivoEntrenamiento (Idobjetivoentrenamiento)
    );

CREATE TABLE ZONA
	(
      Idzona INT AUTO_INCREMENT PRIMARY KEY,
      Descripcion VARCHAR(200),
      Capacidad INT
    );

CREATE TABLE Clase
	(
      Idclase INT AUTO_INCREMENT PRIMARY KEY,
      Descripcion VARCHAR(200),
      Idzona INT,
      Idsucursal INT,
      FOREIGN KEY (Idzona) REFERENCES Zona (Idzona),
      FOREIGN KEY (Idsucursal) REFERENCES Sucursal (Idsucursal)
    );

CREATE TABLE HorarioClase
	(
      Idhorarioclase INT AUTO_INCREMENT PRIMARY KEY,
      Idclase INT,
      DiaSemana VARCHAR (50),
      HoraInicio TIME NOT NULL,
      HoraFin TIME NOT NULL,
	  FOREIGN KEY (Idclase) REFERENCES Clase (Idclase)
    );

CREATE TABLE ReservaClase
	(
      Idreserva INT AUTO_INCREMENT PRIMARY KEY,
      Idsocio INT,
      Idclase INT,
      Fechareserva DATETIME DEFAULT CURRENT_TIMESTAMP,
      Cancelada BIT,
      FOREIGN KEY (Idsocio) REFERENCES Socio (Idsocio),
      FOREIGN KEY (Idclase) REFERENCES Clase (Idclase)
    );

CREATE TABLE IF NOT EXISTS Empleado
	(
      Idempleado INT AUTO_INCREMENT PRIMARY KEY,
      Nombre VARCHAR (250) NOT NULL,
      Apellido VARCHAR (250) NOT NULL,
      DNI VARCHAR (9) UNIQUE NOT NULL,
      Direccion VARCHAR (400),
      Edad DATE NOT NULL,
      Telefono VARCHAR (25),
      Correo VARCHAR (400) UNIQUE NOT NULL,
      TelefonoEmergencia VARCHAR (25),
      Idsucursal INT,
      FOREIGN KEY (Idsucursal) REFERENCES Sucursal (Idsucursal)
    );

CREATE TABLE Negocio
	(
      Idlocal INT AUTO_INCREMENT PRIMARY KEY,
      Descripcion VARCHAR (250),
      Idempleado INT,
      FOREIGN KEY (Idempleado) REFERENCES Empleado (Idempleado)
    );

CREATE TABLE Producto
	(
      Idproducto INT AUTO_INCREMENT PRIMARY KEY,
      Descripcion VARCHAR (250) NOT NULL,
      Precio NUMERIC NOT NULL,
      Stock FLOAT
    );

CREATE TABLE Proveedor
	(
      Idproveedor INT AUTO_INCREMENT PRIMARY KEY,
      NombreNegocio VARCHAR(250) UNIQUE NOT NULL,
      NombreProveedor VARCHAR(250) NOT NULL,
      ApellidoProveedor VARCHAR(250) NOT NULL,
      DNI VARCHAR (9) UNIQUE NOT NULL,
      Direccion VARCHAR (400),
      Telefono VARCHAR (25),
      Correo VARCHAR (400) UNIQUE
    );

CREATE TABLE Compra
	(
      Idcompra INT AUTO_INCREMENT PRIMARY KEY,
      Idproveedor INT,
      Fecha TIMESTAMP,
      FOREIGN KEY (Idproveedor) REFERENCES Proveedor (Idproveedor)
    );

CREATE TABLE DetalleCompra 
	(
      Idcompradetalle INT AUTO_INCREMENT PRIMARY KEY,
      Idcompra INT,
      Idproducto INT,
      Idlocal INT,
      Descripcion VARCHAR(250),
      Precio NUMERIC,
      Cantidad FLOAT,
      FOREIGN KEY (Idcompra) REFERENCES Compra (Idcompra),
      FOREIGN KEY (Idproducto) REFERENCES Producto (Idproducto),
      FOREIGN KEY (Idlocal) REFERENCES Negocio (Idlocal)
    );

CREATE TABLE Venta
	(
      Idventa INT AUTO_INCREMENT PRIMARY KEY,
      Idsocio INT,
      Fecha TIMESTAMP,
      FOREIGN KEY (Idsocio) REFERENCES Socio (Idsocio)
    );

CREATE TABLE DetalleVenta
	(
      Idventadetalle INT AUTO_INCREMENT PRIMARY KEY,
      Idventa INT,
      Idproducto INT,
      Idlocal INT,
      Descripcion VARCHAR(250),
      Precio NUMERIC,
      Cantidad FLOAT,
      FOREIGN KEY (Idventa) REFERENCES Venta (Idventa),
      FOREIGN KEY (Idproducto) REFERENCES Producto (Idproducto),
	  FOREIGN KEY (Idlocal) REFERENCES Negocio (Idlocal)
	);