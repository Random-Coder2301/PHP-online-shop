-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 06:11 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_market`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_name` varchar(100) NOT NULL,
  `admin_phone` bigint(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_pass` varchar(20) NOT NULL,
  `admin_username` varchar(20) NOT NULL,
  `admin_image` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_addr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_name`, `admin_phone`, `admin_id`, `admin_pass`, `admin_username`, `admin_image`, `admin_email`, `admin_addr`) VALUES
('Arshdeep', 9840037871, 1, 'admin', 'admin', '..\\templates\\images\\admin\\pass_photo.jpg', 'arshdeepdgreat@gmail.com', 'A4-405 adora akshaya homes,padur,chennai');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(5) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_image` varchar(255) NOT NULL,
  `cat_status` tinyint(4) NOT NULL DEFAULT 1,
  `cat_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_image`, `cat_status`, `cat_description`) VALUES
(300, 'Paintings', '..\\templates\\images\\categories\\painting.jpg', 1, 'paintings ranging from 10,000 to upwards of 2 lakh'),
(404, 'Others', '..\\templates\\images\\categories\\other.jpg', 1, 'some random text to decribe the category others ...acts as a dump if dont fit in any other categories'),
(405, 'Watches', '..\\templates\\images\\categories\\watch.jpg', 1, 'DESIGNER AND RARE WATCHES '),
(406, 'Sculptures', '..\\templates\\images\\categories\\sculpture.jpg', 1, 'beautiful sculptures of priceless value'),
(407, 'Weaponry', '../templates/images/categories/weapons.jpg', 1, 'ancient weapons of historical significance'),
(409, 'Retro technology', '../templates/images/categories/retro-tech-sounds.jpg', 1, 'A look back at technological devices.'),
(410, 'Ancient Cutlery', '../templates/images/categories/MA_00564338_k0cm4d.jpg', 1, 'old cutlery used by rulers of famous dynasties or famous people'),
(411, 'Currency pieces', '../templates/images/categories/img_coin.png', 1, 'Enthusiasts have been known to collect old and outdated currency as a symbol of historic significance');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(5) NOT NULL,
  `cust_username` varchar(50) NOT NULL,
  `cust_pass` int(11) NOT NULL,
  `cust_name` varchar(20) NOT NULL,
  `cust_addr` text NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `cust_image` varchar(255) NOT NULL,
  `cust_phone` bigint(10) NOT NULL,
  `cust_balance` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `cust_username`, `cust_pass`, `cust_name`, `cust_addr`, `cust_email`, `cust_image`, `cust_phone`, `cust_balance`) VALUES
(8, 'arshdeep', 12345, 'Arshdeep Singh', 'A4-405 adora akshaya homes', 'arshdeepdgreat@gmail.com', '../templates/images/cust_dp/arshdeep dp.png', 8754541444, 100000),
(11, 'nirzar', 12345, 'Nirzar Modi', 'vit vellore', 'nirzar@gmail.com', '../templates/images/cust_dp/Annotation 2021-06-03 012855.png', 9000000000, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(5) NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT 404,
  `seller_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `timestamp_add` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `cat_id`, `seller_id`, `product_name`, `product_price`, `product_img`, `timestamp_add`, `status`, `product_desc`) VALUES
(13, 300, 14, 'Rose Painting', 120000, '../templates/images/products/rose.jpg', '2021-05-24 08:50:34', 1, 'This is a famous detail of the rose from the portrait of Marie Antoinette by Louise Elisabeth.'),
(14, 300, 14, 'Swing of flowers', 800000, '../templates/images/products/painting.jpeg', '2021-05-24 08:52:20', 2, 'This is a famous painting made for auction by Louise Élisabeth Vigée Le Brun.'),
(15, 300, 14, 'Scenic Beauty', 50000, '../templates/images/products/scenic beauty.jpeg', '2021-05-24 08:57:57', 1, 'A beautiful piece made for general appreciation'),
(16, 300, 14, 'Red Head Girl', 100000, '../templates/images/products/a red head girl.jpg', '2021-05-24 09:01:11', 2, 'The red head girl painting appreciated worldwide for its graceful nature.'),
(18, 409, 14, 'Polaroid Camera', 50000, '../templates/images/products/polaroid.jpg', '2021-05-27 18:18:46', 1, 'This is a polaroid camera that is in working condition and is about 7 years old .'),
(19, 405, 14, 'Antique watch', 2000000, '../templates/images/products/watch ant.jpg', '2021-05-27 18:18:46', 1, 'This is a pocket watch which is almost 30 yrs old and is in working condition.'),
(20, 409, 14, 'Compass ', 30000, '../templates/images/products/compass.jpg', '2021-05-27 18:18:46', 1, 'A magnetic compass obtained from a ship over 25 years old'),
(21, 411, 14, 'Roman Coins', 10000, '../templates/images/products/roman.jpg', '2021-05-27 18:18:46', 1, 'All the known pieces of roman currency.The currency is almost 200 years old'),
(22, 407, 14, 'Antique Pistol ', 150000, '../templates/images/products/maxresdefault.jpg', '2021-05-27 18:18:46', 1, 'A percussion antique handheld pistol that can fire at very high speeds.'),
(23, 410, 14, 'Xing Dyanasty Jar', 110000, '../templates/images/products/x.jpg', '2021-05-27 18:18:46', 1, 'This is a well preserved Antique jar from Xing Dyanasty With very nice designs and intricate patterns');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `seller_id` int(5) NOT NULL,
  `seller_username` varchar(30) NOT NULL,
  `seller_name` varchar(50) NOT NULL,
  `seller_pass` varchar(11) NOT NULL,
  `seller_img` varchar(255) NOT NULL,
  `seller_email` varchar(100) NOT NULL,
  `seller_phone` bigint(12) NOT NULL,
  `seller_addr` text NOT NULL,
  `seller_aadhar` bigint(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`seller_id`, `seller_username`, `seller_name`, `seller_pass`, `seller_img`, `seller_email`, `seller_phone`, `seller_addr`, `seller_aadhar`) VALUES
(14, 'arshdeep', 'Arshdeep Singh', '12345', '../templates/images/seller_dps/arshdeep dp.png', 'arshdeepdgreat@gmail.com', 8754541603, 'A4-405 adora akshaya homes ,Padur,OMR road,Chennai, 603103', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `cust_id` int(5) NOT NULL,
  `seller_id` int(5) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `trans_id` int(10) NOT NULL,
  `product_id` int(5) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`cust_id`, `seller_id`, `timestamp`, `trans_id`, `product_id`, `Total`) VALUES
(8, 14, '2021-10-19 04:27:02', 3, 16, 100000),
(8, 14, '2021-11-18 04:03:34', 4, 14, 800000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_phone` (`admin_phone`),
  ADD UNIQUE KEY `admin_username` (`admin_username`),
  ADD UNIQUE KEY `admin_email` (`admin_email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `seller_id1` (`seller_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `seller_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `cat_id` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`),
  ADD CONSTRAINT `seller_id1` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`seller_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `cust_id` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`),
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `seller_id` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`seller_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
