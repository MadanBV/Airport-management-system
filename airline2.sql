-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2019 at 12:56 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline2`
--

-- --------------------------------------------------------

--
-- Table structure for table `airplane`
--

CREATE TABLE `airplane` (
  `ID` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `company` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airplane`
--

INSERT INTO `airplane` (`ID`, `type`, `company`) VALUES
('1170', 'B738', 'Boeing'),
('1201', 'A320', 'Airbus');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`code`, `name`, `city`, `state`, `country`) VALUES
('AMD', 'Sardar Vallabhbhai Patel International Airport', 'AHMEDABAD', 'GUJARAT', 'INDIA'),
('BLR', 'Kempegowda International Airport', 'BANGALORE', 'KARNATAKA', 'INDIA'),
('BOM', 'Chhatrapati Shivaji International Airport', 'MUMBAI', 'MUMBAI', 'INDIA'),
('CCU', 'Netaji Subhash Chandra Bose International Airport', 'DUM DUM ', 'WEST BENGAL', 'INDIA'),
('CHE', 'CHENNAI AIRPORT', 'CHENNAI', 'TAMILNADU', 'INDIA'),
('CJB', 'Coimbatore International Airport', 'COIMBATORE', 'TAMILNADU', 'INDIA'),
('COK', 'Cochin International Airport', 'KOCHI', 'KERALA', 'INDIA'),
('DEL', 'Indira Gandhi International Airport', 'NEW DELHI', 'DELHI', 'INDIA'),
('GOI', 'Goa International Airport', 'DABOLIM', 'GOA', 'INDIA'),
('HYD', 'Rajiv Gandhi International Airport', 'HYDERABAD', 'TELANGANA', 'INDIA'),
('IXE', 'Mangalore International Airport', 'MANGALORE', 'KARNATAKA', 'INDIA'),
('IXM', 'Madurai Airport', 'MADURAI', 'TAMILNADU', 'INDIA'),
('PNQ', 'Pune International Airport', 'PUNE', 'MAHARASHTRA', 'INDIA'),
('TRV', 'Trivandrum International Airport', 'THIRUVANANTHAPURAM', 'TAMILNADU', 'INDIA');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `date` date NOT NULL,
  `flightno` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  `classtype` varchar(20) NOT NULL,
  `paid` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ID`, `time`, `date`, `flightno`, `username`, `classtype`, `paid`) VALUES
(69, '2019-10-05 01:44:42', '2019-12-12', 'IX812', 'manish', 'Economy', 1),
(70, '2019-10-05 09:23:24', '2020-12-12', 'IX812', 'manish', 'Economy', 1),
(71, '2019-10-05 09:24:50', '2020-12-12', 'IX812', 'manish', 'Economy', 1),
(72, '2019-10-05 09:29:14', '2020-12-12', 'IX812', 'manish', 'Economy', 1),
(73, '2019-10-07 04:42:20', '2020-02-20', 'CH101', 'manish', 'Economy', 1),
(74, '2019-10-07 05:03:01', '2020-12-12', 'CH101', 'manish', 'Economy', 1),
(75, '2019-10-07 05:23:00', '2020-12-12', 'CH101', 'manish', 'Economy', 1),
(76, '2019-10-07 05:53:53', '2020-02-20', 'CH101', 'manish', 'Economy', 1),
(77, '2019-10-08 04:27:16', '2020-02-20', 'AA120', 'manish', 'Business', 1),
(78, '2019-10-08 05:20:22', '2020-02-20', 'IX814', 'manish', 'Economy', 1),
(79, '2019-10-08 05:20:22', '2020-02-20', 'IX815', 'manish', 'Economy', 1),
(80, '2019-10-08 05:34:48', '2019-12-12', 'AA600', 'yugal', 'Business', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `number` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`number`, `name`, `capacity`, `price`) VALUES
('AA120', 'Business', 15, 4000),
('AA120', 'Economy', 100, 1000),
('AA1512', 'Business', 1, 200),
('AA1512', 'Economy', 100, 100),
('AA180', 'Business', 15, 800),
('AA180', 'Economy', 100, 240),
('AA181', 'Business', 10, 200),
('AA181', 'Economy', 100, 100),
('AA600', 'Business', 5, 200),
('AA600', 'Economy', 80, 50),
('AA601', 'Business', 3, 300),
('AA601', 'Economy', 50, 60),
('AA6861', 'Business', 3, 100),
('AA6861', 'Economy', 100, 40),
('AA6927', 'Business', 10, 100),
('AA6927', 'Economy', 200, 40),
('AA80', 'Business', 3, 200),
('AA80', 'Economy', 80, 50),
('AA986', 'Business', 8, 400),
('AA986', 'Economy', 120, 120),
('BL001', 'Business', 50, 2500),
('BL001', 'Economy', 200, 2000),
('BL002', 'Business', 50, 2000),
('BL002', 'Economy', 200, 1750),
('BL003', 'Business', 50, 3000),
('BL003', 'Economy', 150, 2718),
('bl817', 'Business', 50, 4000),
('bl817', 'Economy', 200, 4000),
('BO000', 'Business', 50, 4000),
('BO000', 'Economy', 150, 3453),
('BO001', 'Business', 25, 4000),
('BO001', 'Economy', 240, 3000),
('BO003', 'Business', 40, 3053),
('BO003', 'Economy', 160, 2432),
('CH100', 'Business', 50, 20),
('CH100', 'Economy', 150, 50),
('CH101', 'Business', 50, 20),
('CH101', 'Economy', 150, 50),
('IX812', 'Business', 5, 500),
('IX812', 'Economy', 200, 180),
('IX814', 'Business', 50, 3500),
('IX814', 'Economy', 200, 2500),
('IX815', 'Business', 50, 4500),
('IX815', 'Economy', 200, 4000),
('ix816', 'Business', 50, 2500),
('ix816', 'Economy', 200, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `number` varchar(20) NOT NULL,
  `airplane_id` varchar(10) NOT NULL,
  `departure` varchar(10) NOT NULL,
  `d_time` time NOT NULL,
  `arrival` varchar(10) NOT NULL,
  `a_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`number`, `airplane_id`, `departure`, `d_time`, `arrival`, `a_time`) VALUES
