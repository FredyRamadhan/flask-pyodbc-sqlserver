USE KLINIK


-- EXECUTE PROCEDURE INSERT DOKTER, PREFIX JANGAN DIUBAH, ID-NYA GAUSAH DIMASUKIN, GENERATED AUTOMATICALLY
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Anwar', @spesialisasi = 'Umum', @telp_dokter = '081234567890', @jadwal_praktik = 'Senin';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Budi', @spesialisasi = 'Anak', @telp_dokter = '082345678901', @jadwal_praktik = 'Selasa';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Citra', @spesialisasi = 'THT', @telp_dokter = '083456789012', @jadwal_praktik = 'Rabu';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Dina', @spesialisasi = 'Anak', @telp_dokter = '084567890123', @jadwal_praktik = 'Kamis';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Eko', @spesialisasi = 'Gigi', @telp_dokter = '085678901234', @jadwal_praktik = 'Jumat';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Farah', @spesialisasi = 'Umum', @telp_dokter = '086789012345', @jadwal_praktik = 'Sabtu';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Guntur', @spesialisasi = 'Gigi', @telp_dokter = '087890123456', @jadwal_praktik = 'Minggu';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Hana', @spesialisasi = 'THT', @telp_dokter = '088901234567', @jadwal_praktik = 'Senin';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Ivan', @spesialisasi = 'Kandungan', @telp_dokter = '089012345678', @jadwal_praktik = 'Selasa';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Joko', @spesialisasi = 'Kandungan', @telp_dokter = '089123456789', @jadwal_praktik = 'Rabu';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Karin', @spesialisasi = 'Gigi', @telp_dokter = '089234567890', @jadwal_praktik = 'Kamis';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Lisa', @spesialisasi = 'Umum', @telp_dokter = '089345678901', @jadwal_praktik = 'Jumat';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Miko', @spesialisasi = 'Kandungan', @telp_dokter = '089456789012', @jadwal_praktik = 'Sabtu';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Nita', @spesialisasi = 'Anak', @telp_dokter = '089567890123', @jadwal_praktik = 'Minggu';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Oki', @spesialisasi = 'THT', @telp_dokter = '089678901234', @jadwal_praktik = 'Senin';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Java', @spesialisasi = 'Mata', @telp_dokter = '081236547896', @jadwal_praktik = 'Sabtu';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = 'Bunga', @spesialisasi = 'Penyakit Dalam', @telp_dokter = '082134956847', @jadwal_praktik = 'Selasa';



-- EXECUTE PROCEDURE INSERT PASIEN, PREFIX JANGAN DIUBAH, ID-NYA GAUSAH DIMASUKIN, GENERATED AUTOMATICALLY
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Andi', @keluhan = 'Demam tinggi', @jenis_kelamin = 'L', @tanggal_lahir = '2015-07-20', @alamat = 'Jl. Melati No. 5', @no_hp = '081234567890', @id_petugas = 'A001'; 
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Siti', @keluhan = 'Sakit tenggorokan', @jenis_kelamin = 'P', @tanggal_lahir = '1992-05-15', @alamat = 'Jl. Mawar No. 3', @no_hp = '081234567891', @id_petugas = 'A002'; 
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Dewi', @keluhan = 'Nyeri saat hamil', @jenis_kelamin = 'P', @tanggal_lahir = '1989-10-22', @alamat = 'Jl. Anggrek No. 7', @no_hp = '081234567892', @id_petugas = 'A003'; 
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Budi', @keluhan = 'Gigi berlubang', @jenis_kelamin = 'L', @tanggal_lahir = '2000-08-08', @alamat = 'Jl. Tulip No. 12', @no_hp = '081234567893', @id_petugas = 'A003';
-- EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Rina', @keluhan = 'Pusing dan flu', @jenis_kelamin = 'P', @tanggal_lahir = '1975-01-13', @alamat = 'Jl. Kenanga No. 10', @no_hp = '081234567894', @id_petugas = ''; 
-- EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Joko', @keluhan = 'Batuk berdahak', @jenis_kelamin = 'L', @tanggal_lahir = '1985-03-18', @alamat = 'Jl. Dahlia No. 9', @no_hp = '081234567895', @id_petugas = ''; 
-- EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Rudi', @keluhan = 'Demam dan diare', @jenis_kelamin = 'L', @tanggal_lahir = '1990-04-12', @alamat = 'Jl. Sakura No. 11', @no_hp = '081234567896', @id_petugas = ''; 
-- EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Lina', @keluhan = 'Gigi bengkak', @jenis_kelamin = 'P', @tanggal_lahir = '1995-09-29', @alamat = 'Jl. Teratai No. 4', @no_hp = '081234567897', @id_petugas = ''; 
-- EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Tina', @keluhan = 'Sesak nafas', @jenis_kelamin = 'P', @tanggal_lahir = '2001-06-06', @alamat = 'Jl. Bakung No. 2', @no_hp = '081234567898', @id_petugas = '';
-- EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Ahmad', @keluhan = 'Cacar air', @jenis_kelamin = 'L', @tanggal_lahir = '2012-11-02', @alamat = 'Jl. Kamboja No. 14', @no_hp = '081234567899', @id_petugas = ''; 
-- EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Fajar', @keluhan = 'Nyeri dada', @jenis_kelamin = 'L', @tanggal_lahir = '1983-07-30', @alamat = 'Jl. Cemara No. 6', @no_hp = '081234567800', @id_petugas = ''; 
-- EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Nisa', @keluhan = 'Sakit gigi', @jenis_kelamin = 'P', @tanggal_lahir = '1997-12-25', @alamat = 'Jl. Flamboyan No. 1', @no_hp = '081234567801', @id_petugas = '';
-- EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Bayu', @keluhan = 'Demam tinggi', @jenis_kelamin = 'L', @tanggal_lahir = '2008-09-14', @alamat = 'Jl. Nusa Indah No. 2', @no_hp = '081234567802', @id_petugas = ''; 
-- EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Fitri', @keluhan = 'Pusing terus-menerus', @jenis_kelamin = 'P', @tanggal_lahir = '1978-11-08', @alamat = 'Jl. Cempaka No. 8', @no_hp = '081234567803', @id_petugas = '';
-- EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Dian', @keluhan = 'Nyeri gusi', @jenis_kelamin = 'P', @tanggal_lahir = '1994-04-19', @alamat = 'Jl. Teratai Putih No. 10', @no_hp = '081234567804', @id_petugas = ''; 


