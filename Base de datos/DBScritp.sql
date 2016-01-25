CREATE DATABASE IF NOT EXISTS gasadmin;
USE gasadmin;

CREATE TABLE IF NOT EXISTS usuarios (
		id_usu		 	VARCHAR(15),
        id_cli			VARCHAR(15)		NULL,
		nombre		 	VARCHAR(100)	NOT NULL,
		apellidos	 	VARCHAR(30) 	NOT NULL,
		direccion		VARCHAR(400)	NULL,
        rfc				VARCHAR(20)		NULL,
        telefono		VARCHAR(15)		NULL,
        correo			VARCHAR(30)		NULL,
        empresa			VARCHAR(60)		NULL,
        tip_usu			VARCHAR(60) 	NOT NULL,
        pass			VARCHAR(15)  	NOT NULL,
        tip_reg			VARCHAR(20)		NOT NULL,
        activo			BOOLEAN			NOT NULL,
        imagen			LONGBLOB		NULL,
        hora			VARCHAR(15)		NOT NULL,
		fecha		 	DATE 			NOT NULL,
    PRIMARY KEY (id_usu)
);

CREATE TABLE IF NOT EXISTS estacion (
		num_est		 	VARCHAR(15),
        id_usu			VARCHAR(15)		NULL,
		nombre		 	VARCHAR(100)	NOT NULL,
		direccion		VARCHAR(400)	NOT NULL,
        gerente			VARCHAR(60)		NOT NULL,
        telefono		VARCHAR(15)		NULL,
        horario			VARCHAR(60)		NULL,
        activo			BOOLEAN			NOT NULL,
        hora			VARCHAR(15)		NULL,
		fecha		 	DATE 			NULL,
    PRIMARY KEY (num_est)
);



