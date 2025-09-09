USE Gimnasio;

INSERT INTO Socio (Idsucursal, Nombre, Apellido, DNI, Direccion, Edad, Telefono, Correo, TelefonoEmergencia)
VALUES (1, "Leo", "Perez", 10121456, "asd145", 29, 3512684759, "leo@mail.com", 3512485869),
(2, "Pedro", "Gonzalez", 13221459, "asdf145", 28, 3512684758, "pedro@mail.com", 3512485868),
(3, "Pablo", "Lopez", 12147369, "asdfg145", 27, 3512684757, "pablo@mail.com", 3512485867),
(1, "Lucas", "Martinez", 10556789, "asdfgh145", 26, 3512684756, "lucas@mail.com", 3512485866),
(2, "Ana", "Garcia", 10323789, "asdfghj145", 25, 3512684755, "ana@mail.com", 3512485865),
(3, "Aurora", "Hernandez", 10259753, "asdfghjk145", 24, 3512684754, "aurora@mail.com", 3512485864),
(1, "Jasmin", "Rodriguez", 10472583, "asdfghjkl145", 23, 3512684753, "jasmin@mail.com", 3512485863),
(2, "Juana", "Alvarez", 11258473, "asdfghjklñ145", 22, 3512684752, "juana@mail.com", 3512485862),
(3, "Monica", "Zaragoza", 14583697, "asd145", 21, 3512684751, "monica@mail.com", 3512485861),
(1, "Mauricio", "Velardes", 15678923, "asd144", 20, 3512684750, "mauri@mail.com", 351248560);

INSERT INTO Instructor (Nombre, Apellido, DNI, Direccion, Edad, Telefono, Correo, TelefonoEmergencia, Idsucursal)
VALUES ("Cristina", "Perez", 16221456, "qwe145", 39, 3512684739, "cristina@mail.com", 3512485849, 1),
("Cristian", "Gonzalez", "17221459", "qwer145", 38, 3512684738, "cristian@mail.com", 3512485848, 2),
("Ariel", "Lopez", 18147369, "qwert145", 37, 3512684737, "ariel@mail.com",3512485847, 3),
("Ariana", "Martinez", 19456789, "qwerty145", 36, 3512684736, "ariana@mail.com",3512485846, 1),
("Nadia", "Garcia", 20123789, "qwertyu145", 35, 3512684735, "nadia@mail.com", 3512485845, 2),
("Noelia","Hernandez",21159753,"qwertyui145",34,3512684734,"noelia@mail.com",3512485844, 3),
("Susana","Rodriguez",22472583,"qwertyuio145",33,3512684733,"susana@mail.com",3512485843, 1),
("Sebastian","Alvarez",23258473,"qwertyuiop145",32,3512684732,"seba@mail.com",3512485842, 2),
("Ramiro","Zaragoza",24583697,"qwe143",31,3512684731,"ramiro@mail.com",3512485841, 3),
("Romina","Velardes",25678923,"qwe144",30,3512684730,"romi@mail.com",3512485840, 1);

INSERT INTO Empleado (Nombre, Apellido, DNI, Direccion, Edad, Telefono, Correo, TelefonoEmergencia, Idsucursal)
VALUES ("Mario", "Perez", 26221456, "zxc145", 29, 3512684719, "mario@mail.com", 3512485829, 3),
("Marcela", "Gonzalez", 27221459, "zxcv145", 28, 3512684718, "marcela@mail.com", 512485828, 2),
("Franco", "Lopez", 28147369, "zxcvb145", 27, 3512684717, "franco@mail.com", 3512485827, 1),
("Franchesca", "Martinez", 29456789, "zxcvbn145", 26, 3512684716, "franchesca@mail.com", 3512485826, 3),
("Julieta", "Garcia", 30123789, "zxcvbnm145", 25, 3512684715, "julieta@mail.com", 3512485825, 2),
("Julio", "Hernandez", 31159753, "zxcvbnm144", 24, 3512684714, "julio@mail.com", 3512485824, 1),
("Tadeo", "Rodriguez", 32472583, "zxcvbn143", 23, 3512684713, "tadeo@mail.com", 3512485823, 3),
("Tamara", "Alvarez", 33258473, "zxcvb142", 22, 3512684712, "tamara@mail.com", 3512485822, 2),
("Bruno", "Zaragoza", 34583697, "xcv141", 21, 3512684711, "bruno@mail.com", 3512485821, 1),
("Bianca", "Velardes", 35678923, "zxc140", 20, 3512684710, "bianca@mail.com", 351248520, 3);