-- Data Pemeriksaan Klinik
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_2', @id_pasien = 'PAS_1', @id_ruangan = 'R001', @tanggal_periksa = '2024-12-20', @diagnosa = 'Demam berdarah', @biaya = 200000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_3', @id_pasien = 'PAS_2', @id_ruangan = 'R002', @tanggal_periksa = '2024-12-20', @diagnosa = 'Radang tenggorokan', @biaya = 150000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_4', @id_pasien = 'PAS_3', @id_ruangan = 'R003', @tanggal_periksa = '2024-12-20', @diagnosa = 'Kehamilan bermasalah', @biaya = 300000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_6', @id_pasien = 'PAS_4', @id_ruangan = 'R004', @tanggal_periksa = '2024-12-20', @diagnosa = 'Karies gigi', @biaya = 100000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_1', @id_pasien = 'PAS_5', @id_ruangan = 'R005', @tanggal_periksa = '2024-12-20', @diagnosa = 'Influenza', @biaya = 150000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_1', @id_pasien = 'PAS_6', @id_ruangan = 'R005', @tanggal_periksa = '2024-12-20', @diagnosa = 'Bronkitis ringan', @biaya = 180000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_1', @id_pasien = 'PAS_7', @id_ruangan = 'R005', @tanggal_periksa = '2024-12-20', @diagnosa = 'Gastroenteritis', @biaya = 200000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_6', @id_pasien = 'PAS_8', @id_ruangan = 'R004', @tanggal_periksa = '2024-12-20', @diagnosa = 'Abses periodontal', @biaya = 120000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_3', @id_pasien = 'PAS_9', @id_ruangan = 'R002', @tanggal_periksa = '2024-12-20', @diagnosa = 'Asma akut', @biaya = 250000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_2', @id_pasien = 'PAS_10', @id_ruangan = 'R001', @tanggal_periksa = '2024-12-20', @diagnosa = 'Varisela', @biaya = 150000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_1', @id_pasien = 'PAS_11', @id_ruangan = 'R005', @tanggal_periksa = '2024-12-20', @diagnosa = 'Angina pectoris', @biaya = 300000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_6', @id_pasien = 'PAS_12', @id_ruangan = 'R004', @tanggal_periksa = '2024-12-20', @diagnosa = 'Pulpitis', @biaya = 100000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_2', @id_pasien = 'PAS_13', @id_ruangan = 'R001', @tanggal_periksa = '2024-12-20', @diagnosa = 'Demam tinggi tanpa komplikasi', @biaya = 200000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_1', @id_pasien = 'PAS_14', @id_ruangan = 'R005', @tanggal_periksa = '2024-12-20', @diagnosa = 'Vertigo', @biaya = 180000;
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = 'DOK_6', @id_pasien = 'PAS_15', @id_ruangan = 'R004', @tanggal_periksa = '2024-12-20', @diagnosa = 'Gingivitis', @biaya = 120000;


-- Data Resep
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_1', @id_pasien = 'PAS_1', @id_dokter = 'DOK_2'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_2', @id_pasien = 'PAS_2', @id_dokter = 'DOK_3';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_3', @id_pasien = 'PAS_3', @id_dokter = 'DOK_4'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_4', @id_pasien = 'PAS_4', @id_dokter = 'DOK_6'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_5', @id_pasien = 'PAS_5', @id_dokter = 'DOK_1'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_6', @id_pasien = 'PAS_6', @id_dokter = 'DOK_1'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_7', @id_pasien = 'PAS_7', @id_dokter = 'DOK_1'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_8', @id_pasien = 'PAS_8', @id_dokter = 'DOK_6'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_9', @id_pasien = 'PAS_9', @id_dokter = 'DOK_3'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_10', @id_pasien = 'PAS_10', @id_dokter = 'DOK_2'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_11', @id_pasien = 'PAS_11', @id_dokter = 'DOK_1'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_12', @id_pasien = 'PAS_12', @id_dokter = 'DOK_6'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_13', @id_pasien = 'PAS_13', @id_dokter = 'DOK_2'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_14', @id_pasien = 'PAS_14', @id_dokter = 'DOK_1'; 
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = 'OBT_15', @id_pasien = 'PAS_15', @id_dokter = 'DOK_6'; 


