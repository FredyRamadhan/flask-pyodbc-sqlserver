USE databaseKelompok4; --memakai databse

--membuat table
CREATE TABLE PASIEN(
	[id_pasien] VARCHAR(8) PRIMARY KEY,
	[nama_pasien] VARCHAR(100),
	[keluhan] VARCHAR(50),
	[tanggal_lahir] DATE
	/*[id_dokter] VARCHAR(10) FOREIGN KEY(),*/
	/*[id_obat] VARCHAR(10) FOREIGN KEY(),*/
	/*[tanggal_periksa] DATE NULL*/

);

CREATE TABLE DOKTER(
	[id_dokter] VARCHAR(8) PRIMARY KEY,
	[nama_dokter] VARCHAR(100),
	[spesialisasi] VARCHAR(20),
	[telp_dokter] VARCHAR (15),
	[jadwal_praktik] VARCHAR(10),
	--[id_ruangan] VARCHAR(4)
);


CREATE TABLE OBAT(
	[id_obat] VARCHAR(8) PRIMARY KEY,
	[nama_obat] VARCHAR(100),
	[id_dokter] VARCHAR(8),
	FOREIGN KEY (id_dokter) REFERENCES [dokter] (id_dokter),
	[harga] VARCHAR (15),
	[stok] int,
	[jenis] VARCHAR(10)
);


--masukkan data ke tabel
SELECT * FROM PASIEN;
INSERT INTO PASIEN (id_pasien, nama_pasien, keluhan)
VALUES
	('P0123', 'Bejo Sutejo', 'demam'),
	('P0124', 'Bejo Tenan', 'stroke'),
	('P0125', 'Miranda', 'sakit hati');

SELECT * FROM DOKTER;
INSERT INTO DOKTER (id_dokter, nama_dokter, spesialisasi, telp_dokter, jadwal_praktik)
VALUES
	('D001', 'Heru Teguh', 'Umum', '082345678', 'Senin'),
	('D003', 'Heru Purnomo', 'THT', '0821232342', 'Senin');

	--menampilkan tabel
SELECT * FROM PASIEN;
SELECT * FROM DOKTER;
SELECT * FROM OBAT;

--update nilai pada tabel
--UPDATE [dokter]
SET id_dokter = 'D002',
nama_dokter = 'Sutrisna',
spesialisasi = 'Gigi',
telp_dokter = '085321432543',
jadwal_praktik = 'Selasa',
--id_ruangan = 'R-02';



--menampilkan tabel pilih kolom yg diinginkan
SELECT nama_dokter, spesialisasi
FROM DOKTER

--tambah kolom
ALTER TABLE DOKTER ADD [umur] INT

--update 1 kolom beda baris beda nilai
UPDATE DOKTER
SET [umur] = CASE
	WHEN id_dokter = 'D001' THEN 45
	WHEN id_dokter = 'D002' THEN 37
	WHEN id_dokter = 'D003' THEN 40
END
	WHERE id_dokter IN ('D001', 'D002', 'D003');

--menampilkan tabel dan operator logika
--untuk yang mengandung nilai, pakai LIKE
SELECT * FROM DOKTER
WHERE telp_dokter LIKE '%085%' OR umur >=40
ORDER BY id_ruangan ASC;
