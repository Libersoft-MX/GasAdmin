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

CREATE TABLE IF NOT EXISTS departamento (
		id_dep		 	INT AUTO_INCREMENT,
        id_usu			VARCHAR(15)		NOT NULL,
		nombre		 	VARCHAR(100)	NOT NULL,
		descripcion		VARCHAR(300)	NULL,
		saldo			VARCHAR(15)		NULL,
        activo			BOOLEAN			NOT NULL,
        hora			VARCHAR(15)		NULL,
		fecha		 	DATE 			NULL,
    PRIMARY KEY (id_dep)
);

CREATE TABLE IF NOT EXISTS vehiculo (
		placa		 	VARCHAR(15),
        id_usu			VARCHAR(15)		NOT NULL,
        marca			VARCHAR(20)		NULL,
        submarca		VARCHAR(20)		NULL,
        modelo			VARCHAR(10)		NULL,
        activo			BOOLEAN			NOT NULL,
        hora			VARCHAR(15)		NULL,
        fecha			DATE			NULL,
        tip_res			BOOLEAN			NULL,
        grup			INT,
        mag				BOOLEAN			NULL,
        pre				BOOLEAN			NULL,
        die				BOOLEAN			NULL,
        res_dia			BOOLEAN			NULL,
        lun				BOOLEAN			NULL,
        mar				BOOLEAN			NULL,
        mie				BOOLEAN			NULL,
        jue				BOOLEAN			NULL,
        vie				BOOLEAN			NULL,
        sab				BOOLEAN			NULL,
        dom				BOOLEAN			NULL,
        max_dia			VARCHAR(10)		NULL,
        tan_lle			BOOLEAN			NULL,
        int_car			INT				NULL,
        lim_men			VARCHAR(20)		NULL,
    PRIMARY KEY (placa)
);

CREATE TABLE IF NOT EXISTS tarjeta (
		id_tar		 	VARCHAR(20),
        id_usu			VARCHAR(15)		NOT NULL,
        monto			VARCHAR(15)		NULL,
        sagna			BOOLEAN			NULL,
        premium			BOOLEAN			NULL,
        diesel			BOOLEAN			NULL,
        activo			BOOLEAN			NOT NULL,
        hora			VARCHAR(15)		NULL,
        fecha			DATE			NULL,
    PRIMARY KEY (id_tar)
);

CREATE TABLE IF NOT EXISTS asig_tar (
		id_reg		 	INT AUTO_INCREMENT,
        id_usu			VARCHAR(15)		NOT NULL,
        id_ope			VARCHAR(15)		NULL,
        id_tar			VARCHAR(20)		NULL,
        id_dep			INT				NULL,
        hora			VARCHAR(15)		NULL,
        fecha			DATE			NULL,
    PRIMARY KEY (id_tar)
);

CREATE TABLE IF NOT EXISTS asig_veh (
		id_reg		 	INT AUTO_INCREMENT,
        id_cli			VARCHAR(15)		NOT NULL,
        id_usu			VARCHAR(15)		NULL,
        placa			VARCHAR(15)		NULL,
        num_est			INT				NULL,
        hora			VARCHAR(15)		NULL,
        fecha			DATE			NULL,
    PRIMARY KEY (id_tar)
);