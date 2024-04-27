-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 09:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `target_kinerja`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `capaian`
--

CREATE TABLE `capaian` (
  `id_capaian` int(11) NOT NULL,
  `id_triwulan` int(11) NOT NULL,
  `id_iku` int(11) NOT NULL,
  `id_prodi` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `target_renaksi_tw` varchar(255) NOT NULL,
  `capaian_tw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `capaian`
--

INSERT INTO `capaian` (`id_capaian`, `id_triwulan`, `id_iku`, `id_prodi`, `tanggal`, `satuan`, `target_renaksi_tw`, `capaian_tw`) VALUES
(2, 2, 1, 1, '0000-00-00', '%', '25', '35');

-- --------------------------------------------------------

--
-- Table structure for table `iku`
--

CREATE TABLE `iku` (
  `id_iku` int(10) NOT NULL,
  `sasaran` varchar(255) NOT NULL,
  `no_iku` varchar(225) NOT NULL,
  `indikator` varchar(255) NOT NULL,
  `target_kinerja` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `iku`
--

INSERT INTO `iku` (`id_iku`, `sasaran`, `no_iku`, `indikator`, `target_kinerja`) VALUES
(1, '[1.0] Meningkatnya kualitas lulusanpendidikan tinggi', '[1.1] ', 'Persentase lulusan S1 danD4/D3/D2/D1 yang berhasil memilikipekerjaan; melanjutkan studi; atau menjadiwiraswasta', '65.20'),
(2, '[1.0] Meningkatnya kualitas lulusan pendidikan tinggi', '[1.2] ', 'Persentase mahasiswa S1 dan D4/D3/D2/D1 yang menjalankan kegiatan pembelajaran di luar program studi; atau meraih prestasi', '30'),
(3, '[2.0] Meningkatnya kualitas dosen pendidikan tinggi', '[2.1] ', 'Persentase dosen yang berkegiatan tridharma di perguruan tinggi lain, bekerja sebagai praktisi di dunia industri, atau membimbing mahasiswa berkegiatan di luar program studi', '30'),
(5, '[2.0] Meningkatnya kualitas dosen pendidikan tinggi', '[2.2] ', 'Persentase dosen yang memiliki sertifikat kompetensi/profesi yang diakui oleh dunia usaha dan dunia industri atau persentase pengajar yang berasal dari kalangan praktisi profesional, dunia usaha, atau dunia industri', '50'),
(6, '[2.0] Meningkatnya kualitas dosen pendidikan tinggi', '[2.3] ', 'Jumlah keluaran dosen yang berhasil mendapatkan rekognisi internasional atau diterapkan oleh masyarakat/industri/pemerintah per jumlah dosen', '100'),
(7, '[3.0] Meningkatnya kualitas kurikulum dan pembelajaran', '[3.1]', ' Jumlah kerjasama per program studi S1 dan D4/D3/D2/D1', '100'),
(8, '[3.0] Meningkatnya kualitas kurikulum dan pembelajaran', '[3.2] ', 'Persentase mata kuliah S1 dan D4/D3/D2/D1 yang menggunakan metode pembelajaran pemecahan kasus (case method) atau pembelajaran kelompok berbasis project (team-based project) sebagai bagian dari bobot evaluasi', '40'),
(9, '[3.0] Meningkatnya kualitas kurikulum dan pembelajaran', '[3.3] ', 'Persentase program studi S1 dan D4/D3 yang memiliki akreditasi atau sertifikasi internasional yang diakui pemerintah', '2.50');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(10) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Manajemen Informatika'),
(2, 'Agribisnis'),
(3, 'Teknik Mesin');

-- --------------------------------------------------------

--
-- Table structure for table `keterangan`
--

CREATE TABLE `keterangan` (
  `id_ket` int(11) NOT NULL,
  `id_iku` int(11) NOT NULL,
  `progres` varchar(255) NOT NULL,
  `kendala` varchar(255) NOT NULL,
  `strategi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(10) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `id_jurusan`, `nama_prodi`) VALUES
(1, 1, 'Manajemen informatika\r\n'),
(2, 1, 'Teknik Multimedia'),
(3, 1, 'Akuntansi Keuangan Perusahaan');

-- --------------------------------------------------------

--
-- Table structure for table `triwulan`
--

CREATE TABLE `triwulan` (
  `id_triwulan` int(10) NOT NULL,
  `nama_triwulan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `triwulan`
--

INSERT INTO `triwulan` (`id_triwulan`, `nama_triwulan`) VALUES
(1, 'Triwulan 1'),
(2, 'Triwulan 2'),
(5, 'Triwulan 33');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capaian`
--
ALTER TABLE `capaian`
  ADD PRIMARY KEY (`id_capaian`),
  ADD KEY `id_triwulan` (`id_triwulan`),
  ADD KEY `id_iku` (`id_iku`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `iku`
--
ALTER TABLE `iku`
  ADD PRIMARY KEY (`id_iku`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `keterangan`
--
ALTER TABLE `keterangan`
  ADD PRIMARY KEY (`id_ket`),
  ADD KEY `id_iku` (`id_iku`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `triwulan`
--
ALTER TABLE `triwulan`
  ADD PRIMARY KEY (`id_triwulan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `capaian`
--
ALTER TABLE `capaian`
  MODIFY `id_capaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `iku`
--
ALTER TABLE `iku`
  MODIFY `id_iku` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `keterangan`
--
ALTER TABLE `keterangan`
  MODIFY `id_ket` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `triwulan`
--
ALTER TABLE `triwulan`
  MODIFY `id_triwulan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `capaian`
--
ALTER TABLE `capaian`
  ADD CONSTRAINT `capaian_ibfk_1` FOREIGN KEY (`id_iku`) REFERENCES `iku` (`id_iku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `capaian_ibfk_3` FOREIGN KEY (`id_triwulan`) REFERENCES `triwulan` (`id_triwulan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `capaian_ibfk_4` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keterangan`
--
ALTER TABLE `keterangan`
  ADD CONSTRAINT `keterangan_ibfk_1` FOREIGN KEY (`id_iku`) REFERENCES `iku` (`id_iku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `qwer` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
