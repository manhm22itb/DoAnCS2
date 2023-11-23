-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 02:53 PM
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
-- Table structure for table `oder_details`
--

CREATE TABLE `oder_details` (
  `ID` int(11) NOT NULL,
  `oder_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `sl` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oder_details`
--

INSERT INTO `oder_details` (`ID`, `oder_id`, `sp_id`, `sl`, `gia`, `create_time`, `update_time`) VALUES
(3, 11, 4, 1, 137, 1699847122, 1699847122),
(4, 11, 25, 2, 125, 1699847122, 1699847122),
(5, 11, 27, 2, 81, 1699847122, 1699847122),
(9, 13, 13, 3, 92, 1699847411, 1699847411),
(12, 16, 23, 10, 165, 1699924910, 1699924910);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oder_details`
--
ALTER TABLE `oder_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `oder_id` (`oder_id`),
  ADD KEY `oder_details_ibfk_2` (`sp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oder_details`
--
ALTER TABLE `oder_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oder_details`
--
ALTER TABLE `oder_details`
  ADD CONSTRAINT `oder_details_ibfk_1` FOREIGN KEY (`oder_id`) REFERENCES `oder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oder_details_ibfk_2` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
