DROP DATABASE IF EXISTS pasien;
CREATE DATABASE IF NOT EXISTS pasien;

USE databaseKelompok4;

CREATE TABLE pasien (
	[id_pasien]			VARCHAR(100)	PRIMARY KEY,
	[nama_pasien]		VARCHAR(100)	NOT NULL,
	[keluhan]			VARCHAR(50)		NOT NULL,
	/*
	[tanggal_lahir]		DATE			NOT NULL,
	[id_dokter]			VARCHAR(10)		FOREIGN KEY(),
	[id_obat]			VARCHAR(10)		FOREIGN KEY(),
	[tanggal_periksa]	DATE			NOT NULL,
	*/
);

INSERT INTO pasien (id_pasien, nama_pasien, keluhan)
VALUES
	('P0122', 'Bejo Sutejo', 'demam'),
	('P0123', 'Bejo Suteji', 'pilek'),
	('P0124', 'Bejo Suteja', 'batuk');