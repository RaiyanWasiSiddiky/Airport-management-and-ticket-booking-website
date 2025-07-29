-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 01:56 PM
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
-- Database: `airport`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `admin_id` varchar(30) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`first_name`, `last_name`, `admin_id`, `password`) VALUES
('Raiyan', 'Siddiky', '21301648', 'pass1');

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `airline_name` varchar(30) NOT NULL,
  `no_of_planes` int(11) DEFAULT NULL,
  `no_of_pilots` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`airline_name`, `no_of_planes`, `no_of_pilots`) VALUES
('Air France', 35, 110),
('American Airlines', 40, 120),
('British Airways', 42, 130),
('Cathay Pacific', 20, 70),
('Delta Air Lines', 50, 150),
('Emirates', 30, 100),
('Lufthansa', 45, 140),
('Qatar Airways', 25, 80),
('Singapore Airlines', 28, 90),
('United Airlines', 60, 180);

-- --------------------------------------------------------

--
-- Table structure for table `booked_flights`
--

CREATE TABLE `booked_flights` (
  `username` varchar(30) DEFAULT NULL,
  `flight_id` varchar(30) DEFAULT NULL,
  `ticket_number` int(11) NOT NULL,
  `price` decimal(7,5) DEFAULT NULL,
  `seat_number` varchar(30) DEFAULT NULL,
  `class` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_id` varchar(30) NOT NULL,
  `source` varchar(30) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `boarding_time` time DEFAULT NULL,
  `airline` varchar(30) DEFAULT NULL,
  `pilot_id` varchar(30) DEFAULT NULL,
  `hangar_id` varchar(30) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `booked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_id`, `source`, `destination`, `date`, `boarding_time`, `airline`, `pilot_id`, `hangar_id`, `capacity`, `booked`) VALUES
('1', 'Dhaka', 'Los Angeles', '2023-12-15', '12:00:00', 'Emirates', '1', 'HNGR001', 10, 0),
('10', 'London', 'Paris', '2023-12-24', '15:00:00', 'British Airways', '10', 'HNGR010', 10, 0),
('2', 'Dhaka', 'Toronto', '2023-12-16', '14:30:00', 'United Airlines', '2', 'HNGR002', 10, 0),
('3', 'Los Angeles', 'Delhi', '2023-12-17', '10:45:00', 'Singapore Airlines', '3', 'HNGR003', 10, 0),
('4', 'Delhi', 'Toronto', '2023-12-18', '08:00:00', 'Qatar Airways', '4', 'HNGR004', 10, 0),
('5', 'Los Angeles', 'London', '2023-12-19', '16:15:00', 'Emirates', '5', 'HNGR005', 10, 0),
('6', 'Dhaka', 'London', '2023-12-20', '13:20:00', 'Air France', '6', 'HNGR006', 10, 0),
('7', 'Delhi', 'Dhaka', '2023-12-21', '09:30:00', 'Qatar Airways', '7', 'HNGR007', 10, 0),
('8', 'Paris', 'Bangkok', '2023-12-22', '11:10:00', 'Singapore Airlines', '8', 'HNGR008', 10, 0),
('9', 'Paris', 'Shanghai', '2023-12-23', '17:45:00', 'Emirates', '9', 'HNGR009', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hangar`
--

CREATE TABLE `hangar` (
  `hangar_id` varchar(30) NOT NULL,
  `hangar_capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hangar`
--

INSERT INTO `hangar` (`hangar_id`, `hangar_capacity`) VALUES
('HNGR001', 10),
('HNGR002', 15),
('HNGR003', 10),
('HNGR004', 10),
('HNGR005', 10),
('HNGR006', 20),
('HNGR007', 10),
('HNGR008', 10),
('HNGR009', 10),
('HNGR010', 15);

-- --------------------------------------------------------

--
-- Table structure for table `other_staff`
--

CREATE TABLE `other_staff` (
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `id` varchar(30) NOT NULL,
  `job` varchar(30) DEFAULT NULL,
  `hangar_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `other_staff`
--

INSERT INTO `other_staff` (`first_name`, `last_name`, `id`, `job`, `hangar_id`) VALUES
('Robert', 'Johnson', 'S001', 'Technician', 'HNGR001'),
('Sarah', 'Williams', 'S002', 'Maintenance', 'HNGR002'),
('Ryan', 'Miller', 'S003', 'Cleaner', 'HNGR003'),
('Rebecca', 'Jones', 'S004', 'Security', 'HNGR004'),
('Daniel', 'Wilson', 'S005', 'Technician', 'HNGR005'),
('Sophia', 'Moore', 'S006', 'Maintenance', 'HNGR006'),
('Matthew', 'Davis', 'S007', 'Cleaner', 'HNGR007'),
('Emma', 'Brown', 'S008', 'Security', 'HNGR008'),
('Christopher', 'Anderson', 'S009', 'Technician', 'HNGR009'),
('Olivia', 'Smith', 'S010', 'Maintenance', 'HNGR010');

-- --------------------------------------------------------

--
-- Table structure for table `pilots`
--

CREATE TABLE `pilots` (
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `pilot_id` varchar(30) NOT NULL,
  `airline_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pilots`
--

INSERT INTO `pilots` (`first_name`, `last_name`, `pilot_id`, `airline_name`) VALUES
('John', 'Smith', '1', 'Delta Air Lines'),
('Olivia', 'Anderson', '10', 'British Airways'),
('Emily', 'Johnson', '2', 'United Airlines'),
('Michael', 'Williams', '3', 'American Airlines'),
('Jessica', 'Jones', '4', 'Lufthansa'),
('David', 'Brown', '5', 'Emirates'),
('Jennifer', 'Davis', '6', 'Air France'),
('Daniel', 'Miller', '7', 'Qatar Airways'),
('Emma', 'Wilson', '8', 'Singapore Airlines'),
('Christopher', 'Moore', '9', 'Cathay Pacific');

-- --------------------------------------------------------

--
-- Table structure for table `registration_code`
--

CREATE TABLE `registration_code` (
  `registration_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_code`
--

INSERT INTO `registration_code` (`registration_code`) VALUES
('random');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_number` int(11) NOT NULL,
  `flight_id` varchar(30) DEFAULT NULL,
  `price` decimal(7,5) DEFAULT NULL,
  `seat_number` varchar(30) DEFAULT NULL,
  `class` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_number`, `flight_id`, `price`, `seat_number`, `class`) VALUES
(1, '1', 99.99999, 'A1', 'Business'),
(2, '1', 99.99999, 'A2', 'First Class'),
(3, '1', 99.99999, 'B1', 'First Class'),
(4, '1', 99.99999, 'B2', 'Economy'),
(5, '1', 99.99999, 'C1', 'Economy'),
(6, '1', 99.99999, 'C2', 'Economy'),
(7, '1', 99.99999, 'D1', 'Economy'),
(8, '1', 80.00000, 'D2', 'Economy'),
(9, '1', 70.00000, 'E1', 'Economy'),
(10, '1', 60.00000, 'E2', 'Economy'),
(11, '2', 99.99999, 'A1', 'Business'),
(12, '2', 99.99999, 'A2', 'Business'),
(13, '2', 99.99999, 'B1', 'Economy'),
(14, '2', 99.99999, 'B2', 'First Class'),
(15, '2', 99.99999, 'C1', 'Economy'),
(16, '2', 99.99999, 'C2', 'Economy'),
(17, '2', 99.99999, 'D1', 'First Class'),
(18, '2', 99.99999, 'D2', 'Economy'),
(19, '2', 99.99999, 'E1', 'Economy'),
(20, '2', 90.00000, 'E2', 'Economy'),
(21, '3', 99.99999, 'A1', 'Business'),
(22, '3', 99.99999, 'A2', 'Business'),
(23, '3', 99.99999, 'B1', 'Economy'),
(24, '3', 99.99999, 'B2', 'Economy'),
(25, '3', 99.99999, 'C1', 'Economy'),
(26, '3', 99.99999, 'C2', 'First Class'),
(27, '3', 99.99999, 'D1', 'Economy'),
(28, '3', 99.99999, 'D2', 'Economy'),
(29, '3', 99.99999, 'E1', 'Economy'),
(30, '3', 99.99999, 'E2', 'Economy'),
(31, '4', 99.99999, 'A1', 'Business'),
(32, '4', 99.99999, 'A2', 'Business'),
(33, '4', 99.99999, 'B1', 'Economy'),
(34, '4', 99.99999, 'B2', 'Economy'),
(35, '4', 99.99999, 'C1', 'Economy'),
(36, '4', 99.99999, 'C2', 'Economy'),
(37, '4', 99.99999, 'D1', 'First Class'),
(38, '4', 99.99999, 'D2', 'Economy'),
(39, '4', 99.99999, 'E1', 'Economy'),
(40, '4', 99.99999, 'E2', 'First Class'),
(41, '5', 99.99999, 'A1', 'Business'),
(42, '5', 99.99999, 'A2', 'Business'),
(43, '5', 99.99999, 'B1', 'Economy'),
(44, '5', 99.99999, 'B2', 'Economy'),
(45, '5', 99.99999, 'C1', 'First Class'),
(46, '5', 99.99999, 'C2', 'First Class'),
(47, '5', 99.99999, 'D1', 'Economy'),
(48, '5', 99.99999, 'D2', 'Economy'),
(49, '5', 99.99999, 'E1', 'Economy'),
(50, '5', 99.99999, 'E2', 'Economy'),
(51, '6', 99.99999, 'A1', 'Business'),
(52, '6', 99.99999, 'A2', 'Business'),
(53, '6', 99.99999, 'B1', 'Economy'),
(54, '6', 99.99999, 'B2', 'Economy'),
(55, '6', 99.99999, 'C1', 'First Class'),
(56, '6', 99.99999, 'C2', 'Economy'),
(57, '6', 99.99999, 'D1', 'Economy'),
(58, '6', 99.99999, 'D2', 'Economy'),
(59, '6', 99.99999, 'E1', 'Economy'),
(60, '6', 99.99999, 'E2', 'Economy'),
(61, '7', 99.99999, 'A1', 'Business'),
(62, '7', 99.99999, 'A2', 'Business'),
(63, '7', 99.99999, 'B1', 'Economy'),
(64, '7', 99.99999, 'B2', 'Economy'),
(65, '7', 99.99999, 'C1', 'Economy'),
(66, '7', 99.99999, 'C2', 'Economy'),
(67, '7', 99.99999, 'D1', 'Economy'),
(68, '7', 99.99999, 'D2', 'Economy'),
(69, '7', 99.99999, 'E1', 'Economy'),
(70, '7', 99.99999, 'E2', 'Economy'),
(71, '8', 99.99999, 'A1', 'Business'),
(72, '8', 99.99999, 'A2', 'Business'),
(73, '8', 99.99999, 'B1', 'Economy'),
(74, '8', 99.99999, 'B2', 'Economy'),
(75, '8', 99.99999, 'C1', 'First Class'),
(76, '8', 99.99999, 'C2', 'Economy'),
(77, '8', 99.99999, 'D1', 'Economy'),
(78, '8', 99.99999, 'D2', 'Economy'),
(79, '8', 99.99999, 'E1', 'Economy'),
(80, '8', 99.99999, 'E2', 'Economy'),
(81, '9', 99.99999, 'A1', 'Business'),
(82, '9', 99.99999, 'A2', 'Business'),
(83, '9', 99.99999, 'B1', 'Economy'),
(84, '9', 99.99999, 'B2', 'Economy'),
(85, '9', 99.99999, 'C1', 'Economy'),
(86, '9', 99.99999, 'C2', 'Economy'),
(87, '9', 99.99999, 'D1', 'Economy'),
(88, '9', 99.99999, 'D2', 'Economy'),
(89, '9', 99.99999, 'E1', 'Economy'),
(90, '9', 99.99999, 'E2', 'Economy'),
(91, '10', 99.99999, 'A1', 'Business'),
(92, '10', 99.99999, 'A2', 'Business'),
(93, '10', 99.99999, 'B1', 'First Class'),
(94, '10', 99.99999, 'B2', 'Economy'),
(95, '10', 99.99999, 'C1', 'Economy'),
(96, '10', 99.99999, 'C2', 'Economy'),
(97, '10', 99.99999, 'D1', 'Economy'),
(98, '10', 99.99999, 'D2', 'Economy'),
(99, '10', 55.00000, 'E1', 'Business'),
(100, '10', 99.99999, 'E2', 'Economy');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `passport` varchar(30) DEFAULT NULL,
  `nid` varchar(30) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `phone_no` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `username`, `passport`, `nid`, `date_of_birth`, `city`, `country`, `phone_no`, `email`, `password`) VALUES
('Raiyan', 'Siddiky', 'user1', 'temppass', 'tempnid', '2001-08-08', 'Dhaka', 'Bangladesh', 1730495601, 'raiyanwasisiddiky@gmail.com', 'pass1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`airline_name`),
  ADD UNIQUE KEY `airline_name` (`airline_name`);

--
-- Indexes for table `booked_flights`
--
ALTER TABLE `booked_flights`
  ADD PRIMARY KEY (`ticket_number`),
  ADD KEY `username` (`username`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`),
  ADD UNIQUE KEY `flight_id` (`flight_id`),
  ADD KEY `pilot_id` (`pilot_id`),
  ADD KEY `hangar_id` (`hangar_id`),
  ADD KEY `airline` (`airline`);

--
-- Indexes for table `hangar`
--
ALTER TABLE `hangar`
  ADD PRIMARY KEY (`hangar_id`),
  ADD UNIQUE KEY `hangar_id` (`hangar_id`),
  ADD UNIQUE KEY `hangar_id_2` (`hangar_id`);

--
-- Indexes for table `other_staff`
--
ALTER TABLE `other_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `hangar_id` (`hangar_id`);

--
-- Indexes for table `pilots`
--
ALTER TABLE `pilots`
  ADD PRIMARY KEY (`pilot_id`),
  ADD UNIQUE KEY `pilot_id` (`pilot_id`),
  ADD KEY `airline_name` (`airline_name`);

--
-- Indexes for table `registration_code`
--
ALTER TABLE `registration_code`
  ADD PRIMARY KEY (`registration_code`),
  ADD UNIQUE KEY `registration_code` (`registration_code`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_number`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked_flights`
--
ALTER TABLE `booked_flights`
  ADD CONSTRAINT `booked_flights_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `booked_flights_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`);

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`pilot_id`) REFERENCES `pilots` (`pilot_id`),
  ADD CONSTRAINT `flights_ibfk_2` FOREIGN KEY (`hangar_id`) REFERENCES `hangar` (`hangar_id`),
  ADD CONSTRAINT `flights_ibfk_3` FOREIGN KEY (`airline`) REFERENCES `airlines` (`airline_name`);

--
-- Constraints for table `other_staff`
--
ALTER TABLE `other_staff`
  ADD CONSTRAINT `other_staff_ibfk_1` FOREIGN KEY (`hangar_id`) REFERENCES `hangar` (`hangar_id`);

--
-- Constraints for table `pilots`
--
ALTER TABLE `pilots`
  ADD CONSTRAINT `pilots_ibfk_1` FOREIGN KEY (`airline_name`) REFERENCES `airlines` (`airline_name`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
