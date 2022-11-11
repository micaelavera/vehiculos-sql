-- DROP DATABASE IF EXISTS db;

CREATE DATABASE db;
USE db;

CREATE TABLE vehiculo (idVehiculo INTEGER NOT NULL, 
                       patente VARCHAR(10), 
                       anio DATE);

CREATE TABLE marcas (idMarca INTEGER NOT NULL, 
                    nombre VARCHAR(40));

CREATE TABLE modelos (idModelo INTEGER NOT NULL, 
                     nombre VARCHAR(40));


CREATE TABLE cliente (idCliente INTEGER NOT NULL,
                     nombre VARCHAR(40), 
                     apellido VARCHAR(40));
