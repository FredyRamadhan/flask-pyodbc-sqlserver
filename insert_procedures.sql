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

SELECT * FROM DOKTER

EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = '', @spesialisasi = '', @telp_dokter = '', @jadwal_praktik = '';
EXEC INSERT_DOK @id_prefix = 'DOK_', @nama_dokter = '', @spesialisasi = '', @telp_dokter = '', @jadwal_praktik = '';


-- EXECUTE PROCEDURE INSERT PASIEN, PREFIX JANGAN DIUBAH, ID-NYA GAUSAH DIMASUKIN, GENERATED AUTOMATICALLY
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = '', @keluhan = '', @jenis_kelamin = '', @tanggal_lahir = '', @alamat = '', @no_hp = '', @id_petugas = '';

EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Andi', @keluhan = 'Demam tinggi', @jenis_kelamin = 'L', @tanggal_lahir = '2015-07-20', @alamat = 'Jl. Melati No. 5', @no_hp = '081234567890', @id_petugas = ''; -- Dokter Anak
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Siti', @keluhan = 'Sakit tenggorokan', @jenis_kelamin = 'P', @tanggal_lahir = '1992-05-15', @alamat = 'Jl. Mawar No. 3', @no_hp = '081234567891', @id_petugas = ''; -- Dokter THT
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Dewi', @keluhan = 'Nyeri saat hamil', @jenis_kelamin = 'P', @tanggal_lahir = '1989-10-22', @alamat = 'Jl. Anggrek No. 7', @no_hp = '081234567892', @id_petugas = ''; -- Dokter Kandungan
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Budi', @keluhan = 'Gigi berlubang', @jenis_kelamin = 'L', @tanggal_lahir = '2000-08-08', @alamat = 'Jl. Tulip No. 12', @no_hp = '081234567893', @id_petugas = ''; -- Dokter Gigi
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Rina', @keluhan = 'Pusing dan flu', @jenis_kelamin = 'P', @tanggal_lahir = '1975-01-13', @alamat = 'Jl. Kenanga No. 10', @no_hp = '081234567894', @id_petugas = ''; -- Dokter Umum
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Joko', @keluhan = 'Batuk berdahak', @jenis_kelamin = 'L', @tanggal_lahir = '1985-03-18', @alamat = 'Jl. Dahlia No. 9', @no_hp = '081234567895', @id_petugas = ''; -- Dokter Umum
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Rudi', @keluhan = 'Demam dan diare', @jenis_kelamin = 'L', @tanggal_lahir = '1990-04-12', @alamat = 'Jl. Sakura No. 11', @no_hp = '081234567896', @id_petugas = ''; -- Dokter Umum
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Lina', @keluhan = 'Gigi bengkak', @jenis_kelamin = 'P', @tanggal_lahir = '1995-09-29', @alamat = 'Jl. Teratai No. 4', @no_hp = '081234567897', @id_petugas = ''; -- Dokter Gigi
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Tina', @keluhan = 'Sesak nafas', @jenis_kelamin = 'P', @tanggal_lahir = '2001-06-06', @alamat = 'Jl. Bakung No. 2', @no_hp = '081234567898', @id_petugas = ''; -- Dokter THT
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Ahmad', @keluhan = 'Cacar air', @jenis_kelamin = 'L', @tanggal_lahir = '2012-11-02', @alamat = 'Jl. Kamboja No. 14', @no_hp = '081234567899', @id_petugas = ''; -- Dokter Anak
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Fajar', @keluhan = 'Nyeri dada', @jenis_kelamin = 'L', @tanggal_lahir = '1983-07-30', @alamat = 'Jl. Cemara No. 6', @no_hp = '081234567800', @id_petugas = ''; -- Dokter Umum
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Nisa', @keluhan = 'Sakit gigi', @jenis_kelamin = 'P', @tanggal_lahir = '1997-12-25', @alamat = 'Jl. Flamboyan No. 1', @no_hp = '081234567801', @id_petugas = ''; -- Dokter Gigi
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Bayu', @keluhan = 'Demam tinggi', @jenis_kelamin = 'L', @tanggal_lahir = '2008-09-14', @alamat = 'Jl. Nusa Indah No. 2', @no_hp = '081234567802', @id_petugas = ''; -- Dokter Anak
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Fitri', @keluhan = 'Pusing terus-menerus', @jenis_kelamin = 'P', @tanggal_lahir = '1978-11-08', @alamat = 'Jl. Cempaka No. 8', @no_hp = '081234567803', @id_petugas = ''; -- Dokter Umum
EXEC INSERT_PAS @ID_PREFIX = 'PAS_', @nama_pasien = 'Dian', @keluhan = 'Nyeri gusi', @jenis_kelamin = 'P', @tanggal_lahir = '1994-04-19', @alamat = 'Jl. Teratai Putih No. 10', @no_hp = '081234567804', @id_petugas = ''; -- Dokter Gigi


