-- DROP DATABASE IF EXISTS db;

CREATE DATABASE db;
USE db;

-- DROP TABLE IF EXISTS vehiculo;
CREATE TABLE vehiculo (idVehiculo INTEGER NOT NULL, 
                       patente VARCHAR(10), 
                       anio YEAR,
                       idCliente INTEGER NOT NULL,
                       idMarca INTEGER NOT NULL,
                       idModelo INTEGER NOT NULL
                       );

-- DROP TABLE IF EXISTS marca;
CREATE TABLE marca (idMarca INTEGER NOT NULL, 
                    nombre VARCHAR(40));

-- DROP TABLE IF EXISTS modelo;
CREATE TABLE modelo (idModelo INTEGER NOT NULL, 
                     nombre VARCHAR(40));

-- DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente (idCliente INTEGER NOT NULL,
                     nombre VARCHAR(40), 
                     apellido VARCHAR(40));

-- PRIMARY KEYS
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_pk PRIMARY KEY(idVehiculo);
ALTER TABLE marca ADD CONSTRAINT marca_pk PRIMARY KEY(idMarca);
ALTER TABLE modelo ADD CONSTRAINT modelo_pk PRIMARY KEY(idModelo);
ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY(idCliente);

--FOREIGN KEYS
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_fk0 FOREIGN KEY (idCliente) REFERENCES cliente(idCliente);
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_fk1 FOREIGN KEY (idMarca) REFERENCES marca(idMarca);
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_fk2 FOREIGN KEY (idModelo) REFERENCES modelo(idModelo);

--INSERCIÓN DE DATOS
INSERT INTO cliente VALUES (1, 'Fabian', 'Perez');
INSERT INTO cliente VALUES (2, 'Pablo', 'Gonzalez');
INSERT INTO cliente VALUES (3, 'Paula', 'Lopez');
INSERT INTO cliente VALUES (4, 'Karina', 'Gutierrez');
INSERT INTO cliente VALUES (5, 'Dario', 'Fernandez');

INSERT INTO marca VALUES (1, 'Ford');
INSERT INTO marca VALUES (2, 'Fiat');
INSERT INTO marca VALUES (3, 'Chevrolet');

INSERT INTO modelo VALUES (1, 'Ecosport');
INSERT INTO modelo VALUES (2, 'Onix');
INSERT INTO modelo VALUES (3, 'Camaro');
INSERT INTO modelo VALUES (4, 'Uno');
INSERT INTO modelo VALUES (5, 'Fiorino');
INSERT INTO modelo VALUES (6, 'Fiesta');

INSERT INTO vehiculo VALUES (1, 'AAA822','2021', 1, 1, 1);
INSERT INTO vehiculo VALUES (2, 'ABC123','2019', 2, 2, 4);
INSERT INTO vehiculo VALUES (3, 'ABC222','2020', 3, 3, 2);
INSERT INTO vehiculo VALUES (4, 'AAA444','2020', 4, 1, 6);
INSERT INTO vehiculo VALUES (5, 'JWR222','2009', 4, 2, 4);
INSERT INTO vehiculo VALUES (6, 'AAA445','2011', 5, 1, 5);
INSERT INTO vehiculo VALUES (7, 'AAA443','2008', 5, 3, 3);


-- CONSULTA
SELECT c.nombre, c.apellido, v.patente, m.nombre AS marca, n.nombre AS modelo, v.anio AS año
    FROM vehiculo AS v
    INNER JOIN cliente AS c ON v.idCliente = c.idCliente
    INNER JOIN marca AS m ON v.idMarca = m.idMarca
    INNER JOIN modelo AS n ON v.idModelo = n.idModelo; 