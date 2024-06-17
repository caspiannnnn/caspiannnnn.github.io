-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2024 at 07:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_galleryseni`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokumentasi`
--

CREATE TABLE `tb_dokumentasi` (
  `id_dokumentasi` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `nama_seniman` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_dokumentasi`
--

INSERT INTO `tb_dokumentasi` (`id_dokumentasi`, `thumbnail`, `nama_seniman`, `tanggal`, `deskripsi`, `views`) VALUES
(9, 'd1dc68abb97f304df419a26c6a957b65.jpg', 'Arifiandy', '2024-05-02', 'The Cat', 0),
(10, 'affdc9547f32f6cf9b1ad121967d43a2.jpg', 'Zainul', '2024-06-15', 'Multiverse', 0),
(11, '0a4b94720ee95d303824e982c71df412.jpg', 'Anna', '2024-06-08', 'The Box', 0),
(12, '90ff71951cd9eec87c9e667a25e80447.jpg', 'Rie', '2024-05-31', 'Color Cat', 0),
(13, '75c6e5a40bfeff3bce902b54dc782e20.jpg', 'Zain', '2024-06-22', 'Nebula Galaxy', 0),
(14, '3c5c6a86708165baf7a878d5e76cc168.jpg', 'Afrillia', '2024-06-01', 'Ocean Blue', 0),
(15, 'd16ddc80c198e42436fc4ac1d5f4afd2.jpg', 'Rie', '2024-05-31', 'Back The Kids', 0),
(16, 'b05de7ed75a5d4548ee4c6b90fa745ef.jpg', 'Anna', '2024-05-26', 'The Flower', 0),
(18, '63695bf407e43642c8f16746831e76c6.jpg', 'Zain', '2024-06-04', 'The Night', 0),
(19, '217d657bf8aa90d27e6263d15370bbf7.png', 'Arifiandy', '2024-06-08', 'Red Rose', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_quote`
--

CREATE TABLE `tb_quote` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `quote` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_quote`
--

INSERT INTO `tb_quote` (`id`, `nama`, `pekerjaan`, `profile`, `quote`) VALUES
(2, 'Riesty Sis Arifiandy', 'IT Cyber Security', '047de2d859e5f76210f7a7ac0cf2da66.jpg', 'Komunitas yang hebat, kita dapat melihat berbagai pameran karya seni disini meskipun kita tidak datang langsung ke gallery seni studio. Semoga komunitas ini dapat berkembang dan memberikan dampak positif bagi para seniman'),
(3, 'Anna Afrilliya', 'Data Analyst', '863ae10d0b294cd89572fa668fabd2a1.jpg', 'Web komintas yang cukup baik, saya dapat mengetahui karya karya para seniman seperti seni patung, lukis, kontemporer dan masih banyak lagi dan saya harap nantinya di web ini tersedia sistem checkout karya seni yang telah di pajang'),
(4, 'Zainul Firdaus', 'UI/UX Designer', 'a468f367878b5f2df3164cba284a181c.jpg', 'Terkesan simple dan menarik, pengalaman yang luar biasa bisa melihat karya-karya terbaik para seniman dan wadah yang positif untuk saling mengenal apa itu seni');

-- --------------------------------------------------------

--
-- Table structure for table `tb_settings`
--

CREATE TABLE `tb_settings` (
  `id` int(11) NOT NULL,
  `judul_halaman` varchar(255) DEFAULT NULL,
  `text_sambutan` varchar(255) DEFAULT NULL,
  `desc_sambutan` text DEFAULT NULL,
  `sampul_website` varchar(255) DEFAULT NULL,
  `desc_web` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_settings`
--

INSERT INTO `tb_settings` (`id`, `judul_halaman`, `text_sambutan`, `desc_sambutan`, `sampul_website`, `desc_web`, `alamat`, `phone`, `email`, `twitter`, `facebook`, `instagram`) VALUES
(1, 'Gallery Seni', 'Welcome to the Art Gallery Community', 'Tempat dimana menampilkan karya karya seniman Gen Z ', 'b0879fee8b144e5e14e01e920964b249.jpg', 'Gallery Seni adalah komunitas para seniman muda untuk menampilkan karya-karya terbaiknya', 'Jl. Ahmad Yani No.53, Blimbing, Kec. Blimbing, Kota Malang, Jawa Timur 65118', '+62-81515917089', 'ariviandyriesty@gmail.com', '#', '#', 'https://instagram.com/rei.iannn');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id_users` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id_users`, `nama`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'ariviandyriesty@gmail.com', '$2y$10$TnNdbIitGkEP1r50KIBQF.KToYmu5RmL1vtD.1Hrwzf5zSwSzotA.', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dokumentasi`
--
ALTER TABLE `tb_dokumentasi`
  ADD PRIMARY KEY (`id_dokumentasi`);

--
-- Indexes for table `tb_quote`
--
ALTER TABLE `tb_quote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_settings`
--
ALTER TABLE `tb_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dokumentasi`
--
ALTER TABLE `tb_dokumentasi`
  MODIFY `id_dokumentasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_quote`
--
ALTER TABLE `tb_quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_settings`
--
ALTER TABLE `tb_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
