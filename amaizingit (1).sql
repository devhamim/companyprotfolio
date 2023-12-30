-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 11:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amaizingit`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `define` int(11) NOT NULL DEFAULT 2,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `subtitle`, `title`, `image`, `description`, `define`, `status`, `created_at`, `updated_at`) VALUES
(6, 'details', 'Why CHOOSE us?', NULL, '<p style=\"color: rgb(128, 128, 128); font-family: Poppins, Arial, sans-serif; font-size: 15px; background-color: rgb(27, 27, 27);\">There are lots of choices when it comes to interior design firms. What makes Design Associates different? Why choose us?</p><p style=\"color: rgb(128, 128, 128); font-family: Poppins, Arial, sans-serif; font-size: 15px; background-color: rgb(27, 27, 27);\">We’re a modern Interior Firm offering a full range of interior design and space planning services. Our goals are our clients’ goals. Every business is important to us and we are focused on providing plan solutions as per clients requirement on time.</p><p style=\"color: rgb(128, 128, 128); font-family: Poppins, Arial, sans-serif; font-size: 15px; background-color: rgb(27, 27, 27);\">Our services are affordable at any budget level. This ensures that your budget goes towards investment in your home, rather than paying an expensive designer. As an Interior Firm, we co-ordinate with various reliable contractors and suppliers to provide the best quality services and materials at a minimal rate.</p><p style=\"color: rgb(128, 128, 128); font-family: Poppins, Arial, sans-serif; font-size: 15px; background-color: rgb(27, 27, 27);\">Design Associates is committed to maintaining the standards in delivering quality products and services to its clients. We take the time to listen to your needs and understand your business to ensure our design solutions be effective. We believe listening is the foundation to the working process and the key to a successful relationship.</p><p style=\"color: rgb(128, 128, 128); font-family: Poppins, Arial, sans-serif; font-size: 15px; background-color: rgb(27, 27, 27);\">We always act as a faithful interior firm to our clients. Throughout the years, we have developed great long-term relationships with many of our clients. In fact, several of our very first clients are still our clients to this day. We are humbled and honored by this and to create that kind of trust with each of our clients. We want to be a partner in the long-term growth and success of your business.</p>', 1, 1, '2023-12-29 13:50:54', '2023-12-29 13:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `achieves`
--

CREATE TABLE `achieves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achieves`
--

INSERT INTO `achieves` (`id`, `title`, `icon`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Active Clients', 'QBVKe313036.png', '500', 1, '2023-10-25 00:08:30', '2023-10-25 00:17:18'),
(2, 'Projects Completed', 'pCiqh309600.png', '8600', 1, '2023-10-25 00:10:00', '2023-10-25 00:17:04'),
(3, 'Expert People', 'UykCC260102.png', '500', 1, '2023-10-25 00:17:34', '2023-10-25 00:17:34'),
(4, 'Happy Clients', 'QXAVC705896.png', '7600', 1, '2023-10-25 00:17:52', '2023-10-25 00:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Sunt id inventore od', 'Voluptatem nostrum v', 'H1QcJ431977.jpg', 1, '2023-12-29 12:32:14', '2023-12-29 12:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `define` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `slug`, `title`, `tags`, `image`, `added_by`, `description`, `define`, `status`, `created_at`, `updated_at`) VALUES
(9, '99999999999', 'Itaque debitis odio', 'aaa,gg', '0VACW151142.jpg', 1, '<p class=\"blog-details__text-2\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: none; outline: none; color: rgb(119, 119, 119); font-family: Manrope, sans-serif; line-height: var(--body-line-height);\">Mauris non dignissim purus, ac commodo diam. Donec sit amet lacinia nulla. Aliquam quis purus in justo pulvinar tempor. Aliquam tellus nulla, sollicitudin at euismod nec, feugiat at nisi. Quisque vitae odio nec lacus interdum tempus. Phasellus a rhoncus erat. Vivamus vel eros vitae est aliquet pellentesque vitae et nunc. Sed vitae leo vitae nisl pellentesque semper.</p><p class=\"blog-details__text-2\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: none; outline: none; color: rgb(119, 119, 119); font-family: Manrope, sans-serif; line-height: var(--body-line-height);\">Mauris non dignissim purus, ac commodo diam. Donec sit amet lacinia nulla. Aliquam quis purus in justo pulvinar tempor. Aliquam tellus nulla, sollicitudin at euismod nec, feugiat at nisi. Quisque vitae odio nec lacus interdum tempus. Phasellus a rhoncus erat. Vivamus vel eros vitae est aliquet pellentesque vitae et nunc. Sed vitae leo vitae nisl pellentesque semper.</p><p class=\"blog-details__text-2\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: none; outline: none; color: rgb(119, 119, 119); font-family: Manrope, sans-serif; line-height: var(--body-line-height);\">Mauris non dignissim purus, ac commodo diam. Donec sit amet lacinia nulla. Aliquam quis purus in justo pulvinar tempor. Aliquam tellus nulla, sollicitudin at euismod nec, feugiat at nisi. Quisque vitae odio nec lacus interdum tempus. Phasellus a rhoncus erat. Vivamus vel eros vitae est aliquet pellentesque vitae et nunc. Sed vitae leo vitae nisl pellentesque semper.</p>', 1, 1, '2023-10-21 04:55:30', '2023-12-29 14:13:48'),
(10, '111111111111', 'মন যখন নিজের শরীরের মৃত্যুর কারন!', 'Dolores,dddd,ddd,sss,ssdd', 'ZXezy208586.jpg', 1, 'gggggggggggggg', 1, 1, '2023-10-21 04:55:57', '2023-12-29 14:14:28'),
(11, '222222222', 'ঘর গোছানোর বাজেট', 'aaa,solution', 'fsUNw915174.jpg', 1, '<h3 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 700; line-height: 30px; font-size: 20px; padding: 30px 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(32, 32, 32); background-color: rgb(236, 246, 255);\"><br></h3><p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: medium; line-height: 26px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(32, 32, 32); background-color: rgb(236, 246, 255);\">There are many variations of passages of Lorem Ipsum available, but the majoriity our have suffered alteration in some form, by injected humour, or randomised words whic don’t look even slightly believable. If you are going to use a passa of Lorem Ipsum, you need to be sure there isn’t Contrary to popular belief, Lorem Ipsum<br>Web design encompasses many different skills and disciplinese in the production and maini enance of websites. The different areas of web design include web graphic desi gn; interfac design; authoring, including standardised code.<span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); font-family: inherit; font-style: italic; font-variant-ligatures: inherit; font-variant-caps: inherit; letter-spacing: 0px;\">e are many variations of passages of Lorem Ipsum available, but the majoriity our have suffered alteration in some form, by injected humour, or randomised words whic don’t look even slightly believable.</span></p>', 1, 1, '2023-10-21 04:57:28', '2023-12-29 14:16:10'),
(12, '333333333', 'চাষাভুষার ভোলা গ্রাম যেভাবে আজকের গুলশান! !', 'seo,solution,writing', 'sukm2608617.jpg', 1, '<h3 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 30px; padding: 30px 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Web design encompasses many different skills and disciplinese in the production and maini enance of websites. The different areas of web design include web graphic desi gn; interfac design; authoring, including standardised code.</span></h3><div class=\"blog-details-pcolor\" style=\"margin: 35px 0px; padding: 35px 55px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-variant-alternates: inherit; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: 26px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing hidden in the midle of text. All the Lorem Ipsum generators on the Internet tend to repeat</p></div><p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: 26px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">There are many variations of passages of Lorem Ipsum available, but the majoriity our have suffered alteration in some form, by injected humour, or randomised words whic don’t look even slightly believable.</p>', 1, 1, '2023-10-21 05:00:19', '2023-12-29 14:14:43'),
(13, '5555555', 'Find Your Interior Design Style!', '', 'lvjaW791247.jpg', 1, '<p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: medium; line-height: 26px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(32, 32, 32); background-color: rgb(236, 246, 255);\">There are many variations of passages of Lorem Ipsum available, but the majoriity our have suffered alteration in some form, by injected humour, or randomised words whic don’t look even slightly believable. If you are going to use a passa of Lorem Ipsum, you need to be sure there isn’t Contrary to popular belief, Lorem Ipsum<br><br>Web design encompasses many different skills and disciplinese in the production and maini enance of websites. The different areas of web design include web graphic desi gn; interfac design; authoring, including standardised code.</p><div class=\"blog-details-pcolor\" style=\"margin: 35px 0px; padding: 35px 55px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-variant-alternates: inherit; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: 26px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing hidden in the midle of text. All the Lorem Ipsum generators on the Internet tend to repeat</p></div><p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: medium; line-height: 26px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(32, 32, 32); background-color: rgb(236, 246, 255);\">There are many variations of passages of Lorem Ipsum available, but the majoriity our have suffered alteration in some form, by injected humour, or randomised words whic don’t look even slightly believable.</p>', 1, 1, '2023-10-21 05:04:42', '2023-12-29 14:15:04'),
(14, '66666', 'How Interior Designers Help Make Your House a Home !', NULL, 'J4hW0160607.jpg', 1, '<p> SEO can be the best solution for business SEO can be the best solution for business SEO can be the best solution for business SEO can be the best solution for business</p>', 1, 1, '2023-10-25 01:46:56', '2023-12-29 14:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogs_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `name`, `blogs_id`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Caesar', 9, 'hamim@gmail.com', 'fdfdfda', '2023-10-25 06:29:33', '2023-10-25 06:29:33'),
(2, 'Caesar', 9, 'tulyqut@mailinator.com', 'fgfdfgdd', '2023-10-25 06:33:06', '2023-10-25 06:33:06'),
(3, 'Caesar', 9, NULL, 'dffd', '2023-10-25 06:39:25', '2023-10-25 06:39:25'),
(4, 'hamim', 14, 'tulyqut@mailinator.com', 'fgf', '2023-10-25 06:39:44', '2023-10-25 06:39:44'),
(5, 'Muksitur Rahman Hamim', 10, 'muksiturrahmanhamim735@gmail.com', 'aaaaaaaaaaaaaa', '2023-10-29 13:15:48', '2023-10-29 13:15:48'),
(6, 'Muksitur Rahman Hamim', 12, 'muksiturrahmanhamim735@gmail.com', 'aaaaa', '2023-10-31 11:03:42', '2023-10-31 11:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag`
--

