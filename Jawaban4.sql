SELECT
	TabelMahasiswa.id_mahasiswa, 
	TabelMahasiswa.NIM, 
	CONCAT_WS('',TabelMahasiswa.first_name,' ',TabelMahasiswa.last_name) AS Mahasiswa,
	TabelMahasiswa.Alamat, 
	CONCAT('', TabelMahasiswa.Nomor_Telpon) AS Phone,
	CONCAT('', TabelMahasiswa.id_fakultas) AS `ID Fakultas`,
	CONCAT('', TabelMahasiswa.id_prodi) AS `ID Prodi`,
	CONCAT('', TabelMatakuliah.id_matakuliah) AS `Kode Matakuliah`,
	TabelMatakuliah.matakuliah, 
	CONCAT('', TabelMatakuliah.id_dosen) AS `id Pengajar`,
	TabelMatakuliah.SKS
FROM
	TabelMahasiswa
	INNER JOIN
	TabelFakultas
	ON 
		TabelMahasiswa.id_fakultas = TabelFakultas.id_fakultas
	INNER JOIN
	TabelProdi
	ON 
		TabelFakultas.id_fakultas = TabelProdi.id_fakultas AND
		TabelMahasiswa.id_prodi = TabelProdi.id_prodi
	INNER JOIN
	TabelMatakuliah
	ON 
		TabelProdi.id_prodi = TabelMatakuliah.id_prodi
	INNER JOIN
	TabelDosen
	ON 
		TabelMatakuliah.id_dosen = TabelDosen.id_dosen