-- EXECUTE PROCEDURE INSERT PEMERIKSAAN, PREFIX JANGAN DIUBAH, ID-NYA GAUSAH DIMASUKIN, GENERATED AUTOMATICALLY
EXEC INSERT_PEM @id_prefix = 'PEM_', @id_dokter = '', @id_pasien = '', @id_ruangan = '', @tanggal_periksa = '', @diagnosa = '', @biaya = ;

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




-- EXECUTE PROCEDURE INSERT RESEP, PREFIX JANGAN DIUBAH, ID-NYA GAUSAH DIMASUKIN, GENERATED AUTOMATICALLY
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';

EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';
EXEC INSERT_RES @id_prefix = 'RES_', @id_obat = '', @id_pasien = '', @id_dokter = '';



/*
        
        -- isi tabel pasien
        INSERT INTO pasien (id_pasien, nama_pasien, keluhan, tanggal_lahir, jenis_kelamin, no_hp, alamat, id_petugas) 
        VALUES
        ('33720555120519900001', 'Ahmad Yusuf', 'Demam', '1990-05-12', 'L', '081234567890', 'Jl. Mawar No.1', 'A001'),
        ('33720555200719880002', 'Budi Setiawan', 'Batuk', '1988-07-20', 'L', '081234567891', 'Jl. Melati No.2', 'A002'),
        ('33720555180319950003', 'Citra Ayu', 'Sakit Kepala', '1995-03-18', 'P', '081234567892', 'Jl. Anggrek No.3', 'A003'),
        ('33720555151119930004', 'Dian Pratama', 'Nyeri Sendi', '1993-11-15', 'L', '081234567893', 'Jl. Kamboja No.4', 'A004'),
        ('33720555210619980005', 'Eka Widya', 'Asma', '1998-06-21', 'P', '081234567894', 'Jl. Kenanga No.5', 'A005'),
        ('33720555140819850006', 'Fajar Nugroho', 'Gatal-Gatal', '1985-08-14', 'L', '081234567895', 'Jl. Teratai No.6', 'A006'),
        ('33720555250919960007', 'Gina Maharani', 'Insomnia', '1996-09-25', 'P', '081234567896', 'Jl. Tulip No.7', 'A007'),
        ('33720555100119890008', 'Hani Susilo', 'Sakit Gigi', '1989-01-10', 'L', '081234567897', 'Jl. Cempaka No.8', 'A008'),
        ('33720555030219920009', 'Irfan Hakim', 'Luka Bakar', '1992-02-03', 'L', '081234567898', 'Jl. Anyelir No.9', 'A009'),
        ('33720555311219840010', 'Joko Prasetyo', 'Hipertensi', '1984-12-31', 'L', '081234567899', 'Jl. Dahlia No.10', 'A010'),
        ('33720555050419970011', 'Karin Amalia', 'Diabetes', '1997-04-05', 'P', '081234567800', 'Jl. Flamboyan No.11', 'A011'),
        ('33720555201019910012', 'Lisa Oktaviani', 'Mual', '1991-10-20', 'P', '081234567801', 'Jl. Gardenia No.12', 'A012'),
        ('33720555300319860013', 'Miko Saputra', 'Infeksi', '1986-03-30', 'L', '081234567802', 'Jl. Bougenville No.13', 'A013'),
        ('33720555011219940014', 'Nina Apriyani', 'Migrain', '1994-12-01', 'P', '081234567803', 'Jl. Magnolia No.14', 'A014'),
        ('33720555080719900015', 'Omar Ridwan', 'Pilek', '1990-07-08', 'L', '081234567804', 'Jl. Kaktus No.15', 'A015'),
        ('33720555281019900004', 'Idul Adha', 'Sakit Mata', '1990-10-28', 'L', '081133335555', 'Jl Ir Tentara pelajar no 36, Mojosongo, Surakarta', 'A016'),
        ('33720555210419940004', 'Idul Fitri', 'Sakit Perut', '1994-04-21', 'P', '08123456789', 'Jl Ir Sutami no 36, jebres Surakarta', 'A017');

        -- isi tabel obat

        INSERT INTO resep (id_resep, id_obat, id_pasien, id_dokter) 
        VALUES
        ('RSP001', 'O001', '33720555120519900001', 'D001'),
        ('RSP002', 'O002', '33720555200719880002', 'D002'),
        ('RSP003', 'O003', '33720555180319950003', 'D003'),
        ('RSP004', 'O004', '33720555151119930004', 'D004'),
        ('RSP005', 'O005', '33720555210619980005', 'D005'),
        ('RSP006', 'O006', '33720555140819850006', 'D006'),
        ('RSP007', 'O007', '33720555250919960007', 'D007'),
        ('RSP008', 'O008', '33720555100119890008', 'D008'),
        ('RSP009', 'O009', '33720555030219920009', 'D009'),
        ('RSP010', 'O010', '33720555311219840010', 'D010'),
        ('RSP011', 'O011', '33720555050419970011', 'D011'),
        ('RSP012', 'O012', '33720555201019910012', 'D012'),
        ('RSP013', 'O013', '33720555300319860013', 'D013'),
        ('RSP014', 'O014', '33720555011219940014', 'D014'),
        ('RSP015', 'O015', '33720555080719900015', 'D015'),
        ('RSP016', 'O016', '33720555281019900004', 'D016'),
        ('RSP017', 'O017', '33720555210419940004', 'D017');

        -- isi tabel pemeriksaan
        INSERT INTO pemeriksaan (id_periksa, id_dokter, id_pasien, id_ruangan, tanggal_periksa, diagnosa, biaya) 
        VALUES
        ('PM001', 'D001', '33720555120519900001', 'R001', '2024-12-01', 'Demam', 150000),
        ('PM002', 'D002', '33720555200719880002', 'R002', '2024-12-02', 'Batuk', 100000),
        ('PM003', 'D003', '33720555180319950003', 'R003', '2024-12-03', 'Sakit Kepala', 120000),
        ('PM004', 'D004', '33720555151119930004', 'R004', '2024-12-04', 'Nyeri Sendi', 140000),
        ('PM005', 'D005', '33720555210619980005', 'R005', '2024-12-05', 'Asma', 160000),
        ('PM006', 'D006', '33720555140819850006', 'R006', '2024-12-06', 'Gatal-Gatal', 110000),
        ('PM007', 'D007', '33720555250919960007', 'R007', '2024-12-07', 'Insomnia', 130000),
        ('PM008', 'D008', '33720555100119890008', 'R008', '2024-12-08', 'Sakit Gigi', 170000),
        ('PM009', 'D009', '33720555030219920009', 'R009', '2024-12-09', 'Luka Bakar', 180000),
        ('PM010', 'D010', '33720555311219840010', 'R010', '2024-12-10', 'Hipertensi', 200000),
        ('PM011', 'D011', '33720555050419970011', 'R011', '2024-11-20', 'Diabetes Mellitus', 700000),
        ('PM012', 'D012', '33720555201019910012', 'R012', '2024-11-21', 'Gastritis', 400000),
        ('PM013', 'D013', '33720555300319860013', 'R013', '2024-11-22', 'Infeksi Kulit', 250000),
        ('PM014', 'D014', '33720555011219940014', 'R014', '2024-11-23', 'Migrain', 300000),
        ('PM015', 'D015', '33720555080719900015', 'R015', '2024-11-24', 'Flu Berat', 350000),
        ('PM016', 'D016', '33720555281019900004', 'R016', '2024-11-23', 'Katarak', 500000),
        ('PM017', 'D017', '33720555210419940004', 'R017', '2024-11-26', 'Penyakit Gangguan Pencernaan', 200000);

*/
-- EXECUTE PROCEDURE INSERT OBAT, PREFIX JANGAN DIUBAH, ID-NYA GAUSAH DIMASUKIN, GENERATED AUTOMATICALLY
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = '', @harga = '', @stok = '', @jenis = '';

EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Cetirizine', @harga = '10000', @stok = '100', @jenis = 'Antihistamin';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Loratadine', @harga = '15000', @stok = '80', @jenis = 'Antihistamin';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Chlorpheniramine', @harga = '20000', @stok = '50', @jenis = 'Antihistamin';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Amoxicillin', @harga = '12000', @stok = '60', @jenis = 'Antibiotik';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Ciprofloxacin', @harga = '25000', @stok = '40', @jenis = 'Antibiotik';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Azithromycin', @harga = '30000', @stok = '70', @jenis = 'Antibiotik';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Doxycycline', @harga = '35000', @stok = '90', @jenis = 'Antibiotik';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Paracetamol', @harga = '40000', @stok = '30', @jenis = 'Analgesik';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Ibuprofen', @harga = '18000', @stok = '75', @jenis = 'Analgesik';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Dexamethasone', @harga = '50000', @stok = '20', @jenis = 'Analgesik';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Paracetamol Sirup', @harga = '15000', @stok = '100', @jenis = 'Analgesik';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Amlodipine', @harga = '45000', @stok = '50', @jenis = 'Antihipertensi';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Furosemide', @harga = '35000', @stok = '30', @jenis = 'Antihipertensi';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Captropil', @harga = '22000', @stok = '80', @jenis = 'Antihipertensi';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Losartan', @harga = '12000', @stok = '200', @jenis = 'Antihipertensi';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Tetrachloride', @harga = '20000', @stok = '80', @jenis = 'Tetes Mata Antioksidan';
EXEC INSERT_OB @id_prefix = 'OB_', @nama_obat = 'Doen Suspension', @harga = '10000', @stok = '200', @jenis = 'Antasida';

