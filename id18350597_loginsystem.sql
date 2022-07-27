-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 27, 2022 at 02:55 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18350597_loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `uidUsers` tinytext NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` longtext NOT NULL,
  `gender` char(1) NOT NULL,
  `headline` varchar(40) DEFAULT NULL,
  `bio` varchar(1000) DEFAULT NULL,
  `userImg` varchar(500) DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUsers`, `f_name`, `l_name`, `uidUsers`, `emailUsers`, `pwdUsers`, `gender`, `headline`, `bio`, `userImg`) VALUES
(33, 'Hrisikesh', 'Pal', 'Hrisikesh', 'hrisikeshpal2001@gmail.com', '$2y$10$Lu3Q6okq/aXWlTDQ8GvT/.ZZFDBg4QjaFC1vB25eKEVg/E8xG1UIW', 'm', 'WooooHoooo', 'Cyber Security Student', '6214be9bc6f102.82711835.png'),
(34, 'kene ', 'bolbo?', 'thisismonke', 'staycool@null.com', '$2y$10$QbQg5dcdoGD7x7MooDCgeec7aZEHDDt915ZuYG0C.aJp8Hn376RRG', 'm', 'meow ig?', 'nothing', 'default.png'),
(35, 'Siya', 'Roy', 'Siya', 'majumder@gmail.com', '$2y$10$4.1cItnmbUtJK0jALhWzcuaUrugR.trdHuewu0Fd8GxpV9b8AMfzu', 'f', 'Bolbo na vagg', 'Nah', 'default.png'),
(36, 'Virus', 'Warning', 'Virus', 'hrisikeshpal2001@gmail.com', '$2y$10$HnxVSQ3BUD.yT9gpMDo0h.hYJ0u4TWIkH5.nQDrVz2OJMV.ZzczVy', 'm', 'Ack3rH', '78726', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
