DROP TABLE IF EXISTS dokter;
USE databaseKelompok4;

CREATE TABLE DOKTER (
	[id_dokter] 	VARCHAR (20) 	PRIMARY KEY,
	[nama] 		VARCHAR (25) 	NOT NULL,
	[spesialisasi]	VARCHAR (10)	NOT NULL,
	[telepon]	VARCHAR (20) 	NOT NULL,

	--[jadwal_praktik] VARCHAR (20) NOT NULL	
	--[id_ruangan] VARCHAR (5) NOT NULL FOREIGN KEY()
);

INSERT INTO DOKTER (id_dokter, nama, spesialisasi, telepon)
VALUES 	('D01A001M', 'Naufal Bagus', 'Umum', '081638261212'),
	('D02A002F', 'Ayu Wulandari', 'Umum', '081358377612'),
	('D03A001M', 'Rahmat Kurniawan', 'Umum', '081281023324');
