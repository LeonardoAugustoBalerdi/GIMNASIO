USE gimnasio;

INSERT INTO cliente(id_cliente,nombre,apellido,dni,fecha_nacimiento,direccion,telefono,email,telefono_emergencia)
VALUES
(1,"Leonardo", "Balerdi", 361715400, "1992-02-21", "calle 123", 3512228914, "lebalerdi@gmail.com", 3512228915),
(2,"Augusto", "Pintos", 147258036, "1991-01-20", "calle 456", 3516841927, "auguspintos@hotmail.com", 3514267595),
(3,"Pedro", "Gonzalez", 123405678, "1990-12-19", "Manzana A Lote 3", 3518934156, "pgonzalez@outlook.com", 3514241572);

INSERT INTO empleado(id_empleado,nombre,apellido,dni,fecha_nacimiento,direccion,telefono,email,telefono_emergencia)
VALUES
(1,"Mauricio", "Perez", 33195215, "1987-02-21", "calle 321", 3512228923, "mauriciop@gmail.com", 3512228924),
(2,"Ariadna", "Lopez", 34268157, "1988-01-20", "calle 654", 3516841934, "arilopez@hotmail.com", 3514267535),
(3,"Nadia", "Gonzalez", 35995274, "1991-12-19", "Manzana B Lote 5", 3518934120, "nanugonzalez@outlook.com", 3514241521);

INSERT INTO entrenador(id_entrenador,nombre,apellido,dni,fecha_nacimiento,direccion,telefono,email,telefono_emergencia)
VALUES
(1,"Pablo", "Perez", 45195215, "1998-02-21", "calle 132", 3512228921, "pperez@gmail.com", 3512228922),
(2,"Teseo", "Lopez", 44268157, "1997-01-20", "calle 465", 3516841932, "tlopez@hotmail.com", 3514267533),
(3,"Juan", "Gonzalez", 43995274, "1996-12-19", "Manzana C Lote 6", 3518934118, "juangonzalez@outlook.com", 3514241519);

INSERT INTO sucursal(id_sucursal,nombre,direccion,telefono,email)
VALUES
(1,"Ruta9", "calle 132", 3512725921, "ruta9@gmail.com"),
(2,"Av Colon", "calle 465", 3516846932, "avcolon@hotmail.com"),
(3,"Dinosaurio Mall", "Manzana C Lote 6", 3518958118, "dinomall@outlook.com");

INSERT INTO espacio(id_espacio,descripcion,capacidad)
VALUES
(1,"Spinning",30),
(2,"Zumba",20),
(3,"Body Combat",20),
(4,"HIIT",30),
(5,"Yoga",50);

DELETE FROM espacio WHERE id_espacio = 1 AND 2 AND 3 AND 4 AND 5; 
INSERT INTO espacio(id_espacio,descripcion,capacidad)
VALUES
(6,"ZONA 1",50),
(7,"ZONA 2",50);

INSERT INTO gestion_espacio(id_gestion_espacio,descripcion,id_espacio)
VALUES
(6,"Spinning",6),
(7,"Zumba",7),
(8,"Body Combat",7),
(9,"HIIT",6),
(10,"Yoga",6);

INSERT INTO reserva_espacio(id_reservaespacio,id_cliente,id_gestion_espacio,fecha)
VALUES
(7,1,6,"2030-08-05"),
(8,2,7,"2025-08-24"),
(9,3,8,"2025-10-11");