CREATE TABLE `blog_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'feedex', '52FBK987133.jpg', 1, '2023-10-19 04:19:15', '2023-12-29 13:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `customer_messages`
--

CREATE TABLE `customer_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_messages`
--

INSERT INTO `customer_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Jerry Jackson', 'qasyja@mailinator.com', '+1 (223) 744-7365', 'Ullamco ad et deseru', 'Quis omnis molestiae', '2023-10-25 01:15:28', '2023-10-25 01:15:28'),
(4, 'Martha Foreman', 'datajuvas@mailinator.com', '+1 (555) 846-2807', 'Voluptate nesciunt', 'Quia dolore velit s', '2023-10-31 11:21:59', '2023-10-31 11:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `customer_says`
--

CREATE TABLE `customer_says` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_says`
--

INSERT INTO `customer_says` (`id`, `name`, `post`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Makross Jento', 'Graphic Designer', 'SE120208095.png', '<p><span style=\"color: rgb(32, 32, 32); font-size: 15px; text-align: center;\">There are many variations of passage of Lorem Ipsum available but the maj ority have suffered alteration in some form, by injected humour or as</span><br></p>', 1, '2023-10-19 03:39:00', '2023-10-25 00:57:32'),
(3, 'tushar', 'Graphic Designer', 'cN6mf948595.png', '<p><span style=\"color: rgb(32, 32, 32); font-size: 15px; text-align: center;\">There are many variations of passage of Lorem Ipsum available but the maj ority have suffered alteration in some form, by injected humour</span><br></p>', 1, '2023-10-19 03:43:00', '2023-10-25 00:57:56');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `icon`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Guaranteed Works', 'ya8YS93441.png', 'yaosE494447.jpg', 'Naff at public school blog bobby Elizabeth super blo bamboozled blab.', 1, '2023-10-18 06:41:01', '2023-12-29 14:23:36'),
(4, 'Free Consultation', 'oXZ0Z258527.png', 'sNwjx91682.jpg', 'Naff at public school blog bobby Elizabeth super blo bamboozled blab.', 1, '2023-10-18 06:43:29', '2023-12-29 14:24:15'),
(5, 'Affordable Price', 'E9gQi828265.png', 'wRTVW108285.jpg', 'Naff at public school blog bobby Elizabeth super blo bamboozled blab.', 1, '2023-10-18 06:44:31', '2023-12-29 14:24:03'),
(6, 'Customer Satisfaction', 'OT9so401251.png', 'DajQE678043.jpg', 'Naff at public school blog bobby Elizabeth super blo bamboozled blab.', 1, '2023-10-18 06:45:15', '2023-12-29 14:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `image`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bio', '4IouM322301.jpg', 'dhaka,bangladesh-1200', 1, '2023-10-24 23:29:46', '2023-10-24 23:42:56'),
(3, 'bio gas', 'kiICD95055.jpg', 'dhaka,bangladesh', 1, '2023-10-24 23:43:19', '2023-10-24 23:43:19'),
(4, 'bio gas', 'fmVzN559254.jpg', 'dhaka,bangladesh', 2, '2023-10-24 23:43:31', '2023-10-24 23:45:51'),
(5, 'bio gas', '0bLxp414022.jpg', 'dhaka,bangladesh', 1, '2023-10-24 23:44:04', '2023-10-24 23:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 'CESzg945790.png', 1, '2023-11-14 12:08:33', '2023-11-14 12:25:45'),
(3, NULL, 'Z5wEC264365.png', 1, '2023-11-14 12:25:20', '2023-11-14 12:25:36'),
(4, NULL, 'ADios130084.png', 1, '2023-11-14 13:04:01', '2023-11-14 13:04:01');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_10_16_091028_create_settings_table', 2),
(8, '2023_10_18_120350_create_features_table', 3),
(11, '2023_10_19_053423_create_abouts_table', 4),
(13, '2023_10_19_074934_create_teams_table', 5),
(14, '2023_10_19_090648_create_customer_says_table', 6),
(15, '2023_10_19_095341_create_clients_table', 7),
(16, '2023_10_19_103509_create_portfolios_table', 8),
(19, '2023_10_21_054156_create_blogs_table', 9),
(20, '2023_10_21_071156_create_tags_table', 9),
(21, '2023_10_21_073839_create_blog_tag_table', 10),
(22, '2023_10_23_060741_create_services_table', 11),
(23, '2023_10_23_065009_create_pricings_table', 12),
(24, '2023_10_23_073730_create_privacy_policies_table', 13),
(25, '2023_10_25_052005_create_galleries_table', 14),
(26, '2023_10_25_055948_create_achieves_table', 15),
(27, '2023_10_25_070628_create_customer_messages_table', 16),
(30, '2023_10_25_121756_create_blog_comments_table', 17),
(34, '2023_10_28_054429_create_banners_table', 18),
(35, '2023_11_14_173645_create_memberships_table', 19);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` int(11) NOT NULL DEFAULT 1,
  `define` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `feature_id`, `name`, `title`, `image`, `client`, `date`, `value`, `link`, `description`, `completed`, `define`, `status`, `created_at`, `updated_at`) VALUES
