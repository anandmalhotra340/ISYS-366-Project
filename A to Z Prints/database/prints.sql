-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `item_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(12) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Dicetrays', 'Castle Dicetray', 152.00, 'assets\products\Castle_Dicetray.jpg', '2022-04-28'), -- NOW()
(2, 'Dicetrays', 'Castle Tower Dicetray', 122.00, 'assets\products\Castle_Tower.jpg', '2022-04-28'),
(3, 'Dicetrays', 'Castle Dicetray 2', 122.00, 'assets\products\IMG_20220407_164015.jpg', '2022-04-28'),
(4, 'Dicetrays', 'Dicetray', 122.00, 'assets\products\IMG_20220407_164227.jpg', '2022-04-28'),
(5, 'Dicetrays', 'One Ring Dicetray', 122.00, 'assets\products\OneRing_Dicetray.jpg', '2022-04-28'),
(6, 'DND', 'Dungeons and Dragons DeckBox', 122.00, 'assets\products\Dnd_Deckbox.jpg', '2022-04-28'),
(7, 'DND', 'Dragon', 122.00, 'assets\products\Dragon.jpg', '2022-04-28'),
(8, 'MCU', 'Iron Man', 122.00, 'assets\products\Iron-Man-3D-print-Gambody.jpg', '2022-04-28'),
(9, 'LOTR', 'Lord of the Rings Coaster', 152.00, 'assets\products\LotR_Coaster.jpg', '2022-04-28'),
(10, 'Miscellaneous', 'Claw Bookmark', 152.00, 'assets\products\Claw_Bookmark.jpg', '2022-04-28'),
(11, 'Miscellaneous', 'Skull Guitar Pick Holder', 152.00, 'assets\products\Skull_Guitar.jpg', '2022-04-28'),
(12, 'MTG', 'Magic the Gathering DeckBox', 152.00, 'assets\products\MTG_Deckbox.jpg', '2022-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
(2, 'Akshay', 'Kashyap', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
