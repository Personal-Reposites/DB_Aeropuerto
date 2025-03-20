create database aerodom;

use aerodom;

create table Aeropuertos(
ID_Aeropuerto int auto_increment primary key,
Nombre_Aeropuerto varchar(50),
Ciudad varchar(50),
País varchar(50)
);

CREATE TABLE Vuelos (
    ID_Vuelo INT AUTO_INCREMENT PRIMARY KEY,
    Origen VARCHAR(100) NOT NULL,
    Destino VARCHAR(100) NOT NULL,
    Fecha_Vuelo DATE NOT NULL,
    Hora_Salida TIME NOT NULL,
    Hora_Llegada TIME NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL
);

drop table Vuelos;

create table Vuelos(
	ID_Vuelo int primary key,
	Origen int, 
	Destino int,
	Fecha_Vuelo DATE,
	Hora_Salida TIME,
	Hora_Llegada TIME,
	Precio DECIMAL(10, 2),
    foreign key (Origen) references Aeropuertos(ID_Aeropuerto),
    foreign key (Destino) references Aeropuertos(ID_Aeropuerto)
);

alter table Vuelos
drop primary key;

alter table Vuelos
MODIFY ID_Vuelo INT  AUTO_INCREMENT primary key;  -- da errror porque ya tiente un constrain

ALTER TABLE Vuelos 
MODIFY ID_Vuelo INT AUTO_INCREMENT;-- mejor crear la tabla de nuevo o dejar que no sea autoiincrementable esto no funciona


create  table Clientes(
	ID_Cliente INT auto_increment primary key,
	Nombre varchar(50) not null,
	Apellido varchar(50),
	Fecha_Nacimiento date,
	Email varchar(50)
);

create table Reservas(
ID_Reserva int auto_increment primary key,
Fecha_Reserva date,
Asiento varchar(50)
);


alter table Reservas
add column ID_Cliente int;

alter table Reservas
add column ID_Vuelo  int;

alter table Reservas
add constraint FK_Reservas_Clientes  foreign key(ID_Cliente) references Clientes(ID_Cliente);

alter table Reservas
add constraint FK_Reservas_Vuelos  foreign key(ID_Vuelo) references Vuelos(ID_Vuelo);



create table Aviones(
ID_Avion int auto_increment primary key,
Modelo varchar(50) not null,
Capacidad int not null,
Fabricante varchar(50) not null
);

create table Tripulaciones(
ID_Tripulacion int auto_increment primary key,
Nombre_Tripulante varchar(50) not null,
Rol_Tripulacion varchar(50) not null
);

create table Vuelos_Tripulaciones (
    ID_Vuelo INT,      -- FK de Vuelos
    ID_Tripulacion INT, -- FK de Tripulaciones
    primary key (ID_Vuelo, ID_Tripulacion), 
    foreign key (ID_Vuelo) references Vuelos(ID_Vuelo),
    foreign key (ID_Tripulacion) references Tripulaciones(ID_Tripulacion)
    
);


alter table Aeropuertos
rename column País  to pais;

ALTER TABLE Aeropuertos
MODIFY COLUMN Nombre_Aeropuerto VARCHAR(300);


