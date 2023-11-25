-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2023 at 09:06 AM
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
-- Table structure for table `oder`
--

CREATE TABLE `oder` (
  `id` int(11) NOT NULL,
  `name_nguoi_mua` varchar(255) NOT NULL,
  `sdt` int(11) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `tg_dat` int(11) NOT NULL,
  `note` text NOT NULL,
  `tong_tien` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `cart_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oder`
--

INSERT INTO `oder` (`id`, `name_nguoi_mua`, `sdt`, `dia_chi`, `tg_dat`, `note`, `tong_tien`, `id_user`, `cart_status`) VALUES
(11, ' DỊU LY', 222, 'Bạc Liêu', 1699847122, ' ok', 549, 6, '1'),
(13, ' mèo', 325000, 'Cà Mau', 1699847411, 'ngách 4 ngõ 5', 276, 10, '1'),
(16, ' tuyet ly', 222, 'An Giang', 1699924910, ' ok', 1650, 10, '1'),
(19, ' tuyet ly', 339032951, 'Phú Yên', 1700270991, ' ok', 920, 6, '0'),
(20, ' DỊU LY', 339032951, 'Bình Định', 1700528536, 'bến tre', 5150, 6, '0'),
(22, ' NguyenTuyetLy', 339032951, 'Bến Tre', 1700702404, ' ok', 892, 6, '0'),
(23, ' mama', 5555, 'Cà Mau', 1700702481, 'ngách 4 ngõ 5', 192, 6, '0'),
(24, ' Nguyen Van Tho', 905741172, 'Cao Bằng', 1700808534, '88 Yen Bai', 88, 6, '0'),
(25, ' Tường Vy', 382635718, 'Bình Dương', 1700812757, 'Tam Kỳ', 1070, 6, '0'),
(26, ' van tho', 325000, 'Tp.Hà Nội', 1700814940, 'Phố hàng mã', 946, 11, '0'),
(27, ' Huỳnh Thị Thu', 367067972, 'Vĩnh Phúc', 1700818060, 'Cổng chợ', 14010, 11, '0'),
(28, ' Thành Thuận', 862856509, 'Tp.Đà Nẵng', 1700838170, 'Kiệt 4 Trần Đức Thảo', 1585, 12, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oder`
--
ALTER TABLE `oder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oder`
--
ALTER TABLE `oder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oder`
--
ALTER TABLE `oder`
  ADD CONSTRAINT `oder_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
