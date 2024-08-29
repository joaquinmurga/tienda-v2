CREATE TABLE tienda(
      id int primary key auto_increment,
      name varchar(50),
      id_pais int,
      id_region int,
      id_ciudad int,
      direccion varchar(300),
      estado ENUM('ACTIVA', 'INACTIVA', 'SUSPENDIDA')
);
CREATE TABLE contrato(
      id int primary key auto_increment,
      id_rol int,
      id_empleado int,
      id_tienda int,
      type ENUM('DETERMINADO', 'INDEFINIDO'),
      start date,
      finish,
      date,
      estado ENUM('ACTIVA', 'INACTIVA', 'SUSPENDIDA', 'LICENCIA')
);
CREATE TABLE empleado(
      id int primary key auto_increment,
      rut varchar(9),
      name varchar(50),
      lastname varchar(50),
      email varchar(2048),
      phone int,
      sex ENUM('MALE', 'FEMALE', 'OTHER'),
      birthdate date,
      id_pais int,
      id_region int,
      id_ciudad int,
      direccion varchar(300) --DATOS DE SALUD, PENSIONES Y SEGUROS
);
CREATE TABLE rol(
      id int primary key auto_increment,
      name varchar(100),
      description text,
      salary int
);
CREATE TABLE pais(
      id int primary key auto_increment,
      name varchar(100)
);
CREATE TABLE provincia(
      id int primary key auto_increment,
      id_pais int,
      name varchar(100)
);
CREATE TABLE ciudad(
      id int primary key auto_increment,
      id_provincia int,
      name varchar(100)
);
INSERT INTO pais (name)
VALUES ('CHILE');
INSERT INTO provincia (name, id_pais)
VALUES ('I Región de Tarapacá', 1),
      ('II Región de Antofagasta', 1),
      ('III Región de Atacama', 1),
      ('IV Región de Coquimbo', 1),
      ('V Región de Valparaíso', 1),
      (
            'VI Región del Libertador General Bernardo OHiggins',
            1
      ),
      ('VII Región del Maule', 1),
      ('VIII Región del Biobío', 1),
      ('IX Región de La Araucanía', 1),
      ('X Región de Los Lagos', 1),
      (
            'XI Región de Aysén del General Carlos Ibáñez del Campo',
            1
      ),
      (
            'XII Región de Magallanes y de la Antártica Chilena',
            1
      ),
      ('RM Región Metropolitana de Santiago', 1),
      ('XIV Región de Los Ríos', 1),
      ('XV Región de Arica y Parinacota', 1),
      ('XVI Región de Ñuble', 1);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Iquique', 1),
      ('Alto Hospicio', 1),
      ('Pozo Almonte', 1),
      ('Pica', 1),
      ('Camiña', 1),
      ('Colchane', 1),
      ('Huara', 1),
      ('Mamiña', 1);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Antofagasta', 2),
      ('Calama', 2),
      ('Tocopilla', 2),
      ('Mejillones', 2),
      ('San Pedro de Atacama', 2),
      ('Sierra Gorda', 2),
      ('Maria Elena', 2);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Copiapó', 3),
      ('Vallenar', 3),
      ('Freirina', 3),
      ('Huasco', 3),
      ('Tierra Amarilla', 3),
      ('Chañaral', 3),
      ('Diego de Almagro', 3);
INSERT INTO ciudad (name, id_provincia)
VALUES ('La Serena', 4),
      ('Coquimbo', 4),
      ('Illapel', 4),
      ('Ovalle', 4),
      ('Vicuña', 4),
      ('Andacollo', 4),
      ('Combarbalá', 4),
      ('Monte Patria', 4);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Valparaíso', 5),
      ('Viña del Mar', 5),
      ('San Antonio', 5),
      ('San Felipe', 5),
      ('Los Andes', 5),
      ('Quillota', 5),
      ('La Calera', 5),
      ('La Ligua', 5);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Rancagua', 6),
      ('Machalí', 6),
      ('San Fernando', 6),
      ('Pichilemu', 6),
      ('Chimbarongo', 6),
      ('Santa Cruz', 6),
      ('Las Cabras', 6),
      ('Nancagua', 6);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Talca', 7),
      ('Curicó', 7),
      ('Linares', 7),
      ('Maule', 7),
      ('San Javier', 7),
      ('Colbún', 7),
      ('Constitución', 7),
      ('Rauco', 7);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Concepción', 8),
      ('Chillán', 8),
      ('Los Ángeles', 8),
      ('Coronel', 8),
      ('Talcahuano', 8),
      ('Lota', 8),
      ('Nacimientos', 8),
      ('San Carlos', 8);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Temuco', 9),
      ('Villarrica', 9),
      ('Pucón', 9),
      ('Angol', 9),
      ('Collipulli', 9),
      ('Lautaro', 9),
      ('Cunco', 9),
      ('Freire', 9);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Puerto Montt', 10),
      ('Osorno', 10),
      ('Castro', 10),
      ('Ancud', 10),
      ('Chiloé', 10),
      ('Frutillar', 10),
      ('Puerto Varas', 10),
      ('Llanquihue', 10);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Coyhaique', 11),
      ('Chile Chico', 11),
      ('Puerto Aysén', 11),
      ('Cisnes', 11),
      ('Futaleufú', 11),
      ('La Junta', 11),
      ('Aysén', 11),
      ('Puerto Chacabuco', 11);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Punta Arenas', 12),
      ('Puerto Natales', 12),
      ('Porvenir', 12),
      ('Cabo de Hornos', 12),
      ('Primavera', 12),
      ('Timaukel', 12),
      ('Tierra del Fuego', 12),
      ('Puerto Williams', 12);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Santiago', 13),
      ('Puente Alto', 13),
      ('Maipú', 13),
      ('Las Condes', 13),
      ('Vitacura', 13),
      ('La Florida', 13),
      ('La Pintana', 13),
      ('Estación Central', 13),
      ('San Bernardo', 13),
      ('La Granja', 13),
      ('La Cisterna', 13),
      ('Renca', 13),
      ('Cerro Navia', 13),
      ('Macul', 13),
      ('Peñalolén', 13),
      ('Ñuñoa', 13),
      ('Providencia', 13),
      ('Recoleta', 13),
      ('San Miguel', 13),
      ('San Joaquín', 13);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Valdivia', 14),
      ('Lanco', 14),
      ('La Unión', 14),
      ('Río Bueno', 14),
      ('Panguipulli', 14),
      ('Mariquina', 14),
      ('Los Lagos', 14),
      ('Corral', 14);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Arica', 15),
      ('Putre', 15),
      ('Camina', 15),
      ('Parinacota', 15),
      ('San Miguel de Azapa', 15),
      ('Codpa', 15),
      ('Chapiquiña', 15);
INSERT INTO ciudad (name, id_provincia)
VALUES ('Chillán', 16),
      ('San Carlos', 16),
      ('Yungay', 16),
      ('Ñiquén', 16),
      ('Bulnes', 16),
      ('Coihueco', 16),
      ('Pinto', 16),
      ('Quirihue', 16);