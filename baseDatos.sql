-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS UsuariosDB;
USE UsuariosDB;

-- Crear la tabla usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    correoElectronico VARCHAR(255) NOT NULL,
    contrasenia VARCHAR(255) NOT NULL
);

-- Insertar los registros en la tabla usuarios
INSERT INTO usuarios (correoElectronico, contrasenia) VALUES
('ana.perez@hotmail.com', '12345'),
('juan.garcia@gmail.com', '67890'),
('maria.rodriguez@hotmail.com', 'abcde'),
('carlos.lopez@gmail.com', 'qwerty'),
('laura.martinez@hotmail.com', '987654'),
('pedro.sanchez@gmail.com', 'password'),
('sofia.fernandez@hotmail.com', 'secreto'),
('diego.gonzalez@gmail.com', 'iloveyou'),
('valentina.ruiz@hotmail.com', '1a2b3c4d'),
('andres.morales@gmail.com', 'abcd1234');

-- Crear la base de datos y usarla
CREATE DATABASE IF NOT EXISTS UsuariosDB;
USE UsuariosDB;

-- Crear la tabla usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    correoElectronico VARCHAR(255) NOT NULL,
    contrasenia VARCHAR(255) NOT NULL
);

-- Insertar los registros en la tabla usuarios
INSERT INTO usuarios (correoElectronico, contrasenia) VALUES
('ana.perez@hotmail.com', '12345'),
('juan.garcia@gmail.com', '67890'),
('maria.rodriguez@hotmail.com', 'abcde'),
('carlos.lopez@gmail.com', 'qwerty'),
('laura.martinez@hotmail.com', '987654'),
('pedro.sanchez@gmail.com', 'password'),
('sofia.fernandez@hotmail.com', 'secreto'),
('diego.gonzalez@gmail.com', 'iloveyou'),
('valentina.ruiz@hotmail.com', '1a2b3c4d'),
('andres.morales@gmail.com', 'abcd1234');

SELECT * FROM usuarios;