('AA101', '1170', 'IXE', '01:00:00', 'BOM', '03:30:00'),
('AA102', '1170', 'CHE', '03:00:00', 'TRV', '04:00:00'),
('AA103', '1170', 'IXE', '09:07:00', 'HYD', '11:00:00'),
('AA104', '1170', 'BLR', '12:10:00', 'DEL', '16:00:00'),
('AA120', '1201', 'BOM', '14:35:00', 'HYD', '17:30:00'),
('AA1512', '1170', 'DEL', '13:40:00', 'BOM', '19:30:00'),
('AA180', '1201', 'BOM', '07:35:00', 'CCU', '10:30:00'),
('AA181', '1170', 'CCU', '19:30:00', 'BOM', '22:00:00'),
('AA600', '1201', 'IXE', '17:00:00', 'DEL', '21:00:00'),
('AA601', '1201', 'DEL', '20:00:00', 'IXE', '23:00:00'),
('AA6861', '1201', 'CCU', '11:00:00', 'DEL', '13:00:00'),
('AA6927', '1201', 'DEL', '17:00:00', 'CCU', '19:00:00'),
('AA80', '1170', 'HYD', '20:00:00', 'BOM', '23:00:00'),
('AA986', '1170', 'BOM', '10:00:00', 'DEL', '14:00:00'),
('BL001', '1170', 'blr', '17:40:00', 'che', '18:45:00'),
('BL002', '1170', 'blr', '07:15:00', 'hyd', '08:50:00'),
('BL003', '1170', 'BLR', '10:00:00', 'BOM', '12:30:00'),
('bl817', '1170', 'blr', '03:30:00', 'del', '06:20:00'),
('BO000', '1170', 'BOM', '14:52:00', 'IXE', '17:00:00'),
('BO001', '1201', 'BOM', '08:42:00', 'BLR', '11:23:00'),
('BO003', '1201', 'BOM', '16:00:00', 'HYD', '19:00:00'),
('CH100', '1201', 'CHE', '12:00:00', 'HYD', '13:00:00'),
('CH101', '1201', 'CHE', '12:00:00', 'IXE', '13:00:00'),
('IX812', '1201', 'IXE', '18:35:00', 'DEL', '21:00:00'),
('IX813', '1170', 'IXE', '09:00:00', 'BLR', '10:34:00'),
('IX814', '1170', 'IXE', '12:00:00', 'BLR', '13:00:00'),
('IX815', '1170', 'BLR', '14:00:00', 'DEL', '17:00:00'),
('ix816', '1170', 'blr', '14:00:00', 'ixe', '15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `passanger`
--

CREATE TABLE `passanger` (
  `username` varchar(30) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `middlename` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cellphone` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passanger`
--

INSERT INTO `passanger` (`username`, `firstname`, `middlename`, `lastname`, `email`, `cellphone`, `gender`, `birthday`, `password`) VALUES
('manish', 'manish', '', 'devadiga', 'manish@gmail.com', '7259157345', 'male', '1999-03-12', 'Manish123'),
('manoj', 'manoj', NULL, 'b', 'manojb@gmail.com', '9880989687', 'male', '1999-04-10', 'Manoj123'),
('rezonector', 'yugal', '', 'h', 'yugalharsha5@gmail.com', '9880513808', 'Male', '1998-10-25', 'Yugal123'),
('yugal', 'yugal', '', 'h', 'yugal@gmail.com', '7657657657', 'Male', '1998-10-25', 'Yugal123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ID`,`flightno`),
  ADD KEY `username_idx` (`username`),
  ADD KEY `classname_idx` (`classtype`),
  ADD KEY `flightno_idx` (`flightno`,`classtype`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`number`,`name`),
  ADD KEY `number_idx` (`number`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`number`),
  ADD KEY `code_idx` (`departure`,`arrival`),
  ADD KEY `airplaneid_idx` (`airplane_id`),
  ADD KEY `arrival_idx` (`arrival`);

--
-- Indexes for table `passanger`
--
ALTER TABLE `passanger`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `flightno` FOREIGN KEY (`flightno`,`classtype`) REFERENCES `class` (`number`, `name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `passanger` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `number` FOREIGN KEY (`number`) REFERENCES `flight` (`number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `airplaneid` FOREIGN KEY (`airplane_id`) REFERENCES `airplane` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arrival` FOREIGN KEY (`arrival`) REFERENCES `airport` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `departure` FOREIGN KEY (`departure`) REFERENCES `airport` (`code`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
