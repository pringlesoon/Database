-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2024 at 05:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `readtdn`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `buku_id` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `sampul` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`buku_id`, `judul`, `pengarang`, `penerbit`, `tahun`, `kategori`, `lokasi`, `sampul`) VALUES
(1, 'Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 'Bloomsbury Publishing', 1997, 'Fantasi', '', ''),
(2, 'The Hobbit', ' J.R.R. Tolkien', 'Allen & Unwin', 1937, 'Fantasi', '', ''),
(3, 'The Name of the Wind', 'Patrick Rothfuss', 'DAW Books', 2007, 'Fantasi', '', ''),
(4, 'The Night Circus', 'Erin Morgenstern', 'Doubleday', 2011, 'Fantasi', '', ''),
(5, 'The Alchemist', 'Paulo Coelho', 'HarperCollins', 1988, 'Fiksi', '', ''),
(6, 'A Game of Thrones', 'George R.R. Martin', 'Bantam Books', 1966, 'Fantasi', '', ''),
(7, 'The Lord of the Rings', 'J.R.R. Tolkien', ' Allen & Unwin', 1954, 'Fantasi', '', ''),
(8, 'American Gods', 'Neil Gaiman', 'William Morrow', 2001, 'Fantasi', '', ''),
(9, 'Mistborn: The Final Empire', 'Brandon Sanderson', 'Tor Books', 2006, 'Fantasi', '', ''),
(10, 'Neverwhere', 'Neil Gaiman', 'BBC Books', 1996, 'Fantasi', '', ''),
(11, 'The Lies of Locke Lamora', 'Scott Lynch', 'Gollancz', 2006, 'Fantasi', '', ''),
(12, 'The Magicians', ' Lev Grossman', ' Viking Press', 2009, 'Fantasi', '', ''),
(13, 'Eragon', 'Christopher Paolini', 'Alfred A. Knopf', 2002, 'Fantasi', '', ''),
(14, 'The Golden Compass', 'Philip Pullman', 'Scholastic Point', 1995, 'Fantasi', '', ''),
(15, 'Coraline', 'Neil Gaiman', 'HarperCollins', 2002, 'Fantasi', '', ''),
(16, 'The Graveyard Book', 'Neil Gaiman', 'HarperCollins', 2008, 'Fantasi', '', ''),
(17, 'Percy Jackson & the Olympians: The Lightning Thief', 'Rick Riordan', 'Miramax Books', 2005, 'Fantasi', '', ''),
(18, 'The Chronicles of Narnia: The Lion, the Witch and ', 'C.S. Lewis', 'Geoffrey Bles', 1950, 'Fantasi', '', ''),
(19, 'Stardust', 'Neil Gaiman', 'Avon Books', 1999, 'Fantasi', '', ''),
(20, 'Jonathan Strange & Mr Norrell', 'Susanna Clarke', 'Bloomsbury Publishing', 2004, 'Fantasi', '', ''),
(22, 'Della 1995', 'Nadine', 'Book Entertaint', 2015, 'Item 1', '', '22.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `feedback` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `tanggal`, `userName`, `feedback`) VALUES
(1, '2024-06-12', 'Della', 'Feedback test'),
(2, '2024-05-10', 'Nadine', 'Perpustakaan ini sangat bagus');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `userName` varchar(50) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`userName`, `nama`, `tgl_lahir`, `email`, `no_telp`, `alamat`) VALUES
('abidah', 'abidah ardelia', '2024-06-20', 'abidah', '0987654321', 'jl mawar'),
('ardelia', 'alfien abidah ', '2024-06-21', 'della@gmail.com', '0987654rgggg', 'jl.mawar'),
('della cantik', 'della', '2024-06-18', 'della', '0987654321', 'jl gemabira'),
('nadinangis', 'nadin', '2024-06-04', 'jangannangis@gmail.com', '081412932813', 'jl.nadin'),
('rizalani', 'root', '2024-06-12', 'rotti', '0987654321', 'jl jalan'),
('root', 'hdsahsda', '2024-06-14', 'sadhjjhsd', '2345678', 'sadhjsjh'),
('tdn', 'tegar', '2024-05-18', 'tegar@gmail.com', '081299061312', 'JL. GALUR'),
('tegar', 'test', '2024-06-13', 'test', '081080810', 'test'),
('test', 'test', '2024-06-05', 'test', '08123819319309', 'test'),
('yudhap', 'Yudha Prasetya', '2005-05-18', 'yudhap@gmail.com', '081290063151', 'JL. GALUR SELATAN NO. 18');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `pinjam_id` int(11) NOT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `buku_id` int(11) DEFAULT NULL,
  `tgl_actual_kembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `nama_param` varchar(50) DEFAULT NULL,
  `nilai_param` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userName` varchar(50) NOT NULL,
  `password` char(32) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userName`, `password`, `role`) VALUES
('abidah', '1234567890', 'Admin'),
('ardelia', '1234567890', 'Admin'),
('Della', '12345678', NULL),
('della cantik', '1234567890', 'Admin'),
('nadinangis', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Admin'),
('Nadine', 'nadin123', NULL),
('rizalani', 'e807f1fcf82d132f9bb018ca6738a19f', 'Admin'),
('root', '1234567890', 'Admin'),
('tdn', 'd219e623bd90d0074c0904e425faf881', 'Admin'),
('tegar', '16d7a4fca7442dda3ad93c9a726597e4', 'Pengunjung'),
('test', '16d7a4fca7442dda3ad93c9a726597e4', 'Pengunjung'),
('yudhap', 'tegar510cb', 'Pegawai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`buku_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`userName`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`pinjam_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `buku_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `pinjam_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
