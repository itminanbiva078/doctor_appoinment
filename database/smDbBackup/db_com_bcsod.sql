-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2019 at 12:49 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_com_bcsod`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `firstname` varchar(191) DEFAULT NULL,
  `lastname` varchar(191) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `firstname`, `lastname`, `password`, `image`, `role_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mahmudmart', 'admin@gmail.com', 'BCS', 'OD', '$2y$10$7uGrDkSV9ywM9g0lWfQm9OyKccTiFQcWsid5zyjT0AkXT5PYFaICO', '', 1, 1, '95vEopTn7zAnFob4goZXbeEOvTB8R4VWE9BSiAci2yeLGeIwL4j2H8URrAaJ', NULL, '2019-08-19 10:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `admins_metas`
--

CREATE TABLE `admins_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins_metas`
--

INSERT INTO `admins_metas` (`id`, `admin_id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'user_online_status', '1', '2019-04-18 09:40:36', '2019-08-07 10:43:08'),
(2, 1, 'user_last_activity', '2019-08-07 12:18:45', '2019-04-30 08:45:31', '2019-08-07 06:18:45'),
(3, 1, 'mobile', '01926672042', '2019-07-10 10:06:55', '2019-07-10 10:06:55'),
(4, 1, 'gender', NULL, '2019-07-10 10:06:55', '2019-07-10 10:06:55'),
(5, 1, 'skype', NULL, '2019-07-10 10:06:55', '2019-07-10 10:06:55'),
(6, 1, 'whats_app', NULL, '2019-07-10 10:06:55', '2019-07-10 10:06:55'),
(7, 1, 'street', NULL, '2019-07-10 10:06:55', '2019-07-10 10:06:55'),
(8, 1, 'city', 'Dhaka', '2019-07-10 10:06:55', '2019-07-10 10:06:55'),
(9, 1, 'state', 'Dhaka', '2019-07-10 10:06:55', '2019-07-10 10:06:55'),
(10, 1, 'zip', NULL, '2019-07-10 10:06:55', '2019-07-10 10:06:55'),
(11, 1, 'country', 'Bangladesh', '2019-07-10 10:06:55', '2019-07-10 10:06:55'),
(12, 1, 'extra_note', NULL, '2019-07-10 10:06:55', '2019-07-10 10:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `short_description` text,
  `long_description` longtext,
  `image` text,
  `slug` varchar(191) NOT NULL,
  `is_sticky` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comment_enable` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) DEFAULT NULL,
  `meta_key` text,
  `meta_description` text,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `short_description`, `long_description`, `image`, `slug`, `is_sticky`, `comment_enable`, `comments`, `views`, `likes`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Organic Food', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'blog-thumbnail-2.jpg', 'formal-full-shirt', 0, 1, 1, 40, 0, NULL, NULL, NULL, 1, 1, 1, '2019-05-13 04:54:13', '2019-08-07 14:40:55'),
(2, 'blog new', 'uries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>uries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true gen</p>', 'blog-details-1.jpg', 'lorem-ipsum-is-simply-du', 0, 1, 0, 38, 0, NULL, NULL, NULL, 1, 1, 1, '2019-05-13 06:32:07', '2019-08-07 12:37:58'),
(3, 'blog new for product', 'uries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.uries, but also the leap into electronic', '<p>typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.uries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.uries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.uries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'blog-thumbnail-1.jpg', 'blog-new-for-product', 0, 1, 0, 30, 0, NULL, NULL, NULL, 1, 1, 1, '2019-05-13 06:34:40', '2019-08-08 04:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text,
  `image` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `website` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `priority` int(11) DEFAULT NULL,
  `is_featured` int(10) UNSIGNED DEFAULT '0',
  `total_products` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `seo_title` varchar(191) DEFAULT NULL,
  `meta_key` text,
  `meta_description` text,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `description`, `image`, `slug`, `website`, `views`, `priority`, `is_featured`, `total_products`, `created_by`, `modified_by`, `seo_title`, `meta_key`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ryvita', NULL, '1552818566.ryvita.jpg', 'ryvita', NULL, 0, 10, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-04-18 11:14:26', '2019-07-06 10:54:40'),
