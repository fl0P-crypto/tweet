-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2020 at 08:33 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tweet`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `following_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 3, NULL, NULL),
(1, 4, NULL, NULL),
(1, 5, NULL, NULL),
(1, 6, NULL, NULL),
(1, 9, NULL, NULL),
(2, 1, NULL, NULL),
(3, 1, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_13_174807_create_tweets_table', 1),
(5, '2020_06_14_182842_create_follows_table', 1),
(6, '2020_06_17_173659_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('14df9d14-25c8-4c3d-93c8-318f6fb9972d', 'App\\Notifications\\newFollower', 'App\\User', 2, '{\"name\":\"nika\",\"id\":1,\"email\":\"test@gamil.com\"}', NULL, '2020-06-18 13:30:26', '2020-06-18 13:30:26'),
('1893e25b-58eb-4d61-937c-5e338d9e000b', 'App\\Notifications\\newFollower', 'App\\User', 1, '{\"name\":\"nika2\",\"id\":2,\"email\":\"khatuna1970@gmail.com\"}', NULL, '2020-06-18 13:23:59', '2020-06-18 13:23:59'),
('354231f5-f778-4558-9ae3-b6ce942105c0', 'App\\Notifications\\tweeted', 'App\\User', 3, '{\"name\":\"nika\",\"email\":\"test@gamil.com\",\"id\":1,\"message\":\"has new tweet\",\"tweet\":\"rtyrtyrtyrtyrtytr\"}', NULL, '2020-06-18 13:30:17', '2020-06-18 13:30:17'),
('60087425-8671-457f-b935-4f847bdce198', 'App\\Notifications\\newFollower', 'App\\User', 1, '{\"name\":\"nika2\",\"id\":2,\"email\":\"khatuna1970@gmail.com\"}', NULL, '2020-06-18 13:24:04', '2020-06-18 13:24:04'),
('640811c7-2db2-4131-af62-9a9f21151387', 'App\\Notifications\\tweeted', 'App\\User', 2, '{\"name\":\"nika\",\"email\":\"test@gamil.com\",\"id\":1,\"message\":\"has new tweet\",\"tweet\":\"rtyrtyrtyrtyrtytr\"}', NULL, '2020-06-18 13:30:16', '2020-06-18 13:30:16'),
('7d03a095-9f5a-44d2-9387-7da523e9a400', 'App\\Notifications\\tweeted', 'App\\User', 3, '{\"name\":\"nika\",\"email\":\"test@gamil.com\",\"id\":1,\"message\":\"has new tweet\",\"tweet\":null}', NULL, '2020-06-18 13:12:07', '2020-06-18 13:12:07'),
('82deb438-ab3e-4107-b14b-29a2463429fd', 'App\\Notifications\\newFollower', 'App\\User', 2, '{\"name\":\"nika\",\"id\":1,\"email\":\"test@gamil.com\"}', NULL, '2020-06-18 13:30:28', '2020-06-18 13:30:28'),
('93cb9d00-0710-4697-a8c6-f7e6c80b515b', 'App\\Notifications\\tweeted', 'App\\User', 2, '{\"name\":\"nika\",\"email\":\"test@gamil.com\",\"id\":1,\"message\":\"has new tweet\",\"tweet\":\"uyiuyi\"}', NULL, '2020-06-18 13:55:14', '2020-06-18 13:55:14'),
('95d0c9c9-f756-4ed2-8247-ce20d08a83f1', 'App\\Notifications\\tweeted', 'App\\User', 2, '{\"name\":\"nika\",\"email\":\"test@gamil.com\",\"id\":1,\"message\":\"has new tweet\",\"tweet\":\"tyutyutyutyutyutyu\"}', NULL, '2020-06-18 13:12:46', '2020-06-18 13:12:46'),
('b8377a4b-743e-4768-94ec-3b89a29fbec3', 'App\\Notifications\\tweeted', 'App\\User', 2, '{\"name\":\"nika\",\"email\":\"test@gamil.com\",\"id\":1,\"message\":\"has new tweet\",\"tweet\":\"utyutyuty\"}', NULL, '2020-06-18 13:12:40', '2020-06-18 13:12:40'),
('c27cfa61-62f6-41de-8e4e-36df2a3ef698', 'App\\Notifications\\tweeted', 'App\\User', 3, '{\"name\":\"nika\",\"email\":\"test@gamil.com\",\"id\":1,\"message\":\"has new tweet\",\"tweet\":\"uyiuyi\"}', NULL, '2020-06-18 13:55:14', '2020-06-18 13:55:14'),
('c97343e1-724c-4185-af6c-b5c0a39cdfbe', 'App\\Notifications\\tweeted', 'App\\User', 3, '{\"name\":\"nika\",\"email\":\"test@gamil.com\",\"id\":1,\"message\":\"has new tweet\",\"tweet\":\"tyutyutyutyutyutyu\"}', NULL, '2020-06-18 13:12:46', '2020-06-18 13:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('khatuna1970@gmail.com', '$2y$10$dIJt47CeErjTp1rAvhZGE.SPuAl8oShv7HGICVFaOyWb9YgDekBia', '2020-06-18 14:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'yututy', '2020-06-18 08:14:50', '2020-06-18 08:14:50'),
(2, 3, 'Molestias sequi quia sit placeat est temporibus.', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(3, 4, 'Iusto sit saepe consequuntur et.', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(4, 5, 'Aspernatur ea veniam in dignissimos.', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(5, 6, 'Inventore dolor praesentium nobis dolor aliquid dolorum.', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(6, 7, 'Ex debitis nihil voluptatem consequatur dignissimos maxime tempore.', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(7, 8, 'Debitis qui officiis expedita qui ut fugit molestias.', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(8, 9, 'Est omnis enim hic minima nulla et.', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(9, 10, 'Asperiores eveniet enim blanditiis.', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(10, 11, 'Dignissimos accusamus voluptatem et dignissimos.', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(11, 12, 'Et repellendus maxime quo facilis odit ipsam facere.', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(12, 2, 'tertertert', '2020-06-18 08:15:47', '2020-06-18 08:15:47'),
(13, 2, 'ertretr', '2020-06-18 08:15:50', '2020-06-18 08:15:50'),
(14, 1, 'yiuyiuyiuy', '2020-06-18 08:24:53', '2020-06-18 08:24:53'),
(15, 1, 'iuyiuyiuy', '2020-06-18 08:35:18', '2020-06-18 08:35:18'),
(16, 2, 'ytuytuytuty', '2020-06-18 08:38:49', '2020-06-18 08:38:49'),
(17, 1, ';kl;kl;kl;kl;', '2020-06-18 08:50:05', '2020-06-18 08:50:05'),
(18, 2, 'qweqweqweqw', '2020-06-18 08:51:13', '2020-06-18 08:51:13'),
(19, 1, 'ukuiuikui', '2020-06-18 08:53:19', '2020-06-18 08:53:19'),
(20, 2, 'ewrwr', '2020-06-18 09:19:12', '2020-06-18 09:19:12'),
(21, 2, 'rwerwew', '2020-06-18 09:19:54', '2020-06-18 09:19:54'),
(22, 2, 'rwerwew', '2020-06-18 09:21:22', '2020-06-18 09:21:22'),
(23, 2, 'werwerw', '2020-06-18 09:21:29', '2020-06-18 09:21:29'),
(24, 1, 'tyutyuty', '2020-06-18 09:21:54', '2020-06-18 09:21:54'),
(25, 1, 'tyutyuty', '2020-06-18 09:22:12', '2020-06-18 09:22:12'),
(26, 1, 'tyutyuty', '2020-06-18 09:22:43', '2020-06-18 09:22:43'),
(27, 1, 'tyutyuty', '2020-06-18 09:23:04', '2020-06-18 09:23:04'),
(28, 1, 'tyutyuty', '2020-06-18 09:25:06', '2020-06-18 09:25:06'),
(29, 1, 'tyutyuty', '2020-06-18 09:25:33', '2020-06-18 09:25:33'),
(30, 1, 'tyutyuty', '2020-06-18 09:26:51', '2020-06-18 09:26:51'),
(31, 1, 'oupip', '2020-06-18 11:40:38', '2020-06-18 11:40:38'),
(32, 1, 'oupip', '2020-06-18 11:41:52', '2020-06-18 11:41:52'),
(33, 1, 'oupip', '2020-06-18 12:03:40', '2020-06-18 12:03:40'),
(34, 1, 'oupip', '2020-06-18 12:04:35', '2020-06-18 12:04:35'),
(35, 1, 'oupip', '2020-06-18 12:19:02', '2020-06-18 12:19:02'),
(36, 1, 'oupip', '2020-06-18 12:19:17', '2020-06-18 12:19:17'),
(37, 1, 'oupip', '2020-06-18 12:22:02', '2020-06-18 12:22:02'),
(38, 1, 'oupip', '2020-06-18 12:22:14', '2020-06-18 12:22:14'),
(39, 1, 'oupip', '2020-06-18 12:22:44', '2020-06-18 12:22:44'),
(40, 1, 'oupip', '2020-06-18 12:23:14', '2020-06-18 12:23:14'),
(41, 1, 'oupip', '2020-06-18 12:23:36', '2020-06-18 12:23:36'),
(42, 1, 'erterterter', '2020-06-18 12:26:39', '2020-06-18 12:26:39'),
(43, 1, 'erterterter', '2020-06-18 12:27:44', '2020-06-18 12:27:44'),
(44, 1, 'erterterter', '2020-06-18 12:28:54', '2020-06-18 12:28:54'),
(45, 1, 'erterterter', '2020-06-18 12:29:17', '2020-06-18 12:29:17'),
(46, 1, 'erterterter', '2020-06-18 12:29:32', '2020-06-18 12:29:32'),
(47, 1, 'erterterter', '2020-06-18 12:29:45', '2020-06-18 12:29:45'),
(48, 1, 'erterterter', '2020-06-18 12:30:07', '2020-06-18 12:30:07'),
(49, 1, 'erterterter', '2020-06-18 12:31:35', '2020-06-18 12:31:35'),
(50, 1, 'erterterter', '2020-06-18 12:32:16', '2020-06-18 12:32:16'),
(51, 1, 'erterterter', '2020-06-18 12:33:27', '2020-06-18 12:33:27'),
(52, 1, 'erterterter', '2020-06-18 12:34:10', '2020-06-18 12:34:10'),
(53, 1, 'erterterter', '2020-06-18 12:34:36', '2020-06-18 12:34:36'),
(54, 1, 'erterterter', '2020-06-18 12:36:33', '2020-06-18 12:36:33'),
(55, 1, 'erterterter', '2020-06-18 12:36:46', '2020-06-18 12:36:46'),
(56, 1, 'erterterter', '2020-06-18 12:37:01', '2020-06-18 12:37:01'),
(57, 1, 'erterterter', '2020-06-18 12:37:15', '2020-06-18 12:37:15'),
(58, 1, 'erterterter', '2020-06-18 12:39:57', '2020-06-18 12:39:57'),
(59, 1, 'erterterter', '2020-06-18 12:40:30', '2020-06-18 12:40:30'),
(60, 1, 'erterterter', '2020-06-18 12:42:22', '2020-06-18 12:42:22'),
(61, 1, 'erterterter', '2020-06-18 12:43:03', '2020-06-18 12:43:03'),
(62, 1, 'erterterter', '2020-06-18 12:43:18', '2020-06-18 12:43:18'),
(63, 1, 'erterterter', '2020-06-18 12:44:55', '2020-06-18 12:44:55'),
(64, 1, 'erterterter', '2020-06-18 12:45:34', '2020-06-18 12:45:34'),
(65, 1, 'erterterter', '2020-06-18 12:45:46', '2020-06-18 12:45:46'),
(66, 1, 'terterter', '2020-06-18 12:45:51', '2020-06-18 12:45:51'),
(67, 2, 'erwrwerwe', '2020-06-18 12:47:13', '2020-06-18 12:47:13'),
(68, 1, 'gghjghjghjgh', '2020-06-18 12:54:07', '2020-06-18 12:54:07'),
(69, 2, 'wererewrwerew', '2020-06-18 12:54:45', '2020-06-18 12:54:45'),
(70, 1, 'uluio', '2020-06-18 13:09:01', '2020-06-18 13:09:01'),
(71, 1, 'uluio', '2020-06-18 13:09:31', '2020-06-18 13:09:31'),
(72, 1, 'qwerty', '2020-06-18 13:09:53', '2020-06-18 13:09:53'),
(73, 1, 'werewweew', '2020-06-18 13:12:07', '2020-06-18 13:12:07'),
(74, 1, 'utyutyuty', '2020-06-18 13:12:40', '2020-06-18 13:12:40'),
(75, 1, 'tyutyutyutyutyutyu', '2020-06-18 13:12:46', '2020-06-18 13:12:46'),
(76, 1, 'rtyrtyrtyrtyrtytr', '2020-06-18 13:30:16', '2020-06-18 13:30:16'),
(77, 1, 'uyiuyi', '2020-06-18 13:55:14', '2020-06-18 13:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nika', 'test@gamil.com', NULL, '$2y$10$PuT90CLnf73sErh47hNC7u/6zmEwDxp52B4e0qo7fFFhTX7N9hPui', NULL, '2020-06-18 08:14:44', '2020-06-18 08:14:44'),
(2, 'nika2', 'khatuna1970@gmail.com', NULL, '$2y$10$M2DwHRx8yRRxU8rUEWgG2eAzWVRYGBlkj2p7.I0kw663rFCcspq3i', NULL, '2020-06-18 08:15:11', '2020-06-18 08:15:11'),
(3, 'Kacie Wilkinson', 'vrau@example.org', '2020-06-18 08:15:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jtZIqQCmWl', '2020-06-18 08:15:25', '2020-06-18 08:15:25'),
(4, 'Alexandrea Connelly', 'cordia.roob@example.net', '2020-06-18 08:15:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wTkC8j11X6', '2020-06-18 08:15:25', '2020-06-18 08:15:25'),
(5, 'Sienna Kuvalis III', 'dhermann@example.org', '2020-06-18 08:15:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IOuC5atb5y', '2020-06-18 08:15:25', '2020-06-18 08:15:25'),
(6, 'Estell Haley', 'vella28@example.com', '2020-06-18 08:15:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jX4EfBeqXI', '2020-06-18 08:15:25', '2020-06-18 08:15:25'),
(7, 'Prof. Jo Boyle', 'hudson.chelsie@example.net', '2020-06-18 08:15:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bi023Wv1qF', '2020-06-18 08:15:25', '2020-06-18 08:15:25'),
(8, 'Lori Hoeger MD', 'corrine.bayer@example.org', '2020-06-18 08:15:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PdxV47nvqP', '2020-06-18 08:15:25', '2020-06-18 08:15:25'),
(9, 'Minerva Jones', 'damaris.wolf@example.com', '2020-06-18 08:15:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aefiVZX2d8', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(10, 'Evans Wilderman V', 'toby.hermiston@example.org', '2020-06-18 08:15:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tMLguVTyH5', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(11, 'Mr. Isac Schiller DDS', 'velva.pouros@example.net', '2020-06-18 08:15:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qMa8QNwxop', '2020-06-18 08:15:26', '2020-06-18 08:15:26'),
(12, 'Prof. Libby Jast', 'harber.sister@example.com', '2020-06-18 08:15:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5HPrTkh14V', '2020-06-18 08:15:26', '2020-06-18 08:15:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tweets_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `tweets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
