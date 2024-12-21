USE KLINIK

DROP SEQUENCE IF EXISTS ID_DOK, ID_PAS, ID_PEM, ID_RES;

CREATE SEQUENCE ID_DOK START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE ID_PAS START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE ID_PEM START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE ID_RES START WITH 1 INCREMENT BY 1;

DROP PROCEDURE IF EXISTS INSERT_DOK, INSERT_PAS, INSERT_PEM, INSERT_RES;



-- PROCEDURE UNTUK INSERT KE TABEL DOKTER
CREATE PROCEDURE INSERT_DOK
    @id_prefix VARCHAR(8),
    @nama_dokter VARCHAR(100),
    @spesialisasi VARCHAR(20),
    @telp_dokter VARCHAR(15),
    @jadwal_praktik VARCHAR(10)
AS
BEGIN
    DECLARE @NEW_DOK_ID VARCHAR(10);
    IF @id_prefix = 'DOK_'
        SET @NEW_DOK_ID = CONCAT(@id_prefix, NEXT VALUE FOR ID_DOK);
    INSERT INTO DOKTER (id_dokter, nama_dokter, spesialisasi, telp_dokter, jadwal_praktik) 
    VALUES (@NEW_DOK_ID, @nama_dokter, @spesialisasi, @telp_dokter, @jadwal_praktik);
END;



-- PROCEDURE UNTUK INSERT KE TABEL PASIEN
CREATE PROCEDURE INSERT_PAS
    @id_prefix VARCHAR(20),
	@nama_pasien VARCHAR(100),
	@keluhan VARCHAR(50),
	@jenis_kelamin VARCHAR(20),
	@tanggal_lahir DATE,
	@alamat VARCHAR(100),
	@no_hp VARCHAR(15),
	@id_petugas VARCHAR(8)
AS
BEGIN
    DECLARE @NEW_PAS_ID VARCHAR(10);
    IF @id_prefix = 'PAS_'
        SET @NEW_PAS_ID = CONCAT(@id_prefix, NEXT VALUE FOR ID_PAS);
    INSERT INTO PASIEN (id_pasien, nama_pasien, keluhan, jenis_kelamin, tanggal_lahir, alamat, no_hp, id_petugas) 
    VALUES (@NEW_PAS_ID, @nama_pasien, @keluhan, @jenis_kelamin, @tanggal_lahir, @alamat, @no_hp, @id_petugas);
END;



-- PROCEDURE UNTUK INSERT KE TABEL PEMERIKSAAN
CREATE PROCEDURE INSERT_PEM
    @id_prefix VARCHAR(8),
	@id_dokter VARCHAR(8),
	@id_pasien VARCHAR(20),
	@id_ruangan VARCHAR(8),
	@tanggal_periksa DATE,
	@diagnosa VARCHAR(50),
	@biaya FLOAT
AS
BEGIN
    DECLARE @NEW_PEM_ID VARCHAR(10);
    IF @id_prefix = 'PEM_'
        SET @NEW_PEM_ID = CONCAT(@id_prefix, NEXT VALUE FOR ID_PEM);
    INSERT INTO pemeriksaan (id_periksa, id_dokter, id_pasien, id_ruangan, tanggal_periksa, diagnosa, biaya) 
    VALUES (@NEW_PEM_ID, @id_dokter, @id_pasien, @id_ruangan, @tanggal_periksa, @diagnosa, @biaya);
END;



-- PROCEDURE UNTUK INSERT KE TABEL RESEP
CREATE PROCEDURE INSERT_RES
    @id_prefix VARCHAR(8),
	@id_obat VARCHAR(8),
	@id_pasien VARCHAR(20),
	@id_dokter VARCHAR(8)
AS
BEGIN
    DECLARE @NEW_RES_ID VARCHAR(10);
    IF @id_prefix = 'RES_'
        SET @NEW_RES_ID = CONCAT(@id_prefix, NEXT VALUE FOR ID_RES);
    INSERT INTO resep (id_resep, id_obat, id_pasien, id_dokter) 
    VALUES ( @NEW_RES_ID, @id_obat, @id_pasien, @id_dokter);
END;








