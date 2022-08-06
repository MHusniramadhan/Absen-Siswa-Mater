-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Bulan Mei 2022 pada 07.03
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absen_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `aktif` varchar(5) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `username`, `password`, `aktif`, `foto`) VALUES
(1, 'Administrator', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Y', '495-4952535_create-digital-profile-icon-blue-user-profile-icon.png'),
(2, 'Muhamad Husni Ramadhan', 'husniramadhan97@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Y', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_guru` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nip`, `nama_guru`, `email`, `password`, `foto`, `status`) VALUES
(137, '191011400008', ' Muhammad Baidawi S.Kom', 'dawi.gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', 'Y'),
(138, '191011400952', 'Nina Amelia Silitonga. S.Kom', ' ninasilitonga@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '17603.png', 'Y'),
(139, '181011400510', 'Adistyo Ariansa S.Kom', ' adistyoariansa2@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', 'Y'),
(140, '191011402594', 'Tri Widiayu Ningsih', ' triwidi8880@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', 'Y'),
(141, '191011400047', 'Trisna Ayu Silvia.S.Kom', 'trisnaayu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', 'Y'),
(142, '191011400011', 'Muhamad husni ramadhan.S.Kom', 'husniramadhan97@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kepsek`
--

CREATE TABLE `tb_kepsek` (
  `id_kepsek` int(11) NOT NULL,
  `nip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `nama_kepsek` varchar(120) CHARACTER SET latin1 NOT NULL,
  `email` varchar(65) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `foto` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` varchar(5) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kepsek`
--

INSERT INTO `tb_kepsek` (`id_kepsek`, `nip`, `nama_kepsek`, `email`, `password`, `foto`, `status`) VALUES
(123, '196203131983051', ' Suaib, S.Pd', 'suaib@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_master_mapel`
--

CREATE TABLE `tb_master_mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(40) NOT NULL,
  `mapel` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_master_mapel`
--

INSERT INTO `tb_master_mapel` (`id_mapel`, `kode_mapel`, `mapel`) VALUES
(1, 'Tema 1-1561560093', ' Selamatkan Mahluk Hidup'),
(2, 'Tema 2-1561560129', ' Persatuan Dalam Perbedaan'),
(3, 'Tema 3-1561871991', 'Tokoh & Penemuan'),
(4, 'Tema 4-1561872004', 'Globalisasi'),
(5, 'Tema 5-1561872013', ' Wirausaha'),
(6, 'Tema 6-1561872026', 'Menuju Masyarakat Sejahtera'),
(7, 'Tema 7-1561872043', 'Kepemimpinan'),
(8, 'Tema 8-1615002340', 'Bumiku.'),
(9, 'Tema 9-1651028168', 'Menjelajah Angkasa Luar.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mengajar`
--

CREATE TABLE `tb_mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `kode_pelajaran` varchar(30) NOT NULL,
  `hari` varchar(40) NOT NULL,
  `jam_mengajar` varchar(60) NOT NULL,
  `jamke` varchar(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_thajaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mengajar`
--

INSERT INTO `tb_mengajar` (`id_mengajar`, `kode_pelajaran`, `hari`, `jam_mengajar`, `jamke`, `id_guru`, `id_mapel`, `id_mkelas`, `id_semester`, `id_thajaran`) VALUES
(11, 'Tema-1651033239', 'Senin', '08.00 - 10.00', '2', 137, 1, 5, 4, 8),
(12, 'Tema-1651033789', 'Selasa', '10.00-12.00', '3', 138, 2, 6, 4, 8),
(13, 'Tema-1651033857', 'Selasa', '10.00-12.00', '3', 138, 2, 5, 4, 8),
(14, 'Tema-1651033958', 'Selasa', '08.00 - 10.00', '1', 139, 3, 5, 4, 8),
(15, 'Tema-1651034006', 'Senin', '08.00 - 10.00', '1', 139, 1, 6, 4, 8),
(16, 'Tema-1651034041', 'Rabu', '08.00 - 10.00', '1', 137, 3, 6, 4, 8),
(17, 'Tema-1651034078', 'Rabu', '08.00 - 10.00', '1', 140, 5, 5, 4, 8),
(18, 'Tema-1651034102', 'Rabu', '10.00-12.00', '2', 140, 5, 6, 4, 8),
(19, 'Tema-1651034132', 'Kamis', '08.00 - 10.00', '1', 141, 6, 5, 4, 8),
(20, 'Tema-1651034158', '', '10.00-12.00', '2', 141, 6, 6, 4, 8),
(21, 'Tema-1651034315', 'Sabtu', '08.00 - 10.00', '1', 142, 7, 5, 4, 8),
(22, 'Tema-1651034365', 'Sabtu', '10.00-12.00', '2', 142, 8, 6, 4, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mkelas`
--

CREATE TABLE `tb_mkelas` (
  `id_mkelas` int(11) NOT NULL,
  `kd_kelas` varchar(40) NOT NULL,
  `nama_kelas` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mkelas`
--

INSERT INTO `tb_mkelas` (`id_mkelas`, `kd_kelas`, `nama_kelas`) VALUES
(5, 'KL-1616673105', 'VIA'),
(6, 'KL-1616673114', 'VIB'),
(7, 'KL-1616673120', 'VIC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_semester`
--

CREATE TABLE `tb_semester` (
  `id_semester` int(11) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_semester`
--

INSERT INTO `tb_semester` (`id_semester`, `semester`, `status`) VALUES
(4, 'Ganjil', 1),
(5, 'Genap', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(60) NOT NULL,
  `nama_siswa` varchar(120) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `th_angkatan` year(4) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `tempat_lahir`, `tgl_lahir`, `jk`, `alamat`, `password`, `foto`, `status`, `th_angkatan`, `id_mkelas`) VALUES
(1, '19207094', 'AGUS SUTIAWAN', 'Tanggerang', '2010-01-26', 'L', 'Tanggerang', '1bd2da49094ece5880ad0025828e362c284a9ce3', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(2, '19207095', 'AHADIAH INDRIYANI', 'Tanggerang', '2010-02-23', 'P', 'Tanggerang', 'af6744518e24a3874fdecab3bfef8d36fd3f2442', '17603.png', '1', 2017, 5),
(3, '19207096', 'ALIF SOFIAN RAMADHAN', 'Tanggerang', '2011-02-01', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(4, '19207097', 'ASEP SAEPUL RIZAL', 'Tanggerang', '2010-02-23', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(5, '19207098', 'ASNAWATI', 'Tanggerang', '2010-02-23', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 5),
(6, '19207099', 'BUNGA SUCI PRATIWI SUANDI', 'Tanggerang', '2010-02-23', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 5),
(7, '19207100', 'DIMAS SAIPUL MUJAB', 'Tanggerang', '2010-02-23', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(8, '19207101', 'ENENG', 'Tanggerang', '2010-02-23', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 5),
(9, '19207102', 'HANAPI', 'Jakarta', '2010-06-23', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(10, '19207103', 'HERDIANSYAH', 'Jakarta', '2010-10-03', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(11, '19207104', 'IPTAHUDIN', 'Serang', '2010-07-13', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(12, '20218126', 'IRHAN TARYADI', 'Sukabumi', '2010-01-13', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(13, '19207105', 'KHOIRUL MUHAIMIN', 'Bogor', '2010-11-09', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(14, '19207107', 'MOCHAMAD FIRDAUS PADHLI RAMADHAN', 'Jawa Tengah', '2010-04-29', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(15, '19207108', 'Moh. Rifki', 'Lampung', '2010-02-09', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(16, '19207109', 'MUHAMAD AZHARI', 'Cianjur', '2010-03-19', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(17, '19207111', 'Muhamad Yusup', 'Tanggerang Setelatan', '2010-05-10', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(18, '19207110', 'MUHAMMAD HAFIDZ', 'Jakarta Selatan', '2010-05-14', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(19, '19207112', 'NENG JULPA', 'Jakarta Barat', '2010-03-12', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 5),
(20, '19207113', 'NURAEDI', 'Puwekerto', '2010-05-11', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(21, '19207114', 'NURUL FATHIRA', 'Kota Tanggerang', '2010-06-17', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 5),
(22, '10207115', 'ROHADI', 'Yogyakarta', '2010-01-18', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(23, '19207116', 'RUSMIATI', 'Bengkulu', '2010-10-10', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 5),
(24, '19207117', 'SAEFUDDIN', 'Demak', '2010-09-10', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 5),
(25, '19207118', 'SARNAH', 'Depok', '2010-12-10', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '17603.png', '1', 2017, 5),
(26, '19207119', 'SINTA APRILIA', 'Depok', '2010-12-28', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 5),
(27, '19207120', 'Siti Nazwa', 'Depok', '2010-02-28', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 5),
(28, '19207121', 'SITI ZULIAH', 'Tanggerang', '2010-05-18', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 5),
(29, '19207122', 'SUCI AULIA PUTRI', 'Tanggerang', '2010-07-28', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 5),
(30, '19207063', 'AKUM PADHOLI', 'Tanggerang', '2012-02-27', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(31, '19207065', 'ANISA AULIA', 'Tanggerang', '2010-07-28', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 6),
(32, '19207066', 'DONAH', 'Tanggerang', '2010-07-28', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '17603.png', '1', 2017, 6),
(33, '19207067', 'DWI NURMALA SARI', 'Tanggerang', '2010-07-28', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 6),
(34, '19207068', 'EVAN FATUROHMAN', 'Tanggerang', '2010-07-28', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(35, '19207070', 'HAERUL RIPAI', 'Tanggerang', '2010-07-28', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(36, '19207071', 'INSAN MAULANA', 'Tanggerang', '2010-07-28', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(37, '19207072', 'IRMA PUJIAH', 'Tanggerang', '2010-07-28', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 6),
(38, '19207073', 'IRPAN KURNIAWAN', 'Tanggerang', '2010-07-28', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(39, '19207074', 'JENI SOLEHUDIN', 'Tanggerang', '2010-07-28', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(40, '19207075', 'M.FAJRIL HARIRI', 'Tanggerang', '2010-03-28', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(41, '19207076', 'MARIO FEBRIAN', 'Tanggerang', '2010-09-28', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(42, '19207077', 'MOHAMAD SOLEHUDIN', 'Tanggerang', '2010-09-28', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(43, '19207078', 'MUHAMAD ADNAN', 'Tanggerang', '2010-10-28', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(44, '19207079', 'MUHAMAD YUNUS', 'Tanggerang', '2010-10-10', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(45, '19207080', 'MUHIDIN', 'Tanggerang', '2010-10-28', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(46, '19207082', 'NOVA', 'Tanggerang', '2010-10-28', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 6),
(47, '19207083', 'NOVI', 'Tanggerang', '2010-06-28', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 6),
(48, '19207084', 'NURAIDA', 'Tanggerang', '2010-06-18', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 6),
(49, '19207085', 'PUTRI SEPTIANI', 'Tanggerang', '2010-02-18', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 6),
(50, '19207086', 'RIZAL VAUZAN', 'Tanggerang', '2010-01-20', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(51, '19207087', 'ROHEDI', 'Tanggerang', '2010-01-12', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(52, '19207088', 'ROHMATULLOH', 'BEKASI', '2010-11-12', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(53, '19207089', 'ROSMALIA', 'JAKARTA BARAT', '2010-01-10', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 6),
(54, '19207090', 'SABRINA PEBRIANTI', 'JAKARTA UTARA', '2011-11-10', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 6),
(55, '19207091', 'SAHARA', 'JAKARTA TIMUR', '2010-11-11', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 6),
(56, '19207092', 'SAHRUL SAEPUDIN', 'JAKARTA SELATAN', '2010-11-01', 'L', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', 2017, 6),
(57, '19207093', 'SOPIAH', 'PRIUK', '2010-05-21', 'P', 'Tanggerang', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', '1', 2017, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_thajaran`
--

CREATE TABLE `tb_thajaran` (
  `id_thajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_thajaran`
--

INSERT INTO `tb_thajaran` (`id_thajaran`, `tahun_ajaran`, `status`) VALUES
(8, '2020/2021', 1),
(9, '2021/2022', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_walikelas`
--

CREATE TABLE `tb_walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `_logabsensi`
--

CREATE TABLE `_logabsensi` (
  `id_presensi` int(11) NOT NULL,
  `id_mengajar` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `tgl_absen` date NOT NULL,
  `ket` enum('H','I','S','T','A','C') NOT NULL,
  `pertemuan_ke` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  ADD PRIMARY KEY (`id_kepsek`);

--
-- Indeks untuk tabel `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  ADD PRIMARY KEY (`id_mkelas`);

--
-- Indeks untuk tabel `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  ADD PRIMARY KEY (`id_thajaran`);

--
-- Indeks untuk tabel `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD PRIMARY KEY (`id_walikelas`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `_logabsensi`
--
ALTER TABLE `_logabsensi`
  ADD PRIMARY KEY (`id_presensi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT untuk tabel `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  MODIFY `id_kepsek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT untuk tabel `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  MODIFY `id_mkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_semester`
--
ALTER TABLE `tb_semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  MODIFY `id_thajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `_logabsensi`
--
ALTER TABLE `_logabsensi`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
