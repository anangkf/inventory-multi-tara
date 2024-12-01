-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2024 at 10:52 PM
-- Server version: 8.0.40-cll-lve
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invent57_inventoryweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_barang` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stok` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_satuan` int DEFAULT NULL,
  `id_jenis` int DEFAULT NULL,
  `foto` varchar(225) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `stok`, `id_satuan`, `id_jenis`, `foto`) VALUES
('BRG-0001', 'BGT 13', '1200', 5, 4, 'BGT_13_-_2.png'),
('BRG-0002', 'BGT 15', '500', 5, 4, 'BGT_15_-_1.png'),
('BRG-0003', 'BGT 17', '500', 5, 4, 'BGT_17_-_2.png'),
('BRG-0004', 'BGT 24 Cokelat', '300', 5, 4, 'BGT_24_C_-_2.png'),
('BRG-0006', 'Tempat Nasi No. 1', '400', 5, 9, 'Tempat_Nasi_1_PP.JPG'),
('BRG-0007', 'Tempat Nasi No. 2', '500', 5, 9, 'tn_2__.png'),
('BRG-0008', 'Tempat Nasi No. 3', '500', 5, 9, 'tn_3_alas_tutup.jpeg'),
('BRG-0009', 'Tempat Nasi No. 6', '400', 5, 9, 'DSC01792.JPG'),
('BRG-0010', 'Tart Bulat 12', '300', 5, 6, 'Tart_Bulat_12_-_2.png'),
('BRG-0011', 'Tart Bulat 15 Kembang', '150', 5, 6, 'Tart_Bulat_15_-_2.png'),
('BRG-0012', 'Tart Bulat 18 C', '200', 5, 6, 'Tart_Bulat_18_C.jpeg'),
('BRG-0013', 'Tart Bulat 23', '100', 5, 6, 'Tart_Bulat_23_-_2.png'),
('BRG-0014', 'PET TR 0.25 x 65', '250', 6, 24, 'box.png'),
('BRG-0015', 'PET TR 0.25 x 65', '190', 6, 27, 'box.png'),
('BRG-0016', 'PET TR 0.28 x 60', '150', 6, 27, 'box.png'),
('BRG-0017', 'PET CKT 0.30 x 47', '180', 6, 27, 'box.png'),
('BRG-0018', 'PET CKT 0.40 x 60 ', '480', 6, 27, 'box.png'),
('BRG-0019', 'HIPS PTH 0.60 x 42', '370', 6, 30, 'box.png'),
('BRG-0020', 'HIPS PTH 0.60 x 48', '200', 6, 30, 'box.png'),
('BRG-0021', 'HIPS HTM 0.50 x 61', '160', 6, 30, 'box.png'),
('BRG-0022', 'HIPS CKT 0.38 x 47', '210', 6, 30, 'box.png'),
('BRG-0023', 'PP HTM 0.40 x 61', '105', 6, 28, 'box.png'),
('BRG-0024', 'PP PTH 0.40 x 47', '120', 6, 28, 'box.png'),
('BRG-0025', 'PVC TR 0.25 x 51 x 300', '200', 6, 31, 'box.png'),
('BRG-0026', 'PVC 0.30 x 46.5 x 300', '250', 6, 31, 'box.png');

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `id_pelanggan` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_barang` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_user` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jumlah_keluar` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_keluar` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_barang_keluar`, `id_pelanggan`, `id_barang`, `id_user`, `jumlah_keluar`, `tgl_keluar`) VALUES
('BRG-K-0001', 'SPLY-0004', 'BRG-0009', 'USR-001', '120', '2024-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `id_barang` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_user` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jumlah_masuk` int DEFAULT NULL,
  `tgl_masuk` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang_masuk`, `id_barang`, `id_user`, `jumlah_masuk`, `tgl_masuk`) VALUES
('BRG-M-0001', 'BRG-0007', 'USR-001', 42, '2024-11-29'),
('BRG-M-0002', 'BRG-0003', 'USR-001', 68, '2024-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int NOT NULL,
  `nama_jenis` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`, `ket`) VALUES
(4, 'Bolu', ''),
(5, 'Brownis', ''),
(6, 'Bulat', ''),
(7, 'Cup Cake', ''),
(8, 'BX', ''),
(9, 'Food', ''),
(10, 'Gelas', ''),
(11, 'Kotak', ''),
(12, 'Mangkok', ''),
(13, 'Mini', ''),
(14, 'Nampan', ''),
(15, 'SSC', ''),
(16, 'Stick', ''),
(18, 'Thinwall', ''),
(19, 'TTC', ''),
(20, 'GSM', ''),
(21, 'Domelid', ''),
(22, 'Sendok', ''),
(23, 'Special Order', ''),
(27, 'PET ', 'Bahan Baku'),
(28, 'PP ', 'Bahan Baku'),
(30, 'HIPS', 'Bahan Baku'),
(31, 'PVC', 'Bahan Baku');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_pelanggan` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notelp` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `notelp`, `alamat`) VALUES
('SPLY-0003', 'Lutzen id', '082119088683', 'Tambaksogra, Banyumas'),
('SPLY-0004', 'Intisarana Bhakti', '08819263442', 'Purwokerto Timur'),
('SPLY-0006', 'PT Beleaf Kebun Indonesia', '089740836143', 'Bandung'),
('SPLY-0007', 'Wecold', '081524331713', 'Sumbang, Banyumas'),
('SPLY-0008', 'Roen Bakery', '085288523260', 'Purwokerto Timur'),
('SPLY-0010', 'Resthi Nur Falah', '081381717621', 'Purbalingga'),
('SPLY-0011', 'Pringsewu', '082320192437', 'Baturraden'),
('SPLY-0012', 'Guntur', '085150192642', 'Cirebon'),
('SPLY-0013', 'PT Alamanda', '08116273591', 'Tegal'),
('SPLY-0014', 'Legeat', '08516275297', 'Cilacap'),
('SPLY-0015', 'Novi Lailatul', '088959106253', 'Jepara'),
('SPLY-0016', 'Dian Erviantari', '081992037165', 'Tangerang'),
('SPLY-0017', 'Ichigo Daifuku', '085607019728', 'Pabuaran, Purwokerto Utara'),
('SPLY-0019', 'Wayan Sujana', '087868820623', 'Bali'),
('SPLY-0020', 'Dicky Reza', '082211638791', 'Cianjur'),
('SPLY-0021', 'Agung', '087675713793', 'jl.baturraden');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` int NOT NULL,
  `nama_satuan` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`, `ket`) VALUES
(5, 'pcs', ''),
(6, 'kg', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `level` enum('gudang','admin','manajer') NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `notelp`, `level`, `password`, `foto`, `status`) VALUES
('USR-001', 'Administrasi', 'admin', 'admin@admin.com', '087856123445', 'admin', '0192023a7bbd73250516f069df18b500', 'user.png', 'Aktif'),
('USR-002', 'Gudang', 'gudang', 'gudang@gmail.com', '087817379229', 'gudang', '202446dd1d6028084426867365b0c7a1', 'user.png', 'Aktif'),
('USR-003', 'Manajer', 'manajer', 'manajer@gmail.com', '089291889228', 'manajer', '69b731ea8f289cf16a192ce78a37b4f0', 'user.png', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id_satuan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
