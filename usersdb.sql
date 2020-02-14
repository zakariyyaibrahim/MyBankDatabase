-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2020 at 09:21 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usersdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `acc_id` int(10) NOT NULL,
  `AccountNumber` varchar(50) DEFAULT NULL,
  `Balance` decimal(10,3) DEFAULT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`acc_id`, `AccountNumber`, `Balance`, `UserId`) VALUES
(1, '2570001201', '2500.000', 1),
(2, '2570001215', '1086.000', 4),
(3, '25700012003', '540.000', 10),
(4, '2570001204', '75000.000', 3),
(5, '2570001222', '8000500.000', 5),
(6, '2570001216', '2500000.000', 7),
(7, '25700012019', '9650500.000', 8),
(8, '2570001220', '2500.000', 6),
(9, '25700012018', '50900.000', 2),
(10, '25700012019', '3500.000', 9),
(11, '25700012022', '500000.000', 11),
(12, '25700012017', '45055.000', 16),
(13, '25700012020', '350030.000', 13),
(14, '25700012023', '3500000.000', 14),
(15, '25700012016', '3500000.000', 17),
(16, '25700012021', '11800.000', 15),
(17, '25700012024', '9999999.999', 18),
(18, '25700012014', '1980000.000', 12);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(10) NOT NULL,
  `Amount` decimal(10,3) NOT NULL,
  `TransactionType` varchar(50) NOT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `TransactionDate` date DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `Amount`, `TransactionType`, `Description`, `TransactionDate`, `UserId`) VALUES
(1, '50050.000', 'Credit', 'Credited the amount along suleja road, niger state', '2019-01-10', 18),
(2, '24550.000', 'Credit', 'Credited  Obasi road, Enugu street', '2020-02-12', 1),
(3, '50050.000', 'Credit', 'Credited POS road,Ikeja', '2021-05-15', 12),
(4, '100150.000', 'Debit', 'Debited the amount along suleja road, Sokoto state', '2020-02-13', 2),
(5, '18900.000', 'Debit', 'Debited the ATM WITHDRAWAL, niger state', '2012-11-17', 8),
(6, '360000.000', 'Credit', 'Credited the amount along road, Kano road', '2020-02-13', 9),
(7, '190000.000', 'Credit', 'Debited the amount Behind suleja road, Ilorin bank', '2020-02-13', 15),
(8, '250000.000', 'Debit', 'Debited the FirstBank niger state', '2020-01-05', 19),
(9, '75000.000', 'Credit', 'Credited the amount along suleja road, Katsina', '2020-10-18', 4),
(10, '5000050.000', 'Debit', 'Debited the amount along suleja road, Zaria Zone', '2020-02-13', 7),
(11, '15500.000', 'Credit', 'Remitter RRR niger state', '2020-10-10', 3),
(12, '60000.000', 'Credit', 'Credited the amount along suleja road, niger state', '2020-02-13', 16),
(13, '55000.000', 'Debit', 'Debited the amount along ', '2020-02-13', 14),
(14, '75000.000', 'Debit', 'Debited the amount along suleja road, ', '2020-01-15', 5),
(15, '8550060.000', 'Debit', 'Debited the amount along suleja road, ', '2020-01-04', 6),
(16, '450000.000', 'Credit', 'Credited the amount along e', '2020-02-13', 13),
(17, '300000.000', 'Debit', 'Debited the amount a ', '2020-02-17', 17),
(18, '2524000.000', 'Credit', 'Credited the ', '2020-02-13', 11),
(19, '9999999.999', 'Credit', 'Debited the amount ', '2015-02-19', 5),
(20, '9999999.999', 'Credit', 'Credited the amount', '2009-12-03', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `FirstName` varchar(33) DEFAULT NULL,
  `LastName` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `FirstName`, `LastName`) VALUES
(1, 'Zakariya', 'Areo'),
(2, 'Habibu', 'Yusuf'),
(3, 'Sirajudeen', 'Ahmad'),
(4, 'Maryam', 'Sanda'),
(5, 'Lado', 'Abubakar'),
(6, 'Amina', 'Ayinla'),
(7, 'Olawale', 'Bright'),
(8, 'Chris', 'Brown'),
(9, 'Angel', 'Lawrence'),
(10, 'Godwill', 'James'),
(11, 'Chukwu', 'Obinna'),
(12, 'Mark', 'Angel'),
(13, 'Mark', 'Angel'),
(14, 'Mark', 'Angel'),
(15, 'Prince', 'Suzan'),
(16, 'DanLadi', 'Mary'),
(17, 'Sylvester', 'Micheal'),
(18, 'Mathew', 'Mary'),
(19, 'Ebuka', 'Uchenna'),
(20, 'Zainab', 'Adekunle'),
(21, 'Faith', 'Francis'),
(22, 'Kenneth', 'Obadoba'),
(23, 'Musa', 'Zaharadeen'),
(24, 'Sheyi', 'Oluwafemi'),
(25, 'Jacob', 'Sanusi'),
(26, 'Abubakar', 'Yelwa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`acc_id`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `acc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
