-- memasukkan data ke tabel
use KLINIK
-- isi tabel dokter
INSERT INTO dokter (id_dokter, nama_dokter, spesialisasi, telp_dokter, jadwal_praktik) 
VALUES
('D001', 'Anwar', 'Umum', '081234567890', 'Senin'),
('D002', 'Budi', 'Anak', '082345678901', 'Selasa'),
('D003', 'Citra', 'THT', '083456789012', 'Rabu'),
('D004', 'Dina', 'Anak', '084567890123', 'Kamis'),
('D005', 'Eko', 'Gigi', '085678901234', 'Jumat'),
('D006', 'Farah', 'Umum', '086789012345', 'Sabtu'),
('D007', 'Guntur', 'Gigi', '087890123456', 'Minggu'),
('D008', 'Hana', 'THT', '088901234567', 'Senin'),
('D009', 'Ivan', 'Kandungan', '089012345678', 'Selasa'),
('D010', 'Joko', 'Kandungan', '089123456789', 'Rabu'),
('D011', 'Karin', 'Gigi', '089234567890', 'Kamis'),
('D012', 'Lisa', 'Umum', '089345678901', 'Jumat'),
('D013', 'Miko', 'Kandungan', '089456789012', 'Sabtu'),
('D014', 'Nita', 'Anak', '089567890123', 'Minggu'),
('D015', 'Oki', 'THT', '089678901234', 'Senin'),
('D016', 'Java', 'Mata', '081236547896', 'Sabtu'),
('D017', 'Bunga', 'Penyakit Dalam', '082134956847', 'Selasa');

-- isi tabel petugas admin
INSERT INTO petugas_admin (id_petugas, nama_petugas) 
VALUES
('A001', 'Rini Widya'),
('A002', 'Bagas Santoso'),
('A003', 'Siti Lestari'),
('A004', 'Adi Wijaya'),
('A005', 'Lina Sari'),
('A006', 'Andi Saputra'),
('A007', 'Maya Putri'),
('A008', 'Heri Kurniawan'),
('A009', 'Fitri Handayani'),
('A010', 'Dedi Susanto'),
('A011', 'Ratna Dewi'),
('A012', 'Yudi Firmansyah'),
('A013', 'Rika Murni'),
('A014', 'Sandi Pratama'),
('A015', 'Rita Amalia'),
('A016', 'Zaky Arya'),
('A017', 'Fara Anna');

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

-- isi tabel ruangan
INSERT INTO ruangan (id_ruangan, nama_ruangan) 
VALUES
('R001', 'Ruangan Operasi'),
('R002', 'Ruangan Konsultasi 1'),
('R003', 'Ruangan Konsultasi 2'),
('R004', 'Ruangan Radiologi'),
('R005', 'Ruangan UGD'),
('R006', 'Ruangan ICU'),
('R007', 'Ruangan Anak'),
('R008', 'Ruangan Kardiologi'),
('R009', 'Ruangan Onkologi'),
('R010', 'Ruangan Endoskopi'),
('R011', 'Ruangan Rehabilitasi'),
('R012', 'Ruangan Psikiatri'),
('R013', 'Ruangan Hemodialisa'),
('R014', 'Ruangan Laboratorium'),
('R015', 'Ruangan Kebidanan'),
('R016', 'Ruangan Rawat Inap 1'),
('R017', 'Ruangan Rawat Inap 2');

-- isi tabel obat

INSERT INTO obat (id_obat, nama_obat, harga, stok, jenis) 
VALUES
('O001', 'Cetirizine', '10000', 100, 'Antihistamin'),
('O002', 'Loratadine', '15000', 80, 'Antihistamin'),
('O003', 'Chlorpheniramine', '20000', 50, 'Antihistamin'),
('O004', 'Amoxicillin', '12000', 60, 'Antibiotik'),
('O005', 'Ciprofloxacin', '25000', 40, 'Antibiotik'),
('O006', 'Azithromycin', '30000', 70, 'Antibiotik'),
('O007', 'Doxycycline', '35000', 90, 'Antibiotik'),
('O008', 'Paracetamol', '40000', 30, 'Analgesik'),
('O009', 'Ibuprofen', '18000', 75, 'Analgesik'),
('O010', 'Dexamethasone', '50000', 20, 'Analgesik'),
('O011', 'Paracetamol Sirup', '15000', 100, 'Analgesik'),
('O012', 'Amlodipine', '45000', 50, 'Antihipertensi'),
('O013', 'Furosemide', '35000', 30, 'Antihipertensi'),
('O014', 'Captropil', '22000', 80, 'Antihipertensi'),
('O015', 'Losartan', '12000', 200, 'Antihipertensi'),
('O016', 'Tetrachloride', '20000', 80, 'Tetes Mata Antioksidan'),
('O017', 'Doen Suspension', '10000', 200, 'Antasida');

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
