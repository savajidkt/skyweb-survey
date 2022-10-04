-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 04, 2022 at 07:31 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=main admin,2=sub admin',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `type`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$I2dM8aaIGtJxuYDId8sb8.fD3jB8BGYowRI8ZwfaLASeLqH8wbikq', '1', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_01_105340_create_admin_table', 1),
(6, '2022_09_30_042820_alter_user_table_fields', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` tinyint NOT NULL DEFAULT '2' COMMENT '1=Admin, 2=User',
  `user_status` tinyint NOT NULL DEFAULT '0' COMMENT '0=Inactive, 1=Active',
  `is_first_time_login` tinyint NOT NULL DEFAULT '0' COMMENT '0=Password Not Change, 1=Password Change',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `user_type`, `user_status`, `is_first_time_login`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Savji', 'Rathod', 'savaji.dkt@gmail.com', '2022-09-30 09:44:45', '$2y$10$zaoe1DQYWAg3o1N.ID5iaekOUGhPtunty5CzwKGgiZ3rGRxfrWuMi', 1, 1, 1, NULL, '2022-09-30 09:44:45', '2022-09-30 09:44:45', NULL),
(2, 'Dr. Salma Rath', 'Elody Blanda', 'verner46@example.org', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'C6rZ62xCMl8g4TCeY4ROhOCyPw26WESZEk7SqTQxD4v9PDHEetbsOPxXTL9I', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(3, 'Dr. Cleo Berge DVM', 'Teresa Pfannerstill Jr.', 'crona.tianna@example.net', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'ed7rxnwo1g', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(4, 'Alexandria Daugherty', 'Prof. Leola Lueilwitz', 'harris.sidney@example.org', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'FL75tgM1kq', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(5, 'Prof. Keara Connelly', 'Lupe Metz', 'fmclaughlin@example.net', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'MZiZtZbW1z', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(6, 'Dr. Stanford Abbott', 'Rocky Stiedemann', 'gorczany.robb@example.com', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'tTaw1lIrFx', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(7, 'Jensen Olson IV', 'Leann Jerde', 'lharvey@example.org', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, '1ohLpUNaXT', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(8, 'Gennaro Abbott', 'Mrs. Nelle Stroman PhD', 'enrique94@example.com', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'fTa3zkQP94', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(9, 'Miss Felipa Quigley MD', 'Tomas Durgan', 'kennedi.balistreri@example.com', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'cQ41EBQnbO', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(10, 'Wendell Kunze', 'Golden Ratke', 'smith.savanah@example.net', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'FqgeagKEK4', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(11, 'Prof. Damian Reinger', 'Dusty Kris', 'barton.eric@example.net', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'IidGSBMZiA', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(12, 'Mariah Wehner', 'Prof. Eleazar Hermann', 'virginie.feest@example.net', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'lrIai3CrdN', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(13, 'Bertha Ullrich', 'Mr. Clinton Zboncak IV', 'marjorie.quigley@example.net', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, '0oM2W9mpzZ', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(14, 'Jimmy Spencer', 'Jarvis Bartell', 'tpowlowski@example.org', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'zi8Ar2VzV8', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(15, 'Dr. Ross Schowalter III', 'Julie Grimes', 'haven01@example.org', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'rtAXNSHv2g', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(16, 'Jackson Hoppe', 'Garett Runolfsson', 'irunte@example.net', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 's3viXGwNQL', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(17, 'Prof. Armand Paucek', 'Lia Veum', 'purdy.kaylee@example.net', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'GOqYqsF2EF', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(18, 'Cindy Rogahn', 'Kylie Kunze', 'flossie34@example.org', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'KrhSFapQTl', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(19, 'Prof. Lesley Dooley II', 'Prof. Theodore Howe', 'tblock@example.net', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'g7eIZmPKm0', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(20, 'Christophe Lynch', 'Sienna Lockman Jr.', 'boyer.jonatan@example.org', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'uN4vhAo8AC', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(21, 'Johnpaul VonRueden', 'Hassie Thompson PhD', 'prosacco.dudley@example.org', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'M9IJWDQzps', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(22, 'Bethany Harris', 'Jany Wisoky', 'lcassin@example.org', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'BO92eaN48V', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(23, 'Ms. Chelsea Leuschke MD', 'Tabitha Dicki', 'kdoyle@example.com', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, '9pxTgNSQMI', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(24, 'Alanna Considine', 'Willow Hagenes', 'vkuhic@example.com', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'SBKH3TeTFD', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(25, 'Dr. Orland Kemmer II', 'Granville Cronin', 'emmanuelle92@example.net', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'whrz49cFga', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(26, 'Emmitt Olson', 'Daphnee Padberg', 'della.schmeler@example.com', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'NOiv63AADD', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(27, 'Gaylord Roob', 'Cleo Hane', 'elva60@example.com', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'x38d9zI5Xy', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(28, 'Thaddeus Dickinson', 'Theresia Rice DVM', 'werner.deckow@example.org', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, '39YR2cm3Pu', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(29, 'Bartholome Goldner PhD', 'Penelope Purdy', 'kozey.anissa@example.net', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'Azhs3d0XX2', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(30, 'Nicole Schaden', 'Clementina Windler', 'elyssa.monahan@example.org', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'cq79yg9bkL', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL),
(31, 'Felton Williamson', 'Kailey Reinger', 'durward.hartmann@example.net', '2022-09-30 12:20:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 0, 0, 'V6cEQe5Dwa', '2022-09-30 12:20:59', '2022-09-30 12:20:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
