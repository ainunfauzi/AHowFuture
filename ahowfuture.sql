-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 04:03 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahowfuture`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `send_to` int(5) NOT NULL,
  `send_by` int(3) NOT NULL,
  `message` tinytext NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grup_bimbel`
--

CREATE TABLE `grup_bimbel` (
  `id_grup` int(11) NOT NULL,
  `nama_grup` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grup_bimbel`
--

INSERT INTO `grup_bimbel` (`id_grup`, `nama_grup`) VALUES
(1, 'SAINTEK'),
(2, 'SOSHUM'),
(3, 'CAMPURAN');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(1000) NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `prospek_kerja` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `keterangan`, `prospek_kerja`) VALUES
(91911, 'Statistika', 'Mempelajari tentang matematika, ilmu ukur, aljabar, metode untuk membuat keputusan erdasarkan bukti-bukti yang berupa catatan bilangan.', 'Dapat Bekerja di lembaga penelutian, Biro pusat statistic, departemen telekomunikasi, dll.\r\nDapat bekerja di Industri Software dan Hardware seperti IBM, Microsoft, Lembaga Pemerintahan, Telkom, PLN, Biro Jasa Komsputer, dll.'),
(91912, 'Teknik Informatika', 'Mempelajari bagaimana dasar-dasar coding, membuat aplikasi pemrograman software , jaringan, website, hingga programming.', 'Dapat bekerja di Industri Software dan Hardware seperti IBM, Microsoft, Lembaga Pemerintahan, Telkom, PLN, Biro Jasa Komputer, dll.\r\n'),
(91913, 'Teknik Kimia', 'Mempelajari tentang kalkulus, termodinamika, kimia analitik, fluida, manajemen proyek, evaluasi ekonomi pabrik. Ilmu pengetahuan terapan perancangan, pembangunan dan pelaksanaan operasi dari pabrik-pabrik pengolah bahan mentah menjadi produk melalui kimiawi.', 'Dapat bekerja di Industri pengolahan minyak dan gas seperti Pertamina, Biro Konsultan dan Penelitian dll.'),
(91914, 'Administrasi Bisnis', 'Mempelajari Semua hal yang berkaitan dengan operasional perusahaan bisnis. Selain bisnis, mahasiswa yang masuk dalam jurusan ini akan diajarkan berbisnis hingga menciptakan sebuah produk.', 'Bisa bekerja di perusahaan pemerintah (BUMN) atau swasta.'),
(91915, 'Administrasi Keungan dann Perbankan', 'Mempelajari ilmu keuangan, manajemen surat, pengelolaan perusahaan hingga pembukuan transaksi perbankan dan lain-lain.', 'Dapat bekerjadi BUMN, instansi pemerintah, hingga perusahaan swasta.'),
(91916, 'Agroteknologi', 'Mempelajari dasar-dasar ilmiah dalam menemukan, menganalisa hingga memecahkan masalah. Mahasiswa juga akan dibeklai dengan kemampuan akademik dalam menerapkan dan mengembangkan ilmu pengetahuan.', 'Dapat bekerja di Perkebunan, Instansi Pemerintah, Lembaga Swadaya Masyarakat dan Lain Sebagainya.'),
(91917, 'Arkeologi', 'Mempelajari pendekatan sejarah. Mahasiswa akan mendapatkan pemahaman mengenai sejarah khususnya di masa kuno yang mana masyarakat belum mengenal angka dan huruf.', 'Dapat bekerja sebagai Arkeolog di Instansi Pemerintah, Sejarawan, Penulis Perjalanan, Teknisi Musum dan Konservator, Juru Arship hingga Antropologi.'),
(91918, 'Arsitektur', 'Mempelajari beragam desain dan rancangankonstruksi bangunan. Mahasiswa cenderung menuangkan ide, konsep serta desain di atas kertas.', 'Dapat bekerja di ssemua perusahaan, Melihat Infrastruktur di Indonesia semakin hari semakin berkembang.'),
(91919, 'Astronomi', 'Mempelajari tentang benda-benda langit. Menitikberatkan penerapan ilmu fisika.', 'Dapat menjadi Astronomer, Bekerja di Obsevarium atau Lembaga Antariksa.'),
(919110, 'Biologi', 'Mempelajari hal tentang makhluk hidup mulai dari manusia, tumbuhan, hewan hingga mikroba. Mahasiswa akan diajarkan tentang seluk beluk makhluk hidup mulai dari unit terkecil hingga beragam spesies.', 'Dapat menjadi seorang tenaga pendidik, Peneliti Laboratorium, dll.'),
(919111, 'Farmasi', 'Mempelajari dunia medis, khususnya obat-obatan. Struktur senyawa obat secara sintetisnya menjadikan sebuah obat yang bisa dikonsumsi.', 'Dapat bekerja menjadi seorang Apoteker, Laboratorium atau klinik.'),
(919112, 'Hubungan Internasional', 'Mempelajari bagaimana berdiploma, memahami konflik sebuah Negara, politik internasional dan sebaagainya.', 'Dapat bekerja menjadi peneliti politik, penyiar berita, wartawan, konsultasi imigrasi, diplomat, dan konsultasi politik, dan berbagai instansi yang membutuhkan tenangaa ahli hubungan internasional.'),
(919113, 'Ilmu Hukum', 'Mempelajari tentang semua hal mengenai hukum baik praktik ataupun teori.', 'Dapat menjadi seorang notaris, hakim, jaksa dan sebagainya.'),
(919114, 'Teknik Elektro', 'Hubungan arus listrik', 'PLN, dll.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(20) NOT NULL,
  `nama_admin` varchar(64) NOT NULL,
  `username_admin` varchar(64) NOT NULL,
  `password_admin` varchar(64) NOT NULL,
  `email_admin` varchar(64) NOT NULL,
  `nohp_admin` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username_admin`, `password_admin`, `email_admin`, `nohp_admin`) VALUES
