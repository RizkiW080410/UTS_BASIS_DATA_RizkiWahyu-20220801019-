SELECT
	TabelMahasiswa.NIM,
	CONCAT_WS('',TabelMahasiswa.first_name,' ',TabelMahasiswa.last_name) AS Mahasiswa,
	TabelMahasiswa.Alamat, 
	CONCAT('', TabelMahasiswa.Nomor_Telpon) AS Phone,
	CONCAT('', TabelFakultas.nama_fakultas) AS Fakultas,
	CONCAT('', TabelProdi.nama_prodi) AS `Prodi`,
	CONCAT('', TabelMatakuliah.matakuliah) AS `Mata Kuliah`,
	TabelDosen.NID,
	CONCAT_WS('',TabelDosen.first_name,' ',TabelDosen.last_name,TabelDosen.gelar) AS Pengajar,
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