-- EXECUTE PROCEDURE INSERT PETUGAS ADMIN, PREFIX JANGAN DIUBAH, ID-NYA GAUSAH DIMASUKIN, GENERATED AUTOMATICALLY
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = '';

EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Rini Widya';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Bagas Santoso';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Siti Lestari';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Adi Wijaya';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Lina Sari';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Andi Saputra';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Maya Putri';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Heri Kurniawan';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Fitri Handayani';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Dedi Susanto';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Ratna Dewi';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Yudi Firmansyah';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Rika Murni';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Sandi Pratama';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Rita Amalia';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Zaky Arya';
EXEC INSERT_ADM @id_prefix = 'ADM_', @nama_petugas = 'Fara Anna';

-- EXECUTE PROCEDURE INSERT RUANGAN, PREFIX JANGAN DIUBAH, ID-NYA GAUSAH DIMASUKIN, GENERATED AUTOMATICALLY
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = '';

EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Operasi';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Konsultasi 1';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Konsultasi 2';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Radiologi';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan UGD';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan ICU';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Anak';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Kardiologi';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Onkologi';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Endoskopi';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Rehabilitasi';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Psikiatri';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Hemodialisa';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Laboratorium';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Kebidanan';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Rawat Inap 1';
EXEC INSERT_RG @id_prefix = 'R_', @nama_ruangan = 'Ruangan Rawat Inap 2';