(1, 'william', 'admin', 'admin', 'william99@gmail.com', 2299345);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengajar`
--

CREATE TABLE `tbl_pengajar` (
  `id_pengajar` int(11) NOT NULL,
  `nama_pengajar` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `username_pengajar` varchar(50) NOT NULL,
  `password_pengajar` varchar(50) NOT NULL,
  `id_grupbimbel` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengajar`
--

INSERT INTO `tbl_pengajar` (`id_pengajar`, `nama_pengajar`, `alamat`, `username_pengajar`, `password_pengajar`, `id_grupbimbel`) VALUES
(53551, 'Roni', 'Gresik', 'roni', 'roni', 1),
(53552, 'Elma', 'Lamongan', 'elma', 'elma', 2),
(53553, 'Yogi', 'Sukabumi', 'yogi', 'yogi', 3),
(53554, 'Kevin', 'Lampung', 'kevin', 'kevin', 1),
(53555, 'Sasa', 'Banyuwangi', 'sasa', 'sasa', 2),
(53556, 'Sinta', 'Madiun', 'sinta', 'sinta', 3),
(53557, 'Kartiko', 'Nganjuk', 'kartiko', 'kartiko', 1),
(53558, 'Erna', 'Madiun', 'erna', 'erna', 2),
(53559, 'Feni', 'Lampung', 'feni', 'feni', 3),
(53560, 'Sultan', 'Surabaya', 'sultan', 'sultan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id_siswa` int(20) NOT NULL,
  `nama_siswa` varchar(64) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `asal_sekolah` varchar(64) NOT NULL,
  `alamat` varchar(64) NOT NULL,
  `email_siswa` varchar(64) NOT NULL,
  `nohp_siswa` int(20) NOT NULL,
  `id_grupbimbel` int(20) NOT NULL,
  `username_siswa` varchar(64) NOT NULL,
  `password_siswa` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id_siswa`, `nama_siswa`, `tgl_lahir`, `asal_sekolah`, `alamat`, `email_siswa`, `nohp_siswa`, `id_grupbimbel`, `username_siswa`, `password_siswa`) VALUES
(1101, 'Clarissa', '2002-09-01', 'SMAN 1 Gresik', 'Gresik', 'Clarissa11@gmail.com', 1119014, 1, 'clarissa', 'clarissa'),
(1102, 'Rere', '2019-11-11', 'SMAN 1 Solo', 'Solo', 'Rere@gmail.com', 123677, 1, 'Rere', 'rere'),
(1103, 'Farhan', '1999-08-17', 'SMAN 2 Semarang', 'Semarang', 'Farhan@gmail.com', 110328, 2, 'Farhan', 'Farhan'),
(1104, 'Razka', '2000-06-17', 'SMAN 1 Bangkalan', 'Bangkalan', 'Razka@gmail.com', 1107928, 3, 'Razka', 'Razka'),
(1105, 'Azzam', '1999-10-28', 'SMAN 1 Ponorogo', 'Ponorogo', 'Azzam@gmail.com', 117658, 2, 'Azzam', 'Azzam'),
(1106, 'Riki', '2000-04-07', 'SMAN 2 Tanggerang', 'Tanggerang', 'Riki@gmail.com', 116786, 3, 'Riki', 'Riki'),
(1107, 'Friska', '1999-12-11', 'SMAN 3 Surabaya', 'Surabaya', 'Frizka@gmail.com', 118765, 3, 'Frizka', 'Frizka'),
(1108, 'Yolanda', '1999-09-20', 'SMAN 3 MAlang', 'Malang', 'Yolanda@gmail.com', 114567, 2, 'Yolanda', 'Yolanda'),
(1109, 'Citra', '1999-08-30', 'SMAN 4 Batu', 'Batu', 'Citra@gmail.com', 110900, 3, 'Citra', 'Citra'),
(1110, 'Shofia', '1999-01-14', 'SMAN 4 Jakarta', 'Jakarta', 'Shofia@gmail.com', 113782, 3, 'Shofia', 'Shofia');

-- --------------------------------------------------------

--
-- Table structure for table `universitas`
--

CREATE TABLE `universitas` (
  `id_universitas` int(11) NOT NULL,
  `nama_universitas` varchar(60) NOT NULL,
  `total_prodi` int(11) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `deskripsi` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `universitas`
--

INSERT INTO `universitas` (`id_universitas`, `nama_universitas`, `total_prodi`, `alamat`, `deskripsi`) VALUES
(1, 'Universitas Trunojoyo Madura', 24, 'Madura', 'Terakreditasi Baik  Sekali'),
(2, '', 25, 'Banda Aceh', 'Terakreditasi Baik Sekali'),
(3, 'Universitas Negeri Medan', 25, 'Meulaboh', 'Terakreditasi Baik Sekali'),
(4, 'Universitas Airlangga', 28, 'Surabaya', 'Terakreditasi Baik Sekali'),
(5, 'Universitas Sriwijaya', 26, 'Palembang', 'Terakreditasi Baik Sekali'),
(6, 'Universitas Lampung', 27, 'Bandar Lampung', 'Terakreditasi Baik Sekali'),
(7, 'Universitas Sultan Agung Tirtayasa', 26, 'Serang Banten', 'Terakreditasi Baik Sekali'),
(8, 'Universitas Indonesia', 30, 'Jakarta', 'Terakreditasi Baik Sekali'),
(9, 'Universitas Pembangunan Nasional Veteran Jakarta', 27, 'Pondok Labu', 'Terakreditasi Baik Sekali'),
(10, 'Institut Pertanian Bogor', 29, 'Bogor', 'Terakreditasi Baik Sekali'),
(11, 'Universitas Negeri Semarang', 26, 'Semarang', 'Terakreditasi Baik Sekali'),
(12, 'Universitas Sebelas Maret', 28, 'Surakarta', 'Terakreditasi Baik Sekali'),
(13, 'Universitas Gadjah Mada', 28, 'Yogyakarta', 'Terakreditasi Baik Sekali'),
(14, 'Universitas  Negeri Jember', 29, 'Jember', 'Terakreditasi Baik Sekali'),
(15, 'Universitas Brawijaya', 30, 'Malang', 'Terakreditasi Baik Sekali'),
(16, 'Universitas Negeri Surabaya', 29, 'Surabaya', 'Terakreditasi Baik Sekali'),
(17, 'Universitas Padjajaran', 24, 'Bandung', 'Terakreditasi Baik Sekali'),
(18, 'Universitas Siliwangi', 26, 'Tasikmalaya', 'Terakreditasi Baik Sekali'),
(19, 'Universitas Diponegoro', 27, 'Semarang', 'Terakreditasi Baik Sekali'),
(20, 'Universitas Jendral Sudirman', 28, 'Purwokerto', 'Terakreditasi Baik Sekali');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `sent_to` (`send_to`),
  ADD KEY `send_by` (`send_by`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grup_bimbel`
--
ALTER TABLE `grup_bimbel`
  ADD PRIMARY KEY (`id_grup`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_pengajar`
--
ALTER TABLE `tbl_pengajar`
  ADD PRIMARY KEY (`id_pengajar`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `universitas`
--
ALTER TABLE `universitas`
  ADD PRIMARY KEY (`id_universitas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grup_bimbel`
--
ALTER TABLE `grup_bimbel`
  MODIFY `id_grup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=919115;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pengajar`
--
ALTER TABLE `tbl_pengajar`
  MODIFY `id_pengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53561;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id_siswa` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111;

--
-- AUTO_INCREMENT for table `universitas`
--
ALTER TABLE `universitas`
  MODIFY `id_universitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`send_by`) REFERENCES `tbl_siswa` (`id_siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
