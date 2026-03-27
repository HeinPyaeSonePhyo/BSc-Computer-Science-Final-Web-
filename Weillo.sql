-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2026 at 12:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `health_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider_name` varchar(120) NOT NULL,
  `provider_type` enum('Hospital','Clinic','GP','Pharmacy','Other') NOT NULL DEFAULT 'Clinic',
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('Booked','Cancelled','Completed') NOT NULL DEFAULT 'Booked',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `user_id`, `provider_name`, `provider_type`, `appointment_date`, `appointment_time`, `reason`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 'Ar Yu', 'Hospital', '2025-11-18', '17:54:00', 'Stomachce', 'TEst', 'Cancelled', '2025-12-17 13:55:11', '2025-12-17 14:01:57'),
(8, 9, 'City Health Clinic', 'Clinic', '2026-03-28', '11:00:00', 'Vomiting', 'Sick', 'Cancelled', '2026-03-27 10:59:14', '2026-03-27 11:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `entry_date` date NOT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `blood_pressure_sys` smallint(5) UNSIGNED DEFAULT NULL,
  `blood_pressure_dia` smallint(5) UNSIGNED DEFAULT NULL,
  `sleep_hours` decimal(4,2) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `user_id`, `entry_date`, `weight`, `blood_pressure_sys`, `blood_pressure_dia`, `sleep_hours`, `notes`, `created_at`, `updated_at`) VALUES
