-- memasukkan data ke tabel
use KLINIK

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
