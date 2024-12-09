
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'KLINIK')
BEGIN
    CREATE DATABASE KLINIK;
END
use KLINIK

-- membuat tabel

-- tabel dokter

drop table if exists dokter;
drop table if exists petugas_admin;
drop table if exists pasien;
drop table if exists obat;
drop table if exists ruangan;
drop table if exists resep;
drop table if exists pemeriksaan;
CREATE TABLE dokter(
	id_dokter VARCHAR(8) PRIMARY KEY,
	nama_dokter VARCHAR(100),
	spesialisasi VARCHAR(20),
	telp_dokter VARCHAR(15),
	jadwal_praktik VARCHAR(10)
);

-- tabel petugas admin
CREATE TABLE petugas_admin(
	id_petugas VARCHAR(8) PRIMARY KEY,
	nama_petugas VARCHAR(100)
);

-- tabel pasien
CREATE TABLE pasien(
	id_pasien VARCHAR(20) PRIMARY KEY,
	nama_pasien VARCHAR(100),
	keluhan VARCHAR(50),
	jenis_kelamin VARCHAR(20),
	tanggal_lahir DATE,
	alamat VARCHAR(100),
	no_hp VARCHAR(15),
	id_petugas VARCHAR(8),
	FOREIGN KEY (id_petugas) REFERENCES petugas_admin(id_petugas)
);

-- tabel obat
CREATE TABLE obat(
	id_obat VARCHAR(8) PRIMARY KEY,
	nama_obat VARCHAR(100),
	harga INT,
	stok INT,
	jenis VARCHAR(50)
);

-- tabel ruangan
CREATE TABLE ruangan(
	id_ruangan VARCHAR(8) PRIMARY KEY,
	nama_ruangan VARCHAR(100)
);

-- tabel resep
CREATE TABLE resep(
	id_resep VARCHAR(8) PRIMARY KEY,
	id_obat VARCHAR(8),
	id_pasien VARCHAR(20),
	id_dokter VARCHAR(8),
	FOREIGN KEY (id_obat) REFERENCES obat(id_obat),
	FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien),
	FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter)
);

-- tabel pemeriksaan
CREATE TABLE pemeriksaan(
	id_periksa VARCHAR(8) PRIMARY KEY,
	id_dokter VARCHAR(8),
	id_pasien VARCHAR(20),
	id_ruangan VARCHAR(8),
	tanggal_periksa DATE,
	diagnosa VARCHAR(50),
	biaya FLOAT,
	FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter),
	FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien),
	FOREIGN KEY (id_ruangan) REFERENCES ruangan(id_ruangan)
);
