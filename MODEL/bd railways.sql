-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2019 at 08:20 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd railways`
--

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `date` date NOT NULL,
  `ticketId` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `reportingTime` varchar(5) NOT NULL,
  `reportingPlace` varchar(20) NOT NULL,
  `trainName` varchar(20) NOT NULL,
  `seatType` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`date`, `ticketId`, `price`, `reportingTime`, `reportingPlace`, `trainName`, `seatType`) VALUES
('2019-07-30', 1, 500, '9:30', 'Dhaka', 'Raad Express', '1A'),
('2019-07-30', 2, 500, '9:30', 'Dhaka', 'Dhaka Express', '1A'),
('2019-07-30', 3, 500, '9:30', 'Dhaka', 'Dhaka Express', '1A'),
('2019-07-30', 4, 500, '9:45', 'Dhaka', 'Raad Express', '1A'),
('2019-07-26', 5, 500, '9:45', 'Dhaka', 'Arjan Express', 'FC'),
('2019-07-30', 6, 500, '9', 'Dhaka', 'Dhaka Express', '1A'),
('2019-07-26', 7, 150, '9', 'Dhaka', 'Arjan Express', 'FC'),
('2019-07-26', 8, 150, '', 'Dhaka', 'Arjan Express', 'FC'),
('2019-07-26', 9, 150, '', 'Dhaka', 'Arjan Express', 'FC'),
('2019-07-26', 10, 150, '', 'Dhaka', 'Arjan Express', 'FC'),
('2019-07-26', 11, 150, '', 'Dhaka', 'Arjan Express', 'FC'),
('2019-07-26', 12, 150, '', 'Dhaka', 'Arjan Express', 'FC'),
('2019-07-30', 13, 500, '', 'Dhaka', 'Dhaka Express', '1A'),
('2019-07-30', 14, 500, '', 'Dhaka', 'Dhaka Express', '1A'),
('2019-07-30', 15, 150, '', 'Dhaka', 'Dhaka Express', 'FC'),
('2019-07-30', 16, 500, '', 'Dhaka', 'Raad Express', '1A'),
('2019-07-30', 17, 500, '', 'Dhaka', 'Dhaka Express', '1A'),
('2019-07-30', 18, 500, '', 'Dhaka', 'Dhaka Express', '1A'),
('2019-07-26', 19, 150, '', 'Dhaka', 'Satkhira Express', 'FC');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `Serial_Number` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seatType` varchar(20) NOT NULL,
  `availableSeat` int(5) NOT NULL,
  `goingTo` varchar(20) NOT NULL,
  `goingFrom` varchar(20) NOT NULL,
  `station` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`Serial_Number`, `name`, `seatType`, `availableSeat`, `goingTo`, `goingFrom`, `station`, `date`) VALUES
(1, 'Dhaka Express', '1A', 43, 'Khulna', 'Dhaka', 'Dhaka', '2019-07-30'),
(2, 'Dhaka Express', '2S', 50, 'Khulna', 'Dhaka', 'Dhaka', '2019-07-30'),
(3, 'Dhaka Express', 'FC', 49, 'Khulna', 'Dhaka', 'Dhaka', '2019-07-30'),
(5, 'Jessore Express', '1A', 46, 'Jessore', 'Dhaka', 'Dhaka', '2019-07-30'),
(4, 'Satkhira Express', 'FC', 40, 'Satkhira', 'Dhaka', 'Dhaka', '2019-07-26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userName` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstName` varchar(10) NOT NULL,
  `lastName` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `userType` int(1) NOT NULL,
  `ticketId` int(10) NOT NULL,
  `paymentMethod` varchar(10) NOT NULL,
  `transactionId` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userName`, `email`, `password`, `firstName`, `lastName`, `address`, `phone`, `userType`, `ticketId`, `paymentMethod`, `transactionId`) VALUES
('admin', 'admin@gmail.com', 'admin', 'admin', 'admin', 'admin admin', 1212121, 2, 0, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketId`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`name`,`seatType`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticketId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
