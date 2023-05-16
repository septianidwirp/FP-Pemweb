-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 09:35 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolahku`
--

-- --------------------------------------------------------

--
-- Table structure for table `rapor`
--

CREATE TABLE `rapor` (
  `id` int(11) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `kkm` int(5) NOT NULL,
  `nilai` int(5) NOT NULL,
  `predikat` varchar(5) NOT NULL,
  `ket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rapor`
--

INSERT INTO `rapor` (`id`, `mapel`, `kkm`, `nilai`, `predikat`, `ket`) VALUES
(1, 'Bahasa Inggris', 80, 89, 'A', 'Baik'),
(2, 'Pendidikan Kewarganegaraan', 80, 91, 'A+', 'Sangat Baik'),
(3, 'Matematika Wajib', 80, 88, 'A', 'Baik'),
(4, 'Matematika Peminatan', 80, 85, 'A', 'Baik'),
(5, 'Biologi', 80, 93, 'A+', 'Sangat Baik'),
(6, 'Fisika', 80, 84, 'B+', 'Cukup'),
(7, 'Kimia', 80, 87, 'A', 'Baik'),
(8, 'Pendidikan Agama Islam', 80, 92, 'A+', 'Sangat Baik'),
(9, 'Pendidikan Jasmani dan Rohani', 80, 84, 'B+', 'Cukup'),
(10, 'Seni Budaya', 80, 94, 'A+', 'Sangat Baik'),
(11, 'Bahasa Indonesia', 80, 90, 'A', 'Baik'),
(12, 'Bahasa Inggris', 80, 89, 'A', 'Baik'),
(13, 'Pendidikan Kewarganegaraan', 80, 91, 'A+', 'Sangat Baik'),
(14, 'Matematika Wajib', 80, 88, 'A', 'Baik'),
(15, 'Matematika Peminatan', 80, 85, 'A', 'Baik'),
(16, 'Biologi', 80, 93, 'A+', 'Sangat Baik'),
(17, 'Fisika', 80, 84, 'B+', 'Cukup'),
(18, 'Kimia', 80, 87, 'A', 'Baik'),
(19, 'Pendidikan Agama Islam', 80, 92, 'A+', 'Sangat Baik'),
(20, 'Pendidikan Jasmani dan Rohani', 80, 84, 'B+', 'Cukup'),
(21, 'Seni Budaya', 80, 94, 'A+', 'Sangat Baik'),
(23, 'Bahasa Indonesia', 80, 89, 'B', 'Baik');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `keterangan` enum('Sakit','Izin','Alpa','Masuk') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `tanggal`, `nis`, `nama`, `keterangan`) VALUES
(22, '2022-06-26', 1818, 'Risma', 'Masuk'),
(23, '2022-06-26', 1819, 'Dodot', 'Izin'),
(24, '2022-06-26', 1820, 'Didit', 'Sakit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id`, `judul`, `isi`, `tanggal`, `foto`, `id_kategori`) VALUES
(12, 'Hari lahir Pancasila 2022', '<p>Hari lahir Pancasila diperingati setiap tanggal 1 Juni tiap tahunnya. Apakah kalian tahu bagaimana tujuan, makna dan sejarah Hari lahir Pancasila?<br><br>\r\n						Pentingnya memperingati Hari Lahir Pancasila tidak hanya karena ini bernilai sejarah, tetapi karena makna yang terkandung dalam setiap butir sila Pancasila merupakan hal yang harus dihayati setiap saat oleh warga Indonesia, minimal sekali setahun. Berikut, mari kita sama-sama mengingat kembali sejarah hari lahir Pancasila, tujuan, dan makna kelahiran sang Pancasila.<br><br>\r\n						1 Juni diperingati sebagai Hari Lahir Pancasila, sekaligus sebagai salah satu tanggal penting atas kelahiran dasar Negara Kesatuan Republik Indonesia (NKRI) dan diperingati oleh seluruh masyarakat Indonesia.<br><br>\r\n						Terbentuknya Hari Lahir Pancasila, berawal dari kekalahan Jepang pada Perang Pasifik, mereka berusaha mendapatkan hati masyarakat dengan menjanjikan kemerdekaan Indonesia dengan membentuk sebuah lembaga khusus yang ditugaskan mempersiapkan kemerdekaan Indonesia.<br><br>\r\n						Sejarah Hari Lahir Pancasila<br><br>\r\n						Sejarah hari lahir Pancasila dimulai dari kekalahan pada Perang Asia Timur Raya. Secara garis besar, BPUPKI dibentuk untuk menyelidiki hal-hal yang penting sekaligus menyusun rencana mengenai persiapan kemerdekaan Indonesia. BPUPKI mengadakan sidang, berikut kronik sidang BPUPKI.<br><br>\r\n						Sidang tanggal 29 Mei 1945 yang diadakan di Gedung Chuo Sangi in (sekarang gedung Pancasila). Di sini, para anggota membahas mengenai tema dasar negara.<br><br>\r\n						Sidang berjalan hampir 5 hari, pada tanggal 1 Juni 1945, Soekarno menyampaikan gagasannya terkait dasar negara Indonesia, yang dinamai “Pancasila”. Panca artinya lima, sedangkan sila artinya prinsip atau asas.<br><br>\r\n						Pembentukan Panitia Sembilan untuk menemukan jalan tengah dalam perumusan dasar negara. Panitia ini terdiri dari Soekarno, Mohammad Hatta, Achmad Soebardjo, M. Yamin, Wahid Hasjim, Abdoel Kahar Moezakir, Abikusno Tjokrosoejoso, Haji Agus Salim, dan A.A. Maramis.<br><br>\r\n						Pada tanggal 22 Juni 1945 lahirlah rumusan dasar negara RI yang dikenal sebagai Piagam Jakarta atau Jakarta Charter, terdiri dari:<br>\r\n						1. Ketuhanan dengan kewajiban menjalankan Syariat Islam bagi pemeluk-pemeluknya<br>\r\n						2. Kemanusiaan yang adil dan beradab<br>\r\n						3. Persatuan Indonesia<br>\r\n						4. Kerakyatan yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan perwakilan<br>\r\n						5. Keadilan sosial bagi seluruh rakyat Indonesia.<br><br>\r\n						Pertimbangan bahwa Indonesia merupakan sebuah gugusan kepulauan dari Sabang sampai Merauke itu juga yang menyebabkan muncul usulan agar dasar negara tidak berdasarkan agama tertentu. Oleh karena itu, dalam rapat Panitia Persiapan Kemerdekaan Indonesia pada 18 Agustus 1945, diputuskan untuk melakukan perubahan pada sila pertama dari yang ditulis dalam Piagam Jakarta. Tujuh kata itu, “dengan kewajiban menjalankan syariat Islam bagi pemeluknya”, kemudian dihapus.<br><br>\r\n						Rumusan sila pertama itu kemudian diubah melalui sidang BPUPKI pada tanggal 18 Agustus 1945 menjadi rumusan Pancasila yang seperti yang tercantum dalam UUD 1945 yaitu Ketuhanan Yang Maha Esa.<br><br></p>\r\n', '2022-06-01', 'pancasila.png', 10),
(13, 'Pelepasan Siswa-Siswi Tahun Ajaran 2022', '<p>Purnawiyata SMA Pembangunan Nasional tahun ini berbeda dengan tahun-tahun sebelumnya. Apabila sebelumnya purnawiyata digelar secara tatap muka, kali ini digelar secara daring / live streaming di YoutUbe dan Zoom.<br><br>\r\n						Panitia Pelaksana menyampaikan bahwa pelaksanaan purnawiyata tahun ini memang digelar secara daring. Hal ini dikarenakan sebagai bentuk kepatuhan SMA Pembangunan Nasional menyesuaikan dengan protokol kesehatan.<br><br>\r\n						Masih menurut Ketua Panitia, bahwa pelaksanaan purnawiyata diagendakan digelar secara online. Hal ini sebagai bentuk antisipasi terjadinya kerumunan yang bisa terjadi dalam pelaksanaan purnawiyata nantinya.<br><br>\r\n						“Pelaksanaan purnawiyata SMA Pembangunan Nasional kita gelar secara Online. Untuk pelaksanaan di gedung AULA Masing masing diikuti oleh satu perwakilan kelas dengan orang tuanya. Hal ini dilakukan agar kita tetap mematuhi protokol kesehatan dan terhindar dari kerumunan” tegasnya.<br><br>\r\n						“Satu sesinya, kita beri waktu maksimal dua jam” imbuhnya<br><br>\r\n						Purnawiyata diawali dengan sambutan panitia kemudian peserta disuguhkan hiburan berupa musik dan tari yang dibawakan oleh siswa-siswi SMA Negeri 1 Talun. Tidak hanya hiburan, siswa siswi SMA Negeri 1 Talun juga menghadirkan film dokumenter karya anak anak kelas XII.<br><br>\r\n						Saat sambutan, Bapak Kepala Sekolah menyampaikan terima kasih kepada semua pihak yang telah membantu terlaksananya acara purnawiyata. Bapak Gatot Wiyono berharap, agar siswa siswi yang telah dilepaskan memperoleh ilmu manfaat dan bisa melanjutkan pendidikan ke jenjang yang lebih tinggi.<br><br>\r\n						Pada puncak acara, perwakilan siswa- siswi masing-masing kelas maju ke depan satu persatu. Mereka mengikuti prosesi pelepasan. Kepala Sekolah secara simbolik melepaskan siswa siswi dengan mengalungkan gordon ke leher masing masing siswa. Usai pelepasan itu, mereka kembali ke tempatnya, menandai berakhirnya acara.<br><br></p>', '2022-05-14', 'wisuda.jpg', 3),
(14, 'Pengumuman SNMPTN', '<p>Hasil SNMPTN 2022 diumumkan hari ini, Selasa (29/3/2022) pukul 15.00 WIB di 32 tautan situs yang disediakan. Ketua Lembaga Tes Masuk Perguruan Tinggi (LTMPT) Mochamad Ashari mengumumkan, dari 612.049 pendaftar, 120.643 siswa lolos SNMPTN 2022.<br><br>\r\n						Ashari merinci, sebanyak 109.276 siswa diterima di prodi pilihan 1 dari 612.049 peserta SNMPTN 2022. Sementara itu, sebanyak 11.367 siswa diterima di prodi pilihan 2 dari 520.853 peserta.<br><br>\r\n						Sebanyak 122.651 kursi di sediakan di SNMPTN tahun ini. Berdasarkan jumlah tersebut, sambungnya, persentase peserta diterima di SNMPTN 2022 yaitu 98,38% dari total daya tampung. Adapun keketatan SNMPTN tahun ini sebesar 19,71%<br><br>\r\n						Ia menambahkan, sebanyak 35.570 pendaftar SNMPTN 2022 dengan Kartu Indonesia Pintar (KIP) Kuliah) diterima dari total 151.514 siswa. Dengan demikian, persentase peserta diterima dengan KIP Kuliah tahun ini sebesar 23,48 persen.<br><br>\r\n						PTN Penerima Terbanyak Jalur SNMPTN 2022<br><br>\r\n						1. Universitas Brawijaya, 3.445 peserta<br>\r\n						2. Universitas Negeri Semarang 3.083 peserta<br>\r\n						3. Universitas Pendidikan Indonesia, 3.038 peserta<br>\r\n						4. Universitas Lampung, 3.027 peserta<br>\r\n						5. Universitas Negeri Padang, 2.867 peserta<br>\r\n						6. Universitas Negeri Surabaya, 2.857 peserta<br>\r\n						7. Universitas Gadjah Mada, 2.690 peserta<br>\r\n						8. Universitas Negeri Makassar, 2.475 peserta<br>\r\n						9. Universitas Malikussaleh, 2.402 peserta<br>\r\n						10. Universitas Jember, 2.380 peserta<br>\r\n						11. Institut Teknologi Sumatera, 2.372 peserta<br>\r\n						12. Universitas Haluoleo, 2.283 peserta<br>\r\n						13. Universitas Udayana, 2.278 peserta<br>\r\n						14. Universitas Hasanuddin, 2.247 peserta<br>\r\n						15. Universitas Diponegoro, 2.219 peserta<br>\r\n						16. Institut Teknologi Bandung, 2.085 peserta<br>\r\n						17. Institut Pertanian Bogor, 2.041 peserta<br>\r\n						18. Universitas Sumatera Utara, 1.985 peserta<br>\r\n						19. Universitas Syiah Kuala, 1.982 peserta<br>\r\n						20. Universitas Riau, 1.883 peserta<br></p>', '2022-03-29', 'snmptn.jpeg', 3),
(15, 'Kurikulum Terbaru SMA Tahun 2022, Tak Ada Lagi Penjurusan!', '<p>Kurikulum terbaru SMA tahun 2022 menjadi warna baru dunia pendidikan nasional kita. Kementerian Pendidikan Nasional telah mengeluarkan kebijakan baru yang khusus untuk jenjang SMA. Ini merupakan langkah pemerintah untuk terus meningkatkan kualitas dan mutu pendidikan di Indonesia.<br><br>\r\nKebijakan kurikulum baru ini akan menggantikan kurikulum 2006 dan 2013. Salah stau yang paling mencolok perbedaan kurikum baru dibandingkan kurikulum 2013 adalah tidak adanya lagi penjurusan menjadi IPA, IPS, dan Bahasa. Penjurusan yang selama ini melekat pada jenjang sekoilah menenangah atas ini akan dihapus dan tidak lagi digunakan.<br><br>\r\nKebijakan baru ini tertuang dalam Keputusan Mendikbud Ristek Nomor 162/M/2021 tentang Sekolah Penggerak. Disebutkan bahwa kurikulum baru disebut sebagai kurikulum prototipe. Kurikulum ini tidak akan diberlakukan pada semua SMA karena bersifat opsional.<br><br>\r\nYang menjadi hal penting dari kurikulum terbaru 2022 adalah penghapusan sistim penjurusan pada jenjang SMA. Pada kurikulum 2013, setiap pelajar yang memasuki tingkat SMA mesti melalui penjurusan sekolah yakni pelajar tersebut bisa memilih jurusan bahasa, IPS atau IPA. Penjurusan tersebut bertujuan untuk meningkatkan kompetensi siswa.<br><br>\r\nSekarang tidak ada lagi penjurusan di tingkat SMA. Kebijakan Kementerian Pendidikan, Kebudayaan, Riset dan Teknologi melakukan penghapusan penjurusan di tingkat SMA akan membuat dampak bagi dunia pendidikan di Indonesia pada masa depan.<br><br>', '2022-02-01', 'kurikulum.jpg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_ekskul`
--

CREATE TABLE `tbl_detail_ekskul` (
  `id` int(15) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `isi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_detail_ekskul`
--

INSERT INTO `tbl_detail_ekskul` (`id`, `judul`, `isi`) VALUES
(1, 'PRAMUKA - SMA PEMBANGUNAN NASIONAL', '<p>Gerakan Pramuka Indonesia adalah nama organisasi pendidikan nonformal yang menyelenggarakan pendidikan kepanduan yang dilaksanakan di Indonesia. <br><br>\r\nKata “Pramuka” merupakan singkatan dari Praja Muda Karana, yang memiliki arti Orang Muda yang Suka Berkarya.<br><br>\r\nPramuka merupakan sebutan bagi anggota Gerakan Pramuka, yang meliputi; Pramuka Siaga (7-10 tahun), Pramuka Penggalang (11-15 tahun), Pramuka Penegak (16-20 tahun) dan Pramuka Pandega (21-25 tahun).<br><br>\r\nKelompok anggota yang lain yaitu Pembina Pramuka, Andalan Pramuka, Korps Pelatih Pramuka, Pamong Saka Pramuka, Staf Kwartir dan Majelis Pembimbing.<br><br>\r\nKepramukaan adalah proses pendidikan di luar lingkungan sekolah dan di luar lingkungan keluarga dalam bentuk kegiatan menarik, menyenangkan, sehat, teratur, terarah, praktis yang dilakukan di alam terbuka dengan Prinsip Dasar Kepramukaan dan Metode Kepramukaan, yang sasaran akhirnya pembentukan watak, akhlak, dan budi pekerti luhur. <br><br>\r\nKepramukaan adalah sistem pendidikan kepanduan yang disesuaikan dengan keadaan, kepentingan, dan perkembangan masyarakat, dan bangsa Indonesia.<br><br></p>'),
(2, 'PMR - SMA PEMBANGUNAN NASIONAL', 'Sejak dulu SMA PEMBANGUNAN NASIONAL terkenal akan prestasi dan keberhasilannya dalam mencetak generasi bangsa yang unggul melalui kegiatan intrakurikuler maupun ekstrakurikuler sekolah, salah satunya adalah ekstrakurikuler PMR SMA PEMBANGUNAN NASIONAL.\r\nPMR SMA PEMBANGUNAN NASIONAL bukan hanya sebuah ekstrakurikuler biasa, tetapi PMR SMA PEMBANGUNAN NASIONAL juga berperan penting sebagai relawan yang mengutamakan prinsip kepalangmerahan yaitu kemanusiaan, kesamaan, kenetralan, kemandirian, kesukarelaan, kesatuan, serta kesemestaan.\r\nSelain itu, kegiatan PMR SMA PEMBANGUNAN NASIONAL juga memberikan dampak positif terhadap karakter siswa karena tidak hanya mempelajari seputar kesehatan tetapi juga PMR SMA PEMBANGUNAN NASIONAL juga meningkatkan kepedulian terhadap sesama.					Dalam menjalankan kepengurusannya PMR SMA PEMBANGUNAN NASIONAL secara tidak langsung juga didampingi oleh PMI yang bertugas dipusat Surabaya. PMR SMA PEMBANGUNAN NASIONAL mengadakan berbagai macam kegiatan, diantaranya adalah Pendidikan Dasar, Pendidikan Lanjutan, Serah Terima Jabatan, Latihan Rutin serta ikut berperan dalam kegiatan Donor Darah yang di adakan oleh PMI. SMA PEMBANGUNAN NASIONAL telah menjuarai perlombaan salah satunya adalah Jumbara.'),
(3, 'BASKET -  SMA PEMBANGUNAN NASIONAL', 'SMA PEMBANGUNAN NASIONAL memiliki Ekstrakurikuler bola basket yang termasuk banyak peminatnya. Program kerja ekstrakurikuler ini hampir sama dengan ekstrakurikuler lainnya, hanya saja tingkat motivasi ekstrinsik siswa lebih tinggi daripada motivasi intrinsik.\r\nJadi, perlu adanya motivasi dari pembina untuk menumbuhkan minat siswa dalam mengikuti kegiatan ekstrakurikuler olahraga bola basket agar peserta ekstrakurikuler mempunyai kemauan yang tinggi untuk berlatih. Pembina ekstrakurikuler tidak hanya memberikan motivasi secara ekstrinsik saja, tetapi motivasi intrinsik juga diterapkan supaya keseimbangan motivasi pada siswa muncul dan diharapkan menjadi lebih baik dari sebelumnya dari segi perilaku dan teknik permainan siswa.\r\nPembagian jadwal latian basket ini disesuaikan dengan jadwal ekskul lainnya, agar tidak berbenturan bagi siswa yang memilih ekskul lebih dari satu. Latian yang dilakukkan dimulai dengan pemberian materi dasar hingga praktek secara langsung. Tempat pelaksanaan ekskul bola basket dilakukkan di lapangan basket SMA PEMBANGUNAN NASIONAL. Kegiatan basket juga banyak diikuti oleh SMA PEMBANGUNAN NASIONAL, baik didalam maupun luar sekolah.'),
(4, 'PASKIBRA - SMA PEMBANGUNAN NASIONAL', 'Gagasan Paskibraka lahir pada tahun 1946, pada saat ibukota Indonesia dipindahkan ke Yogyakarta. Memperingati HUT Proklamasi Kemerdekaan RI yang ke-1, Presiden Soekarno memerintahkan salah satu ajudannya, Mayor (Laut) Husein Mutahar, untuk menyiapkan pengibaran bendera pusaka di halaman Istana Gedung Agung Yogyakarta. Pada saat itulah, di benak Mutahar terlintas suatu gagasan bahwa sebaiknya pengibaran bendera pusaka dilakukan oleh para pemuda dari seluruh penjuru Tanah Air, karena mereka adalah generasi penerus perjuangan bangsa yang bertugas.\r\nEkstrakurikuler Paskibra bertujuan sebagai wadah pembinaan bagi anak-anak dan pemuda Indonesia dengan prinsip-prinsip metodik kepaskibraan yang pelaksanaannya disesuaikan dengan keadaan, kepentingan, dan perkembangan bangsa dan Negara. Dan ekstrakurikuler ini bertujuan untuk menyiapkan siswa mampu melaksanakan upacara bendera yang lebih baik lagi, serta menunjang kegiatan belajar mengajar, khusunya di bidang pembinaan kesiswaan dalam pembentukan watak, kedisiplinan dan kepribadian siswa melalui kegiatan kepaskibraan.\r\nSaat ini banyak lulusan Paskibra SMA PEMBANGUNAN NASIONAL yang lolos sampai ditingkat nasional, dan aktif dalam kepengurusan Paskibra tingkat provinsi.'),
(5, 'MARCHING BAND - SMA PEMBANGUNAN NASIONAL', 'Marching band dan drum band bisa dibilang sebagai perpaduan antara unsur kedisiplinan dan seni. Siswa SMA PEMBANGUNAN NASIONAL khususnya banyak meminati kegiatan itu sebagai satu ekstrakurikuler favorit yang eksclusif karena didukung dengan fasilitas mempuni yang tidak murah.\r\nSecara umum, drum band dan  marching band adalah perpaduan musik, baris-berbaris, gerak tari dan irama yang menjadi ekstrakurikuler eksclusif bagi siswa.\r\nAktif di ekstrakurikuler ini tentunya juga menambah nasionalisme. Dan prestasi dari hasil kerja keras yang cukup menyita waktu dan fisik menjadi bekal untuk mencapai hal positif lainnya di masa depan.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ekskul`
--

CREATE TABLE `tbl_ekskul` (
  `id` int(15) NOT NULL,
  `nama_ekskul` varchar(255) DEFAULT NULL,
  `pembina` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ekskul`
--

INSERT INTO `tbl_ekskul` (`id`, `nama_ekskul`, `pembina`) VALUES
(2, 'PMR', 'Joshua Suherman'),
(3, 'Basket', 'Jerome Polin'),
(4, 'Paskibra', 'Choirul Yayat'),
(5, 'Marching Band', 'Bimbim'),
(1, 'Pramuka', 'Maudy Ayunda');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nip` int(10) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `mata_pelajaran` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id`, `nama`, `nip`, `jenis_kelamin`, `no_hp`, `tempat_lahir`, `tanggal_lahir`, `mata_pelajaran`, `alamat`, `foto`) VALUES
(7, 'Fauzi Ahmadd', 123456789, 'L', '080101010100', 'Bogor', '1979-01-14', 'MIPA', 'Surabaya', 'guru.png'),
(14, 'Tripuji', 987654321, 'L', '08121212121', 'Sidoarjo', '1976-01-11', 'MIPA', 'Surabaya', 'guru.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_mapel` int(11) NOT NULL,
  `mapel` varchar(30) DEFAULT NULL,
  `guru_matapelajaran` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_mapel`, `mapel`, `guru_matapelajaran`) VALUES
(6, 'Biologi', 7),
(7, 'Fisika', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_artikel`
--

CREATE TABLE `tbl_kategori_artikel` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori_artikel`
--

INSERT INTO `tbl_kategori_artikel` (`id`, `nama_kategori`) VALUES
(3, 'Kegiatan Sekolah'),
(10, 'Event');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`id`, `nama`, `username`, `password`, `foto`) VALUES
(3, 'Administrator', 'admin', '$2y$10$9uAKnax9/7HoMVtMFWDUEe6GhtWdq5SIn75AWwHnYboKctXCfybVG', 'administrator.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nis` int(4) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tempat_lahir` varchar(80) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `foto` varchar(120) DEFAULT NULL,
  `mapel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `nama`, `nis`, `password`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_hp`, `foto`, `mapel`) VALUES
(1, 'Risma', 1818, '1818', 'P', 'Bojonegoro', '2001-11-27', 'Surabaya', '85601100888', 'siswa.png', 6),
(3, 'Dodot', 1819, '1819', 'L', 'Bojong Gede', '2001-11-28', 'Surabaya', '08123456789', 'siswa.png', 7),
(4, 'Didit', 1820, '1820', 'L', 'Jayapura', '2001-11-29', 'Surabaya', '08101010101', 'siswa.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tentang_website`
--

CREATE TABLE `tbl_tentang_website` (
  `id` int(11) NOT NULL,
  `tentang_website` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tentang_website`
--

INSERT INTO `tbl_tentang_website` (`id`, `tentang_website`) VALUES
(1, '<p>Tentang Website SMA PEMBANGUNAN NASIONAL dan pembaharuan Versinya.</p><p>Website SMA PEMBANGUNAN NASIONAL sebagai media yang dikelola oleh sekolah dan berada di Wilayah Negara Kesatuan Republik Indonesia tentunya Taat dan Patuh sepenuhnya terhadap Hukum dan Perundang Undangan yang berlaku di wilayah Negara Kesatuan Republik Indonesia. Dan mentaati Undang Undang Nomor 19 Tahun 2016 tentang ITE.</p><p>Website SMA PEMBANGUNAN NASIONAL mulai dikerjakan pada bulan Mei 2022 sebagai tugas final project mata kuliah pemrograman web D081</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visi_misi`
--

CREATE TABLE `tbl_visi_misi` (
  `id` int(11) NOT NULL,
  `visi_misi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_visi_misi`
--

INSERT INTO `tbl_visi_misi` (`id`, `visi_misi`) VALUES
(1, '<p><strong>Visi SMA PEMBANGUNAN NASIONAL</strong></p><p>Terwujudnya favorit unggul berlandaskan IMTAQ dan IPTEK yang berwawasan perdamaian.</p><p><strong>Misi SMA PEMBANGUNAN NASIONAL</strong></p><ol><li>Menanamkan keimanan, ketaqwaan, dan akhlak mulia</li><li>Mewujudkan Manajemen Berbasis Sekolah (MBS) yang profesional</li><li>Mewujudkan Pembelajaran Aktif Kreatif dan Menyenangkan (PAKEM)</li><li>Mewujudkan generasi yang menguasai perkembangan IPTEK</li><li>Mewujudkan struktur dan muatan KTSP yang berwawasan perdamaian</li><li>Mewujudkan siswa beriman dan bertaqwa kepada Tuhan Yang Maha Esa</li><li>Mewujudkan siswa yang memiliki moral, etika, dan pribadi luhur</li><li>Mewujudkan pendidik dan tenaga pendidik yang berkompeten di bidangnya</li><li>Mewujudkan pengembangan keterampilan siswa di bidang akademik maupun non-akademik</li><li>Mewujudkan lingkungan sekolah yang memadai, kondusif, dan menyenangkan</li></ol>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rapor`
--
ALTER TABLE `rapor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tbl_detail_ekskul`
--
ALTER TABLE `tbl_detail_ekskul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_mapel`),
  ADD KEY `tbl_jurusan_ibfk_1` (`guru_matapelajaran`);

--
-- Indexes for table `tbl_kategori_artikel`
--
ALTER TABLE `tbl_kategori_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tentang_website`
--
ALTER TABLE `tbl_tentang_website`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_visi_misi`
--
ALTER TABLE `tbl_visi_misi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rapor`
--
ALTER TABLE `rapor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_detail_ekskul`
--
ALTER TABLE `tbl_detail_ekskul`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kategori_artikel`
--
ALTER TABLE `tbl_kategori_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_tentang_website`
--
ALTER TABLE `tbl_tentang_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_visi_misi`
--
ALTER TABLE `tbl_visi_misi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD CONSTRAINT `tbl_artikel_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori_artikel` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD CONSTRAINT `tbl_jurusan_ibfk_1` FOREIGN KEY (`guru_matapelajaran`) REFERENCES `tbl_guru` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
