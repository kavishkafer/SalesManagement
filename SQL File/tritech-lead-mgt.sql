-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2022 at 08:12 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tritech-lead-mgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaign_table`
--

CREATE TABLE `campaign_table` (
  `id` int(11) NOT NULL,
  `campaignName` varchar(255) NOT NULL,
  `budget` int(10) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaign_table`
--

INSERT INTO `campaign_table` (`id`, `campaignName`, `budget`, `type`) VALUES
(1, 'Christmas Offer', 30000, 'TV Commercial'),
(2, 'Seasonal Offer', 25000, 'Facebook and Instagram'),
(3, 'Annual Charity', 85000, 'Charity and Donation'),
(4, 'New Year Offer', 30000, 'Youtube Commercial');

-- --------------------------------------------------------

--
-- Table structure for table `customer_table`
--

CREATE TABLE `customer_table` (
  `id` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_table`
--

INSERT INTO `customer_table` (`id`, `customerName`, `contact`, `email`, `timestamp`) VALUES
(1, 'Eshitha S', 112346598, 'eshitha@yahoo.com', '2022-09-11 05:06:05.581783'),
(2, 'Vinod', 112346598, 'vinod@yahoo.com', '2022-09-11 05:06:26.598113'),
(3, 'Naveendra Boss', 758865951, 'naviya@gmail.com', '2022-09-11 05:06:46.925526'),
(4, 'Ruchira', 112354969, 'ruchira@gmail.com', '2022-09-11 05:07:10.974241'),
(5, 'Yohan', 784565984, 'yohang@gmail.com', '2022-09-11 05:07:29.709487');

-- --------------------------------------------------------

--
-- Table structure for table `lead_table`
--

CREATE TABLE `lead_table` (
  `id` int(11) NOT NULL,
  `leadName` varchar(255) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lead_table`
--

INSERT INTO `lead_table` (`id`, `leadName`, `contact`, `email`, `status`) VALUES
(1, 'Ruchira Bogahawatta', 712015465, 'ruchira@gmail.com', 'Interested'),
(2, 'Yohan', 71456587, 'yohan@gmail.com', 'Follow up'),
(3, 'Vinod Satan', 71456587, 'vinod@gmail.com', 'Not Interested'),
(4, 'Eshitha', 112456578, 'eshitha@gmail.com', 'Consideration');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `username`, `password`, `usertype`) VALUES
(1, 'Ruchira', 'ruchira', '123', 'Admin'),
(2, 'Naveendra', 'naveendra', '123', 'Admin'),
(3, 'Yohan', 'yohan', '123', 'Admin'),
(4, 'Vinod', 'vinod', '123', 'Admin'),
(5, 'Eshitha', 'eshitha', '123', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaign_table`
--
ALTER TABLE `campaign_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_table`
--
ALTER TABLE `customer_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_table`
--
ALTER TABLE `lead_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaign_table`
--
ALTER TABLE `campaign_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_table`
--
ALTER TABLE `customer_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lead_table`
--
ALTER TABLE `lead_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
