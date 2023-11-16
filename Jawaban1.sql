CREATE TABLE `TabelFakultas`  (
  `id_fakultas` int NOT NULL PRIMARY KEY,
  `nama_fakultas` varchar(255) NOT NULL
	);

CREATE TABLE `TabelProdi`  (
  `id_prodi` int NOT NULL PRIMARY KEY,
  `id_fakultas` int NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  INDEX (`id_fakultas`),
	FOREIGN KEY (`id_fakultas`) REFERENCES `TabelFakultas` (`id_fakultas`) ON DELETE RESTRICT ON UPDATE RESTRICT
	);

CREATE TABLE `TabelMahasiswa`  (
  `id_mahasiswa` int NOT NULL PRIMARY KEY,
  `NIM` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Nomor_Telpon` varchar(255) NOT NULL,
  `id_prodi` int NOT NULL,
  `id_fakultas` int NOT NULL,
  INDEX (`id_prodi`),
  INDEX (`id_fakultas`),
	FOREIGN KEY (`id_prodi`) REFERENCES `TabelProdi` (`id_prodi`) ON DELETE RESTRICT ON UPDATE RESTRICT,
	FOREIGN KEY (`id_fakultas`) REFERENCES `TabelFakultas` (`id_fakultas`) ON DELETE RESTRICT ON UPDATE RESTRICT
	);
	
	CREATE TABLE `TabelDosen`  (
  `id_dosen` int NOT NULL PRIMARY KEY,
  `NID` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gelar` varchar(255) NOT NULL
	);

CREATE TABLE `TabelMatakuliah`  (
  `id_matakuliah` int NOT NULL PRIMARY KEY,
  `matakuliah` varchar(255) NOT NULL,
  `id_prodi` int NOT NULL,
  `id_dosen` int NOT NULL,
  `SKS` varchar(255) NOT NULL,
  INDEX (`id_prodi`),
  INDEX (`id_dosen`),
	FOREIGN KEY (`id_prodi`) REFERENCES `TabelProdi` (`id_prodi`) ON DELETE RESTRICT ON UPDATE RESTRICT,
	FOREIGN KEY (`id_dosen`) REFERENCES `TabelDosen` (`id_dosen`) ON DELETE RESTRICT ON UPDATE RESTRICT
	);