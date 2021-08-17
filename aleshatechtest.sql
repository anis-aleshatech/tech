-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2021 at 01:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aleshatechtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrations`
--

CREATE TABLE `administrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hints` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrations`
--

INSERT INTO `administrations` (`id`, `fullname`, `contact`, `username`, `email`, `designation`, `address`, `photo`, `password`, `password_hints`, `remember_token`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mohammad Wasim', '01858084232', 'wasim47', 'wasim.html@gmail.com', 'Team Leader', 'Mirpur - 11', NULL, '$2y$10$FKu2fegYtQgp.sM7PEBBbu35XP0h/NDLWU5M8B4qNodNRrukfnoie', '913390', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_requirement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edu_requirement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publishdate` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `menu_id`, `image`, `content`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'About Us', 1, 'banner_1615877363.jpg', '<p style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Alesha Tech Ltd, group of industries has an emerging business heritage, a sparkling present and a glittering future. &lsquo;Alesha&rsquo; is established in year 2018 by experienced, industrious and challenge seeking leaders.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"color:#171717\">ALESHA Tech offers highly optimized solutions and services across wide range of industry domains. Here at ALESHA Tech, we have the right expertise to help you with all your technology needs and unique IT requirements. We have the resource to establish our name in providing exceptional technology solutions and services, maintaining globally recognized standards and latest technology trends.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"color:#171717\">We are offering highly optimized solutions and services across wide range of industry domains. Some of our key services include application development, open source development, mobile application development, business intelligence and analytics, business process management, cloud infrastructure implementation, front-end design and digital marketing.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"color:#171717\">ALESHA Tech builds Web and Mobile solutions that are in harmony with industry requirements and budget. Applying the know-how of advanced technologies, we work to augment the growth of startups, small business, and enterprises. On team keeps pace with the latest technology trends like Artificial Intelligence, lot, Big Data.</span></span></p>', 1, NULL, NULL, NULL, '2021-03-15 23:22:23', '2021-03-16 00:49:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totals` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `album_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`id`, `name`, `image`, `details`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Business processing outsourcing (BPO)', 'goal_1615885220.jpg', '<p style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">We provide a wide range of BPO services to our clients. We offer to help our clients sharing the monotonous work and increasing their productivity. We have dedicated agents to provide you 24/7 service. Our team has various backgrounds related to IT and tech. they are enough efficient and driven to handle any kind of pressure. we will support you with voice/phone, video call, online chat, email, SMS, social media and whatever it takes to help you.</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">ITES-</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Information Technology Enabled Services is a type of BPO that handles IT solutions over the internet. </span></span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Inbound and outbound customer support</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Telemarketing</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Supplier sourcing and product procurement</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Talent acquisition and development</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Ecommerce support</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Data processing</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">data entry service</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">data conversion service </span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">OCR data capture</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Image processing</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">BIG data and analytics</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Cloud Computing </span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Business intelligence and analytics</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Accounting and bookkeeping</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Virtual assistant solutions</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Logistic BPO</span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"color:#171717\">File conversion and Documentation</span></span></span></p>', 1, NULL, NULL, NULL, '2021-03-16 03:00:20', '2021-03-16 03:00:20', NULL),
(2, 'Knowledge processing outsourcing (KPO)', 'goal_1615885268.jpg', '<p style=\"margin-left:.25in; text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Data Management, Search and Analytics</span></span></strong></p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">In fast moving consumer goods. Telecom and banking sectors, knowledge about market, competition., opportunities are most important for a successful business. We will help you to analyze the consumer market, supply chain and retails, so that your profitability increases and that would be our success.</span></span></p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Engineering Design</span></span></strong></p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Engineering Services Outsourcing (ESO) involves the outsourcing of activities ranging from design to production and maintenance. Diverse industrial sectors that benefit from ESO include automotive, aerospace, hi-tech/telecom, utilities and construction/industrial machinery. KPO firms often perform design works using computer-aided design (CAD) and advanced engineering methods.</span></span></p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">We offer engineering designing services for hi-tech, constructions, industrial sectors. Our expertise ranges from design to maintenance. Your valuable time will be well utilized and your smooth business process is our goal.</span></span></p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Remote Education and Publishing</span></span></strong></p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Outsourcing publishing and remote education work would help publishing houses, educational institutes, information aggregators, professional societies, government agencies, universities and corporations to save costs.</span></span></p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Alesha Tech Ltd will advanced technology to lessen the load of your educational organization. We do remote operation removing extra work burden from your organization. Publishing houses, educational institutions, professional societies, govt. agencies will get benefitted the service we offer for educational and publishing sector.</span></span></p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Banking, Securities and Insurance</span></span></strong></p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">We offer research activities involving financial modeling, company valuation, company profiling and analysis. Alesha tech ltd does world class services with enough expertise and infrastructure.</span></span></p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Market Research and Competitive Intelligence</span></span></strong></p>\r\n\r\n<p style=\"margin-left:.25in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">In our KPO service, we do high end deep research starting by data collecting and data cleaning. We deliver detailed report, presentations using advanced statistical tool and techniques. </span></span></p>', 1, NULL, NULL, NULL, '2021-03-16 03:01:08', '2021-03-16 03:01:08', NULL),
(3, 'Software Development Skill', 'goal_1615885338.jpg', '<ul>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Custom Software Development: </span></span></strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Alesha tech will ensure you amazing customer journey throughout customer experience. Our collective offers include cloud hosting solutions, website design, different application integration, custom software applications, digital marketing, eCommerce. Our success is measured by expanding your revenue. We will help you throughout the journey so that your prospects take turn into sales and revenue.</span></span></p>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Software Project Rescue: </span></span></strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Our experienced software architects, developers, analytics will solve any of your software problems, when your software projects fail in the middle way. Our expertise will get to the root of the problem and fix it efficiently so that our clients can focus on their day to day running of the business.</span></span></p>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Systems Migration: </span></span></strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">In Alesha Tech Ltd we offer software migration which are based on older technologies. &nbsp;Often older systems are much complicated, complex, with security issues. We will help you to come out of that complexity and flourish further more.</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Quality Assurance: </span></span></strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">We examine your software quality, usability, performance, code quality and provide you with detailed information&rsquo;s where the bug exists. We have experts to provide you a quality software.</span></span></p>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Maintenance and Support: </span></span></strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Our team is well capable of maintaining and evaluating as 2<sup>nd</sup> and 3<sup>rd</sup> party support services for your IT infrastructure.</span></span></p>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Web Applications: </span></span></strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">We will give you solutions with advanced platform which is best suited for you. Your project is our responsibility. We will deliver your projects in time with quality.</span></span></p>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Cloud Solutions: </span></span></strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">We offer you cloud computing solutions as Infrastructure as a service (IaaS), Platform as a service (PaaS), Software as a service (SaaS). We offer you world class cloud solutions where you can depend on us with your day to day operations.</span></span></p>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Mobile Apps: </span></span></strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">We offer cross-platform development, search engine optimization with high quality design to develop high performing mobile apps.</span></span></p>\r\n\r\n<p style=\"margin-left:1.0in; text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Front end solutions-UX/UI:</span></span></strong></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"color:#171717\">We ensure user experience/ user interface to its best quality which will make customer journey more user friendly.</span></span></span></p>', 1, NULL, NULL, NULL, '2021-03-16 03:02:18', '2021-03-16 03:02:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_applicants`
--

CREATE TABLE `job_applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobid` bigint(20) UNSIGNED NOT NULL,
  `mobile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currentDesignation` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sparent_id` int(11) DEFAULT NULL,
  `page_structure` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `uri`, `parent_id`, `sparent_id`, `page_structure`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'About Alesha Tech Ltd', 'about-alesha-tech-ltd', NULL, NULL, 'Text', NULL, NULL, NULL, NULL, '2021-03-14 02:25:19', '2021-03-14 02:25:19', NULL),
(2, 'Mission and Vision', 'mission-and-vision', 1, NULL, 'Text', NULL, NULL, NULL, NULL, '2021-03-14 02:27:28', '2021-03-14 04:07:15', NULL),
(3, 'Strength', 'strength', 1, NULL, 'Text', NULL, NULL, NULL, NULL, '2021-03-14 02:28:52', '2021-03-14 04:07:22', NULL),
(4, 'Our services', 'our-services', NULL, NULL, 'service', NULL, NULL, NULL, NULL, '2021-03-14 04:12:13', '2021-03-14 04:12:13', NULL),
(5, 'Products', 'products', NULL, NULL, 'product', NULL, NULL, NULL, NULL, '2021-03-14 04:12:24', '2021-03-14 04:12:24', NULL),
(6, 'Media', 'media', NULL, NULL, 'photos', NULL, NULL, NULL, NULL, '2021-03-14 04:12:34', '2021-03-14 04:12:34', NULL),
(7, 'Photo Gallery', 'photo-gallery', 6, NULL, 'photos', NULL, NULL, NULL, NULL, '2021-03-14 04:13:01', '2021-03-14 04:13:01', NULL),
(8, 'Video Gallery', 'video-gallery', 6, NULL, 'videos', NULL, NULL, NULL, NULL, '2021-03-14 04:13:15', '2021-03-14 04:13:15', NULL),
(9, 'Portfolio', 'portfolio', NULL, NULL, 'portfolio', NULL, NULL, NULL, NULL, '2021-03-14 04:13:23', '2021-03-14 04:13:23', NULL),
(10, 'Our Team', 'our-team', NULL, NULL, 'team', NULL, NULL, NULL, NULL, '2021-03-14 04:13:38', '2021-03-14 04:13:38', NULL);

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
(4, '2021_03_13_054935_create_administrations_table', 1),
(11, '2021_03_13_102812_create_albums_table', 2),
(12, '2021_03_13_105917_create_banners_table', 2),
(13, '2021_03_13_111233_create_blogs_table', 2),
(14, '2021_03_13_112049_create_careers_table', 2),
(15, '2021_03_13_113425_create_counters_table', 3),
(16, '2021_03_13_113820_create_menus_table', 3),
(17, '2021_03_13_114157_create_contents_table', 4),
(18, '2021_03_13_114459_create_galleries_table', 5),
(19, '2021_03_13_114942_create_job_applicants_table', 6),
(20, '2021_03_13_115337_create_partners_table', 7),
(21, '2021_03_13_115540_create_products_table', 8),
(22, '2021_03_13_115632_create_services_table', 9),
(23, '2021_03_13_115708_create_subscriptions_table', 10),
(24, '2021_03_13_115753_create_usefulllinks_table', 11),
(25, '2021_03_13_115849_create_video_galleries_table', 12),
(26, '2021_03_13_122519_create_staff_table', 13),
(27, '2021_03_13_122728_create_management_table', 14),
(28, '2021_03_13_123135_create_counters_table', 15),
(29, '2021_03_16_085645_create_goals_table', 16),
(30, '2021_03_16_085813_create_protfolios_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `image`, `url`, `details`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aleshamart', 'partner_1615886107.png', NULL, NULL, 1, NULL, NULL, NULL, '2021-03-16 03:15:07', '2021-03-16 03:15:07', NULL),
(2, 'Alesha Agro Limited', 'partner_1615886124.png', NULL, NULL, 1, NULL, NULL, NULL, '2021-03-16 03:15:24', '2021-03-16 03:15:24', NULL),
(3, 'Alesha Lather Limited', 'partner_1615886137.png', NULL, NULL, 1, NULL, NULL, NULL, '2021-03-16 03:15:37', '2021-03-16 03:15:37', NULL),
(4, 'Alesha Polymar Limited', 'partner_1615886163.png', NULL, NULL, 1, NULL, NULL, NULL, '2021-03-16 03:16:04', '2021-03-16 03:16:04', NULL),
(5, 'Alesha Engineering Limited', 'partner_1615886177.png', NULL, NULL, 1, NULL, NULL, NULL, '2021-03-16 03:16:17', '2021-03-16 03:16:17', NULL),
(6, 'Alesha Steel Limited', 'partner_1615886189.png', NULL, NULL, 1, NULL, NULL, NULL, '2021-03-16 03:16:29', '2021-03-16 03:16:29', NULL),
(7, 'Alesha Tech Limited', 'partner_1615886204.png', NULL, NULL, 1, NULL, NULL, NULL, '2021-03-16 03:16:44', '2021-03-16 03:16:44', NULL);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `protfolios`
--

CREATE TABLE `protfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protfolios`
--

INSERT INTO `protfolios` (`id`, `name`, `image`, `details`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Apps', 'protfolio_1615885752.jpg', '<p>Underconstruction...</p>', 1, NULL, NULL, NULL, '2021-03-16 03:03:08', '2021-03-16 03:09:12', NULL),
(2, 'Apps', 'protfolio_1615885743.jpg', '<p>Underconstruction...</p>', 1, NULL, NULL, NULL, '2021-03-16 03:03:20', '2021-03-16 03:09:03', NULL),
(3, 'Apps', 'protfolio_1615885765.jpg', NULL, 1, NULL, NULL, NULL, '2021-03-16 03:09:25', '2021-03-16 03:09:25', NULL),
(4, 'Apps', 'protfolio_1615885775.jpg', NULL, 1, NULL, NULL, NULL, '2021-03-16 03:09:35', '2021-03-16 03:09:35', NULL),
(5, 'Apps', 'protfolio_1615885783.jpg', NULL, 1, NULL, NULL, NULL, '2021-03-16 03:09:43', '2021-03-16 03:09:43', NULL),
(6, 'Apps', 'protfolio_1615885789.jpg', NULL, 1, NULL, NULL, NULL, '2021-03-16 03:09:49', '2021-03-16 03:09:49', NULL),
(7, 'Apps', 'protfolio_1615885795.jpg', NULL, 1, NULL, NULL, NULL, '2021-03-16 03:09:55', '2021-03-16 03:09:55', NULL),
(8, 'Apps', 'protfolio_1615885804.jpg', '<p>Apps</p>', 1, NULL, NULL, NULL, '2021-03-16 03:10:04', '2021-03-16 03:10:04', NULL),
(9, 'Apps', 'protfolio_1615885811.jpg', NULL, 1, NULL, NULL, NULL, '2021-03-16 03:10:11', '2021-03-16 03:10:11', NULL),
(10, 'Apps', 'protfolio_1615885819.jpg', NULL, 1, NULL, NULL, NULL, '2021-03-16 03:10:19', '2021-03-16 03:10:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `image`, `details`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Custom Software Development', 'service_1615881857.jpg', '<p style=\"margin-left:0in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Alesha tech will ensure you amazing customer journey throughout customer experience. Our collective offers include cloud hosting solutions, website design, different application integration, custom software applications, digital marketing, eCommerce. Our success is measured by expanding your revenue. We will help you throughout the journey so that your prospects take turn into sales and revenue.</span></span></p>\r\n\r\n<p>&nbsp;</p>', 1, NULL, NULL, NULL, '2021-03-16 02:01:33', '2021-03-16 02:04:17', NULL),
(2, 'Software Project Rescue', 'service_1615882022.jpg', '<p style=\"margin-left:0in; text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Our experienced software architects, developers, analytics will solve any of your software problems, when your software projects fail in the middle way. Our expertise will get to the root of the problem and fix it efficiently so that our clients can focus on their day to day running of the business.</span></span></p>', 1, NULL, NULL, NULL, '2021-03-16 02:07:02', '2021-03-16 02:07:02', NULL),
(3, 'Systems Migration', 'service_1615882145.jpg', '<p><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">In Alesha Tech Ltd we offer software migration which are based on older technologies. &nbsp;Often older systems are much complicated, complex, with security issues. We will help you to come out of that complexity and flourish further more.</span></span></p>', 1, NULL, NULL, NULL, '2021-03-16 02:09:05', '2021-03-16 02:09:05', NULL),
(4, 'Quality Assurance', 'service_1615882251.jpg', '<p><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">We examine your software quality, usability, performance, code quality and provide you with detailed information&rsquo;s where the bug exists. We have experts to provide you a quality software.</span></span></p>', 1, NULL, NULL, NULL, '2021-03-16 02:10:51', '2021-03-16 02:10:51', NULL),
(5, 'Maintenance and Support', 'service_1615882283.jpg', '<p><span style=\"font-size:12.0pt\"><span style=\"color:#171717\">Our team is well capable of maintaining and evaluating as 2<sup>nd</sup> and 3<sup>rd</sup> party support services for your IT infrastructure</span></span></p>', 1, NULL, NULL, NULL, '2021-03-16 02:11:23', '2021-03-16 02:11:23', NULL),
(6, 'Web Applications', 'service_1615882326.jpg', '<p>We will give you solutions with advanced platform which is best suited for you. Your project is our responsibility. We will deliver your projects in time with quality.</p>', 1, NULL, NULL, NULL, '2021-03-16 02:12:06', '2021-03-16 02:12:06', NULL),
(7, 'Cloud Solutions', 'service_1615882356.jpg', '<p>We offer you cloud computing solutions as Infrastructure as a service (IaaS), Platform as a service (PaaS), Software as a service (SaaS). We offer you world class cloud solutions where you can depend on us with your day to day operations.</p>', 1, NULL, NULL, NULL, '2021-03-16 02:12:36', '2021-03-16 02:12:36', NULL),
(8, 'Mobile Apps', 'service_1615882374.jpg', '<p>We offer cross-platform development, search engine optimization with high quality design to develop high performing mobile apps.</p>', 1, NULL, NULL, NULL, '2021-03-16 02:12:54', '2021-03-16 02:12:54', NULL),
(9, 'Front end solutions-UX/UI', 'service_1615882397.jpg', '<p>We ensure user experience/ user interface to its best quality which will make customer journey more user friendly.</p>', 1, NULL, NULL, NULL, '2021-03-16 02:13:17', '2021-03-16 02:13:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usefulllinks`
--

CREATE TABLE `usefulllinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `links` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `video_galleries`
--

CREATE TABLE `video_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `album_id` bigint(20) UNSIGNED NOT NULL,
  `video_title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_ref` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrations`
--
ALTER TABLE `administrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `administrations_username_unique` (`username`),
  ADD UNIQUE KEY `administrations_email_unique` (`email`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
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
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_album_id_foreign` (`album_id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applicants_jobid_foreign` (`jobid`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protfolios`
--
ALTER TABLE `protfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usefulllinks`
--
ALTER TABLE `usefulllinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_galleries`
--
ALTER TABLE `video_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_galleries_album_id_foreign` (`album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrations`
--
ALTER TABLE `administrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protfolios`
--
ALTER TABLE `protfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usefulllinks`
--
ALTER TABLE `usefulllinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_galleries`
--
ALTER TABLE `video_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD CONSTRAINT `job_applicants_jobid_foreign` FOREIGN KEY (`jobid`) REFERENCES `careers` (`id`);

--
-- Constraints for table `video_galleries`
--
ALTER TABLE `video_galleries`
  ADD CONSTRAINT `video_galleries_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
