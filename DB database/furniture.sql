-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 06:39 PM
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
-- Database: `furniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `descr` varchar(250) DEFAULT NULL,
  `small` varchar(50) DEFAULT NULL,
  `large` varchar(50) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `cat` int(11) DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `furniture`
--

INSERT INTO `furniture` (`id`, `title`, `descr`, `small`, `large`, `price`, `active`, `image`, `cat`, `date`) VALUES
(5, 'Queen Bed', 'descriptionClassic Wood and Craft Queen Size French Style Bed in Teak Wood with French Style Carving Having 2 Side stools in Black-Golden Deco Polish and Off-White upholestry Patched with Buttons.', 'No', '90.5L x 203W x 101.6H Centimeters', 12000, '1', 'q1.jpg', 4, '2023-11-05'),
(6, 'Classical Bed', 'Classic Wood and Craft Queen Size French Style Bed in Teak Wood with French Style Carving Having 2 Side stools in Black-Golden Deco Polish and Off-White upholestry Patched with Buttons. ', 'No', '90.5L x 203W x 101.6H Centimeters', 15000, '1', 'q2.jpg', 4, '2023-11-05'),
(7, 'Queen Bed', 'descriptioClassic Wood and Craft Queen Size French Style Bed in Teak Wood with French Style Carving Having 2 Side stools in Black-Golden Deco Polish and Off-White upholestry Patched with Buttons. n', 'No', ' 190.5L x 203W x 101.6H Centimeters ', 18000, '1', 'q4.jpg', 4, '2023-11-05'),
(8, 'Classical Bed', 'descriptionClassic Wood and Craft Queen Size French Style Bed in Teak Wood with French Style Carving Having 2 Side stools in Black-Golden Deco Polish and Off-White upholestry Patched with Buttons. ', 'No', ' 190.5L x 203W x 101.6H Centimeters ', 16000, '1', 'q3.jpg', 4, '2023-11-05'),
(9, 'steel Bed', 'descriptionClassic Wood and Craft Queen Size French Style Bed in Teak Wood with French Style Carving Having 2 Side stools in Black-Golden Deco Polish and Off-White upholestry Patched with Buttons. ', 'No', ' 190.5L x 203W x 101.6H Centimeters ', 17000, '0', 'q5.jpg', 4, '2023-11-05'),
(10, 'Arm Chair', 'descriptioAfter a long day at work, all you need are comfortable modern armchairs and footstools to relax while reading your favourite book. IKEA armchairs are available in different textiles, shapes and colours. Even your little one may want to sink', '50 x 70 cm', '80 x 100 cm', 1000, '1', '1.jpg', 5, '2023-11-05'),
(11, 'Chair', 'descriptionNOLMYRA easy chair re-imagines comfort with mesh fabric stretched over the frame, making the need for foam unnecessary. The result is an elegantly engineered lounge chair at a low price.', '50 x 70 cm', '80 x 100 cm', 70, '0', '2.jpg', 5, '2023-11-05'),
(12, 'Chair', 'descriptiNOLMYRA easy chair re-imagines comfort with mesh fabric stretched over the frame, making the need for foam unnecessary. The result is an elegantly engineered lounge chair at a low price.on', '50 x 70 cm', '80 x 100 cm', 60, '1', '3.jpg', 5, '2023-11-05'),
(13, 'Chair', 'descriptioNOLMYRA easy chair re-imagines comfort with mesh fabric stretched over the frame, making the need for foam unnecessary. The result is an elegantly engineered lounge chair at a low price.n', '50 x 70 cm', '80 x 100 cm', 900, '0', '10.png', 5, '2023-11-05'),
(14, 'Chair', 'chair chair', '2x3', '4x5', 500, '1', 't1.jpg', 5, '2023-11-05'),
(15, 'table', 'table', '2x1', '3x1', 600, '0', 't2.jpg', 7, '2023-11-05'),
(16, 'table', 'table made of white wood', '1 x 2  m', '1 x 3 m', 500, '0', 't3.jpg', 7, '2023-11-05'),
(17, 'Cabinet', 'deRelax Office Mires 800mm Wooden Desk High Office Cupboard with 1 Shelf and Lockable Double Doors Office Storage, File Organiser, Storage Cabinet-Oak Finish scription', '2 x 2 m', '3 x 3 m', 7000, '0', 'ca1.jpg', 8, '2023-11-06'),
(18, 'Cabinet', 'descriptionRelax Office Mires 800mm Wooden Desk High Office Cupboard with 1 Shelf and Lockable Double Doors Office Storage, File Organiser, Storage Cabinet-Oak Finish ', '2 x 2 m', '3 x 3 m', 7000, '0', 'ca2.jpg', 8, '2023-11-06'),
(19, 'Cabinet', 'descriptionRelax Office Mires 800mm Wooden Desk High Office Cupboard with 1 Shelf and Lockable Double Doors Office Storage, File Organiser, Storage Cabinet-Oak Finish ', '2 x 2 m', '3 x 3 m', 6600, '0', 'ca3.jpg', 8, '2023-11-06'),
(20, 'Cabinet', 'descriRelax Office Mires 800mm Wooden Desk High Office Cupboard with 1 Shelf and Lockable Double Doors Office Storage, File Organiser, Storage Cabinet-Oak Finish ption', '2 x 2 m', '3 x 3 m', 7700, '0', 'ca4.jpg', 8, '2023-11-06'),
(21, 'Queen Bed', 'Classic Wood and Craft Queen Size French Style Bed in Teak Wood with French Style Carving Having 2 Side stools in Black-Golden Deco Polish and Off-White upholestry Patched with Buttons. ', 'No', '3 x 3 m', 15000, '1', 'q6.jpg', 4, '2023-11-06'),
(22, 'wardrop', 'made of white wood ', '100 x 200 cm', '190.5L x 203W x 101.6H Centimeters', 11000, '1', 'w1.jpg', 9, '2023-11-06'),
(23, 'wardrop', 'made of white wood', '100 x 200 cm', '190.5L x 203W x 101.6H Centimeters', 12000, '1', 'w2.jpg', 9, '2023-11-06'),
(24, 'Book case', 'made of counter', '100 x 200 cm', '190.5L x 203W x 101.6H Centimeters', 10000, '1', 'b1.jpg', 14, '2023-11-06'),
(25, 'Book case', 'made of mdf ', '100 x 200 cm', '190.5L x 203W x 101.6H Centimeters', 13000, '1', 'b2.jpg', 14, '2023-11-06'),
(26, 'Book case', 'made of ash wood', '2x3', '190.5L x 203W x 101.6H Centimeters', 11000, '1', 'b3.jpg', 14, '2023-11-06'),
(27, 'kitchen', 'made of teak wood', '100 x 200 cm', '190.5L x 203W x 101.6H Centimeters', 45000, '1', 'k1.jpg', 15, '2023-11-06'),
(28, 'kitchen', 'made of counter', '100 x 200 cm', '190.5L x 203W x 101.6H Centimeters', 65000, '1', 'k2.jpg', 15, '2023-11-06'),
(29, 'kitchen', 'made of white wood', '100 x 200 cm', '190.5L x 203W x 101.6H Centimeters', 70000, '1', 'k3.jpg', 15, '2023-11-06'),
(30, 'mirror', 'made of zan', '100 x 200 cm', '80 x 100 cm', 1500, '1', 'mi1.jpg', 16, '2023-11-06'),
(31, 'mirror', 'made of teak wood', '100 x 200 cm', '190.5L x 203W x 101.6H Centimeters', 2000, '1', 'mi2.jpg', 16, '2023-11-06'),
(32, 'mirror', 'made of teak wood', '100 x 200 cm', '190.5L x 203W x 101.6H Centimeters', 1000, '1', 'mi3.jpg', 16, '2023-11-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat` (`cat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `furniture`
--
ALTER TABLE `furniture`
  ADD CONSTRAINT `furniture_ibfk_1` FOREIGN KEY (`cat`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
