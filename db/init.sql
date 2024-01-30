CREATE DATABASE IF NOT EXISTS mi_base_de_datos;

USE mi_base_de_datos;

CREATE TABLE IF NOT EXISTS personas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    empresa_id INT,
    ife VARCHAR(20),
    curp VARCHAR(18),
    rfc VARCHAR(13),
    nss VARCHAR(11),
    tipo_sangre_id INT,
    licencia VARCHAR(20),
    vigencia DATE,
    telefono VARCHAR(15),
    foto_path VARCHAR(255),
    expediente_path VARCHAR(255),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS empresas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(15),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS tipos_sangre (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(10) NOT NULL,
    descripcion VARCHAR(255),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tipos_sangre (nombre, descripcion) VALUES
('A+', 'Tipo A positivo'),
('A-', 'Tipo A negativo'),
('B+', 'Tipo B positivo'),
('B-', 'Tipo B negativo'),
('AB+', 'Tipo AB positivo'),
('AB-', 'Tipo AB negativo'),
('O+', 'Tipo O positivo'),
('O-', 'Tipo O negativo');

INSERT INTO empresas (nombre, direccion, telefono) VALUES
('Empresa 1', 'Dirección 1', '123-456-7890'),
('Empresa 2', 'Dirección 2', '987-654-3210'),
('Empresa 3', 'Dirección 3', '555-123-4567');

INSERT INTO personas (nombre, descripcion, empresa_id, ife, curp, rfc, nss, tipo_sangre_id, licencia, vigencia, telefono, foto_path, expediente_path) VALUES
('Juan Pérez', 'Descripción de Juan Pérez', 1, 'ABC123456', 'PERJ810101HDFXYZ01', 'PERJ810101XYZ', '12345678901', 1, 'LIC123', '2024-01-29', '555-123-4567', '/ruta/foto_juan.jpg', '/ruta/expediente_juan.pdf'),
('María López', 'Descripción de María López', 2, 'XYZ987654', 'LOMM850202MDFXYZ02', 'LOMM850202XYZ', '98765432109', 2, 'LIC456', '2024-02-15', '555-987-6543', '/ruta/foto_maria.jpg', '/ruta/expediente_maria.pdf'),
('Pedro Ramírez', 'Descripción de Pedro Ramírez', 3, 'DEF789012', 'RAMO900303HDFXYZ03', 'RAMO900303XYZ', '45678901234', 3, 'LIC789', '2024-03-05', '555-456-7890', '/ruta/foto_pedro.jpg', '/ruta/expediente_pedro.pdf');
