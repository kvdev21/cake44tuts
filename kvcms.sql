-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 08, 2023 at 10:52 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kvcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `clips`
--

CREATE TABLE `clips` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clips`
--

INSERT INTO `clips` (`id`, `name`, `created_at`, `updated_at`, `video`) VALUES
(2, 'Java', '2023-07-25 03:06:15', '2023-07-25 03:06:15', ''),
(3, 'Java Script', '2023-07-25 03:06:15', '2023-07-25 03:06:15', ''),
(4, 'Laravel', '2023-07-25 03:06:15', '2023-07-25 03:06:15', ''),
(5, 'Life Science', '2023-07-25 09:06:49', '2023-07-25 09:06:49', 'Life Science_1690258009.mp4'),
(6, 'Space Science', '2023-07-25 09:06:49', '2023-07-25 09:06:49', 'Space Science_1690258009.mp4'),
(7, 'Water Engineering', '2023-07-25 09:06:50', '2023-07-25 09:06:50', 'Water Engineering_1690258010.mp4'),
(8, '210322', '2023-08-01 15:41:11', '2023-08-01 15:41:11', '210322_1690904471.mp4'),
(9, '210322', '2023-08-01 15:41:11', '2023-08-01 15:41:11', '210322_1690904471.mp4'),
(10, '210322', '2023-08-01 15:41:58', '2023-08-01 15:41:58', '210322_1690904518.mp4'),
(11, '210322', '2023-08-01 15:41:58', '2023-08-01 15:41:58', '210322_1690904518.mp4'),
(12, '210322', '2023-08-01 15:41:58', '2023-08-01 15:41:58', '210322_1690904518.mp4'),
(13, '210322', '2023-08-07 14:04:55', '2023-08-07 14:04:55', '210322_1691417095.mp4'),
(14, '210322', '2023-08-07 14:04:55', '2023-08-07 14:04:55', '210322_1691417095.mp4'),
(15, '210322', '2023-08-07 14:04:55', '2023-08-07 14:04:55', '210322_1691417095.mp4'),
(16, 'Life Science_1690258009', '2023-08-07 14:13:51', '2023-08-07 14:13:51', 'Life Science_1690258009_1691417631.mp4'),
(17, 'Space Science_1690258009', '2023-08-07 14:13:51', '2023-08-07 14:13:51', 'Space Science_1690258009_1691417631.mp4'),
(18, 'Water Engineering_1690258010', '2023-08-07 14:13:51', '2023-08-07 14:13:51', 'Water Engineering_1690258010_1691417631.mp4'),
(19, 'Life Science_1690258009', '2023-08-07 14:26:24', '2023-08-07 14:26:24', 'Life Science_1690258009_1691418384.mp4'),
(20, 'Life Science_1690258009', '2023-08-07 14:26:58', '2023-08-07 14:26:58', 'Life Science_1690258009_1691418418.mp4'),
(21, 'Space Science_1690258009', '2023-08-07 14:26:58', '2023-08-07 14:26:58', 'Space Science_1690258009_1691418418.mp4'),
(22, 'Water Engineering_1690258010', '2023-08-07 14:26:58', '2023-08-07 14:26:58', 'Water Engineering_1690258010_1691418418.mp4'),
(23, 'Space Science_1690258009', '2023-08-07 14:28:04', '2023-08-07 14:28:04', 'Space Science_1690258009_1691418484.mp4'),
(24, 'Water Engineering_1690258010', '2023-08-07 14:28:04', '2023-08-07 14:28:04', 'Water Engineering_1690258010_1691418484.mp4'),
(25, 'Life Science_1690258009', '2023-08-07 14:28:04', '2023-08-07 14:28:04', 'Life Science_1690258009_1691418484.mp4'),
(26, 'Space Science_1690258009', '2023-08-07 14:28:04', '2023-08-07 14:28:04', 'Space Science_1690258009_1691418484.mp4'),
(27, 'Life Science_1690258009', '2023-09-08 10:08:36', '2023-09-08 10:08:36', 'Life Science_1690258009_1694167716.mp4'),
(28, 'Space Science_1690258009', '2023-09-08 10:08:36', '2023-09-08 10:08:36', 'Space Science_1690258009_1694167716.mp4'),
(29, 'Water Engineering_1690258010', '2023-09-08 10:08:36', '2023-09-08 10:08:36', 'Water Engineering_1690258010_1694167716.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `clip_collections`
--

CREATE TABLE `clip_collections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screen_collection_id` int(11) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clip_collections`
--

