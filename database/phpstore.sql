-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 03:50 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `PASSWORD` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `PASSWORD`) VALUES
(1, 'yuvrajunde80@gmail.com', 'phpstore'),
(2, 'india@gmail.com', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', '2022-01-24 16:11:43', '2022-01-24 16:11:43'),
(5, 'Pants', '2022-01-24 16:12:26', '2022-01-24 16:12:26'),
(6, 'night', '2022-01-24 16:17:16', '2022-01-24 16:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'yuvrajunde80@gmail.com', 'hiii', '2022-01-24 14:36:12', '2022-01-24 14:36:12'),
(2, 'abc@gmail.com', '', '2022-01-31 12:11:28', '2022-01-31 12:11:28'),
(3, 'abc@gmail.com', '', '2022-01-31 12:12:34', '2022-01-31 12:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'abc@gmail.com', 'abc', '2022-01-31 12:22:56', '2022-01-31 12:22:56'),
(2, 'poi@gmail.com', 'poi', '2022-01-31 12:29:20', '2022-01-31 12:29:20'),
(3, 'qwpe@gmail.com', 'qwer', '2022-01-31 12:29:37', '2022-01-31 12:29:37'),
(4, 'uuu@gmail.com', 'uuu', '2022-01-31 12:32:05', '2022-01-31 12:32:05'),
(5, '', '', '2022-01-31 13:07:55', '2022-01-31 13:07:55'),
(6, 'ram@gmail.com', 'ram', '2022-01-31 14:36:04', '2022-01-31 14:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `total` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `phone`, `total`, `created_at`, `updated_at`) VALUES
(1, 0, 'dsd', '4545454545', 1564, '2022-01-31 14:16:35', '2022-01-31 14:16:35'),
(2, 1, 'dsd', '4545454545', 1564, '2022-01-31 14:18:00', '2022-01-31 14:18:00'),
(3, 1, 'qwq', '1545', 1564, '2022-01-31 14:18:44', '2022-01-31 14:18:44'),
(4, 1, 'ram', '789456123', 1564, '2022-01-31 14:29:56', '2022-01-31 14:29:56'),
(5, 1, 'ram', '789456123', 1564, '2022-01-31 14:30:59', '2022-01-31 14:30:59'),
(6, 1, 'ram', '789456123', 1564, '2022-01-31 14:32:06', '2022-01-31 14:32:06'),
(7, 6, 'rama', '777777777', 999, '2022-01-31 14:36:43', '2022-01-31 14:36:43'),
(8, 6, 'rama', '777777777', 999, '2022-01-31 14:38:47', '2022-01-31 14:38:47'),
(9, 6, 'rama', '777777777', 999, '2022-01-31 14:43:15', '2022-01-31 14:43:15'),
(10, 6, 'rama', '777777777', 999, '2022-01-31 14:43:20', '2022-01-31 14:43:20'),
(11, 6, 'ram', '7710805788', 999, '2022-01-31 14:43:52', '2022-01-31 14:43:52'),
(12, 6, '', '', 999, '2022-01-31 14:44:51', '2022-01-31 14:44:51'),
(13, 6, 'dsd', '555555555', 789, '2022-01-31 14:48:31', '2022-01-31 14:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 5, 19, 0, '2022-01-31 14:30:59', '2022-01-31 14:30:59'),
(2, 5, 6, 1, '2022-01-31 14:30:59', '2022-01-31 14:30:59'),
(3, 6, 19, 0, '2022-01-31 14:32:07', '2022-01-31 14:32:07'),
(4, 6, 6, 1, '2022-01-31 14:32:07', '2022-01-31 14:32:07'),
(5, 7, 19, 0, '2022-01-31 14:36:43', '2022-01-31 14:36:43'),
(6, 8, 19, 0, '2022-01-31 14:38:48', '2022-01-31 14:38:48'),
(7, 9, 19, 0, '2022-01-31 14:43:16', '2022-01-31 14:43:16'),
(8, 10, 19, 0, '2022-01-31 14:43:20', '2022-01-31 14:43:20'),
(9, 11, 19, 0, '2022-01-31 14:43:52', '2022-01-31 14:43:52'),
(10, 12, 19, 0, '2022-01-31 14:44:51', '2022-01-31 14:44:51'),
(11, 13, 20, 1, '2022-01-31 14:48:31', '2022-01-31 14:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `pictures` varchar(30) NOT NULL,
  `description` mediumtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `pictures`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(6, 'god', 565, '../uploads/AIRC3853.JPG', 'god', 1, '2022-01-24 16:13:26', '2022-01-24 16:13:26'),
(18, 'ram', 9898, '../uploads/AJAC8699.JPG', 'dd', 5, '2022-01-26 10:26:54', '2022-01-26 10:26:54'),
(19, 'pushpa', 999, '../uploads/AJWH9535.JPG', 'pushpa', 6, '2022-01-26 11:05:39', '2022-01-26 11:05:39'),
(20, 'doshoom', 789, '../uploads/BAYF5352.JPG', 'dog', 5, '2022-01-26 11:06:50', '2022-01-26 11:06:50'),
(21, 'cat', 888, '../uploads/IMG_0973.PNG', 'cat', 5, '2022-01-26 11:07:42', '2022-01-26 11:07:42'),
(22, 'Nilesh', 2147483647, '../uploads/FQRE9181.JPG', 'good one.', 6, '2022-01-27 14:55:14', '2022-01-27 14:55:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
