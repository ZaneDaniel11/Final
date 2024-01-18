-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 12:32 PM
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
-- Database: `obs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `announce_tb`
--

CREATE TABLE `announce_tb` (
  `id` int(50) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announce_tb`
--

INSERT INTO `announce_tb` (`id`, `title`, `content`, `date`) VALUES
(2, 'Testin', 'Sira22', '2024-01-13 16:00:00.000000'),
(3, 'dwad', 'dwad', '2024-01-17 16:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `arrival_tb`
--

CREATE TABLE `arrival_tb` (
  `id` int(50) NOT NULL,
  `bus_no` int(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `departured_time` varchar(100) NOT NULL,
  `route_destination` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arrival_tb`
--

INSERT INTO `arrival_tb` (`id`, `bus_no`, `unit`, `departured_time`, `route_destination`) VALUES
(11, 121212, 'Unit', '11:11', 'DBK'),
(12, 212, 'Air Conditioning', '00:12', '212'),
(13, 2121, 'Air Conditioning', '02:12', 'adwa');

-- --------------------------------------------------------

--
-- Table structure for table `book_tb`
--

CREATE TABLE `book_tb` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `route_destination` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_tb`
--

INSERT INTO `book_tb` (`id`, `email`, `unit`, `route_destination`) VALUES
(1, 'kramnotado22@gmail.com', 'ALC', 'male'),
(2, 'kramnotado22@gmail.com', 'ALC', 'male'),
(3, 'kramnotado22@gmail.com', 'ALC', 'male'),
(4, 'kramnotado22@gmail.com', 'ALC', 'cebu'),
(5, 'testing@gmail.com', 'DLX', 'danao'),
(6, 'kramnotado22@gmail.com', 'ALC', 'cebu'),
(7, 'kramnotado22@gmail.com', 'ALC', 'cebu'),
(8, 'kramnotado22@gmail.com', 'ALC', 'cebu'),
(9, 'kramnotado22@gmail.com', 'ALC', 'cebu'),
(10, 'kramnotado22@gmail.com', 'ALC', 'cebu'),
(11, 'fdfdw@gmail.com', 'DLX', 'danao'),
(12, 'email@gmail.com', 'DLX', 'danao');

-- --------------------------------------------------------

--
-- Table structure for table `bus_stamby`
--

CREATE TABLE `bus_stamby` (
  `id` int(100) NOT NULL,
  `bus_no` int(100) NOT NULL,
  `route_destination` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `cor_number` int(100) NOT NULL,
  `drivers_name` varchar(100) NOT NULL,
  `conductors_name` varchar(100) NOT NULL,
  `departure_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_stamby`
--

INSERT INTO `bus_stamby` (`id`, `bus_no`, `route_destination`, `unit`, `cor_number`, `drivers_name`, `conductors_name`, `departure_time`) VALUES
(529, 77777, 'DBK', 'Air Conditioning', 44512, 'Drivers Name', 'Conductors Name', '13:10');

-- --------------------------------------------------------

--
-- Table structure for table `departure_tb`
--

CREATE TABLE `departure_tb` (
  `id` int(50) NOT NULL,
  `bus_no` int(50) NOT NULL,
  `time_dept` varchar(50) NOT NULL,
  `route_destination` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `passenger` int(50) NOT NULL,
  `drivers_name` varchar(50) NOT NULL,
  `conductors_name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departure_tb`
--

INSERT INTO `departure_tb` (`id`, `bus_no`, `time_dept`, `route_destination`, `unit`, `passenger`, `drivers_name`, `conductors_name`, `status`) VALUES
(13, 87661, '02:58', 'Daan', 'Not Air Conditioning', 12, 'Pino', 'Karl', 'Departured'),
(16, 89061, '21:51', 'CEBU', 'Not Air Conditioning', 45, 'Pagatpat', 'Lepaopao', 'Arrived'),
(17, 89061, '21:51', 'CEBU', 'Not Air Conditioning', 45, 'Pagatpat', 'Lepaopao', 'Departured');

-- --------------------------------------------------------

--
-- Table structure for table `lost_tb`
--

CREATE TABLE `lost_tb` (
  `id` int(50) NOT NULL,
  `bus_no` int(50) NOT NULL,
  `drivers_name` varchar(100) NOT NULL,
  `conductors_name` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `status` varchar(50) NOT NULL,
  `ticket_no` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lost_tb`
--

INSERT INTO `lost_tb` (`id`, `bus_no`, `drivers_name`, `conductors_name`, `item`, `date`, `status`, `ticket_no`) VALUES
(25, 2121, '21212', 'wdwad', 'dawd', '2024-01-18 11:24:27.186624', 'Not-Found', 0),
(26, 21321, '', '', '17278', '2024-01-18 11:30:27.828186', 'Pending', 0);

-- --------------------------------------------------------

--
-- Table structure for table `main_tb`
--

CREATE TABLE `main_tb` (
  `id` int(100) NOT NULL,
  `bus_no` int(100) NOT NULL,
  `time_dept` varchar(100) NOT NULL,
  `route_destination` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `cor_number` int(100) NOT NULL,
  `pass_ticket` int(100) NOT NULL,
  `bagg_ticket` int(100) NOT NULL,
  `passenger` int(100) NOT NULL,
  `drivers_name` varchar(100) NOT NULL,
  `conductors_name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_tb`
--

INSERT INTO `main_tb` (`id`, `bus_no`, `time_dept`, `route_destination`, `unit`, `cor_number`, `pass_ticket`, `bagg_ticket`, `passenger`, `drivers_name`, `conductors_name`, `date`) VALUES
(72, 8788, '', 'cebu', 'Air Condation', 9876, 9980443, 344, 666, 'Mark', 'Meriam', '2024-01-09 00:30:19'),
(74, 87661, '02:58', 'Daan', 'Not Air Conditioning', 2442, 212, 123, 12, 'Pino', 'Karl', '2024-01-14 14:29:04'),
(75, 89061, '14:50', 'CEBU', 'Not Air Conditioning', 778831, 1234, 1231, 231, 'Pagatpat', 'Lepaopao', '2024-01-14 14:38:46'),
(76, 89061, '14:50', 'CEBU', 'Not Air Conditioning', 778831, 1234, 1231, 23, 'Pagatpat', 'Lepaopao', '2024-01-16 00:14:37'),
(77, 89061, '21:51', 'CEBU', 'Not Air Conditioning', 778831, 4343, 4344, 45, 'Pagatpat', 'Lepaopao', '2024-01-16 00:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `management_tb`
--

CREATE TABLE `management_tb` (
  `id` int(50) NOT NULL,
  `bus_no` int(50) NOT NULL,
  `time_dept` varchar(50) NOT NULL,
  `route_destination` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `cor_number` int(50) NOT NULL,
  `pass_ticket` int(50) NOT NULL,
  `bagg_ticket` int(50) NOT NULL,
  `passenger` int(50) NOT NULL,
  `drivers_name` varchar(50) NOT NULL,
  `conductors_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `management_tb`
--

INSERT INTO `management_tb` (`id`, `bus_no`, `time_dept`, `route_destination`, `unit`, `cor_number`, `pass_ticket`, `bagg_ticket`, `passenger`, `drivers_name`, `conductors_name`) VALUES
(41, 67849, '', 'Cebu', 'Air Conditioning', 778831, 44123, 1212, 20, 'Edison', 'Catwin'),
(42, 1212, '22:10', 'DANAO', 'Air Conditioning', 312321, 43242, 43242, 10, 'Batman', 'Lepaopao');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announce_tb`
--
ALTER TABLE `announce_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrival_tb`
--
ALTER TABLE `arrival_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_tb`
--
ALTER TABLE `book_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_stamby`
--
ALTER TABLE `bus_stamby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departure_tb`
--
ALTER TABLE `departure_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lost_tb`
--
ALTER TABLE `lost_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_tb`
--
ALTER TABLE `main_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management_tb`
--
ALTER TABLE `management_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announce_tb`
--
ALTER TABLE `announce_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `arrival_tb`
--
ALTER TABLE `arrival_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `book_tb`
--
ALTER TABLE `book_tb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bus_stamby`
--
ALTER TABLE `bus_stamby`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT for table `departure_tb`
--
ALTER TABLE `departure_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `lost_tb`
--
ALTER TABLE `lost_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `main_tb`
--
ALTER TABLE `main_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `management_tb`
--
ALTER TABLE `management_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