(2, 'Tesco', NULL, '1552819018.tesco.jpg', 'tesco', NULL, 0, 1, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-04-29 11:43:51', '2019-07-28 06:57:29'),
(3, 'ASDA', NULL, '1552819114.asda.jpg', 'asda', NULL, 0, 12, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-04-29 11:44:39', '2019-07-06 10:55:51'),
(4, 'Quaker', NULL, '1552821510.quaker.jpg', 'quaker', 'mm.com', 0, 14, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-05-09 05:23:28', '2019-07-06 10:56:32'),
(5, 'Alpen', NULL, '1552819209.alpen.jpg', 'alpen', NULL, 0, 13, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-06-19 09:03:24', '2019-07-06 10:56:18'),
(6, 'Jordans', NULL, '1552818549.jordans.jpg', 'jordans', NULL, 0, 9, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-06-19 09:19:39', '2019-07-06 10:54:13'),
(8, 'Cadbury', NULL, '1552807416.cadbury.jpg', 'cadbury', NULL, 0, 7, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-06-19 09:22:18', '2019-07-06 10:53:00'),
(9, 'kellogg\'s', NULL, '1552807331.kelloggs.jpg', 'kelloggs', NULL, 0, 6, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-06-19 09:23:24', '2019-07-06 10:52:37'),
(10, 'heinz', NULL, '1552807119.heinz.jpg', 'heinz', NULL, 0, 5, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-06-19 09:24:29', '2019-07-06 10:52:12'),
(11, 'Hellmann\'s', NULL, '1552806966.b1.jpg', 'hellmanns', NULL, 0, 4, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-06-19 09:25:16', '2019-07-06 10:51:44'),
(12, 'Schwartz', NULL, '1552806934.schwartz.jpg', 'schwartz', NULL, 0, 3, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-06-19 09:25:59', '2019-07-07 03:48:23'),
(13, 'Jacobs', NULL, '1552730915.b2.jpg', 'jacobs', NULL, 0, 2, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-06-19 09:26:34', '2019-07-06 10:48:27'),
(14, 'M-Vitie\'s', NULL, '1552730675.b1.jpg', 'm-vities', NULL, 0, 1, 1, 0, 1, 1, NULL, NULL, NULL, 1, '2019-06-19 09:27:12', '2019-07-06 10:48:04'),
(15, 'Little trees', NULL, NULL, 'little-trees', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:09:54', '2019-06-23 06:09:54'),
(16, 'M&S', NULL, NULL, 'ms', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:25', '2019-06-23 06:14:25'),
(17, 'Diablo', NULL, NULL, 'diablo', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:25', '2019-06-23 06:14:25'),
(18, 'FOX', NULL, NULL, 'fox', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:26', '2019-06-23 06:14:26'),
(19, 'GULLON', NULL, NULL, 'gullon', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:26', '2019-06-23 06:14:26'),
(20, 'McVites', NULL, NULL, 'mcvites', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:27', '2019-06-23 06:14:27'),
(21, 'OREO', NULL, NULL, 'oreo', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:27', '2019-06-23 06:14:27'),
(22, 'BettyCrocker', NULL, NULL, 'bettycrocker', NULL, 0, NULL, 0, 0, NULL, 1, NULL, NULL, NULL, 1, '2019-06-23 06:14:28', '2019-07-19 07:11:04'),
(23, 'Glade', NULL, NULL, 'glade', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:28', '2019-06-23 06:14:28'),
(24, 'CHUPA CHUP', NULL, NULL, 'chupa-chup', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:28', '2019-06-23 06:14:28'),
(25, 'SKITTLES', NULL, NULL, 'skittles', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:29', '2019-06-23 06:14:29'),
(26, 'whiskas', NULL, NULL, 'whiskas', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:29', '2019-06-23 06:14:29'),
(27, 'Nature Valley', NULL, NULL, 'nature-valley', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:30', '2019-06-23 06:14:30'),
(28, 'Kelloggs', NULL, NULL, 'kelloggs-1', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:30', '2019-06-23 06:14:30'),
(29, 'SAINSBURY\'S', NULL, NULL, 'sainsburys', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:30', '2019-06-23 06:14:30'),
(30, 'Hubba bubba', NULL, NULL, 'hubba-bubba', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:31', '2019-06-23 06:14:31'),
(31, 'Mentos', NULL, NULL, 'mentos', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:31', '2019-06-23 06:14:31'),
(32, 'POLO', NULL, NULL, 'polo', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:31', '2019-06-23 06:14:31'),
(33, 'Trident', NULL, NULL, 'trident', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:32', '2019-06-23 06:14:32'),
(34, 'DR. OETKER', NULL, NULL, 'dr-oetker', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:32', '2019-06-23 06:14:32'),
(35, 'BOOTS', NULL, NULL, 'boots', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:32', '2019-06-23 06:14:32'),
(36, 'Celebration', NULL, NULL, 'celebration', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:32', '2019-06-23 06:14:32'),
(37, 'Bon Bon', NULL, NULL, 'bon-bon', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:32', '2019-06-23 06:14:32'),
(38, 'Kinder', NULL, NULL, 'kinder', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:33', '2019-06-23 06:14:33'),
(39, 'LINDT', NULL, NULL, 'lindt', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:33', '2019-06-23 06:14:33'),
(40, 'M&M', NULL, '1552807524.mam_1.jpg', 'mm', NULL, 0, NULL, 0, 0, NULL, 1, NULL, NULL, NULL, 1, '2019-06-23 06:14:33', '2019-07-28 06:55:29'),
(41, 'Maltesers', NULL, NULL, 'maltesers', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:34', '2019-06-23 06:14:34'),
(42, 'Kitkat', NULL, NULL, 'kitkat', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:35', '2019-06-23 06:14:35'),
(43, 'Smarties', NULL, NULL, 'smarties', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:35', '2019-06-23 06:14:35'),
(44, 'Nutella', NULL, NULL, 'nutella', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:35', '2019-06-23 06:14:35'),
(45, 'Nerds', NULL, NULL, 'nerds', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:35', '2019-06-23 06:14:35'),
(46, 'CIF', NULL, NULL, 'cif', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:36', '2019-06-23 06:14:36'),
(47, 'Dettol', NULL, NULL, 'dettol', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:36', '2019-06-23 06:14:36'),
(48, 'Spontex', NULL, NULL, 'spontex', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:36', '2019-06-23 06:14:36'),
(49, 'TASSIMO', NULL, NULL, 'tassimo', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:36', '2019-06-23 06:14:36'),
(50, 'Douwe Egberts', NULL, NULL, 'douwe-egberts', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:37', '2019-06-23 06:14:37'),
(51, 'Illy', NULL, NULL, 'illy', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:37', '2019-06-23 06:14:37'),
(52, 'Nescafe', NULL, NULL, 'nescafe', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:38', '2019-06-23 06:14:38'),
(53, 'Carex', NULL, NULL, 'carex', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:39', '2019-06-23 06:14:39'),
(54, 'IMPERIAL LEATHER', NULL, NULL, 'imperial-leather', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:39', '2019-06-23 06:14:39'),
(55, 'Palmolive', NULL, NULL, 'palmolive', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:39', '2019-06-23 06:14:39'),
(56, 'Radox', NULL, NULL, 'radox', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:39', '2019-06-23 06:14:39'),
(57, 'Rowse', NULL, NULL, 'rowse', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:39', '2019-06-23 06:14:39'),
(58, 'Ellas Kitchen', NULL, NULL, 'ellas-kitchen', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:40', '2019-06-23 06:14:40'),
(59, 'KTC', NULL, NULL, 'ktc', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:40', '2019-06-23 06:14:40'),
(60, 'VEET', NULL, NULL, 'veet', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:40', '2019-06-23 06:14:40'),
(61, 'Horlics', NULL, NULL, 'horlics', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:41', '2019-06-23 06:14:41'),
(62, 'Listerian', NULL, NULL, 'listerian', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:41', '2019-06-23 06:14:41'),
(63, 'POT', NULL, NULL, 'pot', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:41', '2019-06-23 06:14:41'),
(64, 'KP', NULL, NULL, 'kp', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:41', '2019-06-23 06:14:41'),
(65, 'Reese\'s', NULL, NULL, 'reeses', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:42', '2019-06-23 06:14:42'),
(66, 'Harringtons', NULL, NULL, 'harringtons', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:42', '2019-06-23 06:14:42'),
(67, 'Butterkist', NULL, NULL, 'butterkist', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:42', '2019-06-23 06:14:42'),
(68, 'Easy Pop', NULL, NULL, 'easy-pop', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:43', '2019-06-23 06:14:43'),
(69, 'PENNSTATE', NULL, NULL, 'pennstate', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:43', '2019-06-23 06:14:43'),
(70, 'Morrisons', NULL, NULL, 'morrisons', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:43', '2019-06-23 06:14:43'),
(71, 'KALLO', NULL, NULL, 'kallo', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:43', '2019-06-23 06:14:43'),
(72, 'Domestos', NULL, NULL, 'domestos', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:44', '2019-06-23 06:14:44'),
(73, 'HP', NULL, NULL, 'hp', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:45', '2019-06-23 06:14:45'),
(74, 'DORITOS', NULL, NULL, 'doritos', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:45', '2019-06-23 06:14:45'),
(75, 'Hellmanns', NULL, NULL, 'hellmanns-1', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:46', '2019-06-23 06:14:46'),
(76, 'Nandos', NULL, NULL, 'nandos', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:46', '2019-06-23 06:14:46'),
(77, 'Natural selection', NULL, NULL, 'natural-selection', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:47', '2019-06-23 06:14:47'),
(78, 'Prewetts', NULL, NULL, 'prewetts', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:47', '2019-06-23 06:14:47'),
(79, 'Quick Milk', NULL, NULL, 'quick-milk', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:47', '2019-06-23 06:14:47'),
(80, 'Dr.moo', NULL, NULL, 'drmoo', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:47', '2019-06-23 06:14:47'),
(81, 'Seasame Snaps', NULL, NULL, 'seasame-snaps', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:14:48', '2019-06-23 06:14:48'),
(82, 'PG', NULL, NULL, 'pg', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:19', '2019-06-23 06:17:19'),
(83, 'Twining\'s', NULL, NULL, 'twinings', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:19', '2019-06-23 06:17:19'),
(84, 'OLD ELPASO', NULL, NULL, 'old-elpaso', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:20', '2019-06-23 06:17:20'),
(85, 'PURE', NULL, NULL, 'pure', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:20', '2019-06-23 06:17:20'),
(86, 'FLASH', NULL, NULL, 'flash', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:20', '2019-06-23 06:17:20'),
(87, 'Listerine', NULL, NULL, 'listerine', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:20', '2019-06-23 06:17:20'),
(88, 'Maggi', NULL, NULL, 'maggi', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:21', '2019-06-23 06:17:21'),
(89, 'Hershey', NULL, NULL, 'hershey', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:22', '2019-06-23 06:17:22'),
(90, 'Knorr', NULL, NULL, 'knorr', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:23', '2019-06-23 06:17:23'),
(91, 'Kopiko', NULL, NULL, 'kopiko', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:23', '2019-06-23 06:17:23'),
(92, 'Lipton', NULL, NULL, 'lipton', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:24', '2019-06-23 06:17:24'),
(93, 'FEBREZE', NULL, NULL, 'febreze', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:26', '2019-06-23 06:17:26'),
(94, 'Feroglobin', NULL, NULL, 'feroglobin', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:26', '2019-06-23 06:17:26'),
(95, 'Boots', NULL, NULL, 'boots-1', NULL, 0, NULL, 0, 0, NULL, 1, NULL, NULL, NULL, 1, '2019-06-23 06:17:27', '2019-07-20 04:44:51'),
(96, 'Fox\'s', NULL, NULL, 'foxs', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:27', '2019-06-23 06:17:27'),
(97, 'Maryland', NULL, NULL, 'maryland', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:27', '2019-06-23 06:17:27'),
(98, 'Weetabix', NULL, NULL, 'weetabix', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:27', '2019-06-23 06:17:27'),
(99, 'Starbucks', NULL, NULL, 'starbucks', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:28', '2019-06-23 06:17:28'),
(100, 'Tic Tac', NULL, NULL, 'tic-tac', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:28', '2019-06-23 06:17:28'),
(101, 'Wrigleys', NULL, NULL, 'wrigleys', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:29', '2019-06-23 06:17:29'),
(102, 'Daim', NULL, NULL, 'daim', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:29', '2019-06-23 06:17:29'),
(103, 'Vaseline', NULL, NULL, 'vaseline', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:30', '2019-06-23 06:17:30'),
(104, 'Marchant Gourment', NULL, NULL, 'marchant-gourment', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:31', '2019-06-23 06:17:31'),
(105, 'SAINSBURY', NULL, NULL, 'sainsbury', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:31', '2019-06-23 06:17:31'),
(106, 'Kiwi', NULL, NULL, 'kiwi', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:33', '2019-06-23 06:17:33'),
(107, 'Truvia', NULL, NULL, 'truvia', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:35', '2019-06-23 06:17:35'),
(108, 'Old El Paso', NULL, NULL, 'old-el-paso', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:35', '2019-06-23 06:17:35'),
(109, 'Aquafresh', NULL, NULL, 'aquafresh', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:35', '2019-06-23 06:17:35'),
(110, 'Oral-B', NULL, NULL, 'oral-b', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:35', '2019-06-23 06:17:35'),
(111, 'Colgate', NULL, NULL, 'colgate', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:36', '2019-06-23 06:17:36'),
(112, 'Sensodyne', NULL, NULL, 'sensodyne', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:36', '2019-06-23 06:17:36'),
(113, 'Loreal', NULL, NULL, 'loreal', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:37', '2019-06-23 06:17:37'),
(114, 'Immunace', NULL, NULL, 'immunace', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:38', '2019-06-23 06:17:38'),
(115, 'Extra', NULL, NULL, 'extra', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:40', '2019-06-23 06:17:40'),
(116, 'Haribo', NULL, NULL, 'haribo', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:41', '2019-06-23 06:17:41'),
(117, 'John West', NULL, NULL, 'john-west', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:43', '2019-06-23 06:17:43'),
(118, 'Lavazza', NULL, NULL, 'lavazza', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:46', '2019-06-23 06:17:46'),
(119, 'Ritz', NULL, NULL, 'ritz', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:49', '2019-06-23 06:17:49'),
(120, 'Ruby', NULL, NULL, 'ruby', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:49', '2019-06-23 06:17:49'),
(121, 'Snack a jacks', NULL, NULL, 'snack-a-jacks', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:50', '2019-06-23 06:17:50'),
(122, 'Veggi', NULL, NULL, 'veggi', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-23 06:17:54', '2019-06-23 06:17:54'),
(123, 'WERTHERS', NULL, NULL, 'werthers', NULL, 0, NULL, 0, 0, NULL, 1, NULL, NULL, NULL, 1, '2019-06-23 06:17:55', '2019-06-24 10:19:16'),
(124, 'Mama Noodles', NULL, NULL, 'mama-noodles', NULL, 0, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, 1, '2019-06-27 05:59:20', '2019-06-27 05:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(191) NOT NULL,
  `description` text,
  `image` varchar(191) DEFAULT NULL,
  `fav_icon` varchar(191) DEFAULT NULL,
  `image_gallery` text,
  `color_code` varchar(191) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_products` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_services` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) DEFAULT NULL,
  `meta_key` text,
  `meta_description` text,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `description`, `image`, `fav_icon`, `image_gallery`, `color_code`, `priority`, `slug`, `views`, `total_posts`, `total_products`, `total_services`, `is_featured`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Business Plan <br> and Consulting', NULL, NULL, NULL, NULL, '#58595B', NULL, 'business-plan-br-and-consulting', 0, 0, 0, 1, 1, NULL, NULL, NULL, 1, 1, 1, '2019-08-19 05:24:45', '2019-08-19 09:50:47'),
(2, 0, 'Branding and <br>  Marketing', NULL, NULL, NULL, NULL, '#5d221a', NULL, 'branding-and-marketing', 0, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, 1, '2019-08-19 05:25:06', '2019-08-19 06:46:15'),
(3, 0, 'Financing and <br>  Advisory', NULL, NULL, NULL, NULL, '#d14f42', NULL, 'financing-and-br-advisory', 0, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, 1, '2019-08-19 05:25:26', '2019-08-19 06:46:27'),
(4, 0, 'Technology and  <br> Analytics', NULL, NULL, NULL, NULL, '#a1473e', NULL, 'technology-and-br-analytics', 0, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, 1, '2019-08-19 05:25:37', '2019-08-19 06:46:34'),
(5, 0, 'Free Support <br>Services', NULL, NULL, NULL, NULL, '#f6a144', NULL, 'free-support-brservices', 0, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, 1, '2019-08-19 05:25:53', '2019-08-19 06:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `categoryables`
--

CREATE TABLE `categoryables` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `categoryable_id` int(10) UNSIGNED NOT NULL,
  `categoryable_type` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categoryables`
--

INSERT INTO `categoryables` (`id`, `category_id`, `categoryable_id`, `categoryable_type`, `created_at`, `updated_at`) VALUES
(4, 1, 3, 'App\\Model\\Common\\Service', '2019-08-19 05:36:45', '2019-08-19 05:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(191) NOT NULL,
  `p_c_id` int(10) UNSIGNED NOT NULL,
  `comments` longtext NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `commentable_id`, `commentable_type`, `p_c_id`, `comments`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Model\\Common\\Blog', 0, 'asdasda asdasda adas asdasd', 6, NULL, 1, '2019-07-10 05:53:23', '2019-07-10 05:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `code` varchar(2) NOT NULL,
  `dial_code` varchar(5) NOT NULL,
  `currency_name` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `currency_rate` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`, `currency_rate`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '+93', 'Afghan afghani', '؋', 'AFN', 0.93, NULL, NULL),
(2, 'Aland Islands', 'AX', '+358', '', '', '', 0, NULL, NULL),
(3, 'Albania', 'AL', '+355', 'Albanian lek', 'L', 'ALL', 1.32, NULL, NULL),
(4, 'Algeria', 'DZ', '+213', 'Algerian dinar', 'د.ج', 'DZD', 1.42, NULL, '2019-05-02 11:29:00'),
(5, 'AmericanSamoa', 'AS', '+1684', '', '', '', 0, NULL, NULL),
(6, 'Andorra', 'AD', '+376', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(7, 'Angola', 'AO', '+244', 'Angolan kwanza', 'Kz', 'AOA', 0.083, NULL, NULL),
(8, 'Anguilla', 'AI', '+1264', 'East Caribbean dolla', '$', 'XCD', 0.032, NULL, NULL),
(9, 'Antarctica', 'AQ', '+672', '', '', '', 0, NULL, NULL),
(10, 'Antigua and Barbuda', 'AG', '+1268', 'East Caribbean dolla', '$', 'XCD', 0.032, NULL, NULL),
(11, 'Argentina', 'AR', '+54', 'Argentine peso', '$', 'ARS', 0, NULL, NULL),
(12, 'Armenia', 'AM', '+374', 'Armenian dram', '', 'AMD', 5.73, NULL, NULL),
(13, 'Aruba', 'AW', '+297', 'Aruban florin', 'ƒ', 'AWG', 0.15, NULL, NULL),
(14, 'Australia', 'AU', '+61', 'Australian dollar', '$', 'AUD', 0.017, NULL, NULL),
(15, 'Austria', 'AT', '+43', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(16, 'Azerbaijan', 'AZ', '+994', 'Azerbaijani manat', '', 'AZN', 0.02, NULL, NULL),
(17, 'Bahamas', 'BS', '+1242', '', '', '', 0, NULL, NULL),
(18, 'Bahrain', 'BH', '+973', 'Bahraini dinar', '.د.ب', 'BHD', 0, NULL, NULL),
(19, 'Bangladesh', 'BD', '+880', 'Bangladeshi taka', 'Tk.', 'BDT', 0, NULL, '2019-05-02 11:28:51'),
(20, 'Barbados', 'BB', '+1246', 'Barbadian dollar', '$', 'BBD', 0.024, NULL, NULL),
(21, 'Belarus', 'BY', '+375', 'Belarusian ruble', 'Br', 'BYR', 0.025, NULL, NULL),
(22, 'Belgium', 'BE', '+32', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(23, 'Belize', 'BZ', '+501', 'Belize dollar', '$', 'BZD', 0.024, NULL, NULL),
(24, 'Benin', 'BJ', '+229', 'West African CFA fra', 'Fr', 'XOF', 7.01, NULL, NULL),
(25, 'Bermuda', 'BM', '+1441', 'Bermudian dollar', '$', 'BMD', 0, NULL, NULL),
(26, 'Bhutan', 'BT', '+975', 'Bhutanese ngultrum', 'Nu.', 'BTN', 0, NULL, NULL),
(27, 'Bolivia, Plurination', 'BO', '+591', '', '', '', 0, NULL, NULL),
(28, 'Bosnia and Herzegovi', 'BA', '+387', '', '', '', 0, NULL, NULL),
(29, 'Botswana', 'BW', '+267', 'Botswana pula', 'P', 'BWP', 0, NULL, NULL),
(30, 'Brazil', 'BR', '+55', 'Brazilian real', 'R$', 'BRL', 0, NULL, NULL),
(31, 'British Indian Ocean', 'IO', '+246', '', '', '', 0, NULL, NULL),
(32, 'Brunei Darussalam', 'BN', '+673', '', '', '', 0, NULL, NULL),
(33, 'Bulgaria', 'BG', '+359', 'Bulgarian lev', 'лв', 'BGN', 0, NULL, NULL),
(34, 'Burkina Faso', 'BF', '+226', 'West African CFA fra', 'Fr', 'XOF', 7.01, NULL, NULL),
(35, 'Burundi', 'BI', '+257', 'Burundian franc', 'Fr', 'BIF', 0, NULL, NULL),
(36, 'Cambodia', 'KH', '+855', 'Cambodian riel', '៛', 'KHR', 0, NULL, NULL),
(37, 'Cameroon', 'CM', '+237', 'Central African CFA ', 'Fr', 'XAF', 0, NULL, NULL),
(38, 'Canada', 'CA', '+1', 'Canadian dollar', '$', 'CAD', 0, NULL, NULL),
(39, 'Cape Verde', 'CV', '+238', 'Cape Verdean escudo', 'Esc or $', 'CVE', 0, NULL, NULL),
(40, 'Cayman Islands', 'KY', '+ 345', 'Cayman Islands dolla', '$', 'KYD', 0, NULL, NULL),
(41, 'Central African Repu', 'CF', '+236', '', '', '', 0, NULL, NULL),
(42, 'Chad', 'TD', '+235', 'Central African CFA ', 'Fr', 'XAF', 0, NULL, NULL),
(43, 'Chile', 'CL', '+56', 'Chilean peso', '$', 'CLP', 83.8345, NULL, NULL),
(44, 'China', 'CN', '+86', 'Chinese yuan', '¥ or 元', 'CNY', 0, NULL, NULL),
(45, 'Christmas Island', 'CX', '+61', '', '', '', 0, NULL, NULL),
(46, 'Cocos (Keeling) Isla', 'CC', '+61', '', '', '', 0, NULL, NULL),
(47, 'Colombia', 'CO', '+57', 'Colombian peso', '$', 'COP', 0, NULL, NULL),
(48, 'Comoros', 'KM', '+269', 'Comorian franc', 'Fr', 'KMF', 0, NULL, NULL),
(49, 'Congo', 'CG', '+242', '', '', '', 0, NULL, NULL),
(50, 'Congo, The Democrati', 'CD', '+243', '', '', '', 0, NULL, NULL),
(51, 'Cook Islands', 'CK', '+682', 'New Zealand dollar', '$', 'NZD', 0, NULL, NULL),
(52, 'Costa Rica', 'CR', '+506', 'Costa Rican colón', '₡', 'CRC', 0, NULL, NULL),
(53, 'Cote d\'Ivoire', 'CI', '+225', 'West African CFA fra', 'Fr', 'XOF', 7.01, NULL, NULL),
(54, 'Croatia', 'HR', '+385', 'Croatian kuna', 'kn', 'HRK', 0, NULL, NULL),
(55, 'Cuba', 'CU', '+53', 'Cuban convertible pe', '$', 'CUC', 0, NULL, NULL),
(56, 'Cyprus', 'CY', '+357', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(57, 'Czech Republic', 'CZ', '+420', 'Czech koruna', 'Kč', 'CZK', 0, NULL, NULL),
(58, 'Denmark', 'DK', '+45', 'Danish krone', 'kr', 'DKK', 0, NULL, NULL),
(59, 'Djibouti', 'DJ', '+253', 'Djiboutian franc', 'Fr', 'DJF', 0, NULL, NULL),
(60, 'Dominica', 'DM', '+1767', 'East Caribbean dolla', '$', 'XCD', 0.032, NULL, NULL),
(61, 'Dominican Republic', 'DO', '+1849', 'Dominican peso', '$', 'DOP', 0, NULL, NULL),
(62, 'Ecuador', 'EC', '+593', 'United States dollar', '$', 'USD', 0.012, NULL, NULL),
(63, 'Egypt', 'EG', '+20', 'Egyptian pound', '£ or ج.م', 'EGP', 0.2, NULL, NULL),
(64, 'El Salvador', 'SV', '+503', 'United States dollar', '$', 'USD', 0.012, NULL, NULL),
(65, 'Equatorial Guinea', 'GQ', '+240', 'Central African CFA ', 'Fr', 'XAF', 0, NULL, NULL),
(66, 'Eritrea', 'ER', '+291', 'Eritrean nakfa', 'Nfk', 'ERN', 0, NULL, NULL),
(67, 'Estonia', 'EE', '+372', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(68, 'Ethiopia', 'ET', '+251', 'Ethiopian birr', 'Br', 'ETB', 0, NULL, NULL),
(69, 'Falkland Islands (Ma', 'FK', '+500', '', '', '', 0, NULL, NULL),
(70, 'Faroe Islands', 'FO', '+298', 'Danish krone', 'kr', 'DKK', 0, NULL, NULL),
(71, 'Fiji', 'FJ', '+679', 'Fijian dollar', '$', 'FJD', 0, NULL, NULL),
(72, 'Finland', 'FI', '+358', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(73, 'France', 'FR', '+33', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(74, 'French Guiana', 'GF', '+594', '', '', '', 0, NULL, NULL),
(75, 'French Polynesia', 'PF', '+689', 'CFP franc', 'Fr', 'XPF', 0, NULL, NULL),
(76, 'Gabon', 'GA', '+241', 'Central African CFA ', 'Fr', 'XAF', 0, NULL, NULL),
(77, 'Gambia', 'GM', '+220', '', '', '', 0, NULL, NULL),
(78, 'Georgia', 'GE', '+995', 'Georgian lari', 'ლ', 'GEL', 0, NULL, NULL),
(79, 'Germany', 'DE', '+49', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(80, 'Ghana', 'GH', '+233', 'Ghana cedi', '₵', 'GHS', 0, NULL, NULL),
(81, 'Gibraltar', 'GI', '+350', 'Gibraltar pound', '£', 'GIP', 0, NULL, NULL),
(82, 'Greece', 'GR', '+30', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(83, 'Greenland', 'GL', '+299', '', '', '', 0, NULL, NULL),
(84, 'Grenada', 'GD', '+1473', 'East Caribbean dolla', '$', 'XCD', 0.032, NULL, NULL),
(85, 'Guadeloupe', 'GP', '+590', '', '', '', 0, NULL, NULL),
(86, 'Guam', 'GU', '+1671', '', '', '', 0, NULL, NULL),
(87, 'Guatemala', 'GT', '+502', 'Guatemalan quetzal', 'Q', 'GTQ', 0, NULL, NULL),
(88, 'Guernsey', 'GG', '+44', 'British pound', '£', 'GBP', 0, NULL, NULL),
(89, 'Guinea', 'GN', '+224', 'Guinean franc', 'Fr', 'GNF', 0, NULL, NULL),
(90, 'Guinea-Bissau', 'GW', '+245', 'West African CFA fra', 'Fr', 'XOF', 7.01, NULL, NULL),
(91, 'Guyana', 'GY', '+595', 'Guyanese dollar', '$', 'GYD', 0, NULL, NULL),
(92, 'Haiti', 'HT', '+509', 'Haitian gourde', 'G', 'HTG', 0, NULL, NULL),
(93, 'Holy See (Vatican Ci', 'VA', '+379', '', '', '', 0, NULL, NULL),
(94, 'Honduras', 'HN', '+504', 'Honduran lempira', 'L', 'HNL', 0, NULL, NULL),
(95, 'Hong Kong', 'HK', '+852', 'Hong Kong dollar', '$', 'HKD', 0, NULL, NULL),
(96, 'Hungary', 'HU', '+36', 'Hungarian forint', 'Ft', 'HUF', 0, NULL, NULL),
(97, 'Iceland', 'IS', '+354', 'Icelandic króna', 'kr', 'ISK', 0, NULL, NULL),
(98, 'India', 'IN', '+91', 'Indian rupee', '₹', 'INR', 0.83, NULL, NULL),
(99, 'Indonesia', 'ID', '+62', 'Indonesian rupiah', 'Rp', 'IDR', 0, NULL, NULL),
(100, 'Iran, Islamic Republ', 'IR', '+98', '', '', '', 0, NULL, NULL),
(101, 'Iraq', 'IQ', '+964', 'Iraqi dinar', 'ع.د', 'IQD', 0, NULL, NULL),
(102, 'Ireland', 'IE', '+353', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(103, 'Isle of Man', 'IM', '+44', 'British pound', '£', 'GBP', 0, NULL, NULL),
(104, 'Israel', 'IL', '+972', 'Israeli new shekel', '₪', 'ILS', 0, NULL, NULL),
(105, 'Italy', 'IT', '+39', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(106, 'Jamaica', 'JM', '+1876', 'Jamaican dollar', '$', 'JMD', 0, NULL, NULL),
(107, 'Japan', 'JP', '+81', 'Japanese yen', '¥', 'JPY', 0, NULL, NULL),
(108, 'Jersey', 'JE', '+44', 'British pound', '£', 'GBP', 83.8345, NULL, NULL),
(109, 'Jordan', 'JO', '+962', 'Jordanian dinar', 'د.ا', 'JOD', 0, NULL, NULL),
(110, 'Kazakhstan', 'KZ', '+7 7', 'Kazakhstani tenge', '', 'KZT', 0, NULL, NULL),
(111, 'Kenya', 'KE', '+254', 'Kenyan shilling', 'Sh', 'KES', 0, NULL, NULL),
(112, 'Kiribati', 'KI', '+686', 'Australian dollar', '$', 'AUD', 0.017, NULL, NULL),
(113, 'Korea, Democratic Pe', 'KP', '+850', '', '', '', 0, NULL, NULL),
(114, 'Korea, Republic of S', 'KR', '+82', '', '', '', 0, NULL, NULL),
(115, 'Kuwait', 'KW', '+965', 'Kuwaiti dinar', 'د.ك', 'KWD', 0, NULL, NULL),
(116, 'Kyrgyzstan', 'KG', '+996', 'Kyrgyzstani som', 'лв', 'KGS', 0, NULL, NULL),
(117, 'Laos', 'LA', '+856', 'Lao kip', '₭', 'LAK', 0, NULL, NULL),
(118, 'Latvia', 'LV', '+371', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(119, 'Lebanon', 'LB', '+961', 'Lebanese pound', 'ل.ل', 'LBP', 0, NULL, NULL),
(120, 'Lesotho', 'LS', '+266', 'Lesotho loti', 'L', 'LSL', 0, NULL, NULL),
(121, 'Liberia', 'LR', '+231', 'Liberian dollar', '$', 'LRD', 0, NULL, NULL),
(122, 'Libyan Arab Jamahiri', 'LY', '+218', '', '', '', 0, NULL, NULL),
(123, 'Liechtenstein', 'LI', '+423', 'Swiss franc', 'Fr', 'CHF', 0.012, NULL, NULL),
(124, 'Lithuania', 'LT', '+370', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(125, 'Luxembourg', 'LU', '+352', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(126, 'Macao', 'MO', '+853', '', '', '', 0, NULL, NULL),
(127, 'Macedonia', 'MK', '+389', '', '', '', 0, NULL, NULL),
(128, 'Madagascar', 'MG', '+261', 'Malagasy ariary', 'Ar', 'MGA', 0, NULL, NULL),
(129, 'Malawi', 'MW', '+265', 'Malawian kwacha', 'MK', 'MWK', 0, NULL, NULL),
(130, 'Malaysia', 'MY', '+60', 'Malaysian ringgit', 'RM', 'MYR', 0, NULL, NULL),
(131, 'Maldives', 'MV', '+960', 'Maldivian rufiyaa', '.ރ', 'MVR', 0, NULL, NULL),
(132, 'Mali', 'ML', '+223', 'West African CFA fra', 'Fr', 'XOF', 7.01, NULL, NULL),
(133, 'Malta', 'MT', '+356', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(134, 'Marshall Islands', 'MH', '+692', 'United States dollar', '$', 'USD', 0.012, NULL, NULL),
(135, 'Martinique', 'MQ', '+596', '', '', '', 0, NULL, NULL),
(136, 'Mauritania', 'MR', '+222', 'Mauritanian ouguiya', 'UM', 'MRO', 0, NULL, NULL),
(137, 'Mauritius', 'MU', '+230', 'Mauritian rupee', '₨', 'MUR', 0, NULL, NULL),
(138, 'Mayotte', 'YT', '+262', '', '', '', 0, NULL, NULL),
(139, 'Mexico', 'MX', '+52', 'Mexican peso', '$', 'MXN', 0, NULL, NULL),
(140, 'Micronesia, Federate', 'FM', '+691', '', '', '', 0, NULL, NULL),
(141, 'Moldova', 'MD', '+373', 'Moldovan leu', 'L', 'MDL', 0, NULL, NULL),
(142, 'Monaco', 'MC', '+377', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(143, 'Mongolia', 'MN', '+976', 'Mongolian tögrög', '₮', 'MNT', 0, NULL, NULL),
(144, 'Montenegro', 'ME', '+382', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(145, 'Montserrat', 'MS', '+1664', 'East Caribbean dolla', '$', 'XCD', 0.032, NULL, NULL),
(146, 'Morocco', 'MA', '+212', 'Moroccan dirham', 'د.م.', 'MAD', 0, NULL, NULL),
(147, 'Mozambique', 'MZ', '+258', 'Mozambican metical', 'MT', 'MZN', 0, NULL, NULL),
(148, 'Myanmar', 'MM', '+95', 'Burmese kyat', 'Ks', 'MMK', 0, NULL, NULL),
(149, 'Namibia', 'NA', '+264', 'Namibian dollar', '$', 'NAD', 0, NULL, NULL),
(150, 'Nauru', 'NR', '+674', 'Australian dollar', '$', 'AUD', 0.017, NULL, NULL),
(151, 'Nepal', 'NP', '+977', 'Nepalese rupee', '₨', 'NPR', 0, NULL, NULL),
(152, 'Netherlands', 'NL', '+31', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(153, 'Netherlands Antilles', 'AN', '+599', '', '', '', 0, NULL, NULL),
(154, 'New Caledonia', 'NC', '+687', 'CFP franc', 'Fr', 'XPF', 0, NULL, NULL),
(155, 'New Zealand', 'NZ', '+64', 'New Zealand dollar', '$', 'NZD', 0, NULL, NULL),
(156, 'Nicaragua', 'NI', '+505', 'Nicaraguan córdoba', 'C$', 'NIO', 0, NULL, NULL),
(157, 'Niger', 'NE', '+227', 'West African CFA fra', 'Fr', 'XOF', 7.01, NULL, NULL),
(158, 'Nigeria', 'NG', '+234', 'Nigerian naira', '₦', 'NGN', 4.28, NULL, NULL),
(159, 'Niue', 'NU', '+683', 'New Zealand dollar', '$', 'NZD', 0, NULL, NULL),
(160, 'Norfolk Island', 'NF', '+672', '', '', '', 0, NULL, NULL),
(161, 'Northern Mariana Isl', 'MP', '+1670', '', '', '', 0, NULL, NULL),
(162, 'Norway', 'NO', '+47', 'Norwegian krone', 'kr', 'NOK', 0, NULL, NULL),
(163, 'Oman', 'OM', '+968', 'Omani rial', 'ر.ع.', 'OMR', 0.0046, NULL, NULL),
(164, 'Pakistan', 'PK', '+92', 'Pakistani rupee', '₨', 'PKR', 1.68, NULL, NULL),
(165, 'Palau', 'PW', '+680', 'Palauan dollar', '$', '', 0, NULL, NULL),
(166, 'Palestinian Territor', 'PS', '+970', '', '', '', 0, NULL, NULL),
(167, 'Panama', 'PA', '+507', 'Panamanian balboa', 'B/.', 'PAB', 0, NULL, NULL),
(168, 'Papua New Guinea', 'PG', '+675', 'Papua New Guinean ki', 'K', 'PGK', 0, NULL, NULL),
(169, 'Paraguay', 'PY', '+595', 'Paraguayan guaraní', '₲', 'PYG', 0, NULL, NULL),
(170, 'Peru', 'PE', '+51', 'Peruvian nuevo sol', 'S/.', 'PEN', 0, NULL, NULL),
(171, 'Philippines', 'PH', '+63', 'Philippine peso', '₱', 'PHP', 0.62, NULL, NULL),
(172, 'Pitcairn', 'PN', '+872', '', '', '', 0, NULL, NULL),
(173, 'Poland', 'PL', '+48', 'Polish z?oty', 'zł', 'PLN', 0, NULL, NULL),
(174, 'Portugal', 'PT', '+351', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(175, 'Puerto Rico', 'PR', '+1939', '', '', '', 0, NULL, NULL),
(176, 'Qatar', 'QA', '+974', 'Qatari riyal', 'ر.ق', 'QAR', 0, NULL, NULL),
(177, 'Romania', 'RO', '+40', 'Romanian leu', 'lei', 'RON', 0.051, NULL, NULL),
(178, 'Russia', 'RU', '+7', 'Russian ruble', '', 'RUB', 0, NULL, NULL),
(179, 'Rwanda', 'RW', '+250', 'Rwandan franc', 'Fr', 'RWF', 0, NULL, NULL),
(180, 'Reunion', 'RE', '+262', '', '', '', 0, NULL, NULL),
(181, 'Saint Barthelemy', 'BL', '+590', '', '', '', 0, NULL, NULL),
(182, 'Saint Helena, Ascens', 'SH', '+290', '', '', '', 0, NULL, NULL),
(183, 'Saint Kitts and Nevi', 'KN', '+1869', '', '', '', 0, NULL, NULL),
(184, 'Saint Lucia', 'LC', '+1758', 'East Caribbean dolla', '$', 'XCD', 0.032, NULL, NULL),
(185, 'Saint Martin', 'MF', '+590', '', '', '', 0, NULL, NULL),
(186, 'Saint Pierre and Miq', 'PM', '+508', '', '', '', 0, NULL, NULL),
(187, 'Saint Vincent and th', 'VC', '+1784', '', '', '', 0, NULL, NULL),
(188, 'Samoa', 'WS', '+685', 'Samoan t?l?', 'T', 'WST', 0, NULL, NULL),
(189, 'San Marino', 'SM', '+378', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(190, 'Sao Tome and Princip', 'ST', '+239', '', '', '', 0, NULL, NULL),
(191, 'Saudi Arabia', 'SA', '+966', 'Saudi riyal', 'ر.س', 'SAR', 0.045, NULL, NULL),
(192, 'Senegal', 'SN', '+221', 'West African CFA fra', 'Fr', 'XOF', 7.01, NULL, NULL),
(193, 'Serbia', 'RS', '+381', 'Serbian dinar', 'дин. or din.', 'RSD', 0, NULL, NULL),
(194, 'Seychelles', 'SC', '+248', 'Seychellois rupee', '₨', 'SCR', 0, NULL, NULL),
(195, 'Sierra Leone', 'SL', '+232', 'Sierra Leonean leone', 'Le', 'SLL', 105.1, NULL, NULL),
(196, 'Singapore', 'SG', '+65', 'Brunei dollar', '$', 'BND', 0.016, NULL, NULL),
(197, 'Slovakia', 'SK', '+421', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(198, 'Slovenia', 'SI', '+386', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(199, 'Solomon Islands', 'SB', '+677', 'Solomon Islands doll', '$', 'SBD', 0, NULL, NULL),
(200, 'Somalia', 'SO', '+252', 'Somali shilling', 'Sh', 'SOS', 0, NULL, NULL),
(201, 'South Africa', 'ZA', '+27', 'South African rand', 'R', 'ZAR', 0, NULL, NULL),
(202, 'South Georgia and th', 'GS', '+500', '', '', '', 0, NULL, NULL),
(203, 'Spain', 'ES', '+34', 'Euro', '€', 'EUR', 0.011, NULL, NULL),
(204, 'Sri Lanka', 'LK', '+94', 'Sri Lankan rupee', 'Rs or රු', 'LKR', 0, NULL, NULL),
(205, 'Sudan', 'SD', '+249', 'Sudanese pound', 'ج.س.', 'SDG', 0, NULL, NULL),
(206, 'Suriname', 'SR', '+597', 'Surinamese dollar', '$', 'SRD', 0.089, NULL, NULL),
(207, 'Svalbard and Jan May', 'SJ', '+47', '', '', '', 0, NULL, NULL),
(208, 'Swaziland', 'SZ', '+268', 'Swazi lilangeni', 'L', 'SZL', 0, NULL, NULL),
(209, 'Sweden', 'SE', '+46', 'Swedish krona', 'kr', 'SEK', 0, NULL, NULL),
(210, 'Switzerland', 'CH', '+41', 'Swiss franc', 'Fr', 'CHF', 0.012, NULL, NULL),
(211, 'Syrian Arab Republic', 'SY', '+963', '', '', '', 0, NULL, NULL),
(212, 'Taiwan', 'TW', '+886', 'New Taiwan dollar', '$', 'TWD', 0, NULL, NULL),
(213, 'Tajikistan', 'TJ', '+992', 'Tajikistani somoni', 'ЅМ', 'TJS', 0, NULL, NULL),
(214, 'Tanzania, United Rep', 'TZ', '+255', '', '', '', 0, NULL, NULL),
(215, 'Thailand', 'TH', '+66', 'Thai baht', '฿', 'THB', 0.38, NULL, NULL),
(216, 'Timor-Leste', 'TL', '+670', '', '', '', 0, NULL, NULL),
(217, 'Togo', 'TG', '+228', 'West African CFA fra', 'Fr', 'XOF', 7.01, NULL, NULL),
(218, 'Tokelau', 'TK', '+690', '', '', '', 0, NULL, NULL),
(219, 'Tonga', 'TO', '+676', 'Tongan pa?anga', 'T$', 'TOP', 0, NULL, NULL),
(220, 'Trinidad and Tobago', 'TT', '+1868', 'Trinidad and Tobago ', '$', 'TTD', 0, NULL, NULL),
(221, 'Tunisia', 'TN', '+216', 'Tunisian dinar', 'د.ت', 'TND', 0.036, NULL, NULL),
(222, 'Turkey', 'TR', '+90', 'Turkish lira', '', 'TRY', 0, NULL, NULL),
(223, 'Turkmenistan', 'TM', '+993', 'Turkmenistan manat', 'm', 'TMT', 0, NULL, NULL),
(224, 'Turks and Caicos Isl', 'TC', '+1649', '', '', '', 0, NULL, NULL),
(225, 'Tuvalu', 'TV', '+688', 'Australian dollar', '$', 'AUD', 0.017, NULL, NULL),
(226, 'Uganda', 'UG', '+256', 'Ugandan shilling', 'Sh', 'UGX', 0, NULL, NULL),
(227, 'Ukraine', 'UA', '+380', 'Ukrainian hryvnia', '₴', 'UAH', 0.31, NULL, NULL),
(228, 'United Arab Emirates', 'AE', '+971', 'United Arab Emirates', 'د.إ', 'AED', 0, NULL, NULL),
(229, 'United Kingdom', 'GB', '+44', 'British pound', '£', 'GBP', 0, NULL, NULL),
(230, 'United States', 'US', '+1', 'United States dollar', '$', 'USD', 2.72612, NULL, NULL),
(231, 'Uruguay', 'UY', '+598', 'Uruguayan peso', '$', 'UYU', 0, NULL, NULL),
(232, 'Uzbekistan', 'UZ', '+998', 'Uzbekistani som', '', 'UZS', 0, NULL, NULL),
(233, 'Vanuatu', 'VU', '+678', 'Vanuatu vatu', 'Vt', 'VUV', 0, NULL, NULL),
(234, 'Venezuela, Bolivaria', 'VE', '+58', '', '', '', 0, NULL, NULL),
(235, 'Vietnam', 'VN', '+84', 'Vietnamese ??ng', '₫', 'VND', 0, NULL, NULL),
(236, 'Virgin Islands, Brit', 'VG', '+1284', '', '', '', 0, NULL, NULL),
(237, 'Virgin Islands, U.S.', 'VI', '+1340', '', '', '', 0, NULL, NULL),
(238, 'Wallis and Futuna', 'WF', '+681', 'CFP franc', 'Fr', 'XPF', 0, NULL, NULL),
(239, 'Yemen', 'YE', '+967', 'Yemeni rial', '﷼', 'YER', 0, NULL, NULL),
(240, 'Zambia', 'ZM', '+260', 'Zambian kwacha', 'ZK', 'ZMW', 0, NULL, NULL),
(241, 'Zimbabwe', 'ZW', '+263', 'Botswana pula', 'P', 'BWP', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `validity` date NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `balance_qty` int(11) DEFAULT NULL,
  `coupon_amount` double(5,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1 = Fixed and 2 = Percentage',
  `created_by` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1=Completed, 2=Processing, 3=Pending, 4=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `discount_type`, `coupon_code`, `validity`, `qty`, `balance_qty`, `coupon_amount`, `type`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Eid offer', 2, '111', '2019-07-10', 6, 0, 10.00, 2, 1, 1, 1, '2019-04-20 04:45:33', '2019-07-09 10:40:56'),
(4, '10% discount', 2, '100012', '2019-08-10', 500, 49, 10.00, 1, 1, 1, 1, '2019-07-28 07:33:32', '2019-07-28 07:41:17'),
(5, 'More Than 1,000 Buy Are Offering Free Shipping', 3, NULL, '2019-10-25', NULL, NULL, 999.99, 1, 1, NULL, 1, '2019-07-30 12:42:08', '2019-08-03 10:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `liker_id` int(10) UNSIGNED DEFAULT NULL,
  `liker_ip` varchar(191) DEFAULT NULL,
  `likeable_id` int(10) UNSIGNED NOT NULL,
  `likeable_type` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=Not Liked yet, 1=Liked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_private` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=Yes, 0=No',
  `title` varchar(191) DEFAULT NULL,
  `caption` text,
  `alt` text,
  `description` text,
  `slug` varchar(191) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `is_private`, `title`, `caption`, `alt`, `description`, `slug`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 0, '3', NULL, NULL, NULL, '3.jpg', 1, NULL, '2019-08-08 08:57:14', '2019-08-08 08:57:14'),
(2, 0, '2', NULL, NULL, NULL, '2.jpg', 1, NULL, '2019-08-08 08:57:18', '2019-08-08 08:57:18'),
(3, 0, 'banner_1', NULL, NULL, NULL, 'banner_1.jpg', 1, NULL, '2019-08-08 08:57:22', '2019-08-08 08:57:22'),
(4, 0, 'Bangladesh-Army', NULL, NULL, NULL, 'bangladesh-army.jpg', 1, NULL, '2019-08-08 08:57:25', '2019-08-08 08:57:25'),
(5, 0, '3', NULL, NULL, NULL, '3_1.jpg', 1, NULL, '2019-08-08 08:58:07', '2019-08-08 08:58:07'),
(6, 0, '2', NULL, NULL, NULL, '2_1.jpg', 1, NULL, '2019-08-08 08:58:10', '2019-08-08 08:58:10'),
(7, 0, 'Bangladesh-Army', NULL, NULL, NULL, 'bangladesh-army_1.jpg', 1, NULL, '2019-08-08 08:58:13', '2019-08-08 08:58:13'),
(8, 0, 'banner_1', NULL, NULL, NULL, 'banner_1_1.jpg', 1, NULL, '2019-08-08 08:58:17', '2019-08-08 08:58:17'),
(9, 0, 'Ashwin', NULL, NULL, NULL, 'ashwin.jpg', 1, NULL, '2019-08-08 10:46:37', '2019-08-08 10:46:37'),
(10, 0, 'Debadrita', NULL, NULL, NULL, 'debadrita.jpg', 1, NULL, '2019-08-08 10:46:39', '2019-08-08 10:46:39'),
(11, 0, 'Sanwar', NULL, NULL, NULL, 'sanwar.jpg', 1, NULL, '2019-08-08 10:46:42', '2019-08-08 10:46:42'),
(12, 0, 'team_image_1', NULL, NULL, NULL, 'team_image_1.jpg', 1, NULL, '2019-08-08 10:46:44', '2019-08-08 10:46:44'),
(13, 0, 'btn_paynowCC_LG', NULL, NULL, NULL, 'btn_paynowcc_lg.gif', 1, NULL, '2019-08-19 04:37:52', '2019-08-19 04:37:52'),
(16, 0, 'Debadrita', NULL, NULL, NULL, 'debadrita_1.jpg', 1, NULL, '2019-08-19 07:28:59', '2019-08-19 07:28:59'),
(17, 0, 'Ashwin', NULL, NULL, NULL, 'ashwin_1.jpg', 1, NULL, '2019-08-19 07:29:02', '2019-08-19 07:29:02'),
(18, 0, 'BUSINESS', NULL, NULL, NULL, 'business.png', 1, NULL, '2019-08-19 08:59:57', '2019-08-19 08:59:57'),
(19, 0, 'BUSINESS loading', NULL, NULL, NULL, 'business_loading.png', 1, NULL, '2019-08-19 09:00:03', '2019-08-19 09:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `media_permissions`
--

CREATE TABLE `media_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_07_034348_create_settings_table', 1),
(4, '2017_08_07_035559_create_users_metas_table', 1),
(5, '2017_08_07_042628_create_roles_table', 1),
(6, '2017_08_07_092248_create_media_table', 1),
(7, '2017_08_08_093255_create_visitors_table', 1),
(8, '2017_08_10_091903_create_pages_table', 1),
(9, '2017_08_10_091915_create_sliders_table', 1),
(11, '2017_10_03_070345_create_categoryables_table', 1),
(12, '2017_10_03_070354_create_tags_table', 1),
(13, '2017_10_03_070407_create_taggables_table', 1),
(14, '2017_10_03_071431_create_comments_table', 1),
(15, '2017_10_03_071448_create_blogs_table', 1),
(16, '2017_10_30_054713_create_admins_table', 1),
(17, '2017_10_30_055642_create_admins_metas_table', 1),
(18, '2017_11_09_064245_create_orders_table', 1),
(19, '2017_11_09_064315_create_payments_table', 1),
(20, '2017_11_09_064335_create_order_details_table', 1),
(21, '2017_11_09_083522_create_payment_methods_table', 1),
(22, '2017_11_11_040005_create_coupons_table', 1),
(23, '2017_11_11_040822_add_auth_id_to_users_table', 1),
(24, '2017_11_19_063429_create_taxes_table', 1),
(25, '2017_12_09_032351_create_media_permissions_table', 1),
(26, '2017_12_10_035008_create_subscribers_table', 1),
(27, '2017_12_11_061154_create_wishlists_table', 1),
(28, '2018_03_13_041023_add_style_to_sliders_table', 1),
(29, '2018_03_14_051359_create_likes_table', 1),
(30, '2018_03_14_052316_add_likes_to_blogs_table', 1),
(31, '2018_04_09_104924_add_banner_title_to_pages_table', 1),
(32, '2018_04_09_104948_add_banner_subtitle_to_pages_table', 1),
(33, '2019_03_19_050137_create_brands_table', 1),
(34, '2019_03_19_102008_create_attributetitles_table', 1),
(35, '2019_03_19_103516_create_attributes_table', 1),
(36, '2019_03_19_113141_create_products_table', 1),
(37, '2019_03_21_054136_create_attribute_product_table', 1),
(38, '2019_03_21_063225_create_units_table', 1),
(39, '2019_03_27_091510_create_shoppingcart_table', 1),
(41, '2019_04_16_090954_create_shippings_table', 1),
(42, '2019_04_16_120742_create_shipping_methods_table', 1),
(44, '2019_04_20_152010_create_reviews_table', 2),
(45, '2019_04_30_095643_create_countries_table', 2),
(46, '2019_07_30_095351_create_orderaddresses_table', 3),
(47, '2019_08_19_104958_create_services_table', 3),
(48, '2017_10_03_070336_create_categories_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_no` varchar(191) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `contact_email` varchar(191) DEFAULT NULL,
  `create_date` date NOT NULL,
  `cart_json` longtext,
  `sub_total` double(10,2) NOT NULL,
  `discount` double(5,2) NOT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `coupon_amount` double(6,2) NOT NULL DEFAULT '0.00',
  `tax` double(6,2) NOT NULL DEFAULT '0.00',
  `baseCurrency` varchar(20) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `currencyRate` float NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `grand_total` double(10,2) NOT NULL,
  `paid` double(10,2) NOT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping_method_name` varchar(100) DEFAULT NULL,
  `shipping_method_charge` float DEFAULT NULL,
  `order_note` text,
  `attachments` text,
  `completed_files` text,
  `created_by` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1=Completed, 2=Processing, 3=Pending, 4=Cancelled',
  `payment_status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1=Completed, 2=Pending, 3=Cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_title` varchar(191) NOT NULL,
  `page_title` varchar(191) NOT NULL,
  `page_subtitle` varchar(191) DEFAULT NULL,
  `banner_title` varchar(191) DEFAULT NULL,
  `banner_subtitle` text,
  `banner_image` varchar(191) DEFAULT NULL,
  `content` longtext NOT NULL,
  `slug` varchar(191) NOT NULL,
  `template` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) DEFAULT NULL,
  `meta_key` text,
  `meta_description` text,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `menu_title`, `page_title`, `page_subtitle`, `banner_title`, `banner_subtitle`, `banner_image`, `content`, `slug`, `template`, `views`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PRIVACY POLICY', 'PRIVACY POLICY', NULL, NULL, NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:18px\">We understand the importance of protecting customers&rsquo; private information.</span></li>\r\n	<li><span style=\"font-size:18px\">We will only use your name, address, phone number and email for the purpose of communicating with you.</span></li>\r\n	<li><span style=\"font-size:18px\">We do not sell your information to any third party.</span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 'privacy-policy', NULL, 100, NULL, NULL, NULL, 1, 1, 1, '2019-04-24 13:10:27', '2019-08-07 19:45:29'),
(2, 'Terms And Conditions', 'Terms And Conditions', NULL, NULL, NULL, NULL, '<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\">You certify that the content you provide in this site is accurate and complete. You are solely responsible for maintaining the confidentiality and </span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\">security of your account including username, password, and PIN.&nbsp;&nbsp;Mahmud Mart won&rsquo;t be responsible for any losses arising from unauthorized </span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\">use of your account.&nbsp;&nbsp;You agree that Mahmud Mart does not have any responsibility if you lose or share access to your device</span></li>\r\n</ul>', 'terms-and-conditions', NULL, 35, NULL, NULL, NULL, 1, 1, 1, '2019-07-09 03:30:24', '2019-08-06 02:29:13'),
(3, 'Return Policy', 'Return Policy', NULL, NULL, NULL, NULL, '<p><a href=\"http://127.0.0.1:8000/return-replacement-policy\" style=\"box-sizing: border-box; text-decoration-line: none; -webkit-tap-highlight-color: transparent; color: rgb(93, 93, 96); background-color: rgb(249, 249, 249); display: block; font-size: 14px; font-family: &quot;Open Sans&quot;, sans-serif;\">Return Policy</a></p>', 'return-policy', NULL, 35, NULL, NULL, NULL, 1, NULL, 1, '2019-07-09 04:51:12', '2019-08-07 11:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$loLmrhxFraeksfRZAGJ2NO9D02ZZ6j4ij1Vboi2LnxEHcD2OW9Coi', '2019-07-09 05:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `short_description` text,
  `long_description` longtext,
  `image` text,
  `slug` varchar(191) NOT NULL,
  `sku` varchar(191) NOT NULL,
  `stock_status` varchar(191) DEFAULT NULL,
  `tax_class` varchar(191) DEFAULT NULL,
  `regular_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sale_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `product_qty` varchar(191) DEFAULT NULL,
  `alert_quantity` varchar(191) DEFAULT NULL,
  `product_weight` varchar(191) DEFAULT NULL,
  `product_model` varchar(191) DEFAULT NULL,
  `product_type` int(11) NOT NULL,
  `unit_id` int(10) UNSIGNED DEFAULT NULL,
  `image_gallery` text,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) DEFAULT NULL,
  `meta_key` text,
  `meta_description` text,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `short_description`, `long_description`, `image`, `slug`, `sku`, `stock_status`, `tax_class`, `regular_price`, `sale_price`, `brand_id`, `product_qty`, `alert_quantity`, `product_weight`, `product_model`, `product_type`, `unit_id`, `image_gallery`, `views`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Business Plan and Financial Projection', NULL, '<p>We prepare business plans and financial projections customised to the requirement of target audience.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>CSBFL &ndash; Canada Small Business Financing Loan</li>\r\n	<li>Commercial loans &amp; mortgages</li>\r\n	<li>Private Equity Investors</li>\r\n	<li>Private Lenders and Capital Lender Firms</li>\r\n	<li>Venture Capitalists and Angel Investors</li>\r\n	<li>Franchise Application</li>\r\n	<li>Federal &amp; Provincial Business Immigration</li>\r\n	<li>Any kind of Financing and Government Grant programs</li>\r\n</ul>', NULL, 'business-plan-and-financial-projection', '12321', 'in_stock', NULL, '12312.00', '0.00', 5, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, NULL, 1, NULL, 1, '2019-08-08 10:03:27', '2019-08-08 10:03:27'),
(2, 'Investor Presentation / Pitch Deck', 'Crafting compelling investor presentations and pitch decks that differentiate you from your peers. We leveraging data analytics, financial models and market research to make an effective presentation or pitch deck to grab a prospective investor’s attention.', '<p>Crafting compelling investor presentations and pitch decks that differentiate you from your peers. We leveraging data analytics, financial models and market research to make an effective presentation or pitch deck to grab a prospective investor&rsquo;s attention.</p>', NULL, 'investor-presentation-pitch-deck', '123213', 'in_stock', NULL, '342342.00', '12312.00', 5, NULL, NULL, NULL, NULL, 1, 4, NULL, 0, NULL, NULL, NULL, 1, NULL, 1, '2019-08-08 10:08:25', '2019-08-08 10:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `permission` mediumtext NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permission`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '', 1, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext,
  `image` text,
  `slug` varchar(191) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `seo_title` varchar(191) DEFAULT NULL,
  `meta_key` text,
  `meta_description` text,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `image`, `slug`, `views`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Business Plan and Financial Projection', '<p>We prepare business plans and financial projections customised to the requirement of target audience.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>CSBFL &ndash; Canada Small Business Financing Loan</li>\r\n	<li>Commercial loans &amp; mortgages</li>\r\n	<li>Private Equity Investors</li>\r\n	<li>Private Lenders and Capital Lender Firms</li>\r\n	<li>Venture Capitalists and Angel Investors</li>\r\n	<li>Franchise Application</li>\r\n	<li>Federal &amp; Provincial Business Immigration</li>\r\n	<li>Any kind of Financing and Government Grant programs</li>\r\n</ul>', NULL, 'business-plan-and-financial-projection-1', 0, NULL, NULL, NULL, 1, 1, 1, '2019-08-19 05:34:42', '2019-08-19 07:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL,
  `option_value` longtext,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `autoload` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `option_name`, `option_value`, `created_by`, `modified_by`, `autoload`, `status`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'BCSOD', 1, 1, 1, 1, NULL, '2019-08-08 07:25:42'),
(2, 'tag_line', 'BCSOD', 1, 1, 1, 1, NULL, '2019-08-08 07:25:42'),
(3, 'address', 'House 34 (3B), Road 2, Nikunja 2, Dhaka 1229', 1, 1, 1, 1, NULL, '2019-08-08 07:25:42'),
(4, 'email', 'info@bcsod.com', 1, 1, 1, 1, NULL, '2019-08-08 07:25:42'),
(5, 'secondary_email', 'info@bcsod.com', 1, 1, 1, 1, NULL, '2019-08-08 07:25:42'),
(6, 'mobile', '01XXXXXXXX', 1, 1, 1, 1, NULL, '2019-08-08 07:25:42'),
(7, 'logo', 'business.png', 1, 1, 1, 1, NULL, '2019-08-19 09:00:14'),
(8, 'favicon', 'mart_logo.png', 1, 1, 1, 1, NULL, '2019-06-19 07:20:01'),
(9, 'site_screenshot', 'mahmud_mart.png', 1, 1, 1, 1, NULL, '2019-08-04 09:24:52'),
(10, 'site_meta_keywords', 'Shop, ecommerce, products, mahmud, mart', 1, 1, 1, 1, NULL, '2019-07-03 04:04:19'),
(11, 'site_meta_description', 'We are one of the largest online stores in Bangladesh selling quality products imported directly from UK other countries. We import everything ourselves and can guarantee that all the products are genuine.', 1, 1, 1, 1, NULL, '2019-08-04 09:13:17'),
(12, 'main_menu', 'a:1:{s:9:\"menu_item\";a:3:{i:1;a:8:{s:2:\"id\";s:1:\"1\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:4:\"Team\";s:4:\"link\";s:10:\"/team#team\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:2;a:8:{s:2:\"id\";s:1:\"2\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:10:\"Contact Us\";s:4:\"link\";s:19:\"/contact#contact_us\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}i:3;a:8:{s:2:\"id\";s:1:\"3\";s:4:\"p_id\";s:1:\"0\";s:9:\"menu_type\";s:2:\"cl\";s:5:\"title\";s:7:\"Payment\";s:4:\"link\";s:21:\"/payment#payment_page\";s:3:\"cls\";s:0:\"\";s:8:\"link_cls\";s:0:\"\";s:8:\"icon_cls\";s:0:\"\";}}}', 1, 1, 1, 1, NULL, '2019-08-19 09:33:22'),
(13, 'fb_page', 'http://facebook.com/nextpagetl', 1, NULL, 1, 1, NULL, NULL),
(14, 'gp_page', 'http://facebook.com/nextpagetl', 1, NULL, 1, 1, NULL, NULL),
(15, 'tt_page', 'http://facebook.com/nextpagetl', 1, NULL, 1, 1, NULL, NULL),
(16, 'li_page', 'http://facebook.com/nextpagetl', 1, NULL, 1, 1, NULL, NULL),
(17, 'youtube_page', 'http://facebook.com/nextpagetl', 1, NULL, 1, 1, NULL, NULL),
(18, 'website', 'http://127.0.0.1:8000/', 1, 1, 1, 2, NULL, '2019-08-08 07:25:42'),
(19, 'about', 'Looking for a smart Kickstart or growth of your vision? Be it a fresh start-up, Small or a mediam business, we are offering a one-stop service to support your business to grow. We have a fine group of experts with versatile skillsets. After all your growth is our growth.', 1, 1, 1, 2, NULL, '2019-08-08 07:25:42'),
(20, 'country', 'Bangladesh', 1, 1, 1, 2, NULL, '2019-04-18 10:25:09'),
(21, 'is_cache_enable', '1', 1, 1, 1, 2, NULL, '2019-07-18 14:54:02'),
(22, 'cache_update_time', '10', 1, 1, 1, 2, NULL, '2019-04-29 11:15:26'),
(23, 'sm_theme_options_home_setting', 'a:60:{s:22:\"slider_change_autoplay\";N;s:15:\"canonical_title\";s:44:\"Cornerstones Of Our Digital Marketing Agency\";s:15:\"home_left_image\";s:13:\"2__282_29.jpg\";s:20:\"home_left_image_link\";s:1:\"#\";s:8:\"features\";a:3:{i:0;a:4:{s:13:\"feature_title\";s:14:\" Fast Shipping\";s:19:\"feature_description\";s:15:\"Deliver to door\";s:12:\"feature_link\";s:0:\"\";s:13:\"feature_image\";s:14:\"truck_copy.png\";}i:1;a:4:{s:13:\"feature_title\";s:10:\"Big Saving\";s:19:\"feature_description\";s:18:\"Chooseable price\n\n\";s:12:\"feature_link\";s:0:\"\";s:13:\"feature_image\";s:10:\"saving.png\";}i:2;a:4:{s:13:\"feature_title\";s:12:\" Online Shop\";s:19:\"feature_description\";s:15:\"a huge branding\";s:12:\"feature_link\";s:0:\"\";s:13:\"feature_image\";s:8:\"shop.png\";}}s:19:\"thumbnail_add_title\";s:12:\"TREND ALERTS\";s:21:\"video_thumbnail_image\";s:24:\"facetime-videos-call.jpg\";s:20:\"video_thumbnail_link\";s:41:\"https://www.youtube.com/embed/HqCbUU0OLKM\";s:20:\"payment_method_image\";s:30:\"footer-image-payment-24sep.png\";s:15:\"home_add_enable\";s:1:\"0\";s:15:\"middle_left_add\";s:24:\"1555403920.mar-add-1.jpg\";s:20:\"middle_left_add_link\";s:1:\"#\";s:16:\"middle_right_add\";s:24:\"1555404293.mar-add22.jpg\";s:21:\"middle_right_add_link\";s:37:\"http://mahmudmart.com.bd/category/tea\";s:17:\"middle_bottom_add\";s:36:\"testimonialsbannerhomepage-min-1.jpg\";s:26:\"home_is_seo_section_enable\";s:1:\"1\";s:14:\"home_seo_title\";s:15:\"Your SEO Score?\";s:18:\"home_seo_btn_title\";s:12:\"Check up now\";s:17:\"seo_feature_title\";s:45:\"DO YOU WANT TO BE SEEN? YOURE IN RIGHT PLACE!\";s:23:\"seo_feature_description\";s:123:\"SEOis a section of Search Engine Land that focuses not on search marketing advice but rather the search marketing industry.\";s:17:\"seo_feature_image\";N;s:30:\"seo_feature_more_btn_is_enable\";s:1:\"1\";s:26:\"seo_feature_more_btn_label\";s:10:\"Learn more\";s:25:\"seo_feature_more_btn_link\";s:1:\"#\";s:31:\"seo_feature_quote_btn_is_enable\";s:1:\"1\";s:27:\"seo_feature_quote_btn_label\";s:11:\"Learn quote\";s:26:\"seo_feature_quote_btn_link\";s:1:\"#\";s:22:\"seo_marketing_subtitle\";s:15:\"WATCH THE VIDEO\";s:19:\"seo_marketing_title\";s:35:\"HOW TO WORKING DOODLE SEO MARKETING\";s:25:\"seo_marketing_description\";s:941:\"<p>our daily recap of search news. At the end of each business day, we&#39;ll email you a summary of th what happened in search. This will include all stories we&#39;ve covered on Search Engine Land Land as well as headlines from sources from across the web. Anyone involved with digital marketinge deals with marketing technology every day. Keep up with the latest curves thrown by Google an Bing, whether they&#39;re tweaking Product Listing Ads, adjusting Enhanced Campaigns, or changiw the way ads display on various platforms. Get the weekly recap on what&#39;s important from Search Engine Land&#39;s knowledgeable news team and our expert contributors. Everything you need to know about SEO, whether it&#39;s the latest thw news or how-tos from practitioners. Once a week, get the curated scoop from Search Engine ths Land&#39;s SEO newsletter. Reach your customers and potential customers on the popular socialalys platforms and.</p>\";s:16:\"seo_video_banner\";N;s:26:\"seo_marketing_video_poster\";N;s:19:\"seo_marketing_video\";N;s:18:\"home_service_title\";N;s:21:\"home_service_subtitle\";N;s:8:\"services\";a:4:{i:0;a:5:{s:5:\"title\";s:13:\"Free Shipping\";s:11:\"description\";s:17:\"On order over BDT\";s:4:\"icon\";s:11:\"fa fa-truck\";s:4:\"link\";s:0:\"\";s:13:\"service_image\";s:0:\"\";}i:1;a:5:{s:5:\"title\";s:12:\"Money Return\";s:11:\"description\";s:20:\"30 Days money return\";s:4:\"icon\";s:11:\"fa fa-money\";s:4:\"link\";s:0:\"\";s:13:\"service_image\";s:0:\"\";}i:2;a:5:{s:5:\"title\";s:12:\"Support 24/7\";s:11:\"description\";s:21:\"Hotline : 01766665253\";s:4:\"icon\";s:15:\"fa fa-life-ring\";s:4:\"link\";s:0:\"\";s:13:\"service_image\";s:0:\"\";}i:3;a:5:{s:5:\"title\";s:12:\"Safe Payment\";s:11:\"description\";s:22:\"Protect online payment\";s:4:\"icon\";s:17:\"fa fa-credit-card\";s:4:\"link\";s:0:\"\";s:13:\"service_image\";s:0:\"\";}}s:17:\"achievement_title\";s:13:\"OUR ACHIVMENT\";s:23:\"achievement_description\";s:82:\"SEO Boost is an experienced of online marketing firm with a big record of success!\";s:17:\"achievement_image\";N;s:13:\"total_project\";s:3:\"222\";s:19:\"total_active_client\";s:3:\"333\";s:18:\"total_success_rate\";s:2:\"98\";s:16:\"total_commitment\";s:3:\"100\";s:9:\"wcu_title\";s:26:\"Why Choose Doodle Digital?\";s:12:\"wcu_subtitle\";s:62:\"Many Services! Big Claims Everywhere! Then, why us? Because...\";s:15:\"wcu_description\";N;s:9:\"wcu_image\";N;s:22:\"home_testimonial_style\";s:8:\"bg-black\";s:25:\"recommended_product_title\";s:19:\"Recommended for you\";s:28:\"recommended_product_subtitle\";s:28:\"Recommended for you products\";s:24:\"recommended_product_show\";N;s:13:\"product_title\";s:23:\"Fashion Show Collection\";s:16:\"product_subtitle\";s:32:\"Fashion Show Collection Products\";s:12:\"product_show\";N;s:10:\"blog_title\";s:11:\"Latest Blog\";s:13:\"blog_subtitle\";s:63:\"Claritas est etiam processus dynamicus, qui sequitur mutationem\";s:9:\"blog_show\";N;s:14:\"branding_title\";s:16:\"Valuable Clients\";s:17:\"branding_subtitle\";s:63:\"Claritas est etiam processus dynamicus, qui sequitur mutationem\";s:5:\"logos\";N;}', 1, 1, 1, 2, NULL, '2019-08-08 10:32:20'),
(24, 'sm_theme_options_contact_setting', 'a:21:{s:20:\"contact_banner_title\";s:10:\"CONTACT US\";s:23:\"contact_banner_subtitle\";s:129:\"For inquiries or requests or quotes that require a more personal response, we will make every attempt to respond within 24 hours.\";s:20:\"contact_banner_image\";N;s:13:\"contact_title\";s:14:\"We Always Help\";s:16:\"contact_subtitle\";s:78:\"It is Easy To Reach Us For Any Digital Marketing Support Anytime From Anywhere\";s:17:\"contact_des_title\";s:15:\"CONNECT WITH US\";s:19:\"contact_description\";s:119:\"<p>You can contact us for any concerns about our store or the products we sell. We really appreciate your feedback.</p>\";s:18:\"contact_form_title\";s:18:\"leave us a message\";s:28:\"contact_form_success_message\";s:64:\"Mail successfully send. We will contact you as soon as possible.\";s:20:\"contact_branch_image\";N;s:20:\"contact_branch_title\";s:12:\"Our branches\";s:23:\"contact_branch_subtitle\";s:77:\"Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium.\";s:19:\"contact_share_title\";s:13:\"Share With Us\";s:19:\"contact_share_image\";N;s:22:\"contact_location_title\";s:14:\"Map & Location\";s:25:\"contact_location_subtitle\";s:77:\"Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium.\";s:25:\"contact_location_latitude\";s:9:\"23.797424\";s:26:\"contact_location_longitude\";s:9:\"90.369409\";s:17:\"contact_seo_title\";N;s:21:\"contact_meta_keywords\";N;s:24:\"contact_meta_description\";N;}', 1, 1, 1, 2, NULL, '2019-08-19 04:17:32'),
(25, 'sm_theme_options_about_setting', 'a:14:{s:18:\"about_banner_title\";s:8:\"ABOUT US\";s:21:\"about_banner_subtitle\";s:24:\"A World of Opportunities\";s:18:\"about_banner_image\";s:19:\"banner-about-us.jpg\";s:9:\"wwr_title\";s:10:\"Who we are\";s:12:\"wwr_subtitle\";N;s:15:\"wwr_description\";s:1992:\"<p>With Business Consultant On-Demand you enjoy a whole new world of exclusive service experiences.</p>\r\n\r\n<p>We understand the complexities of your business, this is why we have developed a choice of programs to work together and create inspiring experiences and add value to every part of your business.</p>\r\n\r\n<p>We provide on-demand consulting support to Small Businesses, Medium-sized Businesses and Start-ups.</p>\r\n\r\n<p>Most of the Small Businesses surrounding us do not have an in-house business support team, everything is done by the business owner and it is impressive to think about the amount of time, commitment and effort these individuals contribute to make their businesses both come to life and stay alive. We work for these fascinating entrepreneurs as an on-demand business support team to make their businesses successful.</p>\r\n\r\n<p>For Medium-sized Businesses, we work as an extended business support team on-demand for their short-term assignments &amp; initiatives. It is expensive for these enterprises to employ in-house human resources or avail the services of large consulting firms for short term support. We fill this gap by offering superior quality of work at much more affordable prices while creating value for everyone.</p>\r\n\r\n<p>We assist start-ups with detailed business plans and financial projections for their own assessment and also for fund raising activities by presenting to financial institutions and/or venture capitalists. Our experienced team guides start-ups at every stage from ideation to launch.</p>\r\n\r\n<p>Why Business Consultant On-Demand?</p>\r\n\r\n<ul>\r\n	<li>Quick turnaround, quality work and affordable price</li>\r\n	<li>Experienced and Professional Consultants work on your plan / project</li>\r\n	<li>Specialized experience in Small Business &amp; Start-Ups</li>\r\n	<li>Services are offered nationwide across Canada</li>\r\n	<li>Guaranteed to meet requirements of audience such as Banks, CSBFL, investors, franchise guidelines etc.</li>\r\n</ul>\";s:11:\"our_mission\";N;s:10:\"our_vision\";N;s:23:\"about_testimonial_style\";N;s:14:\"about_page_add\";s:8:\"pi25.png\";s:19:\"about_page_add_link\";s:1:\"#\";s:15:\"about_seo_title\";N;s:19:\"about_meta_keywords\";N;s:22:\"about_meta_description\";N;}', 1, 1, 1, 2, NULL, '2019-08-08 10:32:20'),
(26, 'sm_theme_options_faq_setting', 'a:4:{s:16:\"faq_banner_image\";N;s:13:\"faq_seo_title\";N;s:17:\"faq_meta_keywords\";N;s:20:\"faq_meta_description\";N;}', 1, 1, 1, 2, NULL, '2019-04-18 10:40:01'),
(27, 'sm_theme_options_testimonial_setting', 'a:2:{s:17:\"testimonial_title\";s:12:\"TESTIMONIALS\";s:12:\"testimonials\";a:3:{i:0;a:5:{s:5:\"title\";s:15:\"Roverto & Maria\";s:11:\"description\";s:78:\"Your product needs to improve more. To suit the needs and update your image up\";s:17:\"testimonial_image\";s:15:\"testimonial.jpg\";s:16:\"testimonial_logo\";s:0:\"\";s:22:\"testimonial_logo_about\";s:0:\"\";}i:1;a:5:{s:5:\"title\";s:17:\"Roverto & Maria 2\";s:11:\"description\";s:81:\"Your product needs to improve more. To suit the needs and update your image up -2\";s:17:\"testimonial_image\";s:15:\"testimonial.jpg\";s:16:\"testimonial_logo\";s:0:\"\";s:22:\"testimonial_logo_about\";s:0:\"\";}i:2;a:5:{s:5:\"title\";s:17:\"Roverto & Maria-3\";s:11:\"description\";s:81:\"Your product needs to improve more. To suit the needs and update your image up -3\";s:17:\"testimonial_image\";s:15:\"testimonial.jpg\";s:16:\"testimonial_logo\";s:0:\"\";s:22:\"testimonial_logo_about\";s:0:\"\";}}}', 1, 1, 1, 2, NULL, '2019-04-27 06:47:40'),
(28, 'sm_theme_options_team_setting', 'a:9:{s:17:\"team_banner_title\";s:13:\"JOIN OUR TEAM\";s:20:\"team_banner_subtitle\";s:24:\"A World of Opportunities\";s:17:\"team_banner_image\";N;s:10:\"team_title\";s:11:\"Expert Team\";s:13:\"team_subtitle\";s:77:\"Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium.\";s:5:\"teams\";a:4:{i:0;a:10:{s:10:\"team_image\";s:16:\"team_image_1.jpg\";s:5:\"title\";s:26:\"Debasish Sarker, MBA, PMP \";s:11:\"designation\";s:29:\"Consultant & Managing Partner\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:11:\"description\";s:380:\"Founder and Managing Partner of Business Consultant On-Demand Inc., over 18 years of management consulting and financial industry experience with CIBC (Canadian Imperial Bank of Commerce), Standard Chartered and Business Consultant On-Demand. Having academic background in finance, marketing, strategy and financial services. MBA from Schulich School of Business, York University.\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:1;a:10:{s:10:\"team_image\";s:10:\"ashwin.jpg\";s:5:\"title\";s:30:\"Ashwin Adari, MBA, PMP, B.Eng \";s:11:\"designation\";s:20:\"Consultant & Advisor\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:11:\"description\";s:342:\"Focused and results driven with an ability to learn and adapt quickly. Seeks to maintain attention to detail whilst ensuring the delivery and execution of the bigger picture. 8 years of management consulting and strategic business planning experience with Deloitte, RBC & BMO. MBA in Finance from Schulich School of Business, York University.\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:2;a:10:{s:10:\"team_image\";s:10:\"sanwar.jpg\";s:5:\"title\";s:23:\"Sanwar Ahmed, MBA, CFA \";s:11:\"designation\";s:27:\" Senior Business Consultant\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:11:\"description\";s:464:\"Sanwar is an experienced finance professional with a demonstrated history of working in the investment management industry for 10 years. He is skilled in Equity Research, Portfolio Management, DCF Valuations, Corporate Finance, Private Equity among others. Along with his Chartered Financial Analyst (CFA) charter, Sanwar holds a MBA in Finance from Schulich School of Business, York University and a Bachelor in Business Administration (BBA) focused in Marketing.\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}i:3;a:10:{s:10:\"team_image\";s:13:\"debadrita.jpg\";s:5:\"title\";s:28:\"Debadrita Bhattacharya, MBA \";s:11:\"designation\";s:20:\"Consultant & Advisor\";s:6:\"mobile\";s:0:\"\";s:5:\"email\";s:0:\"\";s:11:\"description\";s:371:\"Experienced data analytics professional with significant experience in business analysis, data & analytics, project management, business process improvement and management consulting. MBA From Schulich School of Business, York University. Over 10 years of consulting experience with organization like Infosys, IBM, Canada Mortgage and Housing Corporation (CMHC) and CIBC.\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}}s:14:\"team_seo_title\";N;s:18:\"team_meta_keywords\";N;s:21:\"team_meta_description\";N;}', 1, 1, 1, 2, NULL, '2019-08-19 09:22:22'),
(29, 'sm_theme_options_services_setting', 'a:14:{s:20:\"service_banner_title\";s:12:\"OUR SERVICES\";s:23:\"service_banner_subtitle\";s:24:\"A World of Opportunities\";s:20:\"service_banner_image\";N;s:13:\"service_title\";s:39:\"Full Services of Our <br>Digital Agency\";s:16:\"service_subtitle\";s:77:\"Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium.\";s:17:\"service_seo_image\";N;s:17:\"service_seo_title\";s:26:\"Search Engine Optimization\";s:23:\"service_seo_description\";s:818:\"Search engine marketing has evolved a way faster than other online services. To cope with the                            fast-changing scenario in digital marketing, Doodle Digital has adopted tried and true                            techniques and up-to-date insights to be able to assist businesses of all levels, from small                            concerns to large corporations with their digital marketing goals.Being committed to making                            online marketing services easy, affordable, and useful for businesses, we cooperate with                            professionals at different levels and interact with people, so we know how people think,                            buy,                            and live. This is how, we create each of our search engine marketing strategies.\";s:16:\"service_seo_link\";s:1:\"#\";s:23:\"services_posts_per_page\";N;s:29:\"services_is_breadcrumb_enable\";s:1:\"0\";s:18:\"services_seo_title\";N;s:22:\"services_meta_keywords\";N;s:25:\"services_meta_description\";N;}', 1, 1, 1, 2, NULL, '2019-04-18 10:40:01'),
(30, 'sm_theme_options_services_detail_setting', 'a:6:{s:27:\"service_detail_banner_title\";s:12:\"OUR SERVICES\";s:30:\"service_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:27:\"service_detail_banner_image\";N;s:35:\"service_detail_is_breadcrumb_enable\";s:1:\"0\";s:25:\"service_detail_mail_title\";s:7:\"Hire Us\";s:28:\"service_detail_mail_subtitle\";s:17:\"15 Day FREE Trial\";}', 1, 1, 1, 2, NULL, '2019-04-18 10:40:01'),
(31, 'sm_theme_options_package_setting', 'a:5:{s:20:\"package_banner_title\";s:16:\"VIEW ALL PACKAGE\";s:23:\"package_banner_subtitle\";s:64:\"A World of Opportunities We all know that content has to be good\";s:20:\"package_banner_image\";N;s:28:\"package_is_breadcrumb_enable\";s:1:\"0\";s:22:\"package_posts_per_page\";N;}', 1, 1, 1, 2, NULL, '2019-04-18 10:40:01'),
(32, 'sm_theme_options_package_detail_setting', 'a:10:{s:35:\"package_detail_is_breadcrumb_enable\";s:1:\"0\";s:26:\"package_pricing_info_title\";s:12:\"Pricing Info\";s:25:\"package_detail_move_title\";s:20:\"Move to Package info\";s:24:\"package_detail_move_icon\";s:8:\"fa-heart\";s:11:\"step1_image\";N;s:11:\"step1_title\";s:21:\"Money Back Guaranteed\";s:17:\"step1_description\";s:46:\"Ang Lorem Ipsum ay ginaamit na modelo ng print\";s:11:\"step3_image\";N;s:11:\"step3_title\";s:22:\"Satisfaction Guarantee\";s:17:\"step3_description\";s:46:\"Ang Lorem Ipsum ay ginaamit na modelo ng print\";}', 1, 1, 1, 2, NULL, '2019-04-18 10:40:01'),
(33, 'sm_theme_options_blog_setting', 'a:9:{s:19:\"blog_posts_per_page\";N;s:17:\"blog_banner_title\";s:9:\"BLOG HOME\";s:20:\"blog_banner_subtitle\";s:24:\"A World of Opportunities\";s:17:\"blog_banner_image\";N;s:25:\"blog_is_breadcrumb_enable\";s:1:\"0\";s:13:\"blog_ad_image\";N;s:14:\"blog_seo_title\";N;s:18:\"blog_meta_keywords\";N;s:21:\"blog_meta_description\";N;}', 1, 1, 1, 2, NULL, '2019-04-18 10:40:01'),
(34, 'sm_theme_options_blog_detail_setting', 'a:6:{s:24:\"blog_detail_banner_title\";s:9:\"BLOG HOME\";s:27:\"blog_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:24:\"blog_detail_banner_image\";N;s:32:\"blog_detail_is_breadcrumb_enable\";s:1:\"0\";s:27:\"blog_related_posts_per_page\";N;s:22:\"blog_comments_per_page\";N;}', 1, 1, 1, 2, NULL, '2019-04-18 10:40:01'),
(35, 'sm_theme_options_blog_sidebar_setting', 'a:6:{s:22:\"blog_popular_is_enable\";s:1:\"1\";s:27:\"blog_popular_posts_per_page\";N;s:18:\"blog_show_category\";s:1:\"1\";s:13:\"blog_show_tag\";s:1:\"1\";s:15:\"blog_sidebar_ad\";N;s:20:\"blog_sidebar_ad_link\";s:1:\"#\";}', 1, 1, 1, 2, NULL, '2019-04-18 10:40:01'),
(36, 'sm_theme_options_product_setting', 'a:10:{s:21:\"shop_page_per_product\";s:2:\"20\";s:23:\"search_page_per_product\";s:2:\"18\";s:20:\"product_banner_title\";s:12:\"PRODUCT HOME\";s:23:\"product_banner_subtitle\";s:373:\"The classic and evergreen Indian Salwar Kameez, that can be as simple as a straight cut suit that you can wear to work or an intricately embellished Anarkali that is apt for a royal wedding. Available in a plethora of designs and combinations to suit your mood and to fit your requirement, salwar suits are your all weather friend for the perfectly traditional Indian look.\";s:20:\"product_banner_image\";N;s:28:\"product_is_breadcrumb_enable\";s:1:\"0\";s:16:\"product_ad_image\";N;s:17:\"product_seo_title\";N;s:21:\"product_meta_keywords\";N;s:24:\"product_meta_description\";N;}', 1, 1, 1, 2, NULL, '2019-07-18 08:58:11'),
(37, 'sm_theme_options_product_detail_setting', 'a:10:{s:27:\"product_detail_banner_title\";s:12:\"PRODUCT HOME\";s:30:\"product_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:27:\"product_detail_banner_image\";N;s:35:\"product_detail_is_breadcrumb_enable\";s:1:\"0\";s:24:\"product_related_per_page\";N;s:25:\"product_comments_per_page\";N;s:25:\"product_special_is_enable\";s:1:\"1\";s:24:\"product_special_per_page\";N;s:18:\"product_detail_add\";N;s:23:\"product_detail_add_link\";s:1:\"#\";}', 1, 1, 1, 2, NULL, '2019-05-01 02:48:22'),
(38, 'sm_theme_options_product_sidebar_setting', 'a:10:{s:27:\"product_best_sale_is_enable\";s:1:\"1\";s:26:\"product_best_sale_per_page\";N;s:21:\"product_show_category\";s:1:\"1\";s:16:\"product_show_tag\";s:1:\"1\";s:18:\"product_show_brand\";s:1:\"1\";s:17:\"product_show_size\";s:1:\"0\";s:18:\"product_show_color\";s:1:\"0\";s:24:\"product_show_testimonial\";s:1:\"0\";s:26:\"product_show_advertisement\";s:1:\"1\";s:29:\"product_sidebar_advertisement\";a:3:{i:0;a:4:{s:5:\"title\";s:1:\"1\";s:11:\"description\";s:3:\"sds\";s:4:\"link\";s:1:\"#\";s:5:\"image\";s:15:\"awardbanner.jpg\";}i:1;a:4:{s:5:\"title\";s:1:\"2\";s:11:\"description\";s:1:\"2\";s:4:\"link\";s:1:\"#\";s:5:\"image\";s:23:\"ready-pleatrd-saree.jpg\";}i:2;a:4:{s:5:\"title\";s:1:\"3\";s:11:\"description\";s:1:\"3\";s:4:\"link\";s:1:\"#\";s:5:\"image\";s:18:\"bandani_sareee.jpg\";}}}', 1, 1, 1, 2, NULL, '2019-05-16 08:39:38'),
(39, 'sm_theme_options_case_setting', 'a:8:{s:17:\"case_banner_title\";s:12:\"CASE DETAILS\";s:20:\"case_banner_subtitle\";s:24:\"A World of Opportunities\";s:17:\"case_banner_image\";N;s:25:\"case_is_breadcrumb_enable\";s:1:\"0\";s:19:\"case_posts_per_page\";N;s:14:\"case_seo_title\";N;s:18:\"case_meta_keywords\";N;s:21:\"case_meta_description\";N;}', 1, 1, 1, 2, NULL, '2019-04-18 10:40:01'),
(40, 'sm_theme_options_case_detail_setting', 'a:4:{s:24:\"case_detail_banner_title\";s:12:\"CASE DETAILS\";s:27:\"case_detail_banner_subtitle\";s:24:\"A World of Opportunities\";s:24:\"case_detail_banner_image\";N;s:32:\"case_detail_is_breadcrumb_enable\";s:1:\"0\";}', 1, 1, 1, 2, NULL, '2019-04-18 10:40:01'),
(41, 'sm_theme_options_order_setting', 'a:7:{s:20:\"order_posts_per_page\";N;s:17:\"invoice_signature\";s:13:\"mart_logo.png\";s:24:\"invoice_approved_by_name\";s:8:\"Director\";s:31:\"invoice_approved_by_designation\";s:11:\"Mahmud Mart\";s:20:\"invoice_banner_title\";s:13:\"ORDER DETAILS\";s:23:\"invoice_banner_subtitle\";s:44:\"If you\'re struggling to get more information\";s:20:\"invoice_banner_image\";N;}', 1, 1, 1, 2, NULL, '2019-07-09 10:56:53'),
(42, 'sm_theme_options_social_setting', 'a:10:{s:15:\"social_facebook\";s:38:\"https://www.facebook.com/mahmudmartbd/\";s:14:\"social_twitter\";s:1:\"#\";s:15:\"social_linkedin\";s:1:\"#\";s:18:\"social_google_plus\";s:1:\"#\";s:13:\"social_github\";N;s:16:\"social_pinterest\";N;s:14:\"social_behance\";N;s:15:\"social_dribbble\";N;s:16:\"social_instagram\";N;s:14:\"social_youtube\";N;}', 1, 1, 1, 2, NULL, '2019-07-20 11:28:06'),
(43, 'sm_theme_options_footer_setting', 'a:8:{s:11:\"footer_logo\";s:13:\"mart_logo.png\";s:20:\"footer_widget2_title\";s:7:\"COMPANY\";s:26:\"footer_widget2_description\";s:277:\"<ul>\r\n	<li><a href=\"/about\">About Us</a></li>\r\n	<li><a href=\"/privacy-policy\">Privacy Policy</a></li>\r\n	<li><a href=\"/terms-and-conditions\">Terms &amp; Conditions</a></li>\r\n	<li><a href=\"/return-policy\">Return Policy</a></li>\r\n	<li><a href=\"/contact\">Contact Us</a></li>\r\n</ul>\";s:20:\"footer_widget3_title\";s:10:\"MY ACCOUNT\";s:26:\"footer_widget3_description\";s:174:\"<ul>\r\n	<li><a href=\"/\">Home</a></li>\r\n	<li><a href=\"/shop\">Shop</a></li>\r\n	<li><a href=\"/dashboard/orders\">Orders</a></li>\r\n	<li><a href=\"/cart\">Shopping Cart</a></li>\r\n</ul>\";s:20:\"footer_widget4_title\";s:7:\"SUPPORT\";s:26:\"footer_widget4_description\";N;s:9:\"copyright\";s:29:\"© 2019 | All rights reserved\";}', 1, 1, 1, 2, NULL, '2019-08-19 09:46:10'),
(44, 'sm_theme_options_popup_setting', 'a:11:{s:24:\"newsletter_pop_is_enable\";s:1:\"1\";s:20:\"newsletter_pop_title\";s:19:\"Join Our Newsletter\";s:26:\"newsletter_pop_description\";s:102:\"<p>We really care about you and your website as much as you do. from us you get 100% free support.</p>\";s:24:\"newsletter_success_title\";s:26:\"Thank You For Subscribing!\";s:30:\"newsletter_success_description\";s:131:\"You\'re just one step away from being one of our dear susbcribers.<br>Please check the Email provided and confirm your susbcription.\";s:32:\"newsletter_already_success_title\";s:27:\"Thank You For Your Efforts!\";s:38:\"newsletter_already_success_description\";s:41:\"You Already Subscribed To Our Newsletter!\";s:31:\"newsletter_form_success_message\";s:24:\"Subscribed successfully.\";s:15:\"offer_is_enable\";s:1:\"1\";s:11:\"offer_title\";s:20:\"1st Order To 30% Off\";s:17:\"offer_description\";s:135:\"<p>As content marketing continues to drive results for businesses trying to reach their audience</p>\r\n\r\n<p><a href=\"#\">Get More</a></p>\";}', 1, 1, 1, 2, NULL, '2019-08-19 10:40:59'),
(45, 'sm_theme_options_style_n_script_setting', 'a:3:{s:20:\"google_analytic_code\";s:668:\"<script>\r\n        (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n        })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n        ga(\'create\', \'UA-XXXXXXXX-X\', \'auto\');\r\n        ga(\'send\', \'pageview\');\r\n        ga(\'require\', \'linkid\', \'linkid.js\');\r\n        ga(\'require\', \'displayfeatures\');\r\n        setTimeout(\"ga(\'send\',\'event\',\'Profitable Engagement\',\'time on page more than 30 seconds\')\",30000);\r\n    </script>\";s:21:\"mrks_theme_custom_css\";N;s:20:\"mrks_theme_custom_js\";N;}', 1, 1, 1, 2, NULL, '2019-05-01 02:50:09'),
(46, 'sm_theme_options_other_setting', 'a:7:{s:29:\"checkout_is_breadcrumb_enable\";s:1:\"0\";s:21:\"checkout_banner_title\";s:8:\"Checkout\";s:24:\"checkout_banner_subtitle\";s:24:\"A World of Opportunities\";s:21:\"checkout_banner_image\";N;s:20:\"checkout_email_label\";s:35:\"Please provide your email address :\";s:26:\"checkout_email_description\";s:147:\"Please enter an email address you check regularly, as we use this to send updates regarding your job. this email address with the service provider.\";s:28:\"checkout_payment_description\";N;}', 1, 1, 1, 2, NULL, '2019-04-18 10:40:02'),
(47, 'currency', 'Select Item', 1, 1, 1, 2, NULL, '2019-08-19 07:25:43'),
(48, 'primary_color', '#ff0000', 1, 1, 1, 2, NULL, '2019-05-18 04:20:42'),
(49, 'secondary_color', NULL, 1, 1, 1, 2, NULL, '2019-04-29 04:36:12'),
(50, 'fb_api_enable', 'on', 1, 1, 1, 2, NULL, '2019-04-24 11:10:58'),
(51, 'fb_app_id', '312088412769976', 1, 1, 1, 2, NULL, '2019-08-06 04:28:53'),
(52, 'fb_app_secret', '322176e6b75a04f767affddf672a25eb', 1, 1, 1, 2, NULL, '2019-08-06 04:29:05'),
(53, 'gp_api_enable', 'on', 1, NULL, 1, 2, NULL, NULL),
(54, 'gp_client_id', 'wwqewq', 1, NULL, 1, 2, NULL, NULL),
(55, 'gp_client_secret', '1421321', 1, NULL, 1, 2, NULL, NULL),
(56, 'seo_title', 'Online Shopping In Bangladesh- Mahmud Mart', 1, 1, 1, 2, NULL, '2019-08-04 09:13:17'),
(57, 'is_tax_enable', '0', 1, NULL, 1, 2, NULL, NULL),
(58, 'default_tax', '1', 1, NULL, 1, 2, NULL, NULL),
(59, 'default_tax_type', '1', 1, NULL, 1, 2, NULL, NULL),
(60, 'shop_url', 'http://127.0.0.1:8000/', 1, 1, 1, 2, NULL, '2019-08-08 07:25:42'),
(61, 'sm_theme_options_payment_setting', 'a:7:{s:18:\"payment_page_title\";s:57:\"You can pay through one of the following secured methods:\";s:21:\"payment_page_subtitle\";s:24:\"A World of Opportunities\";s:18:\"payment_page_image\";s:19:\"btn_paynowcc_lg.gif\";s:24:\"payment_page_description\";s:575:\"<ol>\r\n	<li>E-transfer to following email address:&nbsp;<a href=\"mailto:debaish@bcsod.com\" style=\"box-sizing: border-box; color: rgb(0, 123, 255); text-decoration-line: none; background-color: transparent;\">debaish@bcsod.com</a>, payment goes to Business Consultant on-Demand Inc. account with Royal Bank of Canada (RBC).</li>\r\n	<li>Account transfer / Cash deposit / Cheque deposit to Business Consultant on-Demand Inc. account with Royal Bank of Canada (RBC). Please ask your consultant to provide account information.</li>\r\n	<li>Visa / MasterCard or PayPal&nbsp;</li>\r\n</ol>\";s:17:\"payment_seo_title\";s:17:\"Payment SEO Title\";s:21:\"payment_meta_keywords\";s:21:\"Payment Meta Keywords\";s:24:\"payment_meta_description\";s:24:\"Payment Meta Description\";}', 1, 1, 1, 2, NULL, '2019-08-19 04:41:00'),
(62, 'loading_logo', 'business_loading.png', 1, 1, 1, 2, NULL, '2019-08-19 09:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `style` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text,
  `image` varchar(191) NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `extra` varchar(191) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `style`, `title`, `description`, `image`, `background_image`, `extra`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(5, 'slide2', 'Organic and healthy products', 'We have a range of organic and healthy products that you can buy. Most of these products are sugar-free and gluten-free to ensure that you are able to maintain a good health.', '2_1.jpg', '1553429182.slider2.jpg', 'a:2:{s:12:\"button_label\";a:1:{i:0;N;}s:11:\"button_link\";a:1:{i:0;N;}}', 1, 1, 1, '2019-06-19 11:37:22', '2019-08-08 08:58:49'),
(6, 'slide1', 'Get high quality imported products at your doorstep', 'We deliver products ordered before 5 PM on the same day. We directly import our products from UK and other countries and ensure that our customers get high quality products always.', 'bangladesh-army_1.jpg', '1554523200.mart1111.jpg', 'a:2:{s:12:\"button_label\";a:1:{i:0;N;}s:11:\"button_link\";a:1:{i:0;N;}}', 1, 1, 1, '2019-06-20 03:58:52', '2019-08-08 08:58:35'),
(7, 'slide1', 'Choose from our wide range products', 'We provide a wide range of products in various categories. You will be able to meet your grocery and household needs by choosing our products.', 'banner_1_1.jpg', '1553429112.slider4.jpg', 'a:2:{s:12:\"button_label\";a:1:{i:0;N;}s:11:\"button_link\";a:1:{i:0;N;}}', 1, 1, 1, '2019-06-20 04:04:04', '2019-08-08 08:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `firstname` varchar(191) DEFAULT NULL,
  `lastname` varchar(191) DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `extra` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Disabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `firstname`, `lastname`, `ip`, `city`, `state`, `country`, `extra`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', NULL, NULL, '220.158.206.79', '', '', '', NULL, 0, '2019-04-23 11:15:29', '2019-04-23 11:15:29'),
(2, 'admin1@gmail.com', NULL, NULL, '127.0.0.1', '', '', '', NULL, 0, '2019-04-24 08:49:06', '2019-04-24 08:49:06'),
(3, 'admin@dprescription.com', NULL, NULL, '127.0.0.1', '', '', '', NULL, 0, '2019-04-24 08:49:16', '2019-04-24 08:49:16'),
(4, 'manager@gmail.com', NULL, NULL, '127.0.0.1', '', '', '', NULL, 0, '2019-04-24 08:49:27', '2019-04-24 08:49:27'),
(5, 'nextpagetl@gmail.com', NULL, NULL, '127.0.0.1', '', '', '', NULL, 0, '2019-04-25 03:50:19', '2019-04-25 03:50:19'),
(6, 'mmsumon799@gmail.com', NULL, NULL, '127.0.0.1', '', '', '', NULL, 1, '2019-04-29 07:12:42', '2019-04-29 08:45:39'),
(7, 'demo@ecommerce.com', NULL, NULL, '127.0.0.1', '', '', '', NULL, 0, '2019-04-29 11:30:25', '2019-04-29 11:30:25'),
(8, 'demo@ecomfrmerce.com', NULL, NULL, '127.0.0.1', '', '', '', NULL, 0, '2019-04-29 11:32:39', '2019-04-29 11:32:39'),
(9, 'admin2@gmail.com', NULL, NULL, '103.197.155.226', '', '', '', NULL, 0, '2019-05-01 03:43:54', '2019-05-01 03:43:54'),
(10, 'fikuvapy@mailinator.net', NULL, NULL, '220.158.206.79', '', '', '', NULL, 0, '2019-07-18 10:02:44', '2019-07-18 10:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(2, 2, 6, 'App\\Model\\Common\\Product', '2019-07-21 06:34:58', '2019-07-21 06:34:58'),
(23, 11, 590, 'App\\Model\\Common\\Product', '2019-08-01 04:14:39', '2019-08-01 04:14:39'),
(24, 12, 594, 'App\\Model\\Common\\Product', '2019-08-01 09:14:31', '2019-08-01 09:14:31'),
(25, 13, 594, 'App\\Model\\Common\\Product', '2019-08-01 09:14:31', '2019-08-01 09:14:31'),
(26, 14, 594, 'App\\Model\\Common\\Product', '2019-08-01 09:14:31', '2019-08-01 09:14:31'),
(27, 15, 595, 'App\\Model\\Common\\Product', '2019-08-01 07:59:28', '2019-08-01 07:59:28'),
(28, 16, 595, 'App\\Model\\Common\\Product', '2019-08-01 07:59:28', '2019-08-01 07:59:28'),
(29, 17, 595, 'App\\Model\\Common\\Product', '2019-08-06 16:10:42', '2019-08-06 16:10:42'),
(30, 18, 595, 'App\\Model\\Common\\Product', '2019-08-06 16:10:42', '2019-08-06 16:10:42'),
(31, 19, 595, 'App\\Model\\Common\\Product', '2019-08-06 16:10:42', '2019-08-06 16:10:42'),
(32, 17, 596, 'App\\Model\\Common\\Product', '2019-08-07 15:30:33', '2019-08-07 15:30:33'),
(33, 20, 596, 'App\\Model\\Common\\Product', '2019-08-07 15:30:33', '2019-08-07 15:30:33'),
(34, 19, 596, 'App\\Model\\Common\\Product', '2019-08-07 15:30:33', '2019-08-07 15:30:33'),
(35, 17, 597, 'App\\Model\\Common\\Product', '2019-08-07 15:42:26', '2019-08-07 15:42:26'),
(36, 21, 597, 'App\\Model\\Common\\Product', '2019-08-07 15:42:26', '2019-08-07 15:42:26'),
(37, 22, 597, 'App\\Model\\Common\\Product', '2019-08-07 15:42:26', '2019-08-07 15:42:26'),
(38, 19, 597, 'App\\Model\\Common\\Product', '2019-08-07 15:42:26', '2019-08-07 15:42:26'),
(39, 17, 598, 'App\\Model\\Common\\Product', '2019-08-07 15:46:42', '2019-08-07 15:46:42'),
(40, 23, 598, 'App\\Model\\Common\\Product', '2019-08-07 15:46:42', '2019-08-07 15:46:42'),
(41, 21, 598, 'App\\Model\\Common\\Product', '2019-08-07 15:46:42', '2019-08-07 15:46:42'),
(42, 19, 598, 'App\\Model\\Common\\Product', '2019-08-07 15:46:42', '2019-08-07 15:46:42'),
(43, 17, 599, 'App\\Model\\Common\\Product', '2019-08-07 16:23:20', '2019-08-07 16:23:20'),
(44, 24, 599, 'App\\Model\\Common\\Product', '2019-08-07 16:23:20', '2019-08-07 16:23:20'),
(45, 19, 599, 'App\\Model\\Common\\Product', '2019-08-07 16:23:20', '2019-08-07 16:23:20'),
(46, 17, 600, 'App\\Model\\Common\\Product', '2019-08-07 16:27:28', '2019-08-07 16:27:28'),
(47, 25, 600, 'App\\Model\\Common\\Product', '2019-08-07 16:27:28', '2019-08-07 16:27:28'),
(48, 19, 600, 'App\\Model\\Common\\Product', '2019-08-07 16:27:28', '2019-08-07 16:27:28'),
(49, 17, 601, 'App\\Model\\Common\\Product', '2019-08-07 16:32:09', '2019-08-07 16:32:09'),
(50, 26, 601, 'App\\Model\\Common\\Product', '2019-08-07 16:32:09', '2019-08-07 16:32:09'),
(51, 19, 601, 'App\\Model\\Common\\Product', '2019-08-07 16:32:09', '2019-08-07 16:32:09'),
(52, 17, 602, 'App\\Model\\Common\\Product', '2019-08-07 16:35:11', '2019-08-07 16:35:11'),
(53, 27, 602, 'App\\Model\\Common\\Product', '2019-08-07 16:35:11', '2019-08-07 16:35:11'),
(54, 19, 602, 'App\\Model\\Common\\Product', '2019-08-07 16:35:11', '2019-08-07 16:35:11'),
(55, 28, 603, 'App\\Model\\Common\\Product', '2019-08-07 16:37:44', '2019-08-07 16:37:44'),
(56, 19, 603, 'App\\Model\\Common\\Product', '2019-08-07 16:37:44', '2019-08-07 16:37:44'),
(57, 17, 604, 'App\\Model\\Common\\Product', '2019-08-07 16:40:31', '2019-08-07 16:40:31'),
(58, 29, 604, 'App\\Model\\Common\\Product', '2019-08-07 16:40:31', '2019-08-07 16:40:31'),
(59, 19, 604, 'App\\Model\\Common\\Product', '2019-08-07 16:40:31', '2019-08-07 16:40:31'),
(60, 17, 605, 'App\\Model\\Common\\Product', '2019-08-07 16:49:30', '2019-08-07 16:49:30'),
(61, 30, 605, 'App\\Model\\Common\\Product', '2019-08-07 16:49:30', '2019-08-07 16:49:30'),
(62, 19, 605, 'App\\Model\\Common\\Product', '2019-08-07 16:49:30', '2019-08-07 16:49:30'),
(63, 17, 606, 'App\\Model\\Common\\Product', '2019-08-07 16:51:33', '2019-08-07 16:51:33'),
(64, 31, 606, 'App\\Model\\Common\\Product', '2019-08-07 16:51:33', '2019-08-07 16:51:33'),
(65, 19, 606, 'App\\Model\\Common\\Product', '2019-08-07 16:51:33', '2019-08-07 16:51:33'),
(66, 17, 607, 'App\\Model\\Common\\Product', '2019-08-07 16:53:53', '2019-08-07 16:53:53'),
(67, 32, 607, 'App\\Model\\Common\\Product', '2019-08-07 16:53:53', '2019-08-07 16:53:53'),
(68, 19, 607, 'App\\Model\\Common\\Product', '2019-08-07 16:53:53', '2019-08-07 16:53:53'),
(69, 17, 608, 'App\\Model\\Common\\Product', '2019-08-07 16:56:11', '2019-08-07 16:56:11'),
(70, 33, 608, 'App\\Model\\Common\\Product', '2019-08-07 16:56:11', '2019-08-07 16:56:11'),
(71, 19, 608, 'App\\Model\\Common\\Product', '2019-08-07 16:56:11', '2019-08-07 16:56:11'),
(72, 17, 609, 'App\\Model\\Common\\Product', '2019-08-07 16:59:15', '2019-08-07 16:59:15'),
(73, 34, 609, 'App\\Model\\Common\\Product', '2019-08-07 16:59:15', '2019-08-07 16:59:15'),
(74, 35, 609, 'App\\Model\\Common\\Product', '2019-08-07 16:59:15', '2019-08-07 16:59:15'),
(75, 36, 609, 'App\\Model\\Common\\Product', '2019-08-07 16:59:15', '2019-08-07 16:59:15'),
(76, 19, 609, 'App\\Model\\Common\\Product', '2019-08-07 16:59:15', '2019-08-07 16:59:15'),
(77, 17, 610, 'App\\Model\\Common\\Product', '2019-08-07 17:01:15', '2019-08-07 17:01:15'),
(78, 37, 610, 'App\\Model\\Common\\Product', '2019-08-07 17:01:15', '2019-08-07 17:01:15'),
(79, 19, 610, 'App\\Model\\Common\\Product', '2019-08-07 17:01:15', '2019-08-07 17:01:15'),
(80, 17, 611, 'App\\Model\\Common\\Product', '2019-08-07 17:03:04', '2019-08-07 17:03:04'),
(81, 38, 611, 'App\\Model\\Common\\Product', '2019-08-07 17:03:04', '2019-08-07 17:03:04'),
(82, 39, 611, 'App\\Model\\Common\\Product', '2019-08-07 17:03:04', '2019-08-07 17:03:04'),
(83, 19, 611, 'App\\Model\\Common\\Product', '2019-08-07 17:03:04', '2019-08-07 17:03:04'),
(84, 17, 612, 'App\\Model\\Common\\Product', '2019-08-07 17:06:03', '2019-08-07 17:06:03'),
(85, 40, 612, 'App\\Model\\Common\\Product', '2019-08-07 17:06:03', '2019-08-07 17:06:03'),
(86, 19, 612, 'App\\Model\\Common\\Product', '2019-08-07 17:06:03', '2019-08-07 17:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text,
  `image` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_products` int(11) NOT NULL,
  `seo_title` varchar(191) DEFAULT NULL,
  `meta_key` text,
  `meta_description` text,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=active, 2=pending, 3=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `description`, `image`, `slug`, `views`, `total_posts`, `total_products`, `seo_title`, `meta_key`, `meta_description`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Double georgette', NULL, NULL, 'double-georgette', 0, 1, 0, NULL, NULL, NULL, 1, NULL, 1, '2019-04-20 08:21:51', '2019-04-20 08:21:51'),
(11, 'Hellmann\'s', NULL, NULL, 'hellmanns', 0, 0, 1, NULL, NULL, NULL, 1, 1, 1, '2019-08-01 04:14:39', '2019-08-01 06:48:26'),
(12, 'oreo', NULL, NULL, 'oreo', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-01 07:42:02', '2019-08-01 07:42:02'),
(13, 'biscuit', NULL, NULL, 'biscuit', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-01 07:42:02', '2019-08-01 07:42:02'),
(14, 'cookies', NULL, NULL, 'cookies', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-01 07:42:02', '2019-08-01 07:42:02'),
(15, 'salt', NULL, NULL, 'salt', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 1, '2019-08-01 07:59:28', '2019-08-01 08:00:19'),
(16, 'tesco', NULL, NULL, 'tesco', 0, 0, 0, NULL, NULL, NULL, 1, NULL, 1, '2019-08-01 07:59:28', '2019-08-01 08:00:19'),
(17, 'spice', NULL, NULL, 'spice', 0, 0, 17, NULL, NULL, NULL, 1, NULL, 1, '2019-08-06 16:10:42', '2019-08-07 17:06:03'),
(18, 'basil', NULL, NULL, 'basil', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-06 16:10:42', '2019-08-06 16:10:42'),
(19, 'schwartz', NULL, NULL, 'schwartz', 0, 0, 18, NULL, NULL, NULL, 1, NULL, 1, '2019-08-06 16:10:42', '2019-08-07 17:06:03'),
(20, 'bay leaves', NULL, NULL, 'bay-leaves', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 15:27:09', '2019-08-07 15:27:09'),
(21, 'seasoning', NULL, NULL, 'seasoning', 0, 0, 2, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 15:42:26', '2019-08-07 15:46:42'),
(22, 'chinese spice', NULL, NULL, 'chinese-spice', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 15:42:26', '2019-08-07 15:42:26'),
(23, 'cajun', NULL, NULL, 'cajun', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 15:46:42', '2019-08-07 15:46:42'),
(24, 'cumin', NULL, NULL, 'cumin', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:23:20', '2019-08-07 16:23:20'),
(25, 'garlic salt', NULL, NULL, 'garlic-salt', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:27:28', '2019-08-07 16:27:28'),
(26, 'garlic granules', NULL, NULL, 'garlic-granules', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:32:09', '2019-08-07 16:32:09'),
(27, 'cinnamon', NULL, NULL, 'cinnamon', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:35:11', '2019-08-07 16:35:11'),
(28, 'mixed herbs', NULL, NULL, 'mixed-herbs', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:37:44', '2019-08-07 16:37:44'),
(29, 'cloves', NULL, NULL, 'cloves', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:40:31', '2019-08-07 16:40:31'),
(30, 'parsley grinder', NULL, NULL, 'parsley-grinder', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:49:30', '2019-08-07 16:49:30'),
(31, 'parsely leaf', NULL, NULL, 'parsely-leaf', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:51:33', '2019-08-07 16:51:33'),
(32, 'mixed spice', NULL, NULL, 'mixed-spice', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:53:53', '2019-08-07 16:53:53'),
(33, 'cardamom', NULL, NULL, 'cardamom', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:56:11', '2019-08-07 16:56:11'),
(34, 'steak seasoning', NULL, NULL, 'steak-seasoning', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:59:15', '2019-08-07 16:59:15'),
(35, 'pepper', NULL, NULL, 'pepper', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:59:15', '2019-08-07 16:59:15'),
(36, 'garlic', NULL, NULL, 'garlic', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 16:59:15', '2019-08-07 16:59:15'),
(37, 'herbes de provence', NULL, NULL, 'herbes-de-provence', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 17:01:15', '2019-08-07 17:01:15'),
(38, 'oregano grinder', NULL, NULL, 'oregano-grinder', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 17:03:04', '2019-08-07 17:03:04'),
(39, 'oregano', NULL, NULL, 'oregano', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 17:03:04', '2019-08-07 17:03:04'),
(40, 'rosemary', NULL, NULL, 'rosemary', 0, 0, 1, NULL, NULL, NULL, 1, NULL, 1, '2019-08-07 17:06:03', '2019-08-07 17:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `tax` double(5,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1 = Fixed and 2 = Percentage',
  `created_by` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1=Completed, 2=Processing, 3=Pending, 4=cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `country`, `tax`, `type`, `created_by`, `modified_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tax', 'Bangladesh', 10.00, 2, 1, 1, 1, '2019-04-20 04:43:16', '2019-04-20 04:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `auth_id` varchar(191) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `firstname` varchar(191) DEFAULT NULL,
  `lastname` varchar(191) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `address` text,
  `country` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `billing_firstname` varchar(191) DEFAULT NULL,
  `billing_lastname` varchar(191) DEFAULT NULL,
  `billing_mobile` varchar(20) DEFAULT NULL,
  `billing_company` varchar(191) DEFAULT NULL,
  `billing_address` text,
  `billing_country` varchar(191) DEFAULT NULL,
  `billing_state` varchar(191) DEFAULT NULL,
  `billing_city` varchar(191) DEFAULT NULL,
  `billing_zip` varchar(5) DEFAULT NULL,
  `job_title` varchar(191) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=Active, 2=Pending, 3=Cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `auth_id`, `username`, `email`, `firstname`, `lastname`, `mobile`, `company`, `address`, `country`, `state`, `city`, `zip`, `billing_firstname`, `billing_lastname`, `billing_mobile`, `billing_company`, `billing_address`, `billing_country`, `billing_state`, `billing_city`, `billing_zip`, `job_title`, `password`, `image`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'sumon', 'sumon@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vtM9BmMnRFcgIZFF1BdFIOD5zvuqyPNhf/pxr5z8vRsWY0eYu//2m', '', NULL, 1, NULL, NULL),
(3, NULL, 'admin2', 'mmsumon799@gmail.com', 'Buckle', 'BD', '23432424', 'Nunez and Santos Inc', 'House 34 (3B), Road 2, Nikunja 2, Dhaka 1229', 'Bangladesh', 'Dhaka', 'Dhaka', '1229', 'Buckle', 'BD', '23432424', 'Nunez and Santos Inc', 'House 34 (3B), Road 2, Nikunja 2, Dhaka 1229', NULL, NULL, 'Dhaka', '1229', NULL, '$2y$10$P.diOQRzca1homQIeQQys.Lrtr5HYnq..lS8qPaGmBP3/ULBi2n..', NULL, 'NkI3OiKvNQvrqD42rtcDb0IhEG25uU99c7ydujglGTlGVZCCtd39iiJo7KMW', 1, '2019-04-24 10:07:55', '2019-04-24 11:55:39'),
(4, NULL, 'rubelm677@gmail.com', 'rubelm677@gmail.com', 'Rubel', 'Howlader', '1723331925', 'asdfasd', '55 East 52nd Street', 'Bangladesh', 'Jhalokati', 'New York', '75974', 'Rubel', 'Howlader', '1723331925', 'asdfasd', '55 East 52nd Street', NULL, NULL, 'New York', '75974', NULL, '$2y$10$N9wTV5GIwqy2sxmEmw43h.m6QoZmVipuc8O2OjiojTQ2b1J8E1iKy', NULL, NULL, 1, '2019-04-30 05:10:58', '2019-04-30 06:53:24'),
(5, NULL, 'admin3@gmail.com', 'admin3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$L.FNjG96QDCc.sn75J7UNeBfKMf6umZQLgWZ6CWqUTPRbHVNwsK4O', NULL, 'RiiCdu4aLj5oQkFrXms0jmHmsyHJMm3u7iWHD5MAedJfDLFEbyzGsneMN8GS', 1, '2019-05-01 03:14:19', '2019-05-01 03:14:19'),
(7, NULL, 'mostafiztou@yahoo.com', 'mostafiztou@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$x16EF3p5LvvPC7jybZwt9.13VY/BYK7C.CRQpIb3beEWQhGcRV2xC', '362', 'nqUikr0DnR12J5K1YwPWJEJDDFJ9tPNZG45zi2pUQylegAtItHTfluA4GJQR', 1, '2019-05-12 04:09:48', '2019-05-12 07:39:14'),
(8, NULL, 'admin123@gmail.com', 'admin123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$R/o6KHpECLJ7iiFNHoqVLOv45Lusl6gxwCjteC.8qkuOBo7eMdZDW', NULL, NULL, 1, '2019-05-13 04:45:14', '2019-05-13 04:45:14'),
(9, NULL, 'mostafiz', 'mostafiz128@gmail.com', 'asdasdasd', 'asdasdas', '01739560365', 'sadasdasd', 'dsfsdfsdf', 'Bangladesh', 'Feni', 'dsfd', '1229', 'asdasdasd', 'asdasdas', '01739560365', 'sadasdasd', 'dsfsdfsdf', NULL, NULL, 'dsfd', '1229', NULL, '$2y$10$ekRwWGoZPULtUGmc0yTQ5uSNeHpBoRp//x95joz1fL18wdenupQ62', '385', 'M7Ys6M1HC9oJBRoxtcfLXKuydBdwBsm5Ce9Krurb3uU1AhKLpTVXmI3Ltz6h', 1, '2019-05-21 04:59:16', '2019-05-26 04:57:50'),
(10, NULL, 'Sammy1234', 'demo@ecommerce.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EbCg6jK4PrH4BGVVIpLn3O0a02.kvrZ2XkIs/5POgFaRnwk6usR0a', NULL, 'oI3azCpIKj9W1ta7ju3GeebDnQe8NAXqwhvZR4iQ1DUY1egmAJuTm9g2XZNZ', 1, '2019-06-18 10:01:53', '2019-06-18 10:01:53'),
(11, NULL, 'simebycibe', 'wozuku@mailinator.net', 'Rubel', 'Howlader', '1723331925', 'asdfasd', '55 East 52nd Street', 'Bangladesh', 'Jhalokati', 'New York', '75974', 'Rubel', 'Howlader', '1723331925', 'asdfasd', '55 East 52nd Street', NULL, NULL, 'New York', '75974', NULL, '$2y$10$0iOpqbGcGrrVUUVAu5KFLOUIkvwi58lf3ErYYr2HwIOuNFqZZzI0.', NULL, NULL, 1, '2019-06-23 04:34:49', '2019-06-23 04:35:54'),
(12, NULL, 'mahmudmart.com.bd', 'micgyhaelped@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QAaeoPkfO/uPR4bqH0DXvu2Jy8NDy8h.mnd75ur2GIe7xnAJVOW92', NULL, NULL, 1, '2019-07-07 01:36:53', '2019-07-07 01:36:53'),
(13, '2065072176924788', 'rubelm81@yahoo.com', 'rubelm81@yahoo.com', 'Rubel', 'Howlader', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NuiKHDlXk37V6KbHKUShhe7tOX/5bINFW52cA.4CWum.XqFYqFP7G', '', NULL, 1, '0000-00-00 00:00:00', NULL),
(14, '2310104459203597', 'isajid07@gmail.com', 'isajid07@gmail.com', 'Sajedul', 'Islam Sajid', '01723331925', 'fdfd', 'dfd', 'Algeria', 'Ain Defla', 'dfdfd', '12121', 'Sajedul', 'Islam Sajid', '01723331925', 'fdfd', 'dfd', NULL, NULL, 'dfdfd', '12121', NULL, '$2y$10$SKaEikHiPOs3uBf2czrQwO0lNwUpzIbjuKzSpSMfgl.lfMNuWA9MW', '', NULL, 1, '0000-00-00 00:00:00', '2019-07-23 14:58:23'),
(15, '106438169876801264579', 'syed.s.raihangpc@gmail.com', 'syed.s.raihangpc@gmail.com', 'syed', 's.raihan', '01711091434', 'Ddd', 'Dd', 'Bangladesh', 'Barisal', 'Ddf', '820', 'syed', 's.raihan', '01711091434', 'Ddd', 'Dd', NULL, NULL, 'Ddf', '820', NULL, '$2y$10$Vngj9U70wNoVjoK.1cpafeC769rRHIoyvIq55q7OwKtVzREnyL6uu', '', NULL, 1, '0000-00-00 00:00:00', '2019-07-23 16:52:34'),
(16, '2142376352549063', 'mostafiztopu@yahoo.com', 'mostafiztopu@yahoo.com', 'Mostafiz', 'Topu', '01739560326', 'Next page', 'House: 34, Road: 2, nikunja-2, Dhaka-1229', 'Bangladesh', 'Lakshmipur', 'Dhaka', '1229', 'Mostafiz', 'Topu', '01739560326', 'Next page', 'House: 34, Road: 2, nikunja-2, Dhaka-1229', NULL, NULL, 'Dhaka', '1229', NULL, '$2y$10$cdzy7JNVSvsWPFDXuHBGCe5tXIAkKOgf28JF/aWCIuygeizl4KsdK', '', '4akMo2JaOPF2fA6B9ImXRG2CviilX2XD5aKhJrfRwGG4DUI0jUvAHljgnYsj', 1, '0000-00-00 00:00:00', '2019-07-24 06:01:51'),
(17, NULL, 'mostafiz1', 'mostafiz1@gmail.com', 'Mostafiz', 'Rahaman', '01739560326', 'nextpage', 'khilkhet', 'Bangladesh', 'Kishoreganj', 'BANGLEDESH', '1229', 'Mostafiz', 'Rahaman', '01739560326', 'nextpage', 'khilkhet', NULL, NULL, 'BANGLEDESH', '1229', NULL, '$2y$10$IH.QGqiDhi/UkWpza4u3VucAWcf1KQK3npMs6HnoW128pnquW4f6i', '489', NULL, 1, '2019-07-28 06:27:32', '2019-07-28 08:11:22'),
(18, NULL, 'Sumaiya Minnat', 'sumaiya.minnat@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Xfqn8mx4Rf43IOshBVDLqOv9VzjGVRkEg3XewHoYr5JQjbnUOSmKu', NULL, 'tSTWqW3rJIbulHuvLB7u68nESqo9TKscgIa6eT6L9oSttOZTeZwX0SFhaaqk', 1, '2019-08-01 07:00:14', '2019-08-01 09:28:05'),
(19, '205672713729909', 'nextpagetl@gmail.com', 'nextpagetl@gmail.com', 'Sajid', 'Islam', '23423423423423', NULL, 'House 34 (3B), Road 2, Nikunja 2, Dhaka 1229', NULL, NULL, 'Dhaka', '1229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tldruIpLYW5VohqwDtOKfuftwlrvG476889oHH.MCMXU/L1njiH7K', '', NULL, 1, '0000-00-00 00:00:00', '2019-08-04 08:33:49'),
(20, NULL, 'admin@gmail.com', 'admin@gmail.com', 'Buckle', 'BD', '23423423423423', NULL, 'House 34 (3B), Road 2, Nikunja 2, Dhaka 1229', NULL, NULL, 'Dhaka', '1229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zGRjXaVVfgagMqmyQuKGSehAxEHjE7ZF0YPVO.p9VIyvkdO1FkTgC', NULL, 'w2dES1agqJxSSwAqQWuym0S1kmJAmVOTiwABlYF2YBaE9EtG0UCK6emJgMVg', 1, '2019-08-04 08:38:35', '2019-08-04 08:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_metas`
--

CREATE TABLE `users_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_metas`
--

INSERT INTO `users_metas` (`id`, `user_id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 2, 'skype', '645', '2019-04-20 04:39:34', '2019-04-20 04:39:34'),
(2, 2, 'user_online_status', '1', '2019-04-21 04:35:04', '2019-04-21 04:35:04'),
(3, 2, 'user_online_status', '1', '2019-04-21 04:35:04', '2019-04-21 04:35:04'),
(4, 2, 'front_user_online_status', '0', '2019-04-24 07:02:16', '2019-04-24 07:02:16'),
(5, 2, 'front_user_last_activity', '2019-08-04 12:35:36', '2019-04-24 07:02:16', '2019-08-04 06:35:36'),
(6, 3, 'front_user_online_status', '0', '2019-04-24 10:31:51', '2019-04-24 10:31:51'),
(7, 3, 'front_user_last_activity', '2019-04-24 05:54:20', '2019-04-24 10:31:51', '2019-04-24 11:54:20'),
(8, 3, 'user_online_status', '1', '2019-04-24 10:46:48', '2019-04-24 10:46:48'),
(9, 4, 'user_online_status', '1', '2019-04-30 09:01:18', '2019-04-30 09:01:18'),
(10, 5, 'front_user_online_status', '0', '2019-05-01 04:12:58', '2019-05-01 04:12:58'),
(11, 5, 'front_user_last_activity', '2019-04-30 11:12:58', '2019-05-01 04:12:58', '2019-05-01 04:12:58'),
(12, 7, 'user_online_status', '1', '2019-05-13 04:44:38', '2019-05-13 04:44:38'),
(13, 7, 'front_user_online_status', '0', '2019-05-13 04:44:53', '2019-05-13 04:44:53'),
(14, 7, 'front_user_last_activity', '2019-05-13 10:44:53', '2019-05-13 04:44:53', '2019-05-13 04:44:53'),
(15, 6, 'user_online_status', '1', '2019-05-16 09:36:53', '2019-05-16 09:36:53'),
(16, 9, 'user_online_status', '1', '2019-05-23 06:24:17', '2019-05-23 06:24:17'),
(17, 9, 'front_user_online_status', '0', '2019-05-26 05:18:30', '2019-05-26 05:18:30'),
(18, 9, 'front_user_last_activity', '2019-05-26 11:18:30', '2019-05-26 05:18:30', '2019-05-26 05:18:30'),
(19, 10, 'front_user_online_status', '0', '2019-06-18 10:13:28', '2019-06-18 10:13:28'),
(20, 10, 'front_user_last_activity', '2019-06-18 04:25:40', '2019-06-18 10:13:28', '2019-06-18 10:25:40'),
(21, 10, 'user_online_status', '1', '2019-06-18 10:17:28', '2019-06-18 10:17:28'),
(22, 6, 'skype', NULL, '2019-06-24 08:44:29', '2019-06-24 08:44:29'),
(23, 6, 'front_user_online_status', '0', '2019-07-09 05:08:14', '2019-07-09 05:08:14'),
(24, 6, 'front_user_last_activity', '2019-07-18 12:51:11', '2019-07-09 05:08:14', '2019-07-18 06:51:11'),
(25, 16, 'front_user_online_status', '0', '2019-07-24 06:02:13', '2019-07-24 06:02:13'),
(26, 16, 'front_user_last_activity', '2019-07-27 09:24:06', '2019-07-24 06:02:13', '2019-07-27 15:24:06'),
(27, 17, 'user_online_status', '1', '2019-07-28 07:35:33', '2019-07-28 07:35:33'),
(28, 17, 'user_online_status', '1', '2019-07-28 07:35:33', '2019-07-28 07:35:33'),
(29, 18, 'front_user_online_status', '0', '2019-08-01 07:11:51', '2019-08-01 07:11:51'),
(30, 18, 'front_user_last_activity', '2019-08-01 01:11:51', '2019-08-01 07:11:51', '2019-08-01 07:11:51'),
(31, 18, 'user_online_status', '1', '2019-08-01 07:12:38', '2019-08-01 07:12:38'),
(32, 20, 'front_user_online_status', '0', '2019-08-04 08:39:17', '2019-08-04 08:39:17'),
(33, 20, 'front_user_last_activity', '2019-08-04 02:39:17', '2019-08-04 08:39:17', '2019-08-04 08:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `date`, `views`) VALUES
(1, '2019-04-18', 1),
(2, '2019-04-20', 2),
(3, '2019-04-21', 11),
(4, '2019-04-22', 4),
(5, '2019-04-23', 9),
(6, '2019-04-24', 25),
(7, '2019-04-25', 2),
(8, '2019-04-27', 3),
(9, '2019-04-28', 10),
(10, '2019-04-29', 3),
(11, '2019-04-30', 26),
(12, '2019-05-01', 7),
(13, '2019-05-02', 6),
(14, '2019-05-04', 6),
(15, '2019-05-05', 4),
(16, '2019-05-05', 1),
(17, '2019-05-05', 1),
(18, '2019-05-06', 4),
(19, '2019-05-07', 1),
(20, '2019-05-08', 2),
(21, '2019-05-09', 1),
(22, '2019-05-12', 1),
(23, '2019-05-13', 2),
(24, '2019-05-14', 1),
(25, '2019-05-15', 2),
(26, '2019-05-16', 3),
(27, '2019-05-18', 1),
(28, '2019-05-20', 1),
(29, '2019-05-21', 1),
(30, '2019-05-22', 1),
(31, '2019-05-23', 2),
(32, '2019-05-25', 1),
(33, '2019-05-26', 4),
(34, '2019-05-27', 2),
(35, '2019-05-28', 2),
(36, '2019-05-29', 2),
(37, '2019-05-30', 1),
(38, '2019-06-18', 4),
(39, '2019-06-19', 1),
(40, '2019-06-20', 3),
(41, '2019-06-22', 4),
(42, '2019-06-23', 16),
(43, '2019-06-24', 1),
(44, '2019-06-25', 9),
(45, '2019-06-26', 175),
(46, '2019-06-27', 108),
(47, '2019-06-28', 55),
(48, '2019-06-29', 391),
(49, '2019-06-30', 141),
(50, '2019-07-01', 25),
(51, '2019-07-02', 24),
(52, '2019-07-03', 33),
(53, '2019-07-04', 733),
(54, '2019-07-05', 323),
(55, '2019-07-06', 147),
(56, '2019-07-07', 63),
(57, '2019-07-08', 51),
(58, '2019-07-09', 609),
(59, '2019-07-10', 773),
(60, '2019-07-11', 306),
(61, '2019-07-12', 96),
(62, '2019-07-13', 75),
(63, '2019-07-14', 317),
(64, '2019-07-15', 664),
(65, '2019-07-16', 670),
(66, '2019-07-17', 307),
(67, '2019-07-18', 138),
(68, '2019-07-18', 1),
(69, '2019-07-19', 196),
(70, '2019-07-20', 498),
(71, '2019-07-21', 510),
(72, '2019-07-22', 676),
(73, '2019-07-23', 410),
(74, '2019-07-24', 281),
(75, '2019-07-24', 1),
(76, '2019-07-25', 508),
(77, '2019-07-26', 420),
(78, '2019-07-27', 454),
(79, '2019-07-28', 513),
(80, '2019-07-29', 335),
(81, '2019-07-30', 537),
(82, '2019-07-31', 513),
(83, '2019-08-01', 324),
(84, '2019-08-02', 357),
(85, '2019-08-03', 442),
(86, '2019-08-04', 456),
(87, '2019-08-05', 432),
(88, '2019-08-06', 398),
(89, '2019-08-07', 479),
(90, '2019-08-08', 125),
(91, '2019-08-19', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_firstname_index` (`firstname`),
  ADD KEY `admins_lastname_index` (`lastname`),
  ADD KEY `admins_role_id_index` (`role_id`),
  ADD KEY `admins_status_index` (`status`);

--
-- Indexes for table `admins_metas`
--
ALTER TABLE `admins_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_metas_admin_id_index` (`admin_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_title_index` (`title`),
  ADD KEY `blogs_is_sticky_index` (`is_sticky`),
  ADD KEY `blogs_comment_enable_index` (`comment_enable`),
  ADD KEY `blogs_status_index` (`status`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`),
  ADD KEY `brands_title_index` (`title`),
  ADD KEY `brands_status_index` (`status`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_title_index` (`title`),
  ADD KEY `categories_is_featured_index` (`is_featured`),
  ADD KEY `categories_status_index` (`status`);

--
-- Indexes for table `categoryables`
--
ALTER TABLE `categoryables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryables_category_id_index` (`category_id`),
  ADD KEY `categoryables_categoryable_id_index` (`categoryable_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_id_index` (`commentable_id`),
  ADD KEY `comments_p_c_id_index` (`p_c_id`),
  ADD KEY `comments_created_by_index` (`created_by`),
  ADD KEY `comments_status_index` (`status`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_status_index` (`status`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_liker_id_index` (`liker_id`),
  ADD KEY `likes_liker_ip_index` (`liker_ip`),
  ADD KEY `likes_likeable_id_index` (`likeable_id`),
  ADD KEY `likes_likeable_type_index` (`likeable_type`),
  ADD KEY `likes_status_index` (`status`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_slug_unique` (`slug`),
  ADD KEY `media_is_private_index` (`is_private`),
  ADD KEY `media_title_index` (`title`);

--
-- Indexes for table `media_permissions`
--
ALTER TABLE `media_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_permissions_media_id_index` (`media_id`),
  ADD KEY `media_permissions_user_id_index` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_index` (`user_id`),
  ADD KEY `orders_grand_total_index` (`grand_total`),
  ADD KEY `orders_paid_index` (`paid`),
  ADD KEY `orders_payment_method_id_index` (`payment_method_id`),
  ADD KEY `orders_order_status_index` (`order_status`),
  ADD KEY `orders_payment_status_index` (`payment_status`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_menu_title_index` (`menu_title`),
  ADD KEY `pages_page_title_index` (`page_title`),
  ADD KEY `pages_views_index` (`views`),
  ADD KEY `pages_created_by_index` (`created_by`),
  ADD KEY `pages_status_index` (`status`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_title_index` (`title`),
  ADD KEY `products_brand_id_index` (`brand_id`),
  ADD KEY `products_unit_id_index` (`unit_id`),
  ADD KEY `products_status_index` (`status`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_name_index` (`name`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_status_index` (`status`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`),
  ADD KEY `services_title_index` (`title`),
  ADD KEY `services_status_index` (`status`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_option_name_unique` (`option_name`),
  ADD KEY `settings_created_by_index` (`created_by`),
  ADD KEY `settings_autoload_index` (`autoload`),
  ADD KEY `settings_status_index` (`status`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_index` (`created_by`),
  ADD KEY `sliders_status_index` (`status`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`),
  ADD KEY `subscribers_firstname_index` (`firstname`),
  ADD KEY `subscribers_lastname_index` (`lastname`),
  ADD KEY `subscribers_status_index` (`status`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggables_tag_id_index` (`tag_id`),
  ADD KEY `taggables_taggable_id_index` (`taggable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`),
  ADD KEY `tags_title_index` (`title`),
  ADD KEY `tags_created_by_index` (`created_by`),
  ADD KEY `tags_status_index` (`status`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_status_index` (`status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_firstname_index` (`firstname`),
  ADD KEY `users_lastname_index` (`lastname`),
  ADD KEY `users_company_index` (`company`),
  ADD KEY `users_billing_firstname_index` (`billing_firstname`),
  ADD KEY `users_billing_lastname_index` (`billing_lastname`),
  ADD KEY `users_billing_company_index` (`billing_company`),
  ADD KEY `users_job_title_index` (`job_title`),
  ADD KEY `users_status_index` (`status`),
  ADD KEY `users_auth_id_index` (`auth_id`);

--
-- Indexes for table `users_metas`
--
ALTER TABLE `users_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_metas_user_id_index` (`user_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitors_date_index` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins_metas`
--
ALTER TABLE `admins_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categoryables`
--
ALTER TABLE `categoryables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `media_permissions`
--
ALTER TABLE `media_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_metas`
--
ALTER TABLE `users_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
