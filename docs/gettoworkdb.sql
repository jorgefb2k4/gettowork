-- Crear DB
CREATE DATABASE IF NOT EXISTS gettoworkdb;
USE gettoworkdb;

-- Crear la tabla de Usuario
CREATE TABLE usuarios (
	usuario_id int AUTO_INCREMENT PRIMARY KEY,
    usuario_email VARCHAR(50),
    usuario_nombre VARCHAR(50),
    usuario_apellido VARCHAR(100),
    usuario_admin VARCHAR(2),
    usuario_clave VARCHAR(10)
);

-- Crear la tabla de Puesto de trabajo
CREATE TABLE puestos (
    puesto_id int AUTO_INCREMENT PRIMARY KEY,
    puesto_numero VARCHAR(3),
    puesto_descripcion VARCHAR(100),
    puesto_disponibilidad VARCHAR(2),
    puesto_comentario VARCHAR(100)
);

-- Crear la tabla de Reserva
CREATE TABLE reservas (
    reserva_id int AUTO_INCREMENT PRIMARY KEY,
    reserva_fecha DATE,
    reserva_usuario_id int,
    reserva_puesto_id int,
    FOREIGN KEY (reserva_usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (reserva_puesto_id) REFERENCES puestos(puesto_id)
);

-- Añadir usuarios
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('admin@gmail.com','Admin','Administrator','Si','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('jorgefb2k4@gmail.com','Jorge','Ferández','Si','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('manuelfh@gmail.com','Manuel','Fernández','Si','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('juan.molina@outlook.com','Juan','Molina','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('pepe.garcia@gmail.com','Pepe','Garcia','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('maria.almonte@gmail.com','Maria','Almonte','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('noelia.berenjena@outlook.com','Noelia','Berenjena','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('sebastian.collantes@gmail.com','Sebastian','Collantes','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('adrian.ramiro@outlook.com','Adrian','Ramiro','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('monica.garcia@gmail.com','Monica','Garcia','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('carmen.fernandez@outlook.com','Carmen','Fernandez','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('almudena.bayo@gmail.com','Almudena','Bayo','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('antonio.fernandez@outlook.com','Antonio','Fernandez','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('guillermo.guadalix@gmail.com','Guillermo','Guadalix','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('claudia.guadalix@outlook.com','Claudia','Guadalix','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('pablo.fernadez@gmail.com','Pablo','Fernadez','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('andres.bayo@gmail.com','Andres','Bayo','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('monica.molina@gmail.com','Monica','Molina','No','Passw0rd');
INSERT INTO usuarios (usuario_email, usuario_nombre, usuario_apellido, usuario_admin,usuario_clave) VALUES ('noelia.ramiro@outlook.com','Noelia','Ramiro','No','Passw0rd');

-- Añadir puestos
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('101','Planta 1. Puesto 1','Si','');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('102','Planta 1. Puesto 2','Si','');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('103','Planta 1. Puesto 3','Si','');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('104','Planta 1. Puesto 4','Si','');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('105','Planta 1. Puesto 5','Si','');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('201','Planta 2. Puesto 1','No','No hay corriente');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('202','Planta 2. Puesto 2','Si','');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('203','Planta 2. Puesto 3','Si','');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('204','Planta 2. Puesto 4','No','Falta silla');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('205','Planta 2. Puesto 5','Si','');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('301','Planta 3. Puesto 1','Si','');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('302','Planta 3. Puesto 2','Si','');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('303','Planta 3. Puesto 3','Si','');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('304','Planta 3. Puesto 4','Si','');
INSERT INTO puestos (puesto_numero, puesto_descripcion, puesto_disponibilidad, puesto_comentario) VALUES ('305','Planta 3. Puesto 5','Si','');

-- Añadir reservas
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/07/09','1','4');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/08/10','2','3');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/09/11','3','14');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/10/12','12','1');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/07/13','13','10');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/12/14','2','12');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/10/15','8','11');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/07/16','10','6');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/10/17','14','10');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/10/18','1','15');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/07/19','2','2');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/10/20','3','3');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/09/21','4','11');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/08/22','10','12');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/08/23','18','14');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/07/24','12','2');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/07/25','15','4');
INSERT INTO reservas (reserva_fecha, reserva_usuario_id, reserva_puesto_id) VALUES ('2024/10/26','4','8');