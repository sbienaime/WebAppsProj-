-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 09:29 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdc_techclub_db`
--
CREATE DATABASE IF NOT EXISTS `mdc_techclub_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mdc_techclub_db`;

-- --------------------------------------------------------


--
-- Table structure for table `page_elements`
--

CREATE TABLE `page_elements` (
  `page_id` int(10) NOT NULL,
  `page_name` varchar(50) DEFAULT NULL,
  `header_img` varchar(50) DEFAULT NULL,
  `first_heading` varchar(50) DEFAULT NULL,
  `main_text` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_elements`
--

INSERT INTO `page_elements` (`page_id`, `page_name`, `header_img`, `first_heading`, `main_text`) VALUES
(1, 'Front_page', 'uploads/original.jpg', 'none', 'none'),
(2, 'aboutus_page', 'img/vr.jpg', 'blah blah blah', 'gugh9uh9h9j9j90j0j0j');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_img` varchar(50) NOT NULL,
  `officership_status` varchar(3) NOT NULL DEFAULT 'no',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `last_name`, `first_name`, `password`, `profile_img`, `officership_status`, `created_at`) VALUES
(1, 'steviep', 'Bien-Aime', 'Steve', '$2y$10$6WhcGTeUPEO/RK8i3TkbRuvlFu0v4RY.nDWrHHAlvOKTBvqI8LDiS', 'uploads/JAYZ.jpg', 'yes', '2019-04-07 20:45:57'),
(2, 'Marco', '', '', '$2y$10$C2eGNojX0/kRWvs8m0cin.JCFJEytvW0VbxYNWy3HoigxNT3LdyS6', 'uploads/p2.jpg', 'no', '2019-04-07 20:46:32'),
(3, 'MrMoneyMustache', '', '', '$2y$10$q3RVpKj6JBaEaMCHVK8k7Ohzm1f1UuDdkkiSOYDsYqbkiBowi8dy6', 'uploads/p3.jpg', 'no', '2019-04-10 12:04:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `page_elements`
--
ALTER TABLE `page_elements`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