INSERT INTO PlanAbono (Descripcion, DiaN, Precio)
VALUES ("Mensual", 30, 25000),
("Trimestral", 90, 73000),
("Semestral", 180, 140000),
("Anual", 360, 275000);

INSERT INTO PlanSocio (Idsocio, Idplan, FechaCompra, FechaLimite)
VALUES (4, 1, "2024-12-02", "2025-01-03"),
(2, 2, "2025-01-15", "2025-03-16"),
(3, 3, "2025-07-05", "2025-12-06"),
(1, 4, "2025-01-01", "2026-01-02");

INSERT INTO FichaSocio (FechaInscripcion, Peso, Altura, IMC, Cintura, Abdomen, Observaciones, Idsocio, Idinstructor)
VALUES ("2023-12-01 00:00:00", 97.5, 167.4, 34.8, 83, 85, "Obesidad Grado I", 1, 3),
("2021-03-02 00:00:00", 115, 170, 39.8, 100, 97, "Obesidad Grado II", 9, 1),
("2024-01-05 00:00:00", 93.5, 167.4, 33.4, 82, 83, "Obesidad Grado I", 1, 3),
("2025-01-02 00:00:00", 86, 164, 32, 80, 79, "Obesidad Grado I", 2, 4);

INSERT INTO ObjetivoEntrenamiento (Descripcion)
VALUES ("Ganar Resistencia"), ("Perder Peso"), ("Ganar Fuerza y Masa Muscula");

INSERT INTO Ejercicio (Descripcion, Observaciones)
VALUES ("Tren Superior", "Pecho y Espalda"), ("Tren Inferior", "Piernas y Core"), ("Cardio Ligero", "Caminar o Nadar "),
 ("Cardio Moderado", "Bici o Eliptica"), ("Cardio Intenso", "30 min carrera intervalos cortos de alta intensidad"),
("Cuerpo Completo","Trabaja múltiples grupos musculares"), ("Brazos y Hombros", "Fortalece los músculos de la parte superior del cuerpo"), 
("Fuerza", "Ejercicios de fortalecimiento muscular");

INSERT INTO PlanEntrenamiento (Lunes, Martes, Miercoles, Jueves, Viernes, Idobjetivoentrenamiento) 
VALUES (2, 3, 2, 3, 2, 2);

/*
INSERT INTO PlanEntrenamiento (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo, Idobjetivoentrenamiento) 
VALUES (1, 1, 1, 1, 1, 1, 1, 1);

INSERT INTO Zona (Descripcion, Capacidad)
VALUES ("Sala de Spinning", 30), ("Sala de aeróbicos", 20);
*/

INSERT INTO Clase (Descripcion, Idzona, Idsucursal)
VALUES ("Yoga", 2, 1), ("Pilates", 1, 1), ("HIIT", 1, 1), ("Zumba", 2, 1), ("GAP", 1, 1),
("Yoga", 2, 2), ("HIIT", 1, 2), ("Zumba", 2, 2), ("GAP", 1, 2),
("Pilates", 1, 3), ("HIIT", 1, 3), ("Zumba", 2, 3), ("GAP", 1, 3);

INSERT INTO HorarioClase (Idclase, DiaSemana, HoraInicio, HoraFin)
VALUES (1, "Lunes", "09:00", "10:00");

INSERT INTO HorarioClase (Idclase, DiaSemana, HoraInicio, HoraFin)
VALUES (1, "Lunes", "09:00", "10:00"), (3, "Martes", "11:00", "12:00"),
(4, "Miercoles", "09:30", "10:30"), (2, "Jueves", "10:00", "11:00"),
(5, "Viernes", "16:30", "17:30"), (1, "Miercoles", "10:00", "11:00"),
(1, "Viernes", "18:00", "19:00"), (2, "Martes", "10:00", "11:00"),
(3, "Jueves", "14:00", "15:00"), (4, "Lunes", "18:00", "19:00"),
(4, "Viernes", "14:30", "15:30"), (5, "Viernes", "18:30", "19:30"),
(5, "Viernes", "09:30", "10:30");

INSERT INTO PlanEntrenamiento (Lunes, Martes, Miercoles, Jueves, Viernes, Idobjetivoentrenamiento)
VALUES ("30-45 Cinta", "Sentadillas", "30-45 Bicicleta", "30-45 Cinta", "Zancadas", 1),
("Tren Superior", "Tren Inferior", "Tren Superior", "Tren Inferior", "Cuerpo Completo", 3);