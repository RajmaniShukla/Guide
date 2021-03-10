-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2018 at 10:36 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raj_warehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `rajanshukla756@gmail.com`
--

CREATE TABLE `rajanshukla756@gmail.com` (
  `trans_id` int(255) NOT NULL,
  `trans_type` varchar(3000) NOT NULL,
  `trans_mode` varchar(200) NOT NULL,
  `time&date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `transctional_balance` int(255) NOT NULL,
  `services` varchar(5000) NOT NULL,
  `avail_balance` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rajanshukla756@gmail.com`
--

INSERT INTO `rajanshukla756@gmail.com` (`trans_id`, `trans_type`, `trans_mode`, `time&date`, `transctional_balance`, `services`, `avail_balance`) VALUES
(1, 'Credit', 'Debit Card', '2018-03-20 20:50:00', 50000, '', '50000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rajanshukla756@gmail.com`
--
ALTER TABLE `rajanshukla756@gmail.com`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rajanshukla756@gmail.com`
--
ALTER TABLE `rajanshukla756@gmail.com`
  MODIFY `trans_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
