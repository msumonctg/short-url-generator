-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2017 at 08:21 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shorturl`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_12_040602_create_urls_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `originalURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`id`, `originalURL`, `shortURL`, `ip`, `count`, `created_at`, `updated_at`) VALUES
(1, 'laravel.com', 'FebOMcjn8K', '127.0.0.1', 0, '2017-04-12 00:25:13', '2017-04-12 00:25:13'),
(2, 'https://laracasts.com/discuss/channels/eloquent/select-specific-columns-using-eloquent-orm', 'AADvRm0Pot', '127.0.0.1', 0, '2017-04-12 03:26:50', '2017-04-12 03:26:50'),
(3, 'https://www.google.com/search?q=laravel+fetch+out+data+form+db+using+where+clause&ie=utf-8&oe=utf-8&client=firefox-b-ab#q=laravel+find+data+form+db+using+a+string', 'oBaS0tz6M3', '127.0.0.1', 0, '2017-04-12 03:32:20', '2017-04-12 03:32:20'),
(4, 'http://stackoverflow.com/questions/28642753/redirect-to-external-url-with-return-in-laravel', 'j1mscl0MkD', '127.0.0.1', 0, '2017-04-12 03:38:41', '2017-04-12 03:38:41'),
(5, 'https://laravel.com/docs/5.1/requests', 'xA0a8JCqb7', '127.0.0.1', 3, '2017-04-12 03:39:12', '2017-04-12 04:02:05'),
(6, 'https://tuts.codingo.me/google-recaptcha-in-laravel-application', 'Ooxnf2OVDU', '127.0.0.1', 0, '2017-04-12 04:49:07', '2017-04-12 04:49:07'),
(7, 'https://code.jquery.com/', 'gntKC3PK53', '127.0.0.1', 1, '2017-04-13 00:01:54', '2017-04-13 00:01:57'),
(8, 'https://github.com/anhskohbo/no-captcha', 'ZfdSRdP6Hb', '127.0.0.1', 1, '2017-04-13 02:09:10', '2017-04-13 02:09:12'),
(9, 'https://www.google.com/search?q=jquery+match+to+passwors&ie=utf-8&oe=utf-8&client=firefox-b-ab#q=jquery+match+two+password', 'ZfYt4jnq1b', '127.0.0.1', 1, '2017-04-15 00:39:16', '2017-04-15 00:39:20'),
(10, 'http://stackoverflow.com/questions/7960208/jquery-if-checkbox-is-checked', '99pkt2BE5D', '127.0.0.1', 1, '2017-04-15 03:41:18', '2017-04-15 03:41:22'),
(11, 'https://www.google.com/?gws_rd=ssl', 'Yr3NdxLtRq', '127.0.0.1', 1, '2017-06-07 11:11:13', '2017-06-07 11:11:18'),
(12, 'https://github.com/msumonctg/property_portal', 'vRIy6khq0i', '127.0.0.1', 1, '2017-07-08 12:37:24', '2017-07-08 12:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
