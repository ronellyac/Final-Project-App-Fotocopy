-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 07:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `NAMA BARANG` varchar(20) NOT NULL,
  `KODE` varchar(10) NOT NULL,
  `HARGA` int(10) NOT NULL,
  `JUMLAH` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`NAMA BARANG`, `KODE`, `HARGA`, `JUMLAH`) VALUES
('pensil', '003', 2000, 2000),
('buku tulis', '001', 5000, 1),
('buku', '001', 5000, 1),
('pulpen jelly', '002', 2500, 2);

-- --------------------------------------------------------

--
-- Table structure for table `loginapp`
--

CREATE TABLE `loginapp` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginapp`
--

INSERT INTO `loginapp` (`id`, `username`, `password`) VALUES
(0, 'pegawai', 'bungamatahari'),
(1506, 'owner', 'bungamatahari');

-- --------------------------------------------------------

--
-- Table structure for table `menu_owner`
--

CREATE TABLE `menu_owner` (
  `tanggal` date NOT NULL,
  `pengeluaran` int(9) NOT NULL,
  `pemasukan` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_owner`
--

INSERT INTO `menu_owner` (`tanggal`, `pengeluaran`, `pemasukan`) VALUES
('2020-06-07', 222, 2),
('2020-06-07', 11, 1),
('2015-06-15', 20000, 5000),
('2020-06-07', 150000, 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loginapp`
--
ALTER TABLE `loginapp`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
