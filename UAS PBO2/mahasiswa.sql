-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2022 pada 14.32
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `kdjurusan` varchar(10) NOT NULL,
  `namajurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`kdjurusan`, `namajurusan`) VALUES
('KD01', 'Teknik Informatika'),
('KD02', 'Sistem Informasi (SI)'),
('KD03', 'Managemen'),
('KD04', 'Ilmu Hukum'),
('KD05', 'Farmasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nopendaftaran` int(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `asal` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nopendaftaran`, `nama`, `ttl`, `gender`, `asal`, `alamat`, `telpon`) VALUES
(12345, 'Hero A', '5 Januari 2000', 'Pria', 'sman 1 bjb', 'bjb', '0821'),
(17865, 'Dinda Adinda', 'Bjm 8 Oktober 1999', 'Wanita', 'SMAN 1 Bjm', 'Bjm', '0877');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pilihjurusan`
--

CREATE TABLE `pilihjurusan` (
  `nama` varchar(50) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pilihjurusan`
--

INSERT INTO `pilihjurusan` (`nama`, `ttl`, `gender`, `jurusan`) VALUES
('Andin', 'kdg 9 oktober 1998', 'Wanita', 'Managemen'),
('Dika', 'Bjb 7 oktober 1998', 'Pria', 'Ilmu Hukum'),
('Fitri', 'Hss 3 Agustus 2000', 'Wanita', 'Teknik Informatika'),
('Hero', 'bjb 1 januari 2000', 'Pria', 'Teknik Informatika');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kdjurusan`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nopendaftaran`);

--
-- Indeks untuk tabel `pilihjurusan`
--
ALTER TABLE `pilihjurusan`
  ADD PRIMARY KEY (`nama`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
