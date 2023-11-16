# UTS_BASIS_DATA_RizkiWahyu-20220801019-
UTS_BASIS_DATA_RizkiWahyu(20220801019)

database ini terkonsep untuk Sistem Manajemen Universitas,

Skema database ini dirancang untuk mendukung Sistem Manajemen Universitas, memfasilitasi organisasi dan pengelolaan informasi terkait fakultas, program studi, mahasiswa, dosen, dan mata kuliah.

terdapat 5 tabel:
1. Tabel fakultas
2. Tabel prodi
3. Tabel Mahasiswa
4. Tabel dosen
5. Tabel Matakuliah

hubungan atau relasinya
1. TabelProdi dan TabelFakultas terhubung melalui hubungan kunci asing, mewakili asosiasi antara program studi dan fakultas.
2. TabelMahasiswa terkait dengan baik TabelProdi maupun TabelFakultas melalui hubungan kunci asing, menunjukkan program studi dan afiliasi fakultas dari setiap mahasiswa.
3. TabelMatakuliah terkait dengan baik TabelProdi maupun TabelDosen melalui hubungan kunci asing, membentuk koneksi antara mata kuliah, program studi, dan dosen.

Penggunaan
Skema database ini berfungsi sebagai dasar untuk mengelola informasi dalam lingkungan universitas. Pengguna dapat melakukan operasi seperti melacak mahasiswa, dosen, program studi, dan mata kuliah, memfasilitasi manajemen dan organisasi data akademis yang efisien. Silakan perluas skema ini atau sesuaikan berdasarkan kebutuhan spesifik atau fitur tambahan yang diperlukan untuk Sistem Manajemen Universitas Anda.

jika anda ingin melihat informasi mata kuliah silahkan insert querry ini:
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
