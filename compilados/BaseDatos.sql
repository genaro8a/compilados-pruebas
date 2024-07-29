
CREATE DATABASE administracion_clientes;

USE administracion_clientes;

CREATE TABLE personas (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(255),
    genero NVARCHAR(10),
    edad INT,
    identificacion NVARCHAR(255),
    direccion NVARCHAR(255),
    telefono NVARCHAR(255)
);

CREATE TABLE clientes (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    persona_id BIGINT,
    cliente_id NVARCHAR(255),
    contrasena NVARCHAR(255),
    estado BIT,
    FOREIGN KEY (persona_id) REFERENCES personas(id)
);
CREATE TABLE cuentas (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    cliente_id BIGINT,
    numero_cuenta VARCHAR(255) NOT NULL,
    tipo_cuenta VARCHAR(255) NOT NULL,
    saldo_inicial DECIMAL(10, 2) NOT NULL,
    estado BIT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);


CREATE TABLE movimientos (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    cuenta_id BIGINT,
    fecha DATETIME NOT NULL,
    tipo_movimiento VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    saldo DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (cuenta_id) REFERENCES cuentas(id) ON DELETE CASCADE
);
