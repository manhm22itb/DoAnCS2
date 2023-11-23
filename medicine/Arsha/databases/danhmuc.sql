-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2023 at 05:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doan`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ID` int(11) NOT NULL,
  `ten_dm` varchar(255) NOT NULL,
  `SL` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `mo_ta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`ID`, `ten_dm`, `SL`, `hinh_anh`, `mo_ta`) VALUES
(2, 'Thuốc không kê đơn', 20, 'thuoc_kkd.jpg', '<p>Đ&acirc;y l&agrave; danh mục của c&aacute;c sản phẩm thuốc kh&ocirc;ng k&ecirc; đơn</p>\r\n'),
(3, 'Hóa mỹ phẩm', 20, 'hoa_mp.webp', '<p>Đ&acirc;y l&agrave; danh mục của c&aacute;c sản phẩm h&oacute;a mỹ phẩm, ..</p>\r\n'),
(4, 'Thực phẩm chức năng', 15, 'tpcn.jpg', '<p>Đ&acirc;y l&agrave; danh mục c&aacute;c sản phẩm thực phẩm chức năng bổ sung sức khỏe</p>\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
