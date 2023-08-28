-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2023 at 10:16 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testblackowl`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(41, '2014_10_12_000000_create_users_table', 1),
(42, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(43, '2014_10_12_100000_create_password_resets_table', 1),
(44, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(45, '2019_08_19_000000_create_failed_jobs_table', 1),
(46, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(47, '2020_05_21_100000_create_teams_table', 1),
(48, '2020_05_21_200000_create_team_user_table', 1),
(49, '2020_05_21_300000_create_team_invitations_table', 1);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3vJn4bpILEu8nHgHnsDnZ0d2DjFoMRS4WJT9kWEw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWNpT0FiNUJNODhxbEVEQnpOQWR2dFpjZFlPbWVITzZXVG1oYXhQeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1693217677),
('BIwUUsZ1tJLxE0WuOAE0oSWSNHTYWja9wo0ysxHm', 101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYXo1VkFlRzFvdHNEYjFyY3FwSEE4RWd1aUlhMXpYaFhCZjh3T2kyMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91c2VyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTAxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGhTVGlsaTh0Lmp2L01KMzQ5UzFNZnVkTTNLVWxnUnJnS2U1N2N3Lm5HTEJwMGt1bHM0cXpHIjt9', 1693217678);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `code`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Jackeline Pouros', 'tjenkins@example.net', 'YRpJwVJTqv', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '4V4bG5qdFk', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(2, 'Prof. Shawn Kuhic', 'chelsea.swift@example.com', 'yDS969AUEK', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'oHJF1WV6xN', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(3, 'Kristian Eichmann', 'royal00@example.net', 'gZ1B28yz4Z', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'sSfPBW0zhO', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(4, 'Gerald Swaniawski', 'mclaughlin.laurine@example.org', 'lEpftmxbkU', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '8Z2ac2buDP', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(5, 'Dr. Cathryn Bayer Jr.', 'burley52@example.org', '8dWcbvMPMI', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'W0nRNvrDwE', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(6, 'Nick Lebsack', 'swalker@example.net', 'vxLaj8QmAb', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'TjgAU0PLjz', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(7, 'Sabrina Feil', 'angelo.schultz@example.com', 'F6SlfVGWL9', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'NVvFtAlBFb', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(8, 'Chase Parker', 'meredith.shanahan@example.com', 'UYjCB2POpN', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'wuETRxQqK6', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(9, 'Katarina Ziemann', 'igerhold@example.com', 'Uezi4rclM0', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Ooby6UCDSZ', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(10, 'Emiliano Ebert MD', 'javier47@example.net', 'J1jFT9Auuo', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'UIWoY77AVM', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(11, 'Vivienne Bayer', 'roselyn.beer@example.com', 'DjDUewBUBj', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'McQSrQlI2x', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(12, 'Angie Kautzer', 'borer.allene@example.org', 'FjLZAeA6Sf', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'AQeZPaKE6Q', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(13, 'Trenton Harris', 'tremayne.morar@example.org', 'c8Ax1GKVz7', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '3TGwpUFLLX', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(14, 'Jennings Reichel I', 'ocarter@example.com', 'HNo70GEcw8', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ZjwAmQfHhz', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(15, 'Marquis Goyette', 'okeefe.johnathon@example.com', 'hCAxiCLPWi', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'I6OoHnkwMz', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(16, 'Ariel Herman', 'jess.cummerata@example.com', '0c5zA6DMJd', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'QxrG1noQJK', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(17, 'Dashawn Wolf', 'titus.ward@example.com', 'fWwEeBoOwZ', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'SDuotkBEJh', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(18, 'Mr. Moses Hagenes III', 'maya71@example.org', 'wbNxwboWiA', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'WDNok9g3an', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(19, 'Alek Haag Jr.', 'marvin.donna@example.net', '2i4qNOc2gm', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'GfCxiKNJtf', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(20, 'Dr. Thad Hessel II', 'brown.ratke@example.org', 'R4VUTjMEM7', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'eRzE8HBXUs', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(21, 'King Schmeler', 'kale.lesch@example.com', 'oM3VQ2oDOa', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'SIzoIeH6dU', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(22, 'Prof. Margaretta Gibson DDS', 'karina.rolfson@example.net', 'WOSWM4QLgf', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'XyyA9BoFMa', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(23, 'Dr. Zakary Keeling', 'ckessler@example.org', 'lXqZxnSoCO', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'k0ABwUrJu9', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(24, 'Miss Larissa Rice III', 'dorthy.hodkiewicz@example.net', 'rSZIqbLPwb', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ZJp6DrivaN', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(25, 'Dr. Bulah Shanahan', 'lhaag@example.org', 'tfm2zlKqD7', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ZOIQSUFCIq', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(26, 'Marielle Howell', 'nhermann@example.org', 'SERNQk8W4Y', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1eXkNb4aui', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(27, 'Isabell Greenholt', 'odie.hackett@example.com', 'EewdGHhKh5', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vrQsclTb0r', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(28, 'Yoshiko Reilly Jr.', 'kkemmer@example.net', 'EB5BjsRKWu', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '4cPdDYU9OC', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(29, 'Harold Smitham', 'simonis.carroll@example.net', 'jKK9kLCPXA', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'S644QpwZUF', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(30, 'Prof. Lonzo Pagac', 'kaya.lueilwitz@example.org', 'Rm0utvu2mn', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'wg39B5v5i9', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(31, 'Sabina Mante DDS', 'kim26@example.net', 'tqHHiANj9A', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Zd1pbw49tP', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(32, 'Miss Kaela Rempel', 'emard.delpha@example.net', 'lWhrPSFupN', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '41gP0RrieD', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(33, 'Jayme Lockman', 'hill.gabriella@example.net', 'Zlw5gjiNPG', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vX2gv4r2nF', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(34, 'Mrs. Stephany Keeling', 'fay.queen@example.org', 'NNXsrtmIvp', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ptunUINseu', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(35, 'Evert Shanahan', 'romaguera.makenzie@example.org', 'pWBXt8UDs9', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'uyBeowiOSr', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(36, 'Mr. Garland Tromp', 'jacey.mcdermott@example.org', 'NiqFskEQZJ', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'lGmqtDSQR9', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(37, 'Noble Paucek', 'angela70@example.net', 'ZhlWkKVywY', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'RGMAwGnHPC', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(38, 'Mr. Owen Reilly Jr.', 'marquardt.alvera@example.com', 'gI4vatcmn4', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'TVJHKHgfAG', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(39, 'Sarah Runolfsson DVM', 'hirthe.josie@example.net', '0TJoLwlCm5', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'EHyLstMR47', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(40, 'Iliana Flatley', 'khegmann@example.com', 'tEzNLT2e2u', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'AyGIJXF8Zz', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(41, 'Edmond Kiehn', 'kuhic.jesus@example.net', 'CxIGraXQNY', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'iIvhc507MO', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(42, 'Hettie Mayert', 'catalina28@example.net', '8KOjBpdLu2', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'r0iinPimUO', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(43, 'Vincenzo Wintheiser V', 'marques.kovacek@example.org', 'NIXMh3MyIC', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'R5bVqXb0gF', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(44, 'Ms. Clementine Gorczany', 'hayden68@example.com', 'nUXtdP01R7', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'rhSuW6MNtG', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(45, 'Viva Lind Jr.', 'ccasper@example.org', '85m7KBfDLW', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'NDs2g0493x', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(46, 'Treva Toy', 'dbernier@example.net', 'wpmuNufzdn', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'tZaxmTWthD', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(47, 'Carlos Cole', 'kiarra.johnson@example.org', 'i0oW8lSkAk', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'YvhF4n11vi', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(48, 'Katlyn Hayes', 'bogan.madyson@example.com', 'IEJncRPbSz', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'cSZs0Twnh8', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(49, 'Ms. Estelle Reichert', 'schiller.nettie@example.org', 'EaER3SdAl1', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Fkq8NQK5Yt', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(50, 'Lonzo Reichel', 'schowalter.helena@example.com', 'XxvfWAIFy9', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ViBSjyE2gB', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(51, 'Dr. Israel Will IV', 'gmueller@example.com', 'J8IGgTQWgx', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'igyChna6eo', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(52, 'Dr. Laverne Predovic', 'koelpin.doug@example.net', 'VDaJghRp33', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'qMT6zhwbBu', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(53, 'Doug Smitham', 'corene53@example.org', 'lmkqYsQ531', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '7Y1eoMyECh', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(54, 'Lorenz Wyman', 'mpaucek@example.net', 'uXwWQTHHkE', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'XQthj1fCQ7', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(55, 'Ilene Littel', 'eharris@example.net', 'rJDbZzS9rN', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'JPXraroT1Z', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(56, 'Prof. Pierre Pollich', 'malinda.wintheiser@example.com', '7O59H9hfPz', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Xnv5eOEoye', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(57, 'Prof. Isom Mills', 'wmills@example.net', 'RY32vGGuMy', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '22OOtxjy2I', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(58, 'Ms. Zetta Jacobson III', 'lilian81@example.com', 'PHF3KmSwhO', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'F75ZTfizsI', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(59, 'Marty Bergstrom', 'hollis.fay@example.org', 'uheRxRPgWT', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '080WJ9Gx1Q', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(60, 'Emerald Sanford', 'feil.jamarcus@example.com', 'MzhGQ757oB', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'eMqGkAP1Tk', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(61, 'Dovie Gaylord', 'annabell73@example.org', 'RLxbZw95K0', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'cwt544cGtV', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(62, 'Alberta Dooley', 'mariela70@example.net', 'tB4Wvzptbi', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ZUGjlntM3L', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(63, 'Mr. Buford Effertz', 'wkulas@example.com', '7ngMVn4Elf', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'STmZg6ifO8', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(64, 'Breanne Price', 'charlotte.greenholt@example.net', 'mCarl6Vfal', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '2XQqQM5oKS', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(65, 'Alfonso Howell', 'esperanza.jerde@example.org', 'iVvK0fifSm', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '8Tpm9WcZfP', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(66, 'Jammie Effertz', 'jast.sheldon@example.org', 'Xbdw3P1U9C', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '98ivFhkJs0', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(67, 'Brianne Simonis', 'alize76@example.org', 'UM1kx1Qcd4', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '9v9A4gnqEI', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(68, 'Dr. Brycen Quigley', 'derek.flatley@example.org', 'COHbxtQPXY', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '5Wgam8d8T3', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(69, 'Tressa Kub II', 'furman.littel@example.org', 'qeW5S17lUK', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ceyqYsMwNQ', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(70, 'Mrs. Maurine King MD', 'amparo94@example.com', 'hwh7FvWqWr', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '8DVU7NdH98', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(71, 'Desmond Lockman', 'polly.king@example.com', 'FuxYhoFRgb', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'qIV1DoQTFz', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(72, 'Athena Baumbach', 'mohr.mabelle@example.net', 'sgENg44VDm', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '40K5f9mZdu', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(73, 'Mrs. Macy Kemmer I', 'michele.vonrueden@example.org', 'yCGOzFnTgp', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '4qBN43ZjeH', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(74, 'Mrs. Laney Langosh', 'clair.bogisich@example.com', 'sBScbXldTw', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'KK0B8hDsRJ', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(75, 'Maye Rolfson', 'kwilderman@example.net', 'toRvoLbhph', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'cOESKHt9gE', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(76, 'Lura Goyette', 'emma.fahey@example.com', 'FW4xiDEs5L', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '3bpiT1sOpR', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(77, 'Bessie Marvin', 'aida84@example.com', 'H7AGHi4rwq', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'f88Vs6t8qa', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(78, 'Ezra Moore', 'amari.spinka@example.net', 'JUikuFCcUf', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'c44FQvirX8', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(79, 'Tierra Kilback', 'janis48@example.com', '12SVdlLTeu', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'aFt8yHKbDK', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(80, 'Mrs. Paula Little', 'yrunolfsson@example.org', 'ZqVqSYy1kC', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '2LeMdwgKeJ', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(81, 'Abbigail Simonis', 'labadie.henry@example.com', '06Vi5lXrE7', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'RbcaQRUYuv', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(82, 'Shayna Keeling', 'emmerich.alf@example.net', 'wUEXdg6Y9j', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'blHec5JvkS', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(83, 'Dr. Dahlia Pollich V', 'nleuschke@example.net', 'uzfo9r0Api', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'kIt863R2zs', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(84, 'Bella Harris', 'klocko.pansy@example.com', 'j0kjH8UFyP', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ru70H7TuP6', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(85, 'Justen Crist', 'amari.hilpert@example.net', 'NeVVohJzfi', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'cPzxSBmKeP', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(86, 'Georgianna McDermott', 'leonie.batz@example.net', 'jRYqhByEJn', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'QUK5CfsZQj', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(87, 'Bernard McDermott', 'keyon92@example.org', 'ENhEtDHaMc', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Z1SZ52Bsfq', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(88, 'Iva Satterfield', 'gulgowski.zoe@example.org', 'DYzRG9BFlI', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ArRKR9YcBe', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(89, 'Dr. Hal Kohler', 'john.dietrich@example.com', '1CrJch8x9T', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xv8ObA6Mg8', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(90, 'Pasquale Larson', 'cgoyette@example.com', 'jnZQGGBQFO', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '410u8MCGY4', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(91, 'Carolyn Williamson Sr.', 'powlowski.candelario@example.net', 'k0KtQ31dtm', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'cLXXltyiym', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(92, 'Jessyca Lehner', 'ila.jerde@example.net', 'UJDNDsWNK7', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'NdyvlgoNMt', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(93, 'Hanna Brekke', 'hermiston.neha@example.com', 'zf7kffzc0f', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'kFEXAzzkwz', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(94, 'Kallie Bernhard', 'hector69@example.org', 'CEaGQuigRz', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'a3biMlxJde', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(95, 'Belle Paucek Sr.', 'jameson.kerluke@example.com', 'GIaju617Fo', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'nMSpjcNM8d', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(96, 'Dr. Milton Schowalter II', 'mckenna12@example.com', 'sJpT577v3N', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'CAHxrP75BW', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(97, 'Titus Rodriguez', 'kaitlin.kiehn@example.net', 'JYKQlXsmG6', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'zjdz2eIRRI', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(98, 'Lewis Armstrong Sr.', 'zgleason@example.net', 'sps5YKnqMT', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'JlMnVO1XO3', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(99, 'Ariel Lueilwitz', 'catalina82@example.org', 'bgLqf5Kyoa', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'THp0YDI8sV', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(100, 'Prof. Riley Hill IV', 'noelia17@example.com', 'h7JPjnqaNi', '2023-08-28 03:13:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xvxgl3BSA7', NULL, NULL, '2023-08-28 03:13:28', '2023-08-28 03:13:28'),
(101, 'aji', 'aji@gmail.com', '75k8rEA05K', NULL, '$2y$10$hSTili8t.jv/MJ349S1MfudM3KUlgRrgKe57cw.nGLBp0kuls4qzG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-28 03:14:06', '2023-08-28 03:14:06');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_code_unique` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
