-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2025 at 08:02 AM
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
-- Database: `notepad`
--

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `uniqueId` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `uniqueId`, `title`, `content`, `createdAt`, `updatedAt`) VALUES
(17, '228f5bcd-c20b-48c3-a56e-19eeec49f6e4', 'masuk ga bang', 'test?\n\nlagi abng', '2025-01-04 14:37:24.420', '2025-01-04 14:37:24.420'),
(19, '680627aa-1ae7-48c0-a18b-4b8abcdf9cd6', 'Catatn Baru', 'catatan baru gwe nich', '2025-01-06 06:40:13.712', '2025-01-06 06:40:13.712'),
(23, '1eb99d91-dd6b-4f71-a1d3-e0dcc68ebea1', 'catatan baru nih cuyyy', 'alamak headshot parah thuh\n', '2025-01-06 06:55:10.387', '2025-01-06 06:55:10.387');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('2eabf7ac-625d-4c0d-80d0-d6f2e50d1e03', 'ad30fe9603ef9730abc053023755223bf11101658c3a7a374395a3ad7ec53973', '2025-01-04 14:10:10.253', '20250104141010_init', NULL, NULL, '2025-01-04 14:10:10.245', 1),
('5814e51d-5ed5-43a4-9fda-7725b73a9e65', 'daa8596685d154e54e0a8ad7e03ecb86e7e71476f8251ee3ee2c537e33ee836d', '2025-01-04 13:08:17.943', '20250104130817_init', NULL, NULL, '2025-01-04 13:08:17.875', 1),
('c87c8726-d782-4cf6-a4c7-c6e803350d81', '04820fc0f0ad8580921cf6b3dfd6737fbdb93ffc3917f3f3827434ac232903e9', '2025-01-04 14:09:12.075', '20250104140912_init', NULL, NULL, '2025-01-04 14:09:12.058', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Note_uniqueId_key` (`uniqueId`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
