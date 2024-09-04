-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Sep 2024 pada 16.09
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

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
-- Struktur dari tabel `alternatives`
--

CREATE TABLE `alternatives` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `alternatives`
--

INSERT INTO `alternatives` (`id`, `code`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'ALT1', 'Alternatif 1', '2024-08-31 04:57:04', '2024-08-31 04:57:04', NULL),
(3, 'ALT2', 'Alternatif 2', '2024-08-31 04:57:37', '2024-08-31 04:57:37', NULL),
(4, 'ALT3', 'Alternatif 3', '2024-08-31 06:15:33', '2024-08-31 06:15:33', NULL),
(5, 'ALT4', 'Alternatif4', '2024-08-31 06:15:53', '2024-08-31 06:15:53', NULL),
(6, 'ALT5', 'Alternatif5', '2024-09-01 07:01:24', '2024-09-01 07:01:24', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternative_comparisons`
--

CREATE TABLE `alternative_comparisons` (
  `id` int(10) UNSIGNED NOT NULL,
  `criteria_id` int(10) UNSIGNED NOT NULL,
  `x_alternative_id` int(10) UNSIGNED NOT NULL,
  `y_alternative_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `alternative_comparisons`
--

INSERT INTO `alternative_comparisons` (`id`, `criteria_id`, `x_alternative_id`, `y_alternative_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 11, 3, 3, 1.00000, '2024-08-31 04:58:53', '2024-08-31 04:58:53'),
(2, 9, 3, 3, 1.00000, '2024-08-31 04:59:02', '2024-08-31 04:59:02'),
(3, 9, 2, 3, 2.00000, '2024-08-31 05:02:34', '2024-08-31 06:18:09'),
(4, 9, 3, 2, 0.50000, '2024-08-31 05:02:34', '2024-08-31 06:18:09'),
(5, 9, 3, 4, 0.20000, '2024-08-31 06:18:30', '2024-08-31 06:19:47'),
(6, 9, 4, 3, 5.00000, '2024-08-31 06:18:30', '2024-08-31 06:19:47'),
(7, 9, 2, 2, 1.00000, '2024-08-31 06:18:36', '2024-08-31 06:18:36'),
(8, 9, 2, 4, 2.00000, '2024-08-31 06:20:22', '2024-08-31 06:20:22'),
(9, 9, 4, 2, 0.50000, '2024-08-31 06:20:22', '2024-08-31 06:20:22'),
(10, 9, 2, 5, 2.00000, '2024-08-31 06:20:35', '2024-08-31 06:20:35'),
(11, 9, 5, 2, 0.50000, '2024-08-31 06:20:35', '2024-08-31 06:20:35'),
(12, 9, 5, 3, 2.00000, '2024-08-31 06:20:40', '2024-08-31 06:20:40'),
(13, 9, 3, 5, 0.50000, '2024-08-31 06:20:40', '2024-08-31 06:20:40'),
(14, 9, 4, 4, 1.00000, '2024-08-31 06:20:49', '2024-08-31 06:20:49'),
(15, 9, 4, 5, 2.00000, '2024-08-31 06:21:13', '2024-08-31 06:21:13'),
(16, 9, 5, 4, 0.50000, '2024-08-31 06:21:13', '2024-08-31 06:21:13'),
(17, 9, 5, 5, 1.00000, '2024-08-31 06:21:25', '2024-08-31 06:21:25'),
(18, 9, 6, 2, 2.00000, '2024-09-01 07:02:17', '2024-09-01 07:02:21'),
(19, 9, 2, 6, 0.50000, '2024-09-01 07:02:17', '2024-09-01 07:02:21'),
(20, 9, 6, 3, 2.00000, '2024-09-01 07:02:37', '2024-09-01 07:02:37'),
(21, 9, 3, 6, 0.50000, '2024-09-01 07:02:37', '2024-09-01 07:02:37'),
(22, 9, 6, 4, 4.00000, '2024-09-01 07:02:42', '2024-09-01 07:02:42'),
(23, 9, 4, 6, 0.25000, '2024-09-01 07:02:42', '2024-09-01 07:02:42'),
(24, 9, 6, 5, 6.00000, '2024-09-01 07:02:48', '2024-09-01 07:02:48'),
(25, 9, 5, 6, 0.16667, '2024-09-01 07:02:48', '2024-09-01 07:02:48'),
(26, 9, 6, 6, 1.00000, '2024-09-01 07:02:54', '2024-09-01 07:02:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternative_details`
--

CREATE TABLE `alternative_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `alternative_id` int(10) UNSIGNED NOT NULL,
  `criteria_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `alternative_details`
--

INSERT INTO `alternative_details` (`id`, `alternative_id`, `criteria_id`, `value`, `created_at`, `updated_at`) VALUES
(3, 2, 9, 'Sri Sundariyah', '2024-08-31 04:57:12', '2024-08-31 04:57:12'),
(4, 2, 10, '55', '2024-08-31 04:57:17', '2024-08-31 04:57:17'),
(5, 2, 11, '33', '2024-08-31 04:57:20', '2024-08-31 04:57:20'),
(6, 2, 12, '44', '2024-08-31 04:57:24', '2024-08-31 04:57:24'),
(7, 3, 9, 'Sri Isnaeni', '2024-08-31 04:57:44', '2024-08-31 04:57:44'),
(8, 3, 10, '36', '2024-08-31 04:57:50', '2024-08-31 04:57:50'),
(9, 3, 11, '44', '2024-08-31 04:57:53', '2024-08-31 04:57:53'),
(10, 3, 12, '45', '2024-08-31 04:57:59', '2024-08-31 04:57:59'),
(11, 4, 9, 'Asni', '2024-08-31 06:16:35', '2024-08-31 06:16:35'),
(12, 4, 10, '43', '2024-08-31 06:16:41', '2024-08-31 06:16:41'),
(13, 4, 11, '12', '2024-08-31 06:16:45', '2024-08-31 06:16:45'),
(14, 4, 12, '33', '2024-08-31 06:16:51', '2024-08-31 06:16:51'),
(15, 5, 9, 'Sundirah', '2024-08-31 06:16:59', '2024-08-31 06:16:59'),
(16, 5, 10, '70', '2024-08-31 06:17:03', '2024-08-31 06:17:03'),
(17, 5, 11, '23', '2024-08-31 06:17:10', '2024-08-31 06:17:10'),
(18, 5, 12, '55', '2024-08-31 06:17:14', '2024-08-31 06:17:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternative_normalizations`
--

CREATE TABLE `alternative_normalizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `comparison_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `alternative_normalizations`
--

INSERT INTO `alternative_normalizations` (`id`, `comparison_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 4, 0.11111, '2024-08-31 06:21:31', '2024-09-01 07:02:59'),
(2, 7, 0.22222, '2024-08-31 06:21:31', '2024-09-01 07:02:59'),
(3, 9, 0.11111, '2024-08-31 06:21:31', '2024-09-01 07:02:59'),
(4, 11, 0.11111, '2024-08-31 06:21:31', '2024-09-01 07:02:59'),
(5, 2, 0.08333, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(6, 3, 0.16667, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(7, 6, 0.41667, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(8, 12, 0.16667, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(9, 5, 0.02597, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(10, 8, 0.25974, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(11, 14, 0.12987, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(12, 16, 0.06494, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(13, 10, 0.17391, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(14, 13, 0.04348, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(15, 15, 0.17391, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(16, 17, 0.08696, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(17, 18, 0.44444, '2024-09-01 07:03:00', '2024-09-01 07:03:00'),
(18, 20, 0.16667, '2024-09-01 07:03:00', '2024-09-01 07:03:00'),
(19, 22, 0.51948, '2024-09-01 07:03:00', '2024-09-01 07:03:00'),
(20, 24, 0.52174, '2024-09-01 07:03:00', '2024-09-01 07:03:00'),
(21, 19, 0.20690, '2024-09-01 07:03:00', '2024-09-01 07:03:00'),
(22, 21, 0.20690, '2024-09-01 07:03:00', '2024-09-01 07:03:00'),
(23, 23, 0.10345, '2024-09-01 07:03:00', '2024-09-01 07:03:00'),
(24, 25, 0.06897, '2024-09-01 07:03:00', '2024-09-01 07:03:00'),
(25, 26, 0.41379, '2024-09-01 07:03:00', '2024-09-01 07:03:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternative_priorities`
--

CREATE TABLE `alternative_priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `criteria_id` int(10) UNSIGNED NOT NULL,
  `alternative_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `alternative_priorities`
--

INSERT INTO `alternative_priorities` (`id`, `criteria_id`, `alternative_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 9, 2, 0.20589, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(2, 9, 3, 0.09416, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(3, 9, 4, 0.18700, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(4, 9, 5, 0.09973, '2024-08-31 06:21:31', '2024-09-01 07:03:00'),
(5, 9, 6, 0.41322, '2024-09-01 07:03:00', '2024-09-01 07:03:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `criterias`
--

CREATE TABLE `criterias` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `criterias`
--

INSERT INTO `criterias` (`id`, `code`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'C1', 'Nama', '2024-08-31 04:54:18', '2024-08-31 04:54:18', NULL),
(10, 'C2', 'Usia', '2024-08-31 04:54:26', '2024-08-31 04:54:26', NULL),
(11, 'C3', 'LILA', '2024-08-31 04:54:35', '2024-08-31 04:54:35', NULL),
(12, 'C4', 'Berat Badan', '2024-08-31 04:54:49', '2024-08-31 04:54:49', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `criteria_comparisons`
--

CREATE TABLE `criteria_comparisons` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_criteria_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,2) NOT NULL,
  `second_criteria_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `criteria_comparisons`
--

INSERT INTO `criteria_comparisons` (`id`, `first_criteria_id`, `value`, `second_criteria_id`, `created_at`, `updated_at`) VALUES
(8, 9, 1.00, 9, '2024-08-31 04:54:18', '2024-08-31 04:54:18'),
(9, 10, 1.00, 10, '2024-08-31 04:54:26', '2024-08-31 04:54:26'),
(10, 11, 1.00, 11, '2024-08-31 04:54:35', '2024-08-31 04:54:35'),
(11, 12, 1.00, 12, '2024-08-31 04:54:49', '2024-08-31 04:54:49'),
(12, 9, 1.00, 10, '2024-08-31 05:03:07', '2024-09-01 06:55:11'),
(13, 10, 1.00, 9, '2024-08-31 05:03:07', '2024-09-01 06:55:11'),
(14, 9, 3.00, 11, '2024-08-31 05:03:15', '2024-08-31 05:03:15'),
(15, 11, 0.33, 9, '2024-08-31 05:03:15', '2024-08-31 05:03:15'),
(16, 9, 3.00, 12, '2024-08-31 05:03:22', '2024-08-31 05:03:22'),
(17, 12, 0.33, 9, '2024-08-31 05:03:22', '2024-08-31 05:03:22'),
(18, 11, 9.00, 10, '2024-08-31 05:03:37', '2024-08-31 05:03:37'),
(19, 10, 0.11, 11, '2024-08-31 05:03:37', '2024-08-31 05:03:37'),
(20, 10, 4.00, 12, '2024-08-31 05:03:54', '2024-08-31 05:03:54'),
(21, 12, 0.25, 10, '2024-08-31 05:03:54', '2024-08-31 05:03:54'),
(22, 11, 2.00, 12, '2024-08-31 05:04:12', '2024-08-31 05:04:12'),
(23, 12, 0.50, 11, '2024-08-31 05:04:12', '2024-08-31 05:04:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `criteria_normalizations`
--

CREATE TABLE `criteria_normalizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `comparison_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `criteria_normalizations`
--

INSERT INTO `criteria_normalizations` (`id`, `comparison_id`, `value`, `created_at`, `updated_at`) VALUES
(3, 8, 0.3759, '2024-08-31 04:58:19', '2024-09-01 06:56:33'),
(4, 9, 0.0889, '2024-08-31 04:58:19', '2024-09-01 06:56:33'),
(5, 10, 0.2169, '2024-08-31 04:58:19', '2024-08-31 05:04:14'),
(6, 11, 0.1000, '2024-08-31 04:58:19', '2024-08-31 05:04:14'),
(7, 13, 0.3759, '2024-08-31 05:04:14', '2024-09-01 06:56:33'),
(8, 15, 0.1241, '2024-08-31 05:04:14', '2024-09-01 06:56:33'),
(9, 17, 0.1241, '2024-08-31 05:04:14', '2024-09-01 06:56:33'),
(10, 12, 0.0889, '2024-08-31 05:04:14', '2024-09-01 06:56:33'),
(11, 18, 0.8000, '2024-08-31 05:04:14', '2024-09-01 06:56:33'),
(12, 21, 0.0222, '2024-08-31 05:04:14', '2024-09-01 06:56:33'),
(13, 14, 0.6508, '2024-08-31 05:04:14', '2024-08-31 05:04:14'),
(14, 19, 0.0239, '2024-08-31 05:04:14', '2024-08-31 05:04:14'),
(15, 23, 0.1085, '2024-08-31 05:04:14', '2024-08-31 05:04:14'),
(16, 16, 0.3000, '2024-08-31 05:04:14', '2024-08-31 05:04:14'),
(17, 20, 0.4000, '2024-08-31 05:04:14', '2024-08-31 05:04:14'),
(18, 22, 0.2000, '2024-08-31 05:04:14', '2024-08-31 05:04:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `criteria_priorities`
--

CREATE TABLE `criteria_priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `criteria_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `criteria_priorities`
--

INSERT INTO `criteria_priorities` (`id`, `criteria_id`, `value`, `created_at`, `updated_at`) VALUES
(3, 9, 0.3539, '2024-08-31 04:58:19', '2024-09-01 06:56:33'),
(4, 10, 0.2222, '2024-08-31 04:58:19', '2024-09-01 06:56:33'),
(5, 11, 0.3352, '2024-08-31 04:58:19', '2024-09-01 06:56:33'),
(6, 12, 0.0887, '2024-08-31 04:58:19', '2024-09-01 06:56:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `index_random`
--

CREATE TABLE `index_random` (
  `id` int(10) UNSIGNED NOT NULL,
  `n` tinyint(3) UNSIGNED NOT NULL,
  `IR` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `index_random`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
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
-- Struktur dari tabel `rating_scales`
--

CREATE TABLE `rating_scales` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `rating_scales`
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
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `roles`
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
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Caesar Ali L.', 'caesarali', 'caesaralilamondo@gmail.com', NULL, '$2y$10$i9sSv34yeZwiAyIBedLz.edawzAN7FVlfLA9w7jQvQIF9IDKk9s9q', NULL, '2024-08-31 03:32:56', '2024-08-31 03:32:56', NULL),
(2, 'Ganda', 'Ganda', 'stmikakba@sipilma', NULL, '$2y$10$YCRUvBUTf.jLbySkBUU02.34CIEnBlSfN9EaPhgMHgnEwS8ZypuZy', NULL, '2024-08-31 03:32:56', '2024-08-31 03:32:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatives`
--
ALTER TABLE `alternatives`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alternatives_code_unique` (`code`);

--
-- Indeks untuk tabel `alternative_comparisons`
--
ALTER TABLE `alternative_comparisons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternative_comparisons_criteria_id_foreign` (`criteria_id`),
  ADD KEY `alternative_comparisons_x_alternative_id_foreign` (`x_alternative_id`),
  ADD KEY `alternative_comparisons_y_alternative_id_foreign` (`y_alternative_id`);

--
-- Indeks untuk tabel `alternative_details`
--
ALTER TABLE `alternative_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternative_details_alternative_id_foreign` (`alternative_id`),
  ADD KEY `alternative_details_criteria_id_foreign` (`criteria_id`);

--
-- Indeks untuk tabel `alternative_normalizations`
--
ALTER TABLE `alternative_normalizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternative_normalizations_comparison_id_foreign` (`comparison_id`);

--
-- Indeks untuk tabel `alternative_priorities`
--
ALTER TABLE `alternative_priorities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternative_priorities_criteria_id_foreign` (`criteria_id`),
  ADD KEY `alternative_priorities_alternative_id_foreign` (`alternative_id`);

--
-- Indeks untuk tabel `criterias`
--
ALTER TABLE `criterias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `criterias_code_unique` (`code`);

--
-- Indeks untuk tabel `criteria_comparisons`
--
ALTER TABLE `criteria_comparisons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criteria_comparisons_first_criteria_id_foreign` (`first_criteria_id`),
  ADD KEY `criteria_comparisons_second_criteria_id_foreign` (`second_criteria_id`);

--
-- Indeks untuk tabel `criteria_normalizations`
--
ALTER TABLE `criteria_normalizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criteria_normalizations_comparison_id_foreign` (`comparison_id`);

--
-- Indeks untuk tabel `criteria_priorities`
--
ALTER TABLE `criteria_priorities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criteria_priorities_criteria_id_foreign` (`criteria_id`);

--
-- Indeks untuk tabel `index_random`
--
ALTER TABLE `index_random`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rating_scales`
--
ALTER TABLE `rating_scales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatives`
--
ALTER TABLE `alternatives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `alternative_comparisons`
--
ALTER TABLE `alternative_comparisons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `alternative_details`
--
ALTER TABLE `alternative_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `alternative_normalizations`
--
ALTER TABLE `alternative_normalizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `alternative_priorities`
--
ALTER TABLE `alternative_priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `criteria_comparisons`
--
ALTER TABLE `criteria_comparisons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `criteria_normalizations`
--
ALTER TABLE `criteria_normalizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `criteria_priorities`
--
ALTER TABLE `criteria_priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `index_random`
--
ALTER TABLE `index_random`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `rating_scales`
--
ALTER TABLE `rating_scales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alternative_comparisons`
--
ALTER TABLE `alternative_comparisons`
  ADD CONSTRAINT `alternative_comparisons_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alternative_comparisons_x_alternative_id_foreign` FOREIGN KEY (`x_alternative_id`) REFERENCES `alternatives` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alternative_comparisons_y_alternative_id_foreign` FOREIGN KEY (`y_alternative_id`) REFERENCES `alternatives` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `alternative_details`
--
ALTER TABLE `alternative_details`
  ADD CONSTRAINT `alternative_details_alternative_id_foreign` FOREIGN KEY (`alternative_id`) REFERENCES `alternatives` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alternative_details_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `alternative_normalizations`
--
ALTER TABLE `alternative_normalizations`
  ADD CONSTRAINT `alternative_normalizations_comparison_id_foreign` FOREIGN KEY (`comparison_id`) REFERENCES `alternative_comparisons` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `alternative_priorities`
--
ALTER TABLE `alternative_priorities`
  ADD CONSTRAINT `alternative_priorities_alternative_id_foreign` FOREIGN KEY (`alternative_id`) REFERENCES `alternatives` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alternative_priorities_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `criteria_comparisons`
--
ALTER TABLE `criteria_comparisons`
  ADD CONSTRAINT `criteria_comparisons_first_criteria_id_foreign` FOREIGN KEY (`first_criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `criteria_comparisons_second_criteria_id_foreign` FOREIGN KEY (`second_criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `criteria_normalizations`
--
ALTER TABLE `criteria_normalizations`
  ADD CONSTRAINT `criteria_normalizations_comparison_id_foreign` FOREIGN KEY (`comparison_id`) REFERENCES `criteria_comparisons` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `criteria_priorities`
--
ALTER TABLE `criteria_priorities`
  ADD CONSTRAINT `criteria_priorities_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
