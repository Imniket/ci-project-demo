-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2017 at 06:57 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arbitari`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `title` varchar(11) NOT NULL,
  `discription` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `u_id`, `name`, `title`, `discription`, `date`) VALUES
(10, 13, 'jay', 'kjdjjdskj', '<p>something heppen</p>\r\n', '2017-07-17 06:32:10'),
(12, 13, 'niket', 'something', '<p>A concept is an abstract idea representing the type and fundamental characteristics of some set of objects. Diagram When the mind makes a generalization such as the concept of tree, it extracts simi</p>\r\n', '2017-07-14 08:49:21'),
(14, 13, 'niket', 'jay', '<p>egfeuyfgfhgdshgjshgshdfgfyweg yfgeyfgefuyefgefegfhf yfgeyfeegfhfgdsjfhg</p>\r\n\r\n<p>efegfejhfgdjhgdfhdfgfyu</p>\r\n\r\n<p>iuefhufhfudsh</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2017-07-14 06:07:27'),
(15, 18, 'nike', 'something', '<p>hii,hello</p>\r\n', '2017-07-17 07:53:50'),
(16, 18, 'nike', 'njjjnn', 'gfsdsdsadgsdjhgdfjhdgbhdfmnbdfnbffdhgbfgjhgfjgfdmdfbgdfngbfgjmdfngdfj', '2017-07-17 08:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `status` enum('BOOKED','DELIVERD','PENDING','AVAILABLE') NOT NULL DEFAULT 'AVAILABLE',
  `total` varchar(20) NOT NULL,
  `creat_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `u_id`, `name`, `email`, `phone`, `status`, `total`, `creat_date`) VALUES
