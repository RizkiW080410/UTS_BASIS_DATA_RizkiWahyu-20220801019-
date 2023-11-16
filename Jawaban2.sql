INSERT INTO `TabelFakultas` (`id_fakultas`, `nama_fakultas`) VALUES
(1, 'Ilmu Komputer'),
(2, 'Ekonomi Dan Bisnis'),
(3, 'Hukum');

INSERT INTO `TabelProdi` (`id_prodi`, `id_fakultas`, `nama_prodi`) VALUES
(1, 1, 'Teknik Informatika'),
(2, 3, 'Hukum Pidana'),
(3, 2, 'Manajemen'),
(4, 1, 'Sistem Informasi');

INSERT INTO `TabelMahasiswa` (`id_mahasiswa`, `NIM`, `first_name`, `last_name`, `Alamat`, `Nomor_Telpon`, `id_prodi`, `id_fakultas`) VALUES
(101, '20220310', 'Rizki', 'Wahyu', 'kp. Panongan', '081385331107', 1, 1),
(102, '20220604', 'Arhan', 'Malik', 'Pos 2', '081376867497', 3, 2),
(103, '20220704', 'Fajri', 'Dzul', 'Graha Catania', '081387654362', 4, 1),
(104, '20220304', 'Hermawan', 'Rustandi', 'Tigaraksa', '081376547890', 2, 3);

INSERT INTO `TabelDosen` (`id_dosen`, `NID`, `first_name`, `last_name`, `gelar`) VALUES
(1, '20100403', 'Agus', 'Sutomo', ',S.Kom., M.Kom.\n'),
(2, '20100702', 'Ida Ayu', 'Putu Puspita', ', S.H., M.H.\n'),
(3, '20100804', 'Budi', 'Hartono', ',S.E., M.M.\n'),
(4, '20100906', 'Ujang', 'Hernanto', ',S.Kom., M.Kom.\n');

INSERT INTO `TabelMatakuliah` (`id_matakuliah`, `matakuliah`, `id_prodi`, `id_dosen`, `SKS`) VALUES
(1, 'Kalkulus', 1, 1, 3),
(2, 'Kwh', 3, 2, 3),
(3, 'Statistik', 1, 3, 3),
(4, 'politik', 2, 1, 3),
(5, 'PBO', 4, 4, 3);