USE databaseKelompok4;

DROP TABLE IF EXISTS DOKTER;
CREATE TABLE DOKTER (
	[id_dokter] 	VARCHAR (20) 	PRIMARY KEY,
	[nama] 		VARCHAR (25) 	NOT NULL,
	[spesialisasi]	VARCHAR (10)	NOT NULL,
	[telepon]	VARCHAR (20) 	NOT NULL,

	--[JADWAL_PRAKTIK] VARCHAR (20) NOT NULL	
	--[ID_RUANGAN] VARCHAR (5) NOT NULL FOREIGN KEY()
);

INSERT INTO DOKTER (ID_DOKTER, NAMA, SPESIALISASI, TELEPON)
VALUES 	('D01A001M', 'NAUFAL BAGUS', 'UMUM', '081638261212'),
	('D02A002F', 'AYU WULANDARI', 'UMUM', '081358377612'),
	('D03A001M', 'RAHMAT KURNIAWAN', 'UMUM', '081281023324')
	('D04A004M', 'Reza Hidayat', 'Umum', '081944220571'),
	('D05B001F', 'Candra Kirana', 'Gigi', '081899020861'),
	('D06B002F', 'Raina Dahayu', 'Gigi', '081299865975'),
	('D07A003M', 'Faiz Ramdhan', 'Gigi', '081937148983'),
	('D08C001M', 'Jayden Petra', 'THT', '081224086515'),
	('D09C002M', 'Satria Atmaja', 'THT', '081461272902'),
	('D10D001F', 'Putri Pertiwi', 'Anak', '081698323799'),
	('D11D002F', 'Rusmawati', 'Anak', '081466669160'),
	('D12D003F', 'Andine Sasmita', 'Anak', '081778984630'),
	('D13D004M', 'Bramastya', 'Anak', '081509883811'),
	('D14E001F', 'Danisha Kinan Putri', 'Kandungan', '081306416233'),
	('D15E002F', 'Kayla Sinta Rahma', 'Kandungan', '081518485316');
SELECT * from dokter;

