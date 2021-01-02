-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2021 pada 15.23
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobile_ganggu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hero`
--

CREATE TABLE `hero` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_role` int(10) NOT NULL,
  `image` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hero`
--

INSERT INTO `hero` (`id`, `name`, `id_role`, `image`, `deskripsi`) VALUES
(1, 'agumon', 1, '/images/agumon.jpg', 'dapat menambak api'),
(2, 'gatomon', 4, '/images/gatomon.jpg', 'seperti pada umumnya kucing, menyerang dengan cakar'),
(3, 'warGreymon', 3, '/images/warGreymon.jpg', 'namanya aja udah warGreymon pasti suka war'),
(4, 'patamon', 4, '/images/patamon.jpg', 'bisa terbang, burst damage'),
(5, 'gabumon', 5, '/images/gabumon.jpg', 'support sejati'),
(7, 'devimon', 2, '/images/devimon.jpg', 'sudah jelaslah ya namnya devimon , devil == jahat'),
(8, 'MetalGreymon', 3, '/images/metalGreymon.jpg', 'sebagian badannya metal'),
(9, 'biyomon', 4, '/images/biyomon.jpg', 'hampir mirip ayam'),
(10, 'koromon', 5, '/images/koromon.jpg', 'cuma ada mata, telinga,badan sama mulut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'mage'),
(2, 'marksman'),
(3, 'tank'),
(4, 'support'),
(5, 'assassin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test` (`id_role`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hero`
--
ALTER TABLE `hero`
  ADD CONSTRAINT `test` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
