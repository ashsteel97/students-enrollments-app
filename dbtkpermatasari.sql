-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2018 at 05:35 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkpermatasari`
--
CREATE DATABASE IF NOT EXISTS `tkpermatasari` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tkpermatasari`;

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE IF NOT EXISTS `murid` (
  `nmr_induk_mrd` int(5) NOT NULL,
  `kelompok` char(15) NOT NULL,
  `thn_pelajaran` char(15) NOT NULL,
  `nama_anak_lengkap` char(35) NOT NULL,
  `nama_anak_panggilan` char(35) NOT NULL,
  `jns_klmn` char(30) NOT NULL,
  `tmpt_lhr` char(30) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `almt_jln` char(60) NOT NULL,
  `almt_desa_kelurahan` char(30) NOT NULL,
  `almt_kecamatan` char(30) NOT NULL,
  `almt_kabupaten_kota` char(30) NOT NULL,
  `almt_provinsi` char(30) NOT NULL,
  `agama` char(30) NOT NULL,
  `kwrgn` char(30) NOT NULL,
  `anak_ke` char(30) NOT NULL,
  `jml_sdr_kndng` char(30) NOT NULL,
  `jml_sdr_tiri` char(30) NOT NULL,
  `jml_sdr_angkat` char(30) NOT NULL,
  `status_anak` char(30) NOT NULL,
  `bhs_sehari_hari` char(30) NOT NULL,
  `gol_dar` char(30) NOT NULL,
  `pnykt_yg_diderita` char(30) NOT NULL,
  `imunisasi_yg_diterima` char(30) NOT NULL,
  `ciri_ciri_khusus` char(30) NOT NULL,
  `img` char(255) DEFAULT NULL,
  PRIMARY KEY (`nmr_induk_mrd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`nmr_induk_mrd`, `kelompok`, `thn_pelajaran`, `nama_anak_lengkap`, `nama_anak_panggilan`, `jns_klmn`, `tmpt_lhr`, `tgl_lhr`, `almt_jln`, `almt_desa_kelurahan`, `almt_kecamatan`, `almt_kabupaten_kota`, `almt_provinsi`, `agama`, `kwrgn`, `anak_ke`, `jml_sdr_kndng`, `jml_sdr_tiri`, `jml_sdr_angkat`, `status_anak`, `bhs_sehari_hari`, `gol_dar`, `pnykt_yg_diderita`, `imunisasi_yg_diterima`, `ciri_ciri_khusus`, `img`) VALUES
(1351, 'KELOMPOK A', '2017/2018', 'Celcia Grace Anggriani Coba', 'Celsia', 'PEREMPUAN', 'Pontianak', '2013-08-16', 'Jl. Selamat I, Gg Selamat I Dalam', 'Sei Jawi', 'Pontianak Barat', 'Pontianak', 'Kalimantan Barat', 'KRISTEN PROTESTAN', 'WNI', '1', '2', '0', '0', 'Tidak Yatim Piatu', 'Melayu, Indonesia', 'A', '', 'Lengkap', '', 'C:\\Users\\Phantom\\Documents\\Embarcadero\\Studio\\Projects\\TK PERMATA SARI 2\\img\\1351.jpg'),
(1352, 'KELOMPOK B', '2017/2018', 'Tito Rijaya', 'Tito', 'LAKI-LAKI', 'Majalengka', '2011-12-14', 'Jl. Bukit Barisan', 'Sei Jawi', 'Pontianak Kota', 'Pontianak', 'Kalimantan Barat', 'ISLAM', 'WNI', '1', '0', '0', '0', 'Tidak Yatim Piatu', 'Sunda, Indonesia', 'A', '', 'Lengkap', '', 'C:\\Users\\Phantom\\Documents\\Embarcadero\\Studio\\Projects\\TK PERMATA SARI 2\\img\\1352.jpg'),
(1354, 'KELOMPOK B', '2017/2018', 'Firas Gilbralta', 'Firas', 'PEREMPUAN', 'Pontianak', '2012-06-06', 'Jl. Pancasila Komp. Navigasi no. 50', 'Sungai Jawi', 'Kota Pontianak', 'Pontianak', 'Kalimantan Barat', 'ISLAM', 'WNI', '2', '3', '0', '0', 'Tidak Yatim Piatu', '', 'BELUM DIKETAHUI', '', '', '', 'C:\\Users\\Phantom\\Documents\\Embarcadero\\Studio\\Projects\\TK PERMATA SARI 2\\img\\1354.jpg'),
(1355, 'KELOMPOK B', '2017/2018', 'Abijar', 'Abijar', 'LAKI-LAKI', 'Pontianak', '2013-06-10', 'Jl H.R.A. Rahman Gg. Selamat I Dalam no. 58', 'Sei Jawi', 'Pontianak Barat', 'Pontianak', 'Kalimantan Barat', 'ISLAM', 'WNI', '1', '1', '0', '0', 'Tidak Yatim Piatu', '', 'BELUM DIKETAHUI', '', '', '', 'C:\\Users\\Phantom\\Documents\\Embarcadero\\Studio\\Projects\\TK PERMATA SARI 2\\img\\1355.jpg'),
(1356, 'KELOMPOK B', '2017/2018', 'Vanessa Rara Aprillia', 'Rasa', 'PEREMPUAN', 'Pontianak', '2012-04-25', 'Jl. Komyos Sudarso, Gg. Rambatan I no.7', 'Sei Jawi', 'Pontianak Kota', 'Pontianak', 'Kalimantan Barat', 'ISLAM', 'WNI', '5', '4', '0', '0', 'Tidak Yatim Piatu', 'Melayu, Indonesia', 'BELUM DIKETAHUI', '', '', '', 'C:\\Users\\Phantom\\Documents\\Embarcadero\\Studio\\Projects\\TK PERMATA SARI 2\\img\\1356.jpg'),
(1357, 'KELOMPOK A', '2017/2018', 'Syarif Ilyasha', 'Ilyas', 'LAKI-LAKI', 'Pontianak', '2015-08-14', 'Jl. Pancasila', '', '', '', '', 'ISLAM', 'WNI', '3', '', '', '', '-Pilih Status-', 'Melayu', 'BELUM DIKETAHUI', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE IF NOT EXISTS `mutasi` (
  `nmr_induk_mrd` int(5) NOT NULL,
  `nmr_mutasi` int(5) NOT NULL,
  `nama_anak_lengkap` char(35) NOT NULL,
  `diterima_tgl` date DEFAULT NULL,
  `kelompok` char(15) NOT NULL,
  `berasal_dari_tk` char(30) DEFAULT NULL,
  `keluar_dari_tk` date DEFAULT NULL,
  `keluar_karena` char(30) DEFAULT NULL,
  `keluar_ke` char(30) DEFAULT NULL,
  PRIMARY KEY (`nmr_mutasi`),
  UNIQUE KEY `nmr_induk_mrd` (`nmr_induk_mrd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mutasi`
--

INSERT INTO `mutasi` (`nmr_induk_mrd`, `nmr_mutasi`, `nama_anak_lengkap`, `diterima_tgl`, `kelompok`, `berasal_dari_tk`, `keluar_dari_tk`, `keluar_karena`, `keluar_ke`) VALUES
(1351, 1, 'Celcia Grace Anggriani Coba', '2017-12-04', 'KELOMPOK A', 'TK COBA A', '2017-12-05', 'PINDAH', 'TK COBA B'),
(1352, 2, 'Tito Rijaya', '2017-08-16', 'KELOMPOK B', 'TK IKAL', NULL, NULL, NULL),
(1357, 3, 'Syarif Ilyasha', NULL, 'KELOMPOK A', NULL, '2017-12-23', 'PINDAH', 'JAKARTA');

-- --------------------------------------------------------

--
-- Table structure for table `orangtua`
--

CREATE TABLE IF NOT EXISTS `orangtua` (
  `nmr_induk_mrd` int(5) NOT NULL,
  `nama_anak_lengkap` char(35) NOT NULL,
  `nama_ayah` char(35) NOT NULL,
  `nama_ibu` char(35) NOT NULL,
  `agama_ayah` char(30) NOT NULL,
  `agama_ibu` char(30) NOT NULL,
  `kwrgn_ayah` char(30) NOT NULL,
  `kwrgn_ibu` char(30) NOT NULL,
  `pend_ayah` char(25) NOT NULL,
  `pend_ibu` char(25) NOT NULL,
  `pekerjaan_ayah` char(25) NOT NULL,
  `pekerjaan_ibu` char(25) NOT NULL,
  `alamatrmh_ayah` char(60) NOT NULL,
  `alamatrmh_ibu` char(60) NOT NULL,
  `alamatkntr_ayah` char(60) NOT NULL,
  `alamatkntr_ibu` char(60) NOT NULL,
  `nama_wali` char(25) NOT NULL,
  `hubungan_wali` char(25) NOT NULL,
  `pend_wali` char(25) NOT NULL,
  `pekerjaan_wali` char(25) NOT NULL,
  PRIMARY KEY (`nmr_induk_mrd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orangtua`
--

INSERT INTO `orangtua` (`nmr_induk_mrd`, `nama_anak_lengkap`, `nama_ayah`, `nama_ibu`, `agama_ayah`, `agama_ibu`, `kwrgn_ayah`, `kwrgn_ibu`, `pend_ayah`, `pend_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `alamatrmh_ayah`, `alamatrmh_ibu`, `alamatkntr_ayah`, `alamatkntr_ibu`, `nama_wali`, `hubungan_wali`, `pend_wali`, `pekerjaan_wali`) VALUES
(1351, 'Celcia Grace Anggriani Coba', 'Setti', 'Normi', 'KRISTEN PROTESTAN', 'KRISTEN PROTESTAN', 'WNI', 'WNI', 'SMP', 'SMP', 'Swasta', 'RT', 'Jl Selamat 1', 'Jl Selamat 1', 'Jl Podomoro', '-', '', '', '', ''),
(1355, 'Abijar', 'Tojan', 'Shecha Nelly', 'ISLAM', 'ISLAM', 'WNI', 'WNI', 'SMA', 'SMA', 'Swasta', 'Swasta', 'Jl H.R.A. Rahman', 'Jl H.R.A. Rahman', '-', '-', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` char(15) NOT NULL,
  `password` char(30) NOT NULL,
  `status` char(15) NOT NULL,
  `nama` char(35) NOT NULL,
  `nuptk` char(15) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `status`, `nama`, `nuptk`) VALUES
('admin', 'admin', 'ADMIN', 'ADMIN', '12345'),
('user', 'user', 'USER', 'Userqaa', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