(2, 4, 'Lillith', 'Eaque', 'AuEna866394.jpg', 'Sunt', '2020-02-05', '56', 'Explicabo Autem id', 'bbbbbb', 1, 2, 1, '2023-10-19 06:11:35', '2023-12-29 12:44:39'),
(3, 4, 'Abigail York', 'Aut quis nisi ea sed', 'aD5gw408587.jpg', 'Modi et nemo ut aute', '2004-12-16', '94', 'Dolore non ut molest', '<div class=\"portfolio-details-content mt-65\">\r\n                        <div class=\"row\">\r\n                            <div class=\"col-lg-6\">\r\n                                <div class=\"text\">\r\n                                    <p>New York saw its highest \r\nsingle-day increase in deaths, up 562 to 2,935 - nearly half of all \r\nvirus-related US deaths recorded yesterday. The White House may advise \r\nthose in virus hotspots to wear face coverings in public to help stem \r\nthe spread mid deepening crisis, top health official   Dr Anthony Fauci \r\n  has said he believes all states should issue stay-at-home orders.</p>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"col-lg-6\">\r\n                                <div class=\"text\">\r\n                                    <p>I don’t understand why that’s not\r\n happening,” Dr Fauci told CNN on Thursday. “If you look at what’s going\r\n on in this country, I just don’t understand why we’re not doing that.”</p>\r\n                                </div>\r\n                                <div class=\"text pt-15\">\r\n                                    <p>You’ve got to put your foot on the accelerator to bring that number down,” he added, referring to infection and death rates.</p>\r\n                                </div>\r\n                            </div>\r\n                        </div></div>', 2, 2, 1, '2023-10-29 10:18:44', '2023-12-29 12:44:05'),
(4, 4, 'Matthew Cote', 'Saepe dolor quod exe', 'hnU6Y308666.jpg', 'Lorem fuga Sit eos', '2018-11-21', '63', 'Dolor beatae officii', 'gvvgggggggggggggg', 2, 1, 1, '2023-10-29 10:19:01', '2023-12-29 12:44:59'),
(5, 5, 'Kuame Mcfadden', 'Nobis asperiores dol', '6OQqx500782.jpg', 'Aut tempor provident', '2023-01-29', '41', 'Sunt omnis velit fug', 'rrrrrrrrrrrrrrrr', 2, 2, 1, '2023-10-29 10:22:02', '2023-12-29 12:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `pricings`
--

CREATE TABLE `pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricings`
--

INSERT INTO `pricings` (`id`, `title`, `icon`, `price`, `link`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Lorem nisi perspicia', 'Llrlw675194.jpg', '135', 'https://www.facebook.com/', '<p>aaaaaaaaaa</p><p>aaaaaaaaaa</p><p>aaaaaaaaaa</p><p>aaaaaaaaaa<br></p>', 1, '2023-10-23 01:01:59', '2023-10-31 11:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<div class=\"single-privacy\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(32, 32, 32);\"><h2 style=\"margin: -13px 0px; line-height: 45px; font-size: 30px; padding: 0px 0px 30px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Terms of Use - Vizion Installment</h2><p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; letter-spacing: 0px; color: rgb(86, 86, 86);\">Nulla enim justo, elementum iaculis commodo et, feugiat fermentum quam. In quis lorem tempor, porta nunc a, malesuada dui. Integer venenatis leo sit amet mi tincidunt, sit amet pharetra mauris efficitur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent vestibulum eros vitae magna iaculis.</p></div><div class=\"single-privacy privacy-padding\" style=\"margin: 65px 0px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(32, 32, 32);\"><h2 style=\"margin: -13px 0px; line-height: 45px; font-size: 30px; padding: 0px 0px 30px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Permitted Use and Restrictions</h2><p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; letter-spacing: 0px; color: rgb(86, 86, 86);\">Sed id tellus orci. Donec congue tellus dignissim molestie fermentum. Duis cursus in mi id cursus. Sed egestas mi quis semper feugiat. Donec laoreet porta velit. Duis eros orci, lacinia a mollis quis, vestibulum ut elit. Sed vitae justo sapien. Duis ultricies ante non tortor sollicitudin, vel mattis lacus venenatis. Nam non tincidunt mauris, a tincidunt diam. Sed pulvinar lorem pellentesque faucibus ornare. Donec eu dui urna. Cras porta porta enim, nec congue tellus hendrerit vitae. Fusce rhoncus vel lorem.</p><p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; letter-spacing: 0px; color: rgb(86, 86, 86);\"><br></p><h2 style=\"margin: -13px 0px; line-height: 45px; font-size: 30px; padding: 0px 0px 30px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(32, 32, 32);\">General</h2><p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: 26px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(86, 86, 86);\">Suspendisse eu neque sit amet mi fermentum litora torquent per conubia nostra viverra. Nullam venenatis feugiat odio nec tincidunt. Suspendisse molestie ipsum ac molestie maximus.</p><p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: 26px; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(86, 86, 86);\"><br></p><div class=\"single-privacy privacy-padding\" style=\"margin: 65px 0px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><h2 style=\"margin: -13px 0px; line-height: 45px; font-size: 30px; padding: 0px 0px 30px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Accounts &amp; Passwords</h2><p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; letter-spacing: 0px; color: rgb(86, 86, 86);\">Nunc quam dui, aliquam ut lacus non, congue rutrum tortor. Maecenas mi quam, lacinia sed tortor nec, cursus accumsan lorem. Pellentesque a quam non nibh tincidunt congue.</p></div><div class=\"single-privacy privacy-padding\" style=\"margin: 65px 0px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><h2 style=\"margin: -13px 0px; line-height: 45px; font-size: 30px; padding: 0px 0px 30px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Security</h2><p style=\"margin: -8px 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 16px; line-height: 26px; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; letter-spacing: 0px; color: rgb(86, 86, 86);\">Phasellus semper malesuada arcu a posuere. Vestibulum tortor nisi, pellentesque eget nibh tristique, scelerisque bibendum ex. Integer malesuada bibendum ante ut molestie. Praesent sed ex laoreet, cursus justo vel, sodales quam. Nam a odio eu ex pulvinar euismod.</p></div></div>', '2023-10-23 01:46:58', '2023-10-23 03:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_desp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `feature_id`, `title`, `icon`, `image`, `sort_desp`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Solar Panels', 'UAWq2439278.png', '0J01R796967.jpg', 'Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.', NULL, 1, '2023-10-23 00:23:58', '2023-10-24 05:03:40'),
(2, 1, 'Dicta', '4hG7X13019.png', 'sY07282165.jpg', 'Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.', NULL, 1, '2023-10-23 00:26:00', '2023-10-25 03:51:57'),
(3, 1, 'Wind Turbines', 'do36X530254.png', 'Ct4Vr895473.jpg', 'Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.', NULL, 1, '2023-10-24 06:09:19', '2023-10-25 03:51:45'),
(4, 1, 'Wind Turbines', 'gzDBc68497.png', '3WWNy172394.jpg', 'Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.', NULL, 1, '2023-10-25 03:55:01', '2023-10-25 03:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `email`, `about`, `number`, `logo`, `footer_logo`, `favicon`, `address`, `footer`, `title`, `meta_title`, `meta_tag`, `meta_description`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `pinterest`, `created_at`, `updated_at`) VALUES
(1, 'BSEL', 'bsel@gmail.com', 'bsel', '01876674794', 'VcQkk485018.png', '8Sig4867820.png', 'EXVDK569406.png', 'Dhaka,Bangladesh', '© 2023 bsel', 'bsel', 'bsel', 'bsel', 'Custom software development, web design , graphics design , digital marketing , Apps development, cyber security company in bangladesh since 2019 in Bangladesh. Ready software like HR, ERP, Accounting, CRM, Inventory solution and more.', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', NULL, '2023-12-29 12:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `post`, `image`, `facebook`, `instagram`, `linkedin`, `github`, `status`, `created_at`, `updated_at`) VALUES
(2, 'hamim7', 'webdev', 'JGmlx148192.jpg', 'https://abccommerce.nugortechit.xyz/setting', 'https://abccommerce.nugortechit.xyz/setting', NULL, NULL, '1', '2023-10-19 02:07:17', '2023-10-24 06:39:35'),
(3, 'hafsa', 'Graphic Designer', '3y5qY755596.jpg', NULL, NULL, NULL, NULL, '1', '2023-10-24 06:40:01', '2023-10-31 10:45:50'),
(4, 'Caesar', 'webdev', 'A6BGJ950982.jpg', NULL, NULL, NULL, NULL, '1', '2023-10-24 06:40:15', '2023-10-24 06:40:51'),
(5, 'Myra Good', 'Odit aperiam ut odio', 'BKbtS119682.jpg', 'Est et in odio est p', 'Quasi incidunt volu', 'Consectetur id praes', 'Amet sequi officiis', '1', '2023-10-29 10:24:57', '2023-10-29 10:24:57'),
(6, 'Meghan Goodwin', 'Nihil fuga Totam at', 'XiC5G950964.jpg', 'Libero consequatur', 'Nostrud nisi id pos', 'Possimus in qui aut', 'Consequatur rerum r', '1', '2023-10-29 10:27:39', '2023-10-29 10:27:39'),
(7, 'Kenneth Wooten', 'Eius quia pariatur', 'WUJJ3390949.jpg', 'Reprehenderit sit c', 'Aut molestiae maxime', 'Officia dolor amet', 'Sed et omnis vel ex', '1', '2023-10-29 10:28:02', '2023-10-29 10:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hamim', 'hamim@gmail.com', NULL, NULL, '$2y$10$fEBeyhM6WU0pqWJrHfYufeILnOas/oG9ejohK0wYNEuN5.1yb/bgm', 'hRHTRsviVQhpPfwTH84p93Er5V6s0ZPa2APs7y3mg2e0115cDhHl0tJ8I2Ln', '2023-10-16 00:57:07', '2023-10-26 02:00:36'),
(8, 'Mariam Shepard', 'xaby@mailinator.com', 'II3qT151304.jpg', NULL, '$2y$10$3zG1ojMF7njGcR4tQv.YR.S04w8KDLAflAXSP/2dZCY2gm8GcZHV.', 'bd6R6cXjXRq03nAELWPXXzNf7L5oy213hC9Au4ga9S3QffqQXNhDMNSSHUB2', '2023-10-26 01:59:08', '2023-10-26 03:17:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achieves`
--
ALTER TABLE `achieves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tag_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_messages`
--
ALTER TABLE `customer_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_says`
--
ALTER TABLE `customer_says`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `achieves`
--
ALTER TABLE `achieves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_messages`
--
ALTER TABLE `customer_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_says`
--
ALTER TABLE `customer_says`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD CONSTRAINT `blog_tag_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