INSERT INTO `clip_collections` (`id`, `name`, `screen_collection_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'Cakephp', 1, '2023-06-30', '2023-07-07', '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(2, 'Laravel', 2, '2023-06-29', '2023-07-17', '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(3, 'PHP', 3, '2023-06-29', '2023-07-17', '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(4, 'Yii', 4, '2023-06-29', '2023-07-17', '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(5, 'Science F', 3, '2023-07-25', '2023-07-25', '2023-07-25 09:06:49', '2023-07-25 09:06:49'),
(6, 'chbuddy', 2, '2023-08-01', '2023-08-25', '2023-08-01 15:41:11', '2023-08-01 15:41:11'),
(7, 'desktop-app ffff', 3, '2023-08-01', '2023-08-19', '2023-08-01 15:41:58', '2023-08-01 15:45:25'),
(8, 'desktop-app', 3, '2023-08-07', '2023-08-26', '2023-08-07 14:04:55', '2023-08-07 14:04:55'),
(9, 'desktop-app', 3, '2023-08-07', '2023-09-03', '2023-08-07 14:13:51', '2023-08-07 14:13:51'),
(10, 'desktop-app', 1, '2023-08-07', '2023-08-08', '2023-08-07 14:26:24', '2023-08-07 14:26:24'),
(11, 'hollywood bowl', 3, '2023-08-07', '2023-08-26', '2023-08-07 14:26:58', '2023-08-07 14:26:58'),
(12, 'harvester', 4, '2023-08-25', '2023-09-02', '2023-08-07 14:28:04', '2023-08-11 09:20:17'),
(13, 'desktop-app', 3, '2023-09-09', '2023-09-15', '2023-09-08 10:08:36', '2023-09-08 10:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `clip_collections_items`
--

CREATE TABLE `clip_collections_items` (
  `id` int(11) NOT NULL,
  `clip_collection_id` int(11) DEFAULT NULL,
  `clip_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clip_collections_items`
--

INSERT INTO `clip_collections_items` (`id`, `clip_collection_id`, `clip_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(2, 2, 2, '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(3, 2, 3, '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(4, 3, 3, '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(5, 3, 2, '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(6, 3, 4, '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(7, 4, 3, '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(8, 4, NULL, '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(9, 4, 2, '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(10, 4, 4, '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(11, 5, 5, '2023-07-25 09:06:49', '2023-07-25 09:06:49'),
(12, 5, 6, '2023-07-25 09:06:49', '2023-07-25 09:06:49'),
(13, 5, 7, '2023-07-25 09:06:50', '2023-07-25 09:06:50'),
(14, 6, 8, '2023-08-01 15:41:11', '2023-08-01 15:41:11'),
(15, 6, 9, '2023-08-01 15:41:11', '2023-08-01 15:41:11'),
(16, 7, 10, '2023-08-01 15:41:58', '2023-08-01 15:41:58'),
(17, 7, 11, '2023-08-01 15:41:58', '2023-08-01 15:41:58'),
(18, 7, 12, '2023-08-01 15:41:58', '2023-08-01 15:41:58'),
(19, 7, 9, '2023-08-01 15:45:25', '2023-08-01 15:45:25'),
(20, 8, 13, '2023-08-07 14:04:55', '2023-08-07 14:04:55'),
(21, 8, 14, '2023-08-07 14:04:55', '2023-08-07 14:04:55'),
(22, 8, 15, '2023-08-07 14:04:55', '2023-08-07 14:04:55'),
(23, 9, 16, '2023-08-07 14:13:51', '2023-08-07 14:13:51'),
(24, 9, 17, '2023-08-07 14:13:51', '2023-08-07 14:13:51'),
(25, 9, 18, '2023-08-07 14:13:51', '2023-08-07 14:13:51'),
(26, 10, 19, '2023-08-07 14:26:24', '2023-08-07 14:26:24'),
(27, 11, 20, '2023-08-07 14:26:58', '2023-08-07 14:26:58'),
(28, 11, 21, '2023-08-07 14:26:58', '2023-08-07 14:26:58'),
(29, 11, 22, '2023-08-07 14:26:58', '2023-08-07 14:26:58'),
(31, 12, 24, '2023-08-07 14:28:04', '2023-08-07 14:28:04'),
(33, 12, 26, '2023-08-07 14:28:04', '2023-08-07 14:28:04'),
(34, 13, 27, '2023-09-08 10:08:36', '2023-09-08 10:08:36'),
(35, 13, 28, '2023-09-08 10:08:36', '2023-09-08 10:08:36'),
(36, 13, 29, '2023-09-08 10:08:36', '2023-09-08 10:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `clip_images`
--

CREATE TABLE `clip_images` (
  `id` int(11) NOT NULL,
  `clip_id` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clip_images`
--

INSERT INTO `clip_images` (`id`, `clip_id`, `filename`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ckae_image.jpg', '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(2, 2, 'java.jpg', '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(3, 3, 'java_script.jpg', '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(4, 4, 'laravel.jpg', '2023-07-25 03:06:15', '2023-07-25 03:06:15'),
(5, 5, 'Life Science_1690258009.jpg', '2023-07-25 09:06:49', '2023-07-25 09:06:49'),
(6, 6, 'Space Science_1690258009.jpg', '2023-07-25 09:06:49', '2023-07-25 09:06:49'),
(7, 7, 'Water Engineering_1690258010.jpg', '2023-07-25 09:06:50', '2023-07-25 09:06:50'),
(8, 8, '210322_1690904471.jpg', '2023-08-01 15:41:11', '2023-08-01 15:41:11'),
(9, 9, '210322_1690904471.jpg', '2023-08-01 15:41:11', '2023-08-01 15:41:11'),
(10, 10, '210322_1690904518.jpg', '2023-08-01 15:41:58', '2023-08-01 15:41:58'),
(11, 11, '210322_1690904518.jpg', '2023-08-01 15:41:58', '2023-08-01 15:41:58'),
(12, 12, '210322_1690904518.jpg', '2023-08-01 15:41:58', '2023-08-01 15:41:58'),
(13, 13, '210322_1691417095.jpg', '2023-08-07 14:04:55', '2023-08-07 14:04:55'),
(14, 14, '210322_1691417095.jpg', '2023-08-07 14:04:55', '2023-08-07 14:04:55'),
(15, 15, '210322_1691417095.jpg', '2023-08-07 14:04:55', '2023-08-07 14:04:55'),
(16, 16, 'Life Science_1690258009_1691417631.jpg', '2023-08-07 14:13:51', '2023-08-07 14:13:51'),
(17, 17, 'Space Science_1690258009_1691417631.jpg', '2023-08-07 14:13:51', '2023-08-07 14:13:51'),
(18, 18, 'Water Engineering_1690258010_1691417631.jpg', '2023-08-07 14:13:51', '2023-08-07 14:13:51'),
(19, 19, 'Life Science_1690258009_1691418384.jpg', '2023-08-07 14:26:24', '2023-08-07 14:26:24'),
(20, 20, 'Life Science_1690258009_1691418418.jpg', '2023-08-07 14:26:58', '2023-08-07 14:26:58'),
(21, 21, 'Space Science_1690258009_1691418418.jpg', '2023-08-07 14:26:58', '2023-08-07 14:26:58'),
(22, 22, 'Water Engineering_1690258010_1691418418.jpg', '2023-08-07 14:26:58', '2023-08-07 14:26:58'),
(23, 23, 'Space Science_1690258009_1691418484.jpg', '2023-08-07 14:28:04', '2023-08-07 14:28:04'),
(24, 24, 'Water Engineering_1690258010_1691418484.jpg', '2023-08-07 14:28:04', '2023-08-07 14:28:04'),
(25, 25, 'Life Science_1690258009_1691418484.jpg', '2023-08-07 14:28:04', '2023-08-07 14:28:04'),
(26, 26, 'Space Science_1690258009_1691418484.jpg', '2023-08-07 14:28:04', '2023-08-07 14:28:04'),
(27, 27, 'Life Science_1690258009_1694167716.jpg', '2023-09-08 10:08:36', '2023-09-08 10:08:36'),
(28, 28, 'Space Science_1690258009_1694167716.jpg', '2023-09-08 10:08:36', '2023-09-08 10:08:36'),
(29, 29, 'Water Engineering_1690258010_1694167716.jpg', '2023-09-08 10:08:36', '2023-09-08 10:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20230701092649, 'Createclips', '2023-07-25 03:05:56', '2023-07-25 03:05:56', 0),
(20230701110846, 'CreateBookImages', '2023-07-25 03:05:56', '2023-07-25 03:05:57', 0),
(20230701111449, 'CreateLibCollections', '2023-07-25 03:05:57', '2023-07-25 03:05:58', 0),
(20230701111652, 'CreateBookCollections', '2023-07-25 03:05:58', '2023-07-25 03:05:59', 0),
(20230701112247, 'CreateBookCollectionsclips', '2023-07-25 03:05:59', '2023-07-25 03:06:00', 0),
(20230720213633, 'ChangeclipsTable', '2023-07-25 03:06:00', '2023-07-25 03:06:00', 0),
(20230721193652, 'ChangeclipsTableVideoColumn', '2023-07-25 03:06:00', '2023-07-25 03:06:00', 0),
(20230721193915, 'ChangeclipsTableVideoColumn1', '2023-07-25 03:06:00', '2023-07-25 03:06:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `screen_collections`
--

CREATE TABLE `screen_collections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screen_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `screen_collections`
--

INSERT INTO `screen_collections` (`id`, `name`, `screen_count`, `created_at`, `updated_at`) VALUES
(1, 'Screen 1', 1, '2023-07-25 03:06:15', '2023-07-26 10:27:36'),
(2, 'Screen 2', 2, '2023-07-25 03:06:15', '2023-07-26 10:27:46'),
(3, 'Screen 3', 3, '2023-07-25 03:06:15', '2023-07-26 10:27:51'),
(4, 'Screen 4', 4, '2023-07-25 03:06:15', '2023-07-26 10:27:57'),
(5, 'Screen 2 portrait', 2, '2023-07-25 03:06:15', '2023-07-26 10:27:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clips`
--
ALTER TABLE `clips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clip_collections`
--
ALTER TABLE `clip_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `screen_collection_id` (`screen_collection_id`);

--
-- Indexes for table `clip_collections_items`
--
ALTER TABLE `clip_collections_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clip_collection_id` (`clip_collection_id`),
  ADD KEY `clip_id` (`clip_id`);

--
-- Indexes for table `clip_images`
--
ALTER TABLE `clip_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clip_id` (`clip_id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `screen_collections`
--
ALTER TABLE `screen_collections`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clips`
--
ALTER TABLE `clips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `clip_collections`
--
ALTER TABLE `clip_collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `clip_collections_items`
--
ALTER TABLE `clip_collections_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `clip_images`
--
ALTER TABLE `clip_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `screen_collections`
--
ALTER TABLE `screen_collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clip_collections`
--
ALTER TABLE `clip_collections`
  ADD CONSTRAINT `clip_collections_ibfk_1` FOREIGN KEY (`screen_collection_id`) REFERENCES `screen_collections` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `clip_collections_items`
--
ALTER TABLE `clip_collections_items`
  ADD CONSTRAINT `clip_collections_items_ibfk_1` FOREIGN KEY (`clip_collection_id`) REFERENCES `clip_collections` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `clip_collections_items_ibfk_2` FOREIGN KEY (`clip_id`) REFERENCES `clips` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `clip_images`
--
ALTER TABLE `clip_images`
  ADD CONSTRAINT `clip_images_ibfk_1` FOREIGN KEY (`clip_id`) REFERENCES `clips` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
