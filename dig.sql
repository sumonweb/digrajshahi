-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 21, 2019 at 04:52 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dig`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `root` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_category_name_unique` (`category_name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `root`, `created_by`, `created_ip`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'জাতীয়', 'জাতীয়', NULL, 5, '::1', 1, '2018-10-16 06:40:59', '2019-07-13 09:49:14', NULL),
(2, 'বিশেষ অভিযান', 'বিশেষ অভিযান', NULL, 5, '::1', 1, '2018-10-16 06:56:12', '2019-07-13 09:49:30', NULL),
(3, 'নিরাপত্তা নির্দেশনা', 'নিরাপত্তা নির্দেশনা', NULL, 5, '::1', 1, '2018-10-17 01:20:12', '2019-07-13 09:49:43', NULL),
(4, 'অপরাধ/মামলা', 'অপরাধ/মামলা', NULL, 5, '::1', 1, '2018-10-22 01:23:22', '2019-07-13 09:49:59', NULL),
(5, 'সাফল্য সমূহ', 'সাফল্য সমূহ', NULL, 5, '::1', 1, '2018-10-24 00:06:50', '2019-07-13 09:50:11', NULL),
(6, 'আন্তর্জাতিক', 'আন্তর্জাতিক', NULL, 5, '::1', 1, '2018-10-24 06:48:15', '2019-07-13 09:50:22', NULL),
(7, 'তথ্য প্রযুক্তি', 'তথ্য প্রযুক্তি', NULL, 5, '::1', 1, '2018-10-28 01:29:02', '2019-07-13 09:50:33', NULL),
(8, 'IT', 'it', NULL, 5, '::1', 1, '2018-10-28 01:34:44', '2018-11-05 10:32:46', '2018-11-05 10:32:46'),
(9, 'Test6', 'test6', NULL, 5, '::1', 1, '2018-11-01 05:39:21', '2018-11-05 10:32:41', '2018-11-05 10:32:41'),
(10, 'খেলাধুলা', 'খেলাধুলা', NULL, 5, '127.0.0.1', 1, '2019-07-06 10:28:12', '2019-07-13 09:50:48', NULL),
(11, 'বিনোদন', 'বিনোদন', NULL, 5, '127.0.0.1', 1, '2019-07-13 09:51:06', '2019-07-13 09:51:06', NULL),
(12, 'ভিডিও', 'ভিডিও', NULL, 5, '127.0.0.1', 1, '2019-07-13 09:51:12', '2019-07-13 09:51:12', NULL),
(13, 'রেঞ্জ অফিস', 'রেঞ্জ_অফিস', NULL, 5, '::1', 1, '2019-07-18 19:53:54', '2019-07-21 05:51:20', NULL),
(14, 'কমিউনিটি পুলিসিং', 'কমিউনিটি_পুলিসিং', NULL, 5, '::1', 1, '2019-07-21 06:36:54', '2019-07-21 06:36:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_news`
--

DROP TABLE IF EXISTS `category_news`;
CREATE TABLE IF NOT EXISTS `category_news` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_news_news_id_foreign` (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_news`
--

INSERT INTO `category_news` (`id`, `news_id`, `category_id`) VALUES
(1, 37, 1),
(2, 37, 2),
(3, 38, 1),
(4, 39, 3),
(5, 40, 1),
(6, 41, 2),
(7, 42, 3),
(8, 43, 4),
(9, 44, 1),
(10, 45, 1),
(11, 44, 5),
(12, 43, 5),
(13, 49, 1),
(14, 49, 2),
(15, 50, 2),
(16, 50, 6),
(17, 51, 7),
(20, 52, 1),
(19, 52, 6),
(21, 52, 5),
(22, 53, 2),
(23, 53, 3),
(24, 54, 1),
(25, 54, 5),
(26, 55, 3),
(65, 56, 13),
(28, 57, 10),
(29, 58, 10),
(30, 59, 2),
(31, 59, 5),
(32, 60, 6),
(33, 60, 10),
(34, 61, 10),
(35, 62, 4),
(36, 63, 3),
(37, 64, 10),
(38, 65, 1),
(39, 66, 1),
(40, 67, 1),
(41, 68, 5),
(42, 69, 3),
(43, 69, 7),
(44, 70, 5),
(45, 70, 7),
(46, 71, 3),
(47, 71, 5),
(48, 72, 5),
(49, 72, 6),
(50, 73, 1),
(51, 73, 4),
(67, 79, 4),
(66, 74, 13),
(54, 75, 1),
(55, 75, 6),
(56, 76, 2),
(57, 76, 5),
(58, 77, 1),
(59, 78, 6),
(60, 75, 13),
(61, 73, 13),
(62, 68, 13),
(63, 63, 13),
(64, 62, 13),
(68, 79, 5),
(69, 80, 4),
(70, 80, 5),
(71, 81, 4),
(72, 82, 7),
(73, 83, 12),
(74, 84, 12),
(75, 85, 3),
(76, 86, 3),
(77, 87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `complaint_boxes`
--

DROP TABLE IF EXISTS `complaint_boxes`;
CREATE TABLE IF NOT EXISTS `complaint_boxes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `complainer_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `complainer_email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complainer_mobile` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complainer_address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `complaint` text COLLATE utf8_unicode_ci NOT NULL,
  `viewed_by` int(11) DEFAULT NULL,
  `viewed_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `contact_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `otp` int(4) DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `privacy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `contact_type`, `person_name`, `mobile`, `email`, `address`, `receiver`, `message`, `otp`, `nid`, `privacy`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(25, 'complaint', 'Md. Mursedul Islam', '01754121818', 'sumon.webtest@gmail.com', 'Some, demo, address, goes, here.', 'এসপি নাটোর', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1235, '1998505000144', NULL, '1', '2019-08-20 20:29:17', '2019-08-20 20:29:17', NULL),
(26, 'information', 'Rony Ahmed', '01754121818', 'sumon.webtest@gmail.com', 'Some, demo, address, goes, here.', 'এসপি নওগাঁ', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 2722, '1998505000144', NULL, '1', '2019-08-20 20:30:25', '2019-08-20 20:30:25', NULL),
(27, 'contact', 'Soikot Ahmed', '01754121818', 'sumon766@gmail.com', NULL, NULL, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, '0', '2019-08-20 20:39:01', '2019-08-20 20:39:01', NULL),
(28, 'information', 'Raihan Choudhury', '01754121818', 'raihan.choudhury@gmail.com', 'Here, goes, the, address, of, raihan, choudhury.', 'এসপি চাঁপাইনবাবগঞ্জ', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 4293, '185425478544214', 'yes', '0', '2019-08-20 20:47:06', '2019-08-20 20:47:06', NULL),
(29, 'contact', 'Sani Islam', '0154785445', 'sani.islam@gmail.com', NULL, NULL, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, '1', '2019-08-20 20:49:16', '2019-08-20 20:49:16', NULL),
(30, 'information', 'Tanvir Rony', '01754121818', 'tanvir.rony@gmail.com', 'Some, demo, address, here', 'অতিরিক্ত ডিআইজি', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 8288, '2642689494', 'yes', '1', '2019-08-20 23:16:10', '2019-08-20 23:16:10', NULL),
(31, 'information', 'Sharif Hasan', '01754121818', NULL, 'Some, address, of, sharif, hasan, goes, here', 'এসপি নাটোর', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 5091, NULL, 'yes', '1', '2019-08-21 11:20:01', '2019-08-21 11:20:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crime_statistics`
--

DROP TABLE IF EXISTS `crime_statistics`;
CREATE TABLE IF NOT EXISTS `crime_statistics` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `thana_id` int(11) DEFAULT NULL,
  `robbery` int(11) NOT NULL,
  `murder` int(11) NOT NULL,
  `speedy_trial` int(11) NOT NULL,
  `riot` int(11) NOT NULL,
  `women_child` int(11) NOT NULL,
  `kidnapping` int(11) NOT NULL,
  `police_assault` int(11) NOT NULL,
  `burglary` int(11) NOT NULL,
  `theft` int(11) NOT NULL,
  `other` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crime_statistics`
--

INSERT INTO `crime_statistics` (`id`, `user_id`, `district_id`, `thana_id`, `robbery`, `murder`, `speedy_trial`, `riot`, `women_child`, `kidnapping`, `police_assault`, `burglary`, `theft`, `other`, `total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 5, 3, 8, 11, 22, 33, 44, 55, 66, 77, 88, 99, 100, 111, '2018-11-15 18:55:09', '2018-11-15 18:57:51', NULL),
(4, 6, 4, 14, 11, 25, 23, 44, 55, 66, 77, 88, 99, 100, 111, '2018-11-15 18:55:09', '2018-11-15 18:57:51', NULL),
(5, 7, 4, 10, 11, 25, 23, 44, 55, 66, 77, 88, 99, 100, 111, '2018-11-15 18:55:09', '2018-11-15 18:57:51', NULL),
(6, 8, 4, 11, 11, 25, 23, 44, 55, 66, 77, 88, 99, 100, 111, '2018-11-15 18:55:09', '2018-11-15 18:57:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `digs`
--

DROP TABLE IF EXISTS `digs`;
CREATE TABLE IF NOT EXISTS `digs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dig_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `period_from` date NOT NULL,
  `period_to` date DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `digs`
--

INSERT INTO `digs` (`id`, `dig_name`, `period_from`, `period_to`, `photo`, `message`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(27, 'MR, FREDERICK PERCY WALKER, I.P', '1929-10-29', '1935-03-13', NULL, '', 0, '2018-11-08 14:09:34', '2018-11-08 14:09:34', NULL),
(28, 'MR. EDMUND BRYAN JONES, C.I.E, I.P, J.P', '1935-03-14', '1936-12-03', NULL, '', 0, '2018-11-08 14:11:59', '2018-11-08 14:11:59', NULL),
(29, 'MR. HENRY CHARTER HUNT, I.P', '1936-12-04', '1938-02-03', NULL, '', 0, '2018-11-08 14:13:30', '2018-11-08 14:13:30', NULL),
(30, 'MR. GEOFFRE HERBERT MANNOCH, I.P, J.P', '1938-02-04', '1941-04-28', NULL, '', 0, '2018-11-08 14:14:30', '2018-11-08 14:14:30', NULL),
(31, 'MR, DONALD ROSS HARDWICK, I.P, J.P', '1941-04-29', '1942-10-03', NULL, '', 0, '2018-11-08 14:16:04', '2018-11-08 14:16:04', NULL),
(32, 'MR. ROBERT HIGGINS, I.P', '1942-10-04', '1943-07-31', NULL, '', 0, '2018-11-08 14:18:29', '2018-11-08 14:18:29', NULL),
(33, 'MR. WILLIAM ALAN BOURNE-PRICE, I.P', '1943-08-01', '1944-04-30', NULL, '', 0, '2018-11-08 14:19:40', '2018-11-08 14:19:40', NULL),
(34, 'MR. CYRIL WEALE, I.P, J.P', '1944-05-01', '1944-11-30', NULL, '', 0, '2018-11-08 14:20:37', '2018-11-08 14:20:37', NULL),
(35, 'MR. EDWFIRD HENRYLE BROCQ, I.P, J.P', '1944-12-01', '1945-05-31', NULL, '', 0, '2018-11-08 14:21:33', '2018-11-08 14:21:33', NULL),
(36, 'MR HAROLD BELLED MILLER, I.P', '1945-06-01', '1946-08-31', NULL, '', 0, '2018-11-08 14:22:39', '2018-11-08 14:22:39', NULL),
(37, 'MR VERNON WILLIAM FARQUEHARSON HICKS, I.P', '1946-09-01', '1947-08-14', NULL, '', 0, '2018-11-08 14:23:39', '2018-11-08 14:23:39', NULL),
(38, 'MR. THOMAS JAMES WALKER, P.S.P', '1947-09-01', '1949-07-13', NULL, '', 0, '2018-11-08 14:25:17', '2018-11-08 14:25:17', NULL),
(39, 'MR. SYED MUJIBUR RAB, P.S.P', '1949-07-14', '1949-09-20', NULL, '', 0, '2018-11-08 14:26:10', '2018-11-08 14:26:10', NULL),
(40, 'MR. FAZLUR RAHMAN KHUNDKER, P.S.P', '1949-12-17', '1952-12-31', NULL, '', 0, '2018-11-08 14:27:27', '2018-11-08 14:27:27', NULL),
(41, 'MR. A. M. A. KABIR, P.S.P', '1952-12-14', '1953-04-20', NULL, '', 0, '2018-11-08 14:28:19', '2018-11-08 14:28:19', NULL),
(42, 'MR. A. K. M. HAFIZUDDIN, P.S.P, J.P', '1953-04-22', '1953-11-06', NULL, '', 0, '2018-11-08 14:32:10', '2018-11-08 14:32:10', NULL),
(43, 'MR. SYED NASIRUDDIN, P.S.P', '1953-11-07', '1954-08-23', NULL, '', 0, '2018-11-08 14:32:59', '2018-11-08 14:32:59', NULL),
(44, 'MR. YUSUF ALI SAYED, P.S.P', '1954-08-24', '1956-06-21', NULL, '', 0, '2018-11-08 14:33:48', '2018-11-08 14:33:48', NULL),
(45, 'MR. SYED NASIRUDDIN, P.S.P', '1956-07-07', '1958-02-14', NULL, '', 0, '2018-11-08 14:37:07', '2018-11-08 14:37:07', NULL),
(46, 'MR. AZIZUR RAHMAN TALUKDER, P.S.P', '1958-02-25', '1958-12-13', NULL, '', 0, '2018-11-08 14:38:01', '2018-11-08 14:38:01', NULL),
(47, 'MR. JOHAN ROLAND CHITHAM, O.B.E, P.S.P', '1959-01-01', '1960-04-27', NULL, '', 0, '2018-11-08 14:39:18', '2018-11-08 14:39:18', NULL),
(48, 'MR. MIRZA SERAJUL HAQUE, P.S.P', '1960-05-30', '1960-11-16', NULL, '', 0, '2018-11-08 14:40:14', '2018-11-08 14:40:14', NULL),
(17, 'MR. ALFRED ERNEST O’SULLIVAN, I.P', '1917-07-20', '1919-05-02', NULL, '', 0, '2018-11-08 13:28:34', '2018-11-08 13:28:34', NULL),
(18, 'MR. FRANCIS JOHAN LOWMAN, I.P', '1919-05-03', '1921-01-06', NULL, '', 0, '2018-11-08 13:32:28', '2018-11-08 13:32:28', NULL),
(19, 'MR. ALFRED ERNEST O’SULLIVAN, I.P', '1921-01-07', '1921-02-21', NULL, '', 0, '2018-11-08 13:35:18', '2018-11-08 13:35:18', NULL),
(20, 'MR. CHARLES EDWARD STUFIRT FARWEATHER, M.A. (OXON) C.I.E., I.P, I.J.P', '1924-02-22', '1924-06-03', NULL, '', 0, '2018-11-08 13:37:14', '2018-11-08 13:37:14', NULL),
(21, 'MR. THOMAS JOSEPHALEXANDER CRAIG, I.P, J.P', '1924-06-04', '1924-10-31', NULL, '', 0, '2018-11-08 13:39:01', '2018-11-08 13:39:01', NULL),
(22, 'MR. JOHAN COTTO, FARMER, I.P', '1924-09-01', '1924-10-07', NULL, '', 0, '2018-11-08 13:40:00', '2018-11-08 13:40:00', NULL),
(23, 'MR. ALFRED ERNEST O’SULLIVAN, I.P', '1924-10-28', '1927-04-11', NULL, '', 0, '2018-11-08 13:53:20', '2018-11-08 13:53:20', NULL),
(24, 'MR. CHARLES HUGILL WATERWORHT, I.P', '1927-04-12', '1927-10-04', NULL, '', 0, '2018-11-08 13:54:56', '2018-11-08 13:54:56', NULL),
(25, 'MR. LIONE HAND BURTON, I.P, J.P', '1927-10-05', '1929-08-07', NULL, '', 0, '2018-11-08 13:56:09', '2018-11-08 13:56:09', NULL),
(26, 'MR. ROBERT MARTIN WRIGHT, I.P, J.P', '1929-08-08', '1929-10-28', NULL, '', 0, '2018-11-08 14:07:55', '2018-11-08 14:07:55', NULL),
(49, 'MR. JOHAN ROLAND CHITHAM, O.B.E, P.S.P', '1960-11-17', '1961-02-22', NULL, '', 0, '2018-11-08 14:41:07', '2018-11-08 14:41:07', NULL),
(50, 'MR. KHONDKER NURUL HOSSAIN, P.S.P', '1961-03-23', '1961-06-18', NULL, '', 0, '2018-11-08 14:42:19', '2018-11-08 14:42:19', NULL),
(51, 'MR. MAHMUD SHAMSUDDIN HAIDER, P.S.P', '1961-09-03', '1964-08-02', NULL, '', 0, '2018-11-08 14:43:31', '2018-11-08 14:43:31', NULL),
(52, 'MR. TASLIMUDDIN AHMAD, P.P.M, P.S.P', '1964-08-03', '1964-10-22', NULL, '', 0, '2018-11-08 14:44:59', '2018-11-08 14:44:59', NULL),
(53, 'MR. TASLIMUDDIN AHMAD, S.K, P.P.M', '1964-10-23', '1966-10-02', NULL, '', 0, '2018-11-08 14:46:39', '2018-11-08 14:46:39', NULL),
(54, 'MR. ABDUL KHALEQUE (I), T.Q.A, P.S.P', '1966-10-03', '1966-12-14', NULL, '', 0, '2018-11-08 14:48:56', '2018-11-08 14:48:56', NULL),
(55, 'MR. TASLIMUDDIN AHMAD, S.K, P.P.M', '1966-12-15', '1967-07-23', NULL, '', 0, '2018-11-08 14:51:28', '2018-11-08 14:51:28', NULL),
(56, 'MR. SYED MANNAN BAKSH, T.Q.A, P.P.M, P.S.P', '1967-07-24', '1969-04-25', NULL, '', 0, '2018-11-08 14:58:07', '2018-11-08 14:58:07', NULL),
(57, 'MR. A. RAHIM, P.P.M, P.S.P', '1969-05-19', '1970-03-03', NULL, '', 0, '2018-11-08 14:59:39', '2018-11-08 14:59:39', NULL),
(58, 'MR. S. M. AHSAN, T.K, P.S.P', '1970-03-04', '1970-07-23', NULL, '', 0, '2018-11-08 15:11:12', '2018-11-08 15:11:12', NULL),
(59, 'MR. MAMUN MAHMUD, P.P.M, P.S.P', '1970-08-11', '1971-03-26', NULL, '', 0, '2018-11-08 15:16:31', '2018-11-08 15:16:31', NULL),
(60, 'MR. K. G. MOHIUDDIN, P.S.P', '1971-08-04', '1972-02-16', NULL, '', 0, '2018-11-08 15:22:24', '2018-11-08 15:22:24', NULL),
(61, 'MR. C. A. GUAFFAR', '1972-02-23', '1972-02-24', NULL, '', 0, '2018-11-08 15:23:51', '2018-11-08 15:23:51', NULL),
(62, 'MR. HUSAIN AHMED', '1972-02-25', '1972-08-06', NULL, '', 0, '2018-11-08 15:25:03', '2018-11-08 15:25:03', NULL),
(63, 'MR. A. R. KHUNDKAR', '1972-10-09', '1973-01-22', NULL, '', 0, '2018-11-08 15:26:01', '2018-11-08 15:26:01', NULL),
(64, 'MR. M. A. HOSSAIN', '1973-03-05', '1973-06-26', NULL, '', 0, '2018-11-08 15:27:03', '2018-11-08 15:27:03', NULL),
(65, 'MR. A. K. M. MUSLEHUDDIN', '1973-06-27', '1976-01-20', NULL, '', 0, '2018-11-08 15:28:07', '2018-11-08 15:28:07', NULL),
(66, 'MR. A. H. M. FAKHARUDDIN', '1976-06-08', '1977-01-06', NULL, '', 0, '2018-11-08 15:29:13', '2018-11-08 15:29:13', NULL),
(67, 'Mr. M. Enamul Haque', '1977-01-07', '1977-03-07', NULL, '', 0, '2018-11-08 15:30:24', '2018-11-08 15:30:24', NULL),
(68, 'Mr. A, K, M, Mahbub-ul-Haq', '1979-03-08', '1980-02-18', NULL, '', 0, '2018-11-08 15:31:34', '2018-11-08 15:31:34', NULL),
(69, 'Mr. Shailendra Kishore Chowdhury', '1980-02-18', '1981-04-20', NULL, '', 0, '2018-11-08 15:34:01', '2018-11-08 15:34:01', NULL),
(70, 'Mr. Abu Moyen Chowdhury', '1981-04-20', '1982-12-17', NULL, '', 0, '2018-11-08 15:35:12', '2018-11-08 15:35:12', NULL),
(71, 'Mr. Abdul Hakim Khan', '1983-02-17', '1984-11-28', NULL, '', 0, '2018-11-08 15:36:31', '2018-11-08 15:36:31', NULL),
(72, 'Mr. A, F., Kabir', '1984-12-03', '1985-04-08', NULL, '', 0, '2018-11-08 15:37:40', '2018-11-08 15:37:40', NULL),
(73, 'Mr. M. Enamul Haque', '1985-04-20', '1985-07-18', NULL, '', 0, '2018-11-08 15:38:44', '2018-11-08 15:38:44', NULL),
(74, 'Mr. Moazzem Hossain Khan', '1985-07-28', '1987-04-01', NULL, '', 0, '2018-11-08 15:39:56', '2018-11-08 15:39:56', NULL),
(75, 'Mr. M.A., Khalek, PSC', '1987-04-16', '1989-06-11', NULL, '', 0, '2018-11-08 15:40:46', '2018-11-08 15:40:46', NULL),
(76, 'Mr. Shahudul Haque', '1989-06-12', '1989-06-28', NULL, '', 0, '2018-11-08 15:41:51', '2018-11-08 15:41:51', NULL),
(77, 'Mr. Golam Morshed', '1989-06-29', '1990-08-08', NULL, '', 0, '2018-11-08 15:43:19', '2018-11-08 15:43:19', NULL),
(78, 'Mr. Mohammad Salam', '1990-08-08', '1991-03-30', NULL, '', 0, '2018-11-08 15:44:27', '2018-11-08 15:44:27', NULL),
(79, 'Mr. A, T, M, Mansurul Aziz', '1991-03-30', '1991-12-22', NULL, '', 0, '2018-11-08 15:45:21', '2018-11-08 15:45:21', NULL),
(80, 'Mr. Mohammad Salam', '1991-12-22', '1993-03-21', NULL, '', 0, '2018-11-08 15:46:49', '2018-11-08 15:46:49', NULL),
(81, 'Mr. Mirza Rakibul Huda', '1993-03-31', '1993-07-27', NULL, '', 0, '2018-11-08 15:47:40', '2018-11-08 15:47:40', NULL),
(82, 'Mr. A, F. M. Mahmud al-Farid,', '1993-10-04', '1996-09-16', NULL, '', 0, '2018-11-08 15:49:02', '2018-11-08 15:49:02', NULL),
(83, 'Mr. Md. Abdus Salam', '1996-09-16', '1998-06-07', NULL, '', 0, '2018-11-08 15:50:40', '2018-11-08 15:50:40', NULL),
(84, 'Mr. Nurul Alam Chowdhury', '1998-06-08', '1999-04-25', NULL, '', 0, '2018-11-08 15:51:50', '2018-11-08 15:51:50', NULL),
(85, 'Mr. Syed Sirajul Islam, pp', '1999-04-25', '2001-06-30', NULL, '', 0, '2018-11-08 15:53:07', '2018-11-08 15:53:07', NULL),
(86, 'Mr. Md. Shafiq Ullah', '2001-06-30', '2001-08-09', NULL, '', 0, '2018-11-08 15:54:20', '2018-11-08 15:54:20', NULL),
(87, 'Mr. Md. Sahidur Rahman Bhuiyan', '2001-08-09', '2002-09-29', NULL, '', 0, '2018-11-08 15:55:30', '2018-11-08 15:55:30', NULL),
(88, 'Mr. Mohammad Anwar Hossain', '2002-09-29', '2003-05-21', NULL, '', 0, '2018-11-08 15:57:15', '2018-11-08 15:57:15', NULL),
(89, 'Mr. Md. Delwar Hossain', '2003-05-21', '2003-09-23', NULL, '', 0, '2018-11-08 15:58:25', '2018-11-08 15:58:25', NULL),
(90, 'Mr. Muhammad Anisur Rahman', '2003-09-23', '2004-04-07', NULL, '', 0, '2018-11-08 15:59:59', '2018-11-08 15:59:59', NULL),
(91, 'Mr. Nur Mohammad', '2004-04-07', '2005-04-18', NULL, '', 0, '2018-11-08 16:00:48', '2018-11-08 16:00:48', NULL),
(92, 'Mr. Baharul Alam', '2005-04-21', '2006-06-25', NULL, '', 0, '2018-11-08 16:01:43', '2018-11-08 16:01:43', NULL),
(93, 'Mr. Naim Ahmed', '2006-06-25', '2006-11-02', NULL, '', 0, '2018-11-08 16:03:31', '2018-11-08 16:03:31', NULL),
(94, 'Mr. Khan Saeed Hasan, PPM', '2006-11-05', '2007-02-04', NULL, '', 0, '2018-11-08 16:04:47', '2018-11-08 16:04:47', NULL),
(95, 'Mr. A, K, M Shahidul Haque', '2007-02-04', '2007-12-18', NULL, '', 0, '2018-11-08 16:06:23', '2018-11-08 16:06:23', NULL),
(96, 'Mr. Mokhlesur Rahman', '2017-12-23', '2010-09-02', NULL, '', 0, '2018-11-08 16:07:26', '2018-11-08 16:07:26', NULL),
(97, 'Mr. Md. Obaidullah (Acting)', '2010-09-02', '2010-10-20', NULL, '', 0, '2018-11-08 16:08:48', '2018-11-08 16:08:48', NULL),
(98, 'Mr. Siddiqur Rahman, PPM', '2010-10-20', '2012-11-14', NULL, '', 0, '2018-11-08 16:09:54', '2018-11-08 16:09:54', NULL),
(99, 'Mr. Mir Shahidul Islam, PPM', '2012-11-14', '2014-08-13', NULL, '', 0, '2018-11-08 16:11:15', '2018-11-08 16:11:15', NULL),
(100, 'Mr. M. Khurshid Hossain (Acting)', '2014-08-13', '2014-09-28', NULL, '', 0, '2018-11-08 16:12:17', '2018-11-08 16:12:17', NULL),
(101, 'Mr. Md. Iqbal Bahar, PPM', '2014-09-28', '2016-04-06', NULL, '', 0, '2018-11-08 16:13:36', '2018-11-08 16:13:36', NULL),
(102, 'M. Khurshid Hossain, BPM-BAR', '2016-04-13', '2019-04-11', '1542021100present_principal.jpg', 'I would like to extend my heartfelt and warmest welcome to the official website of Bangladesh police, Rajshahi Range. We are dedicated to crime prevention, crime control and crime detection in bringing the offenders before judicial system. But with the advancement of ICT, crime patterns and criminal behaviors are subjected to change. Accordingly traditional policing is changing to keep peace with the criminal behavior and activity. Now a days, policing is community based, problem solving and pro active oriented.</p><p><br></p><p><br></p><p>Bangladesh police is working to transform itself from a police force to a police service and in this regard implementation of the concept \"digital policing\" would help in meeting the objective to serve the people. It is expected that the approach of digital policing will assist to develop a new model of effective policing to pursue the criminals, protect the vulnerable and surely to reduce the rate of crimes to make Bangladesh a better and safer place to live in which is the ultimate vision of Bangladesh police. Alighning with the policy of vision 2021 and digital Bangladesh, Bangladesh police is progressively marching ahead to provide cost effective and sustainable ICT based services to the community and help to win the trust and confidence of the people.</p><p>I hope this website would be able to facilitate the people to interact with the ICT based activity of the police of Rajshahi Range. I also hope and believe that this website would be able to implement the vision 2021 and the dream of digital Bangladesh.', 0, '2018-11-12 23:11:40', '2019-07-21 06:34:04', NULL),
(105, 'A.K.M. Hafiz Akhter', '2019-04-11', NULL, '156258416861710895_728289887573755_5025070401554743296_n.jpg', 'I would like to extend my heartfelt and warmest welcome to the official website of Bangladesh police, Rajshahi Range. We are dedicated to crime prevention, crime control and crime detection in bringing the offenders before judicial system. But with the advancement of ICT, crime patterns and criminal behaviors are subjected to change. Accordingly traditional policing is changing to keep peace with the criminal behavior and activity. Now a days, policing is community based, problem solving and pro active oriented.</p><p><br></p><p><br></p><p>Bangladesh police is working to transform itself from a police force to a police service and in this regard implementation of the concept \"digital policing\" would help in meeting the objective to serve the people. It is expected that the approach of digital policing will assist to develop a new model of effective policing to pursue the criminals, protect the vulnerable and surely to reduce the rate of crimes to make Bangladesh a better and safer place to live in which is the ultimate vision of Bangladesh police. Alighning with the policy of vision 2021 and digital Bangladesh, Bangladesh police is progressively marching ahead to provide cost effective and sustainable ICT based services to the community and help to win the trust and confidence of the people.</p><p>I hope this website would be able to facilitate the people to interact with the ICT based activity of the police of Rajshahi Range. I also hope and believe that this website would be able to implement the vision 2021 and the dream of digital Bangladesh.', 1, '2019-07-08 11:09:28', '2019-07-22 12:36:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
CREATE TABLE IF NOT EXISTS `districts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name_english` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_district` text COLLATE utf8_unicode_ci,
  `sp_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sp_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `name_english`, `cover_image`, `about_district`, `sp_name`, `sp_photo`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'রাজশাহী', 'Rajshahi', '15432339541541590586cpi_cover.jpg', '<p>Rajshahi region was ruled by the Puṭhia Raj family based in the Puṭhia Rajbaɽi. The Mughal Emperror Akbar had given the Rajshahi region to the Puṭhia Raj family to govern, the governor was Pitambar. The Puṭhia family was given the title of Raja by the Mughal Emperor Jahangir. Rajshahi District was established in 1772. Parts of the districts eventually became Bogura district, Malda district, Natore district, Naogaon district, Nawabganj district, and Pabna district. On 1 April 1876 Rajshahi town was made into municipal town. </p><p>During the Bangladesh Liberation war in 1971 the town was the site of battles between the Mukti Bahini and Pakistan Army. Pakistan Army fought a battle against the Mukti Bahini on 30 March 1971 which resulted in the death of East Pakistan Rifles member. Between 26 and 30 March 31 individuals in Godagaɽi upazila were killed by Pakistan Army. On 13 April Pakistan Army killed Rajshahi Cadet College Professor AB Siddiqi. Pakistan Army attacked Tahirpur Haṭ in Bagmara upazila on 24 May and killed 25 people. Mukti Bahini commander Havilder Shafiq led an attack on Pakistan Army boat on 8 August killing 18 Pakistan Army personal. Pakistan Army killed two members of Bangladesh Ansar in war of attrition. Pakistan Army established a camp in the Zoha Hall of Rajshahi University where they massacred hundreds of civilians. Pakistan Army had also established camps inside Rajshahi Cadet College, Roy Saheb brickfield, Sardaha Pilot School, and Sardah Police Academy. The Pakistan Army tortured members of Mukti Bahini and civilians in the camps. The Pakistan Army also killed hundreds of refugees on the banks of Padma river who were fleeing to India. In a fight between Mukti Bahini and Pakistan Army near Kabasmul a Pakistan Army major was killed. Pakistan Army retaliated by killing 44 civilians in Gaganbari and Palsa. The Pakistan Army stationed in Pabna and Rajshahi districts surrendered on 18 December 1971, two days after Pakistani forces in Bangladesh signed the Pakistani instrument of Surrender in Dhaka on 16 December 1971. Pakistani military surrendered to Indian Army Captain Nanda in Naṭore. The Pakistan Army camp in Rajshahi University was taken over by Mukti Bahini members 0n 17 December after fighting them. Surrender ceremonies took place on 20 December.</p><p>Rajshahi town was upgraded to a Municipal Corporation on 13 August 1987. In 1997 the government of Bangladesh made Rajshahi town into a full city corporation, Rajshahi City Corporation. In 2016 Rezaul Karim Siddiquee, a Professor at University of Rajshahi, and a 65 year old Sufi Preacher, Shahidullah, were killed by Islamic extremists. <br></p>', 'Md. Sohidullah, BPM, PPM', '15635651302a4505e99f7a6ee4f7bd289dbede80d4.png', 'I would like to extend my heartfelt and warmest welcome to the official website of Bangladesh police, Rajshahi Range. We are dedicated to crime prevention, crime control and crime detection in bringing the offenders before judicial system. But with the advancement of ICT, crime patterns and criminal behaviors are subjected to change. Accordingly traditional policing is changing to keep peace with the criminal behavior and activity. Now a days, policing is community based, problem solving and pro active oriented.\r\n\r\n\r\nBangladesh police is working to transform itself from a police force to a police service and in this regard implementation of the concept \"digital policing\" would help in meeting the objective to serve the people. It is expected that the approach of digital policing will assist to develop a new model of effective policing to pursue the criminals, protect the vulnerable and surely to reduce the rate of crimes to make Bangladesh a better and safer place to live in which is the ultimate vision of Bangladesh police. Alighning with the policy of vision 2021 and digital Bangladesh, Bangladesh police is progressively marching ahead to provide cost effective and sustainable ICT based services to the community and help to win the trust and confidence of the people.\r\n\r\nI hope this website would be able to facilitate the people to interact with the ICT based activity of the police of Rajshahi Range. I also hope and believe that this website would be able to implement the vision 2021 and the dream of digital Bangladesh.', '2018-10-21 18:00:00', '2019-07-29 21:21:28', NULL),
(2, 'চাঁপাইনবাবগঞ্জ', 'Chapai Nawabganj', '1541590586cpi_cover.jpg', '<p>Chapainawabganj was one of the sub-divisions of the former Rajshahi zilla. Chapai Nawabganj was part of ancient Gour capital. It is said that this area had strategic and commercial importance due to its location at the junction of the rivers Mahananda and the Ganges. Because of its importance, Alivardi Khan founded Nowabganj town which in course of time known as Nawabganj. Until 1947, Nawabganj was a thana under Malda district, India.</p><p>The gateway of North Bengal, Malda was once the capital of Gour-Banga, with 3456 km² of land classified as Tal, Diara, and Barind. Malda awaits the advent of tourists and people of archaeological interest with its wealth to be enjoyed and its huge potential to be explored.This portion of the earth is washed by the waves of the rivers Ganges, Mahananda, Fulahar, and Kalindri. It has witnessed different empires which were raised, flourished, and then cast down near oblivion by a successor kingdom built up on the relics of its predecessor. Panini mentioned a city named Gourpura, which by strong reason may be identified as the city of Gouda, ruins of which are situated in this district. Examples are legion of the relic of a predecessor kingdom being used in the monuments of the successor kingdoms. It had been within the limits of ancient \'Gaur\' and \'Pandua\' (Pundrabardhana).These two cities had been the capital of Bengal in ancient and medieval ages. The boundary of Gour was changed in different ages since 5th century BC. Its name can be found in Puranic texts. Pundranagar was the provincial capital of Maurya Empire. Gour and Pundrabardhana formed parts of the Mourya empire as is evinced from the inscriptions, Brahmilipi on a seal discovered from the ruins of Mahasthangarh in the Bogra District of Bangladesh. Hiuen Tsang saw many Ashokan stupas at Pundrabardhana. The inscriptions discovered in the district of undivided Dinajpur and other parts of North Bengal along with the Allahabad Pillar inscriptions of Samudragupta clearly indicate that the whole of North Bengal as far east as Kamrup formed a part of the Gupta empire.After the Guptas in the early 7th century AD, king Sasanka of Karnasubarna as well as the king of Gaur ruled independently for more than three decades. From the middle of 8th century to the end of 11th century, the Pala Empire ruled Bengal and the kings were devoted to Buddhism. It was during their reign that the Jagadalla Vihara (monastery) in Barindri flourished paralleling with Nalanda, Vikramshila, and Devikot. </p><p>The Pala Dynasty yielded to the emergence of Sena Empire. The Sen rulers were Hindus and in the habit of moving from place to place within their kingdom. At the time of Lakshman Sen Gour was known as Lakshmanabati. The Sen kings ruled Bengal till Bakhtiyar Khilji conquered Bengal in 1204 AD. Thereafter the Muslim rule lasted for about five hundred years. Sirajuddaulah was defeated by Lord Clive at the battle of Plassey in 1757, which marked the beginning of British rule. From ancient times, rulers of various origins, religions, and dynasties left imprints of their times on the earth in this district. Those who left ruins and relics speak of past pomp and grandeur, and hold interest for archaeologists and tourists.This district, Malda, formed in 1813 out of the outlying areas of Purnia, Dinajpur, and Rajshahi districts. At the time of Dr. B. Hamilton (1808–09), the presents thanas of Gazole, Malda, Bamongola, and part of Habibpur were included in the district of Dinajpur and the thanas of Harischandrapur, Kharba, Ratua, Manikchak, and Kaliachak were included in the district of Purnia. In 1813, in consequence of the prevalence of serious crimes in the Kaliachak and Sahebganj thanas and also on the rivers, a joint magistrate and deputy collector were appointed at English Bazar with jurisdiction over a number of police stations centred around that place and taken from the two district. Thus the district of Malda was born.</p><p>The year 1832 saw the establishment of a separate treasury, and in 1859 a full-fledged magistrate and collector was posted. Up to 1876 this district formed part of Rajshahi Division, and from 1876 to 1905 it formed part of Bhagalpur Division. In 1905, it was again transferred to Rajshahi Division, and until 1947 Malda remained in this division. In August 1947 this district was affected by the Partition of India. Between 12 and 15 August 1947 whether the district would become part of India or Pakistan was unknown, as the announcement of the Radcliffe Line did not make this point clear. During these few days the district was under a magistrate of East Pakistan until the details of the Radcliffe award were published and the district became part of West Bengal on 17 August 1947. Five thanas were given to Pakistan under the district of Rajshahi which later formed as Chapai Nawabganj.<br></p>', 'T.M. Mozahidul Islam', '1563565414f64a62b69fa05c2c28f9bdd65eec745f.png', 'I would like to extend my heartfelt and warmest welcome to the official website of Bangladesh police, Rajshahi Range. We are dedicated to crime prevention, crime control and crime detection in bringing the offenders before judicial system. But with the advancement of ICT, crime patterns and criminal behaviors are subjected to change. Accordingly traditional policing is changing to keep peace with the criminal behavior and activity. Now a days, policing is community based, problem solving and pro active oriented.\r\n\r\n\r\nBangladesh police is working to transform itself from a police force to a police service and in this regard implementation of the concept \"digital policing\" would help in meeting the objective to serve the people. It is expected that the approach of digital policing will assist to develop a new model of effective policing to pursue the criminals, protect the vulnerable and surely to reduce the rate of crimes to make Bangladesh a better and safer place to live in which is the ultimate vision of Bangladesh police. Alighning with the policy of vision 2021 and digital Bangladesh, Bangladesh police is progressively marching ahead to provide cost effective and sustainable ICT based services to the community and help to win the trust and confidence of the people.\r\n\r\nI hope this website would be able to facilitate the people to interact with the ICT based activity of the police of Rajshahi Range. I also hope and believe that this website would be able to implement the vision 2021 and the dream of digital Bangladesh.', '2018-10-21 18:00:00', '2019-07-29 21:24:04', NULL),
(3, 'নাটোর', 'Natore', '1541590671nat_cover.jpg', '<p>Natore District (rajshahi division) area 1896.05 sq km, located in between 24°25\' and 24°58\' north latitudes and in between 88°01\' and 88°30\' east longitudes. It is bounded by naogaon and bogra districts on the north, pabna and kushtia districts on the south, Pabna and sirajganj districts on the east, rajshahi district on the west.</p><p>Population Total 698447; male 353201, female 345246; Muslim 549702, Hindu 148339, Buddhist 186, Christian 21 and others 199. Indigenous communities such as santal, oraon, Turi, Bhumij, Kaibarta, Mushar, Malpahadi, munda belong to this upazila.</p><p>Water bodies Main rivers: padma, baral, Mara Baral, Baranai, Gurh, nagar; chalan beel \'is notable.</p><p>Administration Natore Sub-division, under Rajshahi district, was established in 1845 and it was turned into a district in 1984. Natore Municipality was formed in 1869.<br></p>', 'Saifullah Al Mamun, BPM PPM Bar', '15635664857e2d4bfc02c07d4b9d2c2ca36a5fea15.png', 'I would like to extend my heartfelt and warmest welcome to the official website of Bangladesh police, Rajshahi Range. We are dedicated to crime prevention, crime control and crime detection in bringing the offenders before judicial system. But with the advancement of ICT, crime patterns and criminal behaviors are subjected to change. Accordingly traditional policing is changing to keep peace with the criminal behavior and activity. Now a days, policing is community based, problem solving and pro active oriented.\r\n\r\n\r\nBangladesh police is working to transform itself from a police force to a police service and in this regard implementation of the concept \"digital policing\" would help in meeting the objective to serve the people. It is expected that the approach of digital policing will assist to develop a new model of effective policing to pursue the criminals, protect the vulnerable and surely to reduce the rate of crimes to make Bangladesh a better and safer place to live in which is the ultimate vision of Bangladesh police. Alighning with the policy of vision 2021 and digital Bangladesh, Bangladesh police is progressively marching ahead to provide cost effective and sustainable ICT based services to the community and help to win the trust and confidence of the people.\r\n\r\nI hope this website would be able to facilitate the people to interact with the ICT based activity of the police of Rajshahi Range. I also hope and believe that this website would be able to implement the vision 2021 and the dream of digital Bangladesh.', '2018-10-21 18:00:00', '2019-07-29 21:44:44', NULL),
(4, 'বগুড়া', 'Bogura', '1541591941bog_cover.jpg', '<p>Bogra District area 2898.25 sq km, located in between 24°32\' and 25°07\' north latitudes and in between 88°58\' and 89°45\' east longitudes. It is bounded by joypurhat and gaibandha district on the north, chalan beel,\' natore and sirajganj district on the south, Jamuna river and jamalpur district on the east, part of Chalan Beel and naogaon and Natore district on the west.</p><p>Population Total 3013056; male 1547341, female 1465715; Muslim 2819432, Hindu 191528, Buddhist 666, Christian 297 and others 1133.</p><p>Water bodies Main rivers: karatoya, jamuna, nagar, Bangali, ichamati. Notable beels are Betgari, Koigari, Subeel, Nuruler Beel, Poradaha Beel, Keshpathar, Kalidaha, Garai, Erulia, Dasukdaha, Sara, Gobarchapa, Ramchandrapur, Kokira, Bahuar Beel and Kachiar Beel.</p><p>Administration Bogra town founded in 1850. Bogra municipality was established in 1884. Bogra district was established in 1821 consisting of 9 thanas, of which four from rajshahi district (adamdighi, Bogra, sherpur, Nawkhila), three from dinajpur district (Lalbazar, badalgachhi, khetlal), and two from Rangpur district (gobindaganj, dewanganj). Subsequently 9 thanas were excluded from the primary infrasture of the district; and greater Bogra district was formed including 7 new thanas. In 1983 Bogra district was divided into two districts, Bogra and Joypurhat.<br></p>', 'MD. Ali Ashraf Bhuiyan, BPM-Bar', '1563566622344c0015dd8540197ec8c627696d693b.png', 'I would like to extend my heartfelt and warmest welcome to the official website of Bangladesh police, Rajshahi Range. We are dedicated to crime prevention, crime control and crime detection in bringing the offenders before judicial system. But with the advancement of ICT, crime patterns and criminal behaviors are subjected to change. Accordingly traditional policing is changing to keep peace with the criminal behavior and activity. Now a days, policing is community based, problem solving and pro active oriented.\r\n\r\n\r\nBangladesh police is working to transform itself from a police force to a police service and in this regard implementation of the concept \"digital policing\" would help in meeting the objective to serve the people. It is expected that the approach of digital policing will assist to develop a new model of effective policing to pursue the criminals, protect the vulnerable and surely to reduce the rate of crimes to make Bangladesh a better and safer place to live in which is the ultimate vision of Bangladesh police. Alighning with the policy of vision 2021 and digital Bangladesh, Bangladesh police is progressively marching ahead to provide cost effective and sustainable ICT based services to the community and help to win the trust and confidence of the people.\r\n\r\nI hope this website would be able to facilitate the people to interact with the ICT based activity of the police of Rajshahi Range. I also hope and believe that this website would be able to implement the vision 2021 and the dream of digital Bangladesh.', '2018-10-21 18:00:00', '2019-07-29 21:46:50', NULL),
(5, 'নওগাঁ', 'Naogaon', '1541590635nao_cover.jpg', '<p>Naogaon District (rajshahi division) area 3435.67 sq km, located in between 24°32\' and 25°13\' north latitudes and in between 88°23\' and 89°10\' east longitudes. It is bounded by west bengal state of India on the north, natore and rajshahi districts on the south, joypurhat, bogra and Natore districts on the east, nawabganj district on the west.</p><p>Population Total 2391355; male 1228253, female 1163102; Muslim 2062616, Hindu 256596, Buddhist 14313, Christian 336 and others 57494. Indigenous communities such as santal, oraon, munda belong to this upazila.</p><p>Water bodies Main rivers: atrai, punarbhaba, little jamuna, nagar, Shib; chalan beel is notable.</p><p>Administration Naogaon Sub-division, under Rajshahi district, was established in 1877 and was turned into a district in 1984. Municipality was formed in 1963. Of the eleven upazilas of the district niamatpur is the largest (449.10. sq km, it occupies 13.07% of the total area of the district) and badalgachhi is the smallest upazila (213.98 sq km).<br></p>', 'Md. Iqbal Hossain PPM', '1563566758fa512f5e3796125bc920e049dd43a7b7.png', 'I would like to extend my heartfelt and warmest welcome to the official website of Bangladesh police, Rajshahi Range. We are dedicated to crime prevention, crime control and crime detection in bringing the offenders before judicial system. But with the advancement of ICT, crime patterns and criminal behaviors are subjected to change. Accordingly traditional policing is changing to keep peace with the criminal behavior and activity. Now a days, policing is community based, problem solving and pro active oriented.\r\n\r\n\r\nBangladesh police is working to transform itself from a police force to a police service and in this regard implementation of the concept \"digital policing\" would help in meeting the objective to serve the people. It is expected that the approach of digital policing will assist to develop a new model of effective policing to pursue the criminals, protect the vulnerable and surely to reduce the rate of crimes to make Bangladesh a better and safer place to live in which is the ultimate vision of Bangladesh police. Alighning with the policy of vision 2021 and digital Bangladesh, Bangladesh police is progressively marching ahead to provide cost effective and sustainable ICT based services to the community and help to win the trust and confidence of the people.\r\n\r\nI hope this website would be able to facilitate the people to interact with the ICT based activity of the police of Rajshahi Range. I also hope and believe that this website would be able to implement the vision 2021 and the dream of digital Bangladesh.', '2018-11-06 04:35:32', '2019-07-29 21:48:38', NULL),
(6, 'পাবনা', 'Pabna', '1541590718raj_cover.jpg', '<p>Pabna District (rajshahi division) area 2371.50 sq km, located in between 23°48\' and 24°21\' north latitudes and in between 89°00\' and 89°44\' east longitudes. It is bounded by natore and sirajganj districts on the north, padma river, rajbari and kushtia districts on the south, manikganj and Sirajganj districts and jamuna river on the east, Padma River, Natore and Kushtia districts on the west.</p><p>Population Total 2176270; male 1126084, female 1050186; Muslim 2099160, Hindu 73839, Buddhist 3023, Christian 78 and others 170.</p><p>Water bodies Main rivers: Padma, Baral, Jamuna, ichamati, atrai, Hurasagar, Chiknai; chalan beel is notable.</p><p>Administration Pabna District was formed in 1832. Of the nine upazilas of the district pabna sadar is the largest (443.90.41 sq km, it occupies 18.72% of the total area of the district) and bhangura is the smallest (136 sq km).<br></p>', 'Sheikh Rofiqul Islam, BPM, PPM', '15635668421ec996713e6a4418bd34a65cbf80113a.png', 'I would like to extend my heartfelt and warmest welcome to the official website of Bangladesh police, Rajshahi Range. We are dedicated to crime prevention, crime control and crime detection in bringing the offenders before judicial system. But with the advancement of ICT, crime patterns and criminal behaviors are subjected to change. Accordingly traditional policing is changing to keep peace with the criminal behavior and activity. Now a days, policing is community based, problem solving and pro active oriented.\r\n\r\n\r\nBangladesh police is working to transform itself from a police force to a police service and in this regard implementation of the concept \"digital policing\" would help in meeting the objective to serve the people. It is expected that the approach of digital policing will assist to develop a new model of effective policing to pursue the criminals, protect the vulnerable and surely to reduce the rate of crimes to make Bangladesh a better and safer place to live in which is the ultimate vision of Bangladesh police. Alighning with the policy of vision 2021 and digital Bangladesh, Bangladesh police is progressively marching ahead to provide cost effective and sustainable ICT based services to the community and help to win the trust and confidence of the people.\r\n\r\nI hope this website would be able to facilitate the people to interact with the ICT based activity of the police of Rajshahi Range. I also hope and believe that this website would be able to implement the vision 2021 and the dream of digital Bangladesh.', '2018-11-06 04:35:43', '2019-07-29 21:49:30', NULL),
(7, 'সিরাজগঞ্জ', 'Sirajganj', '1541590746sir_cover.jpg', '<p>Sirajganj District area 2497.92 sq km, located in between 24°01\' and 24°47\' north latitudes and in between 89°15\' and 89°59\' east longitudes. It is bounded by bogra district on the north, pabna and manikganj districts on the south, tangail and jamalpur districts on the east, Pabna, natore and Bogra districts on the west.</p><p>Population Total 2693814; male 1397863, female 1295951; Muslim 2551708, Hindu 141406, Buddhist 371, Christian 70 and others 259.</p><p>Water bodies Main rivers: jamuna, ichamati, baral, hurasagar; chalan beel is notable. About 10% of the total area of Chalan Beel belongs to the Tarash upazila of the district.</p><p>Administration Sirajganj Sub-division was established in 1885 under Pabna district and it was turned into a district in 1984. Of the nine upazilas of the district ullahpara is the largest (414.43 sq km) and kamarkhanda\' is the smallest (91.61 sq km).<br></p>', 'Tutul Chakroborty, BPM', '156356462403af17d1c2587457ba21c8d20d61e7b2.png', 'I would like to extend my heartfelt and warmest welcome to the official website of Bangladesh police, Rajshahi Range. We are dedicated to crime prevention, crime control and crime detection in bringing the offenders before judicial system. But with the advancement of ICT, crime patterns and criminal behaviors are subjected to change. Accordingly traditional policing is changing to keep peace with the criminal behavior and activity. Now a days, policing is community based, problem solving and pro active oriented.\r\n\r\n\r\nBangladesh police is working to transform itself from a police force to a police service and in this regard implementation of the concept \"digital policing\" would help in meeting the objective to serve the people. It is expected that the approach of digital policing will assist to develop a new model of effective policing to pursue the criminals, protect the vulnerable and surely to reduce the rate of crimes to make Bangladesh a better and safer place to live in which is the ultimate vision of Bangladesh police. Alighning with the policy of vision 2021 and digital Bangladesh, Bangladesh police is progressively marching ahead to provide cost effective and sustainable ICT based services to the community and help to win the trust and confidence of the people.\r\n\r\nI hope this website would be able to facilitate the people to interact with the ICT based activity of the police of Rajshahi Range. I also hope and believe that this website would be able to implement the vision 2021 and the dream of digital Bangladesh.', '2018-11-06 04:35:55', '2019-07-29 21:18:54', NULL),
(8, 'জয়পুরহাট', 'Joypurhat', '1541591989joy_cover.jpg', '<p>Joypurhat District (rajshahi division) area 965.44 sq km, located in between 24°51\' and 25°17\' north latitudes and in between 88°17\' and 88°55\' east longitudes. It is bounded by dinajpur district on the north, naogaon and bogra districts on the south, Bogra and gaibandha districts on the east, Naogaon district and west bengal state of India on the west.</p><p>Population Total 846696; male 434616, female 412080; Muslim 758324, Hindu 76033, Buddhist 4715, Christian 183 and others 7441. Indigenous communities such as santal, munda, oraon, Koch rajbangshi belong to this upazila.</p><p>Water bodies Main rivers: little jamuna, Tulsi Ganga, Harabati.</p><p>Administration During the period from 1971 to 1984 Joypurhat was a Sub-division under Bogra district; it was turned into a district in 1984. Of the five upazilas of the district panchbibi is the largest (278.53 sq km, it occupies 28.85% of the total area of the district) and akkelpur is the smallest upazila (139.47 sq km).</p>', 'Mohammad Salam Kabir, PPM', '1564550367joy.jpg', 'Welcome to the official website of Bangladesh police, Rajshahi Range. As a professional law enforcing agency our objective is to prevent and control crime, detection of crime and to the apprehend the criminals before the learned court. With the advancement of ICT, modus operandi and criminal behaviors are being evolved. So police need to update and upgrade with it. Modern policing is community based and pro people oriented.  Bangladesh police is long being working to transform itself from a so called ‘police force’ to a “police service”. For this regard “digital policing” would be helpful to serve the people. This new approach would surely  reduce the crime rates which will make Bangladesh a better and safer place. Aligning with the Bangladesh Government policy of the vision 2021 and 2041, we are progressively marching ahead to provide cost effective and sustainable ICT based police services to the community and trying to win the trust and confidence of the people. I hope this website would be able to facilitate the people to interact with the ICT based activity of the police in Rajshahi Range. \r\n\r\nI also believe that this website would be able to implement the vision 2021 and the dream of digital Bangladesh.', '2018-11-06 04:36:32', '2019-07-31 16:28:23', NULL),
(9, 'আরআরএফ রাজশাহী', 'RRF Rajshahi', '1541592001raj_cover.jpg', NULL, NULL, NULL, NULL, '2018-11-06 04:36:37', '2019-07-10 11:03:00', '2019-07-14 00:10:25'),
(16, 'সিআইডি', 'CID', '1564397975cid-cover-image.jpeg', '<p>Criminal Investigation Department (CID) is one of the ancient and specialized units of Bangladesh Police. It is the apex body of investigation of Bangladesh Police as well as Bangladesh government. Investigation of scheduled cases suggested by laws and cases instructed from courts is the basic function of CID. CID also undertakes the investigation of specialized crimes that require technical expertise. Apart from investigation there are some special functions too, through which CID assists other organs of the Bangladesh government through providing expert opinion in various cases.</p><p><br></p>', 'Md. Shahriar Rahman', '1564397975sp-cid.jpg', 'I would like to extend my heartfelt and warmest welcome to the official website of Bangladesh police, Rajshahi Range. We are dedicated to crime prevention, crime control and crime detection in bringing the offenders before judicial system. But with the advancement of ICT, crime patterns and criminal behaviors are subjected to change. Accordingly traditional policing is changing to keep peace with the criminal behavior and activity. Now a days, policing is community based, problem solving and pro active oriented. Bangladesh police is working to transform itself from a police force to a police service and in this regard implementation of the concept \"digital policing\" would help in meeting the objective to serve the people. It is expected that the approach of digital policing will assist to develop a new model of effective policing to pursue the criminals, protect the vulnerable and surely to reduce the rate of crimes to make Bangladesh a better and safer place to live in which is the ultimate vision of Bangladesh police. Alighning with the policy of vision 2021 and digital Bangladesh, Bangladesh police is progressively marching ahead to provide cost effective and sustainable ICT based services to the community and help to win the trust and confidence of the people. I hope this website would be able to facilitate the people to interact with the ICT based activity of the police of Rajshahi Range. I also hope and believe that this website would be able to implement the vision 2021 and the dream of digital Bangladesh.', '2019-07-29 21:59:35', '2019-07-29 21:59:35', NULL),
(17, 'পিবিআই', 'PBI', '1564398880pbi-cover.jpeg', '<p>পুলিশ ব্যুরো অব ইনভেস্টিগেশন (পিবিআই) বাংলাদেশ পুলিশের বিশেষায়িত একটি দল নিয়ে মার্কিন যুক্তরাষ্ট্রের ফেডারেল ব্যুরো অব ইনভেস্টিগেশন (এফবিআই) এর আদলে তৈরী হয়েছে। পিবিআইয়ের কর্মকর্তারা এফবিআই ও মার্কিন পুলিশের বিশেষ শাখা থেকে প্রশিক্ষণ নিয়েছেন। পুলিশের এমন শাখা ভারতে সেন্ট্রোল ব্যুরো অব ইনভেস্টিগেশন (সিবিআই) নামে পরিচিত।</p><p>২০১১ সালে পুলিশ এ্যাক্টের একটি ধারার ক্ষমতাবলে স্বরাষ্ট্র মন্ত্রণালয়ের আদেশে পিবিআই গঠিত হয়। মেধাবী ও চৌকস পুলিশ অফিসারদের পিবিআইতে যোগদান করিয়ে বিদেশে প্রশিক্ষণের জন্য পাঠানো হয় এবং দেশে ও বিদেশ থেকে প্রশিক্ষক এনে প্রশিক্ষণ দেয়া হয়।</p><p>পূর্ণাঙ্গ যাত্রা শুরু হয় ১৮ সেপ্টেম্বর ২০১২ সালে। গুরুত্বপূর্ণ মামলা তদন্তে পুলিশ ব্যুরো অফ ইনভেস্টিগেশন গঠন করা হয়। খুন, ডাকাতি, অপহরণ ও মুক্তিপণ আদায়, চোরাচালান ও কালোবাজারি, মানব পাচার, সাইবার ক্রাইম, ধর্ষণ, অস্ত্র, বিস্ফোরক দ্রব্যসংক্রান্তসহ ১৫ ধরনের মামলা তদন্ত করতে পারে পিবিআই। ২০১৭ সালে ঢাকায় র‍্যাবের ক্যাম্পে বোমা বিস্ফোরণ ও সীতাকুন্ডিয়ার জঙ্গি হামলার মতো সন্ত্রাসী হামলার প্রমাণ সংগ্রহ করার দায়িত্ব দেওয়া হয় পুলিশ ব্যুরো অব ইনভেস্টিগেশনের (পিবিআই) উপর।</p>', 'Md. Zulfikar Ali Haidar', '1564398880sp-pbi.jpg', 'I would like to extend my heartfelt and warmest welcome to the official website of Bangladesh police, Rajshahi Range. We are dedicated to crime prevention, crime control and crime detection in bringing the offenders before judicial system. But with the advancement of ICT, crime patterns and criminal behaviors are subjected to change. Accordingly traditional policing is changing to keep peace with the criminal behavior and activity. Now a days, policing is community based, problem solving and pro active oriented. Bangladesh police is working to transform itself from a police force to a police service and in this regard implementation of the concept \"digital policing\" would help in meeting the objective to serve the people. It is expected that the approach of digital policing will assist to develop a new model of effective policing to pursue the criminals, protect the vulnerable and surely to reduce the rate of crimes to make Bangladesh a better and safer place to live in which is the ultimate vision of Bangladesh police. Alighning with the policy of vision 2021 and digital Bangladesh, Bangladesh police is progressively marching ahead to provide cost effective and sustainable ICT based services to the community and help to win the trust and confidence of the people. I hope this website would be able to facilitate the people to interact with the ICT based activity of the police of Rajshahi Range. I also hope and believe that this website would be able to implement the vision 2021 and the dream of digital Bangladesh.', '2019-07-29 22:14:40', '2019-07-29 22:14:40', NULL),
(18, 'হাইওয়ে পুলিশ', 'Highway Police', '1564399363highway-police.jpeg', '<p>Highway Police is a specialized unit of Bangladesh Police responsible for law and order on Highways. The unit is led by a Deputy inspector general of Bangladesh Police.</p><p>The Highway Police was established on 11 June 2005 by the Bangladesh Nationalist Party government. It can only investigate crimes under a few sections of Penal Code 1860 and the Motor Vehicle Ordinance, 1983. It has jurisdiction over 5,487 kilometre national highways and 4,165 kilometre of local roads.</p><p>On 28 August 2018, Highway Police suspended the Officer in Charge of Bonpara Highway Police Station GM Shamsun Nur after bus, without proper registration papers, was involved in a fatal road accident in which 15 people died.</p>', 'Mohammad Jahangir Hossain', '1564399363sp-highway-police.jpg', 'অর্থনৈতিক উন্নয়নের অন্যতম ভিত্তি হল উন্নত যোগাযোগ ব্যবস্থা। বাংলাদেশের প্রেক্ষাপটে ৭৩% যাত্রী ও  ৮৩% মালামাল সড়ক পথে পরিবাহিত হয়ে থাকে। দেশের ক্রমবর্ধমান অর্থনৈতিক প্রবৃদ্ধির সাথে সাথে পাল্লা দিয়ে বেড়ে চলেছে যানবাহনের সংখ্যা। এই বর্ধিত সংখ্যা মহাসড়কে দুর্ঘটনা, যানজট এবং বিশৃঙ্খলা সৃষ্টির একটি কার্যশীল উপাদান। দেশের জনগনের নিরাপত্তা ও শৃঙ্খলা রক্ষায় নিয়োজিত পুলিশ বাহিনীর জন্য সড়কের শৃঙ্খলা একটি বড় চ্যালেঞ্জ। এই চ্যালেঞ্জ মোকাবেলার লক্ষ্যে ২০০৫ সালে হাইওয়ে পুলিশের সৃষ্টি হয়। ২০০৯ সালে হাইওয়ে বিধি প্রণয়ন, ২০১৭ সালে চোরাচালান ও মাদকদ্রব্য মামলার তদন্ত ক্ষমতা পাওয়ায় এবং ২০১৮ সালে পৌর সভা এলাকা অধীভূক্ত করায় বর্তমানে হাইওয়ে পুলিশ স্বাচ্ছন্দের সাথে সংশ্লিষ্ট রেঞ্জ পুলিশের সাথে সমন্বয় পূর্বক কাজ করে যাচ্ছে। হাইওয়ে পুলিশ বগুড়া রিজিয়ন, বগুড়া, রাজশাহী বিভাগ এবং রংপুর বিভাগের ১৬ টি জেলার জাতীয় মহাসড়কের ১০৩৫ কিঃ মিঃ ও আঞ্চলিক মহাসড়কের ৯২৫ কিঃ মিঃ এলাকায় শৃঙ্খলা আনয়ন, নিরাপত্তা বিধান, চোরাচালান ও মাদকদ্রব্য প্রতিরোধে কাজ করছে। রাজশাহী রেঞ্জের ওয়েবসাইট চালু হওয়া একটি অন্যন্য ঘটনা যার মাধ্যমে ২১ শতকের চ্যালেঞ্জ মোকাবেলা ও ডিজিটালাইজেশনে রেঞ্জটি আরও একধাপ এগিয়ে গেল। এটি যেমন একদিকে সারাবিশ্বের সামনে রাজশাহী রেঞ্জের পরিচয় এবং কার্যক্রম তুলে ধরবে অন্যদিকে এ থেকে ভূক্তভুগিরা প্রয়োজনীয় তথ্য, নির্দেশনা এবং কর্মকৌশল সম্পর্কে ধারণা গ্রহণ করতে পারবে। রেঞ্জ ডিআইজি স্যারের দূরদর্শী নির্দেশনায় যারা এই কার্যটি সম্পাদন করেছেন তাদেরকে আমি ধন্যবাদ জানাচ্ছি পাশাপাশি রাজশাহী রেঞ্জের ও হাইওয়ে পুলিশের সাফল্য কামনা করছি।', '2019-07-29 22:22:43', '2019-07-29 22:22:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `downloadables`
--

DROP TABLE IF EXISTS `downloadables`;
CREATE TABLE IF NOT EXISTS `downloadables` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `downloadables_title_index` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `downloadables`
--

INSERT INTO `downloadables` (`id`, `title`, `file`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Some title here', '1542223514Hena_by_Kazi_Nazrul_Islam.PDF', 5, 1, '2018-11-14 19:25:15', '2018-11-14 19:25:15', NULL),
(2, 'Some updated title here', '1542258549second time uploading.PDF', 5, 1, '2018-11-14 19:25:50', '2018-11-15 05:42:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `cover_img` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gallery_name`, `cover_img`, `video`, `caption`, `description`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Demo gallery 1', '154123575101.jpg', NULL, 'Some caption here', ' <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ', 1, 5, '2018-11-03 03:02:31', '2019-07-22 13:11:34', '2019-07-22 13:11:34'),
(3, 'Chapai Nawabganj District', '1541249718cpi_cover.jpg', NULL, 'Chapai Nawabganj', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum,</p>', 1, 5, '2018-11-03 06:55:18', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(4, 'রাজশাহী জেলা পুলিশ থানাসমূহ', '1543234154Untitled-26.jpg', NULL, 'পুলিশ সুপারের কার্যালয়, রাজশাহী', '<p><br></p>', 1, 5, '2018-11-26 23:13:44', '2019-07-22 13:13:14', NULL),
(5, 'প্রশিক্ষণ কর্মশালার শুভ উদ্বোধন', '156380087066477035_756232398112837_661913589128364032_n.jpg', NULL, 'ORGANIZATIONAL RESOURCE PLANNING (ORP)', 'অদ্য ১৪/৭/২০১৯ তারিখে পুলিশ হেডকোয়ার্টার্স, ঢাকা কর্তৃক পরিচালিত \'\'ORGANIZATIONAL RESOURCE PLANNING (ORP) এর আওতাধীন Software Phase-1 &amp; 2 এর অনুষ্ঠিত প্রশিক্ষণ কর্মশালার শুভ উদ্বোধন করেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম(বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়।</p><p>উক্ত প্রশিক্ষণে রাজশাহী রেঞ্জাধীন ৯টি জেলা/ইউনিটসহ রেলওয়ে, এপিবিন, পিবিআই, আরএমপি ও পুলিশ একাডেমী, সারদার অতিরিক্ত পুলিশ সুপার, সহকারী পুলিশ সুপারবৃন্দ এবং অন্যান্য পদবীর অফিসার ও ফোর্স অংশগ্রহণ করেন।<br></p><p>প্রধান অতিথির ভাষণে ডিআইজি মহোদয় ICT বিষয়ে গুরুত্ব আরোপসহ সকল প্রশিক্ষণার্থীকে নিষ্ঠার সাথে প্রশিক্ষণ সমাপ্ত করে উক্ত প্রশিক্ষণ লব্ধ জ্ঞান নিজ নিজ কর্মস্থলে প্রয়োগের মাধ্যমে সরকারী দায়িত্ব পালনের নির্দেশ প্রদান করেন।', 1, 5, '2019-07-22 13:07:50', '2019-07-22 13:07:50', NULL),
(6, 'রাজশাহী জেলা পুলিশ থানাসমূহ', '15645521491.jpg', NULL, 'Community Policing', '<p><br></p>', 1, 9, '2019-07-31 16:49:09', '2019-07-31 16:50:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

DROP TABLE IF EXISTS `gallery_images`;
CREATE TABLE IF NOT EXISTS `gallery_images` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `image_path` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `gallery_id`, `image_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(17, 3, '1541249718news4.jpg', '2018-11-03 06:55:18', '2018-11-27 00:15:20', '2018-11-27 00:15:20'),
(16, 3, '1541249718news3.jpg', '2018-11-03 06:55:18', '2018-11-27 00:15:25', '2018-11-27 00:15:25'),
(15, 3, '1541249718news2.jpg', '2018-11-03 06:55:18', '2018-11-27 00:15:30', '2018-11-27 00:15:30'),
(14, 3, '1541249718news1.jpg', '2018-11-03 06:55:18', '2018-11-27 00:15:35', '2018-11-27 00:15:35'),
(13, 2, '08.jpg', '2018-11-03 03:02:31', '2019-07-22 13:11:34', '2019-07-22 13:11:34'),
(12, 2, '07.jpg', '2018-11-03 03:02:31', '2019-07-22 13:11:34', '2019-07-22 13:11:34'),
(11, 2, '04.jpg', '2018-11-03 03:02:31', '2019-07-22 13:11:34', '2019-07-22 13:11:34'),
(18, 4, '1543230824Untitled-1.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(19, 4, '1543230824Untitled-3.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(20, 4, '1543230824Untitled-4.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(21, 4, '1543230824Untitled-5.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(22, 4, '1543230824Untitled-6.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(23, 4, '1543230824Untitled-7.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(24, 4, '1543230824Untitled-8.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(25, 4, '1543230824Untitled-9.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(26, 4, '1543230824Untitled-10.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(27, 4, '1543230824Untitled-11.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(28, 4, '1543230824Untitled-12.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(29, 4, '1543230824Untitled-13.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(30, 4, '1543230824Untitled-14.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(31, 4, '1543230824Untitled-15.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(32, 4, '1543230824Untitled-16.jpg', '2018-11-26 23:13:44', '2019-07-22 13:15:02', '2019-07-22 13:15:02'),
(33, 4, '1543230824Untitled-17.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(34, 4, '1543230824Untitled-18.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(35, 4, '1543230824Untitled-19.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(36, 4, '1543230824Untitled-20.jpg', '2018-11-26 23:13:44', '2018-11-26 23:13:44', NULL),
(37, 4, '1543230887Untitled-21.jpg', '2018-11-26 23:14:47', '2018-11-26 23:14:47', NULL),
(38, 4, '1543230887Untitled-22.jpg', '2018-11-26 23:14:47', '2018-11-26 23:14:47', NULL),
(39, 4, '1543230887Untitled-23.jpg', '2018-11-26 23:14:47', '2018-11-26 23:14:47', NULL),
(40, 4, '1543230887Untitled-24.jpg', '2018-11-26 23:14:47', '2018-11-26 23:14:47', NULL),
(41, 4, '1543230887Untitled-25.jpg', '2018-11-26 23:14:47', '2018-11-26 23:14:47', NULL),
(42, 4, '1543230887Untitled-26.jpg', '2018-11-26 23:14:47', '2018-11-26 23:14:47', NULL),
(43, 4, '1543230887Untitled-27.jpg', '2018-11-26 23:14:47', '2018-11-26 23:14:47', NULL),
(44, 4, '1543230887Untitled-28.jpg', '2018-11-26 23:14:47', '2019-07-22 13:15:14', '2019-07-22 13:15:14'),
(45, 4, '1543230887Untitled-29.jpg', '2018-11-26 23:14:47', '2019-07-22 13:15:19', '2019-07-22 13:15:19'),
(46, 4, '1543230887Untitled-30.jpg', '2018-11-26 23:14:47', '2018-11-26 23:14:47', NULL),
(47, 4, '1543230887UntitledASERgrs-1.jpg', '2018-11-26 23:14:47', '2018-11-26 23:14:47', NULL),
(48, 3, '1543234597(1).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(49, 3, '1543234597(2).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(50, 3, '1543234597(3).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(51, 3, '1543234597(4).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(52, 3, '1543234597(5).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(53, 3, '1543234597(6).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(54, 3, '1543234597(7).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(55, 3, '1543234597(8).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(56, 3, '1543234597(9).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(57, 3, '1543234597(10).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(58, 3, '1543234597(11).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(59, 3, '1543234597(12).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(60, 3, '1543234597(13).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(61, 3, '1543234597(14).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(62, 3, '1543234597(15).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(63, 3, '1543234597(16).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(64, 3, '1543234597(17).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(65, 3, '1543234597(18).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(66, 3, '1543234597(19).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(67, 3, '1543234597(20).jpg', '2018-11-27 00:16:37', '2019-07-22 13:15:55', '2019-07-22 13:15:55'),
(68, 5, '156380087067086810_756232461446164_7304832372187332608_n.jpg', '2019-07-22 13:07:50', '2019-07-22 13:07:50', NULL),
(69, 5, '156380087067174130_756232628112814_5327096921330810880_n.jpg', '2019-07-22 13:07:50', '2019-07-22 13:07:50', NULL),
(70, 5, '156380087067244489_756232524779491_5707908109276545024_n.jpg', '2019-07-22 13:07:50', '2019-07-22 13:07:50', NULL),
(71, 6, '15645521492.jpg', '2019-07-31 16:49:09', '2019-07-31 16:49:09', NULL),
(72, 6, '15645521493.jpg', '2019-07-31 16:49:09', '2019-07-31 16:49:09', NULL),
(73, 6, '15645521494.jpg', '2019-07-31 16:49:09', '2019-07-31 16:49:09', NULL),
(74, 6, '15645521495.jpg', '2019-07-31 16:49:09', '2019-07-31 16:49:09', NULL),
(75, 6, '15645521496.jpg', '2019-07-31 16:49:09', '2019-07-31 16:49:09', NULL),
(76, 6, '15645521497.jpg', '2019-07-31 16:49:09', '2019-07-31 16:49:09', NULL),
(77, 6, '15645521498.jpg', '2019-07-31 16:49:09', '2019-07-31 16:49:09', NULL),
(78, 6, '15645521499.jpg', '2019-07-31 16:49:09', '2019-07-31 16:49:09', NULL),
(79, 6, '156455214910.jpg', '2019-07-31 16:49:09', '2019-07-31 16:49:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jurisdictionlevels`
--

DROP TABLE IF EXISTS `jurisdictionlevels`;
CREATE TABLE IF NOT EXISTS `jurisdictionlevels` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jurisdictionlevels`
--

INSERT INTO `jurisdictionlevels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'DIG office', '2018-10-12 18:00:00', '2018-10-12 18:00:00'),
(2, 'District', '2018-10-12 18:00:00', '2018-10-12 18:00:00'),
(3, 'Thana', '2018-10-12 18:00:00', '2018-10-12 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jurisdiction_contacts`
--

DROP TABLE IF EXISTS `jurisdiction_contacts`;
CREATE TABLE IF NOT EXISTS `jurisdiction_contacts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jurisdiction_level_id` int(11) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `thana_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `designation` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=372 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jurisdiction_contacts`
--

INSERT INTO `jurisdiction_contacts` (`id`, `jurisdiction_level_id`, `district_id`, `thana_id`, `user_id`, `designation`, `person_name`, `mobile`, `phone`, `fax`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 2, 1, NULL, 5, 'পুলিশ সুপার, রাজশাহী', 'জনাব মোঃ শহিদুল্লাহ, পিপিএম', '০১৭১৩-৩৭৩৭৯২', '০৭২১-০০০০০০', NULL, NULL, '2018-11-10 10:23:05', '2019-07-24 12:18:54', NULL),
(10, 1, NULL, NULL, 5, 'Addl. DIG (Crime & Operations)', 'Md. Nisharul Arif', '01769- 691564', '0721 770705', NULL, NULL, '2018-11-10 08:41:05', '2019-07-22 10:57:03', NULL),
(9, 1, NULL, NULL, 5, 'Deputy Inspector General', 'A.K.M HAFIZ AKHTER - bpm (bar)', '01713 373788', '0721- 772309', NULL, 'digrajshahi@police.gov.bd', '2018-11-10 08:40:10', '2019-07-22 10:55:41', NULL),
(14, 2, 1, NULL, 11, 'অতিরিক্ত পুলিশ সুপার, (প্রশাসন ও অপরাধ)', 'জনাব মাহমুদুল হাসান', '০১৭১৩-৩৭৩৭৯৩', NULL, NULL, NULL, '2018-11-11 19:07:27', '2018-11-11 19:07:27', NULL),
(15, 2, 1, NULL, 11, 'অতিরিক্ত পুলিশ সুপার, জেলা বিশেষ শাখা', 'জনাব মোহাম্মদ মতিউর রহমান সিদ্দিকী', '০১৭১৩-৩৭৩৭৯৪', NULL, NULL, NULL, '2018-11-11 19:13:31', '2018-11-11 19:13:31', NULL),
(16, 2, 1, NULL, 11, 'অতিরিক্ত পুলিশ সুপার, সদর সার্কেল', 'জনাব সুমন দেব', '০১৭১৩-৩৭৩৭৯৮', NULL, NULL, NULL, '2018-11-11 19:15:40', '2018-11-11 19:15:40', NULL),
(17, 2, 1, NULL, 11, 'অতিরিক্ত পুলিশ সুপার, পুঠিয়া সার্কেল', 'জনাব মোঃ আবুল কালাম সাহিদ', '০১৭১৩-৩৭৩৭৯৭', NULL, NULL, NULL, '2018-11-11 19:19:03', '2018-11-11 19:19:03', NULL),
(18, 2, 1, NULL, 11, 'অতিরিক্ত পুলিশ সুপার, ইনসার্ভিস ট্রেনিং সেন্টার, পুলিশ লাইন্স', 'জনাব কামরুন নাহার', '০১৭৬৯-৬৯৪৪৭৮', NULL, NULL, NULL, '2018-11-11 19:22:45', '2018-11-11 19:22:45', NULL),
(19, 2, 1, NULL, 11, 'সিনিয়র সহকারী পুলিশ সুপার, জেলা বিশেষ শাখা', 'জনাব মোঃ নূরে আলম', '০১৭১৩-৩৭৩৭৯৫', NULL, NULL, NULL, '2018-11-11 19:25:53', '2018-11-11 19:25:53', NULL),
(20, 2, 1, NULL, 11, 'সিনিয়র সহকারী পুলিশ সুপার (সদর)', 'জনাব মোঃ আব্দুর রাজ্জাক খান', '০১৭১৩-৩৭৩৭৯৬', NULL, NULL, NULL, '2018-11-11 19:28:23', '2018-11-11 19:28:23', NULL),
(21, 2, 1, NULL, 11, 'সহকারী পুলিশ সুপার, গোদাগাড়ী সার্কেল', 'জনাব মোঃ লুৎফর রহমান', '০১৭৬৯-৬৯১১১২', NULL, NULL, NULL, '2018-11-11 19:29:42', '2018-11-11 19:45:29', NULL),
(22, 2, 1, NULL, 11, 'সহকারী পুলিশ সুপার, এসএএফ', 'জনাব মোঃ রায়হান ইব্নে রহমান', '০১৭১১-৭০০৬০৮', NULL, NULL, NULL, '2018-11-11 19:32:50', '2018-11-11 19:32:50', NULL),
(23, 2, 1, NULL, 11, 'নিরস্ত্র পুলিশ পরিদর্শক, পুলিশ অফিস, রাজশাহী (প্রেষণে পুলিশ হেডকোয়ার্টার্স, ঢাকা)', 'জনাব মোঃ তাজবীনূর রহমান তরফদার', '০১৭১৫-২০৫৬৩৬', NULL, NULL, NULL, '2018-11-11 19:58:39', '2018-11-11 20:00:46', NULL),
(24, 2, 1, NULL, 11, 'নিরস্ত্র পুলিশ পরিদর্শক, প্রশাসন/অপরাধ, পুলিশ অফিস, রাজশাহী', 'জনাব মোঃ আব্দুল মাসুদ', '০১৭২১-০৩৫৭৩১', NULL, NULL, NULL, '2018-11-11 20:00:22', '2018-11-11 20:00:22', NULL),
(25, 2, 1, NULL, 11, 'ডিআইও (১), জেলা বিশেষ শাখা, রাজশাহী', 'জনাব মোঃ আকমল হোসেন', '০১৭১১-৩৯০৬১২', NULL, NULL, NULL, '2018-11-11 20:02:17', '2018-11-11 20:02:17', NULL),
(26, 3, 1, 7, 11, 'অফিসার ইনচার্জ, গোদাগাড়ী মডেল থানা', 'জনাব মোঃ জাহাঙ্গীর আলম', '০১৭১৩-৩৭৩৮০১', '০৭২২৫-৫৬০০৩', '০৭২২৫-৫৬০০৩', 'ocraj.god@police.gov.bd', '2018-11-12 18:50:27', '2019-08-05 23:43:43', NULL),
(27, 3, 1, 7, 11, 'ইন্সপেক্টর (তদন্ত) গোদাগাড়ী মডেল থানা', 'জনাব মোঃ হাশমত আলী', '০১৭১৩-৮২০৭৭৫', '০৭২২৫-৫৬০০৩', '০৭২২৫-৫৬০০৩', NULL, '2018-11-12 18:52:50', '2019-08-05 23:45:56', NULL),
(28, 3, 1, 14, 11, 'অফিসার ইনচার্জ, তানোর থানা', 'জনাব মোঃ রেজাউল ইসলাম', '০১৭১৩৩৭৩৮০২', '০৭২২৯-৫৬০১১', '০৭২২৯-৫৬০১১', 'ocraj.tan@police.gov.bd', '2018-11-12 18:54:22', '2019-08-05 23:41:50', NULL),
(29, 3, 1, 14, 11, 'ইন্সপেক্টর (তদন্ত), তানোর থানা', 'জনাব মোঃ রাকিবুল হাসান', '০১৭১১-০৩৯২৬৫', '০৭২২৯-৫৬০১১', '০৭২২৯-৫৬০১১', NULL, '2018-11-12 18:55:50', '2019-08-05 23:40:40', NULL),
(30, 3, 1, 8, 11, 'অফিসার ইনচার্জ, মোহনপুর থানা', 'জনাব মোস্তাক আহম্মেদ', '০১৭১৩৩৭৩৮০৩', '০৭২২৬-৫৬০০১', '০৭২২৬-৫৬০০১', 'ocraj.moh@police.gov.bd', '2018-11-12 18:58:07', '2019-08-05 23:31:53', NULL),
(31, 3, 1, 8, 11, 'ইন্সপেক্টর (তদন্ত), মোহনপুর থানা', 'জনাব মোঃ আফজাল হোসেন', '০১৭২০-৫০৩৭১০', '০৭২২৬--৫৬০০১', '০৭২২৬--৫৬০০১', NULL, '2018-11-12 18:59:28', '2019-08-05 23:34:01', NULL),
(32, 3, 1, 15, 11, 'অফিসার ইনচার্জ, পুঠিয়া থানা', 'জনাব সাকিল উদ্দীন আহমেদ', '০১৭১৩৩৭৩৮০৪', '০৭২২৮-৫৬১০৩', '০৭২২৮-৫৬১০৩', 'ocraj.put@police.gov.bd', '2018-11-12 19:01:10', '2019-08-05 22:55:08', NULL),
(33, 3, 1, 15, 11, 'ইন্সপেক্টর (তদন্ত), পুঠিয়া থানা', 'জনাব মোঃ মহিনুল ইসলাম', '০১৭৬৯-৬৯১১২৩', '০৭২২৮-৫৬১০৩', '০৭২২৮-৫৬১০৩', NULL, '2018-11-12 19:02:30', '2019-08-05 22:58:57', NULL),
(34, 3, 1, 9, 11, 'অফিসার ইনচার্জ, বাগমারা থানা', 'জনাব নাছিম আহম্মেদ', '০১৭১৩৩৭৩৮০৫', '০৭২২২-৫৬০০৬', '০৭২২২-৫৬০০৬', 'ocraj.bam@police.gov.bd', '2018-11-12 19:06:55', '2019-08-05 23:23:13', NULL),
(35, 3, 1, 9, 11, 'ইন্সপেক্টর (তদন্ত), বাগমারা থানা', 'জনাব মোঃ মিজানুর রহমান', '০১৭৬৯-৬৯১১২১', '০৭২২২-৫৬০০৬', '০৭২২২-৫৬০০৬', NULL, '2018-11-12 19:08:21', '2019-08-05 23:24:43', NULL),
(36, 3, 1, 16, 11, 'অফিসার ইনচার্জ, দূর্গাপুর থানা', 'জনাব মোঃ আব্দুল মোতালেব', '০১৭১৩৩৭৩৮০৬', '০৭২২৪-৫৬০০৪', '০৭২২৪-৫৬০০৪', 'ocraj.dur@police.gov.bd', '2018-11-12 19:10:52', '2019-08-05 23:16:09', NULL),
(37, 3, 1, 10, 11, 'অফিসার ইনচার্জ, চারঘাট মডেল থানা', 'জনাব মোঃ নজরুল ইসলাম', '০১৭১৩৩৭৩৮০৭', '০৭২৩-৫৬০৩৩', '০৭২৩-৫৬০৩৩', NULL, '2018-11-12 19:12:18', '2019-08-05 23:13:15', NULL),
(38, 3, 1, 10, 11, 'ইন্সপেক্টর (তদন্ত), চারঘাট মডেল থানা', 'জনাব মোঃ আব্দুল বারী', '০১৭২৪-৬৬৮৬৮৬', '০৭২২৩-৫৬০৩৩', '০৭২২৩-৫৬০৩৩', NULL, '2018-11-12 19:14:03', '2019-08-05 23:08:55', NULL),
(39, 3, 1, 17, 11, 'অফিসার ইনচার্জ, বাঘা থানা', 'জনাব মোঃ মহসীন আলী', '০১৭১৩৩৭৩৮০৮', '০৭২৩৩-৫৬০১২', '০৭২৩৩-৫৬০১২', 'ocraj.bag@police.gov.bd', '2018-11-12 19:15:33', '2019-08-05 23:04:37', NULL),
(40, 3, 1, 17, 11, 'ইন্সপেক্টর (তদন্ত), বাঘা থানা', 'জনাব মোঃ আব্দুল ওয়াহাব', '০১৭৬৯৬৯১১২৫', '০৭২৩৩-৫৬০১২', '০৭২৩৩-৫৬০১২', NULL, '2018-11-12 19:16:57', '2019-08-05 23:02:52', NULL),
(41, 2, 2, NULL, 13, 'পুলিশ সুপার, চাঁপাইনবাবগঞ্জ', 'জনাব টি এম মোজাহিদুল ইসলাম বিপিএম', '01713-373813', '০৭৮১-৫২৩২৩', '০৭৮১-৫২৫৬১', 'spchapainawabganj@police.gov.bd', '2019-03-06 05:05:04', '2019-03-06 05:21:06', NULL),
(42, 2, 2, NULL, 13, 'অতিরিক্ত পুলিশ সুপার, চাঁপাইনবাবগঞ্জ', 'জনাব মোহাম্মদ মাহবুব আলম খান পিপিএম', '01713-373814', '078152323', '078152561', 'stenochapai@gmail.com', '2019-03-06 05:22:22', '2019-03-06 05:22:22', NULL),
(43, 2, 2, NULL, 13, 'অতিরিক্ত পুলিশ সুপার, নবাবগঞ্জ সার্কেল, চাঁপাইনবাবগঞ্জ', 'জনাব মোঃ ইকবাল হোছাইন পিপিএম', '01713-373816', NULL, NULL, 'stenochapai@gmail.com', '2019-03-06 05:23:48', '2019-03-06 05:23:48', NULL),
(46, 2, 2, NULL, 13, 'ডিআইও(১), ডিএসবি, চাঁপাইনবাবগঞ্জ।', 'জনাব মোঃ সানাউল হক', '০১৭১৩৩৭৩৮১৮', '০৭৮১৫২২৯০', NULL, 'dsbchapainawabganj@police.gov.bd', '2019-03-06 05:29:15', '2019-03-06 05:29:15', NULL),
(47, 2, 2, NULL, 13, 'ডিআইও(২), ডিএসবি, চাঁপাইনবাবগঞ্জ', 'জনাব মোঃ মিন্টু রহমান', '01741-700778', '০৭৮১৫২২৯০', NULL, NULL, '2019-03-06 05:32:03', '2019-03-06 05:32:03', NULL),
(44, 2, 2, NULL, 13, 'অতিরিক্ত পুলিশ সুপার (গোমস্তাপুর সার্কেল) (গোমস্তাপুর, নাচোল, ভোলাহাট )', NULL, '০১৭১৩-৩৭৩৮১৭', '০৭৮২৩-৭৪০৩০', NULL, NULL, '2019-03-06 05:45:55', '2019-03-06 05:45:55', NULL),
(45, 2, 2, NULL, 13, 'সহকারী পুলিশ সুপার (হেডকোয়ার্টার), চাঁপাই নবাবগঞ্জ', NULL, '০১৭১৩-৩৭৩৮১৫', '০৭৮১-৫২২৯৩', NULL, NULL, '2019-03-06 05:48:26', '2019-03-06 05:48:26', NULL),
(50, 2, 2, NULL, 13, 'অফিসার ইন চার্জ (ডিবি), চাঁপাই নবাবগঞ্জ', NULL, '০১৭১৩-৩৭৩৮২৪', '০৭৮১-৫১৭৮৬', NULL, NULL, '2019-03-06 05:51:18', '2019-03-06 05:51:18', NULL),
(51, 2, 2, NULL, 13, 'কোর্ট ইন্সপেক্টর, চাঁপাই নবাবগঞ্জ', NULL, '০১৭১৩-৩৭৩৮২৫', '০৭৮১-৫২২০৩', NULL, NULL, '2019-03-06 05:52:09', '2019-03-06 05:52:09', NULL),
(52, 2, 3, NULL, 14, 'পুলিশ সুপার, নাটোর', 'সাইফুল্লাহ আল মামুন, বিপিএম,পিপিএম', '০১৭১৩৩৭৩৮৫১', '০৭৭১-৬৬৭৩১', '০৭৭১-৬২৩২৮', 'spnatore@police.gov.bd', '2019-03-06 05:58:11', '2019-03-06 05:58:11', NULL),
(53, 2, 3, NULL, 14, 'অতিরিক্ত পুলিশ সুপার, নাটোর', 'মোঃ আকরামুল হোসেন', '০১৭১৩-৩৭৩৮৫২', '০৭৭১-৬৬৯৪৫', NULL, NULL, '2019-03-06 06:02:51', '2019-07-20 11:27:37', NULL),
(54, 2, 3, NULL, 14, 'অতিরিক্ত পুলিশ সুপার(সদর সার্কেল), (সদর, বাগাতিপাড়া, নলডাঙ্গা) নাটোর', 'মোঃ আবুল হাসনাত', '01713373854', '০৭৭১-৬৬৯৫০', NULL, NULL, '2019-03-06 06:05:48', '2019-03-06 06:05:48', NULL),
(55, 2, 3, NULL, 14, 'অতিরিক্ত পুলিশ সুপার (বড়াইগ্রাম সার্কেল), (বড়াইগ্রাম, লালপুর), নাটোর', 'মোহাম্মদ হারুন অর রশিদ', '০১৭১৩৩৭৩৮৫৫', NULL, NULL, 'barcarnat@police.gov.bd', '2019-03-06 06:06:55', '2019-03-06 06:06:55', NULL),
(56, 2, 3, NULL, 14, 'সিনিয়র সহকারী পুলিশ সুপার (হেডকোয়ার্টার), নাটোর', NULL, '০১৭১৩-৩৭৩৮৫৩', '০৭৭১-৬৬৯৬০', NULL, NULL, '2019-03-06 06:09:20', '2019-03-06 06:09:20', NULL),
(57, 2, 3, NULL, 14, 'সিনিয়র এএসপি সিংড়া সার্কেল', 'মীর আসাদুজ্জামান', '01769694283', '0772663011', NULL, 'johnny_k10@yahoo.com', '2019-03-06 06:10:07', '2019-03-06 06:10:07', NULL),
(58, 2, 3, NULL, 14, 'সহকারি পুলিশ সুপার(সদর), নাটোর', 'আবু হায়দার মোঃ ফয়জুর রহমান', '01713373853', '077166960', '077162328', NULL, '2019-03-06 06:10:56', '2019-03-06 06:10:56', NULL),
(59, 2, 3, NULL, 14, 'ডিআইও-1, ডিএসবি, নাটোর', 'মোহাম্মদ ইব্রাহিম', '01713373856', '077162262', '077162262', 'dsbnatore@police.gov.bd', '2019-03-06 06:12:57', '2019-07-20 11:28:24', '2019-07-20 11:28:24'),
(60, 2, 3, NULL, 14, 'পুলিশ পরিদর্শক, অপরাধ শাখা', 'মোঃ আমিনুর রহমান', '01711191360', '077162328', NULL, NULL, '2019-03-06 06:14:12', '2019-07-20 11:28:21', '2019-07-20 11:28:21'),
(61, 2, 3, NULL, 14, 'পুলিশ পরিদর্শক(ডিবি)', 'মোঃ মাহবুবুর রহমান', '01713373864', '077166918', NULL, NULL, '2019-03-06 06:14:49', '2019-07-20 11:28:17', '2019-07-20 11:28:17'),
(62, 2, 3, NULL, 14, 'কোর্ট পুলিশ পরিদর্শক, নাটোর', 'মোঃ নাসির উদ্দীন মন্ডল', '01713373865', '077162232', NULL, NULL, '2019-03-06 06:15:33', '2019-07-20 11:28:13', '2019-07-20 11:28:13'),
(63, 2, 4, NULL, 15, 'পুলিশ সুপার', 'জনাব মোঃ আলী আশরাফ ভূঞা বিপিএম', '০১৭১৩৩৭৪০৫৪', '051-78266', '০৫১-৬০৬৭৯', 'spbogra@police.gov.bd', '2019-03-07 10:49:19', '2019-03-07 10:49:19', NULL),
(64, 2, 4, NULL, 15, 'অতিরিক্ত পুলিশ সুপার (ইনসার্ভিস ট্রেনিং সেন্টার)', 'জনাব সফিজুল ইসলাম', '০১৭৬৯৬৯১০৮৬', NULL, NULL, NULL, '2019-03-07 10:50:27', '2019-03-07 10:50:27', NULL),
(65, 2, 4, NULL, 15, 'অতিরিক্ত পুলিশ সুপার (পূর্ব)', 'জনাব মোঃ আরিফুর রহমান মন্ডল বিপিএম(বার)', '০১৭১৩৩৭৪০৫৬', '০৫১-৬৯৮৪৮', '০৫১-৬০৬৭৯', 'addlspwestbogra@police.gov.bd', '2019-03-07 10:51:13', '2019-03-07 10:51:13', NULL),
(66, 2, 4, NULL, 15, 'অতিরিক্ত পুলিশ সুপার (পশ্চিম)', 'জনাব মোঃ আব্দুল জলিল পিপিএম', '০১৭১৩৩৭৪০৫৫', NULL, '০৫১-৬০৬৭৯', NULL, '2019-03-07 10:51:57', '2019-03-07 10:51:57', NULL),
(67, 2, 4, NULL, 15, 'অতিরিক্ত পুলিশ সুপার (ডিএসবি)', 'জনাব মোঃ মোকবুল হোসেন', '০১৭৬৯৬৯১০২৮', '051-78266', '০৫১-৬৫২৪৪', 'addlspdsbbogra@police.gov.bd', '2019-03-07 10:52:56', '2019-03-07 10:52:56', NULL),
(68, 2, 4, NULL, 15, 'অতিরিক্ত পুলিশ সুপার, সদর সার্কেল', 'জনাব সনাতন চক্রবর্তী', '০১৭১৩৩৭৪০৫৮', '০৫১-৬৪৯৫৯', '০৫১-৬০৬৭৯', 'aspacirclebogra@police.gov.bd', '2019-03-07 10:53:38', '2019-03-07 10:53:38', NULL),
(69, 2, 4, NULL, 15, 'সিনিয়র সহকারী পুলিশ সুপার, নন্দিগ্রাম সার্কেল', 'জনাব মোঃ আনোয়ার হোসেন', '০১৭১৩৩৭৪০৫৭', '০৫১-৬৫০৭৪', '০৫১-৬০৬৭৯', 'seniorasphqbogra@police.gov.bd', '2019-03-07 10:54:23', '2019-03-07 10:54:23', NULL),
(70, 2, 4, NULL, 15, 'সিনিয়র সহকারী পুলিশ সুপার, শিবগঞ্জ সার্কেল', 'জনাব মোঃ মশিউর রহমান মন্ডল', '০১৭৬৯৬৯৩৩১৮', '০৫১-৬৫০৯৮', NULL, NULL, '2019-03-07 10:54:56', '2019-03-07 10:54:56', NULL),
(71, 2, 4, NULL, 15, 'সিনিয়র সহকারী পুলিশ সুপার, গাবতলী সার্কেল', 'জনাব এস. এ. এম ফজল-ই-খুদা', '০১৭৬৯৬৯৩৩১৯', NULL, NULL, NULL, '2019-03-07 10:55:24', '2019-03-07 10:55:24', NULL),
(72, 2, 4, NULL, 15, 'সিনিয়র সহকারী পুলিশ সুপার, আদমদিঘী সার্কেল', 'জনাব মোঃ আলমগীর রহমান', '০১৭৬৯৬৯৩৩২০', NULL, NULL, NULL, '2019-03-07 10:56:04', '2019-03-07 10:56:04', NULL),
(73, 2, 4, NULL, 15, 'সহকারী পুলিশ সুপার, ইনসার্ভিস ট্রেনিং সেন্টার', 'জনাব হেলেনা আকতার', '০১৭২০৩৭৭০০২', '051-64464', '051-64464', NULL, '2019-03-07 10:56:41', '2019-03-07 10:56:41', NULL),
(74, 2, 4, NULL, 15, 'সহকারী পুলিশ সুপার (সদর)', 'জনাব মোঃ কুদরত –ই- খুদা শুভ', '০১৭১৩৩৭৪০৫৭', '051-65059', '051-60679', 'seniorasphqbogra@police.gov.bd', '2019-03-07 10:57:29', '2019-03-07 10:57:29', NULL),
(75, 2, 5, NULL, 16, 'পুলিশ সুপার', 'জনাব মোঃ ইকবাল হোসেন পিপিএম', '01713-373828', '0741-62420', '0741-62497', 'spnaogaon@police.gov.bd', '2019-03-07 10:59:59', '2019-03-07 10:59:59', NULL),
(76, 2, 5, NULL, 16, 'অতিরিক্ত পুলিশ সুপার(প্রশাসন), নওগাঁ', 'জনাব মুহাম্মদ রাশিদুল হক', '01713-373829', '০৭৪১–৬২২২৩', NULL, 'addlspe.nao@police.gov.bd', '2019-03-07 11:00:37', '2019-03-07 11:00:37', NULL),
(77, 2, 5, NULL, 16, 'অতিরিক্ত পুলিশ সুপার(ক্রাইম)', 'জনাব মোঃ রকিবুল আক্তার', '01713373830', '074162223', NULL, 'addlspw.nao@police.gov.bd', '2019-03-07 11:02:14', '2019-03-07 11:02:14', NULL),
(78, 2, 5, NULL, 16, 'অতিরিক্ত পুলিশ সুপার সদর সার্কেল ,নওগাঁ', 'জনাব লিমন রায়', '01713373832', '0741-62295', NULL, 'aspscir.nao@police.gov.bd', '2019-03-07 11:03:04', '2019-03-07 11:03:04', NULL),
(79, 2, 5, NULL, 16, 'অতিরিক্ত পুলিশ সুপার, মহাদেবপুর সার্কেল, নওগাঁ।', 'জনাব আবু সালেহ মোঃ আশরাফুল আলম', '01713373833', NULL, NULL, 'aspmcir.nao@police.gov.bd', '2019-03-07 11:03:28', '2019-03-07 11:03:28', NULL),
(80, 2, 5, NULL, 16, 'সহকারী পুলিশ সুপার,(প্রশাসন) নওগাঁ।', 'জনাব মোঃ মতিয়ার রহমান', '01713373831', '074162087', NULL, 'srasphq.nao@police.gov.bd', '2019-03-07 11:04:22', '2019-03-07 11:04:22', NULL),
(81, 2, 5, NULL, 16, 'সিনিয়র সহকারী পুলিশ সুপার, জেলা বিশেষ শাখা, নওগাঁ।', 'জনাব ফারজানা হোসেন', '01769691053', '074181440', NULL, 'aspdsp.nao@police.gov.bd', '2019-03-07 11:04:55', '2019-03-07 11:04:55', NULL),
(82, 2, 5, NULL, 16, 'সিনিয়র সহকারী পুলিশ সুপার মান্দা সার্কেল,নওগাঁ।', 'জনাব হাফিজুল ইসলাম', '01769693551', '0742562037', NULL, 'Heerahafiz13@gmail.com', '2019-03-07 11:05:37', '2019-03-07 11:05:37', NULL),
(83, 2, 5, NULL, 16, 'সিনিয়র সহকারী পুলিশ সুপার, সাপাহার সার্কেল, নওগাঁ।', 'জনাব মোঃ সামিউল আলম', '01769693552', '01769693552', NULL, 'shapaharcirclenaogaon@gmail.com', '2019-03-07 11:06:09', '2019-03-07 11:06:09', NULL),
(84, 2, 5, NULL, 16, 'পুলিশ পরিদর্শক (নিরস্ত্র) আরওআই. রিজার্ভ অফিস, পুলিশ লাইন্স, নওগাঁ।', 'মোঃ আবদুল মমিন', '01711972182', '0741-62217', NULL, 'mominraj.74@gmail.com', '2019-03-07 11:06:47', '2019-03-07 11:06:47', NULL),
(85, 2, 5, NULL, 16, 'ডি আই ও -১', 'মোঃ মোসলেম উদ্দিন', '01712932560', NULL, NULL, 'ocmuslem@gmail.com', '2019-03-07 11:08:13', '2019-03-07 11:08:13', NULL),
(86, 2, 4, NULL, 15, 'অফিসার ইন চার্জ (ডিবি)', NULL, '০১৭১৩৩৭৪০৭৩', '০৫১৬৬৯৮৭', NULL, NULL, '2019-03-07 11:11:03', '2019-03-07 11:11:03', NULL),
(87, 2, 4, NULL, 15, 'পুলিশ পরিদর্শক (ডিবি)', NULL, '০১৭৬৯৬৯৩৩৩৯', NULL, NULL, NULL, '2019-03-07 11:11:33', '2019-03-07 11:11:33', NULL),
(88, 2, 4, NULL, 15, 'কোর্ট পুলিশ পরিদর্শক ১, বগুড়া', NULL, '০১৭১৩৩৭৪০৭৪', '০৫১৬৫০৪০', NULL, NULL, '2019-03-07 11:12:30', '2019-03-07 11:12:30', NULL),
(89, 2, 4, NULL, 15, 'কোর্ট পুলিশ পরিদর্শক ২, বগুড়া', NULL, '০১৭৬৯৬৯৩৩৪০', NULL, NULL, NULL, '2019-03-07 11:13:05', '2019-03-07 11:13:05', NULL),
(90, 2, 4, NULL, 15, 'পুলিশ পরিদর্শক (কন্ট্রোল রুম)', NULL, '০১৭৬৯৬৯৩৩৬৭', NULL, NULL, NULL, '2019-03-07 11:13:56', '2019-03-07 11:13:56', NULL),
(91, 2, 5, NULL, 16, 'অফিসার ইন চার্জ (ডিবি)', NULL, '০১৭১৩৩৭৩৮৪৭', NULL, NULL, NULL, '2019-03-07 11:16:35', '2019-03-07 11:16:35', NULL),
(92, 2, 5, NULL, 16, 'কোর্ট ইন্সপেক্টর', NULL, '০১৭১৩৩৭৩৮৪৮', '০৭৪১৬২২০৫', NULL, NULL, '2019-03-07 11:17:14', '2019-03-07 11:17:14', NULL),
(93, 2, 6, NULL, 17, 'পুলিশ সুপার', 'জনাব শেখ রফিকুল ইসলাম বিপিএম,পিপিএম', '01713374008', '65691', '65654', 'sppabna@police.gov.bd', '2019-03-10 06:50:10', '2019-03-10 06:50:10', NULL),
(94, 2, 6, NULL, 17, 'অতিরিক্ত পুলিশ সুপার (অপরাধ)', 'জনাব গৌতম কুমার বিশ্বাস', '01713374009', '0731-65071', '0731-65654', 'goutombes25@gmail.com', '2019-03-10 06:50:50', '2019-03-10 07:01:59', NULL),
(95, 2, 6, NULL, 17, 'অতিরিক্ত পুলিশ সুপার (ডিএসবি)', 'জনাব মোছাঃ শামিমা আক্তার', '01769058070', '0713-63186', '073165694', 'addlspdsbpabna@police.gov.bd', '2019-03-10 06:51:34', '2019-03-10 07:02:59', NULL),
(96, 2, 6, NULL, 17, 'অতিরিক্ত পুলিশ সুপার (সদর সার্কেল) (পাবনা, আতাইকুলা)', 'জনাব মোঃ ইবনে মিজান', '01713-374012', '0731-65068', NULL, 'mizan_bcspolice@yohoo.com', '2019-03-10 06:52:19', '2019-03-10 07:04:30', NULL),
(97, 2, 6, NULL, 17, 'অতিরিক্ত পুলিশ সুপার (ঈশ্বরদী সার্কেল) (ঈশ্বরদী, আটঘরিয়া)', 'জনাব মোঃ জহুরুল হক', '01713-374013', '07326-63334', NULL, 'aspiswardicirclepabna@police.gov.bd', '2019-03-10 06:52:54', '2019-03-10 07:18:12', NULL),
(98, 2, 6, NULL, 17, 'অতিরিক্ত পুলিশ সুপার (বেড়া সার্কেল) (বেড়া, সাঁথিয়া)', 'জনাব শেখ জিল্লুর রহমান', '01713-374014', '07323-75020', NULL, 'aspberacirclepabna@police.gov.bd', '2019-03-10 06:53:35', '2019-03-10 07:19:05', NULL),
(99, 2, 6, NULL, 17, 'অতিরিক্ত পুলিশ সুপার (চাটমোহর সার্কেল) (চাটমোহর, ভাঙ্গুড়া, ফরিদপুর)', 'জনাব এস.এ.এম ফজল-ই-খুদা', '01769-693179', NULL, NULL, 'polashbdpolice@gmail.com', '2019-03-10 06:54:19', '2019-03-10 07:24:47', NULL),
(100, 2, 6, NULL, 17, 'অতিরিক্ত পুলিশ সুপার (হেডকোয়ার্টার)', 'জনাব মোঃ ফিরোজ কবির', '01713-374010', '0731-65014', '65654', 'asphqpabna@police.gov.bd', '2019-03-10 06:55:34', '2019-03-10 07:20:16', NULL),
(101, 2, 6, NULL, 17, 'সিনিয়র সহকারী পুলিশ সুপার (সুজানগর সার্কেল) (সুজানগর, আমিনপুর)', 'জনাব মোঃ ফরহাত হোসেন', '01769-693178', '01769-693178', NULL, 'sujanagarcirclepabna@gmail.com', '2019-03-10 06:56:12', '2019-03-10 07:24:02', NULL),
(102, 2, 6, NULL, 17, 'সহকারী পুলিশ সুপার', 'জনাব ওয়াহিদা পারভীন', '01727171745', '0731-65691', '65654', 'oyahida35@gmail.com', '2019-03-10 06:56:52', '2019-03-10 06:56:52', NULL),
(103, 2, 6, NULL, 17, 'সহকারী পুলিশ সুুপার', 'জনাব নাসরিন সুলতানা', '01782-280180', '0731-65691', '65654', 'rn3035bcs@gmail.com', '2019-03-10 06:57:32', '2019-03-10 06:57:32', NULL),
(104, 2, 7, NULL, 18, 'পুলিশ সুপার', 'জনাব টুটুল চক্রবর্তী, বিপিএম', '০১৭১৩-৩৭৪০৩০', '0751-62166', NULL, 'spsirajgonj@police.gov.bd', '2019-03-10 07:26:29', '2019-03-10 07:26:29', NULL),
(105, 2, 7, NULL, 18, 'অতিরিক্ত পুলিশ সুপার(ডিএসবি)', 'মোঃ আবু ইউসুফ', '০১৭১৩-৩৭৪০৩২', '0751-62186', NULL, 'yousuf039@yahoo.com', '2019-03-10 07:27:04', '2019-03-10 07:27:04', NULL),
(106, 2, 7, NULL, 18, 'অতিরিক্ত পুলিশ সুপার(অপরাধ)', 'মোঃ ফোরকান সিকদার', '০১৭১৩-৩৭৪০৩১', '0751-65101', NULL, 'addlspcr.sir@police.gov.bd', '2019-03-10 07:27:38', '2019-03-10 07:27:38', NULL),
(107, 2, 7, NULL, 18, 'অতিরিক্ত পুলিশ সুপার (সদর সার্কেল) (সিরাজগঞ্জ, কাজিপুর)', 'মোঃ স্নিগ্ধ আখতার, পিপিএম', '০১৭১৩-৩৭৪০৩৪', NULL, NULL, 'abusaim888@gmail.com', '2019-03-10 07:29:23', '2019-03-10 07:29:23', NULL),
(108, 2, 7, NULL, 18, 'অতিরিক্ত পুলিশ সুপার (শাহজাদপুর সার্কেল) (শাহজাদপুর, চৌহালী)', 'ফাহমিদা হক শেলী', '০১৭১৩-৩৭৪০৩৬', '07527-64630', NULL, 'aspshahazadpur@police.gov.bd', '2019-03-10 07:30:42', '2019-03-10 07:30:42', NULL),
(109, 2, 7, NULL, 18, 'অতিরিক্ত পুলিশ সুপার (ইনসার্ভিস)', 'মোঃ খলিলুর রহমান', '০১৭৬৯-৬৯০৮৪৮', NULL, NULL, 'addlspins@police.gov.bd', '2019-03-10 07:31:30', '2019-03-10 07:31:30', NULL),
(110, 2, 7, NULL, 18, 'অতিরিক্ত পুলিশ সুপার (রায়গঞ্জ সার্কেল) (রায়গঞ্জ, সালাঙ্গা)', 'মোঃ আব্দুর রউফ মিয়া', '০১৭১৩-৩৭৪০৩৫', '07526-56146', NULL, 'cirspraiganj@police.gov.bd', '2019-03-10 07:32:42', '2019-03-10 07:32:42', NULL),
(111, 2, 7, NULL, 18, 'সিনিয়র সহকারী পুলিশ সুপার (বেলকুচি সার্কেল) (বেলকুচি, এনায়েতপুর)', 'মোহাম্মদ রেজা সারোয়ার', '০১৭৬৯-৬৯২৭৭৬', NULL, NULL, 'aspbelkuchi@police.gov.bd', '2019-03-10 07:34:07', '2019-03-10 07:34:07', NULL),
(112, 2, 7, NULL, 18, 'সিনিয়র সহকারী পুলিশ সুপার (কামারখন্দ সার্কেল) (কামারখন্দ, যমুনা ব্রিজ পশ্চিম)', 'মোঃ আতোয়ার রহমান', '০১৭৬৯-৬৯২৭৭৫', NULL, NULL, 'aspkamarkhond@police.gov.bd', '2019-03-10 07:35:24', '2019-03-10 07:35:24', NULL),
(113, 2, 7, NULL, 18, 'সিনিয়র সহকারী পুলিশ সুপার (উল্লাপাড়া সার্কেল) (উল্লাপাড়া, তাড়াশ)', 'মোঃ শরাফত ইসলাম', '০১৭৬৯-৬৯২৭৭৪', NULL, NULL, 'aspullara@police.gov.bd', '2019-03-10 07:36:37', '2019-03-10 07:36:37', NULL),
(114, 2, 7, NULL, 18, 'সহকারী পুলিশ সুপার (ইনসার্ভিস)', 'মোঃ রেজওয়ানুল ইসলাম', '০১৭৬৯-৬৯০৮৪৯', NULL, NULL, 'aspinsevicesira@police.gov.bd', '2019-03-10 07:37:33', '2019-03-10 07:37:33', NULL),
(115, 2, 7, NULL, 18, 'সহকারী পুলিশ সুপার (হেডকোয়ার্টার)', 'মোঃ মজনুর রহমান', '০১৭১৩-৩৭৪০৩৩', '0751-62169', NULL, 'asphqsirajganj@police.gov.bd', '2019-03-10 07:38:35', '2019-03-10 07:38:35', NULL),
(116, 2, 7, NULL, 18, 'ডিআইও-১ (ডিএসবি)', NULL, '০১৭১৩৩৭৪০৩৭', NULL, NULL, NULL, '2019-03-10 07:39:43', '2019-03-10 07:39:43', NULL),
(117, 2, 7, NULL, 18, 'অফিসার ইন চার্জ (ডিবি)', NULL, '০১৭১৩৩৭৪০৫০', NULL, NULL, NULL, '2019-03-10 07:40:16', '2019-03-10 07:40:16', NULL),
(118, 2, 7, NULL, 18, 'কোর্ট ইন্সপেক্টর', NULL, '০১৭১৩৩৭৪০৫১', NULL, NULL, NULL, '2019-03-10 07:40:44', '2019-03-10 07:40:44', NULL),
(119, 2, 6, NULL, 17, 'অফিসার ইন চার্জ (ডিবি)', NULL, '০১৭১৩৩৭৪০২৬', '০৭৩১৬৫২১৮', NULL, 'ocdbpabna@police.gov.bd', '2019-03-10 10:04:52', '2019-03-10 10:04:52', NULL),
(120, 2, 6, NULL, 17, 'কোর্ট ইন্সপেক্টর', NULL, '০১৭১৩৩৭৪০২৭', NULL, NULL, 'courtinspectorpabna@police.gov.bd', '2019-03-10 10:05:47', '2019-03-10 10:05:47', NULL),
(121, 2, 8, NULL, 19, 'পুলিশ সুপার', 'মো: রশীদুল হাসান', '01713374077', '0571-62501', NULL, 'spjoypurhat@police.gov.bd', '2019-03-10 10:17:07', '2019-03-10 10:17:07', NULL),
(122, 2, 8, NULL, 19, 'অতিরিক্ত পুলিশ সুপার', 'মোঃ বেলায়েত হোসেন', '০১৭১৩-৩৭৪০৭৮', '0571-62203', NULL, NULL, '2019-03-10 10:19:09', '2019-03-10 10:19:09', NULL),
(123, 2, 8, NULL, 19, 'সিনিয়র সহকারী পুলিশ সুপার (সদর সার্কেল) (সদর, ক্ষেতলাল, আক্কেলপুর)', 'মো: সাজ্জাদুল ইসলাম', '01713-374080', '0571-62203', NULL, NULL, '2019-03-10 10:19:40', '2019-03-10 10:20:45', NULL),
(124, 2, 8, NULL, 19, 'সহকারী পুলিশ সুপার (হেডকোয়ার্টার)', NULL, '০১৭১৩৩৭৪০৭৯', '০৫৭১৬২২৫৬', NULL, NULL, '2019-03-10 10:21:51', '2019-03-10 10:21:51', NULL),
(125, 2, 8, NULL, 19, 'সহকারী পুলিশ সুপার (পাঁচবিবি সার্কেল) (পাঁচবিবি, কালাই)', NULL, '০১৭৬৯৬৯৩৪৮৪', NULL, NULL, NULL, '2019-03-10 10:22:40', '2019-03-10 10:22:40', NULL),
(126, 2, 8, NULL, 19, 'ডিআইও-১ (ডিএসবি)', NULL, '০১৭১৩৩৭৪০৮১', '০৫৭১৬২৪০৬', NULL, NULL, '2019-03-10 10:23:41', '2019-03-10 10:23:41', NULL),
(127, 2, 8, NULL, 19, 'অফিসার ইন চার্জ (ডিবি)', NULL, '০১৭১৩৩৭৪০৮৭', NULL, NULL, NULL, '2019-03-10 10:24:17', '2019-03-10 10:24:17', NULL),
(128, 2, 8, NULL, 19, 'কোর্ট ইন্সপেক্টর', NULL, '০১৭১৩৩৭৪০৮৮', '০৫৭১৬২২৯৭', NULL, NULL, '2019-03-10 10:24:42', '2019-03-10 10:24:42', NULL),
(129, 2, 9, NULL, 20, 'কমান্ড্যান্ট (পুলিশ সুপার), আর আর এফ, রাজশাহী', NULL, '০১৭১৩৩৭৩৭৯১', '০৭২১৭৭৮৮৬', '০৭২১৮১২৬৭৭', 'comrrfrajshahi@police.gov.bd', '2019-03-10 10:27:05', '2019-03-10 10:27:05', NULL),
(130, 2, 9, NULL, 20, 'সহকারী পুলিশ সুপার-১', NULL, '01730336120', '0721812658', NULL, NULL, '2019-03-10 10:28:04', '2019-03-10 10:28:04', NULL),
(131, 2, 9, NULL, 20, 'সহকারী পুলিশ সুপার-২', NULL, '01730336121', NULL, NULL, NULL, '2019-03-10 10:28:37', '2019-03-10 10:28:37', NULL),
(132, 2, 9, NULL, 20, 'সহকারী পুলিশ সুপার-৩', NULL, '01730336122', NULL, NULL, NULL, '2019-03-10 10:29:08', '2019-03-10 10:29:08', NULL),
(133, 3, 2, 19, 30, 'অফিসার ইন চার্জ', NULL, '01713373823', NULL, NULL, 'ocnaw.bho@police.gov.bd', '2019-03-16 04:43:24', '2019-03-16 04:43:24', NULL),
(134, 3, 2, 19, 30, 'ইন্সপেক্টর (তদন্ত)', NULL, '01769690434', NULL, NULL, 'opsnaw.bho@police.gov.bd', '2019-03-16 04:45:54', '2019-03-16 04:45:54', NULL),
(135, 3, 2, 19, 30, 'ডিউটি অফিসার', NULL, NULL, '0782256003', NULL, NULL, '2019-03-16 04:50:31', '2019-03-16 04:50:31', NULL),
(136, 3, 2, 20, 31, 'অফিসার ইন চার্জ', NULL, '01713373821', NULL, NULL, 'ocnaw.gom@police.gov.bd', '2019-03-16 04:51:58', '2019-03-16 04:51:58', NULL),
(137, 3, 2, 20, 31, 'ইন্সপেক্টর (তদন্ত)', NULL, '01769690432', NULL, NULL, 'opsnaw.gom@police.gov.bd', '2019-03-16 04:53:01', '2019-03-16 04:53:01', NULL),
(138, 3, 2, 20, 31, 'ডিউটি অফিসার', NULL, '0782374051', NULL, NULL, NULL, '2019-03-16 04:53:33', '2019-03-16 04:53:33', NULL),
(139, 3, 2, 21, 32, 'অফিসার ইন চার্জ', NULL, '01713373822', NULL, NULL, 'ocnaw.nac@police.gov.bd', '2019-03-16 04:56:07', '2019-03-16 04:56:07', NULL),
(140, 3, 2, 21, 32, 'ইন্সপেক্টর (তদন্ত)', NULL, '01769690433', NULL, NULL, 'opsnaw.nac@police.gov.bd', '2019-03-16 04:56:52', '2019-03-16 04:56:52', NULL),
(141, 3, 2, 21, 32, 'ডিউটি অফিসার', NULL, '0782456003', NULL, NULL, NULL, '2019-03-16 04:57:28', '2019-03-16 04:57:28', NULL),
(142, 3, 2, 22, 33, 'অফিসার ইন চার্জ', NULL, '01713373819', NULL, NULL, 'ocnaw.naw@police.gov.bd', '2019-03-16 04:59:04', '2019-03-16 04:59:04', NULL),
(143, 3, 2, 22, 33, 'ইন্সপেক্টর (তদন্ত)', NULL, '01769690430', NULL, NULL, 'opsnaw.naw@police.gov.bd', '2019-03-16 05:03:18', '2019-03-16 05:03:18', NULL),
(144, 3, 2, 22, 33, 'ডিউটি অফিসার', NULL, '078152220', NULL, NULL, NULL, '2019-03-16 05:03:50', '2019-03-16 05:03:50', NULL),
(145, 3, 2, 23, 34, 'অফিসার ইন চার্জ', NULL, '01713373820', NULL, NULL, 'ocnaw.shi@police.gov.bd', '2019-03-16 05:04:52', '2019-03-16 05:04:52', NULL),
(146, 3, 2, 23, 34, 'ইন্সপেক্টর (তদন্ত)', NULL, '01769690431', NULL, NULL, 'opsnaw.shi@police.gov.bd', '2019-03-16 05:05:31', '2019-03-16 05:05:31', NULL),
(147, 3, 2, 23, 34, 'ডিউটি অফিসার', NULL, '0782575004', NULL, NULL, NULL, '2019-03-16 05:05:56', '2019-03-16 05:05:56', NULL),
(148, 3, 3, 24, 35, 'অফিসার ইনচার্জ', 'জনাব কাজী  জালাল উদ্দিন আহমেদ', '০১৭১৩-৩৭৩৮৫৭', NULL, NULL, NULL, '2019-03-16 06:54:09', '2019-03-16 06:54:09', NULL),
(149, 3, 3, 24, 35, 'ইন্সপেক্টর( তদন্ত)', 'জনাব মোঃ ফরিদুল ইসলাম', '০১৭৩০-৯১৯১৮২', NULL, NULL, NULL, '2019-03-16 06:54:33', '2019-03-16 06:54:33', NULL),
(150, 3, 3, 24, 35, 'ইন্সপেক্টর (অপারেশন্স অ্যান্ড কমিউনিটি পুলিশিং)', 'জনাব আবু সিদ্দিক', '০১৭৮২-৬৪৬১২৪', NULL, NULL, NULL, '2019-03-16 06:55:07', '2019-03-16 06:55:19', '2019-03-16 06:55:19'),
(151, 3, 3, 24, 35, 'ডিউটি অফিসার', NULL, '০১৭৭৪-৭৬৭২৭১', '০৭৭১-৬৯২২', NULL, NULL, '2019-03-16 06:56:07', '2019-03-16 06:56:07', NULL),
(152, 3, 3, 24, 35, 'আইসি (নিচাবাজার ফাঁড়ি)', NULL, '০১৭৭৪-৭৬৭২৮৩', '০৭৭১-৬৬৯৪০', NULL, NULL, '2019-03-16 06:57:14', '2019-03-16 06:57:14', NULL),
(153, 3, 3, 24, 35, 'আইসি (উপরবাজার ফাঁড়ি)', NULL, '০১৭৭৪-৭৬৭২৮৪', NULL, NULL, NULL, '2019-03-16 06:57:50', '2019-03-16 06:57:50', NULL),
(154, 3, 3, 25, 36, 'অফিসার ইনচার্জ', 'জনাব মোঃ মনিরুল ইসলাম', '০১৭১৩-৩৭৩৮৫৮', NULL, NULL, NULL, '2019-03-16 07:20:26', '2019-03-16 07:20:26', NULL),
(155, 3, 3, 25, 36, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ নেয়ামুল আলম', '০১৯১২-১৬১৪৭৬', NULL, NULL, NULL, '2019-03-16 07:20:55', '2019-03-16 07:20:55', NULL),
(156, 3, 3, 25, 36, 'ডিউটি অফিসার', NULL, '০১৭৭৪-৭৬৭২৭২', '০৭৭২৬-৬৩০১১', NULL, NULL, '2019-03-16 07:22:00', '2019-03-16 07:22:00', NULL),
(157, 3, 3, 26, 37, 'অফিসার ইনচার্জ', 'জনাব  দিলীপ কুমার দাস', '০১৭১৩-৩৭৩৮৬২', NULL, NULL, NULL, '2019-03-16 07:24:03', '2019-03-16 07:24:03', NULL),
(158, 3, 3, 26, 37, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোহাঃ সুমন আলী', '০১৭১০-০০২১৪২', NULL, NULL, NULL, '2019-03-16 07:24:28', '2019-03-16 07:24:28', NULL),
(159, 3, 3, 26, 37, 'ডিউটি অফিসার', NULL, '০১৭৭৪-৭৬৭২৭৬', NULL, NULL, NULL, '2019-03-16 07:24:59', '2019-03-16 07:24:59', NULL),
(160, 3, 3, 26, 37, 'আইসি, বনপাড়া', NULL, '০১৭৭৪-৭৬৭২৮০', '০৭৭২৩-৫৬০০৫', '০৭৭২৩৫৬০০৫', NULL, '2019-03-16 07:27:04', '2019-03-16 07:27:04', NULL),
(161, 3, 3, 27, 38, 'অফিসার ইনচার্জ', 'জনাব মোঃ আতাউর রহমান', '০১৭১৩-৩৭৩৮৫৯', NULL, '০৭৭২২-৭২০০৪', NULL, '2019-03-16 07:28:14', '2019-03-16 07:28:14', NULL),
(162, 3, 3, 27, 38, 'ইন্সপেক্টর (তদন্ত)', 'জনাব স্বপন কুমার চৌধুরী', '০১৭৪০-৯৫৫০১৩', NULL, NULL, NULL, '2019-03-16 07:29:59', '2019-03-16 07:29:59', NULL),
(163, 3, 3, 27, 38, 'ডিউটি অফিসার', NULL, '০১৭৭৪-৭৬৭২৭৩', '০৭৭২২-৭২০০৪', NULL, NULL, '2019-03-16 07:30:34', '2019-03-16 07:30:34', NULL),
(164, 3, 3, 28, 39, 'অফিসার ইনচার্জ', 'জনাব মোঃ নজরুল ইসলাম জুয়েল', '০১৭১৩-৩৭৩৮৬১', NULL, NULL, NULL, '2019-03-16 07:32:04', '2019-03-16 07:32:04', NULL),
(165, 3, 3, 28, 39, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোহাঃ মোনোয়ারুজ্জামান', '০১৭২৩-৬৪৪০৬১', NULL, NULL, NULL, '2019-03-16 07:32:27', '2019-03-16 07:32:27', NULL),
(166, 3, 3, 28, 39, 'ডিউটি অফিসার', NULL, '০১৭৭৪-৭৬৭২৭৫', '০৭৭২৫-৭৫০০৯', NULL, NULL, '2019-03-16 07:33:15', '2019-03-16 07:33:15', NULL),
(167, 3, 3, 29, 40, 'অফিসার ইনচার্জ', 'জনাব মোঃ সেলিম রেজা', '০১৭১৩-৩৭৩৮৬০', NULL, NULL, NULL, '2019-03-16 07:36:44', '2019-03-16 07:36:44', NULL),
(168, 3, 3, 29, 40, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোহাঃ আনারুল ইসলাম', '০১৭২২-০৩০৬৮১', NULL, NULL, NULL, '2019-03-16 07:37:09', '2019-03-16 07:37:09', NULL),
(169, 3, 3, 29, 40, 'ডিউটি অফিসার', NULL, '০১৭৭৪-৭৬৭২৭৭', '০৭৭২৪-৭৪০১৫', NULL, NULL, '2019-03-16 07:38:00', '2019-03-16 07:38:00', NULL),
(170, 3, 3, 29, 40, 'ইনচার্জ, টোল প্লাজা, গুরুদাসপুর', NULL, '০১৭৭৪-৭৬৭২৮৯', NULL, NULL, NULL, '2019-03-16 07:38:40', '2019-03-16 07:38:40', NULL),
(171, 3, 3, 30, 41, 'অফিসার ইনচার্জ', 'জনাব মোঃ শফিকুর রহমান', '০১৭১৩-৩৭৩৮৬৩', NULL, NULL, NULL, '2019-03-16 07:39:50', '2019-03-16 07:39:50', NULL),
(172, 3, 3, 30, 41, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ উজ্জ্বল হোসেন', '০১৭৪৬-০৫২৫০০', NULL, NULL, NULL, '2019-03-16 07:40:13', '2019-03-16 07:40:13', NULL),
(173, 3, 3, 30, 41, 'ডিউটি অফিসার', NULL, '০১৭৭৪-৭৬৭২৭৪', '০৭৭২৩-৫১০০৩', NULL, NULL, '2019-03-16 07:40:50', '2019-03-16 07:40:50', NULL),
(174, 2, 3, NULL, 14, 'পুলিশ কন্ট্রোল রুম, নাটোর', 'জনাব মোঃ রফিকুল ইসলাম', '০১৭১২-৭৩৯৪৮১', NULL, NULL, NULL, '2019-03-16 07:43:34', '2019-07-20 11:28:09', '2019-07-20 11:28:09'),
(175, 3, 4, 31, 42, 'অফিসার ইনচার্জ', 'জনাব মোহাম্মদ শওকত কবির', '০১৭১৩-৩৭৪০৬৮', NULL, NULL, 'ockahalubogra@police.gov.bd', '2019-03-16 09:45:27', '2019-03-16 09:48:58', NULL),
(176, 3, 4, 31, 42, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ মাহমুদ হাসান', '০১৭৬৯৬৯৩৩৩৩', NULL, NULL, NULL, '2019-03-16 09:47:42', '2019-03-16 09:47:42', NULL),
(177, 3, 4, 31, 42, 'ডিউটি অফিসার', NULL, '০১৭৪১-০৯৮৭১১', '০৫০২৬-৫৬০১৮', NULL, NULL, '2019-03-16 09:48:35', '2019-03-16 09:48:35', NULL),
(178, 3, 4, 32, 43, 'অফিসার ইনচার্জ', 'জনাব এস এম বদিউজ্জামান', '01713374061', NULL, NULL, 'ocsadarbogra@police.gov.bd', '2019-03-16 10:06:30', '2019-03-16 10:08:10', NULL),
(179, 3, 4, 32, 43, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ কামরুজ্জামান মিয়া', '01769693322', NULL, NULL, NULL, '2019-03-16 10:07:54', '2019-03-16 10:07:54', NULL),
(180, 3, 4, 32, 43, 'ডিউটি অফিসার', NULL, '০১৭৪১-০৯৮৭০১', '০৫১-৬৫০৬৬, ০৫১-৬৫০৬৭', NULL, NULL, '2019-03-16 10:09:22', '2019-03-16 10:09:22', NULL),
(181, 3, 4, 32, 43, 'ইনচার্জ, সদর পুলিশ ফাঁড়ি, সদর থানা', 'জনাব মোঃ আবুল কালাম আজাদ', '০১৭৬৯-৬৯৩৩৪৫', '০৫১-৬৫০৮৭', NULL, NULL, '2019-03-16 10:10:54', '2019-03-16 10:10:54', NULL),
(182, 3, 4, 32, 43, 'ইনচার্জ, বনানী পুলিশ ফাঁড়ি', 'জনাব মোঃ তারিকুল ইসলাম', '০১৭৬৯-৬৯৩৩৫০', NULL, NULL, NULL, '2019-03-16 10:12:23', '2019-03-16 10:12:23', NULL),
(183, 3, 4, 32, 43, 'ইনচার্জ, স্টেডিয়াম পুলিশ ফাঁড়ি, সদর থানা', 'জনাব মোঃ মুস্তাফিজ হাসান', '০১৭৬৯-৬৯৩৩৪৭', NULL, NULL, NULL, '2019-03-16 10:13:14', '2019-03-16 10:13:14', NULL),
(184, 3, 4, 32, 43, 'ইনচার্জ, নারুলী পুলিশ ফাঁড়ি, সদর থানা', 'জনাব মোঃ জামিরুল ইসলাম', '০১৭৬৯-৬৯৩৩৪৯', '০৫১-৬৯৫৩১', NULL, NULL, '2019-03-16 10:14:04', '2019-03-16 10:14:04', NULL),
(185, 3, 4, 32, 43, 'ইনচার্জ, ছিলিমপুর পুলিশ ফাঁড়ি, সদর থানা', 'জনাব মোঃ রফিকুল ইসলাম', '০১৭৬৯-৬৯৩৩৫১', '০৫১-৬৯০০৫, ০৫১-৬৯৫৫১', NULL, NULL, '2019-03-16 10:15:32', '2019-03-16 10:15:32', NULL),
(186, 3, 4, 32, 43, 'ইনচার্জ, ফুলবাড়ী পুলিশ ফাঁড়ি, সদর থানা', NULL, '০১৭৬৯-৬৯৩৩৪৬', '০৫১-৬৫০০৭', NULL, NULL, '2019-03-16 10:17:01', '2019-03-16 10:21:17', NULL),
(187, 3, 4, 32, 43, 'ইনচার্জ, উপশহর পুলিশ ফাঁড়ি, সদর থানা', NULL, '০১৭৬৯-৬৯৩৩৪৮', '০৫১-৬৯৬৩৯', NULL, NULL, '2019-03-16 10:17:54', '2019-03-16 10:20:58', NULL),
(188, 3, 4, 32, 43, 'ইনচার্জ, কৈগাড়ী ফাঁড়ি, সদর থানা', NULL, '০১৭৬৯-৬৯৩৩৫২', '০৫১-৬৫০৪৮', NULL, NULL, '2019-03-16 10:19:07', '2019-03-16 10:20:49', NULL),
(189, 3, 4, 33, 44, 'অফিসার ইনচার্জ', 'জনাব আল আমিন', '০১৭১৩-৩৭৪০৬৫', NULL, NULL, 'ocsariyakandibogra@police.gov.bd', '2019-03-16 10:22:52', '2019-03-16 10:22:52', NULL),
(190, 3, 4, 33, 44, 'ইন্সপেক্টর (তদন্ত)', 'জনাব শাহ মোঃ এনায়েতুর রহমান', '01769-693330', NULL, NULL, NULL, '2019-03-16 10:23:28', '2019-03-16 10:23:28', NULL),
(191, 3, 4, 33, 44, 'পুলিশ পরিদর্শক, চন্দন বাইশা ইনভেস্টিগেশন সেন্টার', NULL, '০১৭৬৯-৬৯৩৩৪৩', NULL, NULL, NULL, '2019-03-16 10:24:31', '2019-03-16 10:24:31', NULL),
(192, 3, 4, 33, 44, 'ডিউটি অফিসার', NULL, '০১৭৪১-০৯৮৭০৫', '০৫০২৮-৫৬২০৯', NULL, NULL, '2019-03-16 10:25:08', '2019-03-16 10:25:08', NULL),
(193, 3, 4, 34, 45, 'অফিসার ইনচার্জ', 'জনাব মোঃ জিয়া লতিফুল ইসলাম', '০১৭১৩-৩৭৪০৭২', NULL, NULL, 'ocshajahanpurbogra@police.gov.bd', '2019-03-16 10:26:49', '2019-03-16 10:26:49', NULL),
(194, 3, 4, 34, 45, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ আবুল কালাম আজাদ', '০১৭৬৯-৬৯৩৩৩৭', NULL, NULL, NULL, '2019-03-16 10:27:28', '2019-03-16 10:27:28', NULL),
(195, 3, 4, 34, 45, 'ডিউটি অফিসার', NULL, '০১৭৪১-০৯৮৭১২', '০৫১-৬৮০৭৪', NULL, NULL, '2019-03-16 10:28:04', '2019-03-16 10:28:04', NULL),
(196, 3, 4, 35, 46, 'অফিসার ইনচার্জ', 'জনাব মোঃ মিজানুর রহমান', '০১৭১৩-৩৭৪০৬৭', NULL, NULL, 'ocdupchachiyabogra@police.gov.bd', '2019-03-16 10:29:35', '2019-03-16 10:29:35', NULL),
(197, 3, 4, 35, 46, 'ইন্সপেক্টর(তদন্ত)', 'জনাব মোঃ শহিদুল ইসলাম', '01769-693332', NULL, NULL, NULL, '2019-03-16 10:30:05', '2019-03-16 10:30:05', NULL),
(198, 3, 4, 35, 46, 'ডিউটি অফিসার', NULL, '০১৭৪১-০৯৮৭১০', '০৫০২৪-৫১০১০', NULL, NULL, '2019-03-16 10:30:42', '2019-03-16 10:30:42', NULL),
(199, 3, 4, 36, 47, 'অফিসার ইনচার্জ', 'জনাব মোঃ মনিরুল ইসলাম', '০১৭১৩-৩৭৪০৬৬', NULL, NULL, 'ocadamdighibogra@police.gov.bd', '2019-03-16 10:32:21', '2019-03-16 10:32:21', NULL),
(200, 3, 4, 36, 47, 'ইন্সপেক্টর(তদন্ত)', 'জনাব মোঃ আব্দুর রাজ্জাক', '০১৭৬৯-৬৯৩৩৩১', NULL, NULL, NULL, '2019-03-16 10:32:51', '2019-03-16 10:32:51', NULL),
(201, 3, 4, 36, 47, 'ডিউটি অফিসার', NULL, '০১৭৪১-০৯৮৭০৯', '০৭৪১-৬৯৪১১', NULL, NULL, '2019-03-16 10:33:24', '2019-03-16 10:33:24', NULL),
(202, 3, 4, 36, 47, 'ইনচার্জ, সান্তাহার পুলিশ ফাঁড়ি, আদমদীঘি থানা', 'জনাব মোঃ মুসা মিয়া', '০১৭৬৯-৬৯৩৩৫৩', NULL, NULL, NULL, '2019-03-16 10:34:14', '2019-03-16 10:34:14', NULL),
(203, 3, 4, 37, 48, 'অফিসার ইনচার্জ', 'জনাব মোঃ নাসির উদ্দিন', '০১৭১৩-৩৭৪০৭১', NULL, NULL, NULL, '2019-03-16 10:35:56', '2019-03-16 10:35:56', NULL),
(204, 3, 4, 37, 48, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ আনিছুর রহমান', '০১৭৬৯-৬৯৩৩৩৬', NULL, NULL, NULL, '2019-03-16 10:36:51', '2019-03-16 10:36:51', NULL),
(205, 3, 4, 37, 48, 'ডিউটি অফিসার', NULL, '০১৭৪১-০৯৮৭০৮', '০৫০২৭-৭৬০১০', NULL, NULL, '2019-03-16 10:37:23', '2019-03-16 10:37:23', NULL),
(206, 3, 4, 37, 48, 'ইন্সপেক্টর, কুমিরা ইনভেস্টিগেশন সেন্টার, নন্দীগ্রাম থানা', NULL, '০১৭৬৯-৬৯৩৩৪৪', NULL, NULL, NULL, '2019-03-16 10:38:11', '2019-03-16 10:38:11', NULL),
(207, 3, 4, 38, 49, 'অফিসার ইনচার্জ', 'জনাব মোঃ শরিফুল ইসলাম', '০১৭১৩-৩৭৪০৬৩', NULL, NULL, 'ocsonatalabogra@police.gov.bd', '2019-03-16 10:39:46', '2019-03-16 10:39:46', NULL),
(208, 3, 4, 38, 49, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ জাহিদ হোসেন', '০১৭৬৯-৬৯৩৩২৭', NULL, NULL, NULL, '2019-03-16 10:40:44', '2019-03-16 10:40:44', NULL),
(209, 3, 4, 38, 49, 'ডিউটি অফিসার', NULL, '০১৭৪১-০৯৮৭০৩', '০৫০৩২-৭৯০০৪', NULL, NULL, '2019-03-16 10:41:11', '2019-03-16 10:41:11', NULL),
(210, 3, 4, 39, 50, 'অফিসার ইনচার্জ', 'জনাব মোঃ ইসমাইল হোসেন', '০১৭১৩-৩৭৪০৭০', NULL, NULL, 'ocdhunatbogra@police.gov.bd', '2019-03-16 10:42:43', '2019-03-16 10:42:43', NULL),
(211, 3, 4, 39, 50, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ ফারুকুল ইসলাম', '01769-693335', NULL, NULL, NULL, '2019-03-16 10:43:13', '2019-03-16 10:43:13', NULL),
(212, 3, 4, 39, 50, 'ডিউটি অফিসার', NULL, '০১৭৪১-০৯৮৭০৬', '০৫০২৩-৫৬১২১', NULL, NULL, '2019-03-16 10:43:48', '2019-03-16 10:43:48', NULL),
(213, 3, 4, 40, 51, 'অফিসার ইনচার্জ', 'জনাব মোঃ সেলিম হোসেন', '০১৭১৩-৩৭৪০৬৪', NULL, NULL, 'ocgabtalibogra@police.gov.bd', '2019-03-16 10:45:24', '2019-03-16 10:45:24', NULL),
(214, 3, 4, 40, 51, 'ইন্সপেক্টর (তদন্ত)', 'জনাব সনাতন চন্দ্র সরকার', '০১৭৬৯-৬৯৩৩২৮', NULL, NULL, NULL, '2019-03-16 10:46:21', '2019-03-16 10:46:21', NULL),
(215, 3, 4, 40, 51, 'ডিউটি অফিসার', NULL, '০১৭৩৯-৯৯৭৪০০', '০৫০২৫-৭৫০০২', NULL, NULL, '2019-03-16 10:47:30', '2019-03-16 10:47:30', NULL),
(216, 3, 4, 40, 51, 'ইনচার্জ, বাগবাড়ী পুলিশ তদন্ত কেন্দ্র, গাবতলী মডেল থানা', 'জনাব মোঃ সোহেল রানা', '০১৭৬৯-৬৯৩৩৪২', NULL, NULL, NULL, '2019-03-16 10:48:05', '2019-03-16 10:48:05', NULL),
(217, 3, 4, 41, 52, 'অফিসার ইনচার্জ', 'জনাব মোঃ হুমায়ুন কবীর', '০১৭১৩-৩৭৪০৬৯', NULL, NULL, 'ocsherpurbogra@police.gov.bd', '2019-03-16 10:49:48', '2019-03-16 10:49:48', NULL),
(218, 3, 4, 41, 52, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ বুলবুল ইসলাম', '০১৭৬৯-৬৯৩৩৩৪', NULL, NULL, NULL, '2019-03-16 10:50:32', '2019-03-16 10:50:32', NULL),
(219, 3, 4, 41, 52, 'ডিউটি অফিসার', NULL, '০১৭৪১-০৯৮৭০৭', NULL, NULL, NULL, '2019-03-16 10:51:00', '2019-03-16 10:51:00', NULL),
(220, 3, 4, 41, 52, 'ইনচার্জ, শেরপুর পুলিশ ফাঁড়ি, শেরপুর থানা', 'জনাব মোঃ জিল্লুর রহমান', '০১৭৬৯-৬৯৩৩৫৪', '০৫০২৯-৭৭৪১৫', NULL, NULL, '2019-03-16 10:51:46', '2019-03-16 10:51:46', NULL),
(221, 3, 4, 64, 53, 'অফিসার ইনচার্জ', 'জনাব মোঃ মিজানুর রহমান', '০১৭১৩-৩৭৪০৬২', NULL, NULL, 'ocshibgongbogra@police.gov.bd', '2019-03-16 10:53:51', '2019-03-16 10:53:51', NULL),
(222, 3, 4, 64, 53, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ ছানোয়ার হোসেন', '০১৭৬৯-৬৯৩৩২৫', NULL, NULL, NULL, '2019-03-16 10:54:39', '2019-03-16 10:54:39', NULL),
(223, 3, 4, 64, 53, 'ইনচার্জ, মোকামতলা পুলিশ তদন্ত কেন্দ্র, শিবগঞ্জ থানা', 'জনাব মোঃ মিজানুর রহমান', '০১৭৬৯-৬৯৩৩৪১', NULL, NULL, NULL, '2019-03-16 10:55:40', '2019-03-16 10:55:40', NULL),
(224, 3, 4, 64, 53, 'ডিউটি অফিসার', NULL, '০১৭৬৫-৯৩০৯৩৮, ০১৭৪১-০৯৮৭০২', '০৫০৩৩-৬৯০০৯', NULL, NULL, '2019-03-16 10:56:35', '2019-03-16 10:56:35', NULL),
(225, 3, 5, 42, 54, 'অফিসার ইনচার্জ', 'জনাব মোঃ সাজ্জাদ হোসেন', '০১৭১৩-৩৭৩৮৪১', NULL, NULL, 'ocnao.mah@police.gov.bd', '2019-03-18 07:06:25', '2019-03-18 07:06:25', NULL),
(226, 3, 5, 42, 54, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ সিদ্দিকুর রহমান', '০১৭৬৯-৬৯১০৬০', NULL, NULL, 'opsnao.mah@police.gov.bd', '2019-03-18 07:07:28', '2019-03-18 07:07:28', NULL),
(227, 3, 5, 42, 54, 'ইনচার্জ, নওহাটা পুলিশ ফাঁড়ি, মহাদেবপুর থানা', 'জনাব মোঃ হুমায়ুন কবীর', '০১৭৬৯-৬৯১০৮০', NULL, NULL, NULL, '2019-03-18 07:27:02', '2019-03-18 07:27:02', NULL),
(228, 3, 5, 42, 54, 'ডিউটি অফিসার', NULL, '০১৭৬৯-৬৯১০৭২', '০৭৪২৬-৭৫০০৪', NULL, NULL, '2019-03-18 07:28:17', '2019-03-18 07:28:17', NULL),
(229, 3, 5, 43, 55, 'অফিসার ইনচার্জ', 'জনাব মোঃ জালাল উদ্দিন', '০১৭১৩-৩৭৩৮৪০', NULL, NULL, 'ocnao.bad@police.gov.bd', '2019-03-18 07:30:31', '2019-03-18 07:37:00', NULL),
(230, 3, 5, 43, 55, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ আব্দুল মালেক', '০১৭৬৯-৬৯১০৫৮', NULL, NULL, 'opsnao.bad@police.gov.bd', '2019-03-18 07:31:08', '2019-03-18 07:37:11', NULL),
(231, 3, 5, 43, 55, 'ইনচার্জ, পাহাড়পুর ফাঁড়ি, বদলগাছী', NULL, '০১৭৬৯-৬৯১০৮১', NULL, NULL, NULL, '2019-03-18 07:31:53', '2019-03-18 07:31:53', NULL),
(232, 3, 5, 43, 55, 'ডিউটি অফিসার', NULL, '০১৭৬৯-৬৯১০৭০', '০৭৪২৩-৫৬০০২', NULL, NULL, '2019-03-18 07:32:35', '2019-03-18 07:32:35', NULL),
(233, 3, 5, 44, 56, 'অফিসার ইনচার্জ', 'জনাব পরিমল কুমার চক্রবর্তী', '০১৭১৩-৩৭৩৮৪২', NULL, NULL, 'ocnao.pat@police.gov.bd', '2019-03-18 07:34:50', '2019-03-18 07:34:50', NULL),
(234, 3, 5, 44, 56, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ জহুরুল হক', '০১৭৬৯-৬৯১০৬২', NULL, NULL, 'opsnao.pat@police.gov.bd', '2019-03-18 07:35:39', '2019-03-18 07:35:39', NULL),
(235, 3, 5, 44, 56, 'ডিউটি অফিসার', NULL, '০১৭৬৯-৬৯১০৭৪', '০৭৪২৮-৬৩০১৫', NULL, NULL, '2019-03-18 07:36:05', '2019-03-18 07:36:05', NULL),
(236, 3, 5, 45, 57, 'অফিসার ইনচার্জ', 'জনাব মোঃ জাকিরুল ইসলাম', '০১৭১৩-৩৭৩৮৩৯', NULL, NULL, 'ocnao.dah@police.gov.bd', '2019-03-18 07:39:17', '2019-03-18 07:39:17', NULL),
(237, 3, 5, 45, 57, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ মাহবুব আলম,', '01769-691063', NULL, NULL, 'opsnao.dah@police.gov.bd', '2019-03-18 07:40:13', '2019-03-18 07:40:13', NULL),
(238, 3, 5, 45, 57, 'ডিউটি অফিসার', NULL, '০১৭৬৯-৬৯১০৭৫', '০৭৪২৪-৫৬০০৩', NULL, NULL, '2019-03-18 07:40:40', '2019-03-18 07:40:40', NULL),
(239, 3, 5, 46, 58, 'অফিসার ইনচার্', 'জনাব মোঃ তোরিকুল ইসলাম', '০১৭১৩-৩৭৩৮৪৩', NULL, NULL, 'ocnao.nya@police.gov.bd', '2019-03-18 07:42:08', '2019-03-18 07:42:08', NULL),
(240, 3, 5, 46, 58, 'ইন্সপেক্টর (তদন্ত)', NULL, '০১৭৬৯-৬৯১০৬১', NULL, NULL, 'opsnao.nya@police.gov.bd', '2019-03-18 07:43:27', '2019-03-18 07:43:27', NULL),
(241, 3, 5, 46, 58, 'ডিউটি অফিসার', NULL, '০১৭৬৯-৬৯১০৭৩', '০৭৪২৭-৫৬০১২', NULL, NULL, '2019-03-18 07:43:53', '2019-03-18 07:43:53', NULL),
(242, 3, 5, 47, 59, 'অফিসার, ইনচার্জ', 'জনাব মোঃ মোজাফফর হোসেন', '০১৭১৩-৩৭৩৮৪৪', NULL, NULL, 'ocnao.man@police.gov.bd', '2019-03-18 07:46:19', '2019-03-18 07:46:19', NULL),
(243, 3, 5, 47, 59, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ মাহবুব আলম', '01769-691059', NULL, NULL, 'opsnao.man@police.gov.bd', '2019-03-18 07:47:14', '2019-03-18 07:47:14', NULL),
(244, 3, 5, 47, 59, 'ডিউটি অফিসার', NULL, '০১৭৬৯-৬৯১০৭১', '০৭৪২৫-৬২০১৩', NULL, NULL, '2019-03-18 07:47:49', '2019-03-18 07:47:49', NULL),
(245, 3, 5, 48, 60, 'অফিসার ইনচার্জ', 'জনাব মোঃ মোবারক হোসেন', '০১৭১৩-৩৭৩৮৩৮', NULL, NULL, 'ocnao.atr@police.gov.bd', '2019-03-18 09:37:01', '2019-03-18 09:37:01', NULL),
(246, 3, 5, 48, 60, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ আবুল কালাম আজাদ', '০১৭৬৯-৬৯১০৫৭', NULL, NULL, 'opsnao.atr@police.gov.bd', '2019-03-18 09:37:35', '2019-03-18 09:37:35', NULL),
(247, 3, 5, 48, 60, 'ডিউটি অফিসার', NULL, '০১৭৬৯-৬৯১০৬৯', '০৭৪২২-৭১০১১', NULL, NULL, '2019-03-18 09:38:11', '2019-03-18 09:38:11', NULL),
(248, 3, 5, 49, 61, 'অফিসার ইনচার্জ', 'জনাব এ,এস,এম, সিদ্দিকুর রহমান', '০১৭১৩-৩৭৩৮৩৭', NULL, NULL, 'ocnao.ran@police.gov.bd', '2019-03-18 09:39:34', '2019-03-18 09:39:34', NULL),
(249, 3, 5, 49, 61, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ তারেকুর রহমান সরকার', '০১৭৬৯-৬৯১০৫৬', NULL, NULL, 'opsnao.ran@police.gov.bd', '2019-03-18 09:40:17', '2019-03-18 09:40:17', NULL),
(250, 3, 5, 49, 61, 'ডিউটি অফিসার', NULL, '০১৭৬৯-৬৯১০৬৮', '০৭৪৩৩-৫৬০০৪', NULL, NULL, '2019-03-18 09:40:40', '2019-03-18 09:40:40', NULL),
(251, 3, 5, 50, 62, 'অফিসার ইনচার্জ', 'জনাব মোঃ আব্দুল হাই', '০১৭১৩-৩৭৩৮৩৬', NULL, NULL, 'ocnao.nao@police.gov.bd', '2019-03-18 09:42:49', '2019-03-18 09:42:49', NULL),
(252, 3, 5, 50, 62, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ আনোয়ার হোসেন', '০১৭৬৯-৬৯১০৫৫', NULL, NULL, 'opsnao.nao@police.gov.bd', '2019-03-18 09:43:51', '2019-03-18 09:43:51', NULL),
(253, 3, 5, 50, 62, 'ইনচার্জ, ভীমপুর ইনভেস্টিগেশন সেন্টার, সদর মডেল থানা', NULL, '০১৭৬৯-৬৯১০৭৮', NULL, NULL, NULL, '2019-03-18 09:45:19', '2019-03-18 09:45:19', NULL),
(254, 3, 5, 50, 62, 'ইনচার্জ, কালীতলা পুলিশ ফাঁড়ি, সদর মডেল থানা', 'জনাব মোহাম্মদ আল মাহমুদ', '০১৭৬৯-৬৯১০৭৯', NULL, NULL, NULL, '2019-03-18 09:46:05', '2019-03-18 09:46:05', NULL),
(255, 3, 5, 50, 62, 'ডিউটি অফিসার', NULL, '০১৭৬৯-৬৯১০৬৭', '০৭৪১-৬২২০১', NULL, NULL, '2019-03-18 09:46:27', '2019-03-18 09:46:27', NULL),
(256, 3, 5, 51, 63, 'অফিসার ইনচার্জ', 'জনাব মোঃ শাহিনুর রহমান', '০১৭১৩-৩৭৩৮৪৬', NULL, NULL, 'ocnao.por@police.gov.bd', '2019-03-18 09:48:09', '2019-03-18 09:48:09', NULL),
(257, 3, 5, 51, 63, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ আব্দুল মালেক', '০১৭৬৯-৬৯১০৬৫', NULL, NULL, 'opsnao.por@police.gov.bd', '2019-03-18 09:49:10', '2019-03-18 09:49:10', NULL),
(258, 3, 5, 51, 63, 'ডিউটি অফিসার', NULL, '০১৭৬৯-৬৯১০৭৭', '০৭৪২৯-৫৬০২২', NULL, NULL, '2019-03-18 09:49:44', '2019-03-18 09:49:44', NULL),
(259, 3, 5, 52, 64, 'অফিসার ইনচার্জ', 'জনাব মোঃ শামসুল আলম শাহ্', '০১৭১৩-৩৭৩৮৪৫', NULL, NULL, 'ocnao.sha@police.gov.bd', '2019-03-18 09:51:18', '2019-03-18 09:51:18', NULL),
(260, 3, 5, 52, 64, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ মনিরুল ইসলাম', '০১৭৬৯-৬৯১০৬৪', NULL, NULL, 'opsnao.sha@police.gov.bd', '2019-03-18 09:52:23', '2019-03-18 09:52:23', NULL),
(261, 3, 5, 52, 64, 'ডিউটি অফিসার', NULL, '০১৭৬৯-৬৯১০৭৬', '০৭৪৩২-৭৪০১৪', NULL, NULL, '2019-03-18 09:52:55', '2019-03-18 09:52:55', NULL),
(262, 3, 6, 53, 65, 'অফিসার ইনচার্জ', 'জনাব মোঃ শরিফুল আলম', '০১৭১৩-৩৭৪০২২', NULL, NULL, 'ocsujanagarpabna@police.gov.bd', '2019-03-18 09:56:45', '2019-03-18 09:56:45', NULL),
(263, 3, 6, 53, 65, 'ইন্সপেক্টর (তদন্ত)', 'জনাব অরবিন্দ সরকার', '০১৭৬৯-০৫৮০৪০', NULL, NULL, NULL, '2019-03-18 09:58:06', '2019-03-18 09:58:06', NULL),
(264, 3, 6, 53, 65, 'ডিউটি অফিসার', NULL, '০১৭৫০-১৮৯৯৭১', '০৭৩২৯-৫৬১০৩', NULL, NULL, '2019-03-18 09:59:02', '2019-03-18 09:59:02', NULL),
(265, 3, 6, 54, 66, 'অফিসার ইনচার্জ', 'জনাব বাহাউদ্দিন ফারুকী বিপিএম, পিপিএম', '০১৭১৩-৩৭৪০১৭', NULL, NULL, 'ocishwardipabna@police.gov.bd', '2019-03-18 10:01:51', '2019-03-18 10:01:51', NULL),
(266, 3, 6, 54, 66, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মো সামছুল আলম', '০১৭৬৯-০৫৮০৪২', NULL, NULL, NULL, '2019-03-18 10:02:39', '2019-03-18 10:02:39', NULL),
(267, 3, 6, 54, 66, 'ডিউটি অফিসার', NULL, '০১৭৫০-১৮৯৯৭৩', '০৭৩২৬-৬৩৩৯৬', NULL, NULL, '2019-03-18 10:03:19', '2019-03-18 10:03:19', NULL),
(268, 3, 6, 55, 67, 'অফিসার ইনচার্জ', 'জনাব মোঃ মাসুদ রানা', '০১৭১৩-৩৭৪০২০', NULL, NULL, 'ocvanggurapabna@police.gov.bd', '2019-03-18 10:04:55', '2019-03-18 10:04:55', NULL),
(269, 3, 6, 55, 67, 'ইন্সপেক্টর (তদন্ত)', 'জনাব আসিফ মোহাম্মদ সিদ্দিকুল ইসলাম', '০১৭৬৯-০৫৮০৪৪', NULL, NULL, NULL, '2019-03-18 10:05:35', '2019-03-18 10:05:35', NULL),
(270, 3, 6, 55, 67, 'ডিউটি অফিসার', NULL, '০১৭৫০-১৮৯৯৭৫, ০১৭৯৪-৪৪৯১২০', '০৭৩২৮-৫৬০০৮', NULL, NULL, '2019-03-18 10:06:17', '2019-03-18 10:06:17', NULL),
(271, 3, 6, 56, 68, 'অফিসার ইনচার্জ', 'জনাব মোঃ ওবাইদুল হক', '০১৭১৩-৩৭৪০১৬', NULL, NULL, 'ocpabna@police.gov.bd', '2019-03-18 10:08:19', '2019-03-18 10:08:19', NULL),
(272, 3, 6, 56, 68, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ আসাদুজ্জামান', '০১৭৬৯-০৫৮০৩৯', NULL, NULL, NULL, '2019-03-18 10:08:54', '2019-03-18 10:08:54', NULL),
(273, 3, 6, 56, 68, 'ডিউটি অফিসার', NULL, '০১৭৮৫-৯৬৫৯১৮', '০৭৩১-৬৫০০৫', NULL, NULL, '2019-03-18 10:09:26', '2019-03-18 10:09:26', NULL),
(274, 3, 6, 56, 68, 'ইনচার্জ, সদর ফাঁড়ি, পাবনা সদর থানা', 'জনাব মোঃ আব্দুুল কুদ্দুস', '০১৭১৫-৪৬৬৭৮৮', NULL, NULL, NULL, '2019-03-18 10:10:38', '2019-03-18 10:10:38', NULL),
(275, 3, 6, 54, 66, 'ইনচার্জ, ঈশ্বরদী পুলিশ ফাঁড়ি,', 'জনাব মোঃ আনোয়ার হোসেন', '০১৭৩১-৩৯৭০৭২', NULL, NULL, NULL, '2019-03-18 10:13:22', '2019-03-18 10:13:22', NULL),
(276, 3, 6, 57, 69, 'অফিসার ইনচার্জ', 'জনাব মো শাহিদ মাহমুদ খান', '০১৭১৩-৩৭৪০২৩', NULL, NULL, 'ocberapabna@police.gov.bd', '2019-03-18 10:24:50', '2019-03-18 10:24:50', NULL),
(277, 3, 6, 57, 69, 'ইন্সপেক্টর (তদন্ত)', 'জনাব মোঃ খাইরুল ইসলাম', '০১৭৬৯-০৫৮০৪৬', NULL, NULL, NULL, '2019-03-18 10:25:31', '2019-03-18 10:25:31', NULL),
(278, 3, 6, 57, 69, 'ডিউটি অফিসার', NULL, '০১৭৫০-১৮৯৯৭৭', '০৭৩২৩-৭৫০০৮', NULL, NULL, '2019-03-18 10:25:55', '2019-03-18 10:25:55', NULL),
(279, 3, 6, 58, 70, 'অফিসার ইনচার্জ, আটঘরিয়া থানা, পাবনা', 'জনাব মুঃ রকিবুল ইসলাম', '০১৭১৩-৩৭৪০১৮', NULL, NULL, 'ocartghariapabna@police.gov.bd', '2019-03-23 10:23:07', '2019-03-23 10:23:07', NULL),
(280, 3, 6, 58, 70, 'ইন্সপেক্টর (তদন্ত), আটঘরিয়া থানা, পাবনা', 'জনাব মোঃ নাজমুল হক', '০১৭৬৯-০৫৮০৪১', NULL, NULL, NULL, '2019-03-23 10:23:56', '2019-03-23 10:23:56', NULL),
(281, 3, 6, 58, 70, 'ডিউটি অফিসার, আটঘরিয়া থানা, পাবনা', NULL, '০১৭৫০-১৮৯৯৭২', '০৭৩২২-৫৬০২১', NULL, NULL, '2019-03-23 10:24:37', '2019-03-23 10:24:37', NULL),
(282, 3, 6, 59, 71, 'অফিসার ইনচার্জ, চাটমোহর থানা, পাবনা', 'জনাব সেখ মোঃ নাসীর উদ্দীন', '০১৭১৩-৩৭৪০১৯', NULL, NULL, 'occhatmoharpabna@police.gov.bd', '2019-03-23 10:26:43', '2019-03-23 10:26:43', NULL),
(283, 3, 6, 59, 71, 'ইন্সপেক্টর (তদন্ত), চাটমোহর থানা, পাবনা', 'জনাব মোঃ শরিফুল ইসলাম', '০১৭৬৯-০৫৮০৪৩', NULL, NULL, NULL, '2019-03-23 10:28:22', '2019-03-23 10:28:22', NULL),
(284, 3, 6, 59, 71, 'ডিউটি অফিসার, চাটমোহর থানা, পাবনা', NULL, '০১৭৫০-১৮৯৯৭৪', '০৭৩২৪-৫৬১১০', NULL, NULL, '2019-03-23 10:29:19', '2019-03-23 10:29:19', NULL),
(285, 3, 6, 60, 72, 'অফিসার ইনচার্জ, সাঁথিয়া থানা, পাবনা', 'জনাব মোঃ জাহাঙ্গীর হোসেন', '০১৭১৩-৩৭৪০২৪', NULL, NULL, 'ocsathiyapabna@police.gov.bd', '2019-03-23 10:31:24', '2019-03-23 10:31:24', NULL),
(286, 3, 6, 60, 72, 'ইন্সপেক্টর (তদন্ত), সাঁথিয়া থানা, পাবনা', 'জনাব মোঃ আব্দুর রহমান', '০১৭৬৯-০৫৮০৪৭', NULL, NULL, NULL, '2019-03-23 10:31:58', '2019-03-23 10:31:58', NULL),
(287, 3, 6, 60, 72, 'ডিউটি অফিসার, সাঁথিয়া থানা, পাবনা', NULL, '০১৭৫০-১৮৯৯৭৮', '০৭৩২৭-৫৬১০২', NULL, NULL, '2019-03-23 10:32:30', '2019-03-23 10:32:30', NULL),
(288, 3, 6, 61, 73, 'অফিসার ইনচার্জ, ফরিদপুর থানা, পাবনা', 'জনাব মোহাম্মদ ওবায়দুর রহমান', '০১৭১৩-৩৭৪০২১', NULL, NULL, 'ocfaridpurpabna@police.gov.bd', '2019-03-23 10:34:23', '2019-03-23 10:34:23', NULL),
(289, 3, 6, 61, 73, 'ইন্সপেক্টর (তদন্ত), ফরিদপুর থানা, পাবনা', 'জনাব মোঃ হাদিউল ইসলাম', '০১৭৬৯-০৫৮০৪৫', NULL, NULL, NULL, '2019-03-23 10:34:55', '2019-03-23 10:34:55', NULL),
(290, 3, 6, 61, 73, 'ডিউটি অফিসার, ফরিদপুর থানা, পাবনা', NULL, '০১৭৫০-১৮৯৯৭৬', '০৭৩২৫-৬৪০১১', NULL, NULL, '2019-03-23 10:35:25', '2019-03-23 10:35:25', NULL),
(291, 3, 6, 62, 74, 'অফিসার ইনচার্জ, আতাইকুলা থানা, পাবনা', 'জনাব মোঃ মনিরুজ্জামান', '০১৭১৩-৩৭৪০২৫', NULL, NULL, 'ocataikulapabna@police.gov.bd', '2019-03-23 10:36:41', '2019-03-23 10:36:41', NULL),
(292, 3, 6, 62, 74, 'ইন্সপেক্টর (তদন্ত), আতাইকুলা থানা, পাবনা', 'জনাব মোঃ কামরুল ইসলাম', '০১৭৬৯-০৫৮০৪৮', NULL, NULL, NULL, '2019-03-23 10:37:11', '2019-03-23 10:37:11', NULL),
(293, 3, 6, 62, 74, 'ডিউটি অফিসার, আতাইকুলা থানা, পাবনা', NULL, '০১৭৫০-১৮৯৯৭৯', '০৭৩২৭-৮৯০০১', NULL, NULL, '2019-03-23 10:37:41', '2019-03-23 10:37:41', NULL),
(294, 3, 6, 63, 75, 'অফিসার ইনচার্জ, আমিনপুর থানা, পাবনা', 'জনাব মোঃ মমিনুল ইসলাম,পিপিএম', '০১৭৬৯-৬৯০৪৪৩', NULL, NULL, NULL, '2019-03-23 10:39:23', '2019-03-23 10:39:23', NULL),
(295, 3, 6, 63, 75, 'ইন্সপেক্টর (তদন্ত), আমিনপুর থানা, পাবনা', 'জনাব মোঃ হাসান বাসির', '০১৭৬৯-৬৯০৪৪৪', NULL, NULL, NULL, '2019-03-23 10:39:54', '2019-03-23 10:39:54', NULL),
(296, 3, 6, 63, 75, 'ডিউটি অফিসার, আমিপুর থানা, পাবনা', NULL, '০১৭৯৪-৪৪৯১২৬', NULL, NULL, NULL, '2019-03-23 10:40:20', '2019-03-23 10:40:20', NULL),
(297, 3, 7, 65, 76, 'অফিসার ইনচার্জ, সিরাজগঞ্জ সদর থানা, সিরাজগঞ্জ', NULL, '০১৭১৩-৩৭৪০৩৮', '০৭৫১-৬২২২২', NULL, 'ocsir.sir@police.gov.bd', '2019-03-23 10:44:34', '2019-03-23 10:44:34', NULL),
(298, 3, 7, 65, 76, 'ইন্সপেক্টর (তদন্ত), সিরাজগঞ্জ সদর থানা, সিরাজগঞ্জ', NULL, '০১৭৬৯-৬৯১০৩৩', NULL, NULL, 'opssir.sir@police.gov.bd', '2019-03-23 10:45:20', '2019-03-23 10:45:20', NULL),
(299, 3, 7, 65, 76, 'ডিউটি অফিসার, সিরাজগঞ্জ সদর থানা, সিরাজগঞ্জ', NULL, '০১৭০৯-৩৬০১০০', '০৭৫১-৬২৬৯৬', NULL, NULL, '2019-03-23 10:45:57', '2019-03-23 10:45:57', NULL),
(300, 3, 7, 66, 77, 'অফিসার ইনচার্জ, শাহজাদপুর থানা, সিরাজগঞ্জ', 'জনাব মোঃ খাজা গোলাম কিবরিয়া', '০১৭১৩-৩৭৪০৩৯', '০৭৫২৭-৬৪৬২২', NULL, 'ocsir.sha@police.gov.bd', '2019-03-23 10:47:46', '2019-03-23 10:47:46', NULL),
(301, 3, 7, 66, 77, 'ইন্সপেক্টর (তদন্ত), শাহ্জাদপুর থানা, সিরাজগঞ্জ', 'জনাব কে.এম. রাকিবুল হুদা', '01769-691041', NULL, NULL, 'opssir.sha@police.gov.bd', '2019-03-23 10:48:34', '2019-03-23 10:48:34', NULL),
(302, 3, 7, 66, 77, 'ডিউটি অফিসার, শাহজাদপুর থানা, সিরাজগঞ্জ', NULL, '০১৭০৯-৩৬০১০৮', '০৭৫২৭-৬৪৬২২', NULL, NULL, '2019-03-23 10:49:31', '2019-03-23 10:49:31', NULL),
(303, 3, 7, 67, 78, 'অফিসার ইনচার্জ, উল্লাপাড়া মডেল থানা, সিরাজগঞ্জ', 'জনাব দেওয়ান কউশিক আহম্মেদ', '০১৭১৩-৩৭৪০৪০', NULL, NULL, 'ocsir.ull@police.gov.bd', '2019-03-23 10:54:09', '2019-03-23 10:54:09', NULL),
(304, 3, 7, 67, 78, 'ইন্সপেক্টর(তদন্ত), উল্লাপাড়া থানা, সিরাজগঞ্জ', 'জনাব মোঃ গোলাম মোস্তফা', '০১৭৬৯-৬৯১০৪২', NULL, NULL, 'opssir.ull@police.gov.bd', '2019-03-23 10:55:08', '2019-03-23 10:55:08', NULL);
INSERT INTO `jurisdiction_contacts` (`id`, `jurisdiction_level_id`, `district_id`, `thana_id`, `user_id`, `designation`, `person_name`, `mobile`, `phone`, `fax`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(305, 3, 7, 67, 78, 'ডিউটি অফিসার, উল্লাপাড়া মডেল থানা, সিরাজগঞ্জ', NULL, '০১৭০৯-৩৬০১০৯', '০৭৫২-৯৫৬১৪১', NULL, NULL, '2019-03-23 10:55:56', '2019-03-23 10:55:56', NULL),
(306, 3, 7, 68, 79, 'অফিসার-ইন-চার্জ, চৌহালী থানা, সিরাজগঞ্জ', 'জনাব মোঃ জাহাঙ্গীর আলম', '০১৭১৩-৩৭৪০৪১', NULL, NULL, 'ocsir.sho@police.gov.bd', '2019-03-23 11:39:12', '2019-03-23 11:39:12', NULL),
(307, 3, 7, 68, 79, 'ইন্সপেক্টর (তদন্ত), চৌহালী থানা, সিরাজগঞ্জ', 'জনাব মোঃ হাসিবুল্লাহ', '০১৭৬৯-৬৯১০৪৪', NULL, NULL, 'opssir.sho@police.gov.bd', '2019-03-23 11:40:04', '2019-03-23 11:40:04', NULL),
(308, 3, 7, 68, 79, 'ডিউটি অফিসার, চৌহালী থানা, সিরাজগঞ্জ', NULL, '০১৭০৯-৩৬০১১০', '০৭৫১-৬৩৮৩৮', NULL, NULL, '2019-03-23 11:40:46', '2019-03-23 11:40:46', NULL),
(309, 3, 7, 69, 80, 'অফিসার ইনচার্জ, তাড়াশ থানা, সিরাজগঞ্জ', 'জনাব মোঃ মোস্তাফিজুর রহমান', '০১৭১৩-৩৭৪০৪২', NULL, NULL, 'ocsir.tar@police.gov.bd', '2019-03-23 11:41:59', '2019-03-23 11:41:59', NULL),
(310, 3, 7, 69, 80, 'ইন্সপেক্টর (তদন্ত), তাড়াশ থানা, সিরাজগঞ্জ', 'জনাব মোঃ ফজলে আশিক', '০১৭৬৯-৬৯১০৩৮', NULL, NULL, 'opssir.tar@police.gov.bd', '2019-03-23 11:45:27', '2019-03-23 11:45:27', NULL),
(311, 3, 7, 69, 80, 'ডিউটি অফিসার, তাড়াশ থানা, সিরাজগঞ্জ', NULL, '০১৭০৯-৩৬০১০৫', '০৭৫২-৮৫৬২০৩', NULL, NULL, '2019-03-23 11:46:07', '2019-03-23 11:46:07', NULL),
(312, 3, 7, 70, 81, 'অফিসার ইন-চার্জ, কাজিপুর থানা, সিরাজগঞ্জ', 'জনাব একে এম লুৎফর রহমান', '০১৭১৩-৩৭৪০৪৩', NULL, NULL, 'ocsir.kaz@police.gov.bd', '2019-03-23 11:47:45', '2019-03-23 11:47:45', NULL),
(313, 3, 7, 70, 81, 'ইন্সপেক্টর(তদন্ত), কাজিপুর থানা, সিরাজগঞ্জ', 'জনাব শ্রী গৌতম চন্দ্র মালী', '01769-691035', NULL, NULL, 'opssir.kaz@police.gov.bd', '2019-03-23 11:48:25', '2019-03-23 11:48:25', NULL),
(314, 3, 7, 70, 81, 'ডিউটি অফিসার, কাজিপুর থানা, সিরাজগঞ্জ', NULL, '০১৭০৯-৩৬০১০১', '০৭৫২-৫৫৬১১৪', NULL, NULL, '2019-03-23 11:49:00', '2019-03-23 11:49:00', NULL),
(315, 3, 7, 71, 82, 'অফিসার ইনচার্জ, কামারখন্দ থানা, সিরাজগঞ্জ', 'জনাব মোঃ হাবিবুল ইসলাম', '০১৭১৩-৩৭৪০৪৪', '০৭৫২৪-৫৬০০৪', NULL, 'ocsir.kam@police.gov.bd', '2019-03-24 05:19:53', '2019-03-24 05:19:53', NULL),
(316, 3, 7, 71, 82, 'ইন্সপেক্টর (তদন্ত), কামারখন্দ থানা, সিরাজগঞ্জ', 'জনাব পলাশ চন্দ্র দেব', '০১৭৬৯-৬৯১০৩৯', NULL, NULL, 'opssir.kam@police.gov.bd', '2019-03-24 05:20:35', '2019-03-24 05:20:35', NULL),
(317, 3, 7, 71, 82, 'ডিউটি অফিসার, কামারখন্দ থানা, সিরাজগঞ্জ', NULL, '০১৭০৯-৩৬০১০৬', '০৭৫২-৪৫৬০০৪', NULL, NULL, '2019-03-24 05:21:30', '2019-03-24 05:21:30', NULL),
(318, 3, 7, 72, 83, 'অফিসার ইনচার্জ, রায়গঞ্জ থানা, সিরাজগঞ্জ', 'জনাব পঞ্চনন্দ সরকার', '০১৭১৩-৩৭৪০৪৫', NULL, NULL, 'ocsir.rai@police.gov.bd', '2019-03-24 05:22:51', '2019-03-24 05:22:51', NULL),
(319, 3, 7, 72, 83, 'ইন্সপেক্টর (তদন্ত), রায়গঞ্জ থানা, সিরাজগঞ্জ', 'জনাব মোঃ শহিদুল ইসলাম', '০১৭৬৯-৬৯১০৩৭', NULL, NULL, 'opssir.rai@police.gov.bd', '2019-03-24 05:23:29', '2019-03-24 05:23:29', NULL),
(320, 3, 7, 72, 83, 'ডিউটি অফিসার, রায়গঞ্জ  থানা, সিরাজগঞ্জ', NULL, '০১৭০৯-৩৬০১০৪', '০৭৫০-৬৫৬১১২', NULL, NULL, '2019-03-24 05:24:15', '2019-03-24 05:24:15', NULL),
(321, 3, 7, 73, 84, 'অফিসার ইন-চার্জ, বেলকুচি থানা, সিরাজগঞ্জ', 'জনাব মোঃ আনোয়ারুল ইসলাম', '০১৭১৩-৩৭৪০৪৬', NULL, NULL, 'ocsir.bel@police.gov.bd', '2019-03-24 05:25:24', '2019-03-24 05:25:24', NULL),
(322, 3, 7, 73, 84, 'ইন্সপেক্টর(তদন্ত), বেলকুচি থানা, সিরাজগঞ্জ', 'জনাব মোঃ নূরে আলম', '০১৭৬৯-৬৯১০৩৪', NULL, NULL, 'opssir.bel@police.gov.bd', '2019-03-24 05:25:57', '2019-03-24 05:25:57', NULL),
(323, 3, 7, 73, 84, 'ডিউটি অফিসার, বেলকুচি  থানা, সিরাজগঞ্জ', NULL, '০১৭০৯-৩৬০১০২', '০৭৫২-২৫৬৪২৩', NULL, NULL, '2019-03-24 05:26:33', '2019-03-24 05:26:33', NULL),
(324, 3, 7, 74, 85, 'অফিসার ইন-চার্জ, বঙ্গবন্ধু সেতু পশ্চিম থানা, সিরাজগঞ্জ', 'জনাব সৈয়দ সহিদ আলম, বিপিএম', '০১৭১৩-৩৭৪০৪৭', NULL, NULL, NULL, '2019-03-24 05:27:46', '2019-03-24 05:27:46', NULL),
(325, 3, 7, 74, 85, 'ইন্সপেক্টর(তদন্ত), বঙ্গবন্ধু সেতু পশ্চিম থানা, সিরাজগঞ্জ', 'জনাব মরতবা ওয়ালী', '০১৭৬৯-৬৯১০৩৬', NULL, NULL, NULL, '2019-03-24 05:28:14', '2019-03-24 05:28:14', NULL),
(326, 3, 7, 74, 85, 'ডিউটি অফিসার, বঙ্গবন্ধু সেতু পশ্চিম থানা, সিরাজগঞ্জ', NULL, '০১৭০৯-৩৬০১০৩', NULL, NULL, NULL, '2019-03-24 05:29:02', '2019-03-24 05:29:02', NULL),
(327, 3, 7, 75, 86, 'অফিসার ইনচার্জ, সলঙ্গা থানা, সিরাজগঞ্জ', 'জনাব জাহাঙ্গীর জান্নাত মোঃ তাজুল হুদা', '০১৭১৩-৩৭৪০৪৮', NULL, NULL, 'ocsir.sal@police.gov.bd', '2019-03-24 05:30:29', '2019-03-24 05:30:29', NULL),
(328, 3, 7, 75, 86, 'ইন্সপেক্টর (তদন্ত), সলঙ্গা থানা, সিরাজগঞ্জ', 'জনাব মোঃ হাবিবুল্লাহ', '০১৭৬৯-৬৯১০৪০', NULL, NULL, 'opssir.sal@police.gov.bd', '2019-03-24 05:31:06', '2019-03-24 05:31:06', NULL),
(329, 3, 7, 75, 86, 'ডিউটি  অফিসার, সলঙ্গা থানা, সিরাজগঞ্জ', NULL, '০১৭০৯-৩৬০১০৭', '০৭৫৩-২৫১১০০', NULL, NULL, '2019-03-24 05:31:41', '2019-03-24 05:31:41', NULL),
(330, 3, 7, 76, 87, 'অফিসার-ইনচার্জ, এনায়েতপুর থানা, সিরাজগঞ্জ', 'জনাব মোঃ মাহবুবুল আলম', '০১৭১৩-৩৭৪০৪৯', NULL, NULL, 'ocsir.ena@police.gov.bd', '2019-03-24 05:32:47', '2019-03-24 05:32:47', NULL),
(331, 3, 7, 76, 87, 'ইন্সপেক্টর (তদন্ত), এনায়েতপুর থানা সিরাজগঞ্জ', 'জনাব মোহাম্মদ মোয়াজ্জেম হোসেন', '০১৭৬৯-৬৯১০৪৩', NULL, NULL, 'opssir.ena@police.gov.bd', '2019-03-24 05:33:20', '2019-03-24 05:33:20', NULL),
(332, 3, 8, 77, 88, 'অফিসার ইনচার্জ,জয়পুরহাট থানা, জয়পুরহাট', 'জনাব মোঃ  সিরাজুল ইসলাম', '০১৭১৩-৩৭৪০৮২', NULL, NULL, 'ocjoy.joy@police.gov.bd', '2019-03-24 05:37:52', '2019-03-24 05:37:52', NULL),
(333, 3, 8, 77, 88, 'ইন্সপেক্টর (তদন্ত),জয়পুরহাট থানা, জয়পুরহাট', 'জনাব মোঃ মমিনুল হক', '০১৭৬৯-৬৯৩৪৮৫', NULL, NULL, 'opsjoy.joy@police.gov.bd', '2019-03-24 05:38:50', '2019-03-24 05:38:50', NULL),
(334, 3, 8, 77, 88, 'ডিউটি অফিসার, জয়পুরহাট  থানা,জয়পুরহাট', NULL, '০১৭৬৪-৯৮৯৮৭৩', '০৫৭১-৬২৪৫৫', NULL, NULL, '2019-03-24 05:39:34', '2019-03-24 05:39:34', NULL),
(335, 3, 8, 77, 88, 'ইনচার্জ, সদর ফাঁড়ি, জয়পুরহাট  থানা, জয়পুরহাট', NULL, '০১৭৬৯-৬৯৩৪৯০', '০৫৭১-৬২৪৫৫', NULL, NULL, '2019-03-24 05:40:52', '2019-03-24 05:40:52', NULL),
(336, 3, 8, 77, 88, 'ইনচার্জ, চাক বরকত ফাঁড়ি, জয়পুরহাট থানা, জয়পুরহাট', NULL, '০১৭৬৯-৬৯৩৪৯০', NULL, NULL, NULL, '2019-03-24 05:41:28', '2019-03-24 05:41:28', NULL),
(337, 3, 8, 78, 89, 'অফিসার ইনচার্জ, কালাই থানা, কালাই', 'জনাব  মোঃ আব্দুল লতিফ খান', '০১৭১৩-৩৭৪০৮০', NULL, NULL, 'ocjoy.kal@police.gov.bd', '2019-03-24 05:42:59', '2019-03-24 05:42:59', NULL),
(338, 3, 8, 78, 89, 'ইন্সপেক্টর(তদন্ত), কালাই থানা, কালাই', 'জনাব  সুমন কুমার রায়', '০১৭৬৯৬৪৩৪৮৭', NULL, NULL, 'opsjoy.kal@police.gov.bd', '2019-03-24 05:43:53', '2019-03-24 05:43:53', NULL),
(339, 3, 8, 78, 89, 'ডিউটি অফিসার, কালাই থানা, কালাই', NULL, '০১৭৬৪-৯৮৯৮৭৭', '০৫৭২৫-৫৬০১১', NULL, NULL, '2019-03-24 05:44:25', '2019-03-24 05:44:25', NULL),
(340, 3, 8, 79, 90, 'অফিসার ইনচার্জ, ক্ষেতলাল থানা', 'জনাব মোহাঃ শাহরিয়ার খান', '০১৭১৩৩৭৪০৮৪', NULL, NULL, 'ocjoy.khe@police.gov.bd', '2019-03-24 05:46:02', '2019-03-24 05:46:02', NULL),
(341, 3, 8, 79, 90, 'ইন্সপেক্টর(তদন্ত),ক্ষেতলাল থানা', 'জনাব মোঃ সেলিম মালিক', '০১৭৬৯৬৯৩৪৮৮', NULL, NULL, 'opsjoy.khe@police.gov.bd', '2019-03-24 05:46:33', '2019-03-24 05:46:33', NULL),
(342, 3, 8, 79, 90, 'ডিউটি অফিসার, ক্ষেতলাল থানা', NULL, '০১৭৬৪-৯৮৯৮৭৬', '০৫৭২৩-৫৬০১২', NULL, NULL, '2019-03-24 05:47:01', '2019-03-24 05:47:01', NULL),
(343, 3, 8, 80, 91, 'অফিসার ইনচার্জ, আক্কেলপুর থানা', 'জনাব  কিরন কুমার রায়', '০১৭১৩৩৭৪০৮৫', NULL, NULL, 'ocjoy.akk@police.gov.bd', '2019-03-24 05:48:07', '2019-03-24 05:48:07', NULL),
(344, 3, 8, 80, 91, 'ইন্সপেক্টর(তদন্ত),আক্কেলপুর থানা', 'জনাব মোঃ আবু রায়হান', '০১৭৬৯-৬৯৩৪৮৯', NULL, NULL, 'opsjoy.akk@police.gov.bd', '2019-03-24 05:49:31', '2019-03-24 05:49:31', NULL),
(345, 3, 8, 80, 91, 'ডিউটি অফিসার, আক্কেলপুর থানা', NULL, '০১৭৬৪-৯৮৯৮৭৫', '০৫৭২২-৬৪০০৩', NULL, NULL, '2019-03-24 05:50:04', '2019-03-24 05:50:04', NULL),
(346, 3, 8, 81, 92, 'অফিসার ইনচার্জ ,পাঁচবিবি থানা', 'জনাব মোঃ বজলার রহমান', '০১৭১৩-৩৭৪০৮৬', NULL, NULL, 'ocjoy.pan@police.gov.bd', '2019-03-24 05:51:16', '2019-03-24 05:51:16', NULL),
(347, 3, 8, 81, 92, 'ইন্সপেক্টর(তদন্ত) পাঁচবিবি থানা', 'জনাব  মোঃ ওমর আলী', '০১৭৬৯-৬৯৩৪৮৬', NULL, NULL, 'opsjoy.pan@police.gov.bd', '2019-03-24 05:51:56', '2019-03-24 05:51:56', NULL),
(348, 3, 8, 81, 92, 'ডিউটি অফিসার, পাঁচবিবি থানা', NULL, '০১৭৬৪-৯৮৯৮৭৪', '০৫৭২৪-৭৫০০৪', NULL, NULL, '2019-03-24 05:52:21', '2019-03-24 05:52:21', NULL),
(349, 2, 17, NULL, 94, 'পুলিশ সুপার', NULL, '০১৭৬৯- ৬৯০৩১০', NULL, NULL, NULL, '2019-08-05 01:06:37', '2019-08-05 01:06:37', NULL),
(350, 2, 17, NULL, 94, 'অতিরিক্ত পুলিশ সুপার(আরএমপি)', NULL, '০১৭৬৯- ৬৯০৩৫০', NULL, NULL, NULL, '2019-08-05 01:07:30', '2019-08-05 01:07:30', NULL),
(351, 2, 17, NULL, 94, 'অতিরিক্ত পুলিশ সুপার(রাজশাহী)', NULL, '০১৭৬৯- ৬৯০৩৫১', '০৭২১-৭৬১৬৮৭', NULL, NULL, '2019-08-05 01:08:14', '2019-08-05 01:08:14', NULL),
(352, 2, 17, NULL, 94, 'অতিরিক্ত পুলিশ সুপার (চাঁপাইনবাবগঞ্জ)', NULL, '০১৭৬৯- ৬৯০৩৫২', NULL, NULL, NULL, '2019-08-05 01:08:46', '2019-08-05 01:08:46', NULL),
(353, 2, 17, NULL, 94, 'অতিরিক্ত পুলিশ সুপার (নওগাঁ)', NULL, '০১৭৬৯- ৬৯০৩৫৩', NULL, NULL, NULL, '2019-08-05 01:09:24', '2019-08-05 01:09:24', NULL),
(354, 2, 17, NULL, 94, 'অতিরিক্ত পুলিশ সুপার(নাটোর)', NULL, '০১৭৬৯- ৬৯০৩৫৪', NULL, NULL, NULL, '2019-08-05 01:09:47', '2019-08-05 01:09:47', NULL),
(355, 2, 17, NULL, 94, 'অতিরিক্ত পুলিশ সুপার(পাবনা)', NULL, '০১৭৬৯- ৬৯০৩৫৬', NULL, NULL, NULL, '2019-08-05 01:10:11', '2019-08-05 01:10:11', NULL),
(356, 2, 17, NULL, 94, 'অতিরিক্ত পুলিশ সুপার(সিরাজগঞ্জ)', NULL, '০১৭৬৯- ৬৯০৩৫৭', NULL, NULL, NULL, '2019-08-05 01:10:55', '2019-08-05 01:10:55', NULL),
(357, 2, 17, NULL, 94, 'অতিরিক্ত পুলিশ সুপার(বগুড়া)', NULL, '০১৭৬৯- ৬৯০৩৫৫', NULL, NULL, NULL, '2019-08-05 01:11:46', '2019-08-05 01:11:46', NULL),
(358, 2, 17, NULL, 94, 'অতিরিক্ত পুলিশ সুপার(জয়পুরহাট)', NULL, '০১৭৬৯- ৬৯০৩৫৮', NULL, NULL, NULL, '2019-08-05 01:12:18', '2019-08-05 01:12:18', NULL),
(359, 2, 18, NULL, 95, 'পুলিশ সুপার', NULL, '০১৭১৩-৩৭৩০৯৫', '০৫১ ৬০৪১০', '০৫১ ৬০৪২০', NULL, '2019-08-05 01:23:58', '2019-08-05 01:23:58', NULL),
(360, 2, 18, NULL, 95, 'অতিরিক্ত পুলিশ সুপার', NULL, '০১৭১৩-৩৭৩০৯৭', '০৫১ ৬০৪৩০', NULL, NULL, '2019-08-05 01:24:26', '2019-08-05 01:24:26', NULL),
(361, 2, 18, NULL, 95, 'সহকারী পুলিশ সুপার', NULL, '০১৭৬৯- ৬৯০৫৯৮', '০৫১ ৭৮৪৮০', NULL, NULL, '2019-08-05 01:24:56', '2019-08-05 01:24:56', NULL),
(362, 2, 18, NULL, 95, 'কন্ট্রোল রুম', NULL, '০১৭৬৯-৬৯০৬৩৫', '০৫১ ৬৯৬৬০', NULL, NULL, '2019-08-05 01:25:43', '2019-08-05 01:25:43', NULL),
(363, 2, 16, NULL, 96, 'বিশেষ পুলিশ সুপার', NULL, '০১৭১৩-৩৭৩০৫০', '০২৪৭-৮১২৬৪৭', NULL, NULL, '2019-08-05 01:29:59', '2019-08-05 01:29:59', NULL),
(364, 2, 16, NULL, 96, 'অতিঃ বিশেষ পুলিশ সুপার', NULL, '০১৭৩০-৩৩৬১৯০', '০২৪৭-৮১২৬৪৮', NULL, NULL, '2019-08-05 01:30:48', '2019-08-05 01:30:48', NULL),
(365, 2, 16, NULL, 96, 'অতিঃ বিশেষ পুলিশ সুপার, রাজশাহী জেলা', NULL, '01730-336216', NULL, NULL, NULL, '2019-08-05 01:33:01', '2019-08-05 01:33:01', NULL),
(366, 2, 16, NULL, 96, 'অতিঃ বিশেষ পুলিশ সুপার, রাজশাহী জেলা', NULL, '01730-336216', NULL, NULL, NULL, '2019-08-05 01:34:33', '2019-08-05 01:34:48', '2019-08-05 01:34:48'),
(367, 2, 16, NULL, 96, 'অতিঃ বিশেষ পুলিশ সুপার, নওগাঁ জেলা', NULL, '01730-336362', NULL, NULL, NULL, '2019-08-05 01:35:58', '2019-08-05 01:35:58', NULL),
(368, 2, 16, NULL, 96, 'অতিঃ বিশেষ পুলিশ সুপার, বগুড়া জেলা', NULL, '01730-336351', '051-63438', NULL, NULL, '2019-08-05 01:37:23', '2019-08-05 01:37:23', NULL),
(369, 2, 16, NULL, 96, 'অতিঃ বিশেষ পুলিশ সুপার, পাবনা জেলা', NULL, NULL, '0731-64604', NULL, NULL, '2019-08-05 01:38:35', '2019-08-05 01:38:35', NULL),
(370, 2, 16, NULL, 96, 'অতিঃ বিশেষ পুলিশ সুপার, সিরাজগঞ্জ জেলা', NULL, '01730-336351', '0751-62983', NULL, NULL, '2019-08-05 01:41:58', '2019-08-05 01:41:58', NULL),
(371, 3, 1, 7, 21, 'Test', NULL, '4564563546', '4546456', NULL, NULL, '2019-08-05 02:06:54', '2019-08-05 02:07:10', '2019-08-05 02:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `links_order` int(3) NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `title`, `icon`, `logo`, `link`, `links_order`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 'Bangladesh Police', NULL, '15645694931542268871unnamed.png', 'https://www.police.gov.bd/', 1, 5, 1, '2019-07-31 10:38:13', '2019-07-31 10:38:13', NULL),
(12, 'Dhaka Metropolitan Police', NULL, '1564570354dmp.png', 'http://dmp.gov.bd/', 2, 5, 1, '2019-07-31 10:52:34', '2019-07-31 10:52:34', NULL),
(13, 'Chattogram Metropolitan Police', NULL, '1564570410cmp.png', 'http://cmp.gov.bd/', 3, 5, 1, '2019-07-31 10:53:30', '2019-07-31 10:53:30', NULL),
(14, 'Rajshahi Metropolitan Police', NULL, '1564570463rmp.png', 'https://www.rmp.gov.bd/', 4, 5, 1, '2019-07-31 10:54:23', '2019-07-31 10:54:23', NULL),
(15, 'Sylhet Metropolitan Police', NULL, '1564570777smp.png', 'http://smp.police.gov.bd/', 7, 5, 1, '2019-07-31 10:59:37', '2019-07-31 11:08:27', NULL),
(16, 'Rangpur Metropolitan Police', NULL, '1564571069rongmp.png', 'https://www.rpmp.gov.bd/', 9, 5, 1, '2019-07-31 11:01:01', '2019-07-31 11:09:52', NULL),
(17, 'Khulna Metropolitan Police', NULL, '1564571229kmp.png', 'https://www.police.gov.bd/en/metropolitan_police', 5, 5, 1, '2019-07-31 11:07:09', '2019-07-31 11:07:46', NULL),
(18, 'Barisal Metropolitan Police', NULL, '1564571368bmp.png', 'https://www.police.gov.bd/en/metropolitan_police', 6, 5, 1, '2019-07-31 11:09:28', '2019-07-31 11:09:28', NULL),
(19, 'Gazipur Metropolitan Police', NULL, '1564571423gazimp.png', 'https://www.police.gov.bd/en/metropolitan_police', 8, 5, 1, '2019-07-31 11:10:23', '2019-07-31 11:10:23', NULL),
(20, 'Dhaka Range', NULL, '1564571527dhakarange.png', 'https://www.police.gov.bd/en/units_dhaka_range', 10, 5, 1, '2019-07-31 11:12:07', '2019-07-31 11:12:07', NULL),
(21, 'Chittagong Range', NULL, '1564574849champ.png', 'http://ctgrangepolice.gov.bd/', 11, 5, 1, '2019-07-31 12:07:29', '2019-07-31 12:08:36', NULL),
(22, 'Khulna Range', NULL, '1564574975khulna range.png', 'https://www.police.gov.bd/en/khulna_range', 12, 5, 1, '2019-07-31 12:09:35', '2019-07-31 12:09:35', NULL),
(23, 'Barisal Range', NULL, '1564575020borisalrange.png', 'https://www.police.gov.bd/en/barisal_range', 13, 5, 1, '2019-07-31 12:10:20', '2019-07-31 12:10:20', NULL),
(24, 'Sylhet Range', NULL, '1564575071chileterange.png', 'https://www.police.gov.bd/en/sylhet_range', 14, 5, 1, '2019-07-31 12:11:11', '2019-07-31 12:11:11', NULL),
(25, 'Rangpur Range', NULL, '1564575116rangpurrange.png', 'http://rangpurrange.police.gov.bd/', 15, 5, 1, '2019-07-31 12:11:56', '2019-07-31 12:11:56', NULL),
(26, 'Mymensingh Range', NULL, '1564575202moymp.png', 'http://www.mymensinghrange.police.gov.bd/', 16, 5, 1, '2019-07-31 12:13:22', '2019-07-31 12:13:22', NULL),
(27, 'Railway Range', NULL, '1564575252railmp.png', 'https://www.police.gov.bd/en/railway_police', 17, 5, 1, '2019-07-31 12:14:12', '2019-07-31 12:14:12', NULL),
(28, 'Rapid Action Battalion', NULL, '1564575481rab.jpeg', 'http://www.rab.gov.bd/', 18, 5, 1, '2019-07-31 12:18:01', '2019-07-31 12:18:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(49, '2014_10_12_000000_create_users_table', 5),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2018_10_03_064229_create_sliders_table', 1),
(66, '2018_10_03_065308_create_services_table', 14),
(35, '2018_10_03_112240_create_complaint_boxes_table', 1),
(60, '2018_10_03_113514_create_news_table', 9),
(37, '2018_10_03_114618_create_news_images_table', 1),
(57, '2018_10_16_123508_create_categories_table', 7),
(39, '2018_10_04_050736_create_digs_table', 1),
(65, '2018_10_04_054151_create_notices_table', 13),
(64, '2018_10_04_055656_create_tenders_table', 12),
(42, '2018_10_04_055944_create_nocs_table', 1),
(43, '2018_10_06_122128_create_settings_table', 1),
(44, '2018_10_10_053814_create_jurisdictionlevels_table', 1),
(45, '2018_10_11_071550_entrust_setup_tables', 1),
(47, '2018_10_13_074632_create_thanas_table', 3),
(61, '2018_10_13_084623_create_districts_table', 10),
(63, '2018_10_18_082631_create_category_news_table', 11),
(68, '2018_10_31_134141_create_staff_table', 15),
(69, '2018_11_01_124429_create_galleries_table', 16),
(70, '2018_11_03_052408_create_gallery_images_table', 16),
(71, '2018_11_03_094500_create_sps_table', 17),
(72, '2018_11_06_130303_create_contacts_table', 18),
(74, '2018_11_07_125834_create_jurisdiction_contacts_table', 19),
(76, '2018_11_14_182004_create_most_wanteds_table', 20),
(77, '2018_11_15_003442_create_downloadables_table', 21),
(78, '2018_11_15_115556_create_links_table', 22),
(79, '2018_11_15_153134_create_crime_statistics_table', 23),
(80, '2019_07_24_185035_create_otps_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `most_wanteds`
--

DROP TABLE IF EXISTS `most_wanteds`;
CREATE TABLE IF NOT EXISTS `most_wanteds` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `most_wanteds_name_index` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `most_wanteds`
--

INSERT INTO `most_wanteds` (`id`, `name`, `additional_name`, `father_name`, `address`, `photo`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Someone', 'extra name', 'Something', '<p>Some address<br></p>', '1542200978hot-and-spicy-urvashi-rautela-15.jpg.pagespeed.ce.bbI26r_z-n.jpg', 5, 1, '2018-11-14 13:09:38', '2018-11-14 13:34:46', NULL),
(2, 'Someone', 'extra name', 'Something', '<p>Some address</p>', '154220195301-Actress-Regina-Cassandra-Violet-Dress-HOT-Photos-at-IIFA-Utsavam-Awards-2016.jpg', 5, 1, '2018-11-14 13:10:47', '2018-11-14 13:25:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `news_date` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `cover_image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8_unicode_ci,
  `jurisdiction_level_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `thana_id` int(11) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approval_date` date DEFAULT NULL,
  `posting_ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approving_ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_title_index` (`title`),
  KEY `news_jurisdiction_level_id_index` (`jurisdiction_level_id`),
  KEY `news_district_id_index` (`district_id`),
  KEY `news_thana_id_index` (`thana_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `news_date`, `description`, `cover_image`, `video`, `jurisdiction_level_id`, `district_id`, `thana_id`, `posted_by`, `approved_by`, `approval_date`, `posting_ip`, `approving_ip`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(41, 'demo news 6', NULL, ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur ', '1540291355naogaon_sp.jpg', NULL, 2, 3, NULL, 5, 5, '2019-07-19', '::1', NULL, 0, '2018-10-23 04:42:35', '2019-07-18 18:53:42', NULL),
(42, 'Demo news 7', NULL, ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur ', '1540291507chapai_sp.jpg', NULL, 2, 3, NULL, 5, 5, '2019-07-19', '::1', NULL, 0, '2018-10-23 04:45:07', '2019-07-18 18:53:46', NULL),
(43, 'Demo news 8', NULL, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>', '1540291672joypurhat_sp.jpg', NULL, 2, 3, NULL, 5, 5, '2019-07-19', '::1', NULL, 0, '2018-10-23 04:47:52', '2019-07-18 18:53:50', NULL),
(39, 'Need more news', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', '1540284417news3.jpg', NULL, 2, 3, NULL, 5, 5, '2019-07-19', '::1', NULL, 0, '2018-10-22 23:53:19', '2019-07-18 18:53:33', NULL),
(40, 'Demo news 4', NULL, ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur .', '1540291336news3.jpg', NULL, 2, 1, NULL, 5, 5, '2019-07-19', '::1', NULL, 0, '2018-10-23 04:42:16', '2019-07-18 18:53:38', NULL),
(38, 'need another news', NULL, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p><p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', '1540291336news3.jpg', NULL, 2, 1, NULL, 5, 5, '2019-07-19', '::1', NULL, 0, '2018-10-22 23:53:05', '2019-07-18 18:53:29', NULL),
(37, 'Demo again', NULL, ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p><p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', '1540272318joypurhat_sp.jpg', NULL, 3, 3, 7, 5, 5, '2019-07-19', '::1', NULL, 0, '2018-10-22 23:25:18', '2019-07-18 18:53:23', NULL),
(44, 'সিনিয়র অফিসারদের অসাধারণ একটি ভিডিও দেখুন ।। Bangladesh police', NULL, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>', NULL, '<iframe width=\"400\" height=\"200\" src=\"https://www.youtube.com/embed/S7a0vZKmFXQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 3, NULL, 5, 5, '2019-07-22', '::1', NULL, 0, '2018-10-23 05:47:21', '2019-07-22 11:02:46', NULL),
(45, 'দেখুন কিভাবে নিয়োগ কিভাবে দেওয়া হয় বাংলাদেশ পুলিশে | Bangladesh Police Recruiting', NULL, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>', NULL, '<iframe width=\"400\" height=\"200\" src=\"https://www.youtube.com/embed/F3wLpshBN_E\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2, 3, NULL, 5, 5, '2019-07-22', '::1', NULL, 0, '2018-10-23 05:50:19', '2019-07-22 11:02:54', NULL),
(46, 'News news', NULL, ' Copy the embed link from youtube video and paste it here. Please find and replace width=\"400\" height=\"225\" in the link. ', NULL, NULL, 3, 3, 7, 5, 5, '2019-07-19', '::1', NULL, 0, '2018-10-24 02:34:05', '2019-07-18 18:54:05', NULL),
(50, 'some titile', NULL, 'This is a <strong>bad </strong><em>thing </em>happening.', NULL, NULL, 3, 3, 7, 5, 5, '2018-10-24', '::1', NULL, 1, '2018-10-24 12:18:35', '2018-10-24 12:21:08', '2018-10-24 12:21:08'),
(51, 'A news title', NULL, 'sga gawrg garg arg&nbsp; gag', '1540711809about-rajshahi.jpg', NULL, 3, 3, 7, 5, 5, '2018-10-28', '::1', NULL, 0, '2018-10-28 01:30:09', '2018-10-28 01:30:34', NULL),
(52, 'News', NULL, '<p>sfsaf sadfsdfsdf sdfsf sff&nbsp; safsda sagasaffasgfsg fg fdgfd gd</p>', '1540712196joypurhat_sp.jpg', NULL, 3, 3, 7, 5, 5, '2019-07-19', '::1', NULL, 0, '2018-10-28 01:36:36', '2019-07-18 18:54:17', NULL),
(53, 'Creating a news', NULL, ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage.', NULL, NULL, 3, 3, 7, 5, 5, '2019-07-19', '127.0.0.1', NULL, 0, '2018-11-06 02:29:36', '2019-07-18 18:54:48', NULL),
(54, 'Some news to be created', NULL, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage.', '154149303006.jpg', NULL, 3, 1, 7, 5, 5, '2019-07-19', '127.0.0.1', NULL, 0, '2018-11-06 02:30:30', '2019-07-18 18:54:38', NULL),
(55, 'hcfghhthf utffkj tkk', NULL, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage.', '154149310305.jpg', NULL, 3, 1, 7, 10, 5, '2019-07-19', '127.0.0.1', NULL, 0, '2018-11-06 02:31:43', '2019-07-18 18:54:31', NULL),
(56, '৩৬তম বিসিএস (পুলিশ) ব্যাচের শিক্ষানবিশ এএসপি রাজশাহী বিভাগে শিক্ষা সফর কর্মসূচির সমাপনী দিনে রেঞ্জ ডিআইজি\'র কার্যালয়, রাজশাহীতে আগমন করেন', '2019-07-20 18:17:53', '৩৬তম বিসিএস (পুলিশ) ব্যাচের ১৫ জন শিক্ষানবিশ এএসপি রাজশাহী বিভাগে শিক্ষা সফর কর্মসূচির সমাপনী দিনে রেঞ্জ ডিআইজি\'র কার্যালয়, রাজশাহীতে আগমন করেন। তাদের উদ্দেশ্য জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ মহোদয় বাংলাদেশ পুলিশের ক্রমবিকাশ, লক্ষ্য ও উদ্দেশ্য, গণমুখী সেবা এবং পুলিশ অফিসারের দায়িত্ব ও কর্তব্য সম্পর্কে দিক নির্দেশনামূলক বক্তব্য প্রদান করেন।', '156244236466084672_747741455628598_8996139095478501376_n.jpg', NULL, 1, NULL, NULL, 5, 5, '2019-07-06', '127.0.0.1', NULL, 1, '2019-07-06 10:37:09', '2019-07-20 18:17:53', NULL),
(60, 'ghds dgdfg dfgdfagagds', NULL, ' It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). ', '156244311665961337_747741972295213_7268995439947415552_n.jpg', NULL, 3, 4, 40, 51, NULL, NULL, '127.0.0.1', NULL, 0, '2019-07-06 19:58:36', '2019-07-06 20:19:38', '2019-07-06 20:19:38'),
(61, 'আইন-শৃঙ্খলা ও অপরাধ পরিস্থিতি সংক্রান্ত মতবিনিময় সভা অনুষ্ঠিত', NULL, ' রাজশাহী জেলা পুলিশ কর্তৃক আয়োজিত বিশেষ আইন-শৃঙ্খলা ও অপরাধ পরিস্থিতি সংক্রান্ত মতবিনিময় সভায় প্রধান অতিথি হিসেবে উপস্থিত ছিলেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়। ', '156267279465261127_744508579285219_6453085373219209216_n.jpg', NULL, 2, 2, NULL, 9, 9, '2019-07-09', '127.0.0.1', NULL, 1, '2019-07-09 11:46:34', '2019-07-09 11:46:41', NULL),
(62, 'মাসিক অপরাধ পর্যালোচনা সভায় বিভিন্ন বিষয়ে সাফল্য অর্জনকারী অফিসারদের মাঝে পুরষ্কার বিতরণ', '2019-07-18 19:57:27', 'রেঞ্জ কার্যালয় রাজশাহীর সম্মেলন কক্ষে অনুষ্ঠিত মাসিক অপরাধ পর্যালোচনা সভায় বিভিন্ন বিষয়ে সাফল্য অর্জনকারী অফিসারদের মাঝে পুরষ্কার বিতরণ করেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়।', '156302989065007465_744502109285866_2085993069374603264_n.jpg', NULL, 1, NULL, NULL, 5, 9, '2019-07-13', '127.0.0.1', NULL, 1, '2019-07-13 14:58:10', '2019-07-18 19:57:27', NULL),
(63, 'রাজশাহী রেঞ্জাধীন সকল জেলার পুলিশ সুপার এর মাঝে বার্ষিক কর্মসম্পাদন চুক্তি স্বাক্ষরিত', '2019-07-18 19:57:18', 'ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয় এবং অত্র রেঞ্জাধীন সকল জেলার পুলিশ সুপার এর মাঝে বার্ষিক কর্মসম্পাদন চুক্তি স্বাক্ষরিত হয়।', '156302998565301977_744193025983441_1787945261272662016_n.jpg', NULL, 1, NULL, NULL, 5, 9, '2019-07-13', '127.0.0.1', NULL, 1, '2019-07-13 14:59:45', '2019-07-18 19:57:18', NULL),
(59, 'xgth shth dshghdgs hghg', NULL, ' It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). ', '156244236465961337_747741972295213_7268995439947415552_n.jpg', NULL, 1, NULL, NULL, 93, 5, '2019-07-19', '127.0.0.1', NULL, 0, '2019-07-06 19:46:04', '2019-07-18 18:54:24', NULL),
(64, 'আইজিপি কাপ কাবাডি চ্যাম্পিয়নশীপ প্রতিযোগিতা-২০১৯', NULL, ' অদ্য ২৫/০৪/২০১৯ খ্রিঃ রাজশাহী জেলা পুলিশ লাইন্স মাঠে আইজিপি কাপ কাবাডি চ্যাম্পিয়নশীপ প্রতিযোগিতা-২০১৯ রাজশাহী রেঞ্জ এর ফাইনাল খেলায় পুরস্কার বিতরনী অনুষ্ঠানে প্রধান অতিথি হিসাবে উপস্থিত থেকে খেলোয়াড়দের অনুপ্রেরণা ও নির্দেশনা দিয়ে পুরস্কার বিতরণ করেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়। ', '156303021459354430_705946546474756_3588748993204584448_n.jpg', NULL, 2, 2, NULL, 9, 9, '2019-07-13', '127.0.0.1', NULL, 1, '2019-07-13 15:03:34', '2019-07-13 15:06:09', NULL),
(65, 'বহিরাগত ক্যাডেট এসআই (নিরস্ত্র) নিয়োগ ২০১৯ এর প্রথম দিনের বাছাই পর্ব', NULL, 'অদ্য ২৮/০৪/২০১৯ খ্রিঃ বহিরাগত ক্যাডেট এসআই (নিরস্ত্র) নিয়োগ/২০১৯ রাজশাহী রেঞ্জ এর প্রথমিক বাছাই এ ব্রিফিং প্রদান ও সার্বিক কার্যক্রম তদারকি এবং পর্যবেক্ষণ করেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়।&nbsp;<br>স্থান- জেলা পুলিশ লাইন্স মাঠ, রাজশাহী।', '156303034258745198_707761746293236_1354162837211054080_n.jpg', NULL, 2, 1, NULL, 9, 9, '2019-07-13', '127.0.0.1', NULL, 1, '2019-07-13 15:05:42', '2019-07-13 15:07:00', NULL),
(66, 'বহিরাগত ক্যাডেট এসআই (নিরস্ত্র) নিয়োগ ২০১৯ এর দ্বিতীয় দিনের বাছাই পর্ব', NULL, ' অদ্য ২৯/০৪/২০১৯ খ্রিঃ বহিরাগত ক্যাডেট এসআই (নিরস্ত্র) নিয়োগ/২০১৯ রাজশাহী রেঞ্জ এর দ্বিতীয় দিনের প্রথমিক বাছাই পরীক্ষার কিছু স্থির চিত্র। উক্ত বাছাই পরীক্ষা কমিটির সভাপতি হিসেবে উপস্থিত ছিলেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়। এছাড়াও উক্ত বাছাই পরীক্ষায় উপস্থিত ছিলেন জনাব মোঃ নিশারুল আরিফ, অ্যাডিশনাল ডিআইজি (অপরাধ ও অপারেশনস্), রাজশাহী রেঞ্জ, রাজশাহী।&nbsp;<br>স্থান- জেলা পুলিশ লাইন্স মাঠ, রাজশাহী। ', '156303054659244102_708341739568570_1883507879881736192_n.jpg', NULL, 2, 1, NULL, 9, 9, '2019-07-13', '127.0.0.1', NULL, 1, '2019-07-13 15:09:06', '2019-07-13 15:10:49', NULL),
(67, 'বহিরাগত ক্যাডেট এসআই (নিরস্ত্র) নিয়োগ ২০১৯ এর তৃতীয় দিনের বাছাই পর্ব', NULL, 'অদ্য ৩০/০৪/২০১৯ খ্রিঃ বহিরাগত ক্যাডেট এসআই (নিরস্ত্র) নিয়োগ/২০১৯ রাজশাহী রেঞ্জ এর তৃতীয় ও শেষ দিনের প্রথমিক বাছাই পরীক্ষার খন্ড চিত্র। উক্ত মাঠে উপস্থিত ছিলেন বাছাই পরীক্ষা কমিটির সভাপতি জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়। এছাড়াও উক্ত বাছাই পরীক্ষায় উপস্থিত ছিলেন জনাব মোঃ নিশারুল আরিফ, অ্যাডিশনাল ডিআইজি (অপরাধ ও অপারেশনস্), রাজশাহী রেঞ্জ, রাজশাহী, কমান্ড্যান্ট (এসপি), আর.আর.এফ, রাজশাহীসহ পুলিশ সুপার, পাবনা, সিরাজগঞ্জ এবং রেঞ্জ ডিআজি\'র কার্যালয়, রাজশাহী\'র পুলিশ সুপারবৃন্দ ।</p><p>স্থান- জেলা পুলিশ লাইন্স মাঠ, রাজশাহী।', '156303064758812195_708973252838752_6529977485524729856_n.jpg', NULL, 2, 1, NULL, 9, 9, '2019-07-13', '127.0.0.1', NULL, 1, '2019-07-13 15:10:47', '2019-07-13 15:10:51', NULL),
(68, 'শ্রেষ্ঠ দুর্নীতি প্রতিরোধ কমিটি অ্যাওয়ার্ড-২০১৮', '2019-07-18 19:57:07', 'দুর্নীতি দমন কমিশন কর্তৃক আয়োজিত শ্রেষ্ঠ দুর্নীতি প্রতিরোধ কমিটি অ্যাওয়ার্ড-২০১৮</p><p><br></p><p>স্থান- শিল্পকলা একাডেমী মিলনায়তন, রাজশাহী।<br>তারিখ- ০৫/০৫/২০১৯ খ্রিঃ', '156303078259410827_712299475839463_6716438800576282624_n.jpg', NULL, 2, 1, NULL, 9, 9, '2019-07-13', '127.0.0.1', NULL, 1, '2019-07-13 15:13:02', '2019-07-18 19:57:07', NULL),
(69, 'পুলিশ সুপার, বগুড়া কর্তৃক আয়োজিত বিশেষ কল্যাণ ও অপরাধ নিরোধ সভা', NULL, 'পুলিশ সুপার, বগুড়া কর্তৃক আয়োজিত বিশেষ কল্যাণ ও অপরাধ নিরোধ সভায় প্রধান অতিথি হিসেবে জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয় ফোর্সের সার্বিক কল্যাণ ও আইন-শৃঙ্খলা পরিস্থিতি সংক্রান্ত দিক নির্দেশনা প্রদান করেন।</p><p>স্থানঃ- পুলিশ লাইন্স অডিটরিয়াম, বগুড়া।<br>তারিখঃ- ০৬ মে, ২০১৯ খ্রিঃ।', '156303090559631241_712915945777816_7584898780013527040_n.jpg', NULL, 2, 1, NULL, 9, 9, '2019-07-13', '127.0.0.1', NULL, 1, '2019-07-13 15:15:05', '2019-07-13 15:15:07', NULL),
(70, 'পুলিশ সুপার, চাঁপাইনবাবঞ্জ কর্তৃক আয়োজিত বিশেষ কল্যাণ সভা এবং দোয়া ও ইফতার মাহফিল', NULL, ' ১৩/৫/২০১৯ তারিখে পুলিশ সুপার, চাঁপাইনবাবঞ্জ কর্তৃক আয়োজিত বিশেষ কল্যাণ সভা এবং দোয়া ও ইফতার মাহফিল অনুষ্ঠানে প্রধান অতিথি হিসেবে উপস্থিত ছিলেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়। অবৈধ মাদকদ্রব্য উদ্ধার, পরোয়ানা তামিল, দাপ্তরিক কাজ সঠিকভাবে সম্পন্ন ইত্যাদি কাজের স্বীকৃতিস্বরুপ ডিআইজি মহোদয় চাঁপাইনবাবঞ্জ জেলায় কর্মরত অফিসার ও ফোর্সদের কর্মতৎপরতা বৃদ্ধিকল্পে তাদের মাঝে পুরস্কার বিতরণ করেন। ', '156303103160350154_716989185370492_1785091156720222208_n.jpg', NULL, 2, 2, NULL, 9, 9, '2019-07-13', '127.0.0.1', NULL, 1, '2019-07-13 15:17:11', '2019-07-13 15:17:14', NULL),
(71, 'পুলিশ সুপার নাটোর কর্তৃক আয়োজিত বিশেষ কল্যাণ সভা', NULL, '১৪/৫/২০১৯ তারিখে পুলিশ সুপার নাটোর কর্তৃক আয়োজিত বিশেষ কল্যাণ সভায় প্রধান অতিথি হিসেবে উপস্থিত ছিলেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়। উক্ত কল্যাণ সভায় প্রধান অতিথি মহোদয় ফোর্সের সার্বিক কল্যান সংক্রান্ত বিষয়াদি নিয়ে আলোচনা করেন।</p><p>এছাড়াও দোয়া ও ইফতার মাহফিলে উপস্থিত ছিলেন জনাব আলহাজ্ব এ্যাডঃ জুনাইদ আহমেদ পলক, প্রতিমন্ত্রী, তথ্য ও যোগাযোগ প্রযুক্তি (আইসিটি) বিভাগ এবং ডিআইজি, রাজশাহী রেঞ্জ মহোদয়।', '156303114060336248_717608378641906_3851712759653728256_n.jpg', NULL, 2, 3, NULL, 9, 9, '2019-07-13', '127.0.0.1', NULL, 1, '2019-07-13 15:19:00', '2019-07-13 15:19:03', NULL),
(72, 'পুলিশ সুপার, রাজশাহী কর্তৃক আয়োজিত বিশেষ কল্যাণ ও মতবিনিময় সভা', NULL, ' ১৫/৫/২০১৯ তারিখে পুলিশ সুপার, রাজশাহী কর্তৃক আয়োজিত বিশেষ কল্যাণ ও মতবিনিময় সভায় প্রধান অতিথি হিসেবে উপস্থিত ছিলেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়। ', '156303125560585336_718421991893878_1478277230172831744_n.jpg', NULL, 2, 1, NULL, 9, 9, '2019-07-13', '127.0.0.1', NULL, 1, '2019-07-13 15:20:55', '2019-07-13 15:20:58', NULL),
(73, 'মাসিক অপরাধ পর্যালোচনা সভা এপ্রিল 2019', '2019-07-18 19:56:56', '26/5/2019 তারিখে রেঞ্জ কার্যালয়, রাজশাহী’র সম্মেলন কক্ষে জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়ের সভাপতিত্বে মাসিক অপরাধ পর্যালোচনা সভা (এপ্রিল/2019) অনুষ্ঠিত হয়। বর্ণিত সভায় তিনি আসন্ন পবিত্র ঈদ-উল-ফিতর উপলক্ষ্যে সার্বিক আইন-শৃঙ্খলা সংক্রান্ত প্রয়োজনীয় দিক নির্দেশনা প্রদান করেন।<br>অবৈধ আগ্নেয়াস্ত্র ও মাদকদ্রব্য উদ্ধার, শ্রেষ্ঠ পরোয়ানা তামিল এবং গুরুত্বপূর্ণ মামলা তদন্তে সাফল্য অর্জনকারী অফিসারদের মাঝে পুরষ্কার বিতরণ করেন সভাপতি মহোদয়। এ সময় উপস্থিত ছিলেন অতিরিক্ত ডিআইজি (অপরাধ ও অপারেশনস্), রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী, কমান্ড্যান্ট (এসপি), আরআরএফ, রাজশাহীসহ সকল জেলার পুলিশ সুপারবৃন্দ।', '156303137861828348_725247651211312_7932551411684868096_n.jpg', NULL, 1, NULL, NULL, 9, 9, '2019-07-13', '127.0.0.1', NULL, 1, '2019-07-13 15:22:58', '2019-07-18 19:56:56', NULL),
(74, 'কমান্ড্যান্ট (এসপি), আরআরএফ, রাজশাহী কর্তৃক আয়োজিত বিশেষ কল্যাণ সভা', '2019-07-20 18:18:21', '27/5/2019 তারিখে কমান্ড্যান্ট (এসপি), আরআরএফ, রাজশাহী কর্তৃক আয়োজিত বিশেষ কল্যাণ সভায় প্রধান অতিথি হিসেবে উপস্থিত ছিলেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়।</p><p><br></p><p>উক্ত কল্যান সভায় প্রধান অতিথি মহোদয় অফিসার ও ফোর্সদের সাথে মতবিনিময়ের মাধ্যমে তাদের সার্বিক কল্যাণ বিষয়ক আলোচনা করেন।', '156304259961462599_725811724488238_2467786907182956544_n.jpg', NULL, 2, 1, NULL, 5, 5, '2019-07-14', '127.0.0.1', NULL, 1, '2019-07-13 18:29:59', '2019-07-20 18:18:21', NULL),
(75, 'আন্তর্জাতিক শান্তিরক্ষী দিবস-২০১৯', '2019-07-18 19:56:47', 'আন্তর্জাতিক শান্তিরক্ষী দিবস-২০১৯<br>স্থান- রাজশাহী<br>তারিখ- ২৯/০৫/২০১৯', '156304271260803497_726500091086068_1997303094223831040_n.jpg', NULL, 2, 1, 7, 5, 5, '2019-07-14', '127.0.0.1', NULL, 1, '2019-07-13 18:31:52', '2019-07-18 19:56:47', NULL),
(79, 'রোজেনা পারভীন ( রুপালী)  হত্যার রহস্য উদঘাটনের  কাহিনী', '2016-12-21 18:54:00', 'মেয়েটির&nbsp; নাম ছিল&nbsp; রোজেনা&nbsp; পারভীন@ রুপালী, বয়স ২২ বছর, বাড়ী&nbsp; লালমনিরহাট জেলার&nbsp; সদর থানার&nbsp; মোস্তফি( ধুমেরকুঠি) গ্রামে। তিনি বুগড়া&nbsp; মেরিষ্ট্রোপ ক্লিনিকে চাকুরী&nbsp; করিতেন।&nbsp; ঘটনার দিন ইং ২৫/১২/১৬ খ্রিঃ&nbsp; বেলা&nbsp; ১২.০৫ ঘটিকার সময়&nbsp; সিংড়া থনাধীন&nbsp; রামানন্দ খাজুরিয়া ইউনিয়নের&nbsp; দো- পুকুড়িয়া&nbsp; গ্রামের&nbsp; ফাঁকা&nbsp; জুমির মাঠের&nbsp; মধ্যে জনৈক&nbsp; আফাজ উদ্দিন এর&nbsp; ইউক্যালিপটাস গাছের বাগানে মধ্যে&nbsp; আগুনে বিভিন্ন স্থানে&nbsp; ঝলসানো অবস্থায়&nbsp; একটি অজ্ঞাত মেয়ের মৃতঃ দেহ পাওয়া যায় যাহার&nbsp; পার্শ্বে&nbsp; একটি&nbsp; ভ্যানটি ব্যাগ এবং&nbsp; কিছু&nbsp; জামা কাপড় পাওয়া&nbsp; যায়। সিংড়া থানার পুলিশ সংবাদ প্রাপ্ত&nbsp; হইয়া সিংড়া&nbsp; সার্কেল&nbsp; এসপি সহ অফিসার ইনচার্জ সাহেব সঙ্গীয়&nbsp; এসআই&nbsp; দেব্রত&nbsp; দাস এবং&nbsp; ফোর্সসহ&nbsp; ঘটনাস্থলে&nbsp; হাজির হয়। পুলিশ ঘটনাস্থল হইতে&nbsp; একটি জুয়েলারী&nbsp; কাগজের ছেড়া টুকরা&nbsp; জব্দ করেন এবং&nbsp; ঐ কাগজের ছেড়া&nbsp; টুকরা সাহায্যে&nbsp; অজ্ঞাতনামা লাশের&nbsp; সনাক্ত করেন। উক্ত লাশের&nbsp; সুরতহালসহ যাবতীয় কার্যক্রম সম্পন্ন করেন। তখন&nbsp; মেয়েটির&nbsp; পরিবারকে সংবাদ প্রদান করা হইলে&nbsp; রুপালীর বাবা&nbsp; আঃ রাজ্জাক, পিতা&nbsp; ইব্রাহীম খলিল বাদী হইয়া&nbsp; ঘটনার বিষয়ে&nbsp; সিংড়া&nbsp; থানায় এজাহার দায়ের করেন। সিংড়া থানার অফিসার&nbsp; ইনচার্জ সাহেব মামলাটি রুজু করিয়া&nbsp; তদন্তভার এসআই&nbsp; দেব্রত দাস এর উপর অর্পন করেন। তিনি মামলাটির তদন্তভার&nbsp; গ্রহন করিয়া&nbsp; মামলার ঘটনার বিষয়ে&nbsp; জড়িত দুইজন আসামী&nbsp; শাহমীম(২৬) , মোঃ রমিজুল&nbsp; আলম(২৩)কে গ্রেফতার করেন।&nbsp; তখন আসামীদ্বয় ঘটনার বিষয়ে&nbsp; বিজ্ঞ আদালতে&nbsp; সেচ্ছায়&nbsp; দোষ স্বীকারোক্তি প্রদান করে। পরবর্তীতে&nbsp; উক্ত লাশের ময়না তদন্ত রিপোর্ট&nbsp; পাওয়া যায়। ময়না তদন্তকারী&nbsp; ডা. মৃত্যু সংক্রান্তে&nbsp; মতামত দেন যে, মৃত ব্যক্তিকে শ্বাসরোধ করিয়া&nbsp; হত্যা করা হইয়াছে।&nbsp; অবশেষে&nbsp;&nbsp; তদন্তকালে&nbsp; জানা যায় যে, আসামী&nbsp; শাহমীম এর সহিত&nbsp; ০৫/১২/১৪ তারিখ ডিসিষ্ট রুপালীকে&nbsp; প্রেমের সম্পর্ক করিয়া&nbsp; বিবাহ হয় । বিবাহের পর থেকে&nbsp; উক্ত আসামী&nbsp; শাহমীম ও তাহার পরিবার&nbsp; রুপারীকে বিভিন্নভাবে&nbsp; জ্বালা যন্ত্রনা করিত।&nbsp; বিবাহের এব বছর পরে উক্ত আসামী&nbsp; শাহমিম পারিবারিকভাবে&nbsp; স্থানীয় লোকজনের মাধ্যমে&nbsp; নগদ ৩৩৫০০০/( তিন লক্ষ পয়ত্রিশ হাজার ) টাকা প্রদান&nbsp; করিয়া&nbsp; বিবাহ বিচ্ছেদ করে। পরবর্তীতে আসামী&nbsp; শাহমিম&nbsp; উক্ত&nbsp; টাকা&nbsp; ফেরত নেওয়ার কৌশল করিয়া&nbsp; বাদীর অজান্তে বিভিন্নভাবে&nbsp; ফুসলাইয়া&nbsp; ও প্রলোভন দিয়া&nbsp; গত ইং ২১/০৮/১৫৬ তারিখ বাদী মেয়ে&nbsp; রুপালীকে&nbsp; পুনুরায়&nbsp; বিবাহ করে। কিন্তু শাহমিমের পরিবার থেকে&nbsp;&nbsp; রুপালীকে কোন ভাবে মেনে নিতে&nbsp; পারে না। তখন উক্ত আসামী শাহমিম&nbsp; তাহার ফুপাতো ভাই&nbsp;&nbsp; অপর আসামী&nbsp; রমিজুল আলমকে নিয়া&nbsp; রুপালীকে হত্যার&nbsp; পরিকল্পনা করে। মামলার ঘটনার প্রায় দুইদিন পূর্ব হইতে বাদীর মেয়ে রুপালীকে বগুড়া&nbsp; মেরিষ্টোপ ক্লিনিকে চাকুরীর&nbsp; সুবাধে জনৈক মোঃ ইজারত হোসেন, পিতা মৃত জব্বার পোদ্দার সাং- বৃšদাবন দক্ষি পাড়া বটতলা, থানা ও জেলা- বগুড়া&nbsp; এর বাসায়&nbsp; ভাড়ায়&nbsp; থাকিত। আসামী মোঃ শাহমিম তাহার স্থায়ী ঠিকানায় বাবা মার সাথে বসবাস করিত। অপর আসামী&nbsp; রমিজুল প্রান কোম্পানির&nbsp; চাকুরীর সুবাধে সিংড়া বাজারে থাকিত।&nbsp;&nbsp; এমতবস্থায় ২২/১২/১৬ তারিখে আসামী&nbsp; শাহমিম ও রমিজুল&nbsp; পূর্ব পরিকল্পনা মাফিক মোবাইল ফোনের&nbsp; মাধ্যমে ফুসলাইয়া রুপালীকে ডেকে নিয়ে আসে এবংঐদিন&nbsp; সন্ধ্যায়&nbsp; তিনজন সাতমাথা বগুড়ায় মিলিত হয়। সেখান থেকে&nbsp; উক্ত আসামীদ্বয়&nbsp; রুপালীকে ফুসলাইয়া&nbsp; আসামী&nbsp; রমিজুলের বাসায়&nbsp; যাওয়ার কথা বলিয়া&nbsp; সিএনজি যোগে সিংড়া থানাধীন&nbsp; নাটোর&nbsp; বগুড়া মহাসড়কের&nbsp; সীমানার নিকট নেমে&nbsp; পায়ে হেটে ফাকা মাঠের মধ্যে হেটে&nbsp; সিংড়া&nbsp; থানাধীন&nbsp; ১২ নং&nbsp; রামানন্দ খাজুরা ইউনিয়নের&nbsp; দোপুকুড়িয়া&nbsp; গ্রামের ফাঁকা&nbsp; জুমির মাঠের&nbsp; মধ্যে নিয়ে যায়&nbsp; সেখানে আসামী শাহমিম ও রমিজুল রুপালীকে ধাক্কা দিয়ে মাটিতে ফেলে&nbsp; আসামী রমিজুল রুপালী&nbsp; বুকের উপর&nbsp; চড়ে বসে দুই হাত চেপে ধরে তখন আসামী&nbsp; শাহমিম রুপালী ওড়না কেড়ে নিয়া&nbsp; গলায় পেচিয়ে শ্বাসরোধ করিয়া&nbsp; হত্যা করে এবং&nbsp; হত্যার পরে লাশ গোপন করার জন্য তাহার&nbsp; লাশ ধরাধরি করিয়া&nbsp; জনৈক&nbsp; আফাজ উদ্দিন এর&nbsp; ইউক্যালিপটাস গাছের বাগানে মধ্যে&nbsp; নিয়া যায় এবং খড়কুটে দিয়া আগুন ধরে লাশের চেহারার বিকৃত ঘটাইয়া&nbsp; উক্ত স্থানে ফেলে&nbsp; আসে। পরবর্তীতে মামলাটির তদন্ত শেষে&nbsp; আসামীদ্বয়ের বিরুদ্ধে অভিযোগপত্র&nbsp; দাখিল করা হয়।&nbsp; বিজ্ঞ আদালত বিচার শেষে&nbsp; তাহাদের ফাঁসির&nbsp; আদেশ&nbsp; প্রদান করেন।&nbsp;&nbsp;', '156380190904.jpg', NULL, 3, 3, 25, 36, 5, '2019-07-22', '::1', NULL, 1, '2019-07-22 13:25:09', '2019-07-22 18:55:01', NULL),
(80, 'একটি শিশু হত্যার রহস্য উদঘাটনের কাহিনী', '2018-10-27 18:55:00', 'শিশুটির নাম জুয়েল , তাহারা&nbsp; দুই ভাই । তাহাদের বাড়ী সিংড়া থানাধীন&nbsp; ইটালী&nbsp; ইউনিয়নের কুমগ্রাম গ্রামে।&nbsp; তাহাদের পিতা&nbsp; মুক্তার হোসেন গত ২৬/১০/১৮&nbsp; তারিখ&nbsp; সন্ধ্যা ০৫.৩০ ঘটিকার সময়&nbsp; তাহার বড় ছেলে রাসেল (১০)&nbsp; এবং&nbsp; ছোট ছেলে&nbsp; জুয়েল(০৮) কে সঙ্গে করে&nbsp; কুমগ্রাম বাজারে যায়।&nbsp; সে&nbsp; কুমগ্রাম বাজার হতে চারটি ডিম কিনে&nbsp; দুই ছেলেকে সহ&nbsp; বাড়ীতে পাঠাইয়া দেয়।&nbsp; ছেলেরা&nbsp; ডিম লইয়া বাড়ীতে গেলে&nbsp; দুইটি ডিম&nbsp; খারাপ দেখা দেয় তখন&nbsp; শিশুটির মা&nbsp; ছোট ছেলে&nbsp; জুয়েলকে&nbsp; কুমগ্রাম বাজারে&nbsp; তাহার স্বামীর নিকট&nbsp; দুইটি ডিম বদলানোর&nbsp; জন্য&nbsp; পাঠাইয়া দেয়।&nbsp; মায়ের কথা মোতাবেক ছেলে জুয়েল&nbsp; বাড়ীর মধ্যে&nbsp; হইতে&nbsp; বাহির হইয়া&nbsp; পাশ্বে রাস্তার উপর&nbsp; বড় ছেলে রাসেলকে&nbsp; দেখিয়া&nbsp; ডিম দুটি&nbsp; বদলানোর জন্য&nbsp; কুমগ্রাম বাজারে পাঠাই। তখন&nbsp; ছোট ছেলে&nbsp; জুয়েল রাস্তার উপর দাড়াইয়া থাকে&nbsp; সেখানে তাহার প্রতিবেশী&nbsp; শ্রী দ্বীজেন ও&nbsp; সীমান্ত&nbsp; দাড়াইয়া&nbsp; ছিল।&nbsp; মুক্তারের বড় ছেলে&nbsp; রাসেল&nbsp; ডিম&nbsp; পাল্টাইয়া&nbsp;&nbsp; আনার সময়&nbsp;&nbsp; উক্ত রাস্তার উপরে&nbsp; দীজেন , সীমান্ত এবং&nbsp; জুয়েলকে&nbsp; দেখিতে&nbsp; না পাইয়া&nbsp; তখন&nbsp;&nbsp; বড় ছেলে&nbsp; রাসেল&nbsp; বাড়ীতে ডিম দিয়া&nbsp; তাহার ছোট ভাই&nbsp; জুয়েলকে খোজার জন্য বাহির হয় কিন্তু&nbsp; খোজ করিয়া&nbsp; না পাইয়া&nbsp; কুমগ্রাম বাজারে&nbsp; পুনুরায়&nbsp; খোজ করিতে&nbsp; যায়।&nbsp; সবাই&nbsp; জুয়েলকে&nbsp; খোজ করিয়া&nbsp; না পাইলে&nbsp; জুয়েলদের বাড়ীতে অনেক আত্বীয় স্বজন আসে।&nbsp; আগে থেকেই&nbsp; দ্বিজেন&nbsp; সন্ধ্যা রাত্রিতে&nbsp; একশত টাকার নোট দিয়া&nbsp; সিগারেট কিনিয়া&nbsp; লয় এবং&nbsp; জুয়েলকে&nbsp; বকশিস দেয়। তদুপরি দ্বিজেন এর বাড়ীতে এবং&nbsp; সীমান্তের বাড়ীতে&nbsp; শুধু&nbsp; তার নিজ বাড়ীতে&nbsp; একা&nbsp; ছাড়া&nbsp; আর কেহ না থাকায়&nbsp;&nbsp; এবং&nbsp; তাহাদের&nbsp; গতিবিধি সন্দেহজনক&nbsp; হওয়ায়&nbsp; তাহাদেরকে&nbsp; জুয়েলের ব্যাপারে&nbsp; জিজ্ঞাসাবাদ&nbsp; করিলে&nbsp; তাহারা&nbsp; আবোল তাবোল&nbsp; কথাবার্তা বলে। ঐ সময় বাদীদের গ্রামের জামাই নিপেন&nbsp; নেশাগ্রস্থ অবস্থায়&nbsp; এবং&nbsp; অসংলগ্ন&nbsp; কথায়&nbsp; তাকেও সন্দেহ হয়। জুয়েলকে&nbsp; খোজাখুজির এক পর্যায়ে&nbsp; ২৮/১০/ ১৮ তারিখে&nbsp; রাত্রি ০৭.৩০ ঘটিকার সময়&nbsp; জুয়েলের লাশ&nbsp; তাহার বাড়ীর&nbsp; পশ্চিমে&nbsp; বনকুড়ি গ্রামগামী&nbsp; কাচা&nbsp; রাস্তার উপরে থাকা&nbsp; কালভাট&nbsp; হইতে অনুমান ২০০ গজ পশ্চিমে&nbsp; রাস্তার দক্ষিনে&nbsp; ০৩ হাত দুরে&nbsp; জয়ন্ত এর নালা জমিতে&nbsp; কচুরিপানা দিয়ে ঢাকানো অবস্থায়&nbsp; পাওয়া যায়। জুয়েলকে&nbsp; মৃত অবস্থায়&nbsp; পাওয়ার&nbsp; সময়&nbsp; গলা হইতে মাথা&nbsp; পর্যন্ত&nbsp; গলিত ছিল। তখন গ্রামের&nbsp; লোকজন&nbsp; বাদীর ছেলের&nbsp; মৃত দেহ&nbsp; দেখে&nbsp; পুলিশকে সংবাদ দিলে&nbsp; পুলিশ&nbsp;&nbsp; জুয়েল(৮) এর&nbsp; লাশ উদ্ধার করিয়া&nbsp; সুরতহালসহ যাবতীয়&nbsp; কার্যক্রম সম্পন্ন করেন। তখন শিশুটির পিতা&nbsp; মুক্তার হোসেন থানায় ইং ৩০/১০/১৮ খ্রিঃ এজাহার দায়ের করিলে&nbsp; অফিসার ইনচার্জ সাহেব&nbsp; মামলাটি রুজু করিয়া&nbsp; তদন্তভার&nbsp; এসআই মোঃ আঃ মজিদ এর উপর অর্পন&nbsp;&nbsp; করেন।&nbsp; তিনি&nbsp; তদন্ত ভার গ্রহন করিয়া সরজমিনে&nbsp; ঘটনাস্থল&nbsp; পরিদর্শন করেন, খসড়া মানচিত্র অংকন, সূচিপত্র&nbsp; প্রস্তুত , এবং&nbsp; চৌহদ্দি নির্নয়&nbsp; করেন।&nbsp; আসামী&nbsp; দ্বিজেনকে&nbsp; গ্রেফতার করেন এবং তাহার দোষ স্বীকারোক্তিমুলক জবানবন্দি কাঃ বিঃ ১৬৪ ধারা মোতাবেক&nbsp; লিপিবদ্ধকরনের জন্য&nbsp; ব্যবস্থা গ্রহন করেন। তদন্তে প্রাপ্ত আসামী&nbsp; ২। মোঃ&nbsp; মনি সরকার এবং হীরা সরকার দ্বয়কে&nbsp; গ্রেফতার করেন।সোর্স&nbsp; নিয়োগ করেন। ময়না তদন্ত রিপোর্ট&nbsp; সংগ্রহ করেন।&nbsp;&nbsp; সাক্ষীদের জবানবন্দি&nbsp; ফৌঃ কাঃ বিঃ আইনের&nbsp; ১৬১ ধারা মোতাবেক&nbsp; জবানবন্দি লিপিবদ্ধ করেন।&nbsp; উক্ত আলোচিত মামলাটির তদন্তকালে&nbsp; জানা যায় যে,&nbsp;&nbsp; মামলার ঘটনার ৪/৫ দিন পূর্বে&nbsp; তদন্তে প্রাপ্ত আসামী&nbsp; হিরা ও মনিদ্বয়&nbsp; দ্বিজেনকে বলে&nbsp; তোকে একটি কাজ করে দিতে হবে এবং কাজের বিনিময়ে&nbsp; তোকে ২০,০০০/( বিশ) হাজার&nbsp; টাকা দেব।&nbsp; দ্বিজেন&nbsp; তখন মনি ও হিরাকে&nbsp; বলে যে, কি কাজ করতে হবে। ঐ সময় মনি ও হিরা বলে যে,&nbsp; মুক্তার&nbsp; ছেলে&nbsp; জুয়েলকে&nbsp; জনৈক গজেন এর পরিত্যক্ত&nbsp; বাড়ীতে এনে দিতে হবে।&nbsp; তার পরিকল্পনা মতে&nbsp; মনি ও হিরা&nbsp; গজেন এর বাড়ীতে ঘটনার দিন&nbsp; ইং ২৬/১০/১৮ তারিখে অবস্থান&nbsp; করিতে থাকে&nbsp; ঐদিন&nbsp; মনি ্ এবং&nbsp; দ্বিজেন&nbsp; ভিকটিম জুয়েলকে&nbsp; ১৮.৩০ ঘটিকার সময়&nbsp; দ্বিজেনের বসত বাড়ীর&nbsp; দক্ষিনে বনকুড়ি টু কুমগ্রাম&nbsp; কাচা&nbsp; রাস্তা থেকে&nbsp; সুকৌশলে&nbsp; ডেকে&nbsp; জনৈক গজেন এর&nbsp; পরিত্যক্ত বাড়ীতে নিয়ে যায়&nbsp; সেখানে মনি ভিকটিম জুয়েলের&nbsp; মুখ গামচা দিয়ে&nbsp; বাঁধে হিরা&nbsp; জুয়েলের&nbsp; দুই হাত&nbsp; রশি&nbsp; দিয়ে বাধে মনি ও হিরাকে&nbsp; দ্বিজেন&nbsp; সহায়তা করে। তিনজনে মিলে&nbsp; ভিকটিম জুয়েলকে&nbsp; একটি পাটের বস্তার মধ্যে জোরপূর্বক ঢুকাইয়া&nbsp; তিনজনে বস্তার মুড়ি ধরে&nbsp; বনকুড়িগামী&nbsp; কাচা রাস্তার&nbsp; কালভাটের দিকে যায়। কিছুক্ষন পরে তাহারা বুঝতে পারে যে,&nbsp; বস্তার মধ্যে জুয়েল নড়াচড়া করছে না।&nbsp; তখন তারা&nbsp; তিন জনে বস্তার মুখ খুলে দেখে&nbsp; দেখে যে, জুয়েল মারা গিয়াছে। তখন তারা&nbsp; সিদ্ধান্ত নেয় যে, জুয়েলের লাশ গুম করবে এবং&nbsp; সিদ্ধান্ত অনুযায়ী&nbsp; বনকুড়িগামী রাস্তার কালভাট হতে&nbsp; ২০০ হাত পশ্চিমে&nbsp; জনৈক জয়ন্ত এর&nbsp; নালা জমিতে&nbsp; কাদার ভিতরে&nbsp; জুয়েলের&nbsp; মৃতদেহ পুতে রাখে এবং&nbsp; কচুরিপানা&nbsp; দিয়ে ঢেকে&nbsp; রাখে। ঘটনার পর থেকে ভিকটিমের পিতা জুয়েলকে খোজাখুজি করেন এবং এক পর্যায়ে&nbsp; জিডি করেন।&nbsp; এমতবস্থায়&nbsp; ইং ২৮/১০/১৮ তারিখে&nbsp; সন্ধ্যার পর&nbsp; জয়ন্ত&nbsp;&nbsp; এর নালা জমিতে ৩ / ৪টি শেয়াল কচুরিপানার মধ্যে কোন&nbsp; কিছু নিয়া&nbsp; টানা হেচড়া করেচে&nbsp; দেখিতে পায় সাক্ষী রতন । তারপর সে ঘটনাস্থলে এগিয়ে যায়&nbsp; এবং&nbsp; ছোট বালকের লাশ দেখিতে পায় । তারপর সে&nbsp; এলাকার লোকজনদের&nbsp; অবগত করিলে&nbsp; লোকজন আসিয়া লাশ দেখে&nbsp; পুলিশকে&nbsp; সংবাদ দেয়। মামলার তদন্ত শেষে&nbsp; আসামী&nbsp; দ্বিজেন , মনি এবং হিরা দের বিরুদ্ধে&nbsp; তদন্ত শেষে&nbsp; তদন্তকারী&nbsp; অফিসার&nbsp; এসআই আঃ মজিদ ৩০২/২০১/৩৪ পেনাল কোড&nbsp; ধারা মোতাবেক সিংড়া থানার অভিযোগপত্র দাখিল করেন।&nbsp;', '156380197704.jpg', NULL, 3, 3, 25, 36, 5, '2019-07-22', '::1', NULL, 1, '2019-07-22 13:26:17', '2019-07-22 18:55:47', NULL),
(81, 'একটি চাঞ্চল্যকর  হত্যা কান্ডের রহস্য উদঘাটনের কাহিনী', '2018-09-01 18:56:00', 'ছেলেটির নাম ছিল বরুন সরকার। সে প্রতিদিন&nbsp; অটো ভ্যান&nbsp; চালিয়া জীবিকা&nbsp; নির্বাহ&nbsp; করিত। তিনি জীবিকা&nbsp; নির্বাহের তাগিদে প্রতিদিনের ন্যায় ইং ০২/০৯/১৮ তারিখ&nbsp; বিকাল অনুমান ০৫.০০ ঘটিকার সময়&nbsp; ভ্যান গাড়ী সহ বাড়ী হইতে বাহির হয়। কিন্তু&nbsp; ঐদিন&nbsp; তাহার নিজ&nbsp; বাড়ীতে&nbsp; ফিরে না গেলে তাহার&nbsp; আত্বীয় স্বজনেরা&nbsp; বিভিন্ন স্থানে&nbsp; খোজাখুজি করে&nbsp; কোথাও&nbsp; না পাইয়া&nbsp; অবশেষে ০৩/০৯/১৮&nbsp; তারিখ&nbsp; সকালে সিংড়া&nbsp; থানায়&nbsp; হাজির হইয়া বরুনের&nbsp; ভগ্নিপতি&nbsp; শ্রী নিরেনচন্দ্র সরকার&nbsp; থানায় একটি হারারো জিডি করেন।&nbsp; যাহার জিডি নং-১৩৯ তারিখ তারিখ ০৩/০৯/১৮ খ্রিঃ ।&nbsp; ভাগ্যের&nbsp; নির্মম পরিহাস&nbsp; ঐদিন&nbsp; ভিকটিম বরুনের&nbsp; স্ত্রী সত্য রানী&nbsp;&nbsp; দুপুর&nbsp; অনুমান ০২.০০ ঘটিকার সময়&nbsp;&nbsp; সিংড়া&nbsp; থানা হইতে বাড়ী&nbsp; যাওয়ার পথে&nbsp; জানিতে পারেন যে, সিংড়া&nbsp; টু কালিগঞ্জ রোডে&nbsp; বড়- চৌগ্রামস্থ&nbsp; জনৈক হেলাল কাজী&nbsp; @&nbsp; হেলুর পুকুরের&nbsp; পূর্ব পার্শ্বে&nbsp; পাকা রাস্তা সংলগ্ন কাদের আলী শেখের&nbsp; বর্গাকৃত আমন ধানের&nbsp;&nbsp; ক্ষেতে&nbsp; পানিতে&nbsp; একজনের&nbsp; মৃতদেহ পড়িয়া আছে।&nbsp; উক্ত সংবাদের&nbsp; প্রেক্ষিতে&nbsp; বরুনের&nbsp; মামা শ্বশুড়&nbsp; এবং&nbsp; প্রতিবেশী&nbsp; ভাই&nbsp; শ্রী কৃষ্ণ চন্দ্র সরকার ও নরেশ চন্দ্র&nbsp; সরকার&nbsp; সেখানে&nbsp; গিয়ে&nbsp; লাশ দেখে&nbsp;&nbsp; বরুনকে&nbsp; সনাক্ত করে। ইং ০২/০৯/১৮ তারিখ রাত্রি&nbsp; ০৮.০০ ঘটিকা হইতে&nbsp; ০৩/০৯/১৮ তারিখ বিকাল ০২.০০ ঘটিকার&nbsp; মধ্যে&nbsp; যেকোন&nbsp; সময়&nbsp; অজ্ঞাতনামা&nbsp; কে বা কাহারা&nbsp; ভ্যান চালক বরুনকে&nbsp; হত্যা করিয়া&nbsp; ব্যাটারী চালিত ভ্যান নিয়া&nbsp; চলিয়া যায়। উক্ত ঘটনার বিষয়ে&nbsp; বরুনের&nbsp; স্ত্রী&nbsp; সত্য রানী&nbsp; থানায়&nbsp; বাদী হয়ে&nbsp; এজাহার দায়ের করেন। সিংড়া&nbsp; থানার&nbsp; অফিসার&nbsp; ইনচার্জ&nbsp; সাহেব মামলাটি রুজু&nbsp; করিয়া&nbsp; তদন্তভার এস আই&nbsp; শ্রী&nbsp; সুব্রত কুমার মাহোত এর উপর অর্পন করেন।তখন থেকে&nbsp; মামলার তদন্ত কার্যক্রম শুরু হয়। তদন্তকালে&nbsp; মৃত বরুনের&nbsp; লাশের পাশে পড়ে থাকা&nbsp; একটি মোবাইল লইয়া পর্যালোচনা শুরু হয়,দেখা যায়&nbsp; উক্ত মোবাইল ফোনে&nbsp; ব্যবহৃত সিম ২টি যথাক্রমে মোঃ জাহিদুল প্রাং পিতাঃ মোঃ ছহির উদ্দিন প্রাং সাং, তেঘইর এবং মোঃ লোকমান সরদার পিতাঃ ময়েজ সরদার ,সাং বনকুড়ি&nbsp; উভয় থানাঃ সিংড়া জেলাঃ নাটোর দের নামে রেজিষ্ট্রেশন করা। এক পর্যায়ে তাহাদের জিজ্ঞাসাবাদ করিয়া আরো জানা যায়&nbsp; সিম ২টি সহ ১টি মোবাইল জাহিদুলের ছেলে মোঃ উজ্জল হোসেন পিতাঃ&nbsp; জাহিদুল প্রাং এর নিকট ছিল। উজ্জল বাড়ীতে না থাকায় তার পিতাঃ জাহিদুল এবং উজ্জলের স্ত্রী জোস্নাদ্বয়কে জিজ্ঞাসাবাদ করিলে তারা জানায় যায়,&nbsp; উজ্জল গত ০২/০৯/১৮ ইং তারিখ সকাল বেলা বাড়ী&nbsp; হইতে বাহির হয় সারাদিন বাড়ীতে আসেনি। ঐ দিন দিবাগত রাত্রী অনুমান ০১.০০/০২.০০ টার সময় বাড়ীতে আসে। বাড়ীতে আসার পর কোন খাবার খায়নি। তার পর গত ০৪/০৯/১৮ইং তারিখ বাড়ী থেকে বের হয়ে যায় আর ফিরে&nbsp; আসেনি। তাহার স্ত্রী জিজ্ঞাসাবাদে জানা যায় উজ্জলের সাথে একই গ্রামের সবুজ পিতাঃ আয়েন চলাফেরা করে। সবুজের মোবাইল নাম্বার ০১৭০৩২৩০০৩৮সংগ্রহ পূর্বক পর্যালোচনায় দেখা ঐ নাম্বারের সাথে ০১৭৩৭৮৯৪৫৩৬ নম্বরের ঘটনার দিন ২৬ বার যোগাযোগ হয়। মোবাইল সুত্র ধরে আসামি মোমিন কে ধৃত করা হয় এবং মোবাইল জব্দ করা হয়। তদন্তকারী&nbsp; অফিসার&nbsp; এক পর্যায়ে আসামী পলাশ এবং উজ্জলকে ধৃত করেন। পলাশের দেওয়া তথ্য মোতাবেক&nbsp; সিংড়া থানার&nbsp; পুলিশ ভিকটিম বরুনের&nbsp; ছিনতাইকৃত ভ্যানটি বগুড়া থানাধীন নন্দীগ্রামস্থ বিশা গ্রামের সাইফুলের বাড়ী থেকে উদ্ধার পূর্বক জব্দ করেন।তখন&nbsp; অসামী মোঃ&nbsp; উজ্জল আলী (২৮) পিং মোঃ জাহিদুল&nbsp; ইসলাম উভয় সাং তেঘইর,&nbsp; মোঃ মমিন আলী (২৫) পিতাঃ মোঃ ফরিদ উদ্দিন সাং মালকুর&nbsp; ঘটনার বিষয়ে স্বীকারোক্তি মূলক জবানবন্দি বিজ্ঞ আদালতে প্রদান করে। একপর্যায়ে মৃত বরুনের&nbsp; ময়না তদন্তের রির্পোট পাওয়া যায়। ময়না তদন্তকারী&nbsp; ডাক্তার&nbsp; ময়না তদন্তের রির্পোটে উল্লেখ&nbsp; করেন যে, উবধঃয রহ&nbsp; সু ড়ঢ়রহড়হ ধিং ফঁব ঃড় ধংঢ়যধীরধ ধং ধ ৎবংঁষঃ ড়ভ ঃযৎড়ধঃষরহম ফঁব ঃড় রহলঁৎু ড়হ (১) যিরপয ধিং ধহঃরসড়ৎঃবস ধহফ যড়সরপরফধষ রহ হধঃঁৎব.মামলাটি তদন্তকারী অফিসার গোপন ও প্রকাশ্যে তদন্ত করেন। তদন্তে&nbsp; প্রাপ্ত সাক্ষ্য প্রমানে ঘটনার পারিপার্শ্বিকতায়, সাক্ষীদের জবানবন্দী পর্যালোচনায় আসামীদের দেওয়া ফৌঃ কাঃ বিঃ ১৬৪ ধারার জবানন্দী পর্যালোচনায় আলামত দৃষ্টে জানা যায় যে, তদন্তে প্রাপ্ত আসামীরা পুর্ব পরিকল্পিত ভাবে ভ্যান ছিনতাই করবে মর্মে সিন্ধান্ত নেয়। সেই পরিকল্পনা আনুযায়ী আসামী&nbsp; উজ্জল এবং সবুজ সকালে বাড়ী হইতে বাহির হয়। তারা প্রথমে ২জন একডলা বাজারে গিয়ে নাস্তা করে। তার পর সেখানে কিছু সময় অবস্থান করার পর তারা কালিগঞ্জ যায় সেখান থেকে তারা প্রতিস্বর যায়। প্রতিস্বর থেকে পুনরায় তারা বিকাল অনুমান ০৪.০০/০৪.৩০টার সময় আবার কালিগঞ্জ আসে এবং সেখানে অবস্থান করতে থাকে এবং ভ্যান ছিনতাই করার পরিকল্পনা করতে থাকে এবং শিকার টারগেট&nbsp; করতে থাকে। অএ মামলার ভ্যান&nbsp; চালক ভিকটিম বরুন সরকার ভ্যান সহ&nbsp; বিকাল অনুমান ০৫.১৫/০৫.৩০ টার সময় একডালা বাজার হতে যাত্রী নিয়ে কালিগঞ্জ বাজারে গেলে সেখান থেকে অনুমান ০৫.৩০/০৫.৪৫ টার সময় আসামী মোঃ উজ্জল এবং সবুজ , ভিকটিম বরুনের ভ্যানটি ভাড়া করে,প্রথমে একডালা বাজারে আসে । সেখানে আসার পর সবুজ , ভিকটমকে প্রস্তাব দেয় সে তার মামাতো ভাই মোমিনের নিকট টাকা পাবে সিংড়া দমদমা যাবে । কিন্তু ভ্যান চালক ভিকটিম বরুন যেতে না চাইলে সবুজ চৌগ্রাম পর্যন্ত যাওয়ার প্রস্তাব দেয় এবং বেশি ভাড়া দেওয়ার লোভ দেখায়। অনুমান ০৬.০০/০৬.৩০ সময় আসামী সবুজ এবং উজ্জল এবং ভিকটিম বরুন ভ্যানসহ চৌগ্রামের উদ্দেশ্যে রওয়ানা করে। যাওয়ার পথে রাস্তায় বিভিন্ন অজুহাতে আসামী সবুজ রাস্তায় ভ্যান দাড় করায় এবং মোবাইল ফোনে বারবার আসামী মোঃ মোমিনের সাথে কথা বলতে থাকে এবং আসামী মোমিন এবং পলাশের অবস্থান জানতে চায়। আসামী পলাশ এবং মোমিন পূর্ব হইতে ছোটচৌগ্রাম এবং বড়চৌগ্রাম এর মাঝামাঝি রাস্তার ফাকা জায়গায় অবস্থান নেয়। সন্ধ্যা রাত্রী অনুমানিক ১৯.৩০/২০.০০ টার সময় আসামী উজ্জল এবং সবুজের বহনকারি ভ্যানটি আসামী মোমিনের কাছে পৌছামাত্র আসামী সবুজ বলে ঐযে আমার মামাতো ভাই ভ্যান থামা। তখন ভ্যান চালক ভিকটিম বরুন সরকার ভ্যানের গতি কমানোর সাথে সাথে আসামী সবুজ ভ্যান থেকে নেমে আসামী উজ্জল , পলাশ এবং মোমিনের সহায়তায় ভ্যান কেড়ে নেওয়ার চেষ্টা করলে ভিকটিম ভ্যান চালক বাধা দিলে আসামী মোমিন এবং সবুজ মিলে ভিকটিম বরুন সরকারের গলা চেপে ধরে এবং আসামী পলাশ এবং উজ্জল , ভিকটিম বরুনের পা চেপে ধরে। ভিকটিমের গলা চেপে ধরার কারনে শ্বাস রোধ হয়ে মারা গেলে ,আসামী&nbsp; ১। মোঃ সবুজ আলী (৩০) পিতাঃ আয়েনুদ্দিন ২। মোঃ উজ্জল হোসেন (২৫) পিতাঃ মোঃ জাহিদুল প্রাং উভয় সাং তেঘইর ৩। মোঃ মোমিন আলী (২৫) পিতাঃ মোঃ ফরিদুল ইসলাম ফরিদ ৪। মোঃ পলাশ আলী (২২) পিতা ঃ মৃত আলতাব @ আলতাফ উভয় সাং মালকুর থানা ঃ&nbsp;&nbsp; সিংড়া জেলা ঃ নাটোর ভিকটিম বরুনের লাশ গোপন করার উদেশ্যে তারা সবাই ধরাধরি করে ভিকটিমের লাশ রাস্তার নিচে ঝোপের ভিতর দিয়ে ধানের জমির পানিতে ঢুবিয়ে রাখে। লাশ নিচে নামানোর সময় আসামী মোঃ উজ্জলের নিকট থাকা কালনীল রংয়ের পুরোনো ভাঙ্গা ডরহসধী মোবাইল যার সাথে সিম নং ০১৭৬২২৮২১৪৯ এবং ০১৭২৮৭৩৯১০০ মোবাইল ফোনটি লাশ হইতে দেড় ফিট দুরে শুকনা জায়গায় পড়ে যায় । লাশ ফেলে দেওয়ার পর আসামীরা ভিকটিমের মোটর চালিত অটো ভ্যান&nbsp; গাড়িটি তারা সিংড়ার দিকে যায় সিংড়া&nbsp; পার্ক পয়েন্ট এর দিকে যায় , সরকার পাড়া এবং রাখালগাছার দিকে ভ্যান নিয়ে ঘোরাঘুরি&nbsp; করতে থাকে&nbsp; উদ্দেশ্য সময় কাটানোর , যাহাতে মোমিনের শ্বশুর বাড়ীর লোকজন ঘুমিয়ে পড়লে রাত্রী অনুমান ১০.০০/১১.০০ টার দিকে তারা ভ্যান মোমিনের শ্বশুরের বাড়ীতে রাখে। ছিনতাইকৃত ভ্যানটি আসামি পলাশ ১৫ হাজার টাকায় কিনে নেওয়ার জন্য রাজি হয় এবং তৎক্ষণিক ৪ হাজার টাকা দেয় এবং তারা সকলেই ১ হাজার টাকা করে ভাগ করে নেয়। পরের দিন ০৩/০৯/১৮ ইং তারিখ বেলা অনুমান ১৩.৩০/১৪.০০ দিকে গরু চরানোর রাখালেরা লাশ দেখতে পেয়ে রাস্তা&nbsp; দিয়ে যাওয়া লোকজনদের বললে লাশ পানিতে পড়ার থাকার বিষয়টি এলাকায় প্রচার হয় এবং সংবাদটি লোক মারফত থানায় পৌছিলে এস আই মোঃ আনহার হোসেন সঙ্গীয় ফোর্সসহ সেখানে উপস্থিত হয়ে মৃতের সুরতহাল রির্পোট প্রস্তুত পূর্বক ময়না তদন্তের জন্য প্রেরন করে।&nbsp; তদন্তে সাক্ষ্য প্রমানে ঘটনার পারিপাশ্বিকতায়&nbsp; ১। মোঃ সবুজ আলী (৩০) পিতাঃ আয়েনুদ্দিন@ আয়েন ২। মোঃ উজ্জল হোসেন (২৫) পিতাঃ মোঃ জাহিদুল প্রাং উভয় সাং তেঘইর ৩। মোঃ মোমিন আলী (২৫) পিতাঃ মোঃ ফরিদুল ইসলাম ফরিদ ৪। মোঃ পলাশ আলী (২২) পিতা ঃ মৃত আলতাব @ আলতাফ উভয় সাং মালকুর থানা ঃ&nbsp;&nbsp; সিংড়া জেলা ঃ নাটোরগণেরা পূর্ব পরিকল্পিতভাবে ভ্যান ছিনতাইয়ের জন্য ভিকটিম বরুন সরকারের ভ্যান ভাড়া করে ০২/০৯/১৮ইং তারিখ সন্ধা অনুমান ১৯.৩০/২০.০০ টার সময় চৌগ্রাম টু কালিগঞ্জ রোডের ছোটচৌগ্রাম এবং বড়চৌগ্রাম এর মাঝামাঝি জনৈক হেলাল হাজীর পুকুরের পূর্ব পাশে ফাকা জায়গায় পৌছামাত্র আসামীরা ভিকটিম বরুনের গলা চেপে ধরে হত্যা করে লাশ গোপন করার উদ্দেশ্যে মৃত বরুনের লাশ রাস্তার পাশে জঙ্গলের ভিতর দিয়ে রাস্তার পাশে ধানের জমির পানিতে ঢুবিয়ে দেয় এবং ভিকটিমের ভ্যান নিয়ে চলে যায় । উল্লেখিত আসামীদের বিরুদ্ধে দঃ বিঃ ৩০২/৩৪/২০১ ধারার অপরাধ প্রাথমিক ভাবে প্রমানিত হইয়াছে। এসআই সুব্রতো কুমার মাহাতো উর্দ্ধতন কর্তৃপক্ষের অনুমতি চাহিয়া এম/ই দাখিল করেন। তাহার নিকট অত্র মামলা তদন্তাধীন থাকা অবস্থায় জেলা আদেশ অনুঃ খ্রিঃ মূলে নাটোর&nbsp; সদর থানায় বদলী হওয়ায়&nbsp; মামলাটির পরবর্তী তদন্তভার অফিসার ইনচাজ জনাব মোঃ মনিরুল ইসলাম সাহেব এসআই মোঃ আহসানুজ্জামান এর উপর অর্পন করেন। তিনি মামলার তদন্তভার গ্রহন করিয়া&nbsp; আসামীদের পুনুরায় নাম ঠিকানা যাচাই করেন।&nbsp; মামলা সংক্রান্তে&nbsp; জব্দকৃত অটো ভ্যান বিজ্ঞ আদালতের আদেশে বাদীনির জিম্মায়&nbsp; প্রদান করেন।&nbsp;&nbsp; তদন্তশেষে&nbsp;&nbsp; আসামী ১। মোঃ সবুজ আলী (৩০) পিতাঃ আয়েনুদ্দিন ২। মোঃ উজ্জল হোসেন (২৫) পিতাঃ মোঃ জাহিদুল প্রাং উভয় সাং তেঘইর ৩। মোঃ মোমিন আলী (২৫) পিতাঃ মোঃ ফরিদুল ইসলাম ফরিদ ৪। মোঃ পলাশ আলী (২২) পিতা ঃ মৃত আলতাব @ আলতাফ উভয় সাং মালকুর থানা ঃ&nbsp;&nbsp; সিংড়া জেলা ঃ নাটোরগণের বিরুদ্ধে বাদী আনীত অভিযোগে বর্নিত ৩০২/২০১/৩৪ পেনাল কোড ধারার অপরাধ প্রাথমিক ভাবে সত্য বলিয়া প্রতিয়মান হওয়ায় উপরোক্ত আসামীদের বিরুদ্ধে প্রকাশ্য আদালতে বিচারের নিমিত্তে সিংড়া থানার অভিযোগ পত্র&nbsp; দাখিল করেন।', '156380206504.jpg', NULL, 3, 3, 25, 36, 5, '2019-07-22', '::1', NULL, 1, '2019-07-22 13:27:45', '2019-07-22 18:56:53', NULL),
(82, 'ডিআইজি রাজশাহী রেঞ্জের ওয়েব পোর্টাল উদ্বোধন করেন আইজিপি মহোদয়।', '2019-08-06 20:30:07', 'গত ৩১ জুলাই ২০১৯ খ্রি. বুধবার পুলিশ হেডকোয়ার্টার্সের সম্মেলন কক্ষে দিনব্যাপী অনুষ্ঠিত ত্রৈমাসিক অপরাধ পর্যালোচনা সভায় ডিআইজি রাজশাহী রেঞ্জের ওয়েব পোর্টাল www.ডিআইজিরাজশাহীরেঞ্জ.বাংলা উদ্বোধন করেন বাংলাদেশ পুলিশের ইন্সপেক্টর জেনারেল (আইজিপি) ড. মোহাম্মদ জাবেদ পাটোয়ারী, বিপিএম(বার)।</p><p><br>ডিআইজিরাজশাহীরেঞ্জ.বাংলা এর পাশাপাশি&nbsp; www.digrajshahirange.gov.bd এবং www.rajshahirange.police.gov.bd ডোমেইন এন্টার করলেও পাওয়া যাবে ডিআইজি রাজশাহী রেঞ্জের ওয়েবসাইট। এই ওয়েবসাইটের মাধ্যমে রাজশাহী রেঞ্জের সকল এসপি অফিস, ইউনিট এবং থানার তথ্য পাওয়া যাবে। সাথে থাকছে রাজশাহী রেঞ্জের নিউজ পোর্টাল যেখানে রাজশাহী রেঞ্জের সকল খবর পাওয়া যাবে।&nbsp;</p><p>সভায় বাংলাদেশ পুলিশ একাডেমি, রাজশাহীর প্রিন্সিপ্যাল মোহাম্মদ নাজিবুর রহমান, ডিএমপি কমিশনার মোঃ আছাদুজ্জামান মিয়া, অতিরিক্ত আইজিপি (এএন্ডও) ড. মোঃ মইনুর রহমান চৌধুরী, এন্টিটেরোরিজম ইউনিটের প্রধান মোহাম্মদ আবুল কাশেম, রেলওয়ে রেঞ্জের অতিরিক্ত আইজিপি মোঃ মহসিন হোসেন, শিল্পাঞ্চল পুলিশের অতিরিক্ত আইজিপি আবদুস সালাম, সিআইডি প্রধান মোহাম্মদ শফিকুল ইসলাম, এসবি প্রধান মীর শহীদুল ইসলাম, টিএন্ডআইএম’র অতিরিক্ত আইজিপি মোঃ ইকবাল বাহার, এপিবিএন’র অতিরিক্ত আইজিপি মোশারফ হোসেন, পুলিশ স্টাফ কলেজের রেক্টর শেখ মোহাম্মদ মারুফ হাসান, অতিরিক্ত আইজিপি (এইচআরএম) চৌধুরী আবদুল্লাহ আল-মামুন এবং সভায় সকল মেট্রোপলিটন পুলিশ কমিশনার, রেঞ্জ ডিআইজি ও জেলার পুলিশ সুপারগণ সহ পুলিশের বিভিন্ন ইউনিটের ঊর্ধ্বতন কর্মকর্তাগণ উপস্থিত ছিলেন। উপস্থিত ছিলেন ওয়েবসাইট নির্মাতা প্রতিষ্ঠান ডেস্কটপ আইটির ব্যবস্থাপনা পরিচালক জনাব খাজা খালেদ লিজার।', '1564996161FB_IMG_1564976171177.jpg', NULL, 2, 2, NULL, 9, 9, '2019-08-05', '103.68.118.202', NULL, 1, '2019-08-05 20:09:21', '2019-08-06 20:30:07', NULL),
(84, 'etwy 4wy wteyty wytw4', '2019-08-07 20:24:07', 'dfs hgdasgh aeyh aetyte yetye y', '15651698473-Mhonpur.jpg', '<iframe width=\"400\" height=\"225\" src=\"https://www.youtube.com/embed/1s-1wKL3muI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 3, 3, 7, 5, NULL, NULL, '103.81.172.38', NULL, 0, '2019-08-07 20:24:07', '2019-08-07 20:24:56', '2019-08-07 20:24:56'),
(85, 'ডেঙ্গু প্রতিরোধে করণীয় ও বর্জনীয় সংক্রান্তে ডিআইজি মহোদয় কর্তৃক প্রদত্ত নির্দেশনা', '2019-08-07 23:12:30', 'ডেঙ্গু প্রতিরোধে করণীয় ও বর্জনীয় সংক্রান্তে রেঞ্জ ডিআইজি’র কার্যালয়, রাজশাহী’র সম্মেলন কক্ষে রেঞ্জাধীন সকল জেলা/ইউনিট প্রধানদের নিয়ে গত ০৫/৮/২০১৯ খ্রিঃ তারিখে একটি বিশেষ আলোচনা সভার আয়োজন করা হয়। উক্ত আলোচনা সভায় প্রধান অতিথি হিসেবে উপস্থিত ছিলেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়। এছাড়াও উপস্থিত ছিলেন জনাব মোঃ নিশারুল আরিফ, অ্যাডিশনাল ডিআইজি (অপরাধ ও অপারেশনস্), রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী, কমান্ড্যান্ট (এসপি), আরআরএফ, রাজশাহী, পুলিশ সুপার, রাজশাহী/চাঁপাইনবাবগঞ্জ/নওগাঁ/নাটোর/পাবনা/সিরাজগঞ্জ/বগুড়া ও জয়পুরহাটসহ রেঞ্জ কার্যালয়ের অন্যান্য উর্ধ্বতন কর্মকর্তাগণ। উক্ত আলোচনা সভায় ডিআইজি মহোদয় ডেঙ্গু প্রতিরোধে সকল ইউনিট প্রধানকে নিম্নোক্ত নির্দেশনা প্রদান করেন।&nbsp;</p><p>&nbsp;&nbsp; &nbsp;নির্দেশনাবলীঃ</p><p>১।&nbsp;&nbsp; &nbsp;প্রতিটি জেলা/ইউনিটে একজন অতিরিক্ত পুলিশ সুপারকে ডেঙ্গু ম্যানেজমেন্ট অফিসার হিসেবে নিয়োগ করা।<br>২।&nbsp;&nbsp; &nbsp;প্রতিটি জেলা/ইউনিটের ডেঙ্গু ম্যানেজমেন্ট অফিসারগণ জনাব মোঃ মনিরুল ইসলাম, পুলিশ সুপার, রেঞ্জ কার্যালয় রাজশাহী’র (ডেঙ্গু ম্যানেজমেন্ট অফিসার, রেঞ্জ ডিআইজি’র কার্যালয়, রাজশাহী) সাথে সমন্বয়পূর্বক রেঞ্জাধীন সকল জেলা/ইউনিটের অফিস, থানা, ফাঁড়ি, তদন্ত কেন্দ্র, ক্যাম্প ও পুলিশ লাইন্সসহ সকল &nbsp;&nbsp; &nbsp;স্থাপনাসমূহ পরিষ্কার পরিচ্ছন্ন রাখার ব্যবস্থা গ্রহণ করা এবং এ বিষয়ে কার্যক্রম সঠিকভাবে গৃহীত হচ্ছে কিনা &nbsp;&nbsp; &nbsp;তা রেঞ্জ কার্যালয়ের ডেঙ্গু ম্যানেজমেন্ট অফিসার কর্তৃক সার্বক্ষণিক মনিটরিং করা।&nbsp;<br>৩।&nbsp;&nbsp; &nbsp;ডেঙ্গু রোগে আক্রান্ত সকল পুলিশ কর্মকর্তা/কর্মচারী ও তাদের পরিবারবর্গের সদস্যদের সু-চিকিৎসার বিষয়টি&nbsp;&nbsp; &nbsp;নিশ্চিত করা এবং তাদের চিকিৎসা সংক্রান্তে মনিটরিং করা।&nbsp;<br>৪।&nbsp;&nbsp; &nbsp;প্রতিটি পুলিশ কর্মকর্তা/কর্মচারী নিজসহ তার পরিবারবর্গের মধ্যে ডেঙ্গু প্রতিরোধে সচেতনতা বৃদ্ধি করা।<br>৫।&nbsp;&nbsp; &nbsp;প্রতিটি জেলা/ইউনিটে কর্মরত সকল পুলিশ সদস্যের মাঝে ডেঙ্গু প্রতিরোধে সচেতনতা বৃদ্ধির লক্ষ্যে বিশেষ রোলকলের ব্যবস্থা গ্রহণ করা।<br>৬।&nbsp;&nbsp; &nbsp;ইউনিট প্রধানগণ কর্তৃক জেলা ও থানা পর্যায়ে সকল স্তরের জনসাধারণকে সম্পৃক্ত করে ডেঙ্গু প্রতিরোধে করণীয় ও বর্জনীয় সংক্রান্তে জনসচেতনতা বৃদ্ধির লক্ষ্যে কাজ করা।', '1565179950001.jpg', NULL, 1, NULL, NULL, 97, 97, '2019-08-07', '103.68.118.203', NULL, 1, '2019-08-07 23:12:30', '2019-08-07 23:12:52', NULL),
(83, 'পবিত্র ঈদ-উল-আযহা উপলক্ষ্যে বঙ্গবন্ধু সেতু এলাকায় ট্রাফিক ব্যবস্থা নিয়ন্ত্রণে ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়ের কঠোর নির্দেশনা।', '2019-08-07 20:12:09', 'পবিত্র ঈদ-উল-আযহা/২০১৯ উপলক্ষ্যে সিরাজগঞ্জ ও টাঙ্গাইল জেলাধীন বঙ্গবন্ধু সেতু পূর্ব ও পশ্চিম পার্শ্বসহ সংশ্লিষ্ট এলাকায় ট্রাফিক ব্যবস্থা স্বাভাবিক রাখতে সংশ্লিষ্ট পুলিশ সুপারদের গত ০৩/৮/২০১৯ খ্রিঃ তারিখে সিরাজগঞ্জ জেলাধীন হাটিকুমরুল এরিস্টোক্র্যাট রেস্টুরেন্টে এক বিশেষ আলোচনা সভা অনুষ্ঠিত হয়। উক্ত সভায় প্রধান অতিথি হিসেবে উপস্থিত ছিলেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়। এছাড়াও উপস্থিত ছিলেন জনাব জনাব সালেহ মোহাম্মদ তানভীর, পিপিএম, অতিরিক্ত ডিআইজি (প্রশাসন ও অর্থ), ঢাকা রেঞ্জ, ঢাকা, জনাব মোঃ নিশারুল আরিফ, অতিরিক্ত ডিআইজি (অপরাধ ও অপরেশনস্), রাজশাহী রেঞ্জ, রাজশাহী, পুলিশ সুপার, সিরাজগঞ্জ ও নাটোরসহ অন্যান্য উর্ধ্বতন কর্মকর্তাবৃন্দ। উক্ত আলোচনা সভায় প্রধান অতিথি মহোদয় পবিত্র ঈদ-উল-আযহা উপলক্ষ্যে যানজট নিরসনে রাস্তার ট্রাফিক ব্যবস্থা স্বাভাবিক রাখতে রাজশাহী রেঞ্জে ব্যাপক সংখ্যক ফোর্স মোতায়েন করা হবে মর্মে জানান। টাঙ্গাইল ও ঢাকার সাথে সমন্বয়পূর্বক নিজ নিজ এলাকায় ট্রাফিক ব্যবস্থার উন্নতি করা হয়েছে। সড়ক/মহাসড়কে কোরবানীর পশুবাহী গাড়ীসহ সকল গাড়ী যেন সার্বক্ষণিক নির্বিঘ্নে চলাচল করতে পারে সে জন্য রেঞ্জাধীন সকল পুলিশ সুপারকে নির্দেশনা প্রদান করা হয়েছে। রাজশাহী রেঞ্জের কোন জায়গায় যেন চাঁদাবাজি না হয় এবং পশুবাহী গাড়ী রাস্তায় থামিয়ে যেখানে সেখানে পশু নামাতে না পারে সে ব্যাপারে পুলিশের উর্ধ্বতন কর্মকর্তাগণ সচেষ্ট আছেন। তদুপরি এতদবিষয়ে কোন ধরণের অভিযোগ পাওয়া গেলে তার বিরুদ্ধে আইনগত ব্যবস্থা গ্রহণ করা হবে।&nbsp;', '1564998922capture.jpg', '<iframe src=\"https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2F705294716539939%2Fvideos%2F357581101605926%2F&show_text=0&width=560\" width=\"560\" height=\"315\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>', 2, 2, NULL, 9, 9, '2019-08-05', '27.147.161.46', NULL, 1, '2019-08-05 20:55:22', '2019-08-07 20:12:09', NULL),
(86, '“ডেঙ্গু প্রতিরোধে এগিয়ে আসুন”', '2019-08-08 22:29:54', 'জনাব এ কে এম হাফিজ আক্তার, বিপিএম (বার), ডিআইজি, রাজশাহী রেঞ্জ বাংলাদেশ পুলিশ, রাজশাহী মহোদয়ের নির্দেশক্রমে পুলিশ হেডকোয়ার্টার্স, ঢাকা হতে প্রাপ্ত <strong>“ডেঙ্গু প্রতিরোধে এগিয়ে আসুন”</strong> শিরোনামাধীন ডেঙ্গু কি?, প্রতিরোধের উপায়?, ডেঙ্গু জ্বরের লক্ষণ, ডেঙ্গু হলে করণীয় কি? ইত্যাদি বিষয় সংক্রান্ত লিফলেট রেঞ্জ কার্যালয়ে কর্মরত সকল অফিসার ও ফোর্সদের মাঝে বিতরণ করেন রেঞ্জ কার্যালয়ের ডেঙ্গু ম্যানেজমেন্ট অফিসার, জনাব মোঃ মনিরুল ইসলাম, পুলিশ সুপার, রেঞ্জ কার্যালয়, রাজশাহী। এছাড়াও তিনি ডিআইজি মহোদয়ের নির্দেশে ডিআইজি অফিসের সকল স্থাপনা ও এর আশপাশের এলাকাসমূহ পরিষ্কার পরিচ্ছন্ন করার কার্যক্রম সরেজমিনে উপস্থিত থেকে তদারকি&nbsp;করেন।', '1565263794CCI_006267.jpg', NULL, 1, NULL, NULL, 97, 97, '2019-08-08', '103.68.118.203', NULL, 1, '2019-08-08 22:29:54', '2019-08-08 22:30:03', NULL),
(87, '১৫ আগস্ট, ২০১৯ জাতীয় শোক দিবস পালন', '2019-08-15 23:59:03', 'জেলা প্রশাসন, রাজশাহী কর্তৃক আয়োজিত জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমান এঁর ৪৪তম শাহাদত বার্ষিকী ও জাতীয় শোক দিবস ২০১৯ পালন উপলক্ষ্যে আয়োজিত “শোক র‌্যালি” শহীদ এ.এইচ.এম. কামারুজ্জামান বোটানিক্যাল গার্ডেন ও চিড়িয়াখানা চত্ত্বর হতে শুরু করে প্রধান সড়ক প্রদক্ষিণ করে জেলা পরিষদ মিলনায়তন চত্ত্বরে সমাপ্তি ঘটে। </p><p>“শোক র‌্যালি” শেষে স্বাধীনতার মহান স্থপতি বঙ্গবন্ধু শেখ মুজিবুর রহমান এঁর প্রতিকৃতিতে পুষ্পস্তবক অর্পণ করেন জনাব এ কে এম হাফিজ আক্তার, বিপিএম(বার), ডিআইজি, রাজশাহী রেঞ্জ, বাংলাদেশ পুলিশ, রাজশাহী মহোদয়। </p><p>জাতীয় শোক দিবস ২০১৯ উপলক্ষে শহীদ এ.এইচ.এম. কামারুজ্জামান মিলনায়তন-এ অনুষ্ঠিত আলোচনা সভা ও দোয়া মাহফিলে প্রধান অতিথি হিসেবে উপস্থিত ছিলেন জনাব এ এইচ এম খায়রুজ্জামান (লিটন), মাননীয় মেয়র, রাজশাহী সিটি কর্পোরেশন। এছাড়াও উক্ত সভায় উপস্থিত ছিলেন বিভাগীয় কমিশনার, রাজশাহী, পুলিশ কমিশনার, আরএমপি, রাজশাহী, ডিআইজি, রাজশাহী রেঞ্জ, রাজশাহী, অতিরিক্ত ডিআিইজি (অপরাধ ও অপারেশনস্), রাজশাহী রেঞ্জ, পুলিশ সুপার, রাজশাহীসহ উর্ধ্বতন কর্মকর্তাবৃন্দ।', '15658739436.jpg', NULL, 1, NULL, NULL, 97, 97, '2019-08-15', '103.68.118.203', NULL, 1, '2019-08-15 23:59:03', '2019-08-15 23:59:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_images`
--

DROP TABLE IF EXISTS `news_images`;
CREATE TABLE IF NOT EXISTS `news_images` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `news_image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_images_news_id_foreign` (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_images`
--

INSERT INTO `news_images` (`id`, `news_id`, `news_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(43, 37, '1540272318news4.jpg', '2018-10-22 23:25:18', '2018-10-22 23:25:18', NULL),
(42, 37, '1540272318news3.jpg', '2018-10-22 23:25:18', '2018-10-22 23:25:18', NULL),
(41, 37, '1540272318news2.jpg', '2018-10-22 23:25:18', '2018-10-23 14:04:31', '2018-10-23 14:04:31'),
(44, 51, '1540711809bdp-app.jpg', '2018-10-28 01:30:09', '2018-10-28 01:30:09', NULL),
(45, 51, '1540711809bogra_sp.jpg', '2018-10-28 01:30:09', '2018-10-28 01:30:09', NULL),
(46, 51, '1540711809chapai_sp.jpg', '2018-10-28 01:30:09', '2018-10-28 01:30:09', NULL),
(47, 51, '1540711809clearance.jpg', '2018-10-28 01:30:09', '2018-10-28 01:30:09', NULL),
(48, 51, '1540711809complaint.jpg', '2018-10-28 01:30:09', '2018-10-28 01:31:01', '2018-10-28 01:31:01'),
(49, 51, '1540711809cpi_cover.jpg', '2018-10-28 01:30:09', '2018-10-28 01:30:09', NULL),
(50, 52, '1540712280sirajganj_sp.jpg', '2018-10-28 01:38:00', '2018-10-28 01:38:00', NULL),
(51, 52, '1540712280sp-raj.jpg', '2018-10-28 01:38:00', '2018-10-28 01:38:00', NULL),
(52, 52, '1540712280staff_pic.jpg', '2018-10-28 01:38:00', '2018-10-28 01:38:00', NULL),
(53, 56, '156240942965310801_747742198961857_4936986351800156160_n.jpg', '2019-07-06 10:37:09', '2019-07-06 10:37:09', NULL),
(54, 56, '156240942965386582_747742415628502_9174128012013076480_n.jpg', '2019-07-06 10:37:09', '2019-07-06 10:37:09', NULL),
(55, 56, '156240942965438873_747741538961923_2558942872166465536_n.jpg', '2019-07-06 10:37:09', '2019-07-06 10:37:09', NULL),
(56, 56, '156240942965961337_747741972295213_7268995439947415552_n.jpg', '2019-07-06 10:37:09', '2019-07-06 10:37:09', NULL),
(57, 56, '156240942966141321_747741818961895_3943436085522071552_n.jpg', '2019-07-06 10:37:09', '2019-07-06 10:37:09', NULL),
(58, 59, '156244236465310801_747742198961857_4936986351800156160_n.jpg', '2019-07-06 19:46:04', '2019-07-06 19:46:04', NULL),
(59, 59, '156244236465386582_747742415628502_9174128012013076480_n.jpg', '2019-07-06 19:46:04', '2019-07-06 19:46:04', NULL),
(60, 59, '156244236466084672_747741455628598_8996139095478501376_n.jpg', '2019-07-06 19:46:04', '2019-07-06 19:46:04', NULL),
(61, 60, '156244311665310801_747742198961857_4936986351800156160_n.jpg', '2019-07-06 19:58:36', '2019-07-06 20:19:38', '2019-07-06 20:19:38'),
(62, 60, '156244311665386582_747742415628502_9174128012013076480_n.jpg', '2019-07-06 19:58:36', '2019-07-06 20:19:38', '2019-07-06 20:19:38'),
(63, 60, '156244311665438873_747741538961923_2558942872166465536_n.jpg', '2019-07-06 19:58:36', '2019-07-06 20:19:38', '2019-07-06 20:19:38'),
(64, 60, '156244311665961337_747741972295213_7268995439947415552_n.jpg', '2019-07-06 19:58:36', '2019-07-06 20:19:38', '2019-07-06 20:19:38'),
(65, 60, '156244311666084672_747741455628598_8996139095478501376_n.jpg', '2019-07-06 19:58:36', '2019-07-06 20:19:38', '2019-07-06 20:19:38'),
(66, 60, '156244311666141321_747741818961895_3943436085522071552_n.jpg', '2019-07-06 19:58:36', '2019-07-06 20:19:38', '2019-07-06 20:19:38'),
(67, 61, '156267279464942496_744509169285160_2758331149720748032_n.jpg', '2019-07-09 11:46:34', '2019-07-09 11:46:34', NULL),
(68, 61, '156267279464991363_744508819285195_3630657222494650368_n.jpg', '2019-07-09 11:46:34', '2019-07-09 11:46:34', NULL),
(69, 61, '156267279466084672_747741455628598_8996139095478501376_n.jpg', '2019-07-09 11:46:34', '2019-07-09 11:46:34', NULL),
(70, 61, '156267279466141321_747741818961895_3943436085522071552_n.jpg', '2019-07-09 11:46:34', '2019-07-09 11:46:34', NULL),
(71, 62, '156302989064926109_744502432619167_7734168152182882304_n.jpg', '2019-07-13 14:58:10', '2019-07-13 14:58:10', NULL),
(72, 62, '156302989064991483_744502229285854_4375129003699208192_n.jpg', '2019-07-13 14:58:10', '2019-07-13 14:58:10', NULL),
(73, 62, '156302989065015906_744502005952543_7580899169028538368_n.jpg', '2019-07-13 14:58:10', '2019-07-13 14:58:10', NULL),
(74, 64, '156303021457686528_705946276474783_3804254577918738432_n.jpg', '2019-07-13 15:03:34', '2019-07-13 15:03:34', NULL),
(75, 64, '156303021457710705_705946309808113_7230944288857653248_n.jpg', '2019-07-13 15:03:34', '2019-07-13 15:03:34', NULL),
(76, 64, '156303021458004029_705946503141427_8578636646168133632_n.jpg', '2019-07-13 15:03:34', '2019-07-13 15:03:34', NULL),
(77, 64, '156303021458461100_705946163141461_791226898268028928_n.jpg', '2019-07-13 15:03:34', '2019-07-13 15:03:34', NULL),
(78, 64, '156303021458551745_705946406474770_4790063354624344064_n.jpg', '2019-07-13 15:03:34', '2019-07-13 15:03:34', NULL),
(79, 64, '156303021458635822_705946439808100_4248054330298466304_n.jpg', '2019-07-13 15:03:34', '2019-07-13 15:03:34', NULL),
(80, 65, '156303034258376596_707761956293215_5727114472879816704_n.jpg', '2019-07-13 15:05:42', '2019-07-13 15:05:42', NULL),
(81, 65, '156303034258430311_707761812959896_3383614637818773504_n.jpg', '2019-07-13 15:05:42', '2019-07-13 15:05:42', NULL),
(82, 65, '156303034258441617_707761912959886_4924625766634749952_n.jpg', '2019-07-13 15:05:42', '2019-07-13 15:05:42', NULL),
(83, 65, '156303034258441889_707762112959866_7736989962876223488_n.jpg', '2019-07-13 15:05:42', '2019-07-13 15:05:42', NULL),
(84, 65, '156303034258729807_707761862959891_1414711392069484544_n.jpg', '2019-07-13 15:05:42', '2019-07-13 15:05:42', NULL),
(85, 65, '156303034259285696_707761789626565_5614325543605370880_n.jpg', '2019-07-13 15:05:42', '2019-07-13 15:05:42', NULL),
(86, 66, '156303054658590396_708364426232968_1453793575828455424_n.jpg', '2019-07-13 15:09:06', '2019-07-13 15:09:06', NULL),
(87, 66, '156303054658895148_708341702901907_8194218789500354560_n.jpg', '2019-07-13 15:09:06', '2019-07-13 15:09:06', NULL),
(88, 66, '156303054658933255_708341812901896_6478914593572782080_n.jpg', '2019-07-13 15:09:06', '2019-07-13 15:09:06', NULL),
(89, 66, '156303054659301173_708364466232964_5441842139489107968_n.jpg', '2019-07-13 15:09:06', '2019-07-13 15:09:06', NULL),
(90, 66, '156303054659376127_708341729568571_1910396917775335424_n.jpg', '2019-07-13 15:09:06', '2019-07-13 15:09:06', NULL),
(91, 66, '156303054659426045_708341849568559_725652480054001664_n.jpg', '2019-07-13 15:09:06', '2019-07-13 15:09:06', NULL),
(92, 67, '156303064757595593_708973502838727_8590608060051881984_n.jpg', '2019-07-13 15:10:47', '2019-07-13 15:10:47', NULL),
(93, 67, '156303064758594686_708973566172054_8256244357842075648_n.jpg', '2019-07-13 15:10:47', '2019-07-13 15:10:47', NULL),
(94, 67, '156303064758610136_708973622838715_4353730987004264448_n.jpg', '2019-07-13 15:10:47', '2019-07-13 15:10:47', NULL),
(95, 67, '156303064758684888_708973302838747_8121542904855396352_n.jpg', '2019-07-13 15:10:47', '2019-07-13 15:10:47', NULL),
(96, 67, '156303064758741823_708973436172067_1776856617787064320_n.jpg', '2019-07-13 15:10:47', '2019-07-13 15:10:47', NULL),
(97, 67, '156303064759295160_708973679505376_8166322766459437056_n.jpg', '2019-07-13 15:10:47', '2019-07-13 15:10:47', NULL),
(98, 67, '156303064759503739_708973369505407_3966288034546057216_n.jpg', '2019-07-13 15:10:47', '2019-07-13 15:10:47', NULL),
(99, 68, '156303078258684888_708973302838747_8121542904855396352_n.jpg', '2019-07-13 15:13:02', '2019-07-13 15:13:02', NULL),
(100, 68, '156303078259352789_712299769172767_951702007616372736_n.jpg', '2019-07-13 15:13:02', '2019-07-13 15:13:02', NULL),
(101, 68, '156303078259415091_712299752506102_8496226905341558784_n.jpg', '2019-07-13 15:13:02', '2019-07-13 15:13:02', NULL),
(102, 68, '156303078259740071_712299492506128_3088217082236502016_n.jpg', '2019-07-13 15:13:02', '2019-07-13 15:13:02', NULL),
(103, 69, '156303090559551317_712916095777801_5970683257941917696_n.jpg', '2019-07-13 15:15:05', '2019-07-13 15:15:05', NULL),
(104, 69, '156303090559578511_712916052444472_6280321357414662144_n.jpg', '2019-07-13 15:15:05', '2019-07-13 15:15:05', NULL),
(105, 69, '156303090559714414_712916455777765_1610185738941366272_n.jpg', '2019-07-13 15:15:05', '2019-07-13 15:15:05', NULL),
(106, 69, '156303090559843417_712917329111011_8553014782540644352_n.jpg', '2019-07-13 15:15:05', '2019-07-13 15:15:05', NULL),
(107, 69, '156303090559939704_712917502444327_3060800768387842048_n.jpg', '2019-07-13 15:15:05', '2019-07-13 15:15:05', NULL),
(108, 69, '156303090560093715_712916582444419_1672380760922783744_n.jpg', '2019-07-13 15:15:05', '2019-07-13 15:15:05', NULL),
(109, 69, '156303090560148146_712916602444417_3342077304724520960_n.jpg', '2019-07-13 15:15:05', '2019-07-13 15:15:05', NULL),
(110, 70, '156303103160069595_716989085370502_3927577253789040640_n.jpg', '2019-07-13 15:17:11', '2019-07-13 15:17:11', NULL),
(111, 70, '156303103160135132_716988702037207_5452947103850430464_n.jpg', '2019-07-13 15:17:11', '2019-07-13 15:17:11', NULL),
(112, 70, '156303103160174370_716988812037196_8169933588414857216_n.jpg', '2019-07-13 15:17:11', '2019-07-13 15:17:11', NULL),
(113, 70, '156303103160206504_716988938703850_2351370315386322944_n.jpg', '2019-07-13 15:17:11', '2019-07-13 15:17:11', NULL),
(114, 70, '156303103160281070_716988855370525_6975421394335039488_n.jpg', '2019-07-13 15:17:11', '2019-07-13 15:17:11', NULL),
(115, 70, '156303103160308397_716988975370513_4378180582257983488_n.jpg', '2019-07-13 15:17:11', '2019-07-13 15:17:11', NULL),
(116, 70, '156303103160327841_716989025370508_2519198477464895488_n.jpg', '2019-07-13 15:17:11', '2019-07-13 15:17:11', NULL),
(117, 70, '156303103160348651_716989135370497_9172919811942907904_n.jpg', '2019-07-13 15:17:11', '2019-07-13 15:17:11', NULL),
(118, 70, '156303103160358242_716988655370545_2669488295209074688_n.jpg', '2019-07-13 15:17:11', '2019-07-13 15:17:11', NULL),
(119, 70, '156303103160472819_716988765370534_5328662660248502272_n.jpg', '2019-07-13 15:17:11', '2019-07-13 15:17:11', NULL),
(120, 70, '156303103160779611_716988895370521_5487649645033160704_n.jpg', '2019-07-13 15:17:11', '2019-07-13 15:17:11', NULL),
(121, 71, '156303114060158050_717608298641914_7462437116237053952_n.jpg', '2019-07-13 15:19:00', '2019-07-13 15:19:00', NULL),
(122, 71, '156303114060160414_717608211975256_718071068207611904_n.jpg', '2019-07-13 15:19:00', '2019-07-13 15:19:00', NULL),
(123, 71, '156303114060179604_717608055308605_2151245519660253184_n.jpg', '2019-07-13 15:19:00', '2019-07-13 15:19:00', NULL),
(124, 71, '156303114060216225_717608335308577_2853104194427027456_n.jpg', '2019-07-13 15:19:00', '2019-07-13 15:19:00', NULL),
(125, 71, '156303114060227165_717608171975260_8716836517521129472_n.jpg', '2019-07-13 15:19:00', '2019-07-13 15:19:00', NULL),
(126, 71, '156303114060276869_717608125308598_8753885571136356352_n.jpg', '2019-07-13 15:19:00', '2019-07-13 15:19:00', NULL),
(127, 71, '156303114060314949_717608101975267_4504256997884952576_n.jpg', '2019-07-13 15:19:00', '2019-07-13 15:19:00', NULL),
(128, 71, '156303114060334177_717607938641950_5743443685136138240_n.jpg', '2019-07-13 15:19:00', '2019-07-13 15:19:00', NULL),
(129, 71, '156303114060350330_717608408641903_1264578228962459648_n.jpg', '2019-07-13 15:19:00', '2019-07-13 15:19:00', NULL),
(130, 71, '156303114060388150_717607881975289_4480887917618659328_n.jpg', '2019-07-13 15:19:00', '2019-07-13 15:19:00', NULL),
(131, 71, '156303114060392436_717607981975279_917494856551497728_n.jpg', '2019-07-13 15:19:00', '2019-07-13 15:19:00', NULL),
(132, 72, '156303125560231870_718422118560532_4484059957125185536_n.jpg', '2019-07-13 15:20:55', '2019-07-13 15:20:55', NULL),
(133, 72, '156303125560252066_718422028560541_6671457045444558848_n.jpg', '2019-07-13 15:20:55', '2019-07-13 15:20:55', NULL),
(134, 72, '156303125560336294_718421945227216_6700162334813323264_n (1).jpg', '2019-07-13 15:20:55', '2019-07-13 15:20:55', NULL),
(135, 72, '156303125560338975_718422178560526_707326627696082944_n.jpg', '2019-07-13 15:20:55', '2019-07-13 15:20:55', NULL),
(136, 72, '156303125560352440_718422158560528_5082992571026767872_n.jpg', '2019-07-13 15:20:55', '2019-07-13 15:20:55', NULL),
(137, 72, '156303125560512082_718422081893869_8888415118057013248_n.jpg', '2019-07-13 15:20:55', '2019-07-13 15:20:55', NULL),
(138, 72, '156303125560625950_718422055227205_7999055849232269312_n.jpg', '2019-07-13 15:20:55', '2019-07-13 15:20:55', NULL),
(139, 73, '156303137861040501_725247801211297_5140832328666316800_n.jpg', '2019-07-13 15:22:58', '2019-07-13 15:22:58', NULL),
(140, 73, '156303137861045319_725247981211279_1907466113696923648_n.jpg', '2019-07-13 15:22:58', '2019-07-13 15:22:58', NULL),
(141, 73, '156303137861086472_725247917877952_7525128155401551872_n.jpg', '2019-07-13 15:22:58', '2019-07-13 15:22:58', NULL),
(142, 73, '156303137861087542_725247617877982_3294095433332162560_n.jpg', '2019-07-13 15:22:58', '2019-07-13 15:22:58', NULL),
(143, 73, '156303137861141842_725247761211301_7295299159697915904_n.jpg', '2019-07-13 15:22:58', '2019-07-13 15:22:58', NULL),
(144, 73, '156303137861166839_725247604544650_8621208250336935936_n.jpg', '2019-07-13 15:22:58', '2019-07-13 15:22:58', NULL),
(145, 73, '156303137861174189_725247781211299_4919765762031222784_n.jpg', '2019-07-13 15:22:58', '2019-07-13 15:22:58', NULL),
(146, 73, '156303137861398904_725248014544609_7878134558296637440_n.jpg', '2019-07-13 15:22:58', '2019-07-13 15:22:58', NULL),
(147, 73, '156303137861573222_725247891211288_5188733622177234944_n.jpg', '2019-07-13 15:22:58', '2019-07-13 15:22:58', NULL),
(148, 74, '156304259961028029_725811861154891_155961163144757248_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(149, 74, '156304259961082728_725811964488214_7633226117100339200_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(150, 74, '156304259961094339_725812047821539_2432355814992773120_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(151, 74, '156304259961102972_725811661154911_2995007388446097408_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(152, 74, '156304259961107774_725811797821564_7971384427211128832_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(153, 74, '156304259961124107_725811751154902_5091576728887754752_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(154, 74, '156304259961180748_725811821154895_4074341564808167424_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(155, 74, '156304259961190527_725812194488191_294387430813859840_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(156, 74, '156304259961236953_725811691154908_3090096327996997632_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(157, 74, '156304259961286521_725812021154875_665820622093287424_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(158, 74, '156304259961337387_725812154488195_3990555024970219520_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(159, 74, '156304259961456716_725811947821549_2225108335697330176_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(160, 74, '156304259961555318_725812091154868_7330323978046668800_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(161, 74, '156304259961772212_725812121154865_467677270874521600_n.jpg', '2019-07-13 18:29:59', '2019-07-13 18:29:59', NULL),
(162, 75, '156304271261159554_726500377752706_619590758055280640_n.jpg', '2019-07-13 18:31:52', '2019-07-13 18:31:52', NULL),
(163, 75, '156304271261180073_726501227752621_2079175818109517824_n.jpg', '2019-07-13 18:31:52', '2019-07-13 18:31:52', NULL),
(164, 75, '156304271261352452_726501004419310_2368952794804649984_n.jpg', '2019-07-13 18:31:52', '2019-07-13 18:31:52', NULL),
(165, 75, '156304271261361426_726500884419322_2672673309811802112_n.jpg', '2019-07-13 18:31:52', '2019-07-13 18:31:52', NULL),
(166, 75, '156304271261374178_726500277752716_2374314924034752512_n.jpg', '2019-07-13 18:31:52', '2019-07-13 18:31:52', NULL),
(167, 75, '156304271261374752_726500764419334_9201337123754475520_n.jpg', '2019-07-13 18:31:52', '2019-07-13 18:31:52', NULL),
(168, 75, '156304271261400439_726501081085969_4837191012856102912_n.jpg', '2019-07-13 18:31:52', '2019-07-13 18:31:52', NULL),
(169, 75, '156304271261557805_726500501086027_42080294269878272_n.jpg', '2019-07-13 18:31:52', '2019-07-13 18:31:52', NULL),
(170, 75, '156304271261569341_726501337752610_3181354410122936320_n.jpg', '2019-07-13 18:31:52', '2019-07-13 18:31:52', NULL),
(171, 75, '156304271261624295_726500624419348_7660692235389763584_n.jpg', '2019-07-13 18:31:52', '2019-07-13 18:31:52', NULL),
(172, 75, '156304271261779788_726500194419391_1205939744844808192_n.jpg', '2019-07-13 18:31:52', '2019-07-13 18:31:52', NULL),
(173, 76, '156304836861573222_725247891211288_5188733622177234944_n.jpg', '2019-07-14 07:06:08', '2019-07-14 07:07:10', '2019-07-14 07:07:10'),
(174, 76, '156304836861828348_725247651211312_7932551411684868096_n.jpg', '2019-07-14 07:06:08', '2019-07-14 07:07:11', '2019-07-14 07:07:11'),
(175, 85, '1565179950DSC_3019 - Copy.jpg', '2019-08-07 23:12:30', '2019-08-07 23:12:30', NULL),
(176, 87, '15658739431.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(177, 87, '15658739432.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(178, 87, '15658739433.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(179, 87, '15658739434.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(180, 87, '15658739435.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(181, 87, '15658739437.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(182, 87, '15658739438.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(183, 87, '15658739439.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(184, 87, '156587394310.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(185, 87, '156587394311.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(186, 87, '156587394312.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(187, 87, '156587394313.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(188, 87, '156587394314.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(189, 87, '156587394315.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL),
(190, 87, '156587394316.jpg', '2019-08-15 23:59:03', '2019-08-15 23:59:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nocs`
--

DROP TABLE IF EXISTS `nocs`;
CREATE TABLE IF NOT EXISTS `nocs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `noc_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `bp_no` int(11) DEFAULT NULL,
  `noc_img` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `jurisdiction_level_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `thana_id` int(11) DEFAULT NULL,
  `uploaded_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nocs_noc_name_index` (`noc_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nocs`
--

INSERT INTO `nocs` (`id`, `noc_name`, `bp_no`, `noc_img`, `jurisdiction_level_id`, `district_id`, `thana_id`, `uploaded_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Demo NOC for me', 123456789, '1540885177noc.jpg', 3, 1, 7, 5, '2018-10-30 01:39:38', '2018-10-30 02:13:22', NULL),
(2, 'Demo noc 2', 321654987, '1540890372noc.jpg', 3, 1, 7, 5, '2018-10-30 03:06:12', '2018-10-30 03:06:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
CREATE TABLE IF NOT EXISTS `notices` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `notice_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'notice',
  `notice_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `notice_file` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notice` text COLLATE utf8_unicode_ci,
  `jurisdiction_level_id` int(11) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `thana_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `creator_ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approval_date` date DEFAULT NULL,
  `approving_ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notices_notice_title_index` (`notice_title`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice_type`, `notice_title`, `notice_file`, `notice`, `jurisdiction_level_id`, `district_id`, `thana_id`, `created_by`, `creator_ip`, `approved_by`, `approval_date`, `approving_ip`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'notice', 'Demo notice title', '1540730086joypurhat_sp.jpg', ' Rajshahi Range Police is committed to enforce law, maintain social order, reduce fear of crime, enhance public safety and ensure internal security with the active support of the community of its jurisdiction. ', 3, 1, 8, 5, '::1', 5, '2018-10-30', '::1', 1, '2018-10-28 06:34:46', '2018-10-30 01:42:33', NULL),
(2, 'notice', 'Testing notice edit option again', '1540733963pritha.jpg', 'Rajshahi Range Police is committed to enforce law, maintain social order, reduce fear of crime, enhance public safety and ensure internal security with the active support of the community of its jurisdiction.', 3, 1, 7, 5, '::1', 5, '2018-10-30', '::1', 1, '2018-10-28 06:35:24', '2018-10-30 01:42:31', NULL),
(3, 'notice', 'Test notice once agian', 'gopal-bhar-er-111-hasir-galpo.pdf', 'Rajshahi Range Police is committed to enforce law, maintain social order, reduce fear of crime, enhance public safety and ensure internal security with the active support of the community of its jurisdiction. Rajshahi Range Police is committed to enforce law, maintain social order, reduce fear of crime, enhance public safety and ensure internal security with the active support of the community of its jurisdiction.', 3, 1, 8, 5, '::1', 5, '2018-10-30', '::1', 1, '2018-10-28 06:35:39', '2018-10-30 01:42:27', NULL),
(4, 'office_order', 'Another demo notice with type selection', '1541499420pritha.jpg', '', 3, 3, 7, 5, '127.0.0.1', 5, '2018-11-06', '127.0.0.1', 1, '2018-11-06 04:17:00', '2018-11-06 04:19:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

DROP TABLE IF EXISTS `otps`;
CREATE TABLE IF NOT EXISTS `otps` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `otp` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `nid`, `mobile`, `otp`, `created_at`, `updated_at`) VALUES
(1, '199851938654125874558', '01754121818', '5179', '2019-07-24 15:19:16', '2019-07-24 15:19:16'),
(2, '1547854455587452254', '01754121818', '9278', '2019-07-24 16:52:41', '2019-07-24 16:52:41'),
(3, '12547854596332454', '01754121818', '4739', '2019-07-25 06:24:22', '2019-07-25 06:24:22'),
(4, 'fghfghfgh', '01718659502', '2941', '2019-07-25 16:05:37', '2019-07-25 16:05:37'),
(5, '1254784521258', '01754121818', '3347', '2019-07-29 19:46:05', '2019-07-29 19:46:05'),
(6, '3681464646486', '01754121818', '6459', '2019-07-29 19:48:15', '2019-07-29 19:48:15'),
(7, '468426416165', '01754121818', '7732', '2019-07-29 19:49:37', '2019-07-29 19:49:37'),
(8, '61464169416468', '01754121818', '9707', '2019-07-29 19:54:39', '2019-07-29 19:54:39'),
(9, '12367717662662', '01717624623', '5365', '2019-07-31 03:28:04', '2019-07-31 03:28:04'),
(10, '19692697556390744', '01715210418', '8379', '2019-08-07 14:38:30', '2019-08-07 14:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 'delete-slider', 'Delete slider', 'This permission is for deleting DIG home page slider.', 1, '2018-10-21 23:39:21', '2018-10-21 23:39:21', NULL),
(12, 'edit-slider', 'Edit slider', 'This permission is for editing DIG home page slider.', 1, '2018-10-21 23:38:35', '2018-10-21 23:38:35', NULL),
(11, 'slider-list', 'Slider list', 'This permission is for viewing slider list page.', 1, '2018-10-21 23:38:14', '2018-10-21 23:38:14', NULL),
(10, 'create-slider', 'Create Slider', 'This permission is for creating DIG home page slider.', 1, '2018-10-21 23:37:02', '2018-10-21 23:37:02', NULL),
(9, 'site-settings', 'Site settings', 'This permission is for setting up the site.', 1, '2018-10-21 23:36:33', '2018-10-21 23:36:33', NULL),
(14, 'create-user', 'Create user', 'This permission is for creating new user.', 1, '2018-10-21 23:39:56', '2018-10-21 23:39:56', NULL),
(15, 'users-list', 'Users list', 'This permission is for viewing users list.', 1, '2018-10-21 23:40:31', '2018-10-21 23:41:26', NULL),
(16, 'edit-user', 'Edit user', 'This permission is for editing an existing user.', 1, '2018-10-21 23:42:08', '2018-10-21 23:42:08', NULL),
(17, 'view-user', 'View user', 'This permission is for viewing an existing user.', 1, '2018-10-21 23:42:44', '2018-10-21 23:42:44', NULL),
(18, 'delete-user', 'Delete user', 'This permission is for deleting an existing user.', 1, '2018-10-21 23:43:22', '2018-10-21 23:43:22', NULL),
(19, 'create-role', 'Create role', 'This permission is for creating a user role', 1, '2018-10-21 23:43:52', '2018-10-21 23:43:52', NULL),
(20, 'edit-role', 'Edit role', 'This permission is for editing and existing role.', 1, '2018-10-21 23:44:24', '2018-10-21 23:44:24', NULL),
(21, 'role-list', 'Role list', 'This permission is for viewing the users roles list.', 1, '2018-10-21 23:45:03', '2018-10-21 23:45:03', NULL),
(22, 'delete-role', 'Delete role', 'This permission is for deleting an existing role.', 1, '2018-10-21 23:45:31', '2018-10-21 23:45:31', NULL),
(23, 'news-category', 'news category', 'This permission is for creating and viewing news categories.', 1, '2018-10-21 23:47:20', '2018-10-21 23:47:20', NULL),
(24, 'edit-news-category', 'Edit news category', 'This permission is for editing an existing news category.', 1, '2018-10-21 23:47:51', '2018-10-21 23:47:51', NULL),
(25, 'create-news', 'Create news', 'This permission is for creating a news for any jurisdiction.', 1, '2018-10-21 23:48:32', '2018-10-21 23:48:32', NULL),
(26, 'change-news-status', 'Change news status', 'This permission is for publishing or unpublishing a news from any jurisdiction.', 1, '2018-10-21 23:50:25', '2018-10-21 23:50:25', NULL),
(27, 'view-news', 'View news', 'This permission is for viewing the complete news from any jurisdiction.', 1, '2018-10-21 23:51:25', '2018-10-21 23:51:25', NULL),
(28, 'edit-news', 'Edit news', 'This permission is for editing a news.', 1, '2018-10-21 23:52:02', '2018-10-21 23:52:02', NULL),
(29, 'delete-news', 'Delete news', 'This permission is for deleting a news.', 1, '2018-10-21 23:52:29', '2018-10-21 23:52:29', NULL),
(30, 'slider', 'Slider', NULL, 1, '2018-10-21 23:55:21', '2018-10-21 23:55:21', NULL),
(31, 'users', 'users', NULL, 1, '2018-10-21 23:55:32', '2018-10-21 23:55:32', NULL),
(32, 'role', 'Role', NULL, 1, '2018-10-21 23:55:44', '2018-10-21 23:55:44', NULL),
(33, 'category', 'Category', NULL, 1, '2018-10-21 23:56:39', '2018-10-21 23:56:39', NULL),
(34, 'news', 'News', NULL, 1, '2018-10-22 00:06:32', '2018-10-22 00:06:32', NULL),
(35, 'news-list', 'News list', NULL, 1, '2018-10-22 00:08:40', '2018-10-22 00:08:40', NULL),
(36, 'unpublished-news', 'Unpublished news', NULL, 1, '2018-10-22 00:09:06', '2018-10-22 00:09:06', NULL),
(37, 'published-news', 'Published news', NULL, 1, '2018-10-22 00:09:21', '2018-10-22 00:09:21', NULL),
(38, 'district', 'District', NULL, 1, '2018-10-22 04:02:39', '2018-10-22 04:03:00', NULL),
(39, 'thana', 'Thana', NULL, 1, '2018-10-22 04:26:52', '2018-10-22 04:26:52', NULL),
(40, 'add-dig', 'Add DIG', NULL, 1, '2018-10-27 03:33:25', '2018-10-27 03:33:25', NULL),
(41, 'edit-dig', 'Edit DIG', NULL, 1, '2018-10-27 03:33:35', '2018-10-27 03:33:35', NULL),
(42, 'create-tender', 'Create tender', NULL, 1, '2018-10-27 03:49:27', '2018-10-27 03:49:27', NULL),
(43, 'tender-list', 'Tender List', NULL, 1, '2018-10-27 03:49:38', '2018-10-27 03:49:38', NULL),
(44, 'edit-tender', 'Edit Tender', NULL, 1, '2018-10-27 03:49:51', '2018-10-27 03:49:51', NULL),
(45, 'delete-tender', 'Delete tender', NULL, 1, '2018-10-27 03:50:06', '2018-10-27 03:50:06', NULL),
(46, 'change-tender-status', 'Change tender status', NULL, 1, '2018-10-27 03:50:36', '2018-10-28 06:27:15', NULL),
(47, 'create-notice', 'Create notice', NULL, 1, '2018-10-28 06:22:26', '2018-10-28 06:22:26', NULL),
(48, 'edit-notice', 'Edit notice', NULL, 1, '2018-10-28 06:22:40', '2018-10-28 06:22:40', NULL),
(49, 'delete-notice', 'Delete notice', NULL, 1, '2018-10-28 06:22:51', '2018-10-28 06:22:51', NULL),
(50, 'notice-list', 'Notice list', NULL, 1, '2018-10-28 06:23:46', '2018-10-28 06:23:46', NULL),
(51, 'change-notice-status', 'Change notice status', NULL, 1, '2018-10-28 06:24:40', '2018-10-28 06:24:40', NULL),
(52, 'tender', 'Tender', NULL, 1, '2018-10-28 06:29:55', '2018-10-28 06:29:55', NULL),
(53, 'notice', 'Notice', NULL, 1, '2018-10-28 06:31:07', '2018-10-28 06:31:07', NULL),
(54, 'noc', 'NOC', NULL, 1, '2018-10-30 01:28:55', '2018-10-30 01:28:55', NULL),
(55, 'create-noc', 'Create NOC', NULL, 1, '2018-10-30 01:29:07', '2018-10-30 01:29:07', NULL),
(56, 'noc-list', 'NOC list', NULL, 1, '2018-10-30 01:29:25', '2018-10-30 01:29:25', NULL),
(57, 'delete-noc', 'Delete NOC', NULL, 1, '2018-10-30 01:29:34', '2018-10-30 01:29:34', NULL),
(58, 'service', 'Service', NULL, 1, '2018-10-31 04:49:30', '2018-10-31 04:49:30', NULL),
(59, 'create-staff', 'Create staff', NULL, 1, '2018-11-01 00:52:46', '2018-11-01 00:52:46', NULL),
(60, 'edit-delete-staff', 'Edit/Delete staff', NULL, 1, '2018-11-01 00:53:15', '2018-11-01 00:53:15', NULL),
(61, 'gallery', 'Gallery', NULL, 1, '2018-11-02 23:41:59', '2018-11-02 23:41:59', NULL),
(62, 'create-gallery', 'Create gallery', NULL, 1, '2018-11-02 23:42:12', '2018-11-02 23:42:12', NULL),
(63, 'gallery-list', 'Gallery list', NULL, 1, '2018-11-02 23:42:35', '2018-11-02 23:42:35', NULL),
(64, 'edit-gallery', 'Edit gallery', NULL, 1, '2018-11-02 23:42:51', '2018-11-02 23:42:51', NULL),
(65, 'delete-gallery', 'Delete gallery', NULL, 1, '2018-11-02 23:43:09', '2018-11-02 23:43:09', NULL),
(66, 'delete-gallery-image', 'Delete gallery image', NULL, 1, '2018-11-03 03:05:21', '2018-11-03 03:05:21', NULL),
(67, 'create-sp', 'Create SP', NULL, 1, '2018-11-03 04:07:08', '2018-11-03 04:07:08', NULL),
(68, 'sp', 'SP', NULL, 1, '2018-11-03 04:07:18', '2018-11-03 04:07:18', NULL),
(69, 'sp-list', 'SP list', NULL, 1, '2018-11-03 04:07:35', '2018-11-03 04:07:35', NULL),
(70, 'edit-sp', 'Edit SP', NULL, 1, '2018-11-03 04:07:45', '2018-11-03 04:07:45', NULL),
(71, 'delete-sp', 'Delete SP', NULL, 1, '2018-11-03 04:07:54', '2018-11-03 04:07:54', NULL),
(72, 'received-messages', 'Received messages', NULL, 1, '2018-11-06 23:33:02', '2018-11-06 23:33:02', NULL),
(73, 'jurisdiction-contacts', 'Jurisdiction contacts', NULL, 1, '2018-11-07 23:27:09', '2018-11-07 23:27:09', NULL),
(74, 'most-wanted', 'Most wanted', NULL, 1, '2018-11-14 12:44:56', '2018-11-14 12:44:56', NULL),
(75, 'download-corner', 'Download corner', NULL, 1, '2018-11-14 18:41:48', '2018-11-14 18:41:48', NULL),
(76, 'useful-links', 'Useful links', NULL, 1, '2018-11-15 07:01:35', '2018-11-15 07:01:35', NULL),
(77, 'crime-statistics', 'Crime statistics', NULL, 1, '2018-11-15 10:25:52', '2018-11-15 10:25:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(9, 4),
(9, 5),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(13, 5),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(17, 5),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(25, 7),
(25, 8),
(26, 4),
(26, 7),
(26, 8),
(27, 4),
(27, 7),
(27, 8),
(28, 4),
(28, 7),
(28, 8),
(29, 4),
(29, 7),
(29, 8),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(34, 7),
(34, 8),
(35, 4),
(35, 7),
(35, 8),
(36, 4),
(36, 7),
(36, 8),
(37, 4),
(37, 7),
(37, 8),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(42, 7),
(42, 8),
(43, 4),
(43, 7),
(43, 8),
(44, 4),
(44, 7),
(44, 8),
(45, 4),
(45, 7),
(45, 8),
(46, 4),
(46, 7),
(46, 8),
(47, 4),
(47, 7),
(47, 8),
(48, 4),
(48, 7),
(48, 8),
(49, 4),
(49, 7),
(49, 8),
(50, 4),
(50, 7),
(50, 8),
(51, 4),
(51, 7),
(51, 8),
(52, 4),
(52, 7),
(52, 8),
(53, 4),
(53, 7),
(53, 8),
(54, 4),
(54, 7),
(54, 8),
(55, 4),
(55, 7),
(55, 8),
(56, 4),
(56, 7),
(56, 8),
(57, 4),
(57, 7),
(57, 8),
(58, 4),
(59, 4),
(60, 4),
(61, 4),
(62, 4),
(63, 4),
(64, 4),
(65, 4),
(66, 4),
(67, 4),
(67, 7),
(68, 4),
(68, 7),
(69, 4),
(69, 7),
(70, 4),
(70, 7),
(71, 4),
(71, 7),
(72, 4),
(73, 4),
(73, 6),
(73, 7),
(73, 8),
(74, 4),
(74, 7),
(74, 8),
(75, 4),
(75, 7),
(75, 8),
(76, 4),
(77, 4),
(77, 7),
(77, 8);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'admin', 'Admin', NULL, 1, '2018-10-21 23:31:51', '2018-10-21 23:31:51', NULL),
(4, 'super-admin', 'Super admin', 'The user with all the privileges.', 1, '2018-10-21 23:31:36', '2018-10-21 23:31:36', NULL),
(6, 'operator', 'Operator', 'Data entry operator', 1, '2018-10-30 03:17:07', '2018-11-11 18:55:22', NULL),
(7, 'district-admin', 'District Admin', 'This role is created for district level users. The district admin will serve all district level purposes that he/she is permitted.', 1, '2019-03-03 07:16:57', '2019-03-03 07:16:57', NULL),
(8, 'thana-admin', 'Thana Admin', 'This user will belong to Police stations and will serve the purposes from a police station as he/she is permitted to.', 1, '2019-03-03 07:20:02', '2019-03-03 07:20:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(5, 4),
(9, 4),
(10, 4),
(11, 6),
(12, 7),
(13, 7),
(14, 7),
(15, 7),
(16, 7),
(17, 7),
(18, 7),
(19, 7),
(20, 7),
(21, 8),
(22, 8),
(23, 8),
(24, 8),
(25, 8),
(26, 8),
(27, 8),
(28, 8),
(29, 8),
(30, 8),
(31, 8),
(32, 8),
(33, 8),
(34, 8),
(35, 8),
(36, 8),
(37, 8),
(38, 8),
(39, 8),
(40, 8),
(41, 8),
(42, 8),
(43, 8),
(44, 8),
(45, 8),
(46, 8),
(47, 8),
(48, 8),
(49, 8),
(50, 8),
(51, 8),
(52, 8),
(53, 8),
(54, 8),
(55, 8),
(56, 8),
(57, 8),
(58, 8),
(59, 8),
(60, 8),
(61, 8),
(62, 8),
(63, 8),
(64, 8),
(65, 8),
(66, 8),
(67, 8),
(68, 8),
(69, 8),
(70, 8),
(71, 8),
(72, 8),
(73, 8),
(74, 8),
(75, 8),
(76, 8),
(77, 8),
(78, 8),
(79, 8),
(80, 8),
(81, 8),
(82, 8),
(83, 8),
(84, 8),
(85, 8),
(86, 8),
(87, 8),
(88, 8),
(89, 8),
(90, 8),
(91, 8),
(92, 8),
(93, 4),
(94, 7),
(95, 7),
(96, 7),
(97, 4);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `service_image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_icon` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `tagline` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `thana_id` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_page_link` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_photo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `tagline`, `logo`, `favicon`, `district_id`, `thana_id`, `address`, `email`, `phone`, `fb_page_link`, `cover_photo`, `created_at`, `updated_at`) VALUES
(1, 'DIG Rajshahi Range', 'Bangladesh Police', '1539236996rr_logo.png', '1539236996rrrr_logo.png', NULL, NULL, 'let\'s give some address again', 'dig@dig-rajshahi-range.gov.bd', 'Call 999', 'https://www.facebook.com/dig-rajshahi', NULL, '2018-10-10 18:00:00', '2018-10-31 01:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_image`, `caption`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, '15420201824.jpg', NULL, 0, '2018-11-12 22:56:22', '2019-07-13 14:38:57', NULL),
(3, '15420201983.jpg', NULL, 1, '2018-11-12 22:56:38', '2018-11-12 22:56:38', NULL),
(4, '15420202172.jpg', NULL, 0, '2018-11-12 22:56:57', '2019-07-13 14:39:04', NULL),
(5, '15420202281.jpg', NULL, 0, '2018-11-12 22:57:08', '2019-07-13 14:40:33', NULL),
(6, '1563028683slide_05.jpg', NULL, 1, '2019-07-13 14:38:03', '2019-07-13 14:40:26', NULL),
(7, '1563028692slide_04.jpg', NULL, 1, '2019-07-13 14:38:12', '2019-07-13 14:38:12', NULL),
(8, '1563028699slide_03.jpg', NULL, 1, '2019-07-13 14:38:19', '2019-07-13 14:38:19', NULL),
(9, '1563028707slide_02.jpg', NULL, 1, '2019-07-13 14:38:27', '2019-07-13 14:38:27', NULL),
(10, '1563028713slide_01.jpg', NULL, 1, '2019-07-13 14:38:33', '2019-07-13 14:38:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sps`
--

DROP TABLE IF EXISTS `sps`;
CREATE TABLE IF NOT EXISTS `sps` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sp_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `period_from` date NOT NULL,
  `period_to` date DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sps`
--

INSERT INTO `sps` (`id`, `sp_name`, `district_id`, `period_from`, `period_to`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Demo SP', 1, '2018-07-04', NULL, '1543235237sp-raj.jpg', '2018-11-03 04:24:20', '2019-07-19 19:20:58', '2019-07-19 19:20:58'),
(2, 'Farhana Khushalid Miti', 3, '2018-04-04', '2019-04-04', '156356367452075891_2100494296708009_7051897040841736192_n.jpg', '2019-07-19 19:14:34', '2019-07-19 19:21:13', '2019-07-19 19:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bp_no` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_name`, `surname`, `photo`, `bp_no`, `designation`, `email`, `mobile`, `phone`, `department`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Demo staff', 'Some surname', 'present_principal.jpg', '1234567890', 'Deputy Inspector General', 'someone@anyone.com', '321654987', '072156889745', NULL, 1, '2018-11-01 01:20:00', '2019-07-18 18:31:58', '2019-07-18 18:31:58'),
(2, 'Demo staff editing', 'hobe kisu ekta', '1541061310staff_pic.jpg', '4565465456', 'Assistant Sub Inspector', 'hobekeo@ekjon.com', '25478541254', '2123654789', 'Thana', 1, '2018-11-01 01:55:32', '2019-07-18 18:31:55', '2019-07-18 18:31:55'),
(3, 'Another demo Staff', NULL, '1541069528chapai_sp.jpg', '6544165165', 'Superintendent of Police', 'something@nothing.com', '2547896312', '072154875', 'Admin & Finance', 1, '2018-11-01 04:52:08', '2019-07-18 18:31:52', '2019-07-18 18:31:52'),
(4, 'A.K.M HAFIZ AKHTER', 'bpm (bar)', '15634747061563452654DIG-Sir-2.jpg', '6898005218', 'Deputy Inspector General', 'digrajshahi@police.gov.bd', '01713 373788', '0721- 772309', NULL, 1, '2019-07-18 18:31:46', '2019-07-18 18:31:46', NULL),
(5, 'Md. Nisharul Arif', NULL, '15634748301563452913Add.jpg', '6898020831', 'Additional DIG', 'nishar315@yahoo.com', '01769- 691564', '0721 770705', 'Crime & Operations', 1, '2019-07-18 18:33:50', '2019-07-18 18:33:50', NULL),
(6, 'Md. Abdus Salam', NULL, '15634751921563453161Salam SP.jpg', '7503027820', 'Superintendent of Police', 'sp1rajrange@police.gov.bd', '01769691565', '0721-770825', 'Discipline and Prosecution', 1, '2019-07-18 18:39:52', '2019-07-18 18:39:52', NULL),
(7, 'MD. Belayet Hossan', NULL, '15634752461563453279Belayet-SP-.jpg', '7505109728', 'Superintendent of Police', 'belayetasp75@yahoo.com', '01769 691566', NULL, 'Estate and Welfare', 1, '2019-07-18 18:40:46', '2019-07-18 18:40:46', NULL),
(8, 'Md. Monirul Islam', NULL, '15634752931563453489002.jpg', '7105110740', 'Superintendent of Police', 'islammoni1137@gmail.com', '01769 691567', '0721- 770926', NULL, 1, '2019-07-18 18:41:33', '2019-07-18 18:41:33', NULL),
(9, 'Md. Shah Kabir', NULL, '15634754031563453817Kabir ASP .jpg', '6690108521', 'Assistant Superintendent of Police', NULL, '01769691568', '01711113834', 'Crime & Operations', 1, '2019-07-18 18:43:23', '2019-07-18 18:43:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tenders`
--

DROP TABLE IF EXISTS `tenders`;
CREATE TABLE IF NOT EXISTS `tenders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tender_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `tender_file` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jurisdiction_level_id` int(11) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `thana_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `creator_ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approval_date` date DEFAULT NULL,
  `approving_ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tenders_tender_title_index` (`tender_title`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tenders`
--

INSERT INTO `tenders` (`id`, `tender_title`, `start_date`, `end_date`, `tender_file`, `jurisdiction_level_id`, `district_id`, `thana_id`, `created_by`, `creator_ip`, `approved_by`, `approval_date`, `approving_ip`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A tender title', '2018-08-07', '2018-10-31', '1540710164organogram.pdf', 3, 3, 3, 5, '::1', 5, '2018-10-27', '::1', 0, '2018-10-27 05:27:06', '2019-07-22 13:00:04', '2019-07-22 13:00:04'),
(2, 'another news title', '2018-08-15', '2018-12-31', '1540639626clearance.jpg', 3, 3, 3, 5, '::1', 5, '2018-10-28', '::1', 0, '2018-10-27 05:32:58', '2019-07-22 13:00:01', '2019-07-22 13:00:01'),
(3, 'Some tender title', '2018-05-16', '2018-10-03', '1540712435organogram.pdf', 3, 3, 3, 5, '::1', NULL, NULL, NULL, 0, '2018-10-28 01:40:35', '2019-07-22 12:59:58', '2019-07-22 12:59:58'),
(4, 'উন্মুক্ত দরপত্র বিজ্ঞপ্তি', '2019-06-01', '2019-06-23', '1563800387tender-notice.jpg', 3, 3, 7, 5, '::1', 5, '2019-07-22', '::1', 1, '2019-07-22 12:59:47', '2019-07-22 13:00:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thanas`
--

DROP TABLE IF EXISTS `thanas`;
CREATE TABLE IF NOT EXISTS `thanas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `thana_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_thana` text COLLATE utf8_unicode_ci,
  `map` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanas`
--

INSERT INTO `thanas` (`id`, `name`, `district_id`, `thana_image`, `about_thana`, `map`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'গোদাগাড়ী মডেল', 1, '1-Godagary.jpg', '<p>থানা বা ইউনিটের সংক্ষিপ্ত ইতিহাসঃ অত্র থানার ভুমি ও ইমারত পুলিশ বিভাগের নিজস্ব সম্পত্তি। গেজেট নোটিফিকেশন নং-১৬৯৫ তারিখ-১২-০৩-১৮৭৯ মোতাবেক অত্র থানার ভুমি অধিগ্রহণ করা হয়। সরকারী রেকর্ড অনুযায়ী -০৫ নং এস এ খতিয়ানের শ্রীমন্তপুর মৌজার ২১৯ নং দাগের .৬৮ একর, ২২০ নং দাগের .০৫ একর ও ২২১ নং দাগের .০৯ একর সর্বমোট .৮২ একর&nbsp; জমি পুলিশ বিভাগের নামে রেকর্ড করা হয়েছে। থানার পূর্ব পার্শ্বস্থ ইউনিয়ন স্বাস্থ্য কমপ্লেক্সের .৩৭ একর জমি পুলিশ বিভাগের নামে হস্তান্তরের জন্য নকশা সহ প্রস্তাব পেশ করা হয়েছে । থানার নতুন ভবন, রান্নাঘর ও খাবার ঘর ১৯৮৮-১৯৯২ সালে নির্মিত হয়েছে। থানা প্রাঙ্গনে কোন অফিসার ইনচার্র্জ সহ এসআই বা এএসআইদের কোন কোয়ার্টার নাই। অফিসার ইনচার্জ সাহেব অত্যন্ত জরাজীর্ণ অবস্থায় ০১টি পরিত্যাক্ত ভবনে বসবাস করেন। অন্যান্য অফিসারদের থাকার কোন ব্যবস্থা না থাকায় অধিকাংশ এসআই এবং এএসআই থানা কম্পাউন্ডের বাইরে ভাড়া বাসায় বসবাস করেন। বাসভবন নির্মানের ব্যাপারে ইতিপুর্বে সুনির্দিষ্ট প্রস্তাব প্রেরণ করা হয়েছে।থানাটি মডেল থানা হিসেবে ঘোষিত হওয়ায় থানা বিল্ডিং সংস্কারের কাজ সমাপ্ত হয়েছে বলে প্রতীয়মান হয়। বর্তমান থানা ভবনটি একেবারে নদীর তীরে অবস্থিত বলে যে কোন বর্ষা ঋতুতে থানা স্থাপনাটি নদীগর্ভে বিলীন হয়ে যেতে পারে। এই থানা ভবনটি বর্তমান স্থান হতে উত্তর দিকে চাঁপাইনবাবগঞ্জ টু রাজশাহী মহাসড়কের নিকটবর্তী কোন স্থানে স্থানান্তর করা প্রয়োজন ।</p><p>জুরিসডিকশন ম্যাপ ও এলাকার নামঃ গোদাগাড়ী মডেল থানা এলাকা ০২টি পৌরসভা ও ০৯ টি ইউনিয়ন নিয়ে গঠিত। (১। গোদাগাড়ী পৌরসভা, ২। কাঁকনহাট পৌরসভা, ১নং গোদাগাড়ী ইউনিয়ন, ২নং মোহনপুর ইউনিয়ন, ৩নং পাকড়ী ইউনিয়ন, ৪নং রিশিকুল ইউনিয়ন, ৫নং গোগ্রাম ইউনিয়ন ৬নং মাটিকাটা ইউনিয়ন ৭নং দেওয়াড়া ইউনিয়ন, ৮নং বাসুদেবপুর ইউনিয়ন, ৯নং চর আষাড়িয়াদহ ইউনিয়ন।&nbsp;</p><p>ফাঁড়ি বা বিট এর তথ্য:&nbsp;&nbsp; (১) কাঁকনহাট পুলিশ তদন্ত কেন্দ্র (২) প্রেমতলী পুলিশ তদন্ত কেন্দ্র।</p><p>জনবলের তালিকাঃ থানায় অনুমোদিত অফিসার ও ফোর্সের সংখ্যা ০২ জন পরিদর্শক, ১০ জন এসআই, ০৮ জন এএসআই ও ৩৪ জন কনষ্টেবল, ০১ বাবুর্চি, ০১ জন পরিচ্ছন্ন কর্মী। বর্তমানে কর্মরত আছে ০২ জন পরিদর্শক, ০৪ জন এসআই, ০৮ জন এএসআই পুরুষ, ০১ জন নারী এএসআই, ৩৪ জন কনষ্টেবল, ০২ জন ড্রাইভার কনষ্টেবল ও কম্পিউটার অপারেটর ০২ জন কনষ্টেবল, বেতার কনষ্টেবল ০১ জন ও ০৪ জন নারী কনষ্টেবল এবং ০১ জন পরিচ্ছন্ন কর্মী কর্মরত আছে।</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3631.548328051012!2d88.31632781440176!3d24.466451184241205!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fbc8874f6e8b33%3A0x9f49e2cafb451044!2sGodagari+Police+Station!5e0!3m2!1sen!2sbd!4v1541914616588\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2018-11-11 17:37:24', '2019-08-05 02:27:11', NULL),
(8, 'মোহনপুর', 1, 'mohonpur-thana.png', '<p>থানা বা ইউনিটের সংক্ষিপ্ত ইতিহাসঃ মোহনপুর থানর মূল ভবন ১৫,১৯৫ টাকা ব্যয়ে ১৯২৬-১৯২৬ খ্রিঃ নির্মিত হয়েছে। গেজেট নোটিফিকেশন নাম্বার ৩৭৪৬ তারিখ-১৫/০৫/১৯৮৭ মোতাবেক মোট ১.৩৩ একর জমি অধিগ্রহন করা হয়েছে। পুরাতন ভবন নষ্ট হয়ে যাওয়ায় ২০০৮ সালে ৯০,০৭,৪২৭ টাকা ব্যয়ে নতুন ভবন ও সীমানা প্রাচীরের কাজ সম্পন্ন হয়েছে। থানা কম্পাউন্ডে অফিসার ইনচার্জ ও ০২ জন এএসআই এর জন্য ০২ টি সরকারী বাসা রয়েছে।</p><p>থানা ইউনিটের লোকেশন/ জিপিএস ইনফরমেশনঃ রাজশাহী টু নওগাঁগামী মহাসড়কের পশ্চিম পার্শ্বে বাকশিমইল&nbsp; গ্রামে মোহনপুর থানা অবস্থিত। থানার পশ্চিম/দক্ষিণ পার্শ্বে বড়ইকুড়ি গ্রাম, উত্তরে মোহনপুর উপজেলা পরিষদ অবস্থিত।</p><p><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3629.2141912420425!2d88.64450311440372!3d24.547259284202635!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fb8d69370b60a5%3A0x77930baa910f0f05!2sMohanpur+Model+Thana!5e0!3m2!1sen!2sbd!4v1541914682397\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2018-11-11 17:38:33', '2019-07-29 19:06:24', NULL),
(9, 'বাগমারা', 1, 'bagmara-thana.png', '<p>বাগমারা থানা স্থাপনের সালঃ ঘোষনা ১৮৬৯ খ্রি. , ভবন নির্মান ১৯৮৪ খ্রি.।<br></p><p>ইতিহাসঃ জেএলনং- ১৬৯ এর মধ্যে ২ নং খতিয়ানে পূর্ব পাকিস্থান প্রদেশের পক্ষে পুলিশ বিভাগ, রাজশাহী নামে সাবেক ৪৪০৫ নং দাগে থানায় জমির পরিমাণ ২.৩০ একর লিপিবন্ধ আছে এবং ৪৪০৬ নং দাগে জমির পরিমান .২৫ একর রেকর্ডভূক্ত আছে যাহাতে পোষ্ট অফিস রহিয়াছে। পরবর্তীতে স্বাধীন বাংলাদেশে আর এস জরিপকালে সাবেক ৪৪০৫ দাগটির ২.৩০ একর জমি ৩ দাগে বিভক্ত করিয়া ৩টি হাল দাগের সৃষ্টি হইয়াছে। হালদাগ নং-৫০৫০ শ্রেনী ডাকবাংলো এর জমির পরিমাণ ০.৩৬ একর। হালদাগ নং-৫০৫১, শ্রেনী খাল এর জমির পরিমাণ ১.৫৪ একর এবং হালদাগ নং-৫০৫২, শ্রেনী ভিটা এর জমির পরিমান ০.৪০ একর।</p><p>ফাঁড়ি বা বিট এর তথ্যঃ অত্র থানা এলাকায় কোনো ফাঁড়ি বা বিট নেই। তিনটি তদন্ত কেন্দ্র ও একটি পুলিশ ক্যাম্প আছে। হাটগাঙ্গোপাড়া পুলিশ তদন্ত কেন্দ্র, যোগীপাড়া পুলিশ তদন্ত কেন্দ্র,&nbsp; তাহেরপুর পুলিশ তদন্ত কেন্দ্র এবং ঝিকরা পুলিশ ক্যাম্প।<br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d232176.21695444698!2d88.67769300096789!3d24.597705683682193!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x34802715878a4f56!2sBagmara+Police+Station!5e0!3m2!1sen!2sbd!4v1541914744129\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2018-11-11 17:39:29', '2019-07-29 19:09:23', NULL),
(10, 'চারঘাট মডেল', 1, 'charghat-model-thana.png', '<p>থানা ইউনিটের সংক্ষিপ্ত ইতিহাসঃ চারঘাট মডেল থানা ১৮৬৯ সালে স্থাপিত হয়। চারঘাট মডেল থানার মোট জমির পরিমান ১.৮৫ একর (.১৪১ বর্গ কিঃ মিঃ), যাহা সরকারী নোটিফিকেশন নং-১৬৯৫, তারিখ-১২-০৩-১৮৬৯ খ্রিঃ মূলে অধিগ্রহন করা হয়। চারঘাট মডেল থানায় মোট ০৬টি ইউনিয়ন, ০১টি&nbsp; পৌরসভা আছে। মোট জনসংখ্যা ২,০৬,৭৮৮ জন তন্মধে পুরুষ ১,০৪,১৩৮ জন ও মহিলা ১,০২,৬৫০ জন। থানা কমপাউন্ডের মধ্যে দুইতলা বিশিষ্ট থানা ভবন আছে। একটি অফিসার ইনচার্জ এর কোয়াটার, একটি তিনতালা বিশিষ্ট এসআই কোয়াটার, একটি দুইতলা বিশিষ্ট এএসআই কোয়াটার,&nbsp; একটি খাবার মেস, একটি গ্যারেজ ও একটি মসজিদ আছে। থানার কনস্টেবলদের জন্য&nbsp; কোয়াটার না থাকায় তাহারা বেসরকারী বাসা ভাড়া করিয়া বসবাস করেন। থানায় মহিলা এএসআই ও মহিলা কনস্টেবল কর্মরত আছে। কিন্তু তাদের কোন আবাসন নাই। থানার পশ্চিম পার্শ্বে ওয়াল ঘেষিয়া পিআরপি কর্তৃক নতুন একটি দ্বিতল ভবন বিশিষ্ট সার্ভিস ডেলিভেরি সেন্টার নির্মিত হয়েছে। </p><p> থানা ইউনিটের লোকেশন/জিপিএস ইনফমেশনঃ রাজশাহী জেলার চারঘাট থানাধীন চারঘাট চৌরাস্তার মোড় হইতে আধা কিঃ মিঃ পশ্চিমে এম এ হাদি ডিগ্রি কলেজের পার্শ্বে চারঘাট মডেল থানা অবস্থিত।  <br></p><p> জুরিডিকশন ম্যাপ ও এলাকার নামঃ সংযুক্ত, চারঘাট মডেল থানা এলাকা ০১টি পৌরসভা ও ০৬টি ইউনিয়ন নিয়ে গঠিত।&nbsp; একটি চারঘাট পৌরসভা, ০১নং ইউসুফপুর ইউনিয়ন, ০২নং শলুয়া ইউনিয়ন, ০৩নং সারদা ইউনিয়ন, ০৪নং নিমপাড়া ইউনিয়ন, ০৫নং চারঘাট ইউনিয়ন, ০৬নং ভায়ালক্ষীপুর ইউনিয়ন।</p><p>ফাড়িঁ বা বিট এর তথ্যঃ চারঘাট থানা এলাকা কোন ফাড়িঁ বা বিট নাই। <br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29094.302291913!2d88.73189184445616!3d24.284141697034258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xca6bcacf514b41ec!2sCharghat+Police+Station!5e0!3m2!1sen!2sbd!4v1541914801465\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2018-11-11 17:40:20', '2019-07-29 19:11:47', NULL),
(15, 'পুঠিয়া', 1, 'puthia-thana.jpg', '<p>থানা বা ইউনিটের সংক্ষিপ্ত ইতিহাস: পুঠিয়া থানাটি ১৮৬১ সালে স্থাপিত। থানার ভূমি ও ইমারত পুলিশ বিভাগের নিজস্ব সম্পত্তি। ১৮৬৯ সালে থানা ভবন কাঁঠালবাড়ীয়া মৌজায় স্থাপিত হয়। উক্ত মৌজার ৭৩৭ নং দাগে ৩৪ শতাংশ, ৭৩৮ নং দাগে ৫৬ শতাংশ, ৬৮২ নং দাগে ৩৪ শতাংশ, ৬৮৪ নং দাগে ৫১ শতাংশ মোট ১ একর ৭৫ শতাংশ জমির উপর থানা ভবন অবস্থিত।</p><p>থানা ইউনিটের লোকেসন: কাজিপাড়া, পুঠিয়া, রাজশাহী।</p><p>জুরিসডিকশন ম্যাপ ও এলাকার নাম: পশ্চিমে পাকা রাস্তার এবং পোস্ট অফিস, পূর্বে পুকুর,&nbsp; উত্তরে পুকুর, দক্ষিনে বসত বাড়ী। থানার চার পার্শ্বে পাকা বাউন্ডারী ওয়াল। কাজিপাড়া, পুঠিয়া, রাজশাহী।</p><p>ফাঁড়ি বা বিট এর তথ্য: পুঠিয়া থানায় ০৫ নং শিলমাড়িয়া ইউপি,সাধনপুর গ্রামে একটি অস্থায়ী পুলিশ ক্যাম্প আছে।<br></p>', NULL, '2018-11-11 17:53:43', '2019-07-29 19:14:48', NULL),
(16, 'দুর্গাপুর', 1, 'durgapur-thana.jpg', '<p>থানা বা ইউনিটের সংক্ষিপ্ত ইতিহাস: দূর্গাপুর থানাটি ১৯৮৩ সালে স্থাপিত। থানার ভূমি ও ইমারত পুলিশ বিভাগের নিজস্ব সম্পত্তি। ১৯৮৩ সালে থানা ভবন দূর্গাপুর কালিদহ মৌজায় স্থাপিত হয়। উক্ত ৭৪ নং মৌজার ৭২৫, ৭২৬ নং দাগে .৮৮ একর জমির উপর থানা ভবন অবস্থিত।</p><p>থানা ইউনিটের লোকেসন/জিপিএস ইনফরমেশন: কালিদহ,রাজশাহী।</p><p>জুরিসডিকশন ম্যাম ও এলাকার নাম : পশ্চিমে মুক্তিযোদ্ধা কমপ্লেক্স, পূবে ইউসুফ এর ধানের মিল ও চাতাল, উত্তরে আয়নালের বাড়ী, দক্ষিনে হোজা নদী। থানার চার পার্শ্বে পাকা বাউন্ডারী ওয়াল ও দক্ষিন-পশ্চিম কোনে সামান্য ফাঁকা আছে।</p><p>ফাঁড়ি বা বিট এর তথ্য: নাই।</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d116227.36887385152!2d88.65186309196561!3d24.4471324991533!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x84284304b2a1f2d8!2z4Kal4Ka-4Kao4Ka-!5e0!3m2!1sbn!2sbd!4v1564388500444!5m2!1sbn!2sbd\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2018-11-11 17:54:15', '2019-07-29 20:06:08', NULL),
(17, 'বাঘা', 1, 'bagha-thana.jpg', '<p>থানা ও ইউনিটের সংক্ষিপ্ত ইতিহাসঃ বাঘা থানাটি ১৯৮৩ সালে স্থাপিত। থানার ভূমি ও ইমারত পুলিশ বিভাগের নিজ্বস সম্পত্তি। ১৯৮৩ সালে থানা ভবন মিলিক বাঘা মৌজায় স্থাপিত হয়। উক্ত মৌজার ৩৩৪ নং দাগে, .২৬৫০ একর, ৩৩৩ নং দাগে .৩০৫০ একর, ৩২০ নং দাগে .৪৫০০ একর, ৩১৭ নং দাগে .৫০০০ একর, ৩৩৫ নং দাগে .৩৭০০ একর, ৩১৯ নং দাগে .৩২০০ একর, ৩১৮ নং দাগে .৮০০০ একর, মোট ৩.০১ একর জমির উপর থানা ভবন অবস্থিত।</p><p>থানা ইউনিটের লোকেশন/জিপিএস ইনফরমেশনঃ মিলিক বাঘা, বাঘা রাজশাহী।</p><p>জুরিসডিকশন ম্যাপ ও এলাকার নামঃ পশ্চিমে বাঘা উপজেলা কোয়াটার, পূর্বে মোজাহার হোসেন মহিলা ডিগ্রী কলেজ, উত্তরে উৎসব পার্ক, দক্ষিনে বাঘা সাব-রেজিষ্ট্রী অফিস।থানার চার পাশে পাকা বাউন্ডারী ওয়াল। মিলি বাঘা, বাঘা, রাজশাহী।</p><p>ফাঁড়ি বা বিটের তথ্যঃ নাই।<br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d232878.26242670562!2d88.68426656326457!3d24.21648435230835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc010567853293%3A0xdd697a1e737b0b04!2sBagha+Police+Station!5e0!3m2!1sen!2sbd!4v1541915690560\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2018-11-11 17:54:28', '2019-07-29 20:09:24', NULL),
(14, 'তানোর', 1, 'tanore-thana.jpg', '<p>থানা বা ইউনিটের সংক্ষিপ্ত ইতিহাস : ১৮৬৯ সালে ফেব্রুয়ারী মাসে তানোর থানা গঠিত হয়। দুইতলা বিশিষ্ট একটি মূল থানা ভবন আছে, একটি অফিসার ইনচার্জ সাহেবের কোয়াটার, একটি এসআই কোয়াটার, একটি দুইতলা বিশিষ্ট এএসআই কোযাটার, একটি খাবার মেস, একটি গ্যারেজ আছে, একটি মসজিদ আছে। &nbsp;</p><p>জুরিসডিকশন ম্যাপ ও এলাকার নাম : সংযুক্ত তানোর থানা এলাকা ০২টি পৌরসভা ও ০৭টি ইউনিয়ন নিয়ে গঠিত। (১। তানোর পৌরসভা, ২। মুন্ডুমালা পৌরসভা, ১নং কলমা ইউনিয়ন, ২নং বাধাইড় ইউনিয়ন, ৩নং পাঁচন্দর ইউনিয়ন, ৪নং সরনজাই ইউনিয়ন, ৫নং তালন্দ ইউনিয়ন ৬নং কামারগাঁ ইউনিয়ন ৭নং চাঁন্দুরিয়া ইউনিয়ন।</p><p>ফাঁড়ি বা বিট এর তথ্য: মুন্ডুমালা পুলিশ তদন্ত কেন্দ্র, তানোর রাজশাহী। (পুলিশ পরিদর্শক ০১ জন, এসআই(নিঃ) ০১ জন, এএসআই(নিঃ) ০২ জন, কনস্টেবল ১৮ জন। &nbsp;</p><p>জনবলের তালিকা: থানায় অনুমোদিত অফিসার ও ফোর্সের সংখ্যা ০২ জন পরিদর্শক, ১০ জন এসআই, ০৮ জন এএসআই ও ৩৮ জন কনষ্টেবল, ০১ বাবুর্চি, ০১ জন পরিচ্ছন্ন কর্মী। বর্তমানে কর্মরত আছে ০২ জন পরিদর্শক, ০৭ জন এসআই, ০৮ জন এএসআই পুরুষ, ০১ জন নারী এএসআই, ৩৪ জন কনষ্টেবল, ০২ জন ড্রাইভার কনষ্টেবল ও কম্পিউটার অপারেটর ০২ জন কনষ্টেবল, বেতার কনষ্টেবল ০১ জন ও ০৫ জন নারী কনষ্টেবল এবং ০১ জন পরিচ্ছন্ন কর্মী কর্মরত আছে।<br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d232192.4133865875!2d88.43685381640626!3d24.5889733!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fb93c0098eea71%3A0x27992a4293ae75c6!2sTanore+Police+Station!5e0!3m2!1sen!2sbd!4v1541915493202\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2018-11-11 17:52:31', '2019-07-29 20:11:24', NULL),
(18, 'পবা', 1, NULL, NULL, NULL, '2019-03-01 16:21:32', '2019-03-01 16:21:32', '2019-03-10 22:58:06'),
(19, 'ভোলাহাট', 2, '5-Bholahat-thana-pic-1.jpg', '<p><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3617.3963930292234!2d88.19405521432198!3d24.95262474770425!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fb01b00aba2ac7%3A0xdd0e725b442bc517!2sBholahat+Police+Station!5e0!3m2!1sen!2sbd!4v1551457381543\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 16:23:44', '2019-07-29 20:17:46', NULL),
(20, 'গোমস্তাপুর', 2, 'Gomostapur-ps.jpg', '<p>চাঁপাইনবাবগঞ্জ জেলার গোমস্তাপুর থানা &nbsp;১৯২৭ খ্রি.সৃজন হয়। থানার আওতাধীন এলাকার মোট আয়তন &nbsp;৩১৮.১৩ বর্গ কিলোমিটার এবং জনসংখ্যা &nbsp;২,৭৫,৮২৩ জন। &nbsp;জেলা সদর হতে থানা সদরের দূরত্ব ২৫ কিলোমিটার। বর্ণিত থানা এলাকায় &nbsp;১ টি পৌরসভা ও ৮টি ইউনিয়ন আছে।&nbsp;<br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d231695.5445862101!2d88.2174584039622!3d24.855552832299253!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xddc278a1a3056a17!2sGomastapur+Police+Station!5e0!3m2!1sen!2sbd!4v1551457457772\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 16:25:14', '2019-08-20 19:59:00', NULL),
(21, 'নাচোল', 2, '4-Nachol ps.jpeg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3623.881498363239!2d88.42114451431726!3d24.73094825652822!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fba31575dc8e65%3A0xf29d9cf04662012c!2sNachole+Police+Station!5e0!3m2!1sen!2sbd!4v1551457540595\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 16:26:26', '2019-07-24 17:11:12', NULL),
(22, 'চাঁপাই নবাবগঞ্জ সদর', 2, '1-Sodor Model ps.jpg', '<p>চাঁপাইনবাবগঞ্জ সদর মডেল থানা ১৮৬৭ খ্রি. সৃজন হয় এবং ২০১০খ্রি. মডেল থানা ঘোষণা হয়। থানার আওতাধীন এলাকার মোট আয়তন ৪৫১.৭৮ বর্গ কিলোমিটার এবং জন মোট জনসংখ্যা &nbsp;৫,৩০,৫৯২ জন। জেলা সদর হতে থানার দূরত্ব ০২ কিলোমিটার প্রায়। &nbsp;এই থানায় ১ টি পৌরসভা ও ১৪ ইউনিয়ন আছে।&nbsp;</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m17!1m11!1m3!1d3!2d88.2687805857592!3d24.599503080546352!2m2!1f0!2f90!3m2!1i1024!2i768!4f75!3m3!1m2!1s0x39fbb6c8ee9e1dd7%3A0x74cd019572e71a13!2sChapai+Nawabganj+Police+Station!5e0!3m2!1sen!2sbd!4v1551457661471\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 16:28:24', '2019-08-20 19:50:19', NULL),
(23, 'শিবগঞ্জ', 2, 'shibgonj-ps.jpg', '<p>চাঁপাইনবাবগঞ্জ জেলার শিবগঞ্জ থানা ১৯০৭ খ্রি. সৃজন হয়। থানার আওতাধীন এলাকার মোট আয়তন ৫২৫.৪২ বর্গ কিলোমিটার এবং মোট জন সংখ্যা ৫,৯১,১৭৮ জন। জেলা সদর হতে থানা সদরের দূরত্ব ১৯ কিলোমিটার। অত্র থানা এলাকায় ১ টি পৌরসভা ও ১৪ ইউনিয়ন আছে।&nbsp;<br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3625.27844571506!2d88.15347071431627!3d24.68295315842932!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fa4d46fa031dbf%3A0x9cdff248cd17998a!2sShibganj+Police+Station!5e0!3m2!1sen!2sbd!4v1551457729996\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 16:29:15', '2019-08-20 19:53:35', NULL),
(24, 'নাটোর সদর', 3, 'about-natore-thana.jpg', 'Natore Sadar (Bengali: নাটোর সদর) is an Upazila of Natore District in the Division of Rajshahi, Bangladesh. Natore Sadar is located at 24.4139°N 88.9300°E . It has 67852 households and total area 401.29 km².As of the 1991 Bangladesh census, Natore Sadar has a population of 369136. Males constitute 51.65% of the population, and females 48.35%. This Upazila\'s eighteen up population is 191401. Natore Sadar has an average literacy rate of 31.2% (7+ years), and the national average of 32.4% literate. Natore Sadar has 15 Unions/Wards, 275 Mauzas/Mahallas, and 310 villages.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3633.1273459992003!2d88.99122791431051!3d24.41164306911201!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc116f235ded09%3A0x4ee330e6bfb9491b!2sNatore+Sadar+Police+Station!5e0!3m2!1sen!2sbd!4v1551457948734\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 16:32:59', '2019-07-20 09:10:56', NULL),
(25, 'সিংড়া', 3, 'singra-thana-natore.png', 'Singra Upazila (natore district) area 528.46 sq km, located in between 24°24\' and 24°41\' north latitudes and in between 89°03\' and 89°20\' east longitudes. It is bounded by nandigram upazila on the north, gurudaspur upazila on the south, tarash and sherpur (bogra) upazilas on the east, natore sadar, atrai and raninagar\' (Naogaon) upazilas on the west.Population Total 320818; male 165673, female 155145; Muslim 289187, Hindu 30877, Buddhist 275, and others 478. Indigenous community such as santal belongs to this upazila.Water bodies Main rivers: Gur, atrai, Gumani, nagar.Administration Singra Thana, now an upazila, was formed in 1869. Singra Municipality was formed in 2003.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3630.386240666671!2d89.14278702203622!3d24.5067140407199!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc3f6e33c9dbdf%3A0x2f4127d05b77a760!2sSingra+Police+Station!5e0!3m2!1sen!2sbd!4v1551458038541\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 16:34:32', '2019-07-20 09:28:41', NULL),
(26, 'বড়াইগ্রাম', 3, 'about-boraigram.jpg', 'Baraigram Upazila (natore district) area 299.61 sq km, located in between 24°10\' and 24°21\' north latitudes and in between 88°01\' and 89°17\' east longitudes. It is bounded by gurudaspur and natore sadar upazilas on the north, atgharia and ishwardi upazilas on the south, chatmohar upazila on the east, lalpur and bagatipara upazilas on the west.Population Total 244821; male 125399, female 119422; Muslim 228205, Hindu 10296, Buddhist 6290, Christian 13 and others 17. Indigenous communities such as Pahari, Munda, Oraon, Mahato belong to this upazila.Water bodies Main rivers: baral, Nandakuja, Khalsadanga and Mara Baral; Majgaon beel and Pangiar dighi are notable.Administration Baraigram Thana was formed in 1869 and it was turned into an upazila in 1983.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3636.029881753614!2d89.15852661430846!3d24.310592773063163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc2342d16c69ed%3A0x9ddcb20f473cc88f!2sBaraigram+Police+Station!5e0!3m2!1sen!2sbd!4v1551458120989\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 16:35:53', '2019-07-20 11:05:17', NULL),
(27, 'বাগাতিপাড়া', 3, 'about-bagatipara.jpg', 'Bagatipara Upazila (natore district) area 139.86 sq km, located in between 24°15\' and 24°22\' north latitudes and in between 89°13\' and 89°26\' east longitudes. It is bounded by natore sadar upazila on the north, lalpur upazila on the south, baraigram upazila on the east, charghat, bagha and puthia upazilas on the west.Population Total 118794; male 60786, female 58008; Muslim 112053, Hindu 6367, Buddhist 345 and others 29. Indigenous communities such as santal, Bagti, Phahari, oraon belong to this upazila.Water bodies Main river is baral.Administration Bagatipara Thana was formed in 1906 and it was turned into an upazila on 15 April 1983.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3635.972139839881!2d88.94548411430846!3d24.31260687298449!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc1ab6cca07303%3A0x2dddfcf1973e2b42!2sBagatipara+Police+Station!5e0!3m2!1sen!2sbd!4v1551458197259\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 16:37:18', '2019-07-20 10:36:24', NULL),
(28, 'লালপুর', 3, 'about-lalpur-thana.jpg', 'Lalpur is located at 24.1833°N 88.9750°E . It has 39,448 households and total area 327.92 km². 29 Km distance from Natore Sadar. It\'s Thana sadar situated bank of river of Padma.It\'s located in an area which is both the hottest and the coldest in Bangladesh. If temperature comes down to a mild 3 or 3.5 °C at winter, it comes up to 43 °C at summer.All the year round, temperature remains hottest simultaneously rainfalls are recorded lowest in this part of Bangladesh.The economy is based on agriculture. Most people are farmers. They produce agriculture crops throughout the year. Paddy, wheat, jute, and sugarcane, are common crops along with potato, pulse fisheries, dairies are the principal crops. North Bengal Sugar Mills in Gopalpur is one of the largest sugar mills in Bangladesh, and produce huge amount of sugar for sugarcane. Farmers also produce huge amounts of date juice in winter and make candy from its remains. Later it is sold to other parts of Bangladesh. Farmers also produce crops for their daily livelihoods. Local varieties of produce include fruits such as mango, jack fruit, banana, guava, black berry, and coconut. After fulfilling their own demand, farmers supply the remainder of their crop to markets all over the country. There are people who live near to Padma most of time they fish in the river and sell their catches to local fish market to earn money for their living. Many NGOs play a roll in national economic growth. These include organizations such as AVA, BRAC, Grameen Bank, SETU, DISHA, UDDIPAN, TMSS and so on.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3639.854085769369!2d88.95917951430565!3d24.176849578269533!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc1d186b467311%3A0x424c92c29ff0e0c1!2sLalpur+Police+Station%2C+Lalpur-Ishurdi+Rd!5e0!3m2!1sen!2sbd!4v1551458317477\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 16:39:21', '2019-07-20 09:19:35', NULL),
(29, 'গুরুদাসপুর', 3, 'about-gurudaspur.jpg', 'Gurudaspur Upazila (natore district) area 199.40 sq km, located in between 24°18\' and 24°27\' north latitudes and in between 88°04\' and 89°19\' east longitudes. It is bounded by singra and tarash upazilas on the north, baraigram upazila on the south, Tarash and chatmohar upazilas on the east, natore sadar upazila on the west.Population Total 194228; male 99086, female 95142; Muslim 186069, Hindu 7873, Buddhist 34 and others 252. Indigenous communities such as Kaibarta, santal, oraon, Pahan, Turi and Banshphod belong to this upazila.Water bodies Main rivers: atrai, Gur, Nandakuja.Administration Gurudaspur Thana was formed in 1917 and it was turned into an upazila in 1984.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3634.3647967525317!2d89.23148436430964!3d24.36860997079645!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc3a8e146ddb25%3A0x484d0b1a92f75ccd!2sGurudaspur+Police+Station!5e0!3m2!1sen!2sbd!4v1551458391213\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 16:40:18', '2019-07-20 10:58:54', NULL),
(30, 'নলডাঙ্গা', 3, 'about-noldanga.jpg', 'Naldanga Upazila is a subdistrict of Natore District, within Rajshahi Division in northern Bangladesh.Naldanga was previously a union of Natore Upazila in Rajshahi Division of Bangladesh but, in a Government gazette published in May 2013, Naldanga was declared as an Upazila of Bangladesh.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3630.52225767995!2d88.95499801431242!3d24.502004665566034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc12bf2f2b28ad%3A0xa613aa1ccccab72!2sNaldanga+Police+Station!5e0!3m2!1sen!2sbd!4v1551458442031\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 16:41:04', '2019-07-20 10:31:10', NULL),
(31, 'কাহালু', 4, 'Kahaloo.jpg', '<p>&nbsp;থানার সংক্ষিপ্ত ইতিহাস: ইতিহাস থেকে জানা যায় তৎকালীন দরবেশ গাজী জিয়া উদ্দিন সাহেব এর কণিষ্ঠ ভ্রাতা হযরত শাহ সুফী সৈয়দ কালু নামের এক দরবেশ এসে বর্তমান কাহালু থানার পার্শ্বে আসত্মানা স্থাপন করেন। উক্ত স্থান হইতে তিনি ইসলাম ধর্ম প্রচার করতে থাকেন। কাহালু থানার পশ্চিম পার্শ্বে এই দরবেশের মাজার রয়েছে, যাহা কালু বাবার মাজার নামে পরিচিত। জনশ্রম্নতি থেকে জানা যায় এ সূধী পীর কালু বাবার নাম অনুসারে কাহালু থানা নামকরণ হয়েছে। ১৯২৮ সালে প্রশাসনিক থানা হিসেবে প্রতিষ্ঠা লাভ করে। অত্র থানাটি বগুড়া জেলা হইতে ১২ কিঃ মিঃ পশ্চিম দিকে অবস্থিত। কাহালু উপজেলার অমত্মর্গত জেএল নং-৮২, মৌজা- উলট্ট পশ্চিমপাড়া, খতিয়ান নং-০৩, দাগ নং- ১১৪৬, সর্বমোট- &nbsp;১.৫০ একর। গণপূর্ত বিভাগ কর্তৃক উক্ত জমির উপর ০২ তলা বিশিষ্ট থানা ভবন নির্মিত হয়েছে। প্রধান ফটক সহ পুরো থানা সীমানা প্রাচীর দিয়ে বেষ্ঠিত। ০২ তলা বিশিষ্ট থানা ভবনের নিচ তলায় অফিসার ইনচার্জ কক্ষ, ইন্সপেক্টর (তদমত্ম) কক্ষ, ডিউটি অফিসার কক্ষ, বেতার কক্ষ ও কম্পিউটার কক্ষ, জুনিয়র সেরেসত্মা সহ রেকর্ড শাখা, হাজতখানা, অস্ত্রাগার, অফিসারদের কক্ষ রয়েছে। থানা ভবনের সামনে নারী ও শিশু হেল্প ডেস্ক কক্ষ, গোলঘর রয়েছে। &nbsp;২য় তলায় পুরম্নষ ব্যারাক। থানা চত্ত্বরে দক্ষিণ পার্শ্বে দুইটি পুরাতন এসআই কোয়ার্টার ও পুকুর রয়েছে। থানার সীমানার মধ্যে থানার অফিসার ইনচার্জ সহ অন্যান্য অফিসারদের কোন কোয়ার্টার নাই।</p><p>থানা ইউনিটের লোকেশন/ জিপিএস ইনফরমেশন: কাহালু উপজেল, বগুড়ার জেএল নং-৮২, মৌজা- উলট্ট পশ্চিমপাড়া, খতিয়ান নং-০৩, দাগ নং- ১১৪৬, সর্বমোট- &nbsp;১.৫০ একর।</p><p>ফাঁড়ি বা বিট এর তথ্য: নাই</p><p>মোবাইল, টেলিফোন নম্বর, বা ই-মেইল নম্বর:</p><p>ক) টেলিফোন নম্বর- ০৫০২৬৫৬০১৮ (ওসি)<br>খ) মোবাইর নম্বর- ০১৭১৩-৩৭৪০৬৮ (ওসি)<br>গ) ই-মেইল- ockahalubogra@police.gov.bd</p><p><br>জনবলের তালিকা: অত্র থানায় মঞ্জুরীকৃত অফিসার ও ফোর্সের সংখ্যাঃ- পরিদর্শক ০২ জন &nbsp;এসআই ১০ জন, এএসআই পুরম্নষ ও মহিলা মোট ০৮ জন ও কনস্টেবল পুরম্নষ ৩৮ জন।<br>বর্তমানে অত্র থানায় পরিদর্শক (নিঃ) ০২ জন, এসআই (নিঃ) ০৮ জন, (০৪ জন শিক্ষানবিশ বিভাগীয় এসআইসহ) এএসআই (নিঃ) -০৮ জন, কনস্টেবল পুরম্নষ ১৯ জন ও নারী কনস্টেবল ০৬ জন কর্মরত আছেন।<br><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3620.9341647788606!2d89.26632031431946!3d24.831924952517713!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc571584c54bd5%3A0xed01137772157ade!2sKahaloo+Police+Station%2CBogra!5e0!3m2!1sen!2sbd!4v1551461689861\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 17:35:34', '2019-07-31 16:33:06', NULL),
(32, 'বগুড়া সদর', 4, 'Sador.jpg', '<p>থানার সংক্ষিপ্ত ইতিহাস: অত্র থানাটি ১৮৯৭ সালে প্রতিষ্ঠিত হয়। থানা ও জেলা বগুড়া, মৌজাঃ সূত্রাপুর, জেএলনং-৮২, এস এ খতিয়ান ০৫, দাগ নং-১৫২১ পরিমান-০.৫৫৫০ একর, দাগ নং- ১৫১৯, পরিমান ০.৩৪৭৫ একর । মালিক বাংলাদেশ সরকারের পক্ষে বাংলাদেশ পুলিশ জমির মালিকানা &nbsp;আইন ও দখল-১৮৯৭ সালে মোট জমি ০.৫৫৫০+০.৩৪৭৯ পূর্বতন মালিক (র) সৈয়দ আঃ সোবাহান চৌধুরী, (রর) &nbsp;সৈয়দ আলতাফুন নেছা চৌধুরী, (ররর) সেলিম সুলতানা নেছা, (রা) সৈয়দ শাহ নাইমুদ্দীন আবুল হোসেন বগুড়া।&nbsp;</p><p>চৌহর্দ্দী &nbsp; &nbsp; &nbsp; &nbsp; উত্তরে- চকযাদু পাবলিক রোড। দক্ষিনেু বিআরটিসি মার্কেট, আকবরিয়া হোটেল, পূর্বে- শেরপুর গামী কাজী নজরুল ইসলাম রোড, পশ্চিমে- চাঁদনী হোটেল প্রাঃ লিঃ তারপর বিআরটিসি রোড ।&nbsp;</p><p>থানা ইউনিটের লোকেশন/ জিপিএস ইনফরমেশন: হাল খতিয়ানে জমির মালিক- কোতয়ালী থানা, বগুড়া, ৪৮৩০ বর্গফুট । ৮৮.৫০ ডিগ্রী পূর্ব থেকে ৮৮.৯৫ ডিগ্রী পূর্ব দ্রাঘিমাংশে এবং ২৪.৩২ ডিগ্রী উত্তর থেকে ২৫.০৭ ডিগ্রী উত্তর অক্ষাংশে বগুড়া সদর উপজেলা অবস্থিত। বগুড়া জেলার উত্তরে গাইবান্ধা ও জয়পুরহাট জেলা, দক্ষিণে সিরাজগঞ্জ ও নাটোর জেলা, পূর্বে জামালপুর জেলা ও যমুনা নদী এবং পশ্চিমে নওগাঁ জেলা অবস্থিত ।</p><p>জুডিসডিকশন ম্যাম ও এলাকার নাম: বগুড়া জেলা ১৮২১ সালে জেলা হিসাবে প্রতিষ্ঠিত হয়। জেলায় উপজেলার সংখ্যা মোট ১২ টি। পৌর সভার সংখ্যা ১২ টি, ইউনিয়ন রয়েছে মোট ১০৮ [২] টি। এছাড়া জেলায় ২,৬৯৫ টি গ্রাম, ১,৭৫৯ টি মৌজা রয়েছে। মাপ অত্র সাথ সংযুক্ত।&nbsp;<br>ফাঁড়ী বা বিট তথ্য: মোট ফাঁড়ী ৭ টি, সদর ফাড়ীর বিট ৩ টি (০১ নং বিট- জলেশ্বরীতলা, কোর্ট এরিয়া, সূত্রাপুর, পিটিআই মোড়), (০২নং বিট- রেলষ্টেশন, সাতমাথা, সদর থানা, নিউ মার্কেট, নবাববাড়ী) (০৩ নং বিট- বাদুরতলা, চক সূত্রাপুর, রাজা বাজার, বড়গোলা, দক্ষিন কাটনার পাড়া,)। &nbsp;ফুলবাড়ী পুলিশ ফাড়ীর বিট ০৪ টি (০১ নং বিট- মাটিডালী, নওদাপাড়া, মাটিডালী তিনমাথা, এস ও এস এস অফিস, মগলিশপুর, টি এম এস এস অফিস, মাটিডালী বাজার, শাখারিয়া, নামাবালা, রাজাপুর, মানিকচক, কালিবালা), ( ০২ নং বিট- মালগ্রাম, ফুলবাড়ী বিসিক, পানি উন্নয়ন বোর্ড, আটাপাড়া, জয়পুর পাড়া, রাজাপুর), (০৩ নং বিট- ফুলবাড়ী, মগলিশপুর, বোর্ডের বাজার, মহিলা কলেজ বাজার, বৃন্দাবনপাড়া), (০৪ নং বিট- কালিতলা, দত্তবাড়ী, কালিতলা, উত্তর কাটনারপাড়া, করনেশন হাই স্কুল)। ষ্টেডিয়াম পুলিশ ফাঁড়ীর বিট ৪ টি ( ০১ নং বিট- সুজাবাগ, ষ্টেডিয়াম,কৃষি ফার্ম, সবুজ বাগ, পুরান বগুড়া), (০২ নং বিট- সেউজগাড়ী, সেউজগাড়ী পালপাড়া, মালগ্রাম মধ্যপাড়া, পানির ট্যাংকী সূত্রাপুর কসাইপাড়া) ( ০৩ নং বিট-মালগ্রাম, মালগ্রাম কসাইপাড়া, মালগ্রাম উঃ/দঃ পাড়া, সূত্রাপুর ঈদগাহ লেন গোহাইল বোর্ডের পূর্ব পার্শ্বের এলাকা) ( ০৪ নং বিট- খান্দার, মিশন এলাকা, খান্দার, বিলপাড়া, খান্দার বাজার) । উপশর পুলিশ ফাঁড়ীর বিট ০৫ টি &nbsp;(০১ নং বিট- উপশহর পূর্ব/পঃ, স্নিগ্ধা প্রকল্প, নিমিন্দারা দক্ষিনপাড়া, নিশিন্দারা পূর্ব পাড়া) ( ০২ নং বিট-নিশিন্দারা, নিশিন্দারা মন্ডলপাড়া,আকন্দ পাড়া, মধ্যপাড়া, পশ্চিমপাড়া, নিশিন্দারা ধমক পাড়া/পাইকপাড়া) ( ০৩ নং বিট- নামাজগড়, সুলতানগঞ্জ পাড়া, ঘোনা পাড়া, গোয়াল গাড়ী, টি টি সি, পূর্ব পালশা, ম্যধ পালশা,পশ্চিম পালশা, গাজী পালশা, নাপিত পালশা) ( ০৪ নং বিট- কারবালা, মুরগী ফার্ম, এলজিইডি অফিস, চারমাথা, গোদারপাড়া, ছয়পুকুরিয়া, ছোট কুমিড়া, বড় কুমিরা) (০৫ নং বিট ধরমপুর, ঝোপগাড়ী, বারপুর, ধরমপুর, নিশিন্দারা পাইকারপাড়া, বারপুর দক্ষিনপাড়া)। &nbsp;নারুলী পুলিশ ফাঁড়ীর বিট ৪ টি &nbsp;(০১ নং বিট- নাটাইপাড়া, দক্ষিন চেলোপাড়া, নাটাইপাড়া উত্তর/দক্ষিন, কৈপাড়া, পাড় বগুড়া) (০২ নং বিট- চেলোপাড়া, বরিয়া, উত্তর চেলোপাড়া, বুজরুগবাড়ীয়া, ভাটকান্দি), (০৩ নং বিট- নারুলী, কৃষি ফার্ম, ইছাদহ, ধাওয়াপাড়া, আকাশতারা) ( ০৪ নং বিট- সাবগ্রাম,সাবগ্রাম হাট, ছাতিয়ানতলা, উদ্দিরগোলা বাজার)। &nbsp; বনানী পুলিশ ফাঁড়ীর বিট ৪ টি ( ০১ নং বিট- কাজী খানার মোড়, রহমান নগর, দিদার পাড়া, ষ্টাফ কোয়ার্টার, হাসপাতাল, এসেনসিয়াল ড্রাকস, ঠনঠনিয়া তেতুলতলা, বটতলা) (০২ নং বিট- বকশী বাজার, চানমারী ঘাট, নামা পাড়া, এম এ সরকার, মৎস্য খামার, কোয়ার্টার, মালতিনগর, এস পি (ব্রীজ), (০৩ নং বিট- লতিফপুর, পাইকার পাড়া, চকলোকমান/ চক ফরিদ, কলোনী, বাটকান্দি ব্রীজ) ( ০৪ নং বিট- কলোনী,পুলিশ লাই, ভি.টি.টি. আই, চক ফরিদ)। &nbsp;ছিলিমপুর পুলিশ ফাঁড়ীর ২ টি বিট (০১ নং বিট- শজিমেক হাসপাতাল, ছিলিমপুর, তেলিপুকুর) (০২ নং বিট- তিনমাথা, ছোট বেলাইল, ইসলামপুর হরিগাড়ী ।<br>মোবাইল, টেলিফোন নম্বর: মোবা নং- ০১৭১৩৩৭৪০৬১ টেলিফোন নং- ০৫১৬৫০৬৬,&nbsp;</p><p>জনবলের তালিকা : ইন্সপেক্টর-০৪ জন, এসআই পুরুষ-১৯ জন মহিলা-০১ &nbsp;জন, এএসআই পুরুষ ১৪ জন, মহিলা- ০১ জন, কনস্টবল- &nbsp;পুরুষ ৪৮ জন, মহিলা- ০২ জন।</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3620.3907826180402!2d89.37060051431983!3d24.850499451778298!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc54e39b8939d7%3A0xb76ed079508e79d4!2sPolice+Station%2C+Bogra!5e0!3m2!1sen!2sbd!4v1551461831219\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 17:37:40', '2019-07-29 22:44:22', NULL),
(33, 'সারিয়াকান্দি', 4, 'Sariakandy.jpg', '<p>থানার সংক্ষিপ্ত ইতিহাস: অত্র সারিয়াকান্দি থানা ৩১/১২/১৮৭২ সালে ২.৩ (দুই দশমিক তিন) একর জমির উপর স্থাপিত হয় যাহার জেএল ন-১৬৭, আর এস খতিয়ান নং-১০৩ আর এস দাগ নং-১০৮, ১১২ (পুলিশ বিভাগের নিজস্ব সম্পত্তি)প্রশাসনিক ভবন ২য় তলা, অফিসার ইনচাজ এর বাসভবন ০১ তলা, এসআই কোয়ার্টার ০২ ইউনিট (পুরাতন) এএসআই কোয়ার্টার ০২ ইউনিট (পুরাতন) কনষ্টবল কোয়ার্টার ২য় তলা (পুরাতন) চার ইউনিট। থানা ভবনের পশ্চিম পার্শ্বে একটি ছোট পুকুর রয়েছে। প্রশাসনিক ভবন ১৯৮৯ সালে, অফিসার ইনচাজ এর বাসভবন, এএসআই ও কনস্টেবল কোয়ার্টার ১৯৯০ সালে তৈরী হয়েছে। বতমানে অফিসার ইনচার্জের সরকারী কোয়ার্টার সহ অন্যান্য সরকারী কোয়ার্টার সমূহ জরাজীণ অবস্থায় আছে।</p><p>সারিয়াকান্দি থানা ইউনিটের লোকেশন/জিপিএস ইনফরমেশনঃ- LAC:1226, CID: 34355</p><p>জুরিসডিকশন ম্যাপ ও সারিয়াকান্দি উপজেলাঃ-অত্র সাথে সংযুক্ত।</p><p>টেলিফোন নাম্বার, মোবাইল নাম্বার ও ইমেইল এ্যাড্রেস।<br>টেলিফোন নাম্বারঃ-০৫০২৮৫৬২০৯<br>মোবাইল নং-০১৭১৩-৩৭৪০৬৫<br>ইমেইল নং- ocsariyakandibogra@police.gov.bd</p><p>জনবলের তালিকাঃ-<br>অত্র থানায় মঞ্জুরীকৃত অফিসার ও ফোর্সের সংখ্যা ০২ জন পুলিশ পরিদশক ০৬ জন এসআই পুরুষ, ০৪ জন এসআই মহিলা, ০৪ জন এএসআই পুরুষ ০৪ জন এএসআই মহিলা, ৩১ জন কনস্টেবল পুরুষ, ৭ জন নারী কনস্টেবল।</p><p>বর্তমানে ০১ &nbsp;জন পুলিশ পরিদর্শক, ০৬ জন এসআই পুরুষ, ০১ জন এস আই মহিলা, ০৬ জন এএসআই, &nbsp;১৭ জন কনস্টেবল, ও ০২ জন মহিলা কনস্টেবল, ০১ জন বেতার কনষ্টেবল এবং ০১ জন কম্পিউটার অপারেটর অত্র থানায় কর্মরত আছেন।<br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3619.280636689653!2d89.56722821432062!3d24.88840735026776!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fda793269de63d%3A0x9cef60c2cc96cef0!2sSariakandi+Police+Station!5e0!3m2!1sen!2sbd!4v1551461903116\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 17:38:56', '2019-07-29 23:11:28', NULL),
(34, 'শাজাহানপুর', 4, 'Sajanpur.jpg', '<p>থানার সংক্ষিপ্ত ইতিহাস: শাজাহানপুর থানা ২০/১২/২০০২ সালে প্রতিষ্ঠিত হয়। বগুড়া সদর থানা ভেঙ্গে শাজাহানপুর থানার সৃষ্টি হয়। অত্র থানাটি বগুড়া জেলা হইতে ১০ কিঃ মিঃ দক্ষিণ দিকে বগুড়া-ঢাকা মহাসড়ক সংলগ্ন শাজাহানপুর উপজেলার অমত্মর্গত জেএল নং-১৭৯, মৌজা নং-১৭৯ (সাজাপুর), খতিয়ান নং-৭৩, সিএস দাগ নং-৪০৯৫, ৪০৯৬, ৪০৯৭, ৪০৯৮, ৪১০০, ৪১০৪, ৪১০৫, ৪১০৬ এবং হাল দাগ নং-৫৫১৬ এর .১৮ একর, দাগ নং-৫৫১৭ এর .১০ একর, দাগ নং-৫৫১৮ এর .৭২ একর, সর্বমোট-১.০০ একর। উলেস্নখিত পরিমানের জমি স্বরাষ্ট্র মন্ত্রনালয়ের স্মারক নং-স্বঃ মঃ পূনঃ-৩/ভূমি-১৮/২০০৫/১০৫৩ তাং-১২/১০/২০০৫ খ্রিঃ এল.এ.কেস নং১১/ শাজাহানপুর থানা/২০০৭ মূলে অধিগ্রহণ হইয়াছে। গণপূর্ত বিভাগ কর্তৃক উক্ত জমির উপর সর্বমোট ৫৬৮.৩৯ লক্ষ টাকা ব্যয়ে ৬ তলা ভিত বিশিষ্ট ৪র্থ তলা ভবন নির্মিত হইয়াছে। বিল্ডিং এলাকায় প্রধান ফটক সহ তারকাটা বেষ্টিত সীমানা প্রাচীর আছে। ৪ তলা থানা ভবনের নিচ তলায় নারী ও শিশু নির্যাতন ডেস্ক, সার্ভিস ডেলিভারী সেন্টার, অফিসার ইনচার্জ কক্ষ, ইন্সপেক্টর (তদমত্ম) কক্ষ, কনফারেন্স রম্নম, ডাইনিং রম্নম, বেতার কক্ষ ও কম্পিউটার রুম রয়েছে। ২য় তলায় ওয়েটিং কাম ইন্সপেকশন রম্নম, ইন্সপেক্টর-২ কক্ষ, এসআই গণের অফিস কক্ষ, ডিউটি অফিসার কক্ষ, ফাস্ট এইড রম্নম, অস্ত্রাগার, পুরম্নষ ও নারী হাজত খানা, অবজারভেশন রম্নম রয়েছে। ৩য় তলায় মালখানা, রেকর্ড শাখা, ডিবি/ডিএসবি কক্ষ, এএসআই অফিস কক্ষ ও মহিলা ব্যারাক রয়েছে। ৪র্থ তলায় চিত্তবিনোদন কক্ষ, নামাজ ঘর, পুরম্নষ ব্যারাক রয়েছে। এছাড়া প্রত্যেক তলায় একটি বাথরম্নম রয়েছে। এই থানা ভবনটি গত ১৪/০৬/২০১৭ ইং তারিখ কার্যক্রম পরিচালনার জন্য উব্দোধন হয়। থানা ভবনের পাশাপাশি সু সজ্জিত ফুলের &nbsp;বাগান, ফোয়ারা, শাক সবজির বাগান, রিসিপসন ইত্যাদি মিলে শাজাহানপুর থানাটি একটি দৃষ্টিনন্দন স্থাপনা। বাথানার সীমানার মধ্যে থানার অফিসার ইনচার্জ সহ অন্যান্য অফিসারদের কোন কোয়ার্টারের ব্যবস্থা না থাকায় তাহারা ব্যক্তিগত ব্যবস্থাপনায় বাহিরে বাসা ভাড়া লইয়া অবস্থান করিতেছেন।</p><p>থানা ইউনিটের লোকেশন/ জিপিএস ইনফরমেশন: শাজাহানপুর উপজেলার অমত্মর্গত জেএল নং-১৭৯, মৌজা নং-১৭৯ (সাজাপুর), খতিয়ান নং-৭৩, সিএস দাগ নং-৪০৯৫, ৪০৯৬, ৪০৯৭, ৪০৯৮, ৪১০০, ৪১০৪, ৪১০৫, ৪১০৬ এবং হাল দাগ নং-৫৫১৬ এর .১৮ একর, দাগ নং-৫৫১৭ এর .১০ একর, দাগ নং-৫৫১৮ এর .৭২ একর, সর্বমোট-১.০০ একর।&nbsp;<br>&nbsp; &nbsp; &nbsp;শাজাহানপুর থানা এলাকার আয়তন-৫৪.৫৮৭ বর্গ কিঃ মিঃ (ক্যান্টনমেন্টসহ) লোক সংখ্যা-২,৮৯,৮০৪ জন।&nbsp;</p><p>জুডিসডিকশন ম্যাম ও এলাকার নাম&nbsp;&nbsp; &nbsp;অত্র সাথে সংযুক্ত</p><p>ফাঁড়ি বা বিট এর তথ্য: অত্র থানার অধীনে &nbsp;কৈগাড়ী পুলিশ ফাঁড়ী নামে একটি পুলিশ ফাঁড়ী আছে।&nbsp;</p><p>মোবাইল, টেলিফোন নম্বর, বা ই-মেইল নম্বর&nbsp;&nbsp; &nbsp;ওসি, শাজাহানপুর থানা-০১৭১৩-৩৭৪০৭২, &nbsp;টেলিফোন-নাই।<br>ইন্সপেক্টর (তদন্ত), শাজাহানপুর থানা-০১৭৬৯-৬৯৩৩৩৭<br>ডিউটি অফিসার, শাজাহানপুর থানা- ০১৭৭৭-৭৭৩৪৮৪<br>ইনচার্জ, কৈগাড়ী পুলিশ ফাঁড়ী, শাজাহানপুর থানা-০১৭৬৯-৬৯৩৩৫২<br>ocshajahanpurbogra@police.gov.bd</p><p>জনবলের তালিকা&nbsp;&nbsp; &nbsp;অত্র থানায় মঞ্জুরীকৃত অফিসার ও ফোর্সের সংখ্যা পরিদর্শক ০২ জন &nbsp;এসআই ১০ জন, এএসআই পুরম্নষ ও মহিলা মোট ০৮ জন ও কনস্টেবল পুরম্নষ ৩৮ জন।<br>বর্তমানে অত্র থানায় পরিদর্শক (নিঃ) ০২ জন, এসআই (নিঃ) পুরম্নষ ১৩ জন,(তিন জন &nbsp;বিভাগীয় এসআইসহ) এএসআই (নিঃ) পরম্নষ-০৮ জন, মহিলা-০১, নারী কনস্টেবল-০৮ জন ও পুরম্নষ কনস্টেবল ২৬ জন কর্মরত আছেন।&nbsp;</p><p><br><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3622.4404001717285!2d89.39088641431832!3d24.780368954567212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc5333cf60e0db%3A0xad9562541e4bc53c!2sShajahanpur+Thana!5e0!3m2!1sen!2sbd!4v1551461968315\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 17:40:43', '2019-07-29 22:51:42', NULL),
(35, 'দুপচাঁচিয়া', 4, 'Dupchacia.jpg', '<p>থানা বা ইউনিটের সংক্ষিপ্ত ইতিহাস:&nbsp;<br>ক) থানা হিসাবে স্থাপিত :- ১৮৮০ খ্রিঃ,&nbsp;<br>খ) আয়তন :- ১৬২.৪৫ বর্গ কিলোমিটার,&nbsp;<br>গ) মোট জনসংখ্যা :-১,৯৫,৬৭৮, তন্মেধ্যে পুরুষ-৯৬,৯৯৩, জন এবং মহিলা ৯৭,৬৮৫ জন।<br>ঘ) মোট ভোটার সংখ্যা :-১৪০৩১৫ জন, তন্মোধ্যে ৬৯৪৬০ জন পুরুষ ও ৭০৮৫৫ জন মহিলা<br>ঙ) ইউপি সংখ্যা :-০৬টি (জিয়ানগর, চামরুল, দুপচাঁচিয়া, গোবিন্দপুর, গুনাহার ও তালোড়া)<br>চ) পৌর সংখ্যা :-০২টি, (দুপচাঁচিয়া ও তালোড়া)<br>ছ) মৌজার সংখ্যা :-১১৫টি<br>জ) গ্রামের সংখ্যা :-২৩২টি<br>ঝ) নদীর সংখ্যা :-০১টি (নাগর নদী)<br>ঞ) শিক্ষা প্রতিষ্ঠানের সংখ্যা : সরকারী প্রাঃ বিদ্যাঃ ৮৫টি, হাইস্কুল ৩৬টি, কলেজ ১১টি, মাদ্রাসা ২৫টি,&nbsp;<br>ট) শিক্ষার হার :-৬৭%<br>ঠ) তালিকা ভূক্ত মুক্তিযোদ্ধার সংখ্যা :-১৭৯<br>ড) তালিকা ভূক্ত শহীদ মুক্তিযোদ্ধার সংখ্যা :-০৪<br>ঢ) দফাদার ০৫ জন ও গ্রাম পুলিশ ৪৯ জন<br>ণ) ব্যাংকের সংখ্যা :-১১টি<br>ত) এন.জি.ও এর সংখ্যা :-১২টি<br>থ) হিমাগার এর সংখ্যা :-০২টি<br>দ) এ্যালুমিনিয়াম ফ্যাক্টরীর সংখ্যা :- ০৩টি<br>ফাড়ী বা বিটের তথ্য: নাই<br>টেলিফোন নম্বর, মোবাইল নম্বর ও ইমেইল এ্যাড্রেস:&nbsp;<br>ক) টেলিফোন নম্বর-০৫০২৪৫১০১০<br>খ) মোবাইল নম্বর-ও.সি ০১৭১৩-৩৭৪০৬৭, ইন্সপেক্টর (তদন্ত)- ০১৭৬৯-৬৯৩৩৩২, ডিউটি অফিসার-০১৭০০-৭৭৩৫৬৬<br>গ) ইমেইল এ্যাড্রেস : &nbsp;ocdupchachiyabogra@police.gov.bd<br>জনবলের তালিকা:&nbsp;<br>ক্রমিক সংখ্যা&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;পদের নাম&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;অনুমোদিত পদের সংখ্যা&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;বর্তমান<br>&nbsp;&nbsp; &nbsp;১&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;পরিদর্শক&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০২&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০২<br>&nbsp;&nbsp; &nbsp;২&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;এস.আই&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;১০&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৭<br>&nbsp;&nbsp; &nbsp;৩&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;এ.এস.আই&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৮&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৬<br>&nbsp;&nbsp; &nbsp;৪&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;কনস্টেবল&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;৩১&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;২৮<br>&nbsp;&nbsp; &nbsp;৫&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;বাবুর্চি&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০১&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০১<br>&nbsp;&nbsp; &nbsp;৬&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;সুইপার&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০১&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০১<br>&nbsp;&nbsp; &nbsp;<br><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d57924.84870910154!2d89.18856727837105!3d24.85349740177023!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc58c6316844cd%3A0x15b6c2518a4f1834!2sDupchanchia+Thana!5e0!3m2!1sen!2sbd!4v1551462077177\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 17:44:57', '2019-07-29 22:25:42', NULL),
(36, 'আদমদীঘি', 4, '11-Adumdidhi-PS.jpg', '<p>থানা বা ইউনিটের সংক্ষিপ্ত ইতিহাস: হযরত বাবা আদম (রঃ) এর পূণ্য স্মৃতি বিজড়িত এ আদমদীঘি উপজেলা। ইতিহাস থেকে জানা যায় রাজা বল্লাল সেনের রাজত্বকালে উক্ত সুফি সাধক এর শুভ পদার্পণ ঘটে। তিনি এ অঞ্চলে দীর্ঘকাল অবস্থান করেন এবং ইসলাম প্রচারের সাথে সাথে জনকল্যাণে বৃহদাকার দীঘি খনন করেন। হযরত বাবা আদম (রঃ) এর খননকৃত দীঘির নাম অনুসারে এ অঞ্চল পরবর্তীতে ‘‘আদমদীঘি’’ নামে পরিচিতি লাভ করে। নাটোরের মহারাজার মহিয়সী পত্নী রানী ভবানীর জন্মস্থান এ আদমদীঘি উপজেলার ছাতিয়ানগ্রামে।</p><p>বগুড়া জেলা সদর থেকে পশ্চিমে ৩৫ কিলোমিটার দূরে এবং ভৌগলিক ২৪.৪৩ ও ২৪.৫২ অক্ষাংশ এবং ৮৮.৫৮ ও ৮৯.১০ দ্রাঘিমার মধ্যবর্তী স্থানে আদমদীঘি উপজেলার অবস্থান।</p><p>এ উপজেলার উত্তরে জয়পুরহাট জেলার আক্কেলপুর থানা, দক্ষিণে নওগাঁ জেলার রানীনগর থানা, পূর্বে বগুড়া জেলার দুপচাঁচিয়া, কাহালু ও নন্দীগ্রাম উপজেলা এবং পশ্চিমে নওগাঁ জেলার নওগাঁ সদর উপজেলা দ্বারা পরিবেষ্টিত।.</p><p>এ উপজেলা খাদ্যে স্বয়ংসম্পূর্ণ এবং খাদ্য উদ্বৃত্ত এলাকা। মাদুর শিল্পের জন্য এ উপজেলা প্রসিদ্ধ। এ উপজেলার নশরতপুর ইউনিয়নে শাঁওইল বাজার তাঁত শিল্পের জন্য বিখ্যাত।</p><p>ফাঁড়ি বা বিট এর তথ্য:&nbsp;</p><p>এলাকার নাম&nbsp; :বশিপুর, ঢাকা রোড, উপর পোঁওতা, নামা পোঁওতা, লকু পশ্চিম কলোনী, নতুন বাজার , পুলিশ ব্যারাক ।বিট নম্বর&nbsp;:০১</p><p>এলাকার নাম:চা-বাগান, সাহেবপাড়া, হাসপাতাল কলোনী, কলেজ রোড, মালশন, পাথর কোটা।&nbsp;বিট নম্বর:০২</p><p>এলাকার নাম: রথবাড়ী, কলসা, পূর্ব লকু কলোনী, দৈনিক বাজার, যুগিপুকুর, কালিপাড়া, টিওরপাড়া, সাতাহার।&nbsp;বিট নম্বর:০৩</p><p>&nbsp;এলাকার নাম:&nbsp;ইয়ার্ড কলোনী, হলুদঘর, রেলওয়ে কলোনী, ড্রাইভার কলোনী, তারাপুর।&nbsp;বিট নম্বর:০৪</p><p>জনবলের তালিকা: পুলিশ পুরিদর্শক&nbsp;০২,এসআই (নিঃ)&nbsp;১০,এএসআই (নিঃ)&nbsp;০৬,কনস্টেবল&nbsp;৪১,ঝাড়ুদার&nbsp;০১।&nbsp; &nbsp; &nbsp;</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3621.3020746393913!2d89.03608921431916!3d24.81934125301831!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc6137f31a8925%3A0x201d353d85422712!2sAdamdighi+Police+Station!5e0!3m2!1sen!2sbd!4v1551462354282\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 17:46:21', '2019-08-19 17:15:57', NULL),
(37, 'নন্দীগ্রাম', 4, 'Nondigram.jpg', '<p>থানা বা ইউনিটের সংক্ষিপ্ত ইতিহাস: কেউ কেউ বলছেন জমিদার নন্দি বাবুর নাম থেকেই নন্দীগ্রাম নামকরণ হয়েছে। আবার অনেকে এ কথাকে উড়িয়ে দিয়ে বলেছেন নাটোরের পাগলা রাজা মুকুটের দ্বিতীয় স্ত্রী নন্দিতার নাম থেকে প্রথমত নন্দিতার গ্রামঅ পরবর্তীতে নন্দীগ্রাম নামকরণ করা হয়েছে। সে যেই হউক নন্দি বাবুই হউক তাদের নাম অনুসারেই নন্দীগ্রামের নাম করণ হয়েছে বলে অনুসন্ধানকালে এটা নিশ্চিত করেছেন এ উপজেলার বয়স্ক ব্যক্তিরা। ১৯২০ সালে উত্তরাঞ্চলের মাঠ জরিপ কাজ শুরু হয়। জরিপ চলাকালে কি নামে মাঠ জরিপের কাজ শেষ করা হবে তা নিয়ে দেখা যায় বিভিন্ন মত পার্থক্য আর সংসয়। সেই সময়ের নাটোরের পাগলা রাজা &nbsp;মুকুটের স্ত্রী নন্দিতা রাণীর নাম অনুসারে ও অঞ্চলের নাম নন্দীগ্রাম করে মাঠ জরিপের কাজ শেষ করা হয়েছিল। ১৯৩০ সাল পর্যন্ত এ অঞ্চলটি নাটোরের বর্তমানে সিংড়া উপজেলার অধীনে ছিল। &nbsp;<br>১৯৩১ সালে সিংড়া থানার অধীনে নন্দীগ্রাম অঞ্চলের গল মানুষের জানমাল রক্ষার্থে একটি পুলিশ ফাঁড়ি স্থাপন করা হয়। সেখান থেকেই নন্দীগ্রামের যাত্র শুরু। এরপর এ অঞ্চলের মানুষ নন্দীগ্রাম পুলিশ ফাঁড়িকে পৃথক থানা হিসাবে পেতে বিভিন্ন আন্দোলন সংগ্রামে নেমে পড়ে। গনমানুষের আন্দোলনের মূখে ১৯৩৫ সালে পুলিশ ফাঁড়িকেথানায় রুপান্তর করা হয় এবং বগুড়া জেলার অর্ন্তভূক্ত থানা হিসাবে বিভাজন করা হয়েছিল। সেই থেকে নন্দীগ্রাম থানার আলাদা কার্যক্রম শুরু হয়। ১৯৮৬ সালে থানাকে উপজেলায় রুপান্তরিত করা হয়।&nbsp;<br>&nbsp;বগুড়া জেলা সদর থেকে পশ্চিমে ৩৫ কিলোমিটার দূরে এবং ভৌগলিক ২৪.৪৩ ও ২৪.৫২ অক্ষাংশ এবং ৮৮.৫৮ ও ৮৯.১০ দ্রাঘিমার মধ্যবর্তী স্থানে আদমদীঘি উপজেলার অবস্থান।<br>&nbsp;এ উপজেলার উত্তরে বগুড়া জেলার শাজাহানপুর থানা, দক্ষিণে নাটোর জেলার সিংড়া থানা, পূর্বে বগুড়া জেলার শেরপুর থানা এবং পশ্চিমে বগুড়া জেলার কাহালু থানা দ্বারা পরিবেষ্টিত।<br>&nbsp;এ উপজেলা খাদ্যে স্বয়ংসম্পূর্ণ এবং খাদ্য উদ্বৃত্ত এলাকা।&nbsp;<br>&nbsp;থানা ইউনিটের লোকেশন/জিপিএস ইনফরমেশন-বগুড়া টু নাটোর মহাসড়ক হইতে কোয়াটার কিলোমিটার পশ্চিমে নন্দীগ্রাম উপজেলার দক্ষিন পার্শ্বে নন্দীগ্রাম থানা অবস্থিত। আয়তন ২৬৫.২২ বর্গ কিঃমিঃ জন সংখ্যা-১,৮৭,৯৪০জন ।&nbsp;</p><p><br>&nbsp;জুরিসডিকশন ম্যাপ ও এলাকার নাম-অত্র সাথে সংযুক্ত।&nbsp;</p><p><br>&nbsp;ফাঁড়ি বা বিট এর তথ্য:<br>কুমিড়া পুলিশ তদন্ত কেন্দ্র বিট নম্বর<br>&nbsp;এলাকার নাম&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;বিট নম্বর<br>কুমিড়া পন্ডিতপুকুর&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;নাই</p><p>পুলিশ পরিদর্শক&nbsp;&nbsp; &nbsp;এসআই(নিঃ)&nbsp;&nbsp; &nbsp;এএসআই(নিঃ)&nbsp;&nbsp; &nbsp;কনস্টেবল&nbsp;&nbsp; &nbsp;নারী কনস্টেবল&nbsp; &nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0১&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0১&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0১&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;১৫&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-<br><br>&nbsp; &nbsp;মোবাইল নাম্বার&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ই–মেইল এ্যাড্রেস<br>&nbsp;&nbsp; &nbsp;০১৭১৩-৩৭৪০৭১&nbsp;&nbsp; &nbsp;ocnandigrambogra@police.gov.bd</p><p><br>জনবলের তালিকা : &nbsp;&nbsp; &nbsp;<br>পুলিশ পরিদর্শক&nbsp;&nbsp; &nbsp;এসআই(নিঃ)&nbsp;&nbsp; &nbsp;এএসআই(নিঃ)&nbsp;&nbsp; &nbsp;কনস্টেবল&nbsp;&nbsp; &nbsp;নারী কনস্টেবল&nbsp;&nbsp; &nbsp;ঝাড়ুদার<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;02&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;04&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;05&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;২২&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0৭&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;01</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3626.361670701868!2d89.24734531431544!3d24.64567635990339!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc4f6173285ad1%3A0x740df6e97b0d0193!2sNandigram+Police+Station!5e0!3m2!1sen!2sbd!4v1551462501130\" width=\"100%\" height=\"300px\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 17:49:36', '2019-07-29 22:45:06', NULL),
(38, 'সোনাতলা', 4, 'Sonatola.jpg', '<p>থানার সংক্ষিপ্ত ইতিহাস: সোনাতলা থানাটি ইং-২১/০৮/১৯৯৫ সালে প্রতিষ্ঠিত হয়।</p><p>সোনাতলা থানার ভূমির বর্ণনাঃ সোনাতলা থানাধীন গড়ফতেপুর মৌজার জে, এল, নং-২৬, খতিয়ান নং-৫০৩, ডিপি নং-৫, হাল দাগ নং-৬৪৩/৬৬৬ জমির পরিমান ৩.১৪ একর, থানার চারদিকে সীমানা প্রাচীর দ্বারা ঘেরা আছে। থানা ভবন টাইপ পস্নান বিল্ডিং যা ১৯৯৫ সালে নির্মিত হয়েছে। উলেস্নখিত জমির মালিক বাংলাদেশ সরকারের পÿÿ বাংলাদেশ পুলিশ, বগুড়া।</p><p>থানা ইউনিটের লোকেশন/ জিপিএস ইনফরমেশন: &nbsp;&nbsp; &nbsp; গড়ফতেপুর মৌজা, সোনাতলা পৌরসভার পাকা রাসত্মার পাশে^র্, আয়তন-১৫৬.৭৬ বর্গ কিঃ মিঃ লোক সংখ্যা-১,৬৭,৫৪৭ জন।&nbsp;</p><p>জুডিসডিকশন ম্যাম ও এলাকার নাম:&nbsp;&nbsp; &nbsp;অত্র সাথে সংযুক্ত</p><p>ফাঁড়ি বা বিট এর তথ্য: নাই</p><p>মোবাইল, টেলিফোন নম্বর, বা ই-মেইল নম্বর&nbsp;&nbsp; &nbsp;০১৭১৩-৩৭৪০৬৩, &nbsp;টেলিফোন-নাই। ocsonatalabogra@police.gov.bd</p><p>জনবলের তালিকা&nbsp;&nbsp; &nbsp;অত্র থানায় মঞ্জুরীকৃত অফিসার ও ফোর্সের সংখ্যা পুলিশ পরিদর্শক ০২ জন &nbsp;এসআই ১০ জন, এএসআই পুরম্নষ ও মহিলা মোট ০৮ জন ও কনস্টেবল পুরম্নষ ৩৮ জন।<br>বর্তমানে অত্র থানায় পরিদর্শক (নিঃ) ০২ জন, এসআই (নিঃ) পুরম্নষ ০৫ জন, এএসআই (নিঃ) পরম্নষ-০৭ জন, মহিলা-০১, নারী কনস্টেবল-০৩টি ও পরম্নষ কনস্টেবল পুরম্নষ ২২ জন কর্মরত আছেন।&nbsp;</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3614.899948823718!2d89.49945151432382!3d25.037469244307804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fd045a6643c0bf%3A0xdbd616ad97f56443!2sSonatala+Police+Station!5e0!3m2!1sen!2sbd!4v1552716901528\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 17:51:49', '2019-07-29 23:04:32', NULL);
INSERT INTO `thanas` (`id`, `name`, `district_id`, `thana_image`, `about_thana`, `map`, `created_at`, `updated_at`, `deleted_at`) VALUES
(39, 'ধুনট', 4, '5- Donut.jpg', '<p>থানার সংক্ষিপ্ত ইতিহাসঃ ঐতিহাসিক পটভুমিঃ ১৭৫৭সালে&nbsp; সুবে বাংলার শাসন কতৃত্ব ইংরেজদের হাতে যাওয়ায় ১৭৯৩ সালে লটকর্ণওলিস মোগল প্রবর্তিত সরকার ও পরগোনা ব্যবস্থা ভেঙ্গে জেলা প্রসাশন ব্যবস্থা প্রবর্তন করেন এবং সমগ্র বাংলাকে ২৮টি জেলায় রম্নপামত্মর করে প্রতিটি জেলার বিচারকার্য সম্পাদনের জন্য ০১জন করে জেলা জজ নিযূক্ত করেন। জজগণের অধিনে ০১জন রেজিষ্ট্রার ও কয়েকজন মুন্সেট নিযুক্ত হন এবং শামিত্ম রক্ষার নিমিত্তে কয়েক ক্রোশ অমত্মর অমত্মর এক একটি থানা সংস্থাপিত হয়ে তার ভার এক একজন দারোগার হাতে সমর্পিত হয়। তখন ধুনট নামে কোন প্রসাশানিক কেন্দ্র(পুলিশ থানা) ছিল না। ১৮২১ সালে রাজশাহী জেলা হতে আদমদিঘী,শেরপুর নৌখিলা ও বগুড়া থানা এবং রংপুর জেলা হতে দেওয়ানগঞ্জ ও গোবিন্দগঞ্জ থানা এবং দিনাজপুর জেলা হতে লালবাজার ক্ষেতলাল ও বদলগাছী থানা নিয়ে সর্বসমেত ০৯টি থানা দ্বারা বগুড়া জেলা গঠিত হয়। উলেস্নখ্য ১৭৯৩ সালে থানা সংস্থাপনের সময় উক্ত থানাগুলি স্থাপিত হয়। ১৮৬৮ সালে লালবাজার পুলিশ থানা পাঁচবিবিতে এবং মানাস নদী ভরাট হয়ে যাওয়ায় ২০ই মার্চ তারিখে নৌখিলা পুলিশ থানা সারিয়াকান্দিতে স্থামত্মরিত হয়। ১৮৬৯ সালে রায়গঞ্জ থানা পাবনার(বর্তমান সিরাজগঞ্জ জেলা) সংযুক্ত হলে উক্ত সনের ২৩ সেপ্টেম্বর ধুনটে একটি পুলিশ ফাঁড়ী স্থাপিত হয়। থানা সদর দপ্তরটি ধুনট মৌজাতে স্থাপিত হওয়ায় ধুনট মৌজার নামেই নামকরণ হয় ধুনট থানা। পরবর্তীতে কুঠিবাড়ী নিবাসী বাবু বিকে চন্দ্রের(বিন্দাবন কৃষ্ণচন্দ্র)নিকট হতে ধুনট মৌজার ০৬ নং শীটে ৬৪৮৪ নং দাগে ১.৭৩ একর জমি অধিগ্রহণ করে উক্ত জমির উপর ২৭ জুন ১৯২৩ খ্রিষ্টাব্দে কলকাতা গেজেট জনবল ২৫ এর মাধ্যমে ধুনট থানা প্রতিষ্ঠিত হয়। ধুনট থানার ভূমির বর্ণনাঃ-জেলা-বগুড়া, থানা-ধুনট, মৌজা-ধুনট, জেএল নং-৩৭, সিএস খতিয়ান নং-৯৫৬,সিএস দাগ নং-৬৪৮৪,আরএস খতিয়ান নং-৫২৩৭, আরএস দাগ নং-৮৭৭৬,হাল খতিয়ান নং-৫২৩৭, হাল দাগ নং-৮৭৭৬, হোল্ডিং নং-৫০২১,জমির মোট পরিমান ১.৭৪ একর। উলেস্নখিত জমির মালিক পূর্ব প্রাক প্রদেশ,পক্ষে পুলিশ ডিপার্টমেন্ট।</p><p>১৯৬২খ্রিঃ ধুনট মৌজার ৫নং শীটে ১৩টি দাগে বঙ্গবিহারী ও সতিশচন্দ্র সাহা সহ অন্যান্য মালিকদের নিকট হতে আরো ১০.০৬ একর জমি অধিগ্রহন করে উক্ত জমির উপর প্রসাশনিক থানা প্রতিষ্ঠিত হয়। ১৯৮০ সালে উক্ত প্রসাশনিক থানা মান উন্নত থানা এবং ২৪ মার্চ ১৯৮৩ সালে উক্ত মান উন্নিত থানা উপজেলা হিসাবে প্রতিষ্ঠিত হয়। </p><p>নামকরণঃ ধুনট থানার নামকরণ নিয়ে অনেক কল্প কাহীনি কিংবদমিত্ম ও জনশ্রম্নতির প্রচলন পরিলক্ষিত হয়। পূর্বে ধুনট এলাকাটি জলমগ্ন ছিল। এই জলমগ্ন এলাকায় প্রায়ই নৌ ডাকাতি হত এবং মহাজন ও বণিকসহ জনগণের ধন-সম্পদ লুটপাট হত। এই ধন-সম্পদ লুট থেকেই স্থানটির নামকরণ হয়েছে ধুনট। অন্যমতে ১৭৯৩ সালে ধুনট রেশম কুঠিকে বগুড়া জেলার প্রধান কুঠি হিসাবে উদ্বোধনকালে ০৬ জন ক্ষেতনামা ইংরেজ সাহেব অনুষ্ঠানে যোগদান করেন। তাদের প্রত্যেকের নামের আদ্যক্ষর দিয়ে কুঠির নাম রাখেন(ধুনট)DHUNAT। যেমন-D=dumble, H=harriel,U=urien,N=new&nbsp; house, A=antonio, T=T.c. cuidi। এই &nbsp;DHUNAT নাম থেকেই পরবর্তীতে স্থান থানা ও উপজেলার নাম হয়েছে ধুনট। </p><p>এছাড়া ইংরেজি ০৬টি অক্ষর দিয়ে DHUNAT শব্দ গঠিত। যেমন-D=dacoity, H=happen, U=unarmed, N=navalbese,A=acqurire,T=trasuar dacoity happen when the unarmed merchants of the navalbese woult acqurire trasuaer এরম্নপ ধন-সম্পদ লুটের ঘটনা হতে উক্ত স্থানের নাম ধুনট এবং থানা ও উপজেলার নাম ধুনট হয়েছে।</p><p>থানা ইউনিটের লোকেশন/জিপিএস ইনফরমেশনঃ অবস্থানঃ বগুড়া জেলা শহর হতে ৩৫ কিঃমিঃ দক্ষিণ-পূর্বে ২৪৭.৭৫ বর্গমিলোমিটার এলাকা জুড়ে ধুনট থানার অবস্থান। ইহা ভৌগলিক অবস্থান গত দিক থেকে ২৪.৪৬’’ ইঞ্চি &nbsp;এবং ২৫.০১’’ইঞ্চি উত্তর অংশের মধ্যে ৮৯.২২’’ইঞ্চি এবং ৮৯.৩৩’’ইঞ্চি পূর্ব দ্রাঘিমাংশে অবস্থিত।</p><p>চতুরসীমা-উত্তরে সারিয়াকান্দি ও গাবতলী উপজেলা,দক্ষিণ ও পূর্বে-সিরাজগঞ্জ জেলার রায়গঞ্জ ও কাজিপুর উপজেলা, পশ্চিমে-শাহজাহানপুর ও শেরপুর উপজেলা এই চতুরসীমা পরিবেষ্টিত উর্ভর ভুখন্ডিটি আধুনিক ধুনট থানা/উপজেলা। যমুনা নদী এই থানা/উপজেলার পূর্ব সীমানায়&nbsp; অবস্থান করে কাজিপুর উপজেলা ও জামালপুর জেলা হতে এবং বাঙ্গালী নদী পশ্চিম সীমায় অবস্থান করে শাহজাহানপুর ও শেরপুর উপজেলা/থানা হতে বিচ্ছিন্ন করেছে। ধুনট মৌজার, ধুনট পৌরসভার সোনাহাটা পাকা রাসত্মা এবং ধুনট সারিয়াকান্দি পাকা রাসত্মার হাসপাতাল সোনাহাটা পাকা রাসত্মার সংলগ্ন এবং ধুনট সাব-রেজিঃ অফিস সংলগ্ন থানা ভবন। আয়তন-২৪৭.৭৫ বর্গ কিঃ মিঃ লোক সংখ্যা-৩,৪৫,৩৭৪ জন।</p><p>ফাঁড়ি বা বিট এর তথ্যঃ&nbsp; নাই।</p><p>মোবাইল, টেলিফোন নম্বর, বা ই-মেইল নম্বরঃ ০১৭১৩-৩৭৪০৭০,&nbsp; টেলিফোন-নাই। <a data-cke-saved-href=\"mailto:ocdhunatbogra@police.gov.bd\" href=\"mailto:ocdhunatbogra@police.gov.bd\">ocdhunatbogra@police.gov.bd</a></p><p>জনবলের তালিকাঃ অত্র থানায় মঞ্জুরীকৃত অফিসার ও ফোর্সের সংখ্যা,পুলিশ পরিদর্শক ০২ জন&nbsp; এসআই পুরম্নষ ও মহিলা মোট-১০জন, এএসআই পুরম্নষ ও মহিলা মোট ০৮ জন ও কনস্টেবল পুরম্নষ-২৫ জন মহিলা-০৫ জন।</p><p>বর্তমানে অত্র থানায় পুলিশ পরিদর্শক (নিঃ) ০২ জন, এসআই (নিঃ) পুরম্নষ ০৩ জন, এএসআই (নিঃ) পুরম্নষ ও মহিলা-০৭ জন, পুরম্নষ ও নারী&nbsp; কনস্টেবল ২০ জন কর্মরত আছেন।<br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3625.063011608776!2d89.5300300143164!3d24.690360558136216!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fdb041e6870cd5%3A0x3a6a8cef9329b928!2sDhunat+Police+Station!5e0!3m2!1sen!2sbd!4v1551462728097\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 17:53:09', '2019-07-29 22:16:37', NULL),
(40, 'গাবতলী', 4, 'Gobtoly.jpg', '<p>থানা বা ইউনিটের সংক্ষিপ্ত ইতিহাস: গাবতলী থানা ১৯১৭ সালে প্রতিষ্ঠিত হয় পরবর্তীতে ১৯৮৮সালে দ্বি-তল ভবন নির্মিত হয়। থানার ভহমি পুলিশ বিভাগের নিজস্ব সম্পত্তি যাহা গোবতলী মৌজার জেএল নং ১৪৩, খতিয়ান নং- ৫১৫, হাল দাগ নং- ৮৯৯, জমির পরিমান ৩.৪৮ একর। গাবতলী থানা ২০০৭ সালে মডেল থানা হিসাবে অনুমোদন লাভ করে এবং থানা ভবনের পশ্চিম- দক্ষিণ কোনে মডেল থানার নতুন দ্বি-তল ভবন নির্মিত হয়।<br>থানা ইউনিটের লোকেশন/ জিপিএস ইনফরমেশন: গাবতলী পৌরসভার অমর্ত্মগত পাইলট &nbsp;উচ্চ বিদ্যালয় সংলগ্ন থানা অবস্থিত<br>ফাড়ি বা বিট এর তথ্য: গাবতলী মডেল থানাধীন তিনটি ইউনিয়ন যথাক্রমে মহিষাবান, নশিপুর, বালিয়াদিঘী ইউনিয়নের আইন-শৃঙ্খলা রক্ষার্থে ২০০৯ সালে বাগবাড়ী পুলিশ তদমত্ম কেন্দ্র নামে একটি তদমত্ম কেন্দ্র স্থাপিত হয়।<br>টেলিফোন নাম্বার, মোবাইল নাম্বার ও ই-মেইল এ্যাড্রেস: ০৫০২৫-৭৫৫০০২, মোবাইল নং- ০১৭১৩-৩৭৪০৬৪ (অফিসার ইনর্চাজ) &nbsp;ই-মেইল- ocgabtalibogra@police.gov.bd<br>জনবলের তালিকা : সহকারী পুলিশ সুপার ০১, পুলিশ পরিদর্শক(নিঃ) ০৩, এসআই (পুরম্নষ) ১৭, নারী এসআই ০১, এএসআই(পুরম্নষ) ১১, নারী এএসআই ০১, কনষ্টেবল (পুরম্নষ) ৪১, নারী কনষ্টেবল ০৪, বাবুর্চী ০১, পরিচ্ছন্ন কর্মী ০১।&nbsp;<br></p>', NULL, '2019-03-01 17:54:37', '2019-07-29 22:30:16', NULL),
(41, 'শেরপুর', 4, '7-Sarpur.jpg', '<p>থানার সংক্ষিপ্ত ইতিহাস: শেরপুর বাংলাদেশের বগুড়া জেলার অন্তরগত একটি উপজেলা এবং এটি রাজশাহী বিভাগের মধ্যে অবস্থিত। শেরপুর থানা ১৯৬২ সালে প্রতিষ্ঠিত হয় এবং ১৯৮৩ সালে থানাকে উপজেলায় রূপান্তর করা হয়। বগুড়া শহরের প্রায় ৬ ক্রোশ দক্ষিণে করতোয়া নদীর পশ্চিম পার্শ্বে শেরপুর নামক প্রশিদ্ধ ও সুপ্রাচীন একটি শহর অবস্থিত।&nbsp;<br>কথিত আছে যে,&nbsp;</p><p>“দই মিষ্টি ক্ষীরসা,<br>রাজা- বাদশা শেরশাহ্<br>মসজিদ, মন্দির, মোর্চা ঘুর<br>এ সব মিলেই শেরপুর।”<br>উপজেলার প্রশাসনিক কেন্দ্রের নাম অনুযায়ী শেরপুর শহরের নামকরণ করা হয়।</p><p>থানা ইউনিটের লোকেশন/জিপিএস ইনফরমেশন<br>এই উপজেলার উত্তরে শাজাহানপুর থানা, পূর্বে ধুনট থানা, দক্ষিণে রায়গঞ্জ (সিরাজগঞ্জ) থানা, তাড়াস (সিরাজগঞ্জ) থানা, পশ্চিমে সিংড়া থানা (নাটোর) থানা, নন্দীগ্রাম থানা অবস্থিত।&nbsp;</p><p>ফাঁড়ি বা বীট এর তথ্য<br>শেরপুর থানাধীন শেরপুর পৌরসভার মধ্যে একটি পুলিশ ফাঁড়ি রহিয়াছে। যাহা ৫টি বিটে সন্নিবেশিত<br>বিট নম্বর-১: উলিপুর/গোসাইপাড়া/হাজীপুর/চক্ষু হাসপাতাল/শ্রীরামপুরপাড়া/ডিগ্রি কলেজ এলাকা।</p><p>বিট নম্বর-২: ঘোষপাড়া/সকাল বাজার/দত্তপাড়া/বান্নীরঘাট/ফুলবাড়ী ঘাট/জগন্নাথপাড়া/বসাক পাড়া/রামচন্দ্রপুর পাড়া/বিকাল বাজার এলাকা।</p><p>বিট নম্বর-৩: পৌরসভা অফিস/উত্তর সাহাপাড়া/দক্ষিণ সাহাপাড়া/ কর্মকারপাড়া/ স্যান্নালপাড়া/ বারোদুয়ারী হাট/আলীয়া মাদ্রাসা এলাকা।</p><p>বিট নম্বর-৪: থানা পরিষদ/ প্রফেসর পাড়া/ নয়াপাড়া/উপজেলা পরিষদ চত্ত্বর/ টাউন কলোনী/ দুবলাগাড়ী এলাকা।</p><p>বিট নম্বর-৫: শেরশাহ মার্কেট/ বাসষ্ট্যান্ড/ খন্দকারপাড়া/ খেজুর তলা/ উপজেলা স্বাস্থ্য কমপ্লেক্স/ ধুনট মোড়/ গোডাউন/ মাদ্রাসা গেট এলাকা।&nbsp;</p><p>টেলিফোন নাম্বার, মোবাইল নাম্বার ও ইমেইল এ্যাড্রেস<br>ডিউটি অফিসার: ০১৭৪১-০৯৮৭০৭<br>মোবাইল নম্বর: ০১৭১৩-৩৭৪০৬৯<br>ই-মেইল এ্যাড্রেস: ocsherpurbogura@police.gov.bd&nbsp;</p><p>জনবলের তালিকা:&nbsp;<br>বিন্যাস তালিকা অনুযায়ী এই থানার মঞ্জুরীকৃত অফিসার ও ফোর্সের সংখ্যা নিম্নে উল্লেখ্য<br>&nbsp;&nbsp;&nbsp;&nbsp;ক্রমিক নং&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;পদবী&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;মঞ্জুরীকৃত&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;বর্তমান কর্মরত &nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০১&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;পুলিশ পরিদর্শক&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০২&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০২<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০২&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;এস, আই (পুরুষ)&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;১১&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;১১<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৩&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;এস. আই (নারী)&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০১&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;-<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৪&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;এ, এস, আই (পুরুষ)&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;১০&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;১০<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৫&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;এ, এস, আই (নারী)&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০১&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০১<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৬&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;কনস্টেবল (পুরুষ)&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;২৮&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;২৪<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৭&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;কনস্টেবল (নারী)&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৫&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৮<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৮&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ড্রাইভার কনস্টেবল&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৪&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৪<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০৯&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;বেতার কনস্টেবল&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০২&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০২<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;১০&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;কম্পিউটার অপারেটর&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০১&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০১<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;১১&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;ঝাড়ুদার&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;০১&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ০১</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3625.376103133501!2d89.41197401431617!3d24.67959465856219!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fdb2c313447fa1%3A0x4150485217f2c318!2sSherpur+Police+Station!5e0!3m2!1sen!2sbd!4v1551462937049\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 17:58:24', '2019-07-29 22:59:18', NULL),
(42, 'মহাদেবপুর', 5, '8-Mohodabpur.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3618.366046035841!2d88.74652809999999!3d24.919597099999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fb7ff6d2fe591b%3A0x447a9bc4c5a3f2e1!2sMohadevpur+Police+Station!5e0!3m2!1sen!2sbd!4v1551508069621\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:28:23', '2019-07-24 17:16:52', NULL),
(43, 'বদলগাছী', 5, '5-Badolgashe Thana.jpg', '', NULL, '2019-03-02 06:29:27', '2019-07-24 17:17:06', NULL),
(44, 'পত্নীতলা', 5, 'patnitala-thana-(1).jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d462663.51441625855!2d88.75062697474466!3d25.049045865908372!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fb7d0255908049%3A0x7a8318a6e5896b28!2sPatnitala+Police+Station!5e0!3m2!1sen!2sbd!4v1551508222255\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:30:43', '2019-07-24 17:17:21', NULL),
(45, 'ধামইরহাট', 5, 'Dhamurihat.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3611.577692255737!2d88.85150221432623!3d25.149964539788446!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc9c6fed3190d3%3A0xd0244d1b9d83627d!2sDhamoirhat+Police+Station!5e0!3m2!1sen!2sbd!4v1551508260712\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:31:34', '2019-07-24 17:17:34', NULL),
(46, 'নিয়ামতপুর', 5, 'Neamutpur.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m17!1m11!1m3!1d3!2d88.57252299717987!3d24.831665129356644!2m2!1f0!2f90!3m2!1i1024!2i768!4f101.00283612331506!3m3!1m2!1s0x39fb9c3ec9494e01%3A0x2af4559792e6a6d5!2sNiamatpur+Police+Station!5e0!3m2!1sen!2sbd!4v1551508338669\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:32:33', '2019-07-24 17:17:50', NULL),
(47, 'মান্দা', 5, 'Manda.jpg', '<p>থানা বা ইউনিটের সংক্ষিপ্ত ইতিহাস : মান্দা থানার মোট ৩.৯৪ একর জমির উপর নির্মিত হয়। নওগাঁ জেলার মান্দা থানাধীন ৪ নং মান্দা ইউনিয়নের দোসুতি মৌজার জেএল নং ২৮ আরএস খং নং ২খতিয়ানে দাগ নং ৩৯৬,৩৯৭ ও ৩৯৮ এর উপর থানা ভবন অবস্থিত। থানা ভবনটি দ্বিতীয় তলা বিশিষ্ট। থানা ভবনটি ১৯৯০ সালে নির্মিত।</p><p>থানা ইউনিটের লোকেসন/জিপিএস ইনফরমেশন :- মান্দা থানা ভবনটি মান্দা ফেরীঘাট হতে ১ কিঃমিঃ উত্তর দিকে নিয়ামতপুর রাস্তা সংলগ্ন পশ্চিম পাশে।</p><p>জুরিসডিকশনের ম্যাপ ও এলাকার নাম :- দোসতি</p><p>ফাঁড়ি বা বিটের তথ্য :- নাই।<br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3622.0357787835546!2d88.69911931431862!3d24.794228354016685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fb84103cba7053%3A0x3922ec8b76951100!2sManda+Police+Station%2C+Manda+to+Niamatpur!5e0!3m2!1sen!2sbd!4v1551508388247\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:33:28', '2019-07-29 20:26:34', NULL),
(48, 'আত্রাই', 5, 'atrai thana.jpg', '<p><br></p>', NULL, '2019-03-02 06:35:23', '2019-07-29 20:21:10', NULL),
(49, 'রাণীনগর', 5, '3-RanyNagor.jpg', '', NULL, '2019-03-02 06:36:01', '2019-07-24 17:18:54', NULL),
(50, 'নওগাঁ সদর', 5, '1- Sador.jpg', '<p><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3621.142966296867!2d88.92730056431925!3d24.824784002801806!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc7cb9a01bd7df%3A0x804fd71612677f4b!2sNaogaon+Police+Station%2C+Naogaon!5e0!3m2!1sen!2sbd!4v1551508602566\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:37:03', '2019-08-05 01:55:04', NULL),
(51, 'পোরশা', 5, '4 Porsha.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3615.2375022169526!2d88.45453526432355!3d25.02601284476707!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fb0ce8ea2c1215%3A0x2acc83ea7cc875ba!2sPorsha+Police+Station%2C+Porsha!5e0!3m2!1sen!2sbd!4v1551508647439\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:37:57', '2019-07-24 17:19:26', NULL),
(52, 'সাপাহার', 5, 'Shapahar.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3612.2236955802323!2d88.58798860157457!3d25.128127038509824!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fb6e51280a1df9%3A0x74d80d8b88f92182!2sSapahar+Police+Station!5e0!3m2!1sen!2sbd!4v1551508718298\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:38:54', '2019-07-24 17:19:37', NULL),
(53, 'সুজানগর', 6, '4-Sujanagar-PS.jpg', '<p><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3646.706029811294!2d89.40880221430066!3d23.935461637599857!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fe62bb9adbb7c5%3A0x62b898b25a06ebf7!2sSujanagar+Police+Station%2C+R601%2C+Sujanagar+Bazar+6660!5e0!3m2!1sen!2sbd!4v1551508911413\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:42:21', '2019-07-29 20:19:59', NULL),
(54, 'ঈশ্বরদী', 6, 'Eshordi.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d116576.11089477797!2d89.0826120836119!3d24.06618250664172!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fea06607608add%3A0x2f5b3f92cd294b9a!2sIshwardi+Police+Station!5e0!3m2!1sen!2sbd!4v1551509012628\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:44:32', '2019-07-24 18:35:56', NULL),
(55, 'ভাঙ্গুড়া', 6, 'Vangur.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3638.707596677655!2d89.3749876143065!3d24.21701837670861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc2b6baaa73437%3A0xd4e32c711937e9c9!2sBhangura+Police+Station!5e0!3m2!1sen!2sbd!4v1551509118416\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:45:51', '2019-07-24 18:36:08', NULL),
(56, 'পাবনা সদর', 6, '1- Sador.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3644.628860492152!2d89.2378781143022!3d24.008879584771158!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fe9b2e5191c389%3A0xa878466ac63dadda!2sPabna+Sadar+Police+Station!5e0!3m2!1sen!2sbd!4v1551509205695\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:47:04', '2019-07-24 18:36:24', NULL),
(57, 'বেড়া', 6, 'Bera.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3642.5676753328016!2d89.62931601430371!3d24.081524381964375!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fe7425b224e9b9%3A0xf57bb8e1e680cbc0!2sBera+Police+Station!5e0!3m2!1sen!2sbd!4v1551509241378\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:47:56', '2019-07-24 18:36:37', NULL),
(58, 'আটঘরিয়া', 6, '3-Atgoria.jpeg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3641.712944826248!2d89.2394308143043!3d24.111588280800582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fe9d315a09a5b7%3A0xc2819f9607f94f7!2sAtghoria+Police+Station!5e0!3m2!1sen!2sbd!4v1551509313768\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:48:50', '2019-07-24 18:37:38', NULL),
(59, 'চাটমোহর', 6, 'Chatmohor.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d465701.7970399649!2d89.28710911535198!3d24.23144882178356!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc292bd5559d29%3A0x408e16348bd1d77b!2sChatmohar+Thana!5e0!3m2!1sen!2sbd!4v1551509375119\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 06:49:59', '2019-07-24 18:37:59', NULL),
(60, 'সাঁথিয়া', 6, 'Sathia.jpg', '', NULL, '2019-03-02 06:50:39', '2019-07-24 18:38:10', NULL),
(61, 'ফরিদপুর', 6, 'Faridpur.jpg', '', NULL, '2019-03-02 06:53:45', '2019-07-24 18:39:31', NULL),
(62, 'আতাইকুলা', 6, 'Atikula.jpg', '', NULL, '2019-03-02 06:57:46', '2019-07-24 18:39:46', NULL),
(63, 'আমিনপুর', 6, 'Aminpur.jpg', '', NULL, '2019-03-02 06:58:14', '2019-07-24 18:40:02', NULL),
(64, 'শিবগঞ্জ', 4, 'Shibgonj.jpg', '<p>থানার সংক্ষিপ্ত ইতিহাস: শিবগঞ্জ থানাটি ইং-১৭/০১/১৯১৯ সালে প্রতিষ্ঠিত হয়, যাহার ডিক্লারেশন নং-৫২৪৮ এলএ তারিখ-০২/০৭/১৯১৮, প্রকাশিত পেজ নং-১০০৫, পার্ট-০১, কলকাতা গেজেট তারিখ-০৩/০৭/১৯১৮ খ্রিঃ।</p><p>&nbsp;&nbsp; &nbsp;শিবগঞ্জ থানার ভূমির বর্ণনাঃ- জেলা-বগুড়া, থানা-শিবগঞ্জ, মৌজা-বানাইল, জেএল নং-১৫৩, খতিয়ান নং-১৫০৪, ডিপি নং-০৬, দাগ নং-১৮০, ১৭৬, ১৭৭, বর্তমান দাগ নং-২৬১৫, জমির মোট পরিমান ১.৮১৮৭ একর। উল্লেখিত জমির মালিক বাংলাদেশ সরকারের পক্ষে বাংলাদেশ পুলিশ, বগুড়া<br>থানা ইউনিটের লোকেশন/ জিপিএস ইনফরমেশন: বানাইল মৌজা, শিবগঞ্জ পৌরসভার পাকা রাস্তার পার্শ্বে, আয়তন-৩১৫.৩৩ বর্গ কিঃ মিঃ লোক সংখ্যা-৪,২৭,৯১৩ জন।&nbsp;</p><p>জুডিসডিকশন ম্যাম ও এলাকার নাম: &nbsp;&nbsp; &nbsp;অত্র সাথে সংযুক্ত</p><p>মোবাইল, টেলিফোন নম্বর, বা ই-মেইল নম্বর&nbsp;&nbsp; &nbsp;০১৭১৩-৩৭৪০৬২, &nbsp;টেলিফোন-নাই। ocshibgonjbogra@police.gov.bd</p><p>জনবলের তালিকা: অত্র থানায় মঞ্জুরীকৃত অফিসার ও ফোর্সের সংখ্যা এএসপি ০১ জন, পরিদর্শক ০৩ জন &nbsp;এসআই পুরুষ ও মহিলা মোট ১৮জন, এএসআই পুরুষ ও মহিলা মোট ১২ জন ও কনস্টেবল পুরুষ ৪৫ জন।<br>বর্তমানে অত্র থানায় পরিদর্শক (নিঃ) ০৩ জন, এসআই (নিঃ) পুরুষ ১১ জন, এএসআই (নিঃ) পরম্নষ-০৭ জন, নারী কনস্টেবল-০৩টি ও পরম্নষ কনস্টেবল পুরুষ ৩০ জন কর্মরত আছেন।&nbsp;</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m17!1m11!1m3!1d3!2d89.32247011422861!3d25.002511892009853!2m2!1f0!2f90!3m2!1i1024!2i768!4f75!3m3!1m2!1s0x39fcfbff66a89825%3A0xae22854dbcebe1e5!2sShibganj+Police+Station!5e0!3m2!1sen!2sbd!4v1551510613794\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-01 17:58:24', '2019-07-29 23:02:31', NULL),
(65, 'সিরাজগঞ্জ সদর', 7, '1-Sador.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d929741.4879439514!2d89.700689!3d24.4576301!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fdea75f6cf00ed%3A0x5a7736d54a90d390!2sSirajganj+Sadar+Thana!5e0!3m2!1sen!2sbd!4v1551546796340\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 17:13:45', '2019-07-24 18:45:33', NULL),
(66, 'শাহজাদপুর', 7, '9-Sazadpur.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3639.8853561319506!2d89.5996809!3d24.175753099999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fdd8eefcf54135%3A0x1ec573c3e000a4d0!2sShahzadpur+Police+Station!5e0!3m2!1sen!2sbd!4v1551546892241\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 17:15:23', '2019-07-24 18:45:57', NULL),
(67, 'উল্লাপাড়া', 7, '10-Ullapara.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3635.948556992121!2d89.56833741430847!3d24.313429422952378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fddac0fad9bbc1%3A0xe581e8592c2d3a50!2sUllapara+Police+Station%2C+Jhikira%2C+Ullapara%2C+Sirajgonj%2C+Ullapara!5e0!3m2!1sen!2sbd!4v1551547099103\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 17:18:39', '2019-07-24 18:46:13', NULL),
(68, 'চৌহালি', 7, 'Chohaly.jpg', '', NULL, '2019-03-02 17:20:24', '2019-07-24 18:46:29', NULL),
(69, 'তাড়াশ', 7, '7-Tarash.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m17!1m11!1m3!1d3!2d89.3705552825053!3d24.426974340810535!2m2!1f0!2f90!3m2!1i1024!2i768!4f100.22606621689735!3m3!1m2!1s0x39fc336328b6a6cb%3A0xc556e638e97f480!2sTarash+Thana!5e0!3m2!1sen!2sbd!4v1551547366719\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 17:23:53', '2019-07-24 18:49:09', NULL),
(70, 'কাজিপুর', 7, 'Kazipur-Thana-Bhabon.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3625.705339388153!2d89.642050314316!3d24.66826885901023!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fdbc8ac2d38747%3A0x70051d5efd850fc8!2sKazipur+Police+Station!5e0!3m2!1sen!2sbd!4v1551548188957\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 17:36:57', '2019-07-24 18:49:35', NULL),
(71, 'কামারখন্দ', 7, '8-Kamarkhondo.jpg', '', NULL, '2019-03-02 17:37:53', '2019-07-24 18:50:11', NULL),
(72, 'রায়গঞ্জ', 7, 'Raigonj.jpg', '', NULL, '2019-03-02 17:38:59', '2019-07-24 18:54:46', NULL),
(73, 'বেলকুচি', 7, 'Balkushi.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m17!1m11!1m3!1d3!2d89.6974023!3d24.3018286!2m2!1f0!2f90!3m2!1i1024!2i768!4f75!3m3!1m2!1s0x39fddd616444c1f3%3A0x650cc8f93611e03f!2sBelkuchi+Thana!5e0!3m2!1sen!2sbd!4v1551548477233\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 17:41:33', '2019-07-24 18:50:43', NULL),
(74, 'যমুনা ব্রিজ পশ্চিম', 7, 'Bangobandhu-Bridge-West-Bhabon.jpg', '', NULL, '2019-03-02 17:42:09', '2019-07-24 18:51:03', NULL),
(75, 'সালাঙ্গা', 7, 'Salonga.jpg', '', NULL, '2019-03-02 17:44:06', '2019-07-24 18:52:08', NULL),
(76, 'এনায়েতপুর', 7, 'Anayetput-Thana-Bhabon.jpg', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m17!1m11!1m3!1d3!2d89.6969549902202!3d24.22413438841315!2m2!1f0!2f90!3m2!1i1024!2i768!4f75!3m3!1m2!1s0x39fdde1cf4c39cf7%3A0x6bc06f739c8eb576!2sEnayetpur+Police+Station!5e0!3m2!1sen!2sbd!4v1551548673944\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 17:44:58', '2019-07-24 18:52:24', NULL),
(77, 'জয়পুরহাট সদর', 8, '1-Sador.JPG', '<p>জয়পুরহাট সদর থানার সংক্ষিপ্ত ইতিহাসঃ &nbsp;&nbsp; ১৯০৭ সালে বাঘাবাড়ীতে একটি পৃথক থানা ঘঠিত হয় এবং জয়পুরহাট নামটি ব্যাপকভাবে প্রচলিত হওয়ায় তা জয়পুরহাট থানা নামে পরিচিতি পায়। ১৯১৮ সালে জয়পুরহাট থানা ভবন নির্মিত হয়।<br></p><p>ফাড়িঁ বা বিট এর তথ্যঃ জয়পুরহাট থানার অধীনে ০২টি পুলিশ&nbsp; ফাঁড়ি রয়েছে। ০১টি&nbsp; জয়পুরহাট পৌরসভার বিশ্বাসপাড়া এলাকায় অবস্থিত, যার জেএল নং ১৫৮, অপরটি ০৯ নং চকবরকত ইউপির চকবরকত এলাকায় অবস্থিত যার জেএল নং-৩৫।</p><p>জয়পুরহাট সদর থানার জনবলের তালিকাঃ অফিসার ইনচার্জ ০১, পুলিশ পরিদর্শক (তদন্ত) ০১, পুলিশ পরিদর্শক (অপস্) ০১, এসআই ১৩, এএসআই ১১, কনষ্টেবল ২৫, ড্রাইভার ০৪, বেতার কনষ্টেবল ০২, পরিচ্ছন্নতা কর্মী ০১।</p><p><br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7226.089049277426!2d89.02667462241199!3d25.100354101463758!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fc921b4d956bb9%3A0x15bb06c4f57227e4!2sJoypurhat+Police+Station!5e0!3m2!1sen!2sbd!4v1551548833494\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 17:47:31', '2019-07-29 22:01:17', NULL),
(78, 'কালাই', 8, 'Kalai.jpg', '<p>কালাই থানার সংক্ষিপ্ত ইতিহাসঃ ১৯৮১ সালে কালাই উপজেলা পরিষদ সংলগ্ন একটি কমিউনিটি সেন্টারে কালাই থানার পুলিশি কার্যক্রম শুরু হয়। পরবর্তীতে ১৯৮৯ সালে ০২.৭৬ একর জমির উপর বর্তমান থানা ভবন নির্মিত হয়। উক্ত থানা ভবনসহ অফিসার ইনচার্জ এর বাসভবন, ০২ জন এসআই, ০৪ জন এএসআই ও ৪ জন কনষ্টেবলের বাসা জয়পুরহাট গণপূর্তবিভাগ কর্তৃক নির্মিত হয়েছে। স্মারক নম্বর-১৯৫৪/১(৪)/ই, তারিখ-০৯/০৪/২০১৮ খ্রিঃ মূলে থানা ভবন (রান্নাঘর ও ডাইনিং রুম সহ) সার্বিক মেরামত/সংস্কার করা হয়েছে।</p><p>ফাড়িঁ বা বিট এর তথ্যঃ নাই।</p><p>জনবলের তালিকাঃ অফিসার ইনচার্জ ০১, পুলিশ পরিদর্শক (তদন্ত) ০১, এসআই ১০, এএসআই ০৫, কনষ্টেবল ২৯, ড্রাইভার ০৩, বেতার কনষ্টেবল ০২, পরিচ্ছন্নতা কর্মী ০১<br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3614.0476208937157!2d89.16007961432443!3d25.06637504314837!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fcf222ea9dee4f%3A0x2e951d19be405fb6!2sKalai+Thana!5e0!3m2!1sen!2sbd!4v1551548881798\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 17:48:35', '2019-07-29 22:18:10', NULL),
(79, 'ক্ষেতলাল', 8, 'Khatlal.jpg', '<p>ক্ষেতলাল থানার সংক্ষিপ্ত ইতিহাসঃ ক্ষেতলাল উপজেলা থানা হিসাবে প্রতিষ্ঠালাভ করে ১৮৭৪ সালে। উপজেলা হিসাবে স্বীকৃতি লাভ করে ১৯৮৩ সালে। ক্ষেতলাল থানা ধান উৎপাদনের জন্য বিখ্যাত। এ উপজেলার নাম করন নিয়ে নির্দিষ্ট উৎস খুজে পাওয়া যায় নাই। সুধীজনদের মতে জানা যায় ক্ষেতলাল দীর্ঘসময় ধরে ধান উৎপাদনের জন্য বিখ্যাত ছিল। ধান ক্ষেতগুলো লাল আকার ধারন করে। এ কারনে ক্ষেত এবং লাল এদুটি শব্দ থেকেই নেয়া হয়েছে ক্ষেতলাল। এ থানায় রয়েছে বিখ্যাত হিন্দা কসবা শাহী জমে মসজিদ,আছরাঙ্গা দিঘী,সহ নানা স্থাপনা।</p><p>জুরিসডিকশন ম্যাপ ও এলাকার নামঃ ক্ষেতলাল থানা</p><p>ফাড়িঁ বা বিট এর তথ্যঃ নাই।<br></p><p>জনবলের তালিকাঃ ইন্সপেক্টর-(নিরস্ত্র) ০২, এসআই ১১, এএসআই ০৭, কনষ্টেবল ২৯, বাবুর্চী ০১, পরিচ্ছন্নতা কর্মী ০১ জন।<br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28918.88935171247!2d89.11949510000001!3d25.0387851!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fcf31c653e02cf%3A0x4a78302d4d7a2a61!2sKhetlal+Police+Station!5e0!3m2!1sen!2sbd!4v1551548966217\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 17:49:58', '2019-07-29 22:22:01', NULL),
(80, 'আক্কেলপুর', 8, '3-Akkal Pur.jpg', '<p>আক্কেলপুর থানার সংক্ষিপ্ত ইতিহাসঃ জি.ও নং-৭২/২/(২)-২/১০৭/৭৭-pi(111)তারিখ-১১/০৩/১৯৭৮ সালে থানার কার্যক্রম চালু হয়। ১৯৮৮ সালে মূল থানা ভবন নির্মাণ করা হয়। প্রথম জি.ও নং-.......তারিখ:-......... ইং মূলে ৩একর জমির উপর অত্র থানা স্থাপিত হয়। পরবর্তীতে × সালে আরও × শতাংশ জমি হুকুম দখল করে মোট ৩একর জমির উপর বর্তমান থানা ভবন, অফিসার ইনচার্জ এর বাসভবন, ০৪ জন এসআই, ০২ জন এএসআই, ০২ জন কনস্টেবলের কোয়াটার আছে।</p><p>জনবলের তালিকাঃ অফিসার ইনচার্জ ০১, পুলিশ পরিদর্শক (তদন্ত) ০১, এসআই ০৬, এএসআই ০৬, কনষ্টেবল ২৯, বেতার কনষ্টেবল ০১, পরিচ্ছন্নতা কর্মী(আউট সোর্সিং) ০১<br></p>', NULL, '2019-03-02 17:50:38', '2019-07-29 22:15:36', NULL),
(81, 'পাঁচবিবি', 8, '2-Pasbaby.jpg', '<p>পাঁচবিবি থানার সংক্ষিপ্ত ইতিহাসঃ জি.ও নং-৯৩০ তারিখ-১৮/০২/১৮৬৮ সালে থানার কার্যক্রম চালু হয়। ১৯৯০ সালে মূল থানা ভবন নির্মাণ করা হয়। প্রথম জি.ও নং-২৩৫১ তারিখ:-১১/০১/১৯৮৬ ইং মূলে ১৪৯.০৬ শতাংশ জমির উপর অত্র থানা স্থাপিত হয়। পরবর্তীতে ১৯৮৮ সালে আরও ৬৯.২৫ শতাংশ জমি হুকুম দখল করে মোট ২১৮.৩০ শতাংশ জমির উপর বর্তমান থানা ভবন, অফিসার ইনচার্জ এর বাসভবন, ০৩ জন এসআই, ০২ জন এএসআই, ০২ জন কনস্টেবলের কোয়াটার আছে।</p><p>ফাড়িঁ বা বিট এর তথ্যঃ নির্মানাধীন পুলিশ ফাড়িঁ পাঁচবিবি থানাধীন মোহাম্মদপুর ইউপির নন্দীগ্রাম থানা হইতে দুরুত্ব ১৫ কিমি পূর্ব দিক, জেএল-১৯২।</p><p>জনবলের তালিকাঃ অফিসার ইনচার্জ ০১, পুলিশ পরিদর্শক (তদন্ত) ০১, এসআই ১০, এএসআই ০৯, কনষ্টেবল ২৯, ড্রাইভার ০৪, বেতার কনষ্টেবল ০১।<br></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m17!1m11!1m3!1d3!2d89.01812650433948!3d25.189699722095018!2m2!1f0!2f90!3m2!1i1024!2i768!4f87.56575502660245!3m3!1m2!1s0x39fc9401d8dad3bb%3A0xadf8824b5ab917a4!2sPanchbibi+Police+Station!5e0!3m2!1sen!2sbd!4v1551549147016\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-03-02 17:53:06', '2019-07-29 22:10:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `bp_position` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jurisdiction_level_id` int(11) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `thana_id` int(11) DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  KEY `users_jurisdiction_level_id_index` (`jurisdiction_level_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `status`, `bp_position`, `jurisdiction_level_id`, `district_id`, `thana_id`, `photo`, `last_login`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Sumon', 'sumon.webtest@gmail.com', '$2y$10$7dA8OzoUpWpC4SK1zOCqseDvbo8nlm8nf0/QICDX8vL4svmgaHpo6', '01754121818', 1, 'SP', 3, 1, 7, NULL, NULL, 'e5Pw9YFZYfLsfvDIRPRKBsXJOYNWACRq67f2Qecvab2Hz8S9NbLZQoQo1sna', '2018-10-13 06:08:04', '2019-08-20 21:51:44', NULL),
(93, 'Ashraful Islam', 'ashraful@gmail.com', '$2y$10$UGw4o2.VwlSDtq8thzVQr.1zApY/MgkRCXVqyc1uDITPQ4U2zHgwi', '01756235689', 1, 'Inspector', 1, NULL, NULL, NULL, NULL, 'XyQBsWKtYOGBKM0GH69XG8PJjGHk6FNrfo4baBnnXjLEb8JsO7HG1NF7NvvC', '2019-07-06 19:43:24', '2019-07-06 19:43:24', NULL),
(9, 'Shad Jabin', 'mdsakanjabin@gmail.com', '$2y$10$IUC2TWGSdGZepXKBxtG16OnTRAQ8weB7WRGB9LvxbJf0nHDN4hiMm', '01913800877', 1, 'Trainer', 2, 2, NULL, NULL, NULL, 'IAVXiSnsb57tFm0Yn4UzEc0XrToVJDn0deWWaB7tUkUJibv8cYWB7SefYh0N', '2018-10-30 16:23:12', '2019-07-06 11:37:22', NULL),
(10, 'Khaza Khaled Lizar', 'admin@admin.com', '$2y$10$/oPaLCwZt7v62Vzmq5dVXOpmn/msNcQyWBmVITpTRxB.U8Z32ADyy', '01888888888', 1, 'Superintendent of Police', 1, NULL, NULL, NULL, NULL, 'mEQrezuz6hCrHfupxuWX8Qd2eKBz1uulOWebuOI23B4sTYM64GSTHqWzYnUj', '2018-10-30 17:10:20', '2018-10-30 17:49:38', NULL),
(11, 'Udoy Kumar', 'udoykumar55@outlook.com', '$2y$10$9COPc09BoTY/yU9mylHuneeOnbrKeLsdoVKh.dfgxvcV/2LsGbXLq', '123456789', 1, NULL, 2, 1, NULL, NULL, NULL, '4SQYFSOtm16xWyqvVePfY1eJDqlUgM0u5GeLVJhWOouaoHRlTKyY7Ext6WyV', '2018-11-11 18:56:26', '2018-11-11 19:08:40', NULL),
(12, 'Rajshahi District Admin', 'rajshahi.admin@digrajshahirange.gov.bd', '$2y$10$b2vI5yC7FEeuDYjYlLUlUuOslvLpyd98JUknNnBZpcdUElzOYmM8m', '87451225852', 1, NULL, 2, 1, NULL, NULL, NULL, 'qxkPTZEgSZ32ppIqcyTxNDhfRFm5OnocKm4KcfYANyPBpEFl5shwOSxbVIQ4', '2019-03-03 07:47:28', '2019-08-20 21:51:25', NULL),
(13, 'Chapai Nawabganj District Admin', 'ch-nawabganj.admin@digrajshahirange.gov.bd', '$2y$10$/6lDo2kxxM3CS1Nv0ak5A.UmydxYkkPywFPRQFtAb/C0TenQwHJWi', '52145874521', 1, NULL, 2, 2, NULL, NULL, NULL, 'WtU5rNFyRZoYcQtb9L7dxi59KirVO3jhlyB5siNexOL4J6RBff2hVKxogCXa', '2019-03-04 06:10:37', '2019-03-04 06:10:37', NULL),
(14, 'Natore District Admin', 'natore.admin@digrajshahirange.gov.bd', '$2y$10$qwB3BKWIIqWfmCT/vz9WrOgWWufOL1HZyjPOHSM0lJhYozEsan4ym', '89654123789', 1, NULL, 2, 3, NULL, NULL, NULL, 'MWW9zXNOMam31kHDEQ56HdtixoPbpXY4RO3CFJXmMs8bc142pHqYmLyFKGRx', '2019-03-04 06:23:50', '2019-03-04 06:23:50', NULL),
(15, 'Bogura District Admin', 'bogura.admin@digrajshahirange.gov.bd', '$2y$10$gT27qGrJRZ1J3p7aqxX2xelDIqQtWMPPlUW.gheD225/i8O4PZXO2', '54783698542', 1, NULL, 2, 4, NULL, NULL, NULL, 'QcBr88PRi2BuW8j7owB0nO0v84V0J7rvj7A0BqTZl7H8FgFPtiyhWJ7f8q6Y', '2019-03-04 06:24:26', '2019-03-04 06:24:26', NULL),
(16, 'Naogaon District Admin', 'naogaon.admin@digrajshahirange.gov.bd', '$2y$10$wn/ZHoESzTPc7jMkYMtp8eeYG57EugEV8EqB3esDRkE/y7d.DySk2', '12587496321', 1, NULL, 2, 5, NULL, NULL, NULL, 'TW5Q7h2RNVq9A2NnmXRBSbK4YNpvROUejejMKTNHWbTwWmvrlJKOk36JARlv', '2019-03-04 06:25:11', '2019-03-04 06:25:11', NULL),
(17, 'Pabna District Admin', 'pabna.admin@digrajshahirange.gov.bd', '$2y$10$K9uXiXjf6Tu.dzr.I8xrnOMw28QK6.ch1WEH561B5/LqtSGPBdeIG', '85214756982', 1, NULL, 2, 6, NULL, NULL, NULL, 'wrW3PdIByheUlPyRZtb1p3KVo9T66xqq8ZU7cq4gL1Z6TBz85wj6UkcSCYkl', '2019-03-04 06:25:48', '2019-03-04 06:25:48', NULL),
(18, 'Sirajganj District Admin', 'sirajganj.admin@digrajshahirange.gov.bd', '$2y$10$IQQHGmKy.EuBW28QunjPKOIAHAlYDQf6m/b3rxWegp.c0poGm33zW', '32185698741', 1, NULL, 2, 7, NULL, NULL, NULL, '0DNPk43h39b019pxds5qalZ9dPibTv5iDfpqz1u9YOQb03kCuuZ1KBQR0cLv', '2019-03-04 06:26:24', '2019-03-04 06:26:24', NULL),
(19, 'Joypurhat District Admin', 'joypurhat.admin@digrajshahirange.gov.bd', '$2y$10$O2HpsMfaXuSYtZdfK2/DfOcf5.qC1oD0IczDo7IkCEVw47R3J4Hvm', '54589654123', 1, NULL, 2, 8, NULL, NULL, NULL, 'xkaTqRansCOHzj6ERb4etetevC62cQOnjoLhbuwMpk8b8VY2hz5qAEFPffY3', '2019-03-04 06:27:00', '2019-03-04 06:27:00', NULL),
(20, 'RRF Admin', 'rrf.admin@digrajshahirange.gov.bd', '$2y$10$4DIwGSyK.1iwbaPliw9rbeXR/WV./JeMuco6I.H/znNBZIxuULP7O', '25896547852', 1, NULL, 2, 9, NULL, NULL, NULL, 'f2bQiSCvQc8kvkuCJDTxw65u5eaU95LyAUOZBueQjTA5R3qtZFka69NeXQp6', '2019-03-04 06:27:53', '2019-03-04 06:27:53', NULL),
(21, 'Godagari Admin', 'godagari.admin@digrajshahirange.gov.bd', '$2y$10$S6oi8j97KopDdZzmgLgdsu.WYkYaVc9spWxDwkefDGtm/trrk9Vfy', '59641258963', 1, NULL, 3, 1, 7, NULL, NULL, '3vLATl3kc7z3bjPJGUwtUW8xp1K6YPEK9a4Pa1bEZjZSDexODGebNVpMzMwc', '2019-03-04 07:28:59', '2019-03-04 07:28:59', NULL),
(22, 'Mohanpur Admin', 'mohanpur.admin@digrajshahirange.gov.bd', '$2y$10$espXPgSmoofg0iI54bomDu/k9n1tn7DuWsETcZza5zvVta6BB3Xy2', '45289645217', 1, NULL, 3, 1, 8, NULL, NULL, NULL, '2019-03-04 07:30:15', '2019-03-04 07:30:15', NULL),
(23, 'Bagmara Admin', 'bagmana.admin@digrajshahirange.gov.bd', '$2y$10$pzZvbA1b.5dcj13c0kQ0/.s/XUGYxUxvgmdlA3L5nq6FN/NO7oqIu', '12578536985', 1, NULL, 3, 1, 9, NULL, NULL, NULL, '2019-03-04 07:31:11', '2019-03-04 07:31:11', NULL),
(24, 'Charghat Admin', 'charghat.admin@digrajshahirange.gov.bd', '$2y$10$Zppc4cGiNrfWsUzooVObPuwgVA3QYQ0WcFpMAL7SYbmEGkiOwQAaS', '25685412585', 1, NULL, 3, 1, 10, NULL, NULL, '6EVuS4myCpGzmUz5qGIp7lFsGDtPFwB557K058SWbhBr4KdrX360qEppmLe3', '2019-03-04 07:32:19', '2019-03-04 07:32:19', NULL),
(25, 'Puthia Admin', 'puthia.admin@digrajshahirange.gov.bd', '$2y$10$636tV8QIrvq3IF6QQ5bCzOrm6AQnoUDF8nBPW1FJL5t55GmAm84zq', '24856237458', 1, NULL, 3, 1, 15, NULL, NULL, NULL, '2019-03-04 07:33:04', '2019-03-04 07:33:04', NULL),
(26, 'Durgapur Admin', 'durgapur.admin@digrajshahirange.gov.bd', '$2y$10$zryD/KQpdsxrIAtDocXhF.te/Df6ONV8kpoZ511dPaLIt.AR4zcy6', '26547854365', 1, NULL, 3, 1, 16, NULL, NULL, NULL, '2019-03-04 07:33:46', '2019-03-04 07:33:46', NULL),
(27, 'Bagha Admin', 'bagha.admin@digrajshahirange.gov.bd', '$2y$10$4JZs3chdvFdTVxjeUimZHuOujHChGnZ7PnGVPioikq48yJOPYSGN6', '5248732158', 1, NULL, 3, 1, 17, NULL, NULL, NULL, '2019-03-04 07:34:40', '2019-03-04 07:34:40', NULL),
(28, 'Tanore Admin', 'tanore.admin@digrajshahirange.gov.bd', '$2y$10$Rv6y.SQbwrOENf5CF25n.uDqOv0P1wKulw/bPuBJelgYE7zlk8iyS', '21876541256', 1, NULL, 3, 1, 14, NULL, NULL, NULL, '2019-03-04 07:36:07', '2019-03-04 07:36:07', NULL),
(29, 'Paba Admin', 'paba.admin@digrajshahirange.gov.bd', '$2y$10$7Vnu4w/dvmCxGdoJpgNGVuUsIKYBWE3uvObMf6FrcXR653gS84W.O', '25964158753', 1, NULL, 3, 1, 18, NULL, NULL, NULL, '2019-03-04 07:37:52', '2019-03-04 07:37:52', NULL),
(30, 'Volahat Admin', 'volahat.admin@digrajshahirange.gov.bd', '$2y$10$RAPjsH0XuSomDliOX.LUqeL1wg70UAlT1reDvfkd1j/rdTvJSeWQa', '54852369456', 1, NULL, 3, 2, 19, NULL, NULL, 'Zt3YVYPQ4DLXthLAXIxZxvCXv9GlLGPiYrVHKq3kpfMIDcKDTqqspRGAHgaK', '2019-03-05 09:26:07', '2019-03-05 09:26:07', NULL),
(31, 'Gomostapur Admin', 'gomostapur.admin@digrajshahirange.gov.bd', '$2y$10$cTwdC5pXREwz5CcILRjHO.TQxTsR2YyUVFEs2A0GnMOHjsnIINxCC', '52149654121', 1, NULL, 3, 2, 20, NULL, NULL, 'HW0WF9nM2HBIDT4xBJ7zqtJFZuzjsEMuCBQEEdqoT6IuqrktmtwURPaOkzvz', '2019-03-05 09:26:42', '2019-03-05 09:26:42', NULL),
(32, 'Nachol Admin', 'nachol.admin@digrajshahirange.gov.bd', '$2y$10$NvyDZk9GCzUzie6HV0mazejIEH7UE2MEqqftB/BJG9m.5Zf1bbto.', '25697214852', 1, NULL, 3, 2, 21, NULL, NULL, 'xKPGraQFDnFljZFQPQO5tuK42Qoij4FqIL14KlMr09iAzw115XbVUc6xuPTh', '2019-03-05 09:27:14', '2019-03-05 09:27:14', NULL),
(33, 'Chapai Nawabganj Sador', 'nawabganj.sador.admin@digrajshahirange.gov.bd', '$2y$10$er3.UkWbiYGXDZmqyb6GkexpQE8emVwX7dTCQpiD7i9W.bf0DfC5G', '26578541236', 1, NULL, 3, 2, 22, NULL, NULL, 'zgTMvJkhRUNRJyOB1Z8Moexo9S65wN9oh7s9nENDmxdLpaaE4UMmhYxiIEz9', '2019-03-05 09:27:47', '2019-03-05 09:27:47', NULL),
(34, 'Shibganj Admin', 'shibganj.admin@digrajshahirange.gov.bd', '$2y$10$B67TR1U9U7s9gfwhZp7IwO8ItevGhNfvH19Si2eVHzgt2b0jXh/oS', '85425685496', 1, NULL, 3, 2, 23, NULL, NULL, 'xL4onXFC39yWXvj4UOdPuYTqJiaGy22iA5CJc6pMQeHPW6cxo54BBre2QilA', '2019-03-05 09:28:19', '2019-03-05 09:28:19', NULL),
(35, 'Natore Sador Admin', 'nator.sador.admin@digrajshahirange.gov.bd', '$2y$10$bMCys3gbMuNxoWYRJ97wEuZ4.lut6hwlCeZnSYFvRP.NOGwTVKUOG', '42569826356', 1, NULL, 3, 3, 24, NULL, NULL, 'ggb08rRjVmIbvKcW9xuYTjXF2SmxGYa4iP8I1aLo68k2KrdpGM37uy6rAkmk', '2019-03-05 09:29:03', '2019-03-05 09:29:03', NULL),
(36, 'Singra Admin', 'singra.admin@digrajshahirange.gov.bd', '$2y$10$wrSVUDTApcjH0Rto5ut0wecrG61mGl4N/BKBv0qrT4sPwMn5LMqhK', '56249736514', 1, NULL, 3, 3, 25, NULL, NULL, 'DidWLLujNfccXD7wf82bNzHTQwaRiau0NjGCt2FhYJz1sOXgwMNGxyEU41Ug', '2019-03-05 09:29:35', '2019-03-05 09:29:35', NULL),
(37, 'Boraigram Admin', 'boraigram.admin@digrajshahirange.gov.bd', '$2y$10$fveDxqcep/97iyL7u4SOX.IMwDFvBXsA/YCmj0wwti1KWDeCPucGm', '26448347269', 1, NULL, 3, 3, 26, NULL, NULL, 'sAfdHxvPwMMO5SRdjArxTZYNp3zDqJfQMigPwGCPcWxCkvTMn8O6F54moAJl', '2019-03-05 09:30:15', '2019-03-05 09:30:15', NULL),
(38, 'Bagatipara Admin', 'bagatipara.admin@digrajshahirange.gov.bd', '$2y$10$a8YkR1I36MX0.h6aCXjyAOYCwvQdVrz5BpxSUiTYqpfRR3V3ovRoO', '45297635482', 1, NULL, 3, 3, 27, NULL, NULL, '8A14GByGX3vHe53bOG14QQ53p87KtXMXkzPIWK2HZTBAfQ7OMQmsvXn96WBb', '2019-03-05 09:30:49', '2019-03-05 09:30:49', NULL),
(39, 'Lalpur Admin', 'lalpur.admin@digrajshahirange.gov.bd', '$2y$10$qPJ3wV8hz9mxXdfD7HpSluYpxFFetz1PYNph0dEWhvN6OjsaQcDJu', '25641896541', 1, NULL, 3, 3, 28, NULL, NULL, 'l7NNAocpUQLdL6ZbH0xBFYq9hiyj5jxDuZ8Lu2CtI7hO8cevhyyue3QbFUWP', '2019-03-05 09:31:23', '2019-03-05 09:31:23', NULL),
(40, 'Gurudaspur', 'gurudaspur.admin@digrajshahirange.gov.bd', '$2y$10$WAfUJSrlJEfDUYGHGkOSbuJGc3pK6oAJ73.bsFXPgK69S/ZwnWkCO', '28964258963', 1, NULL, 3, 3, 29, NULL, NULL, 'MRhWRxnTWCfMSOt62CzfENgDHKesRrtOOEy8vyTNYV0clnKwIuCsA5L97EVw', '2019-03-05 09:31:54', '2019-03-05 09:31:54', NULL),
(41, 'Noldanga', 'noldanga.admin@digrajshahirange.gov.bd', '$2y$10$UIEVrNtpVlGLPRkcXCiu6umYN52s/nDs4mHUE1DkEVpTK5WiGecli', '24169687524', 1, NULL, 3, 3, 30, NULL, NULL, 'g6S5fyCR3fZshRrh7GtOTqKlj8LS7ubmQ1qbtFq1qBkaAEOMmhHj2jn2Wq9k', '2019-03-05 09:32:26', '2019-03-05 09:32:26', NULL),
(42, 'Kahalu Admin', 'kahalu.admin@digrajshahirange.gov.bd', '$2y$10$ohAN.1l5NUz7U7uYbAeNveBtv8zQYZXfw6X80qHUUCSYR4iXvCM9K', '26452896541', 1, NULL, 3, 4, 31, NULL, NULL, 'RgLhIzTNTfpyBtMvUokgnMhiQmVkTLqLuBD0A3r5wg946uNZWUh6zNBrEiRP', '2019-03-05 11:01:04', '2019-03-05 11:01:04', NULL),
(43, 'Bogura Sador Admin', 'bagura.sador.admin@digrajshahirange.gov.bd', '$2y$10$IXnKzwEbLmHwJYpygDPAKOHuSMQt1oOzz4bJOVkKvohfeKPWKxXoG', '84236974259', 1, NULL, 3, 4, 32, NULL, NULL, '5IcrjLnQarWfgvnCiXSOESbbOGkooPanip0UFQ10stMIic5dZUtBmjpqoamL', '2019-03-05 11:01:41', '2019-03-05 11:01:41', NULL),
(44, 'Sariakandi Admin', 'sariakandi.admin@digrajshahirange.gov.bd', '$2y$10$RXTU1FK8rEwWNyeiX1myh.HcnX9/pv03OP8Emhd3JztPTWtmgmh.W', '18632587423', 1, NULL, 3, 4, 33, NULL, NULL, 'UuINkmvJaWO7fod5bLxSaDQOy4AUfpVDHC4hO9ixVhXH7rmpzzuGxh61CN9f', '2019-03-05 11:02:34', '2019-03-05 11:02:34', NULL),
(45, 'Sajahanpur Admin', 'sajahanpur.admin@digrajshahirange.gov.bd', '$2y$10$0gSYNSsRgoxH2slW923.k.M20wD5ht7uWuFBij9D5AF7mbFCYRkmO', '48235685736', 1, NULL, 3, 4, 34, NULL, NULL, 'RuJX7t5zxisUWzt9zcermoGplNaXesdfwmZ4mZvNm2akTTX9mRUsZEbHPmSt', '2019-03-05 11:03:14', '2019-03-05 11:03:14', NULL),
(46, 'Dupchachia Admin', 'dupchachia.admin@digrajshahirange.gov.bd', '$2y$10$PcgKkrpwOmF5L74z0EvTK.5minXYxF42E2RtInZyN38wgKXzAZ2W2', '72586641896', 1, NULL, 3, 4, 35, NULL, NULL, 'nt1Yr0MCy8Bc6rWdgesN79tSbtfFahFj2uKpDEjc9Dnl8AeM3hn9xbfYebDh', '2019-03-05 11:03:50', '2019-03-05 11:03:50', NULL),
(47, 'Adomdighi Admin', 'adomdighi.admin@digrajshahirange.gov.bd', '$2y$10$JR4XcU/mMHtU0gQkOuI3E.xK5MY8YoJn9Yw0efX3hsK9j3JpPcV7C', '63555748932', 1, NULL, 3, 4, 36, NULL, NULL, 'O6NykARf3MKQIN5jxROComwV1XwY8I11vdISLpb0F4llMexc1CTZ75zWOmxc', '2019-03-05 11:04:41', '2019-03-05 11:04:41', NULL),
(48, 'Nondigram Admin', 'nondigram.admin@digrajshahirange.gov.bd', '$2y$10$8ZXgXqxMGeuwunlGS8o0j.jXowRApyA5tu12Aj7NrlYHLe64PnrxC', '42228964899', 1, NULL, 3, 4, 37, NULL, NULL, '1dYGsz0LjoQQhOV3bMmofXQvUp3wW8vBemZQpsAeKnVaZz1Y8DZQIV2hiu5c', '2019-03-05 11:05:48', '2019-03-05 11:05:48', NULL),
(49, 'Sonatola Admin', 'sonaltola.admin@digrajshahirange.gov.bd', '$2y$10$X2.rkWsRdKR8k8iboPk9mem9SYlCh0bVGBINk2kX1RlSAwlcErM5G', '72566325846', 1, NULL, 3, 4, 38, NULL, NULL, 'qS5zIYvxD1kP1E5JlY6JpKDTYmXNGcgRhacdMkutObLptJJC3ZKx31dxjjG2', '2019-03-05 11:06:28', '2019-03-05 11:06:28', NULL),
(50, 'Dhunot Admin', 'dhunot.admin@digrajshahirange.gov.bd', '$2y$10$S3Jn8ZNo70KeZgH5gGdDOum7NqsMaxZWUwum3Ceh81o6PpTbQ8WEa', '42228633247', 1, NULL, 3, 4, 39, NULL, NULL, 'Dsq6vAdbXbD2TtCRa8j8pWj1AhCG4m87xt0sei2po7wqGZwvMHMlsGNkAs2V', '2019-03-05 11:07:34', '2019-03-05 11:07:34', NULL),
(51, 'Gabtoli Admin', 'gabtoli.admin@digrajshahirange.gov.bd', '$2y$10$Yfq8S3eZUSc7TmPtBlE3aeg6UxwnJG7CiO.JiiOx4Eoua8J4DcqS6', '85333159647', 1, NULL, 3, 4, 40, NULL, NULL, 'XLa9s83UeJSKONzrCJBtrA2x5YmalMjrtckojIkfOk2dD5ccDDVxn6xIy8x7', '2019-03-05 11:08:19', '2019-03-05 11:08:19', NULL),
(52, 'Sherpur Admin', 'sherpur.admin@digrajshahirange.gov.bd', '$2y$10$KnM3oLieoUA36L5yo.9SBeBZZRAsSXrq6T.s6CGnzsnQSR9Cinniy', '18856934785', 1, NULL, 3, 4, 41, NULL, NULL, 'qFaJxakLCvnuIqqrMgop1ax1Gl5wBGTkGqlcgXcXwCMN1qPLwEynMmltIOH9', '2019-03-05 11:08:53', '2019-03-05 11:08:53', NULL),
(53, 'Shibganj Admin', 'shibganj.bog.admin@digrajshahirange.gov.bd', '$2y$10$frGl30QARxxmsEyoOPbXKun9Jl23tkolG/Lav9Uv3Zf4G4govnxpa', '26842599472', 1, NULL, 3, 4, 64, NULL, NULL, 'K1pSiX6ZTVZXXTO6r1hHAsBVb8k2eb1kE5MZg7mN4Arcgog74dYiOYNTUwgu', '2019-03-05 11:10:01', '2019-03-05 11:10:01', NULL),
(54, 'Mohadebpur Admin', 'mohadebpur.admin@digrajshahirange.gov.bd', '$2y$10$Y.v0iHyqoLhwEQeAaceKRO2gFoD4p29dbYvz/Q.6SygNkLJ7tg6P.', '58863288941', 1, NULL, 3, 5, 42, NULL, NULL, 'NCfi7EKvVQT286UVuclUuMG8RSG0sGEEmKdLVlirjA00trYcCIEF4qxrrGQn', '2019-03-05 11:12:32', '2019-03-05 11:12:32', NULL),
(55, 'Bodolgachi Admin', 'bodolgachi.admin@digrajshahirange.gov.bd', '$2y$10$xa3m/PbbhLQ.UJvfDbR1qOcOEBl2aMcacF3ShkQjlFM4Z/RDOkoxK', '52236489259', 1, NULL, 3, 5, 43, NULL, NULL, 'prWho6YHzFir0IBGNCzsB9w14xrJT1wmcxC8lEWVML8ViLFooRh012pLP75g', '2019-03-05 11:13:09', '2019-03-05 11:13:09', NULL),
(56, 'Potnitola Admin', 'potnitola.admin@digrajshahirange.gov.bd', '$2y$10$5yHWFii.6oKDaT0AmtNr3O3iKaQ..b4H0VMp1Ve.iccxars2zysFS', '57762954412', 1, NULL, 3, 5, 44, NULL, NULL, 'pJRVtlFqSzWgGcKZisIfntxgrMigxNALy7m90W2ffialwnhzeoHj8so5O1aG', '2019-03-05 11:13:50', '2019-03-05 11:13:50', NULL),
(57, 'Dhamoirhat Admin', 'dhamoirhat.admin@digrajshahirange.gov.bd', '$2y$10$2I4xN.rEyrTGmXHwjRKhouKjSbuXgKHs6QN7OYI0UyiehLtcsR2vW', '15563289947', 1, NULL, 3, 5, 45, NULL, NULL, 'Asitw4iYFwDCmOH5hSIKPjWZ6da08hvg812kH6NaALr89LexgmK2N7zPYsZc', '2019-03-05 11:14:30', '2019-03-05 11:14:30', NULL),
(58, 'Niyamotpur Admin', 'niyamotpur.admin@digrajshahirange.gov.bd', '$2y$10$aLzNEJfRVdZgmzCtA1eg5ezGrEshgnirXkteMZ2ahIrD9kgnyIoZa', '62287426922', 1, NULL, 3, 5, 46, NULL, NULL, 'aNhHSmhxpAyZRBq4EQtCpvmxTaO7uKklyAyEe54wn0mczK61jsYQDDHe0P58', '2019-03-05 11:15:10', '2019-03-05 11:15:10', NULL),
(59, 'Manda Admin', 'manda.admin@digrajshahirange.gov.bd', '$2y$10$3GJkD8MVynemmw2mJWcNeulQeHX0jrLKJLa7XFnbFU2QndbJnqsoi', '82254963254', 1, NULL, 3, 5, 47, NULL, NULL, 'r4me50elMCLK6i746YfYPkG8YrZtna2jXwN4HVn6IeV1na68vOw2goSHzYxz', '2019-03-05 11:15:49', '2019-03-05 11:15:49', NULL),
(60, 'Atrai Admin', 'atrai.admin@digrajshahirange.gov.bd', '$2y$10$m0Sqc7GsxnD8AaAkdlzGKu6wJCngsAU4oPlC3s/KnFMWS7ihJCro6', '49985266647', 1, NULL, 3, 5, 48, NULL, NULL, 'PDIwFh0INQaZDyDLfIAWnrnCcUJA906NpCBfIem9mn4HhfJ6wA0CgUS2ccrs', '2019-03-05 11:16:23', '2019-03-05 11:16:23', NULL),
(61, 'Raninagar Admin', 'raninagar.admin@digrajshahirange.gov.bd', '$2y$10$a7aMXRRbPXpA5pioZ/4rnuL8n.zEIRFxmt.ZvXwfe6vpFEkMorP0y', '82236944587', 1, NULL, 3, 5, 49, NULL, NULL, 'ptc6ARwd6cS8CV2wZRlWhGpktt2j0KfVfdREO3ZRhQRrlAtzTQBoHuzkrLPA', '2019-03-05 11:17:01', '2019-03-05 11:17:01', NULL),
(62, 'Nagaon Sador Admin', 'nao.sador.admin@digrajshahirange.gov.bd', '$2y$10$X53a.UBCXys9f9qEMG/EUOc8/2/Gzpkh5jFM7yrdnM03tyDzpai.C', '82265982214', 1, NULL, 3, 5, 50, NULL, NULL, '4xgxLMacsZdI9kF31GdbsmVz63p4ALxkVMnilhnVJ6k6riwuOGCkC23GVSdO', '2019-03-05 11:17:36', '2019-03-05 11:17:36', NULL),
(63, 'Porsha Admin', 'porsha.admin@digrajshahirange.gov.bd', '$2y$10$FvJDDOzFOiBE/XkX4Jr64u2TjsRcQ.q1vz3ZcvlToml6XmgF8keNy', '61148562258', 1, NULL, 3, 5, 51, NULL, NULL, 'qVGuDlI7BYfxIcCGCPWcSiG6yYT56asvpnfgIC34NJ0Ijr10MQJj9o9MR5Oc', '2019-03-05 11:18:15', '2019-03-05 11:18:15', NULL),
(64, 'Sapahar Admin', 'sapahar.admin@digrajshahirange.gov.bd', '$2y$10$deNXyitapyloMhaLOE3AbusW6ZoDFhSPzxYJZIN1RgPSrjCHuf8uO', '29984253367', 1, NULL, 3, 5, 52, NULL, NULL, '6xlWK5ubpE5zlQ1sX9yVh8AHfE4WqDZZZaunifSlWvNu8ayuHCBScRiFdS1n', '2019-03-05 11:18:48', '2019-03-05 11:18:48', NULL),
(65, 'Sujanagar Admin', 'sujanagar.admin@digrajshahirange.gov.bd', '$2y$10$2IgUfSluQS.JQ1OAudJ10OIzJ0bu6oqZ4nWrxHI82PpayAna7abu2', '48856325281', 1, NULL, 3, 6, 53, NULL, NULL, 'dLPUqCow1ZiRZftmRibor7HeWjViPKeamIinyhd13NtthOq3Yv6cfT1CKdPi', '2019-03-05 11:20:14', '2019-03-05 11:20:14', NULL),
(66, 'Ishwardi Admin', 'ishwardi.admin@digrajshahirange.gov.bd', '$2y$10$fwIR8TvWhJ0pU40dko/KueImpur/3FgM4LXfO.zhReyXFhCkOtctC', '82445632578', 1, NULL, 3, 6, 54, NULL, NULL, 'Nk7bp31JX1x5JHMDIPEDWfBg3T3HwZVJt7Mf4UfmdRbmkDzb2hwJtnVMpTvy', '2019-03-05 11:20:50', '2019-03-05 11:20:50', NULL),
(67, 'Vangura Admin', 'vangura.admin@digrajshahirange.gov.bd', '$2y$10$vHdPcJXyyJ3t4Ngp12xpUe2NqstugRbUoV2kYDTiwaVAkPeuyWmMy', '96641258963', 1, NULL, 3, 6, 55, NULL, NULL, 'BnsdCj05Y0MgfYn9Ds75imTTSYgl2nHdq0NqrGMvnUBgNOk2POegs2pJfzxX', '2019-03-05 11:21:32', '2019-03-05 11:21:32', NULL),
(68, 'Pabna Sador Admin', 'pabna.sador.admin@digrajshahirange.gov.bd', '$2y$10$ZvvYO9iboiKBCtetPv1nKeNkO9O2L57iNPWBwnNEy0IS1yZMm6tSG', '24485965228', 1, NULL, 3, 6, 56, NULL, NULL, 'GbNuyC14uY5HBBrVmRhOqNCvLjx6j2cyAiJAxGtoKrJkCxUt8vslacb8FX5r', '2019-03-05 11:23:03', '2019-03-05 11:23:03', NULL),
(69, 'Bera Admin', 'bera.admin@digrajshahirange.gov.bd', '$2y$10$2aexd1eIiNki8CaGzswEpOwXuIqUrQIouOL8A245eqyEThKZZ5I5y', '57736955478', 1, NULL, 3, 6, 57, NULL, NULL, NULL, '2019-03-05 11:23:42', '2019-03-05 11:23:42', NULL),
(70, 'Atghoria Admin', 'atghoria.admin@digrajshahirange.gov.bd', '$2y$10$s5oAdfbYwAW4WWAwt/cVM.qg8tLo0nS9UKNbGYqjuC4FA6f9mI4Gq', '42565685496', 1, NULL, 3, 6, 58, NULL, NULL, '24b9FVHxlrOALIzGsXqNLaamMd1VCGjTytkZcDLL8QIhFT6MQhDhg6DZB1nb', '2019-03-05 11:24:25', '2019-03-05 11:24:25', NULL),
(71, 'Chatmohor Admin', 'chatmohor.admin@digrajshahirange.gov.bd', '$2y$10$bmc3HFbSiVdMkA/XoMGk.Oa/EUYtUSDuXq9aMKMd0Ok4XX9d72IJS', '41256647528', 1, NULL, 3, 6, 59, NULL, NULL, '2B2xfjlResmr2bNPlqBs7nz9XITxHmyiKAn5LeEQ19CCQhgFpTqzG3alGuIl', '2019-03-05 11:25:07', '2019-03-05 11:25:07', NULL),
(72, 'Sathiya Admin', 'sathiya.admin@digrajshahirange.gov.bd', '$2y$10$u90M2pPUn01kShIqAx80IeKQ31npUQlglegk3YO7e22lYwwEW285a', '27759654155', 1, NULL, 3, 6, 60, NULL, NULL, '7OUxC5ZuG8jriHaBG9uSMsChbSDaYKCAs1Yhet3jXxiQBg1t5ibCVsfXvxp7', '2019-03-05 11:26:03', '2019-03-05 11:26:03', NULL),
(73, 'Faridpur Admin', 'faridpur.admin@digrajshahirange.gov.bd', '$2y$10$eEyFofZpsKOHUT7WYa5HjeWSh6NgwXnnUCN.ZufHb2/0Hc8t3ZILm', '24586447829', 1, NULL, 3, 6, 61, NULL, NULL, 'eBhyeB4wfItjVWhcfImVA0Csedctg2L9WDJhWaQ7y4JZ6dsa885VUCB5lCL8', '2019-03-05 11:26:55', '2019-03-05 11:26:55', NULL),
(74, 'Ataikula Admin', 'ataikula.admin@digrajshahirange.gov.bd', '$2y$10$KUPwQNj.5oM/cRCWDZ0EguR95/iZU4.M9Wr9h2YFv8vVZIXtUDl7i', '48856254755', 1, NULL, 3, 6, 62, NULL, NULL, '5nOReK13DtztPsyuGo8956cFEiJGVgtexnx0tnJ2EQ5OH4fL48QuegufdkSq', '2019-03-05 11:27:44', '2019-03-05 11:27:44', NULL),
(75, 'Aminpur Admin', 'aminpur.admin@digrajshahirange.gov.bd', '$2y$10$KIACz63/HbU6egVDICio5.9t3bNCzROmaGsCa15RXYbD7SoiLy2gW', '72694528961', 1, NULL, 3, 6, 63, NULL, NULL, 't9vLQU9xZqsVplCsL0qb02oSXgAFcvSeMVHGVfUilaYrEMt0a6MPjPeESl60', '2019-03-05 11:28:31', '2019-03-05 11:28:31', NULL),
(76, 'Sirajganj Sador Admin', 'sirajganj.sador.admin@digrajshahirange.gov.bd', '$2y$10$W0soPJE6WC6tco3xeStT9efB4bTdo2HhroPyDSynDL9ihuLz/Xb1W', '47256628741', 1, NULL, 3, 7, 65, NULL, NULL, 'P5j10SvfDBN6U64QPgxdYyJEKWkXdFy3k6dSZ6vGUsCRsn6LiHGriivVztZZ', '2019-03-05 11:49:04', '2019-03-05 11:49:04', NULL),
(77, 'Shahjadpur Admin', 'shahjadpur.admin@digrajshahirange.gov.bd', '$2y$10$wEWT.zhciQKXQ5NxHdwtve716jaFla.hTYxt/ZfDKvXJzb5S4Y7ae', '58221465821', 1, NULL, 3, 7, 66, NULL, NULL, 'EcsIJ9X7BxEX1FhGMAAHR8uAAvCfBPkvTpRUomh6nWMJxNIRZPoCeXoBUZeB', '2019-03-05 11:49:47', '2019-03-05 11:49:47', NULL),
(78, 'Ullapara Admin', 'ullapara.admin@digrajshahirange.gov.bd', '$2y$10$ocQVdt4QrzlWCp..RrpK4.g16F6ltzSHmTqEkZvG/DQANkJmHbD7m', '42561158736', 1, NULL, 3, 7, 67, NULL, NULL, 'U6CMAgVFT3W9KFaiX1DnVDBWRXBDbJl07NsgGgbj2Jb5khA4FZUUNUiuoPSx', '2019-03-05 11:50:18', '2019-03-05 11:50:18', NULL),
(79, 'Chouhali Admin', 'chouhali.admin@digrajshahirange.gov.bd', '$2y$10$bUoQn.Ma4NazGJw/rsVHzuemloCW9LcHLrHYrvnXBYaA.jvS3493C', '18634952785', 1, NULL, 3, 7, 68, NULL, NULL, 'UXG18tLUdghf0PdCPWrPxlTW4jYbrtPlyvLTG1l66sXoHlQDQpUOnFcRdc94', '2019-03-05 11:50:50', '2019-03-05 11:50:50', NULL),
(80, 'Tarash Admin', 'tarash.admin@digrajshahirange.gov.bd', '$2y$10$.o57TxYB26yaFUX3TV01v.lwoRvXpDLdgGauGcnknKvmkCj2rfUGa', '42258631455', 1, NULL, 3, 7, 69, NULL, NULL, 'BSXqLewhFwkhtWgdT5MXh1dtBr2rWayK6uOq3D0U0bOtDySlKE3xIBzCuZOF', '2019-03-05 11:51:18', '2019-03-05 11:51:18', NULL),
(81, 'Kazipur Admin', 'kazipur.admin@digrajshahirange.gov.bd', '$2y$10$L0YZCTii/Z4SGpuy/eOl5ugyiN2d1N8THjcqOTIJv8il4F2bvYsuS', '18665425778', 1, NULL, 3, 7, 70, NULL, NULL, 'Kd2PB28TJ99nQsmFZyGTHW8o2NBsFUz4Iux4snxzTknvVR8FCUM33UZyH6xQ', '2019-03-05 11:51:53', '2019-03-05 11:51:53', NULL),
(82, 'Kamarkhand Admin', 'kamarkhand.admin@digrajshahirange.gov.bd', '$2y$10$bMmEJ09vEeSKNaa.OiUG.uM.OMRUSmzpgDu550nvczkBHYrCPFj1i', '63778545962', 1, NULL, 3, 7, 71, NULL, NULL, 'uwoPrXFynw4gxuJVdPw86RCUX9E7bcCMz5N3stBAieZbREsf3iNDQpFoFO7H', '2019-03-05 11:52:27', '2019-03-05 11:52:27', NULL),
(83, 'Raiganj Admin', 'raiganj.admin@digrajshahirange.gov.bd', '$2y$10$rNd3iAOyvtESpDq33NqN5.f/KhsXW5qxciKaDdtu1Btfd/mdw1aQO', '94256418931', 1, NULL, 3, 7, 72, NULL, NULL, 'SfowCAZk9iMvA4dqLTnK5KuXvGna815GBy5SC1Cr1Ul8tOGUV6bNjebUvoGL', '2019-03-05 11:53:01', '2019-03-05 11:53:01', NULL),
(84, 'Belkuchi Admin', 'belkuchi.admin@digrajshahirange.gov.bd', '$2y$10$KGFEKTE6hrNYf3KkMIBIVeWq9LoUEFLdkPXlowP5c.d3/URt8pWh.', '86195985412', 1, NULL, 3, 7, 73, NULL, NULL, 'IpQ8J3YQ7PkICOzlVd6uGzFSkBpW2acrKwovuuJ3tAxKgZZwpYfqvdEFQ9An', '2019-03-05 11:53:53', '2019-03-05 11:53:53', NULL),
(85, 'Jamuna Bridge Poschim Admin', 'jamuna.admin@digrajshahirange.gov.bd', '$2y$10$009Q3XlP257iv1qhwaOTpuH4rECIEm7C4ZqZIS9UUY0yU/39GGA6S', '64425899641', 1, NULL, 3, 7, 74, NULL, NULL, 'eSkudmFWpMripmbUwfn1BoMxDoF9xR3RxjuYGFaUxcRk3aGb2zpPfYxHIBTf', '2019-03-05 11:54:31', '2019-03-05 11:54:31', NULL),
(86, 'Salanga Admin', 'salanga.admin@digrajshahirange.gov.bd', '$2y$10$A68IQ0MC.tYggu/K7rYab.CleyL6YLVMxwy9pyND7FwhQYqxGtiPa', '24523995478', 1, NULL, 3, 7, 75, NULL, NULL, 'dbjvelnQWo2ytWWRt8eFPTgP9uQEsUyo5UVQLvrWe86I80LeZ56vwqxa06u4', '2019-03-05 11:55:05', '2019-03-05 11:55:05', NULL),
(87, 'Enayetpur Admin', 'enayetpur.admin@digrajshahirange.gov.bd', '$2y$10$.8j73wS1TeOiDaUDKuiOHuLNi3B5uMwZUj5XE7dojBf8ejRJQvk9y', '42586645721', 1, NULL, 3, 7, 76, NULL, NULL, 'q9h8Kp2hc8tldt2sx1BWioAkaTF9amYeL73Zcjf0KdaK9djgfTxXqgcr5wob', '2019-03-05 11:55:42', '2019-03-05 11:55:42', NULL),
(88, 'Joypurhat Sador Admin', 'joypurhat.sador.admin@digrajshahirange.gov.bd', '$2y$10$xoDQCawMmk57KQRLAq2zD.UeoIdhA7/ZBnbl/9LDxOnStjbgMOm9u', '81564233699', 1, NULL, 3, 8, 77, NULL, NULL, '6veehBDZ69adtRVXI6BkVsO4Oct58YtGx5Fz45h1jhKRfLpBL2ei3aw6MV1I', '2019-03-05 11:57:14', '2019-03-05 11:57:14', NULL),
(89, 'Kalai Admin', 'kalai.admin@digrajshahirange.gov.bd', '$2y$10$swhBFhhQsD2VlxbMUNakvOlWf/qTp7TOFo2TOgaB4S6gxtfZhdMX6', '64587112596', 1, NULL, 3, 8, 78, NULL, NULL, 'AA8QPi4EUmsa4alp8VaEAQbRCKbloMWZ9lEX39oIkAlhsgtFd8TkgiLClLqW', '2019-03-05 11:57:48', '2019-03-05 11:57:48', NULL),
(90, 'Khetlal Admin', 'khetlal.admin@digrajshahirange.gov.bd', '$2y$10$dip77Ce8TLjYkMjk/O2ajOJDGRjDjs1Y/z/IrUc8E106mkPbA1mQW', '92536844152', 1, NULL, 3, 8, 79, NULL, NULL, 'DUtEgm6Pxavvm2aPJOj8lee09Fd16T2MQwPw9ooUlWpy6yjajVkDVVKqDoHZ', '2019-03-05 11:58:21', '2019-03-05 11:58:21', NULL),
(91, 'Akkelpur Admin', 'akkelpur.admin@digrajshahirange.gov.bd', '$2y$10$VS3NMBytJU7zKCggsu.dk.kJPqyKr4qC7d1DxAxQfXLssIF3pQnL.', '94222587236', 1, NULL, 3, 8, 80, NULL, NULL, 'sxvTwMsGqebWHA8f5pLIRblrCGqqIHKE8YwLhjLqjtrm8ARLsN8XeBDnIU0L', '2019-03-05 12:00:07', '2019-03-05 12:00:07', NULL),
(92, 'Pachbibi Admin', 'pachbibi.admin@digrajshahirange.gov.bd', '$2y$10$WclNh.Q24E/55pJJjsYlz.3kek0aL5xIT649MD/wS0wu4hd1A/ILm', '42568874992', 1, NULL, 3, 8, 81, NULL, NULL, 'rXbrgdFGWMNqaHVqKJibUYcYrhfGLcS84ktPx3gwsCSIEKbowizLuISGPoky', '2019-03-05 12:00:44', '2019-03-05 12:00:44', NULL),
(94, 'PBI SP office Admin', 'pbi.admin@digrajshahirange.gov.bd', '$2y$10$OEp72UPAqJXgmhPY.eapge1TecpgNKG8IVcDth/PILtyyE3M..CGS', '4524474552', 1, NULL, 2, 17, NULL, NULL, NULL, 'Ze7xxppi0ZbDUOSyib1umCsTQEamS6VIQElREI8Xrem4Yxi7vxsBgRnj51tm', '2019-08-05 01:02:11', '2019-08-05 01:02:11', NULL),
(95, 'Highway Police Admin', 'highway.admin@digrajshahirange.gov.bd', '$2y$10$6AHeSGhPJjxt7R7eKb0b/uBNFtIy3RIgIFy/wDgJZvlPCSjGp1scC', '4258658745', 1, NULL, 2, 18, NULL, NULL, NULL, '9ZH1LgYHl0CymbtQV4W0acSeDJwAIzXzOma9rn8MTP1SseRVUHg0GRTDmZdD', '2019-08-05 01:17:02', '2019-08-05 01:17:02', NULL),
(96, 'CID Admin', 'cid.admin@digrajshahirange.gov.bd', '$2y$10$bA692kRNAUEnagfZDtRCauveJ8MbIqUaN8gM7Gs7zM5E0OdDY32Da', '4452658745', 1, NULL, 2, 16, NULL, NULL, NULL, NULL, '2019-08-05 01:20:21', '2019-08-05 01:20:21', NULL),
(97, 'Md. Ziaur Rahman', 'ziacctc@yahoo.com', '$2y$10$FFzNvPaNduv1ldopB0cmJesLIpLWiAHu8j5Zx7zMt5RoO9mLYkpmK', '01713903946', 1, 'Assistant Sub Inspector', 1, NULL, NULL, NULL, NULL, 'lEnKVPp51UtnjQV9igIKy37z5ifWjAhjxFafHQZfX5AEWQCUP6pHjmvlCAiD', '2019-08-05 02:11:24', '2019-08-05 02:11:24', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
