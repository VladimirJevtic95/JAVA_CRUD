-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2020 at 02:26 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faxwatches_crud_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `firstname` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lastname` varchar(220) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `role`) VALUES
(10, 'admin', 'admin', 'admin', 'admin@gmail.com', 'admin', 'admin'),
(11, 'user', 'user', 'user', 'user@gmail.com', 'user', 'user'),
(12, 'Vladimir', 'Jevtic', 'bigboi', 'vladimir@gmail.com', '1234567', 'user'),
(13, 'Vladimir', 'Jevtic', 'vjadmin', 'vjadmin@gmail.com', 'vjadmin', 'admin'),
(14, 'Teodora', 'Miljkovic', 'teo', 'teo@gmail.com', 'teo123', 'user'),
(15, 'Marko', 'Markovic', 'marko', 'marko@gmail.com', 'marko123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `watches`
--

CREATE TABLE `watches` (
  `watch_id` int(11) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `model` varchar(300) NOT NULL,
  `country` varchar(30) NOT NULL,
  `exclusivity` varchar(30) NOT NULL,
  `release_date` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `admin_username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watches`
--

INSERT INTO `watches` (`watch_id`, `brand`, `model`, `country`, `exclusivity`, `release_date`, `price`, `admin_username`) VALUES
(7, 'Hublot', 'Big Bang Unico Titanium Ceramic 45mm', 'Switzerland', '1 of 20', '07.04.2006.', 14489, 'admin'),
(8, 'Hublot', 'King Power Unico 48mm', 'Switzerland', '1 of 300', '03.02.2010.', 21609, 'admin'),
(9, 'Tudor', 'Black Bay Bronze', 'Switzerland', '1 of 100000', '26.03.2017.', 3575, 'admin'),
(10, 'Patek Philippe', 'Grand Complications 5207P-001', 'Switzerland', '1 of 5', '02.02.2013.', 735134, 'vjadmin'),
(15, 'Patek Philippe', 'Complications 5205G-010', 'Switzerland', '1 of 100', '05.11.2014.', 36948, 'vjadmin'),
(16, 'Tsovet', 'SVT-FW44 Swiss Field', 'United States of America', 'none', '04.06.2019.', 350, 'vjadmin'),
(17, 'Xeric', 'Trappist-1 Moonphase Blue IP', 'France', 'none', '15.04.2019.', 300, 'admin'),
(18, 'SISU', 'Bravado BQ1-50-LT Swiss Limited Edition', 'United States of America', '1 of 3000', '23.05.2018.', 420, 'admin'),
(19, 'Xeric ', 'Evergraph Automatic Limited Edition Rose Gold', 'France', '1 of 6000', '10.12.2019.', 250, 'admin'),
(20, 'Casio', 'G-Shock GMWB5000 Standard Digital Black Blue', 'Japan', 'none', '01.11.2019.', 500, 'admin'),
(21, 'Casio', 'G-Shock Watch GM-5600B-3ER', 'Japan', 'none', '05.12.2019.', 200, 'admin'),
(22, 'Casio', 'Edifice Watch EFR-S567DC-1AVUEF', 'Japan', 'none', '24.02.2019.', 178, 'vjadmin'),
(23, 'Casio', 'Casio G-Shock Watch GMA-B800-8AER', 'Japan', 'none', '02.02.2019.', 112, 'admin'),
(24, 'Casio', 'Casio Watch A168WEGG-1BEF', 'Japan', 'none', '02.02.2019.', 59, 'admin'),
(25, 'Hublot', 'Big Bang Unico Ferrari 45MM in Carbon Complete', 'Switzerland', '1 of 250', '30.06.2016.', 20050, 'admin'),
(26, 'Hublot ', 'Big Bang Unico Vino Ceramic Kobe Bryant', 'Switzerland', '1 of 200', '24.08.2017.', 17000, 'vjadmin'),
(27, 'Rolex', 'Submariner Date Hulk 116610LV 2018 Edition', 'Switzerland', '1 of 500', '23.09.2018.', 15200, 'vjadmin'),
(28, 'Breitling', 'Avenger Hurricane 45 Breitlight XB0180E4/BF31', 'Switzerland', 'none', '02.07.2019.', 4950, 'admin'),
(29, 'Panerai', 'Luminor 1950 PAM 652', 'Italy', '1 of 790', '09.12.2019.', 10444, 'vjadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watches`
--
ALTER TABLE `watches`
  ADD PRIMARY KEY (`watch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `watches`
--
ALTER TABLE `watches`
  MODIFY `watch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
