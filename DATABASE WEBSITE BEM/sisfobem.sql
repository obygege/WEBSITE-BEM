-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 12:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfobem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akun`
--

CREATE TABLE `tbl_akun` (
  `id_akun` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `level` varchar(10) DEFAULT NULL,
  `tanggal_register` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_akun`
--

INSERT INTO `tbl_akun` (`id_akun`, `nama`, `username`, `email`, `password`, `level`, `tanggal_register`) VALUES
(2, 'Ayu Oktavia', 'admin', 'ayu@gmail.com', '$2y$10$M0Z.QbgPaBpjGgAiyKUrU.AMmxx3QhEH104NI/rgt2oRiXk.ob3fO', '1', '2022-06-13 12:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `tanggal_input` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `tanggal_input`) VALUES
(1, 'Berita', '2022-03-25 21:32:57'),
(2, 'Kegiatan', '2022-03-25 21:32:57'),
(3, 'Program', '2022-03-25 21:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kontak`
--

CREATE TABLE `tbl_kontak` (
  `id_kontak` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `link_fb` text DEFAULT NULL,
  `link_ig` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`id_kontak`, `deskripsi`, `email`, `telepon`, `alamat`, `link_fb`, `link_ig`) VALUES
(1, 'Website Resmi Badan Eksekutif Mahasiswa (BEM) Politeknik Sekayu, Musi Banyuasin, Sumatera Selatan (30711)', 'myemail@gmail.com11', '08237355656511', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit.11', 'ini link fb11', 'ini link ig11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ormawa`
--

CREATE TABLE `tbl_ormawa` (
  `id_ormawa` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ormawa`
--

INSERT INTO `tbl_ormawa` (`id_ormawa`, `nama`, `deskripsi`, `gambar`) VALUES
(4, 'Dewan Perwakilan Mahasiswa (DPM)', '<p>Deskripsi DPM</p>', '62d7753e716f3.jpg'),
(5, 'Badan Eksekutif Mahasiswa (BEM)', '<p><strong>Badan eksekutif mahasiswa (BEM)</strong> adalah organisasi mahasiswa intra kampus yang merupakan lembaga eksekutif di tingkat pendidikan tinggi yang dipimpin oleh seorang Presiden Mahasiswa atau Ketua BEM.</p><p>Dalam melaksanakan program-programnya, umumnya BEM memiliki beberapa kementerian dan departemen atau bidang.</p><p><strong>Tugas BEM </strong></p><p><strong>BEM</strong> bertugas: Melaksanakan semua program di dalam Garis-Garis Besar Program Kerja (GBPK) yang telah disetujui.</p><p>Merencanakan dan mengorganisasikan program kegiatan kemahasiswaan dalam bidang eksekutif dan manajerial/ leadership di tingkat universitas.</p>', '62b33f4297b54.jpg'),
(6, 'Himpunan Mahasiswa Jurusan (HMJ)', '', '62b33f62c8fb4.jpg'),
(7, 'Himpunan Mahasiswa Teknik Informatika (HIMTIK)', '', '62b33f91cf30d.jpg'),
(8, 'Himpunan Mahasiswa Akuntansi (HIMA)', '', '62b33fa48ce50.jpg'),
(9, 'Himpunan Mahasiswa Teknik Refrigerasi Dan Tata Udara (HIMSTER)', '', '62b33ffa8f712.jpg'),
(10, 'Lembaga Dakwah Kampus (LDK)', '', '62b3403591efc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_postingan`
--

CREATE TABLE `tbl_postingan` (
  `id_postingan` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `tanggal_terbit` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_postingan`
--

INSERT INTO `tbl_postingan` (`id_postingan`, `judul`, `isi`, `kategori`, `gambar`, `status`, `penulis`, `tanggal_terbit`) VALUES
(10, 'redgh', '<p>sdhb</p>\r\n', 'Berita', '62b439c53c448.jpg', 'Aktif', 'Ayu Oktavia', '2022-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profil`
--

CREATE TABLE `tbl_profil` (
  `id_profil` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_profil`
--

INSERT INTO `tbl_profil` (`id_profil`, `judul`, `deskripsi`, `kategori`, `gambar`) VALUES
(1, 'Visi & Misi BEM Politeknik Sekayu 2021/2023', '<p>ini deskripsi visi dan misi bem</p>\r\n\r\n<p><strong>Visi </strong></p>\r\n\r\n<ol>\r\n	<li>asdsad</li>\r\n	<li>asdasd</li>\r\n	<li>asdsad</li>\r\n</ol>\r\n\r\n<p><strong>Misi</strong></p>\r\n\r\n<ol>\r\n	<li>asdasd</li>\r\n	<li>asdsad</li>\r\n	<li>asdasd</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', 'visi', '62d774e476950.jpg'),
(3, 'Struktur BEM Politeknik Sekayu 2021/2022', '<p>ini deskripsi struktur</p>\r\n', 'struktur', '624ed9b24b1f0.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id_slider` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id_slider`, `judul`, `deskripsi`, `gambar`) VALUES
(3, 'Selamat Datang', 'Website BEM Politeknik Sekayu', '624e9c00a2590.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `tbl_ormawa`
--
ALTER TABLE `tbl_ormawa`
  ADD PRIMARY KEY (`id_ormawa`);

--
-- Indexes for table `tbl_postingan`
--
ALTER TABLE `tbl_postingan`
  ADD PRIMARY KEY (`id_postingan`);

--
-- Indexes for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_ormawa`
--
ALTER TABLE `tbl_ormawa`
  MODIFY `id_ormawa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_postingan`
--
ALTER TABLE `tbl_postingan`
  MODIFY `id_postingan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
