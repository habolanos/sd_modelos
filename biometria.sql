/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.0 		*/
/*  Created On : 24-feb.-2020 8:48:46 p. m. 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS biometria CASCADE
;

/* Create Tables */

CREATE TABLE biometria
(
	id_biometria numeric(20) NOT NULL   DEFAULT nextval('biometria_seq'),
	huella_digital_01 bytea NULL,
	huella_digital_02 bytea NULL,
	id_cliente varchar(50) NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE biometria ADD CONSTRAINT "PK_biometria"
	PRIMARY KEY (id_biometria)
;

CREATE INDEX "IXFK_biometria_cliente" ON biometria (id_cliente ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE biometria ADD CONSTRAINT "FK_biometria_cliente"
	FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente) ON DELETE Restrict ON UPDATE Restrict
;