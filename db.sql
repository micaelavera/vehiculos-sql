DROP DATABASE IF EXISTS db;

CREATE DATABASE db;
USE db;

DROP TABLE IF EXISTS vehiculo;
CREATE TABLE vehiculo (idVehiculo INTEGER NOT NULL, 
                       patente VARCHAR(10), 
                       anio DATE);

DROP TABLE IF EXISTS marcas;
CREATE TABLE marcas (idMarca INTEGER NOT NULL, 
                    nombre VARCHAR(40));

DROP TABLE IF EXISTS modelos;
CREATE TABLE modelos (idModelo INTEGER NOT NULL, 
                     nombre VARCHAR(40));

DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente (idCliente INTEGER NOT NULL,
                     nombre VARCHAR(40), 
                     apellido VARCHAR(40));

-- PRIMARY KEYS
ALTER TABLE vehiculo ADD PRIMARY KEY(idVehiculo);
ALTER TABLE marcas ADD PRIMARY KEY(idMarca);
ALTER TABLE modelos ADD PRIMARY KEY(idModelo);
ALTER TABLE cliente ADD PRIMARY KEY(idCliente);
