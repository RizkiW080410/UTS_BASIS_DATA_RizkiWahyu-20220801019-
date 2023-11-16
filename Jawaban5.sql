SELECT
	TabelMatakuliah.id_matakuliah, 
	TabelMatakuliah.matakuliah, 
	TabelMatakuliah.id_prodi, 
	TabelDosen.id_dosen, 
	TabelDosen.NID, 
	CONCAT_WS('',TabelDosen.first_name,' ',TabelDosen.last_name,TabelDosen.gelar) AS Pengajar,
	TabelMatakuliah.SKS
FROM
	TabelMatakuliah
	INNER JOIN
	TabelDosen
	ON 
		TabelMatakuliah.id_dosen = TabelDosen.id_dosen
	INNER JOIN
	TabelProdi
	ON 
		TabelMatakuliah.id_prodi = TabelProdi.id_prodi