-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 07:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipilma`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatives`
--

CREATE TABLE `alternatives` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `alternatives`
--

INSERT INTO `alternatives` (`id`, `code`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '12', 'KSP-HOTEL', '2024-01-17 21:48:07', '2024-01-17 21:48:07', NULL),
(2, '11', 'Onne-Hotel', '2024-01-17 21:51:10', '2024-01-17 21:51:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alternative_comparisons`
--

CREATE TABLE `alternative_comparisons` (
  `id` int(10) UNSIGNED NOT NULL,
  `criteria_id` int(10) UNSIGNED NOT NULL,
  `x_alternative_id` int(10) UNSIGNED NOT NULL,
  `y_alternative_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `alternative_comparisons`
--

INSERT INTO `alternative_comparisons` (`id`, `criteria_id`, `x_alternative_id`, `y_alternative_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1.00000, '2024-01-17 21:50:36', '2024-01-17 21:50:36'),
(2, 1, 2, 2, 1.00000, '2024-01-17 21:52:05', '2024-01-17 21:52:05'),
(3, 2, 2, 1, 3.00000, '2024-01-17 21:53:14', '2024-01-17 21:54:34'),
(4, 2, 1, 2, 0.33333, '2024-01-17 21:53:14', '2024-01-17 21:54:34'),
(5, 3, 1, 1, 1.00000, '2024-01-17 21:53:25', '2024-01-17 21:53:25'),
(6, 4, 2, 1, 0.50000, '2024-01-17 21:53:33', '2024-01-17 22:57:02'),
(7, 4, 1, 2, 2.00000, '2024-01-17 21:53:33', '2024-01-17 22:57:02'),
(8, 5, 1, 2, 2.00000, '2024-01-17 21:53:40', '2024-01-17 21:53:40'),
(9, 5, 2, 1, 0.50000, '2024-01-17 21:53:40', '2024-01-17 21:53:40'),
(10, 1, 2, 1, 1.00000, '2024-01-17 21:53:57', '2024-01-17 21:53:57'),
(11, 1, 1, 2, 1.00000, '2024-01-17 21:53:57', '2024-01-17 21:53:57'),
(12, 2, 2, 2, 1.00000, '2024-01-17 21:54:49', '2024-01-17 21:54:49'),
(13, 2, 1, 1, 1.00000, '2024-01-17 21:54:58', '2024-01-17 21:54:58'),
(14, 3, 2, 2, 1.00000, '2024-01-17 21:55:15', '2024-01-17 21:55:15'),
(15, 3, 2, 1, 2.00000, '2024-01-17 21:55:39', '2024-01-17 21:55:39'),
(16, 3, 1, 2, 0.50000, '2024-01-17 21:55:39', '2024-01-17 21:55:39'),
(17, 4, 2, 2, 1.00000, '2024-01-17 22:57:20', '2024-01-17 22:57:20'),
(18, 4, 1, 1, 1.00000, '2024-01-17 22:57:27', '2024-01-17 22:57:27'),
(19, 5, 2, 2, 1.00000, '2024-01-17 22:58:12', '2024-01-17 22:58:12'),
(20, 5, 1, 1, 1.00000, '2024-01-17 22:58:18', '2024-01-17 22:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `alternative_details`
--

CREATE TABLE `alternative_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `alternative_id` int(10) UNSIGNED NOT NULL,
  `criteria_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `alternative_details`
--

INSERT INTO `alternative_details` (`id`, `alternative_id`, `criteria_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '500000', '2024-01-17 21:49:03', '2024-01-17 21:49:03'),
(2, 1, 2, 'FREE WIFFI', '2024-01-17 21:49:43', '2024-01-17 21:49:43'),
(3, 1, 3, '100*100 M2', '2024-01-17 21:49:56', '2024-01-17 21:49:56'),
(4, 1, 4, '100*50 M2', '2024-01-17 21:50:06', '2024-01-17 21:50:06'),
(5, 1, 5, '5', '2024-01-17 21:50:11', '2024-01-17 21:50:11'),
(6, 2, 1, '250000-500000', '2024-01-17 21:51:24', '2024-01-17 21:51:24'),
(7, 2, 2, 'free', '2024-01-17 21:51:29', '2024-01-17 21:51:29'),
(8, 2, 3, '150*300 m2', '2024-01-17 21:51:40', '2024-01-17 21:51:40'),
(9, 2, 4, '20*30 m2', '2024-01-17 21:51:48', '2024-01-17 21:51:48'),
(10, 2, 5, '10', '2024-01-17 21:51:52', '2024-01-17 21:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `alternative_normalizations`
--

CREATE TABLE `alternative_normalizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `comparison_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `alternative_normalizations`
--

INSERT INTO `alternative_normalizations` (`id`, `comparison_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 0.50000, '2024-01-17 21:50:39', '2024-01-17 21:53:59'),
(2, 2, 0.50000, '2024-01-17 21:53:59', '2024-01-17 21:53:59'),
(3, 11, 0.50000, '2024-01-17 21:53:59', '2024-01-17 21:53:59'),
(4, 10, 0.50000, '2024-01-17 21:53:59', '2024-01-17 21:53:59'),
(5, 4, 0.25000, '2024-01-17 21:55:00', '2024-01-17 21:55:00'),
(6, 12, 0.75000, '2024-01-17 21:55:00', '2024-01-17 21:55:00'),
(7, 3, 0.75000, '2024-01-17 21:55:00', '2024-01-17 21:55:00'),
(8, 13, 0.25000, '2024-01-17 21:55:00', '2024-01-17 21:55:00'),
(9, 14, 0.66667, '2024-01-17 21:55:42', '2024-01-17 21:55:42'),
(10, 16, 0.33333, '2024-01-17 21:55:42', '2024-01-17 21:55:42'),
(11, 5, 0.33333, '2024-01-17 21:55:42', '2024-01-17 21:55:42'),
(12, 15, 0.66667, '2024-01-17 21:55:42', '2024-01-17 21:55:42'),
(13, 7, 0.66667, '2024-01-17 22:57:29', '2024-01-17 22:57:29'),
(14, 17, 0.33333, '2024-01-17 22:57:29', '2024-01-17 22:57:29'),
(15, 6, 0.33333, '2024-01-17 22:57:29', '2024-01-17 22:57:29'),
(16, 18, 0.66667, '2024-01-17 22:57:29', '2024-01-17 22:57:29'),
(17, 8, 0.66667, '2024-01-17 22:58:22', '2024-01-17 22:58:22'),
(18, 19, 0.33333, '2024-01-17 22:58:22', '2024-01-17 22:58:22'),
(19, 9, 0.33333, '2024-01-17 22:58:22', '2024-01-17 22:58:22'),
(20, 20, 0.66667, '2024-01-17 22:58:22', '2024-01-17 22:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `alternative_priorities`
--

CREATE TABLE `alternative_priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `criteria_id` int(10) UNSIGNED NOT NULL,
  `alternative_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `alternative_priorities`
--

INSERT INTO `alternative_priorities` (`id`, `criteria_id`, `alternative_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.50000, '2024-01-17 21:50:39', '2024-01-17 21:53:59'),
(2, 1, 2, 0.50000, '2024-01-17 21:53:59', '2024-01-17 21:53:59'),
(3, 2, 2, 0.75000, '2024-01-17 21:55:00', '2024-01-17 21:55:00'),
(4, 2, 1, 0.25000, '2024-01-17 21:55:00', '2024-01-17 21:55:00'),
(5, 3, 2, 0.66667, '2024-01-17 21:55:42', '2024-01-17 21:55:42'),
(6, 3, 1, 0.33333, '2024-01-17 21:55:42', '2024-01-17 21:55:42'),
(7, 4, 2, 0.33333, '2024-01-17 22:57:29', '2024-01-17 22:57:29'),
(8, 4, 1, 0.66667, '2024-01-17 22:57:29', '2024-01-17 22:57:29'),
(9, 5, 2, 0.33333, '2024-01-17 22:58:22', '2024-01-17 22:58:22'),
(10, 5, 1, 0.66667, '2024-01-17 22:58:22', '2024-01-17 22:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `criterias`
--

CREATE TABLE `criterias` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `criterias`
--

INSERT INTO `criterias` (`id`, `code`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'C1', 'Tarif', '2020-01-27 20:49:37', '2020-01-27 20:49:37', NULL),
(2, 'C2', 'Fasilitas', '2020-01-27 20:49:37', '2020-01-27 20:49:37', NULL),
(3, 'C3', 'Luas', '2020-01-27 20:49:37', '2020-01-27 20:49:37', NULL),
(4, 'C4', 'Parkir Area', '2020-01-27 20:49:37', '2020-01-27 20:49:37', NULL),
(5, 'C5', 'Security', '2020-01-27 20:49:37', '2020-01-27 20:49:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `criteria_comparisons`
--

CREATE TABLE `criteria_comparisons` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_criteria_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,2) NOT NULL,
  `second_criteria_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `criteria_comparisons`
--

INSERT INTO `criteria_comparisons` (`id`, `first_criteria_id`, `value`, `second_criteria_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1.00, 1, '2020-01-27 20:49:37', '2020-01-27 20:49:37'),
(2, 2, 1.00, 2, '2020-01-27 20:49:37', '2020-01-27 20:49:37'),
(3, 3, 1.00, 3, '2020-01-27 20:49:37', '2020-01-27 20:49:37'),
(4, 4, 1.00, 4, '2020-01-27 20:49:37', '2020-01-27 20:49:37'),
(5, 5, 1.00, 5, '2020-01-27 20:49:37', '2020-01-27 20:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `criteria_normalizations`
--

CREATE TABLE `criteria_normalizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `comparison_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `criteria_normalizations`
--

INSERT INTO `criteria_normalizations` (`id`, `comparison_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1.0000, '2024-01-17 21:48:39', '2024-01-17 21:48:39'),
(2, 2, 1.0000, '2024-01-17 21:48:39', '2024-01-17 21:48:39'),
(3, 3, 1.0000, '2024-01-17 21:48:39', '2024-01-17 21:48:39'),
(4, 4, 1.0000, '2024-01-17 21:48:39', '2024-01-17 21:48:39'),
(5, 5, 1.0000, '2024-01-17 21:48:39', '2024-01-17 21:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `criteria_priorities`
--

CREATE TABLE `criteria_priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `criteria_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `criteria_priorities`
--

INSERT INTO `criteria_priorities` (`id`, `criteria_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1.0000, '2024-01-17 21:48:39', '2024-01-17 21:48:39'),
(2, 2, 1.0000, '2024-01-17 21:48:39', '2024-01-17 21:48:39'),
(3, 3, 1.0000, '2024-01-17 21:48:39', '2024-01-17 21:48:39'),
(4, 4, 1.0000, '2024-01-17 21:48:39', '2024-01-17 21:48:39'),
(5, 5, 1.0000, '2024-01-17 21:48:39', '2024-01-17 21:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `index_random`
--

CREATE TABLE `index_random` (
  `id` int(10) UNSIGNED NOT NULL,
  `n` tinyint(3) UNSIGNED NOT NULL,
  `IR` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `index_random`
--

INSERT INTO `index_random` (`id`, `n`, `IR`, `created_at`, `updated_at`) VALUES
(1, 1, 0.00, NULL, NULL),
(2, 2, 0.00, NULL, NULL),
(3, 3, 0.58, NULL, NULL),
(4, 4, 0.90, NULL, NULL),
(5, 5, 1.12, NULL, NULL),
(6, 6, 1.24, NULL, NULL),
(7, 7, 1.32, NULL, NULL),
(8, 8, 1.41, NULL, NULL),
(9, 9, 1.45, NULL, NULL),
(10, 10, 1.49, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_11_27_001124_create_roles_table', 1),
(3, '2018_11_27_001516_create_role_user_table', 1),
(4, '2018_11_27_082023_create_criterias_table', 1),
(5, '2018_11_27_082143_create_alternatives_table', 1),
(6, '2018_11_27_083235_create_alternative_details_table', 1),
(7, '2018_12_03_132203_create_criteria_comparisons_table', 1),
(8, '2018_12_04_062859_create_rating_scales_table', 1),
(9, '2018_12_05_011024_create_criteria_normalizations_table', 1),
(10, '2018_12_05_045538_create_criteria_priorities_table', 1),
(11, '2018_12_16_031947_create_alternative_comparisons_table', 1),
(12, '2018_12_16_105826_create_alternative_normalizations_table', 1),
(13, '2018_12_16_131631_create_alternative_priorities_table', 1),
(14, '2018_12_18_103508_create_index_randoms_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating_scales`
--

CREATE TABLE `rating_scales` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rating_scales`
--

INSERT INTO `rating_scales` (`id`, `value`, `caption`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sama pentingnya', 'Kedua elemen mempunyai pengaruh yang sama.', NULL, NULL),
(2, 2, 'Rata-rata', 'Nilai-nilai antara dua nilai pertimbangan-pertimbangan yang berdekatan, Nilai ini diberikan bila ada dua kompromi di antara 2 pilihan.', NULL, NULL),
(3, 3, 'Sedikit lebih penting', 'Pengalaman dan penilaian sangat memihak satu elemen dibandingkan dengan pasangannya.', NULL, NULL),
(4, 4, 'Rata-rata', 'Nilai-nilai antara dua nilai pertimbangan-pertimbangan yang berdekatan, Nilai ini diberikan bila ada dua kompromi di antara 2 pilihan.', NULL, NULL),
(5, 5, 'Lebih Penting', 'Satu elemen sangat disukai dan secara praktis dominasinya sangat nyata, dibandingkan dengan elemen pasangannya.', NULL, NULL),
(6, 6, 'Rata-rata', 'Nilai-nilai antara dua nilai pertimbangan-pertimbangan yang berdekatan, Nilai ini diberikan bila ada dua kompromi di antara 2 pilihan.', NULL, NULL),
(7, 7, 'Sangat penting', 'Satu elemen terbukti sangat disukai dan secara praktis dominasinya sangat, dibandingkan dengan elemen pasangannya.', NULL, NULL),
(8, 8, 'Rata-rata', 'Nilai-nilai antara dua nilai pertimbangan-pertimbangan yang berdekatan, Nilai ini diberikan bila ada dua kompromi di antara 2 pilihan.', NULL, NULL),
(9, 9, 'Mutlak lebih penting', 'Satu elemen mutlak lebih disukai dibandingkan dengan pasangannya, pada tingkat keyakinan tertinggi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadmin', 'Superadmin', NULL, NULL, NULL),
(2, 'admin', 'Administrator', NULL, NULL, NULL),
(3, 'user', 'User', NULL, NULL, NULL),
(4, 'superadmin', 'Superadmin', NULL, NULL, NULL),
(5, 'admin', 'Administrator', NULL, NULL, NULL),
(6, 'user', 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kasep', 'admin', 'admin@gmail.com', NULL, '$2b$12$dL75jKFjJrE1jJng33kPZOEjLIZehyVxp5X6SYKkGc84i88Imr83O', '5a1eVZz8UNmN7iishlGOQWW0p9NozcaphSa8NFoba5oIEXzRtfCQRg8EUxQx', '2020-01-27 20:52:23', '2020-01-27 20:52:23', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatives`
--
ALTER TABLE `alternatives`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alternatives_code_unique` (`code`);

--
-- Indexes for table `alternative_comparisons`
--
ALTER TABLE `alternative_comparisons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternative_comparisons_criteria_id_foreign` (`criteria_id`),
  ADD KEY `alternative_comparisons_x_alternative_id_foreign` (`x_alternative_id`),
  ADD KEY `alternative_comparisons_y_alternative_id_foreign` (`y_alternative_id`);

--
-- Indexes for table `alternative_details`
--
ALTER TABLE `alternative_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternative_details_alternative_id_foreign` (`alternative_id`),
  ADD KEY `alternative_details_criteria_id_foreign` (`criteria_id`);

--
-- Indexes for table `alternative_normalizations`
--
ALTER TABLE `alternative_normalizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternative_normalizations_comparison_id_foreign` (`comparison_id`);

--
-- Indexes for table `alternative_priorities`
--
ALTER TABLE `alternative_priorities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternative_priorities_criteria_id_foreign` (`criteria_id`),
  ADD KEY `alternative_priorities_alternative_id_foreign` (`alternative_id`);

--
-- Indexes for table `criterias`
--
ALTER TABLE `criterias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `criterias_code_unique` (`code`);

--
-- Indexes for table `criteria_comparisons`
--
ALTER TABLE `criteria_comparisons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criteria_comparisons_first_criteria_id_foreign` (`first_criteria_id`),
  ADD KEY `criteria_comparisons_second_criteria_id_foreign` (`second_criteria_id`);

--
-- Indexes for table `criteria_normalizations`
--
ALTER TABLE `criteria_normalizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criteria_normalizations_comparison_id_foreign` (`comparison_id`);

--
-- Indexes for table `criteria_priorities`
--
ALTER TABLE `criteria_priorities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criteria_priorities_criteria_id_foreign` (`criteria_id`);

--
-- Indexes for table `index_random`
--
ALTER TABLE `index_random`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_scales`
--
ALTER TABLE `rating_scales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatives`
--
ALTER TABLE `alternatives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `alternative_comparisons`
--
ALTER TABLE `alternative_comparisons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `alternative_details`
--
ALTER TABLE `alternative_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `alternative_normalizations`
--
ALTER TABLE `alternative_normalizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `alternative_priorities`
--
ALTER TABLE `alternative_priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `criteria_comparisons`
--
ALTER TABLE `criteria_comparisons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `criteria_normalizations`
--
ALTER TABLE `criteria_normalizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `criteria_priorities`
--
ALTER TABLE `criteria_priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `index_random`
--
ALTER TABLE `index_random`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rating_scales`
--
ALTER TABLE `rating_scales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
