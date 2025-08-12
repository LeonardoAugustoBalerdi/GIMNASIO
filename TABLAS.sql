CREATE DATABASE IF NOT EXISTS gimnasio;
USE gimnasio;

CREATE TABLE IF NOT EXISTS cliente(
	id_cliente INT PRIMARY KEY NOT NULL,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
	dni VARCHAR (9) UNIQUE NOT NULL,
    fecha_nacimiento DATE,
    direccion VARCHAR (200),
	telefono VARCHAR (25),
    email VARCHAR(250) UNIQUE NOT NULL,
    telefono_emergencia VARCHAR (25)
);
    
CREATE TABLE IF NOT EXISTS entrenador(
	id_entrenador INT PRIMARY KEY NOT NULL,
    nombre NVARCHAR (50) NOT NULL,
    apellido NVARCHAR (50) NOT NULL,
	dni VARCHAR (9) UNIQUE NOT NULL,
    fecha_nacimiento DATE,
    direccion VARCHAR (200),
	telefono VARCHAR (25),
    email NVARCHAR(250) UNIQUE NOT NULL,
    telefono_emergencia VARCHAR (25)
);

CREATE TABLE IF NOT EXISTS empleado(
	id_empleado INT PRIMARY KEY NOT NULL,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
	dni VARCHAR (9) UNIQUE NOT NULL,
    fecha_nacimiento DATE,
    direccion VARCHAR (200),
	telefono VARCHAR (25),
    email VARCHAR(250) UNIQUE NOT NULL,
    telefono_emergencia VARCHAR (25)
);

CREATE TABLE IF NOT EXISTS sucursal(
	id_sucursal INT PRIMARY KEY NOT NULL,
    nombre VARCHAR (50) NOT NULL,
    direccion VARCHAR (200),
	telefono VARCHAR (25),
    email VARCHAR(250) UNIQUE NOT NULL
);

CREATE TABLE espacio(
	id_espacio INT PRIMARY KEY NOT NULL,
    decripción VARCHAR (50),
    capacidad INT
);
-- Vamos a modificar la tabla para corregir la palabra descripcion
-- que esta mal escrita
ALTER TABLE espacio RENAME COLUMN decripción TO descripcion;

CREATE TABLE gestion_espacio(
	id_gestion_espacio INT PRIMARY KEY NOT NULL,
    decripción VARCHAR (50),
    id_espacio INT
);
/*
voy a eliminar la tabla gestion_espacio para crearla nuevamente corrigiendo 
la palabra descripcion
*/
DROP TABLE gestion_espacio;
CREATE TABLE gestion_espacio(
	id_gestion_espacio INT PRIMARY KEY NOT NULL,
    descripcion VARCHAR (50),
    id_espacio INT
);


CREATE TABLE gestion_detalle(
    id_gestion_detalle INT PRIMARY KEY NOT NULL,
    id_gestion_espacio INT,
    id_entrenador INT,
    dia_semana INT,
    hora_inicio DATETIME,
    hora_fin DATETIME
);

CREATE TABLE IF NOT EXISTS gestion_espacio(
	id_gestion_espacio INT PRIMARY KEY NOT NULL,
    id_espacio INT,
	descripcion VARCHAR (50)
);

CREATE TABLE reserva_espacio(
	id_reservaespacio INT PRIMARY KEY NOT NULL,
    id_cliente INT,
    id_gestion_espacio INT,
    fecha DATE,
    cancelacion BIT
);