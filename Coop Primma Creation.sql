#CREACION BD

CREATE DATABASE COOP_PRIMMA;
use COOP_PRIMMA;

CREATE TABLE STATUS (
ID_status int primary key,
estado varchar(20)
);

#CREACION USUARIOS (EMPLEADOS) 

CREATE TABLE usuarios (
	usuario_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	cedula VARCHAR(11) NOT NULL,
	usuario VARCHAR(50) NOT NULL,
	password VARCHAR(100) NOT NULL,
	ID_Status int,

  foreign key (ID_Status) references status(ID_status)
);

CREATE TABLE roles (
  rol_id INT PRIMARY KEY  NOT NULL,
  nombreRol VARCHAR(50) NOT NULL
);


CREATE TABLE usuarios_roles (
  usuario_id INT NOT NULL,
  rol_id INT NOT NULL
);


#CREACION TABLAS 
CREATE TABLE tipoDocumento (
	ID_tipoDocumento int primary key,
	documento varchar (10)
	);

CREATE TABLE situacionLaboral (
	ID_situacionlaboral int primary key,
	estadolaboral varchar (20)
	);

CREATE TABLE sociosInfo (
	IDsocio int primary key Not null AUTO_INCREMENT,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	ID_tipoDocumento int,
	doc_socio int not null,
	direccion varchar (100) not null,
	provincia varchar (50) not null,
	telefono1 BIGINT NOT NULL DEFAULT 0,
	telefono2 BIGINT NOT NULL DEFAULT 0,
	email varchar (50) not null,
	ID_situacionLaboral int not null, 
	lugarTrabajo varchar (50) not null, 
	areaTrabajo varchar (50) not null,
	posicionTrabajo varchar (50) not null,
	sueldoTrabajo int not null,
	inicioTrabajo date not null,
	ID_Status int,

foreign key (ID_Status) references status(ID_status),
foreign key (ID_tipoDocumento) references tipoDocumento(ID_tipoDocumento),
foreign key (ID_situacionLaboral) references situacionLaboral(ID_situacionLaboral),
	fecha_creacion DATE NOT NULL,
	fecha_actualizacion DATE NOT NULL
);



#CREACION TABLA CUENTAS


CREATE TABLE tipoCuenta (
	ID_tipoCuenta int primary key not null,
	cuentaTipo varchar (20)
);

CREATE TABLE cuentas (
	ID_tipoCuenta int NOT NULL AUTO_INCREMENT,
	cuenta_id INT PRIMARY KEY NOT NULL,
	IDsocio INT NOT NULL,
	balance DECIMAL(10,2) NOT NULL,
	fecha_creacion DATE NOT NULL,
	fecha_actualizacion DATE NOT NULL,
	ID_Status int,

foreign key (ID_Status) references status(ID_status),
foreign key (ID_tipoCuenta) references tipoCuenta(ID_tipoCuenta)

);

CREATE TABLE tipos_transacciones (
  tipo_transaccion_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL
);

CREATE TABLE cuentas_transacciones (
  cuenta_transaccion_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  cuenta_id INT NOT NULL,
  tipo_transaccion_id INT NOT NULL,
  monto DECIMAL(10,2) NOT NULL,
  fecha_creacion DATE NULL DEFAULT NULL,
  fecha_actualizacion DATE NULL DEFAULT NULL
);

CREATE TABLE prestamos (
	prestamo_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	IDsocio INT NOT NULL,
	balance_inicial DECIMAL(10,2) NOT NULL,
	balance DECIMAL(10,2) NOT NULL,
	tasa_interes DECIMAL(10,2) NOT NULL,
	plazo int not null,
	cuotas_restantes INTEGER NOT NULL,
	monto_cuota DECIMAL(10,2) NOT NULL,
	fecha_creacion DATE NOT NULL,
	fecha_actualizacion DATE NOT NULL,
	ID_Status int,

foreign key (ID_Status) references status(ID_status)
);

CREATE TABLE prestamos_transacciones (
  prestamo_transaccion_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  prestamo_id INT NOT NULL,
  tipo_transaccion_id INT NOT NULL,
  monto DECIMAL(10,2) NOT NULL,
  fecha_creacion DATE NOT NULL,
  fecha_actualizacion DATE NOT NULL
);


#Llaves foraneas--

ALTER TABLE usuarios_roles ADD FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id);
ALTER TABLE usuarios_roles ADD FOREIGN KEY (rol_id) REFERENCES roles (rol_id);
ALTER TABLE cuentas ADD FOREIGN KEY (IDsocio) REFERENCES sociosInfo (IDsocio);
ALTER TABLE cuentas_transacciones ADD FOREIGN KEY (cuenta_id) REFERENCES cuentas (cuenta_id);
ALTER TABLE cuentas_transacciones ADD FOREIGN KEY (tipo_transaccion_id) REFERENCES tipos_transacciones (tipo_transaccion_id);
ALTER TABLE prestamos ADD FOREIGN KEY (IDsocio) REFERENCES sociosInfo (IDsocio);
ALTER TABLE prestamos_transacciones ADD FOREIGN KEY (prestamo_id) REFERENCES prestamos (prestamo_id);
ALTER TABLE prestamos_transacciones ADD FOREIGN KEY (tipo_transaccion_id) REFERENCES tipos_transacciones (tipo_transaccion_id);