(38, 7, '2025-11-10', 70.50, 120, 80, 8.00, 'Felt good today', '2025-11-12 10:52:39', '2025-11-12 10:52:39'),
(39, 7, '2025-11-09', 71.20, 118, 79, 7.50, 'Slept less, mild headache', '2025-11-12 10:52:39', '2025-11-12 10:52:39'),
(40, 7, '2025-11-08', 70.80, 122, 83, 6.00, 'Busy day, skipped breakfast', '2025-11-12 10:52:39', '2025-11-12 10:52:39'),
(41, 7, '2025-11-06', 70.90, 119, 77, 8.50, 'Great rest day, mood positive', '2025-11-12 10:52:39', '2025-11-12 10:52:39'),
(42, 7, '2025-11-05', 71.00, 117, 75, 9.00, 'Good energy levels throughout the day', '2025-11-12 10:52:39', '2025-11-12 10:52:39'),
(61, 7, '2025-11-01', 71.20, 118, 79, 7.50, 'Good energy, normal day', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(62, 7, '2025-11-02', 71.10, 117, 76, 8.00, 'Slept well, morning walk', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(63, 7, '2025-11-03', 71.00, 119, 78, 6.00, 'Busy day, little sleep', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(64, 7, '2025-11-04', 71.00, 117, 75, 9.00, 'Great rest, high energy', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(65, 7, '2025-11-05', 71.00, 117, 75, 9.00, 'Good energy levels throughout the day', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(66, 7, '2025-11-06', 70.90, 119, 77, 8.50, 'Great rest day, mood positive', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(67, 7, '2025-11-07', 70.85, 121, 80, 7.00, 'Normal work day', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(68, 7, '2025-11-08', 70.80, 122, 83, 6.00, 'Busy day, skipped breakfast', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(69, 7, '2025-11-09', 71.20, 118, 79, 7.50, 'Slept less, mild headache', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(70, 7, '2025-11-10', 70.50, 120, 80, 8.00, 'Felt good today', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(71, 7, '2025-11-12', 70.60, 119, 78, 7.00, 'Light exercise', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(72, 7, '2025-11-15', 70.40, 116, 76, 8.50, 'Relaxed weekend', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(73, 7, '2025-11-18', 70.55, 118, 77, 6.50, 'Stressful day at work', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(74, 7, '2025-11-22', 70.30, 115, 75, 8.00, 'Evening walk, felt calm', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(75, 7, '2025-11-25', 70.20, 114, 74, 7.50, 'Good focus during the day', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(76, 7, '2025-11-28', 70.10, 113, 73, 8.00, 'Slept very well', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(77, 7, '2025-11-30', 70.00, 112, 72, 7.00, 'End of month, feeling okay', '2025-12-03 10:52:12', '2025-12-03 10:52:12'),
(79, 7, '2025-10-01', 70.80, 118, 76, 7.50, 'Good start to the month', '2025-12-06 16:57:12', '2025-12-06 16:57:12'),
(80, 7, '2025-10-02', 71.00, 117, 75, 8.00, 'Slept well, morning exercise', '2025-12-06 16:57:12', '2025-12-06 16:57:12'),
(81, 7, '2025-10-03', 71.10, 120, 78, 7.00, 'Busy day but okay', '2025-12-06 16:57:12', '2025-12-06 16:57:12'),
(82, 7, '2025-10-04', 70.90, 116, 74, 8.20, 'Relaxed day, good energy', '2025-12-06 16:57:12', '2025-12-06 16:57:12'),
(83, 7, '2025-10-05', 72.50, 140, 90, 4.00, 'High stress, slept poorly', '2025-12-06 16:57:12', '2025-12-06 16:57:12'),
(84, 7, '2025-10-06', 70.70, 119, 77, 7.60, 'Normal routine', '2025-12-06 16:57:12', '2025-12-06 16:57:12'),
(85, 7, '2025-10-08', 70.60, 115, 74, 8.10, 'Feeling productive', '2025-12-06 16:57:12', '2025-12-06 16:57:12'),
(86, 7, '2025-10-12', 70.90, 118, 76, 7.80, 'Weekend rest', '2025-12-06 16:57:12', '2025-12-06 16:57:12'),
(87, 7, '2025-10-17', 73.00, 145, 95, 3.50, 'Very tired and stressful day', '2025-12-06 16:57:12', '2025-12-06 16:57:12'),
(88, 7, '2025-10-20', 70.50, 116, 73, 8.00, 'Recovered, feeling better', '2025-12-06 16:57:12', '2025-12-06 16:57:12'),
(92, 7, '2026-03-27', 71.00, 110, 80, 8.00, 'Great Day', '2026-03-27 02:18:55', '2026-03-27 02:18:55'),
(93, 7, '2026-02-01', 78.60, 122, 82, 7.50, 'Good start to the month', '2026-02-01 08:00:00', '2026-02-01 08:00:00'),
(94, 7, '2026-02-02', 78.40, 121, 81, 7.80, 'Morning walk', '2026-02-02 08:00:00', '2026-02-02 08:00:00'),
(95, 7, '2026-02-03', 78.50, 124, 83, 6.90, 'Busy day at work', '2026-02-03 08:00:00', '2026-02-03 08:00:00'),
(96, 7, '2026-02-04', 78.20, 120, 80, 8.10, 'Slept well', '2026-02-04 08:00:00', '2026-02-04 08:00:00'),
(97, 7, '2026-02-05', 78.10, 119, 79, 8.00, 'Felt energetic', '2026-02-05 08:00:00', '2026-02-05 08:00:00'),
(98, 7, '2026-02-06', 78.00, 118, 78, 7.60, 'Normal day', '2026-02-06 08:00:00', '2026-02-06 08:00:00'),
(99, 7, '2026-02-07', 77.90, 117, 78, 8.30, 'Weekend rest', '2026-02-07 08:00:00', '2026-02-07 08:00:00'),
(100, 7, '2026-02-08', 78.00, 120, 80, 7.20, 'Late dinner', '2026-02-08 08:00:00', '2026-02-08 08:00:00'),
(101, 7, '2026-02-09', 77.80, 116, 77, 8.40, 'Hydrated well', '2026-02-09 08:00:00', '2026-02-09 08:00:00'),
(102, 7, '2026-02-10', 77.70, 118, 79, 7.90, 'Light exercise', '2026-02-10 08:00:00', '2026-02-10 08:00:00'),
(103, 7, '2026-02-11', 77.60, 117, 78, 8.20, 'Good mood', '2026-02-11 08:00:00', '2026-02-11 08:00:00'),
(104, 7, '2026-02-12', 77.50, 119, 80, 7.10, 'A bit tired', '2026-02-12 08:00:00', '2026-02-12 08:00:00'),
(105, 7, '2026-02-13', 77.40, 116, 76, 8.50, 'Very restful sleep', '2026-02-13 08:00:00', '2026-02-13 08:00:00'),
(106, 7, '2026-02-14', 77.30, 118, 77, 7.70, 'Weekend walk', '2026-02-14 08:00:00', '2026-02-14 08:00:00'),
(107, 7, '2026-02-15', 77.20, 117, 76, 8.00, 'Healthy meals', '2026-02-15 08:00:00', '2026-02-15 08:00:00'),
(108, 7, '2026-02-16', 77.10, 115, 75, 8.40, 'Feeling lighter', '2026-02-16 08:00:00', '2026-02-16 08:00:00'),
(109, 7, '2026-02-17', 77.00, 116, 76, 7.80, 'Regular day', '2026-02-17 08:00:00', '2026-02-17 08:00:00'),
(110, 7, '2026-02-18', 77.00, 118, 78, 7.00, 'Stressful day', '2026-02-18 08:00:00', '2026-02-18 08:00:00'),
(111, 7, '2026-02-19', 76.90, 115, 75, 8.20, 'Recovered well', '2026-02-19 08:00:00', '2026-02-19 08:00:00'),
(112, 7, '2026-02-20', 76.80, 114, 74, 8.60, 'Excellent sleep', '2026-02-20 08:00:00', '2026-02-20 08:00:00'),
(113, 7, '2026-02-21', 76.90, 116, 75, 7.40, 'Family outing', '2026-02-21 08:00:00', '2026-02-21 08:00:00'),
(114, 7, '2026-02-22', 76.70, 113, 73, 8.70, 'Relaxed day', '2026-02-22 08:00:00', '2026-02-22 08:00:00'),
(115, 7, '2026-02-23', 76.60, 114, 74, 8.10, 'Productive workday', '2026-02-23 08:00:00', '2026-02-23 08:00:00'),
(116, 7, '2026-02-24', 76.50, 112, 72, 8.80, 'Best sleep this month', '2026-02-24 08:00:00', '2026-02-24 08:00:00'),
(117, 7, '2026-02-25', 76.50, 114, 73, 7.90, 'Stable energy', '2026-02-25 08:00:00', '2026-02-25 08:00:00'),
(118, 7, '2026-02-26', 76.40, 113, 72, 8.30, 'Evening walk', '2026-02-26 08:00:00', '2026-02-26 08:00:00'),
(119, 7, '2026-02-27', 76.30, 111, 71, 8.50, 'Very good day', '2026-02-27 08:00:00', '2026-02-27 08:00:00'),
(120, 7, '2026-02-28', 76.20, 112, 72, 8.00, 'Month end check-in', '2026-02-28 08:00:00', '2026-02-28 08:00:00'),
(121, 9, '2026-03-27', 80.00, 120, 88, 7.00, 'Dizzy', '2026-03-27 10:00:23', '2026-03-27 10:03:41'),
(122, 9, '2026-02-01', 80.20, 121, 82, 7.20, 'Good start to month', '2026-02-01 08:00:00', '2026-02-01 08:00:00'),
(123, 9, '2026-02-02', 80.10, 120, 81, 7.50, 'Normal day', '2026-02-02 08:00:00', '2026-02-02 08:00:00'),
(124, 9, '2026-02-03', 80.00, 119, 80, 7.80, 'Slept well', '2026-02-03 08:00:00', '2026-02-03 08:00:00'),
(125, 9, '2026-02-04', 80.10, 122, 83, 6.90, 'Busy workday', '2026-02-04 08:00:00', '2026-02-04 08:00:00'),
(126, 9, '2026-02-05', 79.90, 118, 79, 8.00, 'Light exercise', '2026-02-05 08:00:00', '2026-02-05 08:00:00'),
(127, 9, '2026-02-06', 79.80, 117, 78, 8.10, 'Relaxed day', '2026-02-06 08:00:00', '2026-02-06 08:00:00'),
(128, 9, '2026-02-07', 79.90, 120, 80, 7.00, 'Family dinner', '2026-02-07 08:00:00', '2026-02-07 08:00:00'),
(129, 9, '2026-02-08', 79.70, 116, 77, 8.30, 'Very good sleep', '2026-02-08 08:00:00', '2026-02-08 08:00:00'),
(130, 9, '2026-02-09', 79.80, 119, 79, 7.40, 'Productive day', '2026-02-09 08:00:00', '2026-02-09 08:00:00'),
(131, 9, '2026-02-10', 79.60, 118, 78, 7.90, 'Morning walk', '2026-02-10 08:00:00', '2026-02-10 08:00:00'),
(132, 9, '2026-02-11', 79.50, 117, 77, 8.20, 'Feeling fresh', '2026-02-11 08:00:00', '2026-02-11 08:00:00'),
(133, 9, '2026-02-12', 79.60, 121, 81, 6.80, 'Late night', '2026-02-12 08:00:00', '2026-02-12 08:00:00'),
(134, 9, '2026-02-13', 79.40, 116, 76, 8.40, 'Recovered well', '2026-02-13 08:00:00', '2026-02-13 08:00:00'),
(135, 9, '2026-02-14', 79.50, 118, 78, 7.60, 'Valentine dinner', '2026-02-14 08:00:00', '2026-02-14 08:00:00'),
(136, 9, '2026-02-15', 79.30, 117, 77, 8.00, 'Weekend rest', '2026-02-15 08:00:00', '2026-02-15 08:00:00'),
(137, 9, '2026-02-16', 79.20, 115, 75, 8.50, 'Best sleep this week', '2026-02-16 08:00:00', '2026-02-16 08:00:00'),
(138, 9, '2026-02-17', 79.30, 118, 78, 7.30, 'Regular day', '2026-02-17 08:00:00', '2026-02-17 08:00:00'),
(139, 9, '2026-02-18', 79.10, 116, 76, 8.10, 'Hydrated well', '2026-02-18 08:00:00', '2026-02-18 08:00:00'),
(140, 9, '2026-02-19', 79.00, 114, 74, 8.60, 'Excellent rest', '2026-02-19 08:00:00', '2026-02-19 08:00:00'),
(141, 9, '2026-02-20', 79.10, 117, 77, 7.20, 'Slight headache', '2026-02-20 08:00:00', '2026-02-20 08:00:00'),
(142, 9, '2026-02-21', 78.90, 115, 75, 8.00, 'Feeling good', '2026-02-21 08:00:00', '2026-02-21 08:00:00'),
(143, 9, '2026-02-22', 79.00, 118, 78, 7.10, 'Weekend outing', '2026-02-22 08:00:00', '2026-02-22 08:00:00'),
(144, 9, '2026-02-23', 78.80, 114, 74, 8.40, 'Great energy', '2026-02-23 08:00:00', '2026-02-23 08:00:00'),
(145, 9, '2026-02-24', 78.70, 113, 73, 8.70, 'Well rested', '2026-02-24 08:00:00', '2026-02-24 08:00:00'),
(146, 9, '2026-02-25', 78.80, 116, 76, 7.40, 'Normal workday', '2026-02-25 08:00:00', '2026-02-25 08:00:00'),
(147, 9, '2026-02-26', 78.60, 114, 74, 8.20, 'Evening walk', '2026-02-26 08:00:00', '2026-02-26 08:00:00'),
(148, 9, '2026-02-27', 78.50, 113, 73, 8.50, 'Very good day', '2026-02-27 08:00:00', '2026-02-27 08:00:00'),
(149, 9, '2026-02-28', 78.40, 112, 72, 8.10, 'Month end check-in', '2026-02-28 08:00:00', '2026-02-28 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `first_name`, `last_name`, `gender`, `dob`, `created_at`, `updated_at`) VALUES
(7, 'abcdefg@gmail.com', 'hxn99', '$2y$10$Mu8EjQKgc0/O.USqotgxKOsI.uBL7NMWhFxB2IHEFnvYuauhbP24m', 'Hexon', 'Pyae', 'Male', '2005-09-09', '2025-11-07 17:07:13', '2026-03-25 11:01:22'),
(9, 'heinpyaesonephyo2004@gmail.com', 'hein11', '$2y$10$o0tw7UzFD7NkrK3hVuo76u7PWXu./.kvVNyRXN/CeUzfbwP3FCCmi', 'Hein Pyae', 'Sone Phyo', 'Male', '2005-06-29', '2026-03-27 09:51:20', '2026-03-27 10:10:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_date` (`user_id`,`appointment_date`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_entries_user_date` (`user_id`,`entry_date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_users_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `entries`
--
ALTER TABLE `entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `fk_appointments_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `fk_entries_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
