-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2024 at 06:46 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rajakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `icon`, `status`) VALUES
(1, 'pozesofot', 'Dolorem voluptate do', 'fa fa-bandcamp', 'deactive'),
(2, 'qupu', 'Quia harum consequat', 'fa fa-cart-arrow-down', 'active'),
(5, 'hosoretyf', 'Sequi ut irure aute ', 'fa fa-automobile', 'deactive');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'default.jpg',
  `password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `password`) VALUES
(1, 'Bujho Nai Beparta', 'cuma@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(2, 'tap tap', 'sybe@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(3, 'tap tap', 'favi@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(4, 'tap tap', 'dewunavube@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(5, 'tap tap', 'kiqygy@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(6, 'tap tap', 'zuzyhazuf@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(7, 'tap tap', 'doyal@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(8, 'Manik Kala', 'fufo@mailinator.com', 'default.jpg', '8fb1fbd0f383746cf5d46e15302697ac39bf5a9b'),
(9, 'tap tap', 'jakucesu@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(10, 'cizikocum', 'hybala@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(11, 'xigynoqoly', 'huvesu@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(12, 'kalllu mama', 'jyqi@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(13, 'wunavazaq', 'nyko@mailinator.com', '13-wunavazaq-17-08-2024-350.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(14, 'hello', 'befuxakyg@mailinator.com', '14-hello-17-08-2024-3096.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(15, 'nejulanuxu', 'detolowu@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(16, 'Hello Bye', 'diga@mailinator.com', '16-Mr. Bean-17-08-2024-3743.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(17, 'tonamiwyg', 'xabecyfice@mailinator.com', 'default.jpg', '$2y$10$AANxNso/4ZApAfYGDPhV8.NLWm5qj/VZ/bh4AL4Jvkm2kgV967tNS'),
(18, 'Fahim Hossain Munna', 'bynetubu@mailinator.com', '18-Fahim Hossain Munna-18-08-2024-8053.png', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(19, 'vizyq', 'perawabuk@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d'),
(20, 'jeredija', 'qefam@mailinator.com', 'default.jpg', 'ac748cb38ff28d1ea98458b16695739d7e90f22d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `services`
--
ALTER TABLE `services`
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
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
