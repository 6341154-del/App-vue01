-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2026 at 01:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'เครื่องใช้ไฟฟ้า'),
(2, 'เสื้อผ้า'),
(3, 'รองเท้า');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(8) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `firstName`, `lastName`, `phone`, `username`, `password`) VALUES
(1, 'สมชาย', 'ใจดี', '0812345678', 'somchai', 'pass1234'),
(2, 'วิภา', 'สุขสันต์', '0898765432', 'wipa', 'wipa2025'),
(3, 'John', 'Doe', '0991122334', 'johnd', 'securepwd'),
(4, 'จารุดา', 'ไทป้อม', '0642295944', '๋Jaruda', '$2y$10$cQQUXhgI8E2pT89wB1WcaOJ9hD/u1Ni1Lh9a51scioYQQIzRUWq3C'),
(5, 'เจส', 'สิก้า', '0123456789', '๋J', '$2y$10$Gz0YnZ.QxXZhQ8kfv.6qC.ar5vPpJjYuwgcZs2tALQp6d.f1uBwUm'),
(6, '๋ีJustin', 'Termini', '0900000000', 'Jus', '$2y$10$uhv9TieFonk9ITfkwBL2LemCyfjVuiacFzM.9MbndBbU0fFznZ/gy'),
(7, 'มะลิรัตน์', 'คงดี', '038745290', 'admin', '$2y$10$Aw2PrIjhkEKjabcH/IhNH.vZc2CN6ABIEJNdf2OlH2wkxvG7r34Qm');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `active` tinyint(1) DEFAULT 1,
  `image` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `full_name`, `department`, `salary`, `active`, `image`, `created_at`) VALUES
(0000000001, 'สมชาย ใจดี', '็HR', '35000.00', 1, '1771152509_M4.jpg', '2026-01-18 10:25:00'),
(0000000002, 'สมหญิง ดีงาม', 'GA', '28000.00', 1, '1771152499_M5.jpg', '2026-01-18 10:25:00'),
(0000000003, 'อนันต์ สุขใจ', 'IT', '25000.00', 0, '1771152425_M7.jpg', '2026-01-18 10:25:00'),
(0000000004, 'สุดา พรมดี', 'Assembly', '32000.00', 1, '1771152417_M6.jpg', '2026-01-18 10:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` text DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `description`, `price`, `image`, `stock`, `category_id`, `created_at`) VALUES
(00000000001, 'เสื้อยืดคอกลม', 'เสื้อยืดผ้าฝ้าย 100% สวมใส่สบาย', '199.00', '1771760984_0268.png', 50, 1, '2026-01-25 11:01:37'),
(00000000002, 'image.01.jpg', 'กางเกงยีนส์ทรงกระบอก สีฟ้าอ่อน', '799.00', '1771761011_1725105739656.jpg', 30, 1, '2026-01-25 11:01:37'),
(00000000003, 'รองเท้าผ้าใบ', 'รองเท้าผ้าใบสีขาว ใส่ได้ทุกโอกาส', '1299.00', '1771761188_p1.jpg', 20, 2, '2026-01-25 11:01:37'),
(00000000004, 'แมวน่ารัก', 'ขายแมวตัวอ้วน', '5000.00', '1771761100_p2.jpg', 2, 2, '2026-02-22 11:51:40'),
(00000000005, 'รองเท้า', 'หฟกหฟกฟก', '550.00', '1771761277_p2.jpg', 20, 3, '2026-02-22 11:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL COMMENT 'รหัสสินค้า',
  `type_name` varchar(30) NOT NULL COMMENT 'ชื่อประเภทสินค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(1, 'เครื่องใช้ไฟฟ้า'),
(2, 'ของใช้สำนักงาน');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสินค้า', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
