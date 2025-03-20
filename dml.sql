-- insertar Aeropuertos
select * from Aeropuertos;

INSERT INTO Aeropuertos ( Nombre_Aeropuerto, Ciudad, Pais) 
VALUES ( 'Aeropuerto Internacional de Ciudad de México', 'Ciudad de México', 'México');

INSERT INTO Aeropuertos (Nombre_Aeropuerto, Ciudad, Pais)
VALUES
('Aeropuerto Internacional de Los Ángeles', 'Los Ángeles', 'Estados Unidos'),
('Aeropuerto Internacional de Madrid-Barajas', 'Madrid', 'España'),
('Aeropuerto de Heathrow', 'Londres', 'Reino Unido'),
('Aeropuerto Internacional de Tokio', 'Tokio', 'Japón'),
('Aeropuerto Internacional de Dubai', 'Dubai', 'Emiratos Árabes Unidos'),
('Aeropuerto Internacional de París-Charles de Gaulle', 'París', 'Francia'),
('Aeropuerto de Singapur Changi', 'Singapur', 'Singapur'),
('Aeropuerto Internacional de Frankfurt', 'Fráncfort', 'Alemania'),
('Aeropuerto Internacional de Buenos Aires', 'Buenos Aires', 'Argentina'); -- va a explotar porque la colummna Nombre es muy pequena ejeuta un alter modify columm


-- insertar Aviones
select * from aviones;

insert into aviones (Modelo, Capacidad, Fabricante)
values ('Boeing 737', 180, 'Boeing' );

INSERT INTO Aviones ( Modelo, Capacidad, Fabricante)
VALUES
('Airbus A320', 180, 'Airbus'),
('Boeing 787', 242, 'Boeing'),
('Airbus A380', 500, 'Airbus'),
('Boeing 747', 400, 'Boeing'),
('Embraer 190', 100, 'Embraer'),
('Boeing 737 Max', 230, 'Boeing'),
('Airbus A350', 350, 'Airbus'),
('Boeing 777', 368, 'Boeing'),
('Bombardier CRJ900', 90, 'Bombardier');


-- insert tripulantes
select * from tripulaciones;

insert into tripulaciones(Nombre_Tripulante,Rol_Tripulacion)
values ('Noel Lora', 'Piloto');

INSERT INTO Tripulaciones (Nombre_Tripulante, Rol_Tripulacion)
VALUES
('Ana Rodríguez', 'Asistente de vuelo'),
('Luis González', 'Piloto'),
('Pedro Martínez', 'Co-piloto'),
('Clara García', 'Asistente de vuelo'),
('Raúl Fernández', 'Piloto'),
('Marta Sánchez', 'Asistente de vuelo'),
('José López', 'Piloto'),
('Lucía Pérez', 'Co-piloto'),
('Carlos Torres', 'Asistente de vuelo');


-- insert Vuelos
select * from vuelos;
select * from Aeropuertos;

INSERT INTO Vuelos (ID_Vuelo, Origen, Destino, Fecha_Vuelo, Hora_Salida, Hora_Llegada, Precio)
VALUES (555, 2, 1, '2025-03-21', '10:00:00', '12:00:00', 250.00);


INSERT INTO Vuelos (ID_Vuelo, Origen, Destino, Fecha_Vuelo, Hora_Salida, Hora_Llegada, Precio)
VALUES 
(111, 30, 31, '2025-03-21', '10:00:00', '12:00:00', 250.00),
(333, 32, 33, '2025-03-21', '10:00:00', '12:00:00', 250.00),
(444, 34, 34, '2025-03-21', '10:00:00', '12:00:00', 150.00),
(666, 1, 30, '2025-03-21', '10:00:00', '12:00:00', 550.00);





-- insert Clientes
select * from Clientes;

INSERT INTO Clientes (Nombre, Apellido, Fecha_Nacimiento, Email)
VALUES ( 'Juan', 'Pérez', '1990-04-10', 'juan.perez@mail.com');

INSERT INTO Clientes (Nombre, Apellido, Fecha_Nacimiento, Email)
VALUES
( 'Carlos Fernández', 'Lopez', '1985-02-20', 'carlos.lopez@mail.com'),
('Sofia García', 'Rodríguez', '1992-03-15', 'sofia.garcia@mail.com'),
( 'David Martínez', 'Pérez', '1980-06-10', 'david.martinez@mail.com'),
('Laura Sánchez', 'González', '1995-07-25', 'laura.sanchez@mail.com'),
( 'Diego López', 'Vázquez', '1989-11-18', 'diego.lopez@mail.com'),
( 'Mónica Ruiz', 'Cabrera', '1983-08-22', 'monica.ruiz@mail.com'),
('Fernando Pérez', 'Mendoza', '1990-04-11', 'fernando.perez@mail.com'),
( 'Juliana Castro', 'Jiménez', '1997-05-30', 'juliana.castro@mail.com'),
('Esteban Ortega', 'Ramírez', '1982-09-14', 'esteban.ortega@mail.com');


-- insert Reservas
select * from reservas;

INSERT INTO Reservas ( ID_Cliente, ID_Vuelo, Fecha_Reserva, Asiento)
VALUES (1, 555, '2025-03-20', '12A'); -- nota como los vuelos no tienen secuencia necesito saber el vuelo que va a reservar 

INSERT INTO Reservas ( ID_Cliente, ID_Vuelo, Fecha_Reserva, Asiento)
VALUES
( 2, 111, '2025-03-20', '2B'),
( 3, 333, '2025-03-21', '3C'),
( 4, 444, '2025-03-22', '4D'),
( 5, 666, '2025-03-23', '5E');

select * from vuelos;
select * from tripulaciones;

select * from Vuelos_Tripulaciones;

-- Insertar registros en la tabla Vuelos_Tripulaciones
INSERT INTO Vuelos_Tripulaciones (ID_Vuelo, ID_Tripulacion)
VALUES
(111, 1),
(333, 2),
(444, 3),
(555, 4),
(666, 5);

