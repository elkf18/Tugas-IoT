-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2021 pada 05.57
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sensor1`
--

CREATE TABLE `sensor1` (
  `id` int(11) NOT NULL,
  `id_sensor` varchar(11) NOT NULL,
  `sensor1` float NOT NULL,
  `Waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sensor1`
--

INSERT INTO `sensor1` (`id`, `id_sensor`, `sensor1`, `Waktu`) VALUES
(1, '1', 25, '2021-11-20 14:24:27'),
(3, '1', 14, '2021-11-20 14:40:48'),
(4, '3', 37, '2021-11-21 14:57:13'),
(5, '1', 28, '2021-11-22 11:49:50'),
(6, '1', 36, '2021-11-22 11:50:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sensor2`
--

CREATE TABLE `sensor2` (
  `id` int(11) NOT NULL,
  `id_sensor` varchar(11) NOT NULL,
  `sensor2` float NOT NULL,
  `Waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sensor2`
--

INSERT INTO `sensor2` (`id`, `id_sensor`, `sensor2`, `Waktu`) VALUES
(1, '1', 30, '2021-11-20 14:21:22'),
(2, '2', 53, '2021-11-21 14:50:31'),
(3, '1', 33, '2021-11-21 15:50:43'),
(4, '3', 46, '2021-11-22 05:31:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_control`
--

CREATE TABLE `tb_control` (
  `id_control` int(11) NOT NULL,
  `nama_objek_control` varchar(255) NOT NULL,
  `state` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_control`
--

INSERT INTO `tb_control` (`id_control`, `nama_objek_control`, `state`) VALUES
(1, 'TV', 0),
(3, 'Kipas', 1),
(5, 'Kulkas', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sensor`
--

CREATE TABLE `tb_sensor` (
  `id_sensor` int(11) NOT NULL,
  `nama_objek_sensor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_sensor`
--

INSERT INTO `tb_sensor` (`id_sensor`, `nama_objek_sensor`) VALUES
(1, 'Kipas Angin'),
(2, 'TV'),
(3, 'Laptop'),
(4, 'me');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'nita', 'nita'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'elya', 'elya');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sensor1`
--
ALTER TABLE `sensor1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sensor` (`id_sensor`),
  ADD KEY `sensor1` (`sensor1`);

--
-- Indeks untuk tabel `sensor2`
--
ALTER TABLE `sensor2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sensor` (`id_sensor`),
  ADD KEY `sensor2` (`sensor2`);

--
-- Indeks untuk tabel `tb_control`
--
ALTER TABLE `tb_control`
  ADD PRIMARY KEY (`id_control`);

--
-- Indeks untuk tabel `tb_sensor`
--
ALTER TABLE `tb_sensor`
  ADD PRIMARY KEY (`id_sensor`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sensor1`
--
ALTER TABLE `sensor1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sensor2`
--
ALTER TABLE `sensor2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_control`
--
ALTER TABLE `tb_control`
  MODIFY `id_control` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_sensor`
--
ALTER TABLE `tb_sensor`
  MODIFY `id_sensor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
