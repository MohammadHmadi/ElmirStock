-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 03:34 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoes_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `images` varchar(1000) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_login_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `images`, `quantity`, `user_login_id`) VALUES
(8, 'nike', 20, '309659829_1129947247620620_3801935900408323024_n.jpg', 1, NULL),
(9, 'addidass', 30, '315993583_6004815746215958_4506284551497426601_n.jpg', 1, NULL),
(10, 'g', 20, '349248886_264133232814309_2018536105357255916_n.jpg', 1, NULL),
(11, 'b', 23, '317196276_657912925977698_5265148736805149738_n.jpg', 1, NULL),
(12, 'f', 30, '336580154_125581487015406_8736752446019541320_n.jpg', 1, NULL),
(13, 'addidass', 30, '315993583_6004815746215958_4506284551497426601_n.jpg', 1, NULL),
(14, 'g', 20, '349248886_264133232814309_2018536105357255916_n.jpg', 1, NULL),
(15, 'nike', 20, '309659829_1129947247620620_3801935900408323024_n.jpg', 1, NULL),
(16, 'b', 23, '317196276_657912925977698_5265148736805149738_n.jpg', 1, NULL),
(17, 'f', 30, '336580154_125581487015406_8736752446019541320_n.jpg', 1, NULL),
(18, 'nike', 20, '309659829_1129947247620620_3801935900408323024_n.jpg', 1, NULL),
(19, 'addidass', 30, '315993583_6004815746215958_4506284551497426601_n.jpg', 1, NULL),
(20, 'b', 23, '317196276_657912925977698_5265148736805149738_n.jpg', 1, 1),
(21, 'nike', 20, '309659829_1129947247620620_3801935900408323024_n.jpg', 1, 1),
(22, 'nike', 20, '309659829_1129947247620620_3801935900408323024_n.jpg', 1, 7),
(23, 'b', 23, '317196276_657912925977698_5265148736805149738_n.jpg', 1, 7),
(24, 'nike', 20, '309659829_1129947247620620_3801935900408323024_n.jpg', 1, 8),
(25, 'addidass', 30, '315993583_6004815746215958_4506284551497426601_n.jpg', 1, 8),
(26, 'nike', 20, '309659829_1129947247620620_3801935900408323024_n.jpg', 1, 10),
(27, 'addidass', 30, '315993583_6004815746215958_4506284551497426601_n.jpg', 1, 10),
(28, 'nike', 20, '309659829_1129947247620620_3801935900408323024_n.jpg', 1, 11),
(29, 'addidass', 30, '315993583_6004815746215958_4506284551497426601_n.jpg', 1, 11),
(30, 'b', 23, '317196276_657912925977698_5265148736805149738_n.jpg', 1, 11),
(32, 'nike', 20, '309659829_1129947247620620_3801935900408323024_n.jpg', 1, 19);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `number` int(11) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `method` varchar(100) NOT NULL,
  `street` varchar(1000) NOT NULL,
  `state` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `total_products` varchar(10000) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `street`, `state`, `country`, `total_products`, `total_price`) VALUES
(1, 'm', 122, 'mhmd@gmail.com', 'credit cart', 'asda', 'sfsd', 'Lebanon', 'nike (1) , addidass (1) ', 50),
(2, 'm', 23423, 'mhmd@gmail.com', 'paypal', 'asda', '343', 'Lebanon', 'nike (1) , addidass (1) ', 50),
(3, 'asda', 2432, 'mhmd@gmail.com', 'credit cart', 'sada', 'sdfsd', 'kjj', 'nike (1) , addidass (1) , g (1) , b (1) , f (1) , addidass (1) , g (1) , nike (1) , b (1) , f (1) , nike (1) , addidass (1) , b (1) , nike (1) , nike (1) , b (1) , nike (1) , addidass (1) , nike (1) , addidass (1) , nike (1) , addidass (1) , b (1) , nike (1) ', 575),
(4, 'zsfdfsd', 345, 'mhmd@gmail.com', 'cash on delivery', 'sada', 'sfdfs', 'Lebanon', 'nike (1) ', 20),
(5, 'asda', 23423, 'mhmd@gmail.com', 'credit cart', 'sada', 'asf', 'Lebanon', 'nike (1) ', 20);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(8, 'nike', 20, '309659829_1129947247620620_3801935900408323024_n.jpg'),
(9, 'addidass', 30, '315993583_6004815746215958_4506284551497426601_n.jpg'),
(11, 'b', 23, '317196276_657912925977698_5265148736805149738_n.jpg'),
(12, 'f', 30, '336580154_125581487015406_8736752446019541320_n.jpg'),
(14, 'g', 20, '349248886_264133232814309_2018536105357255916_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `admin`) VALUES
(1, 'admin', 'admin@gmail.com', '123', 1),
(5, 'mhmd', 'mhmd@gmail.com', '123', 0),
(6, 'ali', 'ali@gmail.com', '456', 0),
(7, 'hussien', 'hussien@gmail.com', '111', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE `users_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `user_id`) VALUES
(10, 5),
(15, 5),
(18, 5),
(19, 5),
(20, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(16, 6),
(17, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_login_id` (`user_login_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_user_login_id` FOREIGN KEY (`user_login_id`) REFERENCES `users_login` (`id`);

--
-- Constraints for table `users_login`
--
ALTER TABLE `users_login`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
