CREATE DATABASE ControlMigratorio
go

CREATE TABLE Viajero (
    IdViajero int PRIMARY KEY,
    Nombre varchar(50),
    Apellido varchar(50),
    DocumentoIdentidad varchar(20) UNIQUE,
    Nacionalidad varchar(50)
)
go

CREATE TABLE Viajes (
  IdViaje INT PRIMARY KEY,
  IdViajero INT,
  FechaSalida DATE,
  FechaLlegada DATE,
  Origen VARCHAR(50),
  Destino VARCHAR(50),
  FOREIGN KEY (IdViajero) REFERENCES Viajero(IdViajero)
)
go

CREATE TABLE Entrada (
    IdEntrada int PRIMARY KEY,
    IdViajero int,
    FechaEntrada datetime,
    LugarEntrada varchar(50),
    FOREIGN KEY (IdViajero) REFERENCES Viajero(IdViajero)
)
go

CREATE TABLE Salida (
    IdSalida int PRIMARY KEY,
    IdViajero int,
    FechaSalida datetime,
    LugarSalida varchar(50),
    FOREIGN KEY (IdViajero) REFERENCES Viajero(IdViajero)
)
go

CREATE TABLE Usuarios (
    IdUsuario int PRIMARY KEY,
    Username varchar(50) UNIQUE,
    Password varchar(50),
    Rol varchar(50)
)
go
