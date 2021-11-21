-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 07:27 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smarthome`
--

-- --------------------------------------------------------

--
-- Table structure for table `sensor1`
--

CREATE TABLE `sensor1` (
  `id` int(11) NOT NULL,
  `id_sensor` varchar(11) NOT NULL,
  `sensor1` varchar(255) NOT NULL,
  `Waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sensor1`
--

INSERT INTO `sensor1` (`id`, `id_sensor`, `sensor1`, `Waktu`) VALUES
(9, '1', '21', '2021-11-21 20:42:31'),
(10, '2', '23', '2021-11-21 20:44:18'),
(11, '1', '11', '2021-11-21 21:14:35'),
(12, '3', '21', '2021-11-21 22:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `sensor2`
--

CREATE TABLE `sensor2` (
  `id` int(11) NOT NULL,
  `id_sensor` varchar(11) NOT NULL,
  `sensor2` varchar(255) NOT NULL,
  `Waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sensor2`
--

INSERT INTO `sensor2` (`id`, `id_sensor`, `sensor2`, `Waktu`) VALUES
(9, '1', '55', '2021-11-21 20:46:18'),
(10, '2', '33', '2021-11-21 20:47:58'),
(11, '2', '56', '2021-11-21 21:19:34'),
(12, '3', '47', '2021-11-22 01:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `tb_control`
--

CREATE TABLE `tb_control` (
  `id_control` int(11) NOT NULL,
  `nama_objek_control` varchar(255) NOT NULL,
  `state` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_control`
--

INSERT INTO `tb_control` (`id_control`, `nama_objek_control`, `state`) VALUES
(1, 'TV', 1),
(3, 'PC', 1),
(4, 'Lampu', 0),
(5, 'Kulkas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_sensor`
--

CREATE TABLE `tb_sensor` (
  `id_sensor` int(11) NOT NULL,
  `nama_objek_sensor` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sensor`
--

INSERT INTO `tb_sensor` (`id_sensor`, `nama_objek_sensor`) VALUES
(1, 'Kipas Angin'),
(2, 'TV'),
(3, 'Kulkas');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'nita', 'nita'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sensor1`
--
ALTER TABLE `sensor1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sensor` (`id_sensor`),
  ADD KEY `sensor1` (`sensor1`);

--
-- Indexes for table `sensor2`
--
ALTER TABLE `sensor2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sensor` (`id_sensor`),
  ADD KEY `sensor2` (`sensor2`);

--
-- Indexes for table `tb_control`
--
ALTER TABLE `tb_control`
  ADD PRIMARY KEY (`id_control`);

--
-- Indexes for table `tb_sensor`
--
ALTER TABLE `tb_sensor`
  ADD PRIMARY KEY (`id_sensor`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sensor1`
--
ALTER TABLE `sensor1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sensor2`
--
ALTER TABLE `sensor2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_control`
--
ALTER TABLE `tb_control`
  MODIFY `id_control` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
