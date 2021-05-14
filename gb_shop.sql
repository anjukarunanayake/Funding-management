-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 14, 2021 at 08:24 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gb_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerp`
--

CREATE TABLE `customerp` (
  `cID` int(6) NOT NULL,
  `cName` varchar(255) NOT NULL,
  `cAddress` varchar(255) NOT NULL,
  `pName` varchar(255) NOT NULL,
  `cEmail` varchar(255) NOT NULL,
  `cDate` varchar(15) NOT NULL,
  `cGender` varchar(10) NOT NULL,
  `cPno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fundingservice`
--

CREATE TABLE `fundingservice` (
  `fid` int(6) NOT NULL,
  `ftype` varchar(255) NOT NULL,
  `fsource` varchar(255) NOT NULL,
  `famount` double NOT NULL,
  `fdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fundingservice`
--

INSERT INTO `fundingservice` (`fid`, `ftype`, `fsource`, `famount`, `fdate`) VALUES
(2, 'hhhujjh', 'kkkk', 1600, '3.3'),
(5, 'lllll', 'fdgdd', 3535, '2.2'),
(6, 'lllll', 'uuiioooo', 3535, '2.29');

-- --------------------------------------------------------

--
-- Table structure for table `payment1`
--

CREATE TABLE `payment1` (
  `pyId` int(6) NOT NULL,
  `payDes` varchar(255) NOT NULL,
  `payDate` varchar(15) NOT NULL,
  `payAmount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `des` varchar(20) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `pname`, `des`, `price`) VALUES
(1, 'fsdf', 'dafa', 2500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerp`
--
ALTER TABLE `customerp`
  ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `fundingservice`
--
ALTER TABLE `fundingservice`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `payment1`
--
ALTER TABLE `payment1`
  ADD PRIMARY KEY (`pyId`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerp`
--
ALTER TABLE `customerp`
  MODIFY `cID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fundingservice`
--
ALTER TABLE `fundingservice`
  MODIFY `fid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment1`
--
ALTER TABLE `payment1`
  MODIFY `pyId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
