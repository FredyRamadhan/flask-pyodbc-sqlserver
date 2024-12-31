USE COBAKLINIK

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
    DECLARE @AVAILABLE_ID VARCHAR(10);

    -- Cari ID yang tersedia (gap dalam urutan ID)
    SELECT TOP 1 @AVAILABLE_ID = CONCAT(@id_prefix, FORMAT(MIN(CAST(SUBSTRING(id_dokter, LEN(@id_prefix) + 1, 3) AS INT) + 1), '000'))
    FROM dokter
    WHERE CAST(SUBSTRING(id_dokter, LEN(@id_prefix) + 1, 3) AS INT) + 1 NOT IN 
          (SELECT CAST(SUBSTRING(id_dokter, LEN(@id_prefix) + 1, 3) AS INT) FROM dokter);

    -- Jika tidak ada gap, gunakan ID baru dari SEQUENCE
    IF @AVAILABLE_ID IS NULL
        SET @NEW_DOK_ID = CONCAT(@id_prefix, FORMAT(NEXT VALUE FOR ID_DOK, '000'));
    ELSE
        SET @NEW_DOK_ID = @AVAILABLE_ID;

    -- Insert data dokter
    INSERT INTO dokter (id_dokter, nama_dokter, spesialisasi, telp_dokter, jadwal_praktik) 
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
    -- Check if id_petugas exists in PETUGAS_ADMIN table
    IF NOT EXISTS (SELECT 1 FROM PETUGAS_ADMIN WHERE id_petugas = @id_petugas)
    BEGIN
        RAISERROR ('ID Petugas tidak ditemukan dalam tabel PETUGAS_ADMIN', 16, 1)
        RETURN
    END

    DECLARE @NEW_PAS_ID VARCHAR(10);
    DECLARE @AVAILABLE_ID VARCHAR(10);

    -- Cari ID yang tersedia (gap dalam urutan ID)
    SELECT TOP 1 @AVAILABLE_ID = CONCAT(@id_prefix, FORMAT(MIN(CAST(SUBSTRING(id_pasien, LEN(@id_prefix) + 1, 3) AS INT) + 1), '000'))
    FROM PASIEN
    WHERE CAST(SUBSTRING(id_pasien, LEN(@id_prefix) + 1, 3) AS INT) + 1 NOT IN 
          (SELECT CAST(SUBSTRING(id_pasien, LEN(@id_prefix) + 1, 3) AS INT) FROM PASIEN);

    -- Jika tidak ada gap, gunakan ID baru dari SEQUENCE
    IF @AVAILABLE_ID IS NULL
        SET @NEW_PAS_ID = CONCAT(@id_prefix, FORMAT(NEXT VALUE FOR ID_PAS, '000'));
    ELSE
        SET @NEW_PAS_ID = @AVAILABLE_ID;

    -- Insert data pasien
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
    -- Check if foreign keys exist in their respective tables
    IF NOT EXISTS (SELECT 1 FROM DOKTER WHERE id_dokter = @id_dokter)
    BEGIN
        RAISERROR ('ID Dokter tidak ditemukan', 16, 1)
        RETURN
    END

    IF NOT EXISTS (SELECT 1 FROM PASIEN WHERE id_pasien = @id_pasien)
    BEGIN
        RAISERROR ('ID Pasien tidak ditemukan', 16, 1)
        RETURN
    END

    IF NOT EXISTS (SELECT 1 FROM RUANGAN WHERE id_ruangan = @id_ruangan)
    BEGIN
        RAISERROR ('ID Ruangan tidak ditemukan', 16, 1)
        RETURN
    END

    DECLARE @NEW_PEM_ID VARCHAR(10);
    DECLARE @AVAILABLE_ID VARCHAR(10);

    -- Cari ID yang tersedia (gap dalam urutan ID)
    SELECT TOP 1 @AVAILABLE_ID = CONCAT(@id_prefix, FORMAT(MIN(CAST(SUBSTRING(id_periksa, LEN(@id_prefix) + 1, 3) AS INT) + 1), '000'))
    FROM PEMERIKSAAN
    WHERE CAST(SUBSTRING(id_periksa, LEN(@id_prefix) + 1, 3) AS INT) + 1 NOT IN 
          (SELECT CAST(SUBSTRING(id_periksa, LEN(@id_prefix) + 1, 3) AS INT) FROM PEMERIKSAAN);

    -- Jika tidak ada gap, gunakan ID baru dari SEQUENCE
    IF @AVAILABLE_ID IS NULL
        SET @NEW_PEM_ID = CONCAT(@id_prefix, FORMAT(NEXT VALUE FOR ID_PEM, '000'));
    ELSE
        SET @NEW_PEM_ID = @AVAILABLE_ID;

    -- Insert data pemeriksaan
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
    -- Check if foreign keys exist in their respective tables
    IF NOT EXISTS (SELECT 1 FROM OBAT WHERE id_obat = @id_obat)
    BEGIN
        RAISERROR ('ID Obat tidak ditemukan', 16, 1)
        RETURN
    END

    IF NOT EXISTS (SELECT 1 FROM PASIEN WHERE id_pasien = @id_pasien)
    BEGIN
        RAISERROR ('ID Pasien tidak ditemukan', 16, 1)
        RETURN
    END

    IF NOT EXISTS (SELECT 1 FROM DOKTER WHERE id_dokter = @id_dokter)
    BEGIN
        RAISERROR ('ID Dokter tidak ditemukan', 16, 1)
        RETURN
    END

    DECLARE @NEW_RES_ID VARCHAR(10);
    DECLARE @AVAILABLE_ID VARCHAR(10);

    -- Cari ID yang tersedia (gap dalam urutan ID)
    SELECT TOP 1 @AVAILABLE_ID = CONCAT(@id_prefix, FORMAT(MIN(CAST(SUBSTRING(id_resep, LEN(@id_prefix) + 1, 3) AS INT) + 1), '000'))
    FROM RESEP
    WHERE CAST(SUBSTRING(id_resep, LEN(@id_prefix) + 1, 3) AS INT) + 1 NOT IN 
          (SELECT CAST(SUBSTRING(id_resep, LEN(@id_prefix) + 1, 3) AS INT) FROM RESEP);

    -- Jika tidak ada gap, gunakan ID baru dari SEQUENCE
    IF @AVAILABLE_ID IS NULL
        SET @NEW_RES_ID = CONCAT(@id_prefix, FORMAT(NEXT VALUE FOR ID_RES, '000'));
    ELSE
        SET @NEW_RES_ID = @AVAILABLE_ID;

    -- Insert data resep
    INSERT INTO resep (id_resep, id_obat, id_pasien, id_dokter) 
    VALUES (@NEW_RES_ID, @id_obat, @id_pasien, @id_dokter);
END;