(40, 16, 'niket', 'nikegohel@gmail.com', 8866084641, 'AVAILABLE', '45,000.00', '2017-07-30 11:11:07'),
(41, 14, 'jay', 'jaygohel@jay.com', 0, 'AVAILABLE', '189,998.00', '2017-08-01 08:41:21'),
(42, 14, 'jay', 'jaygohel@jay.com', 0, 'AVAILABLE', '359,997.00', '2017-08-01 08:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `create_date`, `update_date`) VALUES
(1, 'MOBILE', '2017-08-01 18:30:00', '0000-00-00 00:00:00'),
(2, 'LAPTOP', '2017-08-01 18:30:00', '0000-00-00 00:00:00'),
(7, 'COMPUTER', '2017-08-02 12:45:09', '0000-00-00 00:00:00'),
(8, 'MEN\'S WEAR', '2017-08-03 04:24:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contct`
--

CREATE TABLE `contct` (
  `id` int(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` varchar(15) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contct`
--

INSERT INTO `contct` (`id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'qwertyuio', 'nikegohel@gmail', 78945612300, 'awsedrfgyhujiksxdcfvgbhnjhtyuikjhgtfrdertyui'),
(2, 'qwertyuio', 'nikegohel@gmail', 78945612300, 'awsedrfgyhujiksxdcfvgbhnjhtyuikjhgtfrdertyui');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `serial` int(11) NOT NULL,
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `phone` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) NOT NULL,
  `u_id` int(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `title` varchar(10) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `discription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `u_id`, `name`, `title`, `photo`, `discription`) VALUES
(28, 0, 'niket', 'awsome', '031ba2c5c9c4ea7a133203ca51d1d007.png', 'Flying Birds'),
(29, 0, 'some', 'thing', 'df9c38719fd1bf94120df1ca79a9c038.png', 'description'),
(30, 0, 'some', 'people', '66dbbf02aec626465a45ab6d688cd6f7.png', 'nice'),
(31, 0, 'nike', 'niket', 'fdbdd6222b9d24fa4dd140ccb780b7c9.png', 'sahjs'),
(32, 0, 'gjggfdghjk', 'ugfdfghjk', 'c56f77ebd67d17d2e47ddde371eb9013.png', 'dfgfghjjkhgfdfghj'),
(33, 0, 'jay', 'awsm', 'ea4bc414325b11b3e84d8f6db278de91.png', 'awsm'),
(34, 0, 'niket', 'niketq', '14ba26d469bbb50965e2a5dfe51af752.png', 'jsdhkdjhsdhsdha'),
(35, 0, 'jsdhskdhkj', 'hsaakshdsk', '5a6429228f1f19546bccef1e79fee4f3.png', 'sdsdjsgdsjdgsdgs'),
(36, 0, 'sddsjahgas', 'jhsghsgdsh', '3c326caa8a47917085c48dcdee183430.png', 'sgsdfhgdfsdndgsjdhgjf'),
(37, 0, 'sdfhdgfgds', 'gbyjsgdjhd', 'd50e0e0c3a8181f5ede0173a9e1a3207.png', 'jhasgjhdgdbjjhjhdskj'),
(38, 0, 'sbdjhgsadh', 'gsjhgsjhdg', '85b48b0535da89b90398b9c929f470fc.png', 'snbvdsnbvnsgdsjhdgsdjsmdsbjd'),
(39, 0, 'some', 'some', '5e1120a9755c448e88b62d42321c7958.png', 'djdjfhdjhfkjdh'),
(40, 0, 'abc', 'abc', '9ab7b5ede06fee74b6298aa5da82192f.png', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `serial` int(11) NOT NULL,
  `date` date NOT NULL,
  `customerid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `baseprice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `p_id`, `b_id`, `product_name`, `quantity`, `baseprice`) VALUES
(11, 20, 40, 'SAMSUNG GALEXY 8S', '3', 15000),
(12, 20, 41, 'SAMSUNG GALEXY 8S', '3', 15000),
(13, 19, 41, 'DELL-LAPTOP', '2', 39999),
(14, 9, 41, 'TOSHIBA-LAPTOP', '1', 65000),
(15, 9, 42, 'TOSHIBA-LAPTOP', '3', 65000),
(16, 19, 42, 'DELL-LAPTOP', '3', 39999),
(17, 20, 42, 'SAMSUNG GALEXY 8S', '3', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `card_name` varchar(20) NOT NULL,
  `card_no` bigint(11) NOT NULL,
  `COD` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `detail` text NOT NULL,
  `mfg_date` date NOT NULL,
  `quantity` int(20) NOT NULL,
  `remaining_quantity` int(20) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `detail`, `mfg_date`, `quantity`, `remaining_quantity`, `image1`, `image2`, `price`) VALUES
(9, 2, 'TOSHIBA-LAPTOP', '    Processor: Intel Core i3-5005U\r\n    RAM: 4GB\r\n    Inbuilt HDD: 500GB\r\n    Screen Size: 15.6 inches\r\n', '2017-06-06', 21, 18, 'f6baac227912b69e7a2ffb9cffe096f8.png', '', 65000),
(19, 2, 'DELL-LAPTOP', 'INTEL I3', '2000-12-21', 32, 29, 'ff1965d949fd46a23e760a0cb76782e4.jpg', '', 39999),
(20, 1, 'SAMSUNG GALEXY 8S', 'SAMSUNG GALEXY 8S', '2000-02-02', 32, 30, 'b0db4ac4e63f30a7d4073ae84b64faad.jpg', '', 15000),
(21, 1, 'MI REDMI NOTE 4', '4 gn ram,dsdsjdsjdsd', '2017-06-06', 202, 202, '8eff46372d203f53c6af303983f27a34.jpg', '', 12999),
(22, 8, 'T-SHIRT ', 'M,XL,XXL', '2017-08-02', 500, 500, '389e3140d418670462370d136fcb4345.jpg', '', 299),
(23, 8, 'T-SHIRT', 'xL,XXl,XXXl', '2017-08-02', 500, 500, 'c227ce59aa69146f2dffd2687f422459.jpg', '', 399);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `role` enum('ADMIN','USER') NOT NULL DEFAULT 'USER',
  `email` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `email`, `name`, `password`, `photo`) VALUES
(13, 'USER', 'email@email.com', 'niket', 'niket', '2016-11-14_26576.png'),
(14, 'USER', 'jaygohel@jay.com', 'jay', 'jay', '2016-11-21_27409.png'),
(16, 'USER', 'nikegohel@gmail.com', 'niket', 'niketgohel', 'IMG_20160507_101758.jpg'),
(19, 'ADMIN', 'niket@gohel.com', 'niket', 'niketgohel', ''),
(20, 'USER', 'jolly@email.com', 'jolly', 'jolly123', 'tshirt1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contct`
--
ALTER TABLE `contct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contct`
--
ALTER TABLE `contct`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `payment_info`
--
ALTER TABLE `payment_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
