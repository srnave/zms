-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2024 at 05:13 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `given_name` varchar(20) NOT NULL,
  `species_name` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `diet` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `number`, `email`, `password`) VALUES
('NAVEEN', '7736825656', 'naveensr.20it@kongu.', 'nave1274'),
('MADHU', '9788092503', 'madhushrees.20it@kon', 'madhu'),
('NAVEEN', '8281097095', 'srnave12@gmail.com', 'srnave'),
('SEDHU', '7777777777', 'sedhu@gmail.com', 'sedhu'),
('SR', '7736825656', 'srnave1292@gmail.com', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `name` varchar(20) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `income` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`name`, `mobile`, `mail`, `password`, `address`, `income`) VALUES
('SRND', '7736825656', 'srnave12@gmail.com', 'nave', 'DHARAPURAM', '1,00,00,000');

-- --------------------------------------------------------

--
-- Table structure for table `sponsorship`
--

CREATE TABLE `sponsorship` (
  `company_name` varchar(30) NOT NULL,
  `animal_name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `salary` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponsorship`
--

INSERT INTO `sponsorship` (`company_name`, `animal_name`, `email`, `phone`, `salary`) VALUES
('Madhushree S', 'Blackbuck', 'srnave12@gmail.com', '7777777777', '10000000');

-- --------------------------------------------------------

--
-- Table structure for table `ticketbooking`
--

CREATE TABLE `ticketbooking` (
  `name` varchar(20) NOT NULL,
  `regular` varchar(10) NOT NULL,
  `student` varchar(10) NOT NULL,
  `child` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticketbooking`
--

INSERT INTO `ticketbooking` (`name`, `regular`, `student`, `child`, `date`) VALUES
('SEDHU', '5', '1', '1', '2022-11-25'),
('SEDHU', '11', '11', '1', '2022-11-29'),
('NAVEEN', '11', '10', '1', '2022-11-24'),
('NAVEEN', '11', '10', '1', '2022-11-24'),
('NAVEEN', '5', '1', '1', '2022-11-18'),
('Sedgu', '1', '1', '1', '2022-11-25'),
('Sedhu', '11', '1', '0', '2022-11-24'),
('Sedhu', '11', '1', '0', '2022-11-24'),
('Sedhu', '11', '1', '0', '2022-11-24'),
('naveen', '1', '1', '1', '2022-11-23'),
('naveen', '1', '1', '1', '2022-11-23'),
('madhu', '1', '1', '1', '2022-11-24'),
('madhu', '6', '2', '0', '2022-11-23'),
('Sedhu', '2', '1', '1', '2022-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `vacancies`
--

CREATE TABLE `vacancies` (
  `name` varchar(20) NOT NULL,
  `jobname` varchar(20) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `uploadcv` blob NOT NULL,
  `verified` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vacancies`
--

INSERT INTO `vacancies` (`name`, `jobname`, `mail`, `phone`, `uploadcv`, `verified`) VALUES
('Naveen S R', 'Physician', 'srnave12@gmail.com', '7736825656', 0x323049545230373420524553554d452e706466, 'No'),
('sdjh', 'qhbsdjhb', 'hbjdshvhBQ@JHBD.SDF', 'SDJVHB', 0x436f6e76656e74696f6e616c20526573756d652038312e706466, 'No'),
('Naveen S R', 'Medical Assistant', 'sedhu@gmail.com', '7736825656', 0x436f6e76656e74696f6e616c20526573756d652036312e706466, 'No');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
