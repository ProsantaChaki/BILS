-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2020 at 06:32 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bils_new_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_profile_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_status` int(1) DEFAULT NULL COMMENT '1:logged in, 0 not logged in',
  `status` tinyint(4) DEFAULT NULL COMMENT '0: In-active, 1:Active, 2: Deleted',
  `user_type` int(2) NOT NULL DEFAULT '2' COMMENT '1: Admin user, 2: App User',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`id`, `name`, `nid_no`, `contact_no`, `email`, `address`, `password`, `user_profile_image`, `remarks`, `remember_token`, `login_status`, `status`, `user_type`, `created_at`, `updated_at`) VALUES
(5, 'Sazzadur', '123', '01747083028', 'sazzadur@gmail.com', 'kalabagan,dhaka', '81dc9bdb52d04dc20036dbd8313ed055', '1584624907.jpg', 'he is good.', NULL, NULL, 1, 2, '2020-02-09 21:12:29', '2020-04-25 16:54:00'),
(14, 'Momit Hasan', '213123', '01980340482', 'momit@gmail.com', NULL, '81dc9bdb52d04dc20036dbd8313ed055', '1584625014.jpg', 'asfasfsfsfsdf', NULL, NULL, 1, 2, '2020-03-19 01:36:54', '2020-03-21 08:30:43'),
(15, 'Chaki', '1243124', '01757808214', 'chakddi@gmail.com', 'Dhaka', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '234234234243', NULL, NULL, 1, 2, '2020-03-19 01:37:48', '2020-03-21 08:30:10'),
(16, 'chanchal', '017', '017371511252', 'chanchal@gmail.com', NULL, '81dc9bdb52d04dc20036dbd8313ed055', '1584625108.jpg', 'asdasdasdas', NULL, NULL, 1, 2, '2020-03-19 01:38:14', '2020-03-27 03:28:46'),
(20, 'Nishat', '1234', '01706077974', 'nishat@gmail.com', 'dhanmondi', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, 0, 2, '2020-03-21 10:29:02', '2020-04-04 15:58:50'),
(21, 'alif', '123', '01836', 'alif@gmail.com', 'asdasd', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, 1, 2, '2020-03-21 10:31:40', '2020-03-21 10:31:40'),
(23, 'mehedi', '111', '011', 'mehedi@gmail.com', 'bangla bazar', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, 1, 2, '2020-03-21 10:38:32', '2020-04-25 16:33:07'),
(25, 'kajol', '1234567', '123456', 'kajolchaki@gmail.com', '622 west shawrapara', '$2y$10$dpF0jCb6OIzy/OeaQ.AWreD90fnGopzLFJ9ImepbPpp4dui6BQuOm', '20018086601589034566558.jpg', NULL, NULL, 1, 1, 2, '2020-04-30 08:18:40', '2020-05-14 02:07:03'),
(44, 'User', '12345678', '1234567', 'user@user.com', NULL, '$2y$10$LkCWWpSz6UQdytAWKpklFOdMFyalI1t5iRhLcY15XJewxhARNFhSO', '', NULL, NULL, 0, 1, 2, '2020-05-05 09:00:29', '2020-05-05 09:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `app_user_group_members`
--

CREATE TABLE `app_user_group_members` (
  `id` int(11) NOT NULL,
  `app_user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 : no access, 1 : access',
  `message_seen` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_user_group_members`
--

INSERT INTO `app_user_group_members` (`id`, `app_user_id`, `group_id`, `status`, `message_seen`, `created_at`, `updated_at`) VALUES
(1, 5, 40, 1, 0, '2020-03-19 07:35:07', '2020-03-21 21:42:16'),
(2, 14, 39, 1, 0, '2020-03-19 07:36:54', '2020-03-21 20:30:43'),
(3, 15, 40, 1, 0, '2020-03-19 07:37:48', '2020-03-21 20:30:10'),
(4, 15, 41, 1, 0, '2020-03-19 07:37:48', '2020-03-21 20:30:10'),
(5, 16, 41, 1, 0, '2020-03-19 07:38:14', '2020-03-21 20:30:30'),
(7, 5, 39, 0, 0, '2020-03-21 22:13:33', NULL),
(8, 5, 41, 0, 0, '2020-03-21 22:14:14', '2020-03-27 18:10:29'),
(9, 14, 40, 0, 0, '2020-03-21 22:14:33', NULL),
(10, 14, 41, 0, 0, '2020-03-21 22:15:18', NULL),
(11, 15, 39, 0, 0, '2020-03-21 22:15:41', NULL),
(13, 16, 39, 0, 0, '2020-03-21 22:16:25', NULL),
(17, 20, 39, 1, 0, '2020-03-21 16:29:02', '2020-03-21 22:30:32'),
(18, 20, 40, 0, 0, '2020-03-21 16:29:02', '2020-03-21 16:29:02'),
(19, 20, 41, 0, 0, '2020-03-21 16:29:02', '2020-03-21 16:29:02'),
(20, 21, 39, 0, 0, '2020-03-21 16:31:40', '2020-03-21 16:31:40'),
(21, 21, 40, 0, 0, '2020-03-21 16:31:40', '2020-03-21 16:31:40'),
(22, 21, 41, 1, 0, '2020-03-21 16:31:41', '2020-03-21 22:37:34'),
(23, 23, 39, 0, 0, '2020-03-21 16:38:32', '2020-03-21 16:38:32'),
(24, 23, 40, 0, 0, '2020-03-21 16:38:32', '2020-03-21 16:38:32'),
(25, 23, 41, 1, 0, '2020-03-21 16:38:32', '2020-03-21 22:38:32'),
(26, 5, 44, 0, 0, '2020-03-21 17:55:41', '2020-03-21 17:55:41'),
(27, 14, 44, 0, 0, '2020-03-21 17:55:41', '2020-03-21 17:55:41'),
(28, 15, 44, 0, 0, '2020-03-21 17:55:41', '2020-03-21 17:55:41'),
(29, 16, 44, 0, 0, '2020-03-21 17:55:41', '2020-03-21 17:55:41'),
(30, 20, 44, 0, 0, '2020-03-21 17:55:41', '2020-03-21 17:55:41'),
(31, 21, 44, 0, 0, '2020-03-21 17:55:41', '2020-03-21 17:55:41'),
(32, 23, 44, 0, 0, '2020-03-21 17:55:41', '2020-03-21 17:55:41'),
(33, 25, 39, 1, 0, '2020-05-05 15:22:52', '2020-05-08 07:21:49'),
(34, 25, 40, 1, 0, '2020-05-05 15:22:52', '2020-05-08 07:21:49'),
(35, 25, 44, 1, 0, '2020-05-05 15:23:16', '2020-05-08 07:21:49'),
(36, 25, 41, 1, 0, '2020-05-05 15:23:16', '2020-05-08 07:21:49'),
(45, 44, 39, 1, 0, '2020-05-05 09:00:29', '2020-05-05 15:17:21'),
(46, 44, 40, 1, 0, '2020-05-05 09:00:29', '2020-05-05 15:17:21'),
(47, 44, 41, 1, 0, '2020-05-05 09:00:29', '2020-05-05 15:17:21'),
(48, 44, 44, 1, 0, '2020-05-05 09:00:29', '2020-05-05 15:17:21'),
(49, 5, 45, 0, 0, '2020-05-14 05:41:01', '2020-05-14 05:41:01'),
(50, 14, 45, 0, 0, '2020-05-14 05:41:01', '2020-05-14 05:41:01'),
(51, 15, 45, 0, 0, '2020-05-14 05:41:01', '2020-05-14 05:41:01'),
(52, 16, 45, 0, 0, '2020-05-14 05:41:01', '2020-05-14 05:41:01'),
(53, 20, 45, 0, 0, '2020-05-14 05:41:01', '2020-05-14 05:41:01'),
(54, 21, 45, 0, 0, '2020-05-14 05:41:01', '2020-05-14 05:41:01'),
(55, 23, 45, 0, 0, '2020-05-14 05:41:01', '2020-05-14 05:41:01'),
(56, 25, 45, 0, 0, '2020-05-14 05:41:01', '2020-05-14 05:41:01'),
(57, 44, 45, 0, 0, '2020-05-14 05:41:01', '2020-05-14 05:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `course_categories`
--

CREATE TABLE `course_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name_bn` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL COMMENT '0: In-active, 1: Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_categories`
--

INSERT INTO `course_categories` (`id`, `category_name`, `category_name_bn`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'First Aid', 'প্রাথমিক চিকিৎসা', 'All about first aid.', 1, '2020-03-20 05:51:16', '2020-05-14 12:31:03'),
(2, 'Labour law', 'শ্রমিক আইন', 'Labour law (also known as labor law or employment law) mediates the relationship between workers, employing entities, trade unions and the government. Collective labour law relates to the tripartite relationship between employee, employer and union.', 1, '2020-03-20 06:18:09', '2020-05-14 07:49:46'),
(3, 'Corona Virus', 'করোনা ভাইরাস', 'corona virus', 1, '2020-05-14 07:47:12', '2020-05-14 07:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `course_masters`
--

CREATE TABLE `course_masters` (
  `id` int(11) NOT NULL,
  `course_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appx_start_time` date DEFAULT NULL,
  `appx_end_time` date DEFAULT NULL,
  `act_start_time` date DEFAULT NULL,
  `act_end_time` date DEFAULT NULL,
  `course_type` int(11) DEFAULT NULL COMMENT 'from course categories table',
  `course_teacher` int(11) DEFAULT NULL COMMENT 'form teacher table',
  `course_responsible_person` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'admin',
  `details` text COLLATE utf8mb4_unicode_ci,
  `course_status` tinyint(1) DEFAULT NULL COMMENT '1: Initiate, 2: Approved, 3: Rejected, 4: Started, 5: Completed',
  `payment_fee` double DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'from paymet_methods table',
  `discount_message` text COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pub_status` tinyint(1) DEFAULT NULL COMMENT '0: Not-published, 1: Published',
  `perticipants_limit` int(11) DEFAULT NULL,
  `created_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `updated_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_masters`
--

INSERT INTO `course_masters` (`id`, `course_code`, `course_title`, `duration`, `appx_start_time`, `appx_end_time`, `act_start_time`, `act_end_time`, `course_type`, `course_teacher`, `course_responsible_person`, `details`, `course_status`, `payment_fee`, `payment_method`, `discount_message`, `attachment`, `pub_status`, `perticipants_limit`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'course-1', 'Basic First Aid Procedures', '20 H', '2020-03-20', '2020-04-20', NULL, NULL, 1, 1, 'admin', 'This quick primer on common basic first aid procedures can help get you through a minor crisis, at least until the paramedics arrive or you can get to medical treatment. These tips are based on the 2019 first aid procedures recommended by the American Heart Association and American Red Cross.1﻿ They are not a substitute for proper first aid training but can be an introduction to what you can do.', 2, 100, 'Bkash', NULL, NULL, 1, 20, 'Momit', 'Momit', '2020-03-20 05:59:15', '2020-03-30 21:33:52'),
(2, 'course-2', 'Bangladesh Labour Act 2006 – A complete Overview of Employee Rights & Labour Law in Bangladesh', '30 D', '2020-03-21', '2020-05-11', NULL, NULL, 2, 1, 'admin', 'The 2006 Bangladesh Labor Act is relatively sweeping and progressive. The Act consolidates and replaces the 25 existing acts. The comprehensive nature of the law can immediately be gleaned from its coverage — conditions of service and employment, youth employment, maternity benefit, health hygiene, safety, welfare, working hours and leave, wages and payment, workers’ compensation for injury, trade unions and industrial relations, disputes, labour court, workers’ participation in companies profits, regulation of employment and safety of dock workers, provident funds, apprenticeship, penalty and procedure, administration, inspection, etc.', 1, 500, 'Bkash', NULL, NULL, 1, 30, 'Momit', 'Momit', '2020-03-20 06:50:58', '2020-05-05 11:57:55'),
(3, 'bils234', 'বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', '2 Hours', '2020-05-21', '2020-05-21', NULL, NULL, 1, 1, 'admin', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 1, 200, 'cash', NULL, NULL, 1, 60, '', 'Momit', '2020-05-13 00:38:43', '2020-05-13 07:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `course_perticipants`
--

CREATE TABLE `course_perticipants` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `perticipant_id` int(11) DEFAULT NULL,
  `is_interested` tinyint(1) DEFAULT NULL COMMENT '0: Not seen, 1: Interested, 2:NOt interested, 3:registered, 4:not-registered',
  `is_selected` tinyint(1) DEFAULT NULL COMMENT '0: Not-selected, 1: Selected',
  `status` tinyint(1) DEFAULT NULL COMMENT '1: Active, 2: Removed',
  `payment` double DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_payment_verified` tinyint(1) DEFAULT '0' COMMENT '0: Not-varified, 1: Varified',
  `payment_status` tinyint(1) DEFAULT NULL COMMENT '0: Partial-paid, 1:Pais',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_perticipants`
--

INSERT INTO `course_perticipants` (`id`, `course_id`, `perticipant_id`, `is_interested`, `is_selected`, `status`, `payment`, `payment_method`, `reference_no`, `is_payment_verified`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-03-20 06:58:45', '2020-03-20 13:05:24'),
(2, 1, 16, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-03-20 06:58:45', '2020-03-20 13:05:25'),
(3, 1, 14, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-03-20 06:58:45', '2020-03-20 06:58:45'),
(4, 1, 5, 3, 1, NULL, 100, 'bkash', '123', 1, NULL, '2020-03-20 06:58:45', '2020-03-30 15:36:08'),
(5, 1, 15, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-03-20 07:33:38', '2020-03-20 07:33:38'),
(6, 1, 16, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-03-20 07:33:38', '2020-03-20 07:33:38'),
(7, 1, 14, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-03-20 07:33:38', '2020-03-20 07:33:38'),
(8, 1, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-03-20 07:33:38', '2020-03-20 07:33:38'),
(9, 2, 21, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-05 11:57:55', '2020-05-05 11:57:55'),
(10, 2, 15, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-05 11:57:55', '2020-05-05 11:57:55'),
(11, 2, 16, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-05 11:57:55', '2020-05-05 11:57:55'),
(12, 2, 25, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-05 11:57:55', '2020-05-05 11:57:55'),
(13, 2, 23, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-05 11:57:55', '2020-05-05 11:57:55'),
(14, 2, 14, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-05 11:57:55', '2020-05-05 11:57:55'),
(15, 2, 20, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-05 11:57:55', '2020-05-05 11:57:55'),
(16, 2, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-05 11:57:55', '2020-05-05 11:57:55'),
(17, 2, 44, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-05 11:57:55', '2020-05-05 11:57:55'),
(18, 3, 21, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(19, 3, 15, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(20, 3, 16, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(21, 3, 25, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(22, 3, 23, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(23, 3, 14, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(24, 3, 20, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(25, 3, 5, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(26, 3, 44, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-05-13 00:38:43', '2020-05-13 00:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `module_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `serial_no` int(11) DEFAULT NULL,
  `menu_icon_class` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:active, 0:inactive',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `module_name`, `menu_title`, `menu_url`, `parent_id`, `serial_no`, `menu_icon_class`, `status`, `created_at`, `updated_at`) VALUES
(1, 'User', 'Users', '', 0, 6, 'clip-user-plus', 1, '0000-00-00 00:00:00', '2020-02-04 05:46:09'),
(2, 'User', 'Admin Users', 'user/admin/admin-user-management', 1, 1, NULL, 1, '0000-00-00 00:00:00', '2020-02-04 06:09:48'),
(4, 'User', 'App Users', 'user/app-user/app-user-management', 1, 3, NULL, 1, '0000-00-00 00:00:00', '2020-02-04 06:28:13'),
(6, 'Surveys', 'Surveys', 'survey/management', 0, 3, 'clip-note', 1, '0000-00-00 00:00:00', '2020-02-04 06:28:13'),
(7, 'Courses', 'Courses', '', 0, 2, 'clip-book', 1, '0000-00-00 00:00:00', '2020-02-04 06:28:13'),
(8, 'Courses', 'Manage Courses', 'courses/open-course', 7, 1, NULL, 1, '0000-00-00 00:00:00', '2020-03-09 01:43:18'),
(10, 'Cpanel', 'Control Panel', '', 0, 9, 'clip-settings', 1, '0000-00-00 00:00:00', '2020-02-04 06:28:13'),
(11, 'Cpanel', 'General Setting', 'cp/general/general-setting', 10, NULL, '', 1, '0000-00-00 00:00:00', '2020-02-04 06:28:13'),
(13, 'Cpanel', 'Manage Module', 'cp/module/manage-module', 10, NULL, NULL, 1, '0000-00-00 00:00:00', '2020-02-04 05:28:38'),
(21, 'Cpanel', 'Web Actions', 'cp/web-action/web-action-management', 10, NULL, NULL, 1, '2020-02-04 06:20:29', '2020-02-04 06:21:40'),
(26, 'Settings', 'Settings', '', 0, 7, 'clip-wrench-2', 1, '2020-02-05 04:05:14', '2020-02-05 04:05:14'),
(27, 'Settings', 'Admin User Groups', 'settings/admin/admin-group-management', 26, NULL, NULL, 1, '2020-02-05 04:06:31', '2020-02-05 04:07:23'),
(28, 'Settings', 'App User Groups', 'settings/app-user/app-user-group-management', 26, NULL, NULL, 1, '2020-02-07 07:30:00', '2020-02-07 07:30:00'),
(29, 'Messages', 'Messages', '', 0, 1, 'clip-bubbles-3', 1, '2020-02-07 07:33:57', '2020-02-07 07:36:38'),
(30, 'Messages', 'All Message', 'messages/all-messages-management', 29, NULL, NULL, 1, '2020-02-07 07:38:13', '2020-04-28 03:09:23'),
(33, 'Settings', 'Publication Category', 'settings/publication/publication-category', 26, NULL, NULL, 1, '2020-02-10 04:25:48', '2020-02-10 04:25:48'),
(34, 'Settings', 'Course Category', 'settings/courses/manage-courses-category', 26, NULL, NULL, 1, '2020-02-10 23:47:48', '2020-02-10 23:47:48'),
(35, 'Settings', 'Notice Category', 'settings/notice/manage-notice-category', 26, NULL, NULL, 1, '2020-02-11 03:53:05', '2020-02-11 03:53:05'),
(36, 'Settings', 'Survey Category', 'settings/survey/manage-survey-category', 26, NULL, NULL, 1, '2020-02-11 07:08:18', '2020-02-11 07:08:18'),
(37, 'Notice', 'Notice', 'notice/manage-notice', 0, 4, 'clip-notification', 1, '2020-02-18 05:21:38', '2020-02-18 05:21:38'),
(38, 'Publication', 'Publication', 'publication/publication-management', 0, 5, 'clip-stack-empty', 1, '2020-02-22 04:01:15', '2020-02-22 04:01:15'),
(39, 'Messages', 'Sent Message', 'messages/sent-message', 29, NULL, NULL, 1, '2020-02-29 00:44:15', '2020-02-29 00:44:15'),
(40, 'Settings', 'Message Category', 'settings/message/message-category', 26, NULL, NULL, 1, '2020-03-02 08:16:36', '2020-03-03 02:34:46'),
(42, 'Courses', 'Manage Teacher', 'course/teacher/manage-teacher', 7, NULL, NULL, 1, '2020-03-07 04:01:49', '2020-03-07 04:19:13'),
(43, 'Reports', 'Reports', '', 0, 8, 'clip-file-powerpoint', 1, '2020-03-13 04:43:01', '2020-03-13 04:43:01'),
(44, 'Reports', 'Survey Summary', 'report/survey-summary', 43, NULL, NULL, 1, '2020-03-13 04:54:43', '2020-03-13 04:54:43'),
(45, 'Reports', 'Survey Details', 'report/survey-details', 43, NULL, NULL, 1, '2020-03-13 04:55:17', '2020-03-13 04:55:17'),
(46, 'Reports', 'Survey Data', 'report/survey-data', 43, NULL, NULL, 10, '2020-03-13 04:55:51', '2020-03-13 04:55:51'),
(47, 'Reports', 'Survey Participants', 'report/survey-participants', 43, NULL, NULL, 1, '2020-03-13 04:56:21', '2020-03-13 04:56:21'),
(48, 'Reports', 'Survey Participants Answers', 'report/survey-participants-answers', 43, NULL, NULL, 1, '2020-03-13 04:57:13', '2020-03-13 04:57:13'),
(49, 'Reports', 'Course Summary', 'report/course-summary', 43, NULL, NULL, 1, '2020-03-13 04:57:56', '2020-03-13 04:57:56'),
(50, 'Reports', 'Course Details', 'report/course-details', 43, NULL, NULL, 1, '2020-03-13 04:58:33', '2020-03-13 04:58:33'),
(51, 'Reports', 'App User', 'report/app-user', 43, NULL, NULL, 1, '2020-03-21 12:50:11', '2020-03-21 12:50:11'),
(52, 'Messages', 'Group Messages', 'messages/group-messages-management', 29, NULL, NULL, 1, '2020-04-04 01:42:24', '2020-04-04 01:42:24'),
(53, 'Messages', 'Category Message', 'messages/category-messages-management', 29, NULL, NULL, 1, '2020-04-28 03:09:44', '2020-04-28 03:09:44'),
(54, 'Notification', 'Notification', 'notification/notification-view', 0, NULL, 'clip-notification', 1, '2020-05-12 09:15:39', '2020-05-12 09:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `message_attachments`
--

CREATE TABLE `message_attachments` (
  `id` int(11) NOT NULL,
  `message_master_id` int(11) NOT NULL,
  `attachment_type` tinyint(1) NOT NULL COMMENT '1: Image, 2: Video 3: Audio, 4: File',
  `admin_atachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `app_user_attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_attachments`
--

INSERT INTO `message_attachments` (`id`, `message_master_id`, `attachment_type`, `admin_atachment`, `app_user_attachment`, `created_at`, `updated_at`) VALUES
(1, 17, 1, '98436752715847251681555317138760.jpg', '', '2020-03-20 11:26:08', '2020-03-20 11:26:08'),
(2, 18, 1, '123725902815847252101555317140809.jpg', '', '2020-03-20 11:26:50', '2020-03-20 11:26:50'),
(3, 42, 1, '12956332115865530361555317140809.jpg', '', '2020-04-10 15:10:36', '2020-04-10 15:10:36'),
(4, 81, 1, '12956332115865530361555317140809.jpg', '', '2020-04-30 05:44:27', '2020-05-01 19:07:31'),
(5, 83, 1, '12956332115865530361555317140809.jpg', '', '2020-04-30 05:45:20', '2020-05-01 19:07:36'),
(7, 115, 1, '12956332115865530361555317140809.jpg', '', '2020-05-01 07:32:23', '2020-05-01 19:07:39'),
(8, 116, 1, '12956332115865530361555317140809.jpg', '', '2020-05-01 07:32:33', '2020-05-01 19:07:28'),
(12, 135, 1, '', '8280694191588448039DA90208.jpg', '2020-05-02 13:33:59', '2020-05-02 13:33:59'),
(13, 136, 1, '959884505158844806994076899_10157320053874010_173820448910344192_n.jpg', '', '2020-05-02 13:34:29', '2020-05-02 13:34:29'),
(14, 137, 4, '', '198695065115884480889894093831588340511Issues.docx', '2020-05-02 13:34:48', '2020-05-02 13:34:48'),
(15, 138, 4, '', '6169722651588448205Nuxtjs-Cheat-Sheet.pdf', '2020-05-02 13:36:45', '2020-05-02 13:36:45'),
(16, 139, 4, '6349961531588448222Nuxtjs-Cheat-Sheet.pdf', '', '2020-05-02 13:37:02', '2020-05-02 13:37:02'),
(17, 140, 4, '188979250215884482309894093831588340511Issues.docx', '', '2020-05-02 13:37:10', '2020-05-02 13:37:10'),
(18, 149, 1, '1519232206158859810194076899_10157320053874010_173820448910344192_n.jpg', '', '2020-05-04 07:15:01', '2020-05-04 07:15:01'),
(19, 150, 4, '72347093515885981139894093831588340511Issues.docx', '', '2020-05-04 07:15:13', '2020-05-04 07:15:13'),
(20, 231, 1, '74856022158867232694076899_10157320053874010_173820448910344192_n.jpg', '', '2020-05-05 03:52:06', '2020-05-05 03:52:06'),
(21, 239, 1, '769153093158867939094076899_10157320053874010_173820448910344192_n.jpg', '', '2020-05-05 05:49:50', '2020-05-05 05:49:50'),
(22, 240, 1, '338303451158867957094076899_10157320053874010_173820448910344192_n.jpg', '', '2020-05-05 05:52:50', '2020-05-05 05:52:50'),
(23, 242, 3, '5927032101588680062eventually.mp3', '', '2020-05-05 06:01:02', '2020-05-05 06:01:02'),
(24, 243, 1, '549071908158868007994076899_10157320053874010_173820448910344192_n.jpg', '', '2020-05-05 06:01:19', '2020-05-05 06:01:19'),
(25, 274, 1, '', '484520461158896227094076899_10157320053874010_173820448910344192_n.jpg', '2020-05-08 12:24:30', '2020-05-08 12:24:30'),
(26, 286, 1, '19356711451589029534test (8).png', '', '2020-05-09 07:05:34', '2020-05-09 07:05:34'),
(27, 286, 1, '2249863081589029534test (9).png', '', '2020-05-09 07:05:34', '2020-05-09 07:05:34'),
(28, 288, 1, '10441608911589029591sun-mon2.png', '', '2020-05-09 07:06:31', '2020-05-09 07:06:31'),
(29, 288, 1, '2014478198158902959194076899_10157320053874010_173820448910344192_n.jpg', '', '2020-05-09 07:06:31', '2020-05-09 07:06:31'),
(30, 300, 4, '19169547771589032817eventually.m4r', '', '2020-05-09 08:00:17', '2020-05-09 08:00:17'),
(31, 301, 4, '150125794815890328379894093831588340511Issues.docx', '', '2020-05-09 08:00:37', '2020-05-09 08:00:37'),
(32, 304, 1, '5773926701589182381DA90208.jpg', '', '2020-05-11 01:33:01', '2020-05-11 01:33:01'),
(33, 304, 1, '381734144158918238134859485_1755832061172801_599560009839280128_n.jpg', '', '2020-05-11 01:33:01', '2020-05-11 01:33:01'),
(34, 304, 1, '14072337391589182381IMG_5790.JPG', '', '2020-05-11 01:33:01', '2020-05-11 01:33:01'),
(35, 304, 1, '19721611911589182381IMG_6147.JPG', '', '2020-05-11 01:33:01', '2020-05-11 01:33:01'),
(36, 305, 1, '', '866520706158918241328168192_1644936082262400_7252799108334151554_n (1).jpg', '2020-05-11 01:33:33', '2020-05-11 01:33:33'),
(37, 305, 1, '', '12253041201589182413558.jpg', '2020-05-11 01:33:33', '2020-05-11 01:33:33'),
(38, 305, 1, '', '2040524631158918241328168192_1644936082262400_7252799108334151554_n.jpg', '2020-05-11 01:33:33', '2020-05-11 01:33:33'),
(39, 308, 2, '8876592361589182689videoplayback.mp4', '', '2020-05-11 01:38:09', '2020-05-11 01:38:09'),
(40, 309, 2, '', '148322261589182733videoplayback.mp4', '2020-05-11 01:38:53', '2020-05-11 01:38:53'),
(41, 310, 2, '17267253401589182920videoplayback.mp4', '', '2020-05-11 01:42:00', '2020-05-11 01:42:00'),
(42, 311, 2, '13785077431589182932videoplayback.mp4', '', '2020-05-11 01:42:12', '2020-05-11 01:42:12'),
(43, 312, 2, '14169392791589182948videoplayback.mp4', '', '2020-05-11 01:42:28', '2020-05-11 01:42:28'),
(44, 313, 2, '18500852431589186327videoplayback.mp4', '', '2020-05-11 02:38:47', '2020-05-11 02:38:47'),
(45, 314, 2, '7024541841589186470videoplayback.mp4', '', '2020-05-11 02:41:10', '2020-05-11 02:41:10'),
(46, 315, 2, '', '1663864501589186722videoplayback.mp4', '2020-05-11 02:45:22', '2020-05-11 02:45:22'),
(47, 316, 2, '10157444351589186734videoplayback.mp4', '', '2020-05-11 02:45:34', '2020-05-11 02:45:34'),
(48, 317, 1, '1644924791158918688328168192_1644936082262400_7252799108334151554_n (1).jpg', '', '2020-05-11 02:48:03', '2020-05-11 02:48:03'),
(49, 318, 1, '1178489162158918696634859485_1755832061172801_599560009839280128_n.jpg', '', '2020-05-11 02:49:26', '2020-05-11 02:49:26'),
(50, 319, 2, '5222945001589186976videoplayback.mp4', '', '2020-05-11 02:49:36', '2020-05-11 02:49:36'),
(51, 320, 2, '', '1196870811589186993videoplayback.mp4', '2020-05-11 02:49:53', '2020-05-11 02:49:53'),
(52, 321, 2, '10960577551589187164videoplayback.mp4', '', '2020-05-11 02:52:44', '2020-05-11 02:52:44'),
(53, 322, 1, '3763357631589187179558.jpg', '', '2020-05-11 02:52:59', '2020-05-11 02:52:59'),
(54, 325, 1, '13722798381589187278IMG_5790.JPG', '', '2020-05-11 02:54:38', '2020-05-11 02:54:38'),
(55, 326, 2, '', '15307302001589187296videoplayback.mp4', '2020-05-11 02:54:56', '2020-05-11 02:54:56'),
(56, 327, 2, '', '1193070071589187349videoplayback.mp4', '2020-05-11 02:55:49', '2020-05-11 02:55:49'),
(57, 328, 1, '18900052991589187623IMG_5790.JPG', '', '2020-05-11 03:00:23', '2020-05-11 03:00:23'),
(58, 329, 2, '', '3930472851589187638videoplayback.mp4', '2020-05-11 03:00:38', '2020-05-11 03:00:38'),
(59, 331, 2, '', '290342431589188225videoplayback.mp4', '2020-05-11 03:10:25', '2020-05-11 03:10:25'),
(60, 332, 2, '', '12467191041589188252videoplayback.mp4', '2020-05-11 03:10:52', '2020-05-11 03:10:52'),
(61, 336, 1, '21249709341589188529IMG_5790.JPG', '', '2020-05-11 03:15:29', '2020-05-11 03:15:29'),
(62, 337, 1, '', '110880761615891977853.jpeg', '2020-05-11 05:49:45', '2020-05-11 05:49:45'),
(63, 338, 2, '', '3870491261589197871videoplayback.mp4', '2020-05-11 05:51:11', '2020-05-11 05:51:11'),
(64, 339, 1, '', '86953691589197964moumit.jpg', '2020-05-11 05:52:44', '2020-05-11 05:52:44'),
(65, 340, 1, '', '18785016901589197979IMG_5544.JPG', '2020-05-11 05:52:59', '2020-05-11 05:52:59'),
(66, 340, 1, '', '12720290831589197979IMG_6147.JPG', '2020-05-11 05:52:59', '2020-05-11 05:52:59'),
(67, 340, 1, '', '5218645351589197979IMG_5790.JPG', '2020-05-11 05:52:59', '2020-05-11 05:52:59'),
(68, 341, 2, '', '11443670931589197997videoplayback.mp4', '2020-05-11 05:53:17', '2020-05-11 05:53:17'),
(69, 342, 2, '', '2919739901589198124videoplayback.mp4', '2020-05-11 05:55:24', '2020-05-11 05:55:24'),
(70, 343, 4, '9995691241589198144prosanta-kumar-chaki.pdf', '', '2020-05-11 05:55:44', '2020-05-11 05:55:44'),
(71, 344, 4, '', '3440065781589198154prosanta-kumar-chaki (1).pdf', '2020-05-11 05:55:54', '2020-05-11 05:55:54'),
(72, 345, 2, '', '3752369271589198502videoplayback.mp4', '2020-05-11 06:01:42', '2020-05-11 06:01:42'),
(73, 346, 2, '', '20168967651589198547videoplayback.mp4', '2020-05-11 06:02:27', '2020-05-11 06:02:27'),
(74, 350, 2, '', '9626367231589206013videoplayback.mp4', '2020-05-11 08:06:53', '2020-05-11 08:06:53'),
(75, 352, 2, '', '15090284881589206052videoplayback.mp4', '2020-05-11 08:07:32', '2020-05-11 08:07:32'),
(76, 354, 2, '', '9003691521589206091videoplayback.mp4', '2020-05-11 08:08:11', '2020-05-11 08:08:11'),
(77, 355, 1, '', '5620264221589206111IMG_20170421_105300.jpg', '2020-05-11 08:08:31', '2020-05-11 08:08:31'),
(78, 356, 1, '', '12562552221589206119IMG_6147.JPG', '2020-05-11 08:08:39', '2020-05-11 08:08:39'),
(79, 357, 1, '', '11419343101589206185DA90208.jpg', '2020-05-11 08:09:45', '2020-05-11 08:09:45'),
(80, 358, 1, '', '2740395861589206208IMG_20170421_105300.jpg', '2020-05-11 08:10:08', '2020-05-11 08:10:08'),
(81, 359, 1, '', '4338922401589206373IMG_6147.JPG', '2020-05-11 08:12:53', '2020-05-11 08:12:53'),
(82, 361, 1, '', '1903360011589206400IMG_5790.JPG', '2020-05-11 08:13:20', '2020-05-11 08:13:20'),
(83, 362, 1, '', '742899167158920644934859485_1755832061172801_599560009839280128_n.jpg', '2020-05-11 08:14:09', '2020-05-11 08:14:09'),
(84, 364, 1, '', '12309461811589206640IMG_5544.JPG', '2020-05-11 08:17:20', '2020-05-11 08:17:20'),
(85, 367, 1, '', '567555973158920675434859485_1755832061172801_599560009839280128_n.jpg', '2020-05-11 08:19:14', '2020-05-11 08:19:14'),
(86, 369, 1, '54384284158921702734859485_1755832061172801_599560009839280128_n.jpg', '', '2020-05-11 11:10:27', '2020-05-11 11:10:27'),
(87, 369, 1, '1576621851589217027IMG_5790.JPG', '', '2020-05-11 11:10:27', '2020-05-11 11:10:27'),
(88, 369, 1, '19328869441589217027IMG_6147.JPG', '', '2020-05-11 11:10:27', '2020-05-11 11:10:27'),
(89, 370, 1, '54384284158921702734859485_1755832061172801_599560009839280128_n.jpg', '', '2020-05-11 11:10:27', '2020-05-11 11:10:27'),
(90, 370, 1, '1576621851589217027IMG_5790.JPG', '', '2020-05-11 11:10:27', '2020-05-11 11:10:27'),
(91, 370, 1, '19328869441589217027IMG_6147.JPG', '', '2020-05-11 11:10:27', '2020-05-11 11:10:27'),
(92, 371, 1, '14972410531589217249IMG_5790.JPG', '', '2020-05-11 11:14:09', '2020-05-11 11:14:09'),
(93, 371, 1, '3564757281589217249IMG_6147.JPG', '', '2020-05-11 11:14:09', '2020-05-11 11:14:09'),
(94, 371, 1, '16697777831589217249IMG_5544.JPG', '', '2020-05-11 11:14:09', '2020-05-11 11:14:09'),
(95, 372, 1, '9089825321589217506DA90208.jpg', '', '2020-05-11 11:18:26', '2020-05-11 11:18:26'),
(96, 372, 1, '2059855270158921750634859485_1755832061172801_599560009839280128_n.jpg', '', '2020-05-11 11:18:26', '2020-05-11 11:18:26'),
(97, 372, 1, '1002394191589217506IMG_5790.JPG', '', '2020-05-11 11:18:26', '2020-05-11 11:18:26'),
(98, 373, 1, '9089825321589217506DA90208.jpg', '', '2020-05-11 11:18:26', '2020-05-11 11:18:26'),
(99, 373, 1, '2059855270158921750634859485_1755832061172801_599560009839280128_n.jpg', '', '2020-05-11 11:18:26', '2020-05-11 11:18:26'),
(100, 373, 1, '1002394191589217506IMG_5790.JPG', '', '2020-05-11 11:18:26', '2020-05-11 11:18:26'),
(104, 227, 1, '17428226191589295684DA90208.jpg', '', '2020-05-12 09:01:24', '2020-05-12 09:01:24'),
(105, 227, 1, '193789751589295785DA90208.jpg', '', '2020-05-12 09:03:05', '2020-05-12 09:03:05'),
(106, 196, 1, '1337314558158929581534859485_1755832061172801_599560009839280128_n.jpg', '', '2020-05-12 09:03:35', '2020-05-12 09:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `message_categories`
--

CREATE TABLE `message_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name_bn` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '0' COMMENT '0: In-active, 1: Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_categories`
--

INSERT INTO `message_categories` (`id`, `category_name`, `category_name_bn`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test Msg', 'টেস্ট মেসেজ', 'something for testing', 1, '2020-03-27 10:46:06', '2020-05-14 12:30:01'),
(2, 'Fire', 'আগুন', 'ascaffd', 1, '2020-04-04 02:31:09', '2020-05-14 08:02:36'),
(3, 'Corona virus', 'করোনা ভাইরাস', 'somethings', 1, '2020-04-06 14:07:01', '2020-05-14 12:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `message_masters`
--

CREATE TABLE `message_masters` (
  `id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL,
  `reply_to` int(11) DEFAULT NULL,
  `is_group_msg` int(11) DEFAULT '0' COMMENT '0: No, 1: Group-msg',
  `group_id` int(11) DEFAULT '0',
  `is_attachment` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: No-attachment, 1: Attachment',
  `is_attachment_app_user` tinyint(1) NOT NULL DEFAULT '0',
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_message` text COLLATE utf8mb4_unicode_ci,
  `app_user_id` int(11) DEFAULT NULL,
  `app_user_message` text COLLATE utf8mb4_unicode_ci,
  `is_seen` tinyint(1) DEFAULT '0' COMMENT '0: Not-seen, 1: Seen',
  `message_category` int(11) DEFAULT NULL,
  `message_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1' COMMENT '0: deleted, 1: Active,',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_masters`
--

INSERT INTO `message_masters` (`id`, `message_id`, `reply_to`, `is_group_msg`, `group_id`, `is_attachment`, `is_attachment_app_user`, `admin_id`, `admin_message`, `app_user_id`, `app_user_message`, `is_seen`, `message_category`, `message_date_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 0, 0, 0, 1, 'Attention Everyone. Please Be careful. corona virus is spreading our country', 14, NULL, 1, NULL, '2020-03-20 13:47:20', 1, '2020-03-20 07:47:20', '2020-05-05 09:36:19'),
(2, 1, NULL, 0, 0, 0, 0, 1, 'Attention Everyone. Please Be careful. corona virus is spreading our country', 5, NULL, 1, NULL, '2020-03-20 13:47:20', 1, '2020-03-20 07:47:20', '2020-05-09 07:40:48'),
(3, 1, NULL, 0, 0, 0, 0, 1, 'Attention Everyone. Please Be careful. corona virus is spreading our country', 15, NULL, 1, NULL, '2020-03-20 13:47:20', 1, '2020-03-20 07:47:20', '2020-05-05 09:38:14'),
(4, 1, NULL, 0, 0, 0, 0, 1, 'Attention Everyone. Please Be careful. corona virus is spreading our country', 16, NULL, 1, NULL, '2020-03-20 13:47:20', 1, '2020-03-20 07:47:20', '2020-05-05 09:34:42'),
(6, NULL, NULL, 1, 40, 0, 0, NULL, NULL, 5, 'Ok i will try to be careful.', 1, 2, '2020-03-20 13:54:44', NULL, '2020-03-20 07:54:44', '2020-05-11 11:17:26'),
(7, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 5, 'But what can i do to be careful', 1, NULL, '2020-03-20 13:55:22', NULL, '2020-03-20 07:55:22', '2020-05-14 12:29:44'),
(8, NULL, NULL, 0, 0, 0, 0, 1, 'stay on home', 5, NULL, 1, NULL, '2020-03-20 13:55:45', NULL, '2020-03-20 07:55:45', '2020-05-09 07:40:48'),
(9, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 5, 'Ok i will stay at my home.', 1, NULL, '2020-03-20 14:00:04', NULL, '2020-03-20 08:00:04', '2020-05-14 12:29:44'),
(10, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 5, 'Anythings else....??', 1, NULL, '2020-03-20 14:02:46', NULL, '2020-03-20 08:02:46', '2020-05-14 12:29:44'),
(14, NULL, NULL, 0, 0, 0, 0, 1, 'yes', 5, NULL, 1, NULL, '2020-03-20 14:51:06', NULL, '2020-03-20 08:51:06', '2020-05-09 07:40:48'),
(15, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 5, 'what are those', 1, NULL, '2020-03-20 14:51:23', NULL, '2020-03-20 08:51:23', '2020-05-14 12:29:44'),
(16, NULL, NULL, 0, 0, 0, 0, 1, 'wait a minuts', 5, NULL, 1, NULL, '2020-03-20 14:51:55', NULL, '2020-03-20 08:51:55', '2020-05-09 07:40:48'),
(17, NULL, NULL, 0, 0, 1, 0, 1, NULL, 5, NULL, 1, NULL, '2020-03-20 17:26:08', NULL, '2020-03-20 11:26:08', '2020-05-09 07:40:48'),
(18, NULL, NULL, 0, 0, 1, 0, 1, 'test', 5, NULL, 1, NULL, '2020-03-20 17:26:50', NULL, '2020-03-20 11:26:50', '2020-05-09 07:40:48'),
(19, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 16, NULL, 1, NULL, '2020-03-21 23:14:53', NULL, '2020-03-21 17:14:53', '2020-05-05 09:34:42'),
(20, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 5, NULL, 1, NULL, '2020-03-21 23:22:22', NULL, '2020-03-21 17:22:22', '2020-05-09 07:40:48'),
(21, NULL, NULL, 0, 0, 0, 0, 1, 'are you there...??', 16, NULL, 1, NULL, '2020-03-24 19:42:22', NULL, '2020-03-24 13:42:22', '2020-05-05 09:34:42'),
(22, NULL, NULL, 1, 40, 0, 0, NULL, NULL, 23, 'Hi..........', 1, 1, '2020-03-24 19:44:46', NULL, '2020-03-24 13:44:46', '2020-05-11 11:17:26'),
(23, NULL, NULL, 0, 0, 0, 0, 1, 'hlw', 23, NULL, 1, NULL, '2020-03-24 19:45:05', NULL, '2020-03-24 13:45:05', '2020-05-05 09:38:19'),
(24, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 23, 'whats going on..??', 1, NULL, '2020-03-24 19:45:21', NULL, '2020-03-24 13:45:21', '2020-05-14 12:29:44'),
(35, 2, NULL, 0, 0, 0, 0, 1, 'test', 15, NULL, 1, NULL, '2020-03-27 18:39:59', 1, '2020-03-27 12:39:59', '2020-05-05 09:38:14'),
(36, 3, NULL, 0, 0, 0, 0, 1, 'test', 14, NULL, 1, 1, '2020-03-27 18:41:02', 1, '2020-03-27 12:41:02', '2020-05-05 09:36:19'),
(37, 3, NULL, 0, 0, 0, 0, 1, 'test', 20, NULL, 1, 1, '2020-03-27 18:41:02', 1, '2020-03-27 12:41:02', '2020-05-05 09:34:49'),
(38, NULL, NULL, 0, 0, 0, 0, 1, 'test for category', 5, NULL, 1, 1, '2020-03-30 19:19:13', NULL, '2020-03-30 13:19:13', '2020-05-09 07:40:48'),
(39, NULL, NULL, 0, 0, 0, 0, 1, 'testing', 5, NULL, 1, 1, '2020-03-30 19:22:48', NULL, '2020-03-30 13:22:48', '2020-05-09 07:40:48'),
(40, NULL, NULL, 1, 40, 0, 0, 1, 'awarness for corona virus', NULL, NULL, 1, 3, '2020-04-07 19:11:22', NULL, '2020-04-07 13:11:22', '2020-05-11 11:12:37'),
(41, NULL, NULL, 1, 40, 0, 0, 1, 'aa', NULL, NULL, 1, 3, '2020-04-10 21:08:05', NULL, '2020-04-10 15:08:05', '2020-05-11 11:12:37'),
(42, NULL, NULL, 1, 40, 1, 0, 1, 'bb', NULL, NULL, 1, 3, '2020-04-10 21:10:36', NULL, '2020-04-10 15:10:36', '2020-05-11 11:12:37'),
(43, NULL, NULL, 1, 40, 0, 0, 1, 'cc', NULL, NULL, 1, 3, '2020-04-10 21:13:27', NULL, '2020-04-10 15:13:27', '2020-05-11 11:12:37'),
(44, NULL, NULL, 1, 40, 0, 0, 1, 'fire slow', NULL, NULL, 1, 2, '2020-04-10 21:43:16', NULL, '2020-04-10 15:43:16', '2020-05-11 11:12:37'),
(45, NULL, NULL, 1, 40, 0, 0, 1, 'gg', NULL, NULL, 1, 2, '2020-04-10 21:44:46', NULL, '2020-04-10 15:44:46', '2020-05-11 11:12:37'),
(46, NULL, NULL, 1, 40, 0, 0, 1, 'd', NULL, NULL, 1, 3, '2020-04-10 21:45:16', NULL, '2020-04-10 15:45:16', '2020-05-11 11:12:37'),
(47, NULL, NULL, 1, 0, 0, 0, 1, 'testing', NULL, NULL, 0, 1, '2020-04-10 21:48:06', NULL, '2020-04-10 15:48:06', '2020-04-10 15:48:06'),
(48, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 5, NULL, 1, NULL, '2020-04-22 06:53:46', NULL, '2020-04-22 00:53:46', '2020-05-09 07:40:48'),
(49, NULL, NULL, 0, 0, 0, 0, 1, 'hlw', 5, NULL, 1, NULL, '2020-04-22 06:53:51', NULL, '2020-04-22 00:53:51', '2020-05-09 07:40:48'),
(50, NULL, NULL, 1, 0, 0, 0, 1, 'saf', NULL, NULL, 0, 1, '2020-04-24 06:14:32', NULL, '2020-04-24 00:14:32', '2020-04-24 00:14:32'),
(51, 4, NULL, 0, 40, 0, 0, 1, 'This is working', 5, NULL, 1, 2, '2020-04-24 07:36:59', 1, '2020-04-24 01:36:59', '2020-05-09 07:40:48'),
(52, 4, NULL, 0, 40, 0, 0, 1, 'This is working', 14, NULL, 1, 2, '2020-04-24 07:36:59', 1, '2020-04-24 01:36:59', '2020-05-05 09:36:19'),
(53, 4, NULL, 0, 40, 0, 0, 1, 'This is working', 15, NULL, 1, 2, '2020-04-24 07:36:59', 1, '2020-04-24 01:36:59', '2020-05-05 09:38:14'),
(54, 4, NULL, 0, 40, 0, 0, 1, 'This is working', 16, NULL, 1, 2, '2020-04-24 07:36:59', 1, '2020-04-24 01:36:59', '2020-05-05 09:34:42'),
(55, 4, NULL, 0, 40, 0, 0, 1, 'This is working', 20, NULL, 1, 2, '2020-04-24 07:36:59', 1, '2020-04-24 01:36:59', '2020-05-05 09:34:49'),
(56, 4, NULL, 0, 40, 0, 0, 1, 'This is working', 21, NULL, 1, 2, '2020-04-24 07:36:59', 1, '2020-04-24 01:36:59', '2020-05-05 09:34:58'),
(57, 4, NULL, 0, 40, 0, 0, 1, 'This is working', 23, NULL, 1, 2, '2020-04-24 07:36:59', 1, '2020-04-24 01:36:59', '2020-05-05 09:38:19'),
(58, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 23, NULL, 1, NULL, '2020-04-24 10:40:32', NULL, '2020-04-24 04:40:32', '2020-05-05 09:38:19'),
(59, NULL, NULL, 0, 0, 0, 0, 1, NULL, 23, 'This is good', 1, NULL, '2020-04-24 10:42:48', 0, '2020-04-24 10:42:48', '2020-05-14 12:29:44'),
(60, NULL, NULL, 0, 0, 0, 0, 1, NULL, 23, 'This is good', 1, NULL, '2020-04-24 10:43:25', 0, '2020-04-24 10:43:25', '2020-05-14 12:29:44'),
(61, NULL, NULL, 0, 0, 0, 0, 1, NULL, 23, 'This is good again', 1, NULL, '2020-04-24 11:03:36', 0, '2020-04-24 11:03:36', '2020-05-14 12:29:44'),
(62, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, 2, '2020-04-24 16:04:04', NULL, '2020-04-24 10:04:04', '2020-05-11 11:12:37'),
(63, NULL, NULL, 1, 26, 0, 0, 1, 'hi', NULL, NULL, 0, 1, '2020-04-24 16:04:21', NULL, '2020-04-24 10:04:21', '2020-04-24 10:04:21'),
(64, NULL, NULL, 1, 40, 0, 0, 1, 'good', NULL, NULL, 1, 3, '2020-04-24 17:55:28', NULL, '2020-04-24 11:55:28', '2020-05-11 11:12:37'),
(65, NULL, NULL, 1, 40, 0, 0, 1, 'good', NULL, NULL, 1, 3, '2020-04-24 17:59:14', NULL, '2020-04-24 11:59:14', '2020-05-11 11:12:37'),
(66, NULL, 43, 1, 40, 0, 0, 1, 'very good', NULL, NULL, 1, 3, '2020-04-24 18:01:19', NULL, '2020-04-24 12:01:19', '2020-05-11 11:12:37'),
(67, NULL, NULL, 1, 40, 0, 0, 1, 'testing msg', NULL, NULL, 1, 3, '2020-04-24 18:01:43', NULL, '2020-04-24 12:01:43', '2020-05-11 11:12:37'),
(68, NULL, 66, 1, 40, 0, 0, 1, 'replied message', NULL, NULL, 1, 3, '2020-04-25 07:32:34', NULL, '2020-04-25 01:32:34', '2020-05-11 11:12:37'),
(69, NULL, NULL, 1, 40, 0, 0, 1, NULL, 5, 'Looking good', 1, 3, '2020-04-25 10:40:46', NULL, '2020-04-25 10:40:46', '2020-05-11 11:17:26'),
(70, NULL, 69, 1, 40, 0, 0, 1, 'successfull', NULL, NULL, 1, 3, '2020-04-25 10:57:02', NULL, '2020-04-25 04:57:02', '2020-05-11 11:12:37'),
(71, NULL, 70, 1, 40, 0, 0, 1, 'good', NULL, NULL, 1, 3, '2020-04-25 10:57:59', NULL, '2020-04-25 04:57:59', '2020-05-11 11:12:37'),
(72, NULL, 71, 1, 40, 0, 0, NULL, NULL, 5, 'Looking good', 1, 3, '2020-04-25 11:00:41', NULL, '2020-04-25 11:00:41', '2020-05-11 11:17:26'),
(73, NULL, 71, 1, 40, 0, 0, 1, 'hope this will work', NULL, NULL, 1, 3, '2020-04-25 11:01:33', NULL, '2020-04-25 05:01:33', '2020-05-11 11:12:37'),
(74, NULL, 73, 1, 40, 0, 0, NULL, NULL, 5, 'Test auto load', 1, 3, '2020-04-26 04:59:01', 0, '2020-04-26 04:59:01', '2020-05-11 11:17:26'),
(75, NULL, NULL, 1, 40, 0, 0, 1, 'good day', NULL, NULL, 1, 3, '2020-04-26 06:08:14', NULL, '2020-04-26 00:08:14', '2020-05-11 11:12:37'),
(76, NULL, NULL, 1, 40, 0, 0, 1, 'sdf', NULL, NULL, 1, 3, '2020-04-26 06:12:01', NULL, '2020-04-26 00:12:01', '2020-05-11 11:12:37'),
(77, NULL, 75, 1, 40, 0, 0, NULL, NULL, 5, 'auto refresh check', 1, 3, '2020-04-26 08:56:32', NULL, '2020-04-26 08:56:32', '2020-05-11 11:17:26'),
(78, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 15, 'Hi how are you doing?', 1, NULL, '2020-04-28 08:04:40', NULL, '2020-04-28 08:04:40', '2020-05-14 12:29:44'),
(79, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 15, 'Hi how are you doing today?', 1, NULL, '2020-04-28 08:05:51', NULL, '2020-04-28 08:05:51', '2020-05-14 12:29:44'),
(80, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 15, NULL, 1, NULL, '2020-04-30 11:44:06', NULL, '2020-04-30 05:44:06', '2020-05-09 12:01:38'),
(81, NULL, NULL, 0, 0, 1, 0, 1, NULL, 15, NULL, 1, NULL, '2020-04-30 11:44:27', NULL, '2020-04-30 05:44:27', '2020-05-09 12:01:38'),
(82, NULL, NULL, 0, 0, 0, 0, 1, 'hlw', 15, NULL, 1, NULL, '2020-04-30 11:45:10', NULL, '2020-04-30 05:45:10', '2020-05-09 12:01:38'),
(83, NULL, NULL, 0, 0, 1, 0, 1, NULL, 15, NULL, 1, NULL, '2020-04-30 11:45:20', NULL, '2020-04-30 05:45:20', '2020-05-09 12:01:38'),
(84, NULL, NULL, 1, 40, 0, 0, 1, 'good', NULL, NULL, 1, 3, '2020-04-30 13:03:10', NULL, '2020-04-30 07:03:10', '2020-05-11 11:12:37'),
(85, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, NULL, '2020-04-30 13:05:01', NULL, '2020-04-30 07:05:01', '2020-05-11 11:12:37'),
(86, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 5, NULL, 1, NULL, '2020-04-30 13:05:54', NULL, '2020-04-30 07:05:54', '2020-05-09 07:40:48'),
(87, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, NULL, '2020-04-30 13:06:30', NULL, '2020-04-30 07:06:30', '2020-05-11 11:12:37'),
(88, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, NULL, '2020-04-30 13:06:45', NULL, '2020-04-30 07:06:45', '2020-05-11 11:12:37'),
(89, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, NULL, '2020-04-30 13:23:01', NULL, '2020-04-30 07:23:01', '2020-05-11 11:12:37'),
(90, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, 3, '2020-04-30 13:25:33', 1, '2020-04-30 07:25:33', '2020-05-11 11:12:37'),
(91, NULL, NULL, 1, 40, 0, 0, 1, 'hi there, how are you doing?', NULL, NULL, 1, NULL, '2020-04-30 13:33:28', 1, '2020-04-30 07:33:28', '2020-05-11 11:12:37'),
(92, NULL, NULL, 0, 0, 0, 0, 1, 'done', 5, NULL, 1, NULL, '2020-04-30 13:50:56', 1, '2020-04-30 07:50:56', '2020-05-09 07:40:48'),
(93, NULL, 77, 0, 0, 0, 0, 1, 'good job', 5, NULL, 1, NULL, '2020-04-30 13:53:28', 1, '2020-04-30 07:53:28', '2020-05-09 07:40:48'),
(94, NULL, 74, 0, 0, 0, 0, 1, 'working good', 5, NULL, 1, NULL, '2020-04-30 14:04:33', 0, '2020-04-30 08:04:33', '2020-05-09 07:40:48'),
(95, NULL, NULL, 0, 0, 0, 0, 1, 'hi there', 5, NULL, 1, NULL, '2020-04-30 14:04:39', 0, '2020-04-30 08:04:39', '2020-05-09 07:40:48'),
(96, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 5, NULL, 1, NULL, '2020-04-30 14:44:43', 0, '2020-04-30 08:44:43', '2020-05-09 07:40:48'),
(97, NULL, NULL, 0, 0, 0, 0, 1, 'hi there', 5, NULL, 1, NULL, '2020-04-30 14:54:34', 1, '2020-04-30 08:54:34', '2020-05-09 07:40:48'),
(98, NULL, NULL, 0, 0, 0, 0, 1, 'hlw', 5, NULL, 1, NULL, '2020-04-30 14:54:51', 0, '2020-04-30 08:54:51', '2020-05-09 07:40:48'),
(99, NULL, NULL, 0, 0, 0, 0, 1, 'this is bils', 5, NULL, 1, NULL, '2020-04-30 14:55:46', 1, '2020-04-30 08:55:46', '2020-05-09 07:40:48'),
(100, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 5, 'Thanks for the reply', 1, 3, '2020-04-30 14:57:21', 1, '2020-04-30 14:57:21', '2020-05-14 12:29:44'),
(101, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 5, 'Thanks', 1, 3, '2020-04-30 14:57:37', 1, '2020-04-30 14:57:37', '2020-05-14 12:29:44'),
(102, NULL, 100, 0, 0, 0, 0, 1, 'Your are welcome', 5, NULL, 1, NULL, '2020-04-30 14:57:57', 1, '2020-04-30 08:57:57', '2020-05-09 07:40:48'),
(103, 5, NULL, 0, 0, 0, 0, 1, 'welcome to bils', 25, NULL, 1, NULL, '2020-04-30 15:55:22', 1, '2020-04-30 09:55:22', '2020-05-11 08:05:02'),
(104, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'thanks', 1, NULL, '2020-04-30 18:50:15', 0, '2020-04-30 12:50:15', '2020-05-14 12:29:44'),
(105, NULL, NULL, 0, 0, 0, 0, 1, 'good to see you', 25, NULL, 1, NULL, '2020-04-30 19:05:52', 1, '2020-04-30 13:05:52', '2020-05-11 08:05:02'),
(106, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 25, NULL, 1, NULL, '2020-05-01 07:07:28', 1, '2020-05-01 01:07:28', '2020-05-11 08:05:02'),
(107, NULL, NULL, 0, 0, 0, 0, 1, 'this is test message', 25, NULL, 1, NULL, '2020-05-01 07:07:54', 1, '2020-05-01 01:07:54', '2020-05-11 08:05:02'),
(108, NULL, NULL, 0, 0, 0, 0, 1, 'kljasdf', 25, NULL, 1, NULL, '2020-05-01 07:07:56', 1, '2020-05-01 01:07:56', '2020-05-11 08:05:02'),
(109, NULL, NULL, 0, 0, 0, 0, 1, 'saaskljdf', 25, NULL, 1, NULL, '2020-05-01 07:07:59', 1, '2020-05-01 01:07:59', '2020-05-11 08:05:02'),
(110, NULL, NULL, 0, 0, 0, 0, 1, 'sfjkldkf', 25, NULL, 1, NULL, '2020-05-01 07:08:05', 1, '2020-05-01 01:08:05', '2020-05-11 08:05:02'),
(111, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 25, NULL, 1, NULL, '2020-05-01 07:10:27', 1, '2020-05-01 01:10:27', '2020-05-11 08:05:02'),
(112, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hlw', 1, NULL, '2020-05-01 13:25:28', 1, '2020-05-01 07:25:28', '2020-05-14 12:29:44'),
(113, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-01 13:25:52', 1, '2020-05-01 07:25:52', '2020-05-14 12:29:44'),
(115, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-01 13:32:23', 1, '2020-05-01 07:32:23', '2020-05-11 08:05:02'),
(116, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-01 13:32:33', 1, '2020-05-01 07:32:33', '2020-05-11 08:05:02'),
(120, NULL, NULL, 0, 0, 0, 0, 1, 'THANKS', 25, NULL, 1, NULL, '2020-05-01 13:42:31', 0, '2020-05-01 07:42:31', '2020-05-11 08:05:02'),
(121, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-01 20:14:14', 0, '2020-05-01 14:14:14', '2020-05-14 12:29:44'),
(122, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-01 20:14:24', 0, '2020-05-01 14:14:24', '2020-05-14 12:29:44'),
(123, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'sdgfdsgfdg', 1, NULL, '2020-05-01 21:11:34', 1, '2020-05-01 15:11:34', '2020-05-14 12:29:44'),
(124, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'sdgfdsgfdg', 1, NULL, '2020-05-01 21:11:35', 1, '2020-05-01 15:11:35', '2020-05-14 12:29:44'),
(125, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'this is good', 1, NULL, '2020-05-01 21:15:50', 1, '2020-05-01 15:15:50', '2020-05-14 12:29:44'),
(126, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'this is good', 1, NULL, '2020-05-01 21:15:52', 1, '2020-05-01 15:15:52', '2020-05-14 12:29:44'),
(127, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-01 21:23:20', 0, '2020-05-01 15:23:20', '2020-05-14 12:29:44'),
(128, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi there', 1, NULL, '2020-05-01 21:43:53', 0, '2020-05-01 15:43:53', '2020-05-14 12:29:44'),
(129, NULL, 116, 0, 0, 0, 0, NULL, NULL, 25, 'sdfsdf', 1, NULL, '2020-05-02 09:13:44', 1, '2020-05-02 03:13:44', '2020-05-14 12:29:44'),
(130, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 25, NULL, 1, NULL, '2020-05-02 13:42:18', 1, '2020-05-02 07:42:18', '2020-05-11 08:05:02'),
(131, NULL, NULL, 0, 0, 0, 0, 1, 'how are you doing?', 25, NULL, 1, NULL, '2020-05-02 13:43:29', 1, '2020-05-02 07:43:29', '2020-05-11 08:05:02'),
(132, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hihi', 1, NULL, '2020-05-02 19:33:08', 1, '2020-05-02 13:33:08', '2020-05-14 12:29:44'),
(133, NULL, NULL, 0, 0, 0, 0, 1, 'hlw', 25, NULL, 1, NULL, '2020-05-02 19:33:16', 1, '2020-05-02 13:33:16', '2020-05-11 08:05:02'),
(134, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'How are you doing?', 1, NULL, '2020-05-02 19:33:43', 1, '2020-05-02 13:33:43', '2020-05-14 12:29:44'),
(135, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, 'this is my image', 1, NULL, '2020-05-02 19:33:59', 1, '2020-05-02 13:33:59', '2020-05-14 12:29:44'),
(136, NULL, NULL, 0, 0, 1, 0, 1, 'look at this image', 25, NULL, 1, NULL, '2020-05-02 19:34:29', 1, '2020-05-02 13:34:29', '2020-05-11 08:05:02'),
(137, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, 'this is doc', 1, NULL, '2020-05-02 19:34:48', 1, '2020-05-02 13:34:48', '2020-05-14 12:29:44'),
(138, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-02 19:36:45', 1, '2020-05-02 13:36:45', '2020-05-14 12:29:44'),
(139, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-02 19:37:02', 1, '2020-05-02 13:37:02', '2020-05-11 08:05:02'),
(140, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-02 19:37:10', 1, '2020-05-02 13:37:10', '2020-05-11 08:05:02'),
(141, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'this is good', 1, NULL, '2020-05-02 19:46:22', 1, '2020-05-02 13:46:22', '2020-05-14 12:29:44'),
(142, NULL, NULL, 0, 0, 0, 0, 1, 'its working', 25, NULL, 1, NULL, '2020-05-02 19:46:37', 1, '2020-05-02 13:46:37', '2020-05-11 08:05:02'),
(143, NULL, NULL, 1, 40, 0, 0, NULL, NULL, 25, 'this is a test message', 1, 3, '2020-05-04 10:54:08', 1, '2020-05-04 10:54:08', '2020-05-11 11:17:26'),
(144, NULL, NULL, 1, 40, 0, 0, 1, 'thak=nks', NULL, NULL, 1, NULL, '2020-05-04 11:13:35', 0, '2020-05-04 05:13:35', '2020-05-11 11:12:37'),
(145, NULL, 143, 1, 40, 0, 0, 1, 'this is reply', NULL, NULL, 1, NULL, '2020-05-04 11:16:48', 1, '2020-05-04 05:16:48', '2020-05-11 11:12:37'),
(146, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, NULL, '2020-05-04 11:42:43', 1, '2020-05-04 05:42:43', '2020-05-11 11:12:37'),
(147, NULL, NULL, 1, 40, 0, 0, NULL, NULL, 25, 'Today 668 people are detectad as corona patient', 1, 3, '2020-05-04 11:44:11', 1, '2020-05-04 11:44:11', '2020-05-11 11:17:26'),
(148, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, NULL, '2020-05-04 11:50:58', 1, '2020-05-04 05:50:58', '2020-05-11 11:12:37'),
(149, NULL, NULL, 1, 40, 1, 0, 1, NULL, NULL, NULL, 1, NULL, '2020-05-04 13:15:01', 1, '2020-05-04 07:15:01', '2020-05-11 11:12:37'),
(150, NULL, NULL, 1, 40, 1, 0, 1, NULL, NULL, NULL, 1, NULL, '2020-05-04 13:15:13', 1, '2020-05-04 07:15:13', '2020-05-11 11:12:37'),
(151, NULL, NULL, 1, 40, 0, 0, 1, 'hlw', NULL, NULL, 1, NULL, '2020-05-04 14:11:11', 1, '2020-05-04 08:11:11', '2020-05-11 11:12:37'),
(152, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, NULL, '2020-05-04 14:11:13', 1, '2020-05-04 08:11:13', '2020-05-11 11:12:37'),
(153, NULL, NULL, 1, 40, 0, 0, 1, 'good', NULL, NULL, 1, NULL, '2020-05-04 14:11:15', 1, '2020-05-04 08:11:15', '2020-05-11 11:12:37'),
(154, NULL, NULL, 1, 40, 0, 0, 1, 'its working', NULL, NULL, 1, NULL, '2020-05-04 14:11:20', 1, '2020-05-04 08:11:20', '2020-05-11 11:12:37'),
(155, NULL, NULL, 1, 40, 0, 0, 1, 'have a nice day', NULL, NULL, 1, NULL, '2020-05-04 14:11:24', 1, '2020-05-04 08:11:24', '2020-05-11 11:12:37'),
(156, NULL, NULL, 1, 40, 0, 0, 1, 'good to see you', NULL, NULL, 1, NULL, '2020-05-04 14:11:29', 1, '2020-05-04 08:11:29', '2020-05-11 11:12:37'),
(157, NULL, NULL, 1, 40, 0, 0, 1, 'nice day', NULL, NULL, 1, NULL, '2020-05-04 14:12:06', 1, '2020-05-04 08:12:06', '2020-05-11 11:12:37'),
(158, NULL, NULL, 1, 40, 0, 0, 1, 'big sell', NULL, NULL, 1, NULL, '2020-05-04 14:12:10', 1, '2020-05-04 08:12:10', '2020-05-11 11:12:37'),
(159, NULL, NULL, 1, 40, 0, 0, 1, 'corona', NULL, NULL, 1, NULL, '2020-05-04 14:12:12', 1, '2020-05-04 08:12:12', '2020-05-11 11:12:37'),
(160, NULL, NULL, 1, 40, 0, 0, 1, 'virus', NULL, NULL, 1, NULL, '2020-05-04 14:12:17', 1, '2020-05-04 08:12:17', '2020-05-11 11:12:37'),
(161, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, 3, '2020-05-04 14:52:41', 1, '2020-05-04 08:52:41', '2020-05-11 11:12:37'),
(162, NULL, NULL, 1, 40, 0, 0, NULL, NULL, 25, 'is everything ok?', 1, 2, '2020-05-04 15:11:05', 1, '2020-05-04 15:11:05', '2020-05-11 11:17:26'),
(163, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi everybody', 1, NULL, '2020-05-04 15:11:05', 1, '2020-05-04 15:11:05', '2020-05-14 12:29:44'),
(164, NULL, NULL, 1, 40, 0, 0, NULL, NULL, 25, 'is everything ok?', 1, 2, '2020-05-04 15:11:46', 1, '2020-05-04 15:11:46', '2020-05-11 11:17:26'),
(165, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi everybody', 1, NULL, '2020-05-04 15:11:46', 1, '2020-05-04 15:11:46', '2020-05-14 12:29:44'),
(166, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-04 15:40:50', 1, '2020-05-04 09:40:50', '2020-05-14 12:29:44'),
(167, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-04 15:41:36', 1, '2020-05-04 09:41:36', '2020-05-14 12:29:44'),
(168, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hlw', 1, 3, '2020-05-04 15:43:23', 1, '2020-05-04 09:43:23', '2020-05-14 12:29:44'),
(169, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi there', 1, 3, '2020-05-04 15:47:13', 1, '2020-05-04 09:47:13', '2020-05-14 12:29:44'),
(170, NULL, NULL, 1, 40, 0, 0, NULL, NULL, 25, 'this is group message', 1, NULL, '2020-05-04 15:48:46', 1, '2020-05-04 15:48:46', '2020-05-11 11:17:26'),
(171, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'individual message', 1, 3, '2020-05-04 15:52:19', 1, '2020-05-04 09:52:19', '2020-05-14 12:29:44'),
(172, 6, NULL, 0, 0, 0, 0, 1, 'this is new message to individual app user from group', 20, NULL, 1, NULL, '2020-05-04 16:17:21', 1, '2020-05-04 10:17:21', '2020-05-09 12:01:38'),
(173, 7, NULL, 0, 0, 0, 0, 1, 'this is general message', 5, NULL, 1, NULL, '2020-05-04 16:19:42', 1, '2020-05-04 10:19:42', '2020-05-09 07:40:48'),
(174, 7, NULL, 0, 0, 0, 0, 1, 'this is general message', 14, NULL, 1, NULL, '2020-05-04 16:19:42', 1, '2020-05-04 10:19:42', '2020-05-09 12:01:38'),
(175, 7, NULL, 0, 0, 0, 0, 1, 'this is general message', 15, NULL, 1, NULL, '2020-05-04 16:19:42', 1, '2020-05-04 10:19:42', '2020-05-09 12:01:38'),
(176, 7, NULL, 0, 0, 0, 0, 1, 'this is general message', 16, NULL, 1, NULL, '2020-05-04 16:19:42', 1, '2020-05-04 10:19:42', '2020-05-09 12:01:38'),
(177, 7, NULL, 0, 0, 0, 0, 1, 'this is general message', 20, NULL, 1, NULL, '2020-05-04 16:19:42', 1, '2020-05-04 10:19:42', '2020-05-09 12:01:38'),
(178, 7, NULL, 0, 0, 0, 0, 1, 'this is general message', 21, NULL, 1, NULL, '2020-05-04 16:19:42', 1, '2020-05-04 10:19:42', '2020-05-09 12:01:38'),
(179, 7, NULL, 0, 0, 0, 0, 1, 'this is general message', 23, NULL, 1, NULL, '2020-05-04 16:19:42', 1, '2020-05-04 10:19:42', '2020-05-09 12:01:38'),
(180, 8, NULL, 0, 0, 0, 0, 1, 'hi', 5, NULL, 1, NULL, '2020-05-04 16:23:51', 1, '2020-05-04 10:23:51', '2020-05-09 07:40:48'),
(181, 8, NULL, 0, 0, 0, 0, 1, 'hi', 14, NULL, 1, NULL, '2020-05-04 16:23:51', 1, '2020-05-04 10:23:51', '2020-05-09 12:01:38'),
(182, 8, NULL, 0, 0, 0, 0, 1, 'hi', 15, NULL, 1, NULL, '2020-05-04 16:23:51', 1, '2020-05-04 10:23:51', '2020-05-09 12:01:38'),
(183, 8, NULL, 0, 0, 0, 0, 1, 'hi', 16, NULL, 1, NULL, '2020-05-04 16:23:51', 1, '2020-05-04 10:23:51', '2020-05-09 12:01:38'),
(184, 8, NULL, 0, 0, 0, 0, 1, 'hi', 20, NULL, 1, NULL, '2020-05-04 16:23:51', 1, '2020-05-04 10:23:51', '2020-05-09 12:01:38'),
(185, 8, NULL, 0, 0, 0, 0, 1, 'hi', 21, NULL, 1, NULL, '2020-05-04 16:23:51', 1, '2020-05-04 10:23:51', '2020-05-09 12:01:38'),
(186, 8, NULL, 0, 0, 0, 0, 1, 'hi', 23, NULL, 1, NULL, '2020-05-04 16:23:51', 1, '2020-05-04 10:23:51', '2020-05-09 12:01:38'),
(187, 9, NULL, 0, 0, 0, 0, 1, 'leader', 5, NULL, 1, NULL, '2020-05-04 16:26:24', 1, '2020-05-04 10:26:24', '2020-05-09 07:40:48'),
(188, 9, NULL, 0, 0, 0, 0, 1, 'leader', 14, NULL, 1, NULL, '2020-05-04 16:26:24', 1, '2020-05-04 10:26:24', '2020-05-09 12:01:38'),
(189, 9, NULL, 0, 0, 0, 0, 1, 'leader', 15, NULL, 1, NULL, '2020-05-04 16:26:24', 1, '2020-05-04 10:26:24', '2020-05-09 12:01:38'),
(190, 9, NULL, 0, 0, 0, 0, 1, 'leader', 20, NULL, 1, NULL, '2020-05-04 16:26:24', 1, '2020-05-04 10:26:24', '2020-05-09 12:01:38'),
(191, 9, NULL, 0, 0, 0, 0, 1, 'leader', 21, NULL, 1, NULL, '2020-05-04 16:26:24', 1, '2020-05-04 10:26:24', '2020-05-09 12:01:38'),
(192, 9, NULL, 0, 0, 0, 0, 1, 'leader', 23, NULL, 1, NULL, '2020-05-04 16:26:24', 1, '2020-05-04 10:26:24', '2020-05-09 12:01:38'),
(193, 10, NULL, 0, 0, 0, 0, 1, 'hi', NULL, NULL, 0, NULL, '2020-05-04 16:51:00', 1, '2020-05-04 10:51:00', '2020-05-09 12:01:38'),
(194, 11, NULL, 0, 0, 0, 0, 1, 'worker', NULL, NULL, 0, NULL, '2020-05-04 16:55:01', 1, '2020-05-04 10:55:01', '2020-05-09 12:01:38'),
(195, 12, NULL, 0, 39, 0, 0, 1, 'hi general', NULL, NULL, 1, NULL, '2020-05-04 16:56:53', 1, '2020-05-04 10:56:53', '2020-05-11 11:10:53'),
(196, 13, NULL, 1, 39, 1, 0, 1, 'general image', NULL, NULL, 1, NULL, '2020-05-04 17:02:08', 1, '2020-05-04 11:02:08', '2020-05-12 09:03:35'),
(197, 14, NULL, 0, 0, 0, 0, 1, 'hi all workers', 15, NULL, 1, NULL, '2020-05-04 17:03:29', 1, '2020-05-04 11:03:29', '2020-05-09 12:01:38'),
(198, 14, NULL, 0, 0, 0, 0, 1, 'hi all workers', 16, NULL, 1, NULL, '2020-05-04 17:03:29', 1, '2020-05-04 11:03:29', '2020-05-09 12:01:38'),
(199, 14, NULL, 0, 0, 0, 0, 1, 'hi all workers', 21, NULL, 1, NULL, '2020-05-04 17:03:29', 1, '2020-05-04 11:03:29', '2020-05-09 12:01:38'),
(200, 15, NULL, 1, 40, 0, 0, 1, 'hi to all', NULL, NULL, 1, NULL, '2020-05-04 17:07:43', 1, '2020-05-04 11:07:43', '2020-05-11 11:12:37'),
(201, 16, NULL, 1, 39, 0, 0, 1, 'hi all group', NULL, NULL, 1, NULL, '2020-05-04 17:08:17', 1, '2020-05-04 11:08:17', '2020-05-11 11:10:53'),
(202, 16, NULL, 1, 44, 0, 0, 1, 'hi all group', NULL, NULL, 1, NULL, '2020-05-04 17:08:17', 1, '2020-05-04 11:08:17', '2020-05-05 09:34:35'),
(203, 17, NULL, 1, 39, 0, 0, 1, 'hlw', NULL, NULL, 1, NULL, '2020-05-04 17:14:15', 1, '2020-05-04 11:14:15', '2020-05-11 11:10:53'),
(204, 18, NULL, 1, 40, 0, 0, 1, 'hlw to all', NULL, NULL, 1, NULL, '2020-05-04 17:14:50', 1, '2020-05-04 11:14:50', '2020-05-11 11:12:37'),
(205, 19, NULL, 1, 39, 0, 0, 1, 'hi general users', NULL, NULL, 1, NULL, '2020-05-04 17:17:13', 1, '2020-05-04 11:17:13', '2020-05-12 09:00:29'),
(206, 20, NULL, 1, 39, 0, 0, 1, 'hi message', NULL, NULL, 1, NULL, '2020-05-04 17:18:38', 1, '2020-05-04 11:18:38', '2020-05-11 11:10:53'),
(207, 21, NULL, 1, 39, 0, 0, 1, 'hi general user', NULL, NULL, 1, NULL, '2020-05-04 17:19:31', 1, '2020-05-04 11:19:31', '2020-05-12 09:00:00'),
(208, 22, NULL, 1, 39, 0, 0, 1, 'hi general test', NULL, NULL, 1, NULL, '2020-05-04 17:20:08', 1, '2020-05-04 11:20:08', '2020-05-11 11:10:53'),
(209, NULL, NULL, 1, 41, 0, 0, 1, 'hi', NULL, NULL, 1, NULL, '2020-05-05 06:42:05', 1, '2020-05-05 00:42:05', '2020-05-09 08:01:43'),
(210, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 25, NULL, 1, 3, '2020-05-05 07:05:16', 1, '2020-05-05 01:05:16', '2020-05-11 08:05:02'),
(211, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 25, NULL, 1, 3, '2020-05-05 07:05:17', 1, '2020-05-05 01:05:17', '2020-05-11 08:05:02'),
(212, NULL, NULL, 0, 0, 0, 0, 1, 'good to see you', 25, NULL, 1, 3, '2020-05-05 07:05:24', 1, '2020-05-05 01:05:24', '2020-05-11 08:05:02'),
(213, NULL, NULL, 0, 0, 0, 0, 1, 'this is coroan', 25, NULL, 1, 3, '2020-05-05 07:05:29', 1, '2020-05-05 01:05:29', '2020-05-11 08:05:02'),
(214, NULL, NULL, 0, 0, 0, 0, 1, 'this is tews', 25, NULL, 1, 3, '2020-05-05 07:05:33', 1, '2020-05-05 01:05:33', '2020-05-11 08:05:02'),
(215, NULL, NULL, 0, 0, 0, 0, 1, 'how are you doing', 25, NULL, 1, 3, '2020-05-05 07:05:38', 1, '2020-05-05 01:05:38', '2020-05-11 08:05:02'),
(216, NULL, NULL, 0, 0, 0, 0, 1, 'how are u', 25, NULL, 1, 3, '2020-05-05 07:05:45', 1, '2020-05-05 01:05:45', '2020-05-11 08:05:02'),
(217, NULL, NULL, 0, 0, 0, 0, 1, 'nice to meet u', 25, NULL, 1, 3, '2020-05-05 07:05:52', 1, '2020-05-05 01:05:52', '2020-05-11 08:05:02'),
(218, NULL, NULL, 0, 0, 0, 0, 1, 'have a good day', 25, NULL, 1, 3, '2020-05-05 07:05:58', 1, '2020-05-05 01:05:58', '2020-05-11 08:05:02'),
(219, NULL, NULL, 0, 0, 0, 0, 1, 'hi corona', 5, NULL, 1, 3, '2020-05-05 07:06:29', 1, '2020-05-05 01:06:29', '2020-05-09 07:40:48'),
(220, NULL, NULL, 0, 0, 0, 0, 1, 'this is corona', 5, NULL, 1, 3, '2020-05-05 07:06:35', 1, '2020-05-05 01:06:35', '2020-05-09 07:40:48'),
(221, NULL, NULL, 0, 0, 0, 0, 1, 'it is a pandemic', 5, NULL, 1, 3, '2020-05-05 07:06:45', 1, '2020-05-05 01:06:45', '2020-05-09 07:40:48'),
(222, NULL, NULL, 0, 0, 0, 0, 1, 'how are you doing', 5, NULL, 1, 3, '2020-05-05 07:06:49', 1, '2020-05-05 01:06:49', '2020-05-09 07:40:48'),
(223, NULL, NULL, 0, 0, 0, 0, 1, 'nice to meet u', 5, NULL, 1, 3, '2020-05-05 07:06:55', 1, '2020-05-05 01:06:55', '2020-05-09 07:40:48'),
(224, NULL, NULL, 0, 0, 0, 0, 1, 'good to see u again', 5, NULL, 1, 3, '2020-05-05 07:07:01', 1, '2020-05-05 01:07:01', '2020-05-09 07:40:48'),
(225, NULL, NULL, 0, 0, 0, 0, 1, 'how are you doing', 5, NULL, 1, 3, '2020-05-05 07:07:06', 1, '2020-05-05 01:07:06', '2020-05-09 07:40:48'),
(226, NULL, NULL, 0, 0, 0, 0, 1, 'have a nice day', 5, NULL, 1, 3, '2020-05-05 07:07:11', 1, '2020-05-05 01:07:11', '2020-05-09 07:40:48'),
(227, 23, NULL, 1, 40, 1, 0, 1, 'hi basu', NULL, NULL, 1, NULL, '2020-05-05 09:43:34', 1, '2020-05-05 03:43:34', '2020-05-12 09:03:05'),
(231, 24, NULL, 1, 39, 0, 0, 1, 'hlw general', NULL, NULL, 1, NULL, '2020-05-05 09:52:06', 1, '2020-05-05 03:52:06', '2020-05-11 11:10:53'),
(232, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-05 11:18:13', 1, '2020-05-05 05:18:13', '2020-05-14 12:29:44'),
(233, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hlw', 1, NULL, '2020-05-05 11:22:23', 1, '2020-05-05 05:22:23', '2020-05-14 12:29:44'),
(234, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-05 11:23:18', 1, '2020-05-05 05:23:18', '2020-05-14 12:29:44'),
(235, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-05 11:25:03', 1, '2020-05-05 05:25:03', '2020-05-14 12:29:44'),
(236, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hlw', 1, NULL, '2020-05-05 11:31:13', 1, '2020-05-05 05:31:13', '2020-05-14 12:29:44'),
(237, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-05 11:32:29', 1, '2020-05-05 05:32:29', '2020-05-14 12:29:44'),
(238, NULL, NULL, 0, 0, 0, 0, 1, 'hlw kajol', 25, NULL, 1, NULL, '2020-05-05 11:37:55', 1, '2020-05-05 05:37:55', '2020-05-11 08:05:02'),
(239, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-05 11:49:50', 1, '2020-05-05 05:49:50', '2020-05-11 08:05:02'),
(240, NULL, NULL, 1, 40, 1, 0, 1, NULL, NULL, NULL, 1, 3, '2020-05-05 11:52:50', 1, '2020-05-05 05:52:50', '2020-05-11 11:12:37'),
(241, NULL, NULL, 0, 0, 0, 0, 1, 'new message', 25, NULL, 1, NULL, '2020-05-05 12:00:38', 1, '2020-05-05 06:00:38', '2020-05-11 08:05:02'),
(242, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-05 12:01:02', 1, '2020-05-05 06:01:02', '2020-05-11 08:05:02'),
(243, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-05 12:01:19', 1, '2020-05-05 06:01:19', '2020-05-11 08:05:02'),
(244, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 25, NULL, 1, NULL, '2020-05-05 12:01:38', 1, '2020-05-05 06:01:38', '2020-05-11 08:05:02'),
(245, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 25, NULL, 1, NULL, '2020-05-05 13:47:25', 1, '2020-05-05 07:47:25', '2020-05-11 08:05:02'),
(246, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 25, NULL, 1, NULL, '2020-05-05 15:17:33', 1, '2020-05-05 09:17:33', '2020-05-11 08:05:02'),
(247, NULL, NULL, 1, 39, 0, 0, 1, 'general', NULL, NULL, 1, NULL, '2020-05-05 15:17:45', 1, '2020-05-05 09:17:45', '2020-05-11 11:10:53'),
(248, NULL, NULL, 1, 39, 0, 0, 1, 'good to see u', NULL, NULL, 1, NULL, '2020-05-05 15:17:51', 1, '2020-05-05 09:17:51', '2020-05-11 11:10:53'),
(249, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, NULL, '2020-05-05 15:18:02', 1, '2020-05-05 09:18:02', '2020-05-11 11:12:37'),
(250, NULL, NULL, 1, 40, 0, 0, 1, 'is everything ok?', NULL, NULL, 1, NULL, '2020-05-05 15:18:14', 1, '2020-05-05 09:18:14', '2020-05-11 11:12:37'),
(251, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, NULL, '2020-05-05 15:40:01', 1, '2020-05-05 09:40:01', '2020-05-11 11:12:37'),
(252, NULL, NULL, 1, 40, 0, 0, 1, 'hlw', NULL, NULL, 1, NULL, '2020-05-05 15:40:13', 1, '2020-05-05 09:40:13', '2020-05-11 11:12:37'),
(253, NULL, 246, 0, 0, 0, 0, NULL, NULL, 25, 'this is working quite good', 1, NULL, '2020-05-07 14:02:10', 1, '2020-05-07 08:02:10', '2020-05-14 12:29:44'),
(254, NULL, NULL, 0, 0, 0, 0, 1, 'hlw', 25, NULL, 1, NULL, '2020-05-08 07:50:58', 1, '2020-05-08 01:50:58', '2020-05-11 08:05:02'),
(255, NULL, NULL, 0, 0, 0, 0, 1, 'hi kajol', 25, NULL, 1, NULL, '2020-05-08 07:52:19', 1, '2020-05-08 01:52:19', '2020-05-11 08:05:02'),
(256, NULL, 253, 0, 0, 0, 0, 1, 'hlw', 25, NULL, 1, NULL, '2020-05-08 12:41:53', 1, '2020-05-08 06:41:53', '2020-05-11 08:05:02'),
(262, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-08 17:49:06', 1, '2020-05-08 11:49:06', '2020-05-14 12:29:44'),
(263, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hlw', 1, NULL, '2020-05-08 17:49:32', 1, '2020-05-08 11:49:32', '2020-05-14 12:29:44'),
(264, NULL, 256, 0, 0, 0, 0, NULL, NULL, 25, 'hi there, how is going on?', 1, NULL, '2020-05-08 17:49:42', 1, '2020-05-08 11:49:42', '2020-05-14 12:29:44'),
(265, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-08 18:11:04', 1, '2020-05-08 12:11:04', '2020-05-14 12:29:44'),
(266, NULL, NULL, 0, 0, 0, 0, 1, 'hlw', 25, NULL, 1, NULL, '2020-05-08 18:11:13', 1, '2020-05-08 12:11:13', '2020-05-11 08:05:02'),
(267, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'dhow', 1, NULL, '2020-05-08 18:11:26', 1, '2020-05-08 12:11:26', '2020-05-14 12:29:44'),
(268, NULL, NULL, 0, 0, 0, 0, 1, 'vaq', 25, NULL, 1, NULL, '2020-05-08 18:11:30', 1, '2020-05-08 12:11:30', '2020-05-11 08:05:02'),
(269, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-08 18:14:46', 0, '2020-05-08 12:14:46', '2020-05-14 12:29:44'),
(270, NULL, NULL, 0, 0, 0, 0, 1, 'hlw', 25, NULL, 1, NULL, '2020-05-08 18:14:50', 1, '2020-05-08 12:14:50', '2020-05-11 08:05:02'),
(271, NULL, 270, 0, 0, 0, 0, NULL, NULL, 25, 'everythings is ok ?', 1, NULL, '2020-05-08 18:15:04', 1, '2020-05-08 12:15:04', '2020-05-14 12:29:44'),
(272, NULL, 271, 0, 0, 0, 0, 1, 'al right', 25, NULL, 1, NULL, '2020-05-08 18:15:24', 1, '2020-05-08 12:15:24', '2020-05-11 08:05:02'),
(273, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, 3, '2020-05-08 18:24:18', 1, '2020-05-08 12:24:18', '2020-05-14 12:29:44'),
(274, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, 3, '2020-05-08 18:24:30', 1, '2020-05-08 12:24:30', '2020-05-14 12:29:44'),
(275, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-09 08:42:23', 1, '2020-05-09 02:42:23', '2020-05-14 12:29:44'),
(276, NULL, NULL, 0, 0, 0, 0, 1, 'good day', 25, NULL, 1, NULL, '2020-05-09 08:49:18', 1, '2020-05-09 02:49:18', '2020-05-11 08:05:02'),
(277, NULL, NULL, 1, 40, 0, 0, 1, 'hi', NULL, NULL, 1, NULL, '2020-05-09 08:50:58', 1, '2020-05-09 02:50:58', '2020-05-11 11:12:37'),
(278, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-09 09:04:55', 1, '2020-05-09 03:04:55', '2020-05-14 12:29:44'),
(279, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'good afternoon', 1, NULL, '2020-05-09 09:13:36', 1, '2020-05-09 03:13:36', '2020-05-14 12:29:44'),
(280, NULL, NULL, 1, 40, 0, 0, 1, 'google', NULL, NULL, 1, NULL, '2020-05-09 09:18:00', 1, '2020-05-09 03:18:00', '2020-05-11 11:12:37'),
(281, NULL, NULL, 1, 40, 0, 0, NULL, NULL, 25, 'good to see u\r\n', 1, NULL, '2020-05-09 09:19:32', 1, '2020-05-09 09:19:32', '2020-05-11 11:17:26'),
(282, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hlw', 1, NULL, '2020-05-09 09:21:25', 1, '2020-05-09 03:21:25', '2020-05-14 12:29:44'),
(283, NULL, NULL, 1, 40, 0, 0, 1, 'helo', NULL, NULL, 1, NULL, '2020-05-09 13:01:36', 1, '2020-05-09 07:01:36', '2020-05-11 11:12:37'),
(284, NULL, NULL, 0, 40, 0, 0, NULL, NULL, 25, 'good to see u', 1, NULL, '2020-05-09 13:04:55', 1, '2020-05-09 07:04:55', '2020-05-14 10:05:18'),
(285, NULL, NULL, 1, 40, 0, 0, 1, 'fire', NULL, NULL, 1, 2, '2020-05-09 13:05:12', 1, '2020-05-09 07:05:12', '2020-05-11 11:12:37'),
(286, NULL, NULL, 1, 40, 1, 0, 1, NULL, NULL, NULL, 1, 2, '2020-05-09 13:05:34', 1, '2020-05-09 07:05:34', '2020-05-11 11:12:37'),
(287, NULL, 285, 0, 40, 0, 0, NULL, NULL, 25, 'is it fire????', 1, NULL, '2020-05-09 13:05:48', 0, '2020-05-09 07:05:48', '2020-05-14 10:05:18'),
(288, NULL, NULL, 1, 40, 1, 0, 1, NULL, NULL, NULL, 1, 2, '2020-05-09 13:06:31', 1, '2020-05-09 07:06:31', '2020-05-11 11:12:37'),
(289, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi sir', 1, NULL, '2020-05-09 13:07:50', 1, '2020-05-09 07:07:50', '2020-05-14 12:29:44'),
(290, NULL, NULL, 0, 0, 0, 0, 1, 'hlw', 25, NULL, 1, NULL, '2020-05-09 13:08:04', 1, '2020-05-09 07:08:04', '2020-05-11 08:05:02'),
(291, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 25, NULL, 1, NULL, '2020-05-09 13:34:13', 1, '2020-05-09 07:34:13', '2020-05-11 08:05:02'),
(292, NULL, NULL, 0, 0, 0, 0, 1, 'thanks for the reply', 25, NULL, 1, NULL, '2020-05-09 13:36:44', 1, '2020-05-09 07:36:44', '2020-05-11 08:05:02'),
(293, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 25, NULL, 1, NULL, '2020-05-09 13:37:34', 1, '2020-05-09 07:37:34', '2020-05-11 08:05:02'),
(294, NULL, NULL, 1, 40, 0, 0, 1, 'hlw', NULL, NULL, 1, NULL, '2020-05-09 13:38:01', 1, '2020-05-09 07:38:01', '2020-05-11 11:12:37'),
(295, NULL, NULL, 1, 40, 0, 0, 1, 'hls', NULL, NULL, 1, NULL, '2020-05-09 13:41:01', 1, '2020-05-09 07:41:01', '2020-05-11 11:12:37'),
(296, NULL, NULL, 1, 40, 0, 0, 1, 'hlw', NULL, NULL, 1, NULL, '2020-05-09 13:59:44', 1, '2020-05-09 07:59:44', '2020-05-11 11:12:37'),
(297, NULL, NULL, 1, 41, 0, 0, 1, 'hlw', NULL, NULL, 1, NULL, '2020-05-09 13:59:54', 1, '2020-05-09 07:59:54', '2020-05-09 08:01:43'),
(298, NULL, NULL, 1, 41, 0, 0, 1, 'worker', NULL, NULL, 1, NULL, '2020-05-09 13:59:58', 1, '2020-05-09 07:59:58', '2020-05-09 08:01:43'),
(299, NULL, NULL, 1, 39, 0, 0, 1, 'worker', NULL, NULL, 1, NULL, '2020-05-09 14:00:04', 1, '2020-05-09 08:00:04', '2020-05-11 11:10:53'),
(300, NULL, NULL, 1, 39, 1, 0, 1, NULL, NULL, NULL, 1, NULL, '2020-05-09 14:00:17', 1, '2020-05-09 08:00:17', '2020-05-11 11:10:53'),
(301, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-09 14:00:37', 1, '2020-05-09 08:00:37', '2020-05-11 08:05:02'),
(302, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hlw sir', 1, NULL, '2020-05-11 07:03:37', 1, '2020-05-11 01:03:37', '2020-05-14 12:29:44'),
(303, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'good afternoon', 1, NULL, '2020-05-11 07:26:25', 1, '2020-05-11 01:26:25', '2020-05-14 12:29:44'),
(304, NULL, NULL, 0, 0, 1, 0, 1, 'hi chaki', 25, NULL, 1, NULL, '2020-05-11 07:33:01', 1, '2020-05-11 01:33:01', '2020-05-11 08:05:02'),
(305, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, 'hlw sir', 1, NULL, '2020-05-11 07:33:33', 1, '2020-05-11 01:33:33', '2020-05-14 12:29:44'),
(306, NULL, 305, 0, 0, 0, 0, 1, 'nice image', 25, NULL, 1, NULL, '2020-05-11 07:33:49', 1, '2020-05-11 01:33:49', '2020-05-11 08:05:02'),
(307, NULL, 304, 0, 0, 0, 0, NULL, NULL, 25, 'nice image', 1, NULL, '2020-05-11 07:34:52', 1, '2020-05-11 01:34:52', '2020-05-14 12:29:44'),
(308, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-11 07:38:09', 1, '2020-05-11 01:38:09', '2020-05-11 08:05:02'),
(309, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 07:38:53', 1, '2020-05-11 01:38:53', '2020-05-14 12:29:44'),
(310, NULL, NULL, 0, 0, 1, 0, 1, 'hi', 25, NULL, 1, NULL, '2020-05-11 07:42:00', 1, '2020-05-11 01:42:00', '2020-05-11 08:05:02'),
(311, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-11 07:42:12', 1, '2020-05-11 01:42:12', '2020-05-11 08:05:02'),
(312, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-11 07:42:28', 1, '2020-05-11 01:42:28', '2020-05-11 08:05:02'),
(313, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-11 08:38:47', 1, '2020-05-11 02:38:47', '2020-05-11 08:05:02'),
(314, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-11 08:41:10', 1, '2020-05-11 02:41:10', '2020-05-11 08:05:02'),
(315, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 08:45:22', 1, '2020-05-11 02:45:22', '2020-05-14 12:29:44'),
(316, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-11 08:45:34', 1, '2020-05-11 02:45:34', '2020-05-11 08:05:02'),
(317, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-11 08:48:03', 1, '2020-05-11 02:48:03', '2020-05-11 08:05:02'),
(318, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-11 08:49:26', 1, '2020-05-11 02:49:26', '2020-05-11 08:05:02'),
(319, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-11 08:49:36', 1, '2020-05-11 02:49:36', '2020-05-11 08:05:02'),
(320, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 08:49:53', 1, '2020-05-11 02:49:53', '2020-05-14 12:29:44'),
(321, NULL, NULL, 1, 40, 1, 0, 1, NULL, NULL, NULL, 1, NULL, '2020-05-11 08:52:44', 1, '2020-05-11 02:52:44', '2020-05-11 11:12:37'),
(322, NULL, NULL, 1, 40, 1, 0, 1, NULL, NULL, NULL, 1, NULL, '2020-05-11 08:52:59', 1, '2020-05-11 02:52:59', '2020-05-11 11:12:37'),
(323, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 25, NULL, 1, NULL, '2020-05-11 08:54:19', 1, '2020-05-11 02:54:19', '2020-05-11 08:05:02'),
(324, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hlw', 1, NULL, '2020-05-11 08:54:27', 1, '2020-05-11 02:54:27', '2020-05-14 12:29:44'),
(325, NULL, NULL, 0, 0, 1, 0, 1, NULL, 25, NULL, 1, NULL, '2020-05-11 08:54:38', 1, '2020-05-11 02:54:38', '2020-05-11 08:05:02'),
(326, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 08:54:56', 1, '2020-05-11 02:54:56', '2020-05-14 12:29:44'),
(327, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 08:55:49', 1, '2020-05-11 02:55:49', '2020-05-14 12:29:44'),
(328, NULL, NULL, 1, 40, 1, 0, 1, NULL, NULL, NULL, 1, NULL, '2020-05-11 09:00:23', 1, '2020-05-11 03:00:23', '2020-05-11 11:12:37'),
(329, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 09:00:38', 1, '2020-05-11 03:00:38', '2020-05-14 10:05:18'),
(330, NULL, NULL, 0, 40, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-11 09:07:20', 1, '2020-05-11 03:07:20', '2020-05-14 10:05:18'),
(331, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 09:10:25', 1, '2020-05-11 03:10:25', '2020-05-14 10:05:18'),
(332, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 09:10:52', 1, '2020-05-11 03:10:52', '2020-05-14 10:05:18'),
(333, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-11 09:12:22', 1, '2020-05-11 03:12:22', '2020-05-14 12:29:44'),
(334, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'good to see u', 1, NULL, '2020-05-11 09:13:28', 1, '2020-05-11 03:13:28', '2020-05-14 12:29:44'),
(335, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hlw', 1, NULL, '2020-05-11 09:13:51', 1, '2020-05-11 03:13:51', '2020-05-14 12:29:44'),
(336, NULL, NULL, 1, 40, 1, 0, 1, NULL, NULL, NULL, 1, NULL, '2020-05-11 09:15:29', 1, '2020-05-11 03:15:29', '2020-05-11 11:12:37'),
(337, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 11:49:45', 0, '2020-05-11 05:49:45', '2020-05-14 10:05:18'),
(338, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 11:51:11', 1, '2020-05-11 05:51:11', '2020-05-14 10:05:18'),
(339, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 11:52:44', 1, '2020-05-11 05:52:44', '2020-05-14 12:29:44'),
(340, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 11:52:59', 1, '2020-05-11 05:52:59', '2020-05-14 12:29:44'),
(341, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 11:53:17', 1, '2020-05-11 05:53:17', '2020-05-14 12:29:44'),
(342, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 11:55:24', 1, '2020-05-11 05:55:24', '2020-05-14 12:29:44'),
(343, NULL, NULL, 1, 40, 1, 0, 1, NULL, NULL, NULL, 1, NULL, '2020-05-11 11:55:44', 1, '2020-05-11 05:55:44', '2020-05-11 11:12:37'),
(344, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 11:55:54', 1, '2020-05-11 05:55:54', '2020-05-14 12:29:44'),
(345, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 12:01:42', 1, '2020-05-11 06:01:42', '2020-05-14 10:05:18'),
(346, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 12:02:27', 1, '2020-05-11 06:02:27', '2020-05-14 12:29:44'),
(347, NULL, NULL, 1, 40, 0, 0, 1, 'this is leader', NULL, NULL, 1, NULL, '2020-05-11 14:05:38', 1, '2020-05-11 08:05:38', '2020-05-11 11:12:37'),
(348, NULL, NULL, 0, 40, 0, 0, NULL, NULL, 25, 'hi leader', 1, NULL, '2020-05-11 14:05:53', 1, '2020-05-11 08:05:53', '2020-05-14 10:05:18'),
(349, NULL, NULL, 0, 40, 0, 0, NULL, NULL, 25, 'hlw', 1, NULL, '2020-05-11 14:06:40', 1, '2020-05-11 08:06:40', '2020-05-14 10:05:18'),
(350, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 14:06:53', 1, '2020-05-11 08:06:53', '2020-05-14 10:05:18'),
(351, NULL, NULL, 0, 40, 0, 0, NULL, NULL, 25, 'hi leader', 1, NULL, '2020-05-11 14:07:04', 1, '2020-05-11 08:07:04', '2020-05-14 10:05:18'),
(352, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 14:07:32', 1, '2020-05-11 08:07:32', '2020-05-14 10:05:18'),
(353, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-11 14:08:03', 1, '2020-05-11 08:08:03', '2020-05-14 12:29:44'),
(354, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 14:08:11', 1, '2020-05-11 08:08:11', '2020-05-14 12:29:44'),
(355, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 14:08:31', 1, '2020-05-11 08:08:31', '2020-05-14 12:29:44'),
(356, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 14:08:39', 1, '2020-05-11 08:08:39', '2020-05-14 12:29:44'),
(357, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 14:09:45', 1, '2020-05-11 08:09:45', '2020-05-14 10:05:18'),
(358, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 14:10:08', 1, '2020-05-11 08:10:08', '2020-05-14 10:05:18'),
(359, NULL, NULL, 0, 0, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 14:12:53', 1, '2020-05-11 08:12:53', '2020-05-14 12:29:44'),
(360, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-11 14:13:02', 1, '2020-05-11 08:13:02', '2020-05-14 12:29:44'),
(361, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 14:13:20', 1, '2020-05-11 08:13:20', '2020-05-14 10:05:18'),
(362, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 14:14:09', 1, '2020-05-11 08:14:09', '2020-05-14 10:05:18'),
(363, NULL, NULL, 0, 40, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-11 14:14:23', 1, '2020-05-11 08:14:23', '2020-05-14 10:05:18'),
(364, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 14:17:20', 1, '2020-05-11 08:17:20', '2020-05-14 10:05:18'),
(365, NULL, NULL, 0, 40, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-11 14:18:13', 1, '2020-05-11 08:18:13', '2020-05-14 10:05:18'),
(366, NULL, NULL, 0, 40, 0, 0, NULL, NULL, 25, 'hls', 1, NULL, '2020-05-11 14:19:08', 1, '2020-05-11 08:19:08', '2020-05-14 10:05:18'),
(367, NULL, NULL, 0, 40, 0, 1, NULL, NULL, 25, NULL, 1, NULL, '2020-05-11 14:19:14', 1, '2020-05-11 08:19:14', '2020-05-14 10:05:18'),
(368, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 25, 'hi', 1, NULL, '2020-05-11 14:24:42', 1, '2020-05-11 08:24:42', '2020-05-14 12:29:44'),
(369, NULL, NULL, 1, 39, 1, 0, 1, '<p>করোনাভাইরাসে সংক্রমিত হলে আক্রান্ত ব্যক্তি ও তাঁর সংস্পর্শে আসা ব্যক্তিদের আইসোলেশনে থাকতে বলা হচ্ছে। মৃদু উপসর্গ আছে, এমন বেশির ভাগ রোগী বাড়িতে আইসোলেশনে থেকেই চিকিৎসা নিয়ে সেরে উঠছেন। তবে শুধু চিকিৎসা নয়, আইসোলেশনে থাকা ব্যক্তির খাদ্যাভ্যাস আর খাবার পরিবেশনের পদ্ধতির দিকে নজর দেওয়াও ভীষণ জরুরি।<br></p>', NULL, NULL, 1, 1, '2020-05-11 17:10:27', 1, '2020-05-11 11:10:27', '2020-05-11 17:14:42'),
(370, NULL, NULL, 1, 40, 1, 0, 1, 'করোনাভাইরাসে সংক্রমিত হলে আক্রান্ত ব্যক্তি ও তাঁর সংস্পর্শে আসা ব্যক্তিদের আইসোলেশনে থাকতে বলা হচ্ছে। মৃদু উপসর্গ আছে, এমন বেশির ভাগ রোগী বাড়িতে আইসোলেশনে থেকেই চিকিৎসা নিয়ে সেরে উঠছেন। তবে শুধু চিকিৎসা নয়, আইসোলেশনে থাকা ব্যক্তির খাদ্যাভ্যাস আর খাবার পরিবেশনের পদ্ধতির দিকে নজর দেওয়াও ভীষণ জরুরি।<br>', NULL, NULL, 1, 1, '2020-05-11 17:10:27', 1, '2020-05-11 11:10:27', '2020-05-11 17:14:36'),
(371, NULL, NULL, 1, 40, 1, 0, 1, 'DSAFH;O HIOSADFP OI SOIADF', NULL, NULL, 0, NULL, '2020-05-11 17:14:09', 1, '2020-05-11 11:14:09', '2020-05-11 11:14:09'),
(372, NULL, NULL, 0, 0, 1, 0, 1, '<p>করোনায় আক্রান্ত ব্যক্তি একটি আলাদা ঘরে থাকবেন। বাড়িতে ঘরের স্বল্পতা থাকলে একই ঘরে আলাদা পর্দাঘেরা কোনায় থাকবেন।<br></p>', 15, NULL, 0, NULL, '2020-05-11 17:18:26', 1, '2020-05-11 11:18:26', '2020-05-11 11:18:26'),
(373, NULL, NULL, 0, 0, 1, 0, 1, '<p>করোনায় আক্রান্ত ব্যক্তি একটি আলাদা ঘরে থাকবেন। বাড়িতে ঘরের স্বল্পতা থাকলে একই ঘরে আলাদা পর্দাঘেরা কোনায় থাকবেন।<br></p>', 25, NULL, 0, NULL, '2020-05-11 17:18:26', 1, '2020-05-11 11:18:26', '2020-05-11 11:18:26'),
(374, 25, NULL, 0, 0, 0, 0, 1, '<p>hi</p>', 20, NULL, 0, NULL, '2020-05-12 13:50:43', 1, '2020-05-12 07:50:43', '2020-05-12 07:50:43'),
(375, 25, NULL, 0, 0, 0, 0, 1, '<p>hi</p>', 25, NULL, 0, NULL, '2020-05-12 13:50:43', 1, '2020-05-12 07:50:43', '2020-05-12 07:50:43'),
(376, 25, NULL, 0, 0, 0, 0, 1, '<p>hi</p>', 44, NULL, 0, NULL, '2020-05-12 13:50:43', 1, '2020-05-12 07:50:43', '2020-05-12 07:50:43'),
(377, 26, NULL, 0, 0, 0, 0, 1, '<p>hi to all</p>', 5, NULL, 0, 3, '2020-05-13 13:04:35', 1, '2020-05-13 07:04:35', '2020-05-13 07:04:35'),
(378, 26, NULL, 0, 0, 0, 0, 1, '<p>hi to all</p>', 14, NULL, 0, 3, '2020-05-13 13:04:35', 1, '2020-05-13 07:04:35', '2020-05-13 07:04:35'),
(379, 26, NULL, 0, 0, 0, 0, 1, '<p>hi to all</p>', 15, NULL, 0, 3, '2020-05-13 13:04:35', 1, '2020-05-13 07:04:35', '2020-05-13 07:04:35'),
(380, 26, NULL, 0, 0, 0, 0, 1, '<p>hi to all</p>', 16, NULL, 0, 3, '2020-05-13 13:04:35', 1, '2020-05-13 07:04:35', '2020-05-13 07:04:35'),
(381, 26, NULL, 0, 0, 0, 0, 1, '<p>hi to all</p>', 20, NULL, 0, 3, '2020-05-13 13:04:35', 1, '2020-05-13 07:04:35', '2020-05-13 07:04:35'),
(382, 26, NULL, 0, 0, 0, 0, 1, '<p>hi to all</p>', 21, NULL, 0, 3, '2020-05-13 13:04:35', 1, '2020-05-13 07:04:35', '2020-05-13 07:04:35'),
(383, 26, NULL, 0, 0, 0, 0, 1, '<p>hi to all</p>', 23, NULL, 0, 3, '2020-05-13 13:04:35', 1, '2020-05-13 07:04:35', '2020-05-13 07:04:35'),
(384, 26, NULL, 0, 0, 0, 0, 1, '<p>hi to all</p>', 25, NULL, 0, 3, '2020-05-13 13:04:35', 1, '2020-05-13 07:04:35', '2020-05-13 07:04:35');
INSERT INTO `message_masters` (`id`, `message_id`, `reply_to`, `is_group_msg`, `group_id`, `is_attachment`, `is_attachment_app_user`, `admin_id`, `admin_message`, `app_user_id`, `app_user_message`, `is_seen`, `message_category`, `message_date_time`, `status`, `created_at`, `updated_at`) VALUES
(385, 26, NULL, 0, 0, 0, 0, 1, '<p>hi to all</p>', 44, NULL, 0, 3, '2020-05-13 13:04:35', 1, '2020-05-13 07:04:35', '2020-05-13 07:04:35'),
(386, NULL, NULL, 0, 0, 0, 0, 1, 'good job', 25, NULL, 0, 2, '2020-05-14 15:58:11', 1, '2020-05-14 09:58:11', '2020-05-14 09:58:11'),
(387, NULL, NULL, 1, 39, 0, 0, 1, 'hi', NULL, NULL, 0, 2, '2020-05-14 15:59:30', 1, '2020-05-14 09:59:30', '2020-05-14 09:59:30'),
(388, NULL, NULL, 0, 0, 0, 0, 1, 'hi', 25, NULL, 0, 2, '2020-05-14 16:05:08', 1, '2020-05-14 10:05:08', '2020-05-14 10:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_24_063021_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `notice_date` date DEFAULT NULL,
  `attachment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `expire_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0: In-active, 1: Active',
  `created_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `details`, `notice_date`, `attachment`, `expire_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Coronavirus', 'Coronaviruses (CoV) are a large family of viruses that cause illness ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS-CoV) and Severe Acute Respiratory Syndrome (SARS-CoV).\r\n\r\nCoronavirus disease (COVID-19) is a new strain that was discovered in 2019 and has not been previously identified in humans.\r\n\r\nCoronaviruses are zoonotic, meaning they are transmitted between animals and people.  Detailed investigations found that SARS-CoV was transmitted from civet cats to humans and MERS-CoV from dromedary camels to humans. Several known coronaviruses are circulating in animals that have not yet infected humans. \r\n\r\nCommon signs of infection include respiratory symptoms, fever, cough, shortness of breath and breathing difficulties. In more severe cases, infection can cause pneumonia, severe acute respiratory syndrome, kidney failure and even death. \r\n\r\nStandard recommendations to prevent infection spread include regular hand washing, covering mouth and nose when coughing and sneezing, thoroughly cooking meat and eggs. Avoid close contact with anyone showing symptoms of respiratory illness such as coughing and sneezing.', '2020-03-20', '3957026831588744371Nuxtjs-Cheat-Sheet.pdf', '2020-06-30', 1, 'Momit', 'Momit', '2020-03-20 09:14:21', '2020-05-06 10:39:37'),
(2, 'নিউইয়র্কে বাংলাদেশি পরিবারের চার সদস্য করোনায় আক্রান্ত', 'যুক্তরাষ্ট্রের নিউইয়র্কের কুইন্সে বসবাসকারী এক বাংলাদেশি পরিবারের চার সদস্য করোনাভাইরাসে আক্রান্ত হয়েছেন। আক্রান্ত ব্যক্তিরা হাসপাতালে ভর্তি হয়েছেন।\r\n\r\nপরিবারের কর্তা (পুরুষ) প্রথমে আক্রান্ত হন। পরে তাঁর স্ত্রী আক্রান্ত হন। তাঁদের দুই সন্তানও পরে করোনায় আক্রান্ত হয়।\r\n\r\nরাজশাহী বিশ্ববিদ্যালয় অ্যালামনাই অ্যাসোসিয়েশন ইউএসএর এক নেতা বলেন, ‘আমরা সার্বক্ষণিক পরিবারটির খোঁজখবর রাখছি। কোনো কিছুর প্রয়োজন হলে তা সরবরাহ করার চেষ্টা করছি।’\r\nপ্রবাসী বাংলাদেশিদের উদ্দেশে এই নেতা বলেন, ‘আমাদের সামাজিক বৈশিষ্ট্য হচ্ছে—কারও বিপদে পাশে দাঁড়ানো। কিন্তু করোনাভাইরাস আমাদের বিপরীত স্রোতে নিয়ে যাচ্ছে। তার পরও আমাদের পরস্পরের পাশে থাকতে হবে। সামাজিক যোগাযোগের নতুন মাধ্যম সোশ্যাল মিডিয়ার মাধ্যমে আমরা পরস্পরের খোঁজ নেব, কাছে থাকব, আমাদের করণীয় সম্পর্কে মতবিনিময় করব।’\r\n\r\nনেতা বলেন, যাঁরা ট্যাক্সি বা উবার চালান, মালিকপক্ষের লোভনীয় অফার প্রত্যাখ্যান করে কিছুদিন বাসায় থাকুন। যাঁদের কাজে যেতেই হয়, সর্বোচ্চ সতর্কতা অবলম্বন করুন। আমাদের পরস্পরের পাশে থাকতে হবে।', '2020-03-20', '3957026831588744371Nuxtjs-Cheat-Sheet.pdf', '2020-05-31', 1, 'Momit', NULL, '2020-03-20 09:21:26', '2020-05-06 10:39:41'),
(4, 'লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।&nbsp; এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।</p>', '2020-05-08', '', '2020-06-30', 1, 'Momit', NULL, '2020-05-08 01:45:02', '2020-05-08 01:45:02'),
(5, 'বাড়িতে করোনা রোগীর সেবায় সাত', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', '2020-05-11', '1322481821589212754prosanta-kumar-chaki.pdf', '2020-05-29', 1, 'Momit', 'Momit', '2020-05-11 09:48:37', '2020-05-12 03:46:38'),
(6, 'মা–বাবার ভীতি, উদ্বেগ যেন শিশুর মধ্যে সঞ্চারিত না হয়', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">প্রথম আলো: আমরা জেনেছিলাম প্রথম দিকে যে করোনায় শিশুদের করোনার সংক্রমণের ঝুঁকি কম। কিন্তু এখন শিশুদের আক্রান্ত হওয়ার, এমনকি আইসোলেশনে থাকা শিশুর মৃত্যুর সংবাদও আমরা পেয়েছি। শিশুদের কি আদৌ করোনার সংক্রমণের ঝুঁকি কম?</span></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">অধ্যাপক নাজমুন নাহার:</span>&nbsp;</font>শিশুদের মধ্যে সংক্রমণের হার কম, তবে একদমই ঝুঁকি নেই, তা নয়। করোনাভাইরাস সম্পর্কে আগে জানা ছিল যে এতে বয়স্কদের ঝুঁকি বেশি, কিন্তু আমরা কমবয়সীদেরও তীব্রভাবে ভুগতে দেখছি। এমনকি অপেক্ষাকৃত যুবা বয়সীরা মারাও গেছেন। মূলত যাঁদের রোগপ্রতিরোধ ক্ষমতা কম, তাঁদেরই ঝুঁকি বেশি। সেটা যেকোনো বয়সেই হতে পারে, এমনকি শিশুদেরও। তবে এ রকম দু–একটি ঘটনা থেকে এমনটা বলা যায় না যে আমাদের দেশে ভাইরাসটির সংক্রমণের ধারা অন্য রকম। তবে শিশুরা এ রোগের অন্যতম বাহক। যেহেতু শিশুদের মধ্যে মৃদু ধরনের সংক্রমণ হয় আর উপসর্গ কম থাকে বা না–ও থাকতে পারে, সে জন্য শিশুরা নীরবে অন্যদের সংক্রমিত করার ক্ষেত্রে বড় ভূমিকা রাখে। তাই শিশুদের সংক্রমণের বিষয়টিকে এখন গুরুত্বের সঙ্গে দেখা হচ্ছে।</p>', '2020-05-11', '13032331881589217892DA90208.jpg', '2020-05-30', 1, 'Momit', 'Momit', '2020-05-11 11:24:52', '2020-05-11 11:26:28'),
(7, 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', '2020-05-07', '3890567531589218094IMG_5790.JPG', '2020-05-30', 1, 'Momit', 'Momit', '2020-05-11 11:28:14', '2020-05-12 03:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `notice_categories`
--

CREATE TABLE `notice_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name_bn` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL COMMENT '0: In-active, 1: Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice_categories`
--

INSERT INTO `notice_categories` (`id`, `category_name`, `category_name_bn`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Accident', 'দুর্ঘটনা', 'accident dg', 1, '2020-05-14 07:53:38', '2020-05-14 07:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `from_id` int(11) DEFAULT NULL,
  `from_user_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Admin Or App User',
  `to_id` int(11) DEFAULT NULL,
  `to_user_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Admin Or App User',
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notification_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci,
  `view_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'moduleName/id',
  `module_id` int(11) DEFAULT NULL,
  `module_reference_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Un-seen, 1: Seen',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='m';

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `from_id`, `from_user_type`, `to_id`, `to_user_type`, `date_time`, `notification_title`, `message`, `view_url`, `module_id`, `module_reference_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Admin', 16, 'App User', '2020-03-20 13:33:38', 'BILS Initiate Basic First Aid Procedures Course', NULL, 'course/1', 7, 1, 0, '2020-03-20 07:33:38', '2020-05-06 10:16:02'),
(3, 1, 'Admin', 14, 'App User', '2020-03-20 13:33:38', 'BILS Initiate Basic First Aid Procedures Course', NULL, 'course/1', 7, 1, 0, '2020-03-20 07:33:38', '2020-05-06 10:16:04'),
(4, 1, 'Admin', 5, 'App User', '2020-03-20 13:33:38', 'BILS Initiate Basic First Aid Procedures Course', NULL, 'course/1', 7, 1, 0, '2020-03-20 07:33:38', '2020-05-06 10:16:10'),
(5, 1, 'Admin', 15, 'App User', '2020-03-20 13:33:47', 'BILS Approved Basic First Aid Procedures Course', NULL, 'course/1', 7, 1, 0, '2020-03-20 07:33:47', '2020-05-06 10:16:06'),
(6, 1, 'Admin', 16, 'App User', '2020-03-20 13:33:47', 'BILS Approved Basic First Aid Procedures Course', NULL, 'course/1', 7, 1, 0, '2020-03-20 07:33:47', '2020-05-06 10:16:05'),
(7, 1, 'Admin', 5, 'App User', '2020-03-20 13:33:47', 'BILS Approved Basic First Aid Procedures Course', NULL, 'course/1', 7, 1, 0, '2020-03-20 07:33:47', '2020-05-06 10:16:15'),
(8, 1, 'Admin', 25, 'App User', '2020-03-20 15:14:22', 'Coronavirus', 'Coronaviruses (CoV) are a large family of viruses that cause illness ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS-CoV) and Severe Acute Respiratory Syndrome (SARS-CoV).\r\n\r\nCoronavirus disease (COVID-19) is a new strain that was discovered in 2019 and has not been previously identified in humans.\r\n\r\nCoronaviruses are zoonotic, meaning they are transmitted between animals and people.  Detailed investigations found that SARS-CoV was transmitted from civet cats to humans and MERS-CoV from dromedary camels to humans. Several known coronaviruses are circulating in animals that have not yet infected humans. \r\n\r\nCommon signs of infection include respiratory symptoms, fever, cough, shortness of breath and breathing difficulties. In more severe cases, infection can cause pneumonia, severe acute respiratory syndrome, kidney failure and even death. \r\n\r\nStandard recommendations to prevent infection spread include regular hand washing, covering mouth and nose when coughing and sneezing, thoroughly cooking meat and eggs. Avoid close contact with anyone showing symptoms of respiratory illness such as coughing and sneezing.', 'notice/1', 37, 1, 1, '2020-03-20 09:14:22', '2020-05-08 01:46:52'),
(9, 1, 'Admin', 5, 'App User', '2020-03-20 15:14:22', 'Coronavirus', 'Coronaviruses (CoV) are a large family of viruses that cause illness ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS-CoV) and Severe Acute Respiratory Syndrome (SARS-CoV).\r\n\r\nCoronavirus disease (COVID-19) is a new strain that was discovered in 2019 and has not been previously identified in humans.\r\n\r\nCoronaviruses are zoonotic, meaning they are transmitted between animals and people.  Detailed investigations found that SARS-CoV was transmitted from civet cats to humans and MERS-CoV from dromedary camels to humans. Several known coronaviruses are circulating in animals that have not yet infected humans. \r\n\r\nCommon signs of infection include respiratory symptoms, fever, cough, shortness of breath and breathing difficulties. In more severe cases, infection can cause pneumonia, severe acute respiratory syndrome, kidney failure and even death. \r\n\r\nStandard recommendations to prevent infection spread include regular hand washing, covering mouth and nose when coughing and sneezing, thoroughly cooking meat and eggs. Avoid close contact with anyone showing symptoms of respiratory illness such as coughing and sneezing.', 'notice/1', 37, 1, 0, '2020-03-20 09:14:22', '2020-05-06 10:16:19'),
(10, 1, 'Admin', 15, 'App User', '2020-03-20 15:14:22', 'Coronavirus', 'Coronaviruses (CoV) are a large family of viruses that cause illness ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS-CoV) and Severe Acute Respiratory Syndrome (SARS-CoV).\r\n\r\nCoronavirus disease (COVID-19) is a new strain that was discovered in 2019 and has not been previously identified in humans.\r\n\r\nCoronaviruses are zoonotic, meaning they are transmitted between animals and people.  Detailed investigations found that SARS-CoV was transmitted from civet cats to humans and MERS-CoV from dromedary camels to humans. Several known coronaviruses are circulating in animals that have not yet infected humans. \r\n\r\nCommon signs of infection include respiratory symptoms, fever, cough, shortness of breath and breathing difficulties. In more severe cases, infection can cause pneumonia, severe acute respiratory syndrome, kidney failure and even death. \r\n\r\nStandard recommendations to prevent infection spread include regular hand washing, covering mouth and nose when coughing and sneezing, thoroughly cooking meat and eggs. Avoid close contact with anyone showing symptoms of respiratory illness such as coughing and sneezing.', 'notice/1', 37, 1, 0, '2020-03-20 09:14:22', '2020-05-06 10:16:17'),
(11, 1, 'Admin', 16, 'App User', '2020-03-20 15:14:22', 'Coronavirus', 'Coronaviruses (CoV) are a large family of viruses that cause illness ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS-CoV) and Severe Acute Respiratory Syndrome (SARS-CoV).\r\n\r\nCoronavirus disease (COVID-19) is a new strain that was discovered in 2019 and has not been previously identified in humans.\r\n\r\nCoronaviruses are zoonotic, meaning they are transmitted between animals and people.  Detailed investigations found that SARS-CoV was transmitted from civet cats to humans and MERS-CoV from dromedary camels to humans. Several known coronaviruses are circulating in animals that have not yet infected humans. \r\n\r\nCommon signs of infection include respiratory symptoms, fever, cough, shortness of breath and breathing difficulties. In more severe cases, infection can cause pneumonia, severe acute respiratory syndrome, kidney failure and even death. \r\n\r\nStandard recommendations to prevent infection spread include regular hand washing, covering mouth and nose when coughing and sneezing, thoroughly cooking meat and eggs. Avoid close contact with anyone showing symptoms of respiratory illness such as coughing and sneezing.', 'notice/1', 37, 1, 0, '2020-03-20 09:14:22', '2020-05-06 10:16:16'),
(12, 1, 'Admin', 14, 'App User', '2020-03-20 15:21:26', 'নিউইয়র্কে বাংলাদেশি পরিবারের চার সদস্য করোনায় আক্রান্ত', 'যুক্তরাষ্ট্রের নিউইয়র্কের কুইন্সে বসবাসকারী এক বাংলাদেশি পরিবারের চার সদস্য করোনাভাইরাসে আক্রান্ত হয়েছেন। আক্রান্ত ব্যক্তিরা হাসপাতালে ভর্তি হয়েছেন।\r\n\r\nপরিবারের কর্তা (পুরুষ) প্রথমে আক্রান্ত হন। পরে তাঁর স্ত্রী আক্রান্ত হন। তাঁদের দুই সন্তানও পরে করোনায় আক্রান্ত হয়।\r\n\r\nরাজশাহী বিশ্ববিদ্যালয় অ্যালামনাই অ্যাসোসিয়েশন ইউএসএর এক নেতা বলেন, ‘আমরা সার্বক্ষণিক পরিবারটির খোঁজখবর রাখছি। কোনো কিছুর প্রয়োজন হলে তা সরবরাহ করার চেষ্টা করছি।’\r\nপ্রবাসী বাংলাদেশিদের উদ্দেশে এই নেতা বলেন, ‘আমাদের সামাজিক বৈশিষ্ট্য হচ্ছে—কারও বিপদে পাশে দাঁড়ানো। কিন্তু করোনাভাইরাস আমাদের বিপরীত স্রোতে নিয়ে যাচ্ছে। তার পরও আমাদের পরস্পরের পাশে থাকতে হবে। সামাজিক যোগাযোগের নতুন মাধ্যম সোশ্যাল মিডিয়ার মাধ্যমে আমরা পরস্পরের খোঁজ নেব, কাছে থাকব, আমাদের করণীয় সম্পর্কে মতবিনিময় করব।’\r\n\r\nনেতা বলেন, যাঁরা ট্যাক্সি বা উবার চালান, মালিকপক্ষের লোভনীয় অফার প্রত্যাখ্যান করে কিছুদিন বাসায় থাকুন। যাঁদের কাজে যেতেই হয়, সর্বোচ্চ সতর্কতা অবলম্বন করুন। আমাদের পরস্পরের পাশে থাকতে হবে।', 'notice/2', 37, 2, 0, '2020-03-20 09:21:26', '2020-05-06 10:16:23'),
(13, 1, 'Admin', 5, 'App User', '2020-03-20 15:21:26', 'নিউইয়র্কে বাংলাদেশি পরিবারের চার সদস্য করোনায় আক্রান্ত', 'যুক্তরাষ্ট্রের নিউইয়র্কের কুইন্সে বসবাসকারী এক বাংলাদেশি পরিবারের চার সদস্য করোনাভাইরাসে আক্রান্ত হয়েছেন। আক্রান্ত ব্যক্তিরা হাসপাতালে ভর্তি হয়েছেন।\r\n\r\nপরিবারের কর্তা (পুরুষ) প্রথমে আক্রান্ত হন। পরে তাঁর স্ত্রী আক্রান্ত হন। তাঁদের দুই সন্তানও পরে করোনায় আক্রান্ত হয়।\r\n\r\nরাজশাহী বিশ্ববিদ্যালয় অ্যালামনাই অ্যাসোসিয়েশন ইউএসএর এক নেতা বলেন, ‘আমরা সার্বক্ষণিক পরিবারটির খোঁজখবর রাখছি। কোনো কিছুর প্রয়োজন হলে তা সরবরাহ করার চেষ্টা করছি।’\r\nপ্রবাসী বাংলাদেশিদের উদ্দেশে এই নেতা বলেন, ‘আমাদের সামাজিক বৈশিষ্ট্য হচ্ছে—কারও বিপদে পাশে দাঁড়ানো। কিন্তু করোনাভাইরাস আমাদের বিপরীত স্রোতে নিয়ে যাচ্ছে। তার পরও আমাদের পরস্পরের পাশে থাকতে হবে। সামাজিক যোগাযোগের নতুন মাধ্যম সোশ্যাল মিডিয়ার মাধ্যমে আমরা পরস্পরের খোঁজ নেব, কাছে থাকব, আমাদের করণীয় সম্পর্কে মতবিনিময় করব।’\r\n\r\nনেতা বলেন, যাঁরা ট্যাক্সি বা উবার চালান, মালিকপক্ষের লোভনীয় অফার প্রত্যাখ্যান করে কিছুদিন বাসায় থাকুন। যাঁদের কাজে যেতেই হয়, সর্বোচ্চ সতর্কতা অবলম্বন করুন। আমাদের পরস্পরের পাশে থাকতে হবে।', 'notice/2', 37, 2, 0, '2020-03-20 09:21:26', '2020-05-06 10:16:27'),
(14, 1, 'Admin', 15, 'App User', '2020-03-20 15:21:26', 'নিউইয়র্কে বাংলাদেশি পরিবারের চার সদস্য করোনায় আক্রান্ত', 'যুক্তরাষ্ট্রের নিউইয়র্কের কুইন্সে বসবাসকারী এক বাংলাদেশি পরিবারের চার সদস্য করোনাভাইরাসে আক্রান্ত হয়েছেন। আক্রান্ত ব্যক্তিরা হাসপাতালে ভর্তি হয়েছেন।\r\n\r\nপরিবারের কর্তা (পুরুষ) প্রথমে আক্রান্ত হন। পরে তাঁর স্ত্রী আক্রান্ত হন। তাঁদের দুই সন্তানও পরে করোনায় আক্রান্ত হয়।\r\n\r\nরাজশাহী বিশ্ববিদ্যালয় অ্যালামনাই অ্যাসোসিয়েশন ইউএসএর এক নেতা বলেন, ‘আমরা সার্বক্ষণিক পরিবারটির খোঁজখবর রাখছি। কোনো কিছুর প্রয়োজন হলে তা সরবরাহ করার চেষ্টা করছি।’\r\nপ্রবাসী বাংলাদেশিদের উদ্দেশে এই নেতা বলেন, ‘আমাদের সামাজিক বৈশিষ্ট্য হচ্ছে—কারও বিপদে পাশে দাঁড়ানো। কিন্তু করোনাভাইরাস আমাদের বিপরীত স্রোতে নিয়ে যাচ্ছে। তার পরও আমাদের পরস্পরের পাশে থাকতে হবে। সামাজিক যোগাযোগের নতুন মাধ্যম সোশ্যাল মিডিয়ার মাধ্যমে আমরা পরস্পরের খোঁজ নেব, কাছে থাকব, আমাদের করণীয় সম্পর্কে মতবিনিময় করব।’\r\n\r\nনেতা বলেন, যাঁরা ট্যাক্সি বা উবার চালান, মালিকপক্ষের লোভনীয় অফার প্রত্যাখ্যান করে কিছুদিন বাসায় থাকুন। যাঁদের কাজে যেতেই হয়, সর্বোচ্চ সতর্কতা অবলম্বন করুন। আমাদের পরস্পরের পাশে থাকতে হবে।', 'notice/2', 37, 2, 0, '2020-03-20 09:21:26', '2020-05-06 10:16:30'),
(15, 1, 'Admin', 25, 'App User', '2020-03-20 15:21:26', 'নিউইয়র্কে বাংলাদেশি পরিবারের চার সদস্য করোনায় আক্রান্ত', 'যুক্তরাষ্ট্রের নিউইয়র্কের কুইন্সে বসবাসকারী এক বাংলাদেশি পরিবারের চার সদস্য করোনাভাইরাসে আক্রান্ত হয়েছেন। আক্রান্ত ব্যক্তিরা হাসপাতালে ভর্তি হয়েছেন।\r\n\r\nপরিবারের কর্তা (পুরুষ) প্রথমে আক্রান্ত হন। পরে তাঁর স্ত্রী আক্রান্ত হন। তাঁদের দুই সন্তানও পরে করোনায় আক্রান্ত হয়।\r\n\r\nরাজশাহী বিশ্ববিদ্যালয় অ্যালামনাই অ্যাসোসিয়েশন ইউএসএর এক নেতা বলেন, ‘আমরা সার্বক্ষণিক পরিবারটির খোঁজখবর রাখছি। কোনো কিছুর প্রয়োজন হলে তা সরবরাহ করার চেষ্টা করছি।’\r\nপ্রবাসী বাংলাদেশিদের উদ্দেশে এই নেতা বলেন, ‘আমাদের সামাজিক বৈশিষ্ট্য হচ্ছে—কারও বিপদে পাশে দাঁড়ানো। কিন্তু করোনাভাইরাস আমাদের বিপরীত স্রোতে নিয়ে যাচ্ছে। তার পরও আমাদের পরস্পরের পাশে থাকতে হবে। সামাজিক যোগাযোগের নতুন মাধ্যম সোশ্যাল মিডিয়ার মাধ্যমে আমরা পরস্পরের খোঁজ নেব, কাছে থাকব, আমাদের করণীয় সম্পর্কে মতবিনিময় করব।’\r\n\r\nনেতা বলেন, যাঁরা ট্যাক্সি বা উবার চালান, মালিকপক্ষের লোভনীয় অফার প্রত্যাখ্যান করে কিছুদিন বাসায় থাকুন। যাঁদের কাজে যেতেই হয়, সর্বোচ্চ সতর্কতা অবলম্বন করুন। আমাদের পরস্পরের পাশে থাকতে হবে।', 'notice/2', 37, 2, 1, '2020-03-20 09:21:26', '2020-05-08 01:48:26'),
(16, 1, 'Admin', 25, 'App User', '2020-03-20 16:16:46', 'বিশ্বে ১০০ কোটি শিশুর স্কুলে যাওয়া বন্ধ, দেশে ৩ কোটি ৬৭ লাখ', 'মহামারি আকারে করোনাভাইরাস ছড়িয়ে পড়ায় বিশ্বব্যাপী শিক্ষাব্যবস্থা বিপর্যস্ত হয়ে পড়েছে। বিশ্বের ১১০টি দেশের সব শিক্ষাপ্রতিষ্ঠান বন্ধ হয়ে গেছে। প্রায় ১০০ কোটি শিশু-কিশোর স্কুলে যাওয়া বন্ধ করে দিয়েছে। এর মধ্যে সবচেয়ে বেশি শিশু-কিশোর স্কুলে যাওয়া বন্ধ করে দিয়েছে চীনে। ওই তালিকায় চতুর্থ স্থানে রয়েছে বাংলাদেশের নাম। চীনে ২৩ কোটি ৩০ লাখ ও বাংলাদেশে ৩ কোটি ৬৭ লাখ শিশু স্কুলে যাচ্ছে না। ওই তালিকায় দ্বিতীয় ও তৃতীয় স্থানে রয়েছে ইন্দোনেশিয়া ও পাকিস্তানের নাম।\r\n\r\nগত বুধবার জাতিসংঘের দুর্যোগবিষয়ক ওয়েবসাইট রিলিফ ওয়েবে প্রকাশিত এক প্রতিবেদনে এই তথ্য উঠে এসেছে। তবে সংস্থাটি এ–সংক্রান্ত সব তথ্য সংগ্রহ করেছে জাতিসংঘ শিশু তহবিলের (ইউনিসেফ) একটি প্রতিবেদন থেকে। এই পরিস্থিতিতে ইউনিসেফ থেকে বিশ্বের শিশুদের শিক্ষা পরিস্থিতি নিয়ে দুশ্চিন্তায় পড়েছে। তারা গত বৃহস্পতিবার বিশ্বের ৭৩টি দেশের শিক্ষামন্ত্রীদের সঙ্গে বৈঠক করেছে। অনলাইন বা ডিজিটাল মাধ্যমকে ব্যবহার করে এসব শিশুর কীভাবে শিক্ষা কার্যক্রম চালিয়ে নেওয়া যায়, সে বিষয়ে শিক্ষামন্ত্রীদের মতামত জানতে চেয়েছে তারা।', 'publication/3', 38, 3, 1, '2020-03-20 10:16:46', '2020-05-11 10:04:15'),
(17, 1, 'Admin', 5, 'App User', '2020-03-20 16:16:46', 'বিশ্বে ১০০ কোটি শিশুর স্কুলে যাওয়া বন্ধ, দেশে ৩ কোটি ৬৭ লাখ', 'মহামারি আকারে করোনাভাইরাস ছড়িয়ে পড়ায় বিশ্বব্যাপী শিক্ষাব্যবস্থা বিপর্যস্ত হয়ে পড়েছে। বিশ্বের ১১০টি দেশের সব শিক্ষাপ্রতিষ্ঠান বন্ধ হয়ে গেছে। প্রায় ১০০ কোটি শিশু-কিশোর স্কুলে যাওয়া বন্ধ করে দিয়েছে। এর মধ্যে সবচেয়ে বেশি শিশু-কিশোর স্কুলে যাওয়া বন্ধ করে দিয়েছে চীনে। ওই তালিকায় চতুর্থ স্থানে রয়েছে বাংলাদেশের নাম। চীনে ২৩ কোটি ৩০ লাখ ও বাংলাদেশে ৩ কোটি ৬৭ লাখ শিশু স্কুলে যাচ্ছে না। ওই তালিকায় দ্বিতীয় ও তৃতীয় স্থানে রয়েছে ইন্দোনেশিয়া ও পাকিস্তানের নাম।\r\n\r\nগত বুধবার জাতিসংঘের দুর্যোগবিষয়ক ওয়েবসাইট রিলিফ ওয়েবে প্রকাশিত এক প্রতিবেদনে এই তথ্য উঠে এসেছে। তবে সংস্থাটি এ–সংক্রান্ত সব তথ্য সংগ্রহ করেছে জাতিসংঘ শিশু তহবিলের (ইউনিসেফ) একটি প্রতিবেদন থেকে। এই পরিস্থিতিতে ইউনিসেফ থেকে বিশ্বের শিশুদের শিক্ষা পরিস্থিতি নিয়ে দুশ্চিন্তায় পড়েছে। তারা গত বৃহস্পতিবার বিশ্বের ৭৩টি দেশের শিক্ষামন্ত্রীদের সঙ্গে বৈঠক করেছে। অনলাইন বা ডিজিটাল মাধ্যমকে ব্যবহার করে এসব শিশুর কীভাবে শিক্ষা কার্যক্রম চালিয়ে নেওয়া যায়, সে বিষয়ে শিক্ষামন্ত্রীদের মতামত জানতে চেয়েছে তারা।', 'publication/3', 38, 3, 0, '2020-03-20 10:16:46', '2020-05-06 10:16:35'),
(18, 1, 'Admin', 15, 'App User', '2020-03-20 16:16:46', 'বিশ্বে ১০০ কোটি শিশুর স্কুলে যাওয়া বন্ধ, দেশে ৩ কোটি ৬৭ লাখ', 'মহামারি আকারে করোনাভাইরাস ছড়িয়ে পড়ায় বিশ্বব্যাপী শিক্ষাব্যবস্থা বিপর্যস্ত হয়ে পড়েছে। বিশ্বের ১১০টি দেশের সব শিক্ষাপ্রতিষ্ঠান বন্ধ হয়ে গেছে। প্রায় ১০০ কোটি শিশু-কিশোর স্কুলে যাওয়া বন্ধ করে দিয়েছে। এর মধ্যে সবচেয়ে বেশি শিশু-কিশোর স্কুলে যাওয়া বন্ধ করে দিয়েছে চীনে। ওই তালিকায় চতুর্থ স্থানে রয়েছে বাংলাদেশের নাম। চীনে ২৩ কোটি ৩০ লাখ ও বাংলাদেশে ৩ কোটি ৬৭ লাখ শিশু স্কুলে যাচ্ছে না। ওই তালিকায় দ্বিতীয় ও তৃতীয় স্থানে রয়েছে ইন্দোনেশিয়া ও পাকিস্তানের নাম।\r\n\r\nগত বুধবার জাতিসংঘের দুর্যোগবিষয়ক ওয়েবসাইট রিলিফ ওয়েবে প্রকাশিত এক প্রতিবেদনে এই তথ্য উঠে এসেছে। তবে সংস্থাটি এ–সংক্রান্ত সব তথ্য সংগ্রহ করেছে জাতিসংঘ শিশু তহবিলের (ইউনিসেফ) একটি প্রতিবেদন থেকে। এই পরিস্থিতিতে ইউনিসেফ থেকে বিশ্বের শিশুদের শিক্ষা পরিস্থিতি নিয়ে দুশ্চিন্তায় পড়েছে। তারা গত বৃহস্পতিবার বিশ্বের ৭৩টি দেশের শিক্ষামন্ত্রীদের সঙ্গে বৈঠক করেছে। অনলাইন বা ডিজিটাল মাধ্যমকে ব্যবহার করে এসব শিশুর কীভাবে শিক্ষা কার্যক্রম চালিয়ে নেওয়া যায়, সে বিষয়ে শিক্ষামন্ত্রীদের মতামত জানতে চেয়েছে তারা।', 'publication/3', 38, 3, 0, '2020-03-20 10:16:46', '2020-05-06 10:16:38'),
(19, 1, 'Admin', 16, 'App User', '2020-03-20 16:16:46', 'বিশ্বে ১০০ কোটি শিশুর স্কুলে যাওয়া বন্ধ, দেশে ৩ কোটি ৬৭ লাখ', 'মহামারি আকারে করোনাভাইরাস ছড়িয়ে পড়ায় বিশ্বব্যাপী শিক্ষাব্যবস্থা বিপর্যস্ত হয়ে পড়েছে। বিশ্বের ১১০টি দেশের সব শিক্ষাপ্রতিষ্ঠান বন্ধ হয়ে গেছে। প্রায় ১০০ কোটি শিশু-কিশোর স্কুলে যাওয়া বন্ধ করে দিয়েছে। এর মধ্যে সবচেয়ে বেশি শিশু-কিশোর স্কুলে যাওয়া বন্ধ করে দিয়েছে চীনে। ওই তালিকায় চতুর্থ স্থানে রয়েছে বাংলাদেশের নাম। চীনে ২৩ কোটি ৩০ লাখ ও বাংলাদেশে ৩ কোটি ৬৭ লাখ শিশু স্কুলে যাচ্ছে না। ওই তালিকায় দ্বিতীয় ও তৃতীয় স্থানে রয়েছে ইন্দোনেশিয়া ও পাকিস্তানের নাম।\r\n\r\nগত বুধবার জাতিসংঘের দুর্যোগবিষয়ক ওয়েবসাইট রিলিফ ওয়েবে প্রকাশিত এক প্রতিবেদনে এই তথ্য উঠে এসেছে। তবে সংস্থাটি এ–সংক্রান্ত সব তথ্য সংগ্রহ করেছে জাতিসংঘ শিশু তহবিলের (ইউনিসেফ) একটি প্রতিবেদন থেকে। এই পরিস্থিতিতে ইউনিসেফ থেকে বিশ্বের শিশুদের শিক্ষা পরিস্থিতি নিয়ে দুশ্চিন্তায় পড়েছে। তারা গত বৃহস্পতিবার বিশ্বের ৭৩টি দেশের শিক্ষামন্ত্রীদের সঙ্গে বৈঠক করেছে। অনলাইন বা ডিজিটাল মাধ্যমকে ব্যবহার করে এসব শিশুর কীভাবে শিক্ষা কার্যক্রম চালিয়ে নেওয়া যায়, সে বিষয়ে শিক্ষামন্ত্রীদের মতামত জানতে চেয়েছে তারা।', 'publication/3', 38, 3, 0, '2020-03-20 10:16:46', '2020-05-06 10:16:37'),
(23, 5, 'App User', NULL, 'Admin', '2020-04-10 21:54:29', 'Sent a message', NULL, NULL, NULL, NULL, 1, '2020-04-10 21:54:29', '2020-05-13 05:47:30'),
(24, 1, 'Admin', 25, 'App User', '2020-05-02 13:47:47', 'Registration confirm', 'Your Registration has been confirmed ', NULL, NULL, NULL, 1, '2020-05-02 13:47:47', '2020-05-08 01:16:10'),
(25, 25, 'App User', NULL, 'Admin', '2020-05-05 11:15:13', 'New Registration Request', 'Prosanta ask for registration', NULL, NULL, NULL, 1, '2020-05-05 11:15:13', '2020-05-13 06:51:49'),
(26, 25, 'App User', NULL, 'Admin', '2020-05-05 11:18:48', 'New Registration Request', 'Prosanta ask for registration', NULL, NULL, NULL, 1, '2020-05-05 11:18:48', '2020-05-13 05:46:11'),
(27, 25, 'App User', NULL, 'Admin', '2020-05-05 11:23:45', 'New Registration Request', 'Prosanta ask for registration', NULL, NULL, NULL, 1, '2020-05-05 11:23:45', '2020-05-13 05:45:07'),
(28, 25, 'App User', NULL, 'Admin', '2020-05-05 11:25:23', 'New Registration Request', 'Prosanta ask for registration', NULL, NULL, NULL, 1, '2020-05-05 11:25:23', '2020-05-13 05:44:56'),
(29, 1, 'Admin', 25, 'App User', '2020-05-05 12:04:59', 'new course', 'new course has been published', NULL, NULL, NULL, 1, '2020-05-05 12:04:59', '2020-05-08 01:09:08'),
(30, 1, 'Admin', 21, 'App User', '2020-05-05 17:57:55', 'BILS Initiate Bangladesh Labour Act 2006 – A complete Overview of Employee Rights & Labour Law in Bangladesh Course', NULL, 'course/2', 7, 2, 0, '2020-05-05 11:57:55', '2020-05-08 07:26:02'),
(31, 1, 'Admin', 15, 'App User', '2020-05-05 17:57:55', 'BILS Initiate Bangladesh Labour Act 2006 – A complete Overview of Employee Rights & Labour Law in Bangladesh Course', NULL, 'course/2', 7, 2, 0, '2020-05-05 11:57:55', '2020-05-08 07:26:03'),
(32, 1, 'Admin', 16, 'App User', '2020-05-05 17:57:55', 'BILS Initiate Bangladesh Labour Act 2006 – A complete Overview of Employee Rights & Labour Law in Bangladesh Course', NULL, 'course/2', 7, 2, 0, '2020-05-05 11:57:55', '2020-05-08 07:26:01'),
(33, 1, 'Admin', 25, 'App User', '2020-05-05 17:57:55', 'BILS Initiate Bangladesh Labour Act 2006 – A complete Overview of Employee Rights & Labour Law in Bangladesh Course', NULL, 'course/2', 7, 2, 1, '2020-05-05 11:57:55', '2020-05-08 07:25:58'),
(34, 1, 'Admin', 23, 'App User', '2020-05-05 17:57:55', 'BILS Initiate Bangladesh Labour Act 2006 – A complete Overview of Employee Rights & Labour Law in Bangladesh Course', NULL, 'course/2', 7, 2, 0, '2020-05-05 11:57:55', '2020-05-08 07:26:00'),
(35, 1, 'Admin', 14, 'App User', '2020-05-05 17:57:55', 'BILS Initiate Bangladesh Labour Act 2006 – A complete Overview of Employee Rights & Labour Law in Bangladesh Course', NULL, 'course/2', 7, 2, 0, '2020-05-05 11:57:55', '2020-05-08 07:25:56'),
(36, 1, 'Admin', 20, 'App User', '2020-05-05 17:57:55', 'BILS Initiate Bangladesh Labour Act 2006 – A complete Overview of Employee Rights & Labour Law in Bangladesh Course', NULL, 'course/2', 7, 2, 0, '2020-05-05 11:57:55', '2020-05-08 07:25:53'),
(37, 1, 'Admin', 5, 'App User', '2020-05-05 17:57:55', 'BILS Initiate Bangladesh Labour Act 2006 – A complete Overview of Employee Rights & Labour Law in Bangladesh Course', NULL, 'course/2', 7, 2, 0, '2020-05-05 11:57:55', '2020-05-08 07:25:55'),
(38, 1, 'Admin', 44, 'App User', '2020-05-05 17:57:55', 'BILS Initiate Bangladesh Labour Act 2006 – A complete Overview of Employee Rights & Labour Law in Bangladesh Course', NULL, 'course/2', 7, 2, 0, '2020-05-05 11:57:55', '2020-05-08 07:25:52'),
(39, 1, 'Admin', 5, 'App User', '2020-05-08 07:23:53', 'করোনা আক্রান্তের সংস্পর্শে আসা মানুষের ওপর নজরদারি জরুরি', '<p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনা সংক্রমণের সন্দেহভাজন মানুষ খুঁজে বের করার কাজটি দুর্বল হয়ে পড়েছে। করোনা আক্রান্ত মানুষের সংস্পর্শে আসা ব্যক্তি চিহ্নিত করা এবং তাঁদের নজরদারির বিষয়টি নিশ্চিত না হলে সংক্রমণ বেড়ে যাওয়ার আশঙ্কা থাকে। রাজধানীর বিভিন্ন এলাকা ও কিছু জেলায় খোঁজ নিয়ে জানা গেছে, কাজটি ঠিকমতো হচ্ছে না।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">বিশ্ব স্বাস্থ্য সংস্থা কোভিড–১৯ আক্রান্ত বা সন্দেহভাজন রোগীর সংস্পর্শে আসা ব্যক্তিদের খুঁজে বের করার কাজটিকে বলছে ‘কন্ট্যাক্ট ট্রেসিং’। অর্থাৎ আক্রান্ত বা সন্দেহভাজন ব্যক্তিকে অনুসরণ করতে হবে, খুঁজে বের করতে হবে, তার ওপর নজরদারি করতে হবে। উপসর্গ দেখা দিলে তাকে পরীক্ষার আওতায় নিতে হবে। রোগ ধরা পড়লে চিকিৎসা দিতে হবে।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">কন্ট্যাক্ট ট্রেসিংয়ের কাজটি শুরু থেকে করে আসছিল সরকারের রোগতত্ত্ব, রোগনিয়ন্ত্রণ ও গবেষণা প্রতিষ্ঠান (আইইডিসিআর)। গত মার্চে মাদারীপুর জেলার শিবচর এলাকায় ৯ জন করোনা রোগী শনাক্ত হয়েছিল। আইইডিসিআরের তিনজন স্বাস্থ্যকর্মী ২০ ও ২১ মার্চ ওই ৯ জনের মধ্যে ছয়জনের কন্ট্যাক্ট ট্রেসিং করেছিলেন। তাঁদের সংস্পর্শে আসা ৩৫০ জনকে চিহ্নিত করা হয়েছিল। তাঁদের মধ্যে ১০৭ জনকে কোয়ারেন্টিনে (সঙ্গনিরোধ) রাখা হয়। বাকি ২৪৩ জনের কোনো হদিস পাওয়া যায়নি। এরপর পরিস্থিতি নিয়ন্ত্রণে আনতে এলাকা লকডাউন (অবরুদ্ধ) করা হয়। জেলা প্রশাসন ও পুলিশ প্রশাসন এ কাজে স্বাস্থ্য বিভাগকে সহায়তা করেছিল। বর্তমানে শিবচরে ২১ জন রোগী আছে।</p>', 'publication/4', 38, 4, 0, '2020-05-08 01:23:53', '2020-05-08 07:25:46'),
(40, 1, 'Admin', 14, 'App User', '2020-05-08 07:23:53', 'করোনা আক্রান্তের সংস্পর্শে আসা মানুষের ওপর নজরদারি জরুরি', '<p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনা সংক্রমণের সন্দেহভাজন মানুষ খুঁজে বের করার কাজটি দুর্বল হয়ে পড়েছে। করোনা আক্রান্ত মানুষের সংস্পর্শে আসা ব্যক্তি চিহ্নিত করা এবং তাঁদের নজরদারির বিষয়টি নিশ্চিত না হলে সংক্রমণ বেড়ে যাওয়ার আশঙ্কা থাকে। রাজধানীর বিভিন্ন এলাকা ও কিছু জেলায় খোঁজ নিয়ে জানা গেছে, কাজটি ঠিকমতো হচ্ছে না।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">বিশ্ব স্বাস্থ্য সংস্থা কোভিড–১৯ আক্রান্ত বা সন্দেহভাজন রোগীর সংস্পর্শে আসা ব্যক্তিদের খুঁজে বের করার কাজটিকে বলছে ‘কন্ট্যাক্ট ট্রেসিং’। অর্থাৎ আক্রান্ত বা সন্দেহভাজন ব্যক্তিকে অনুসরণ করতে হবে, খুঁজে বের করতে হবে, তার ওপর নজরদারি করতে হবে। উপসর্গ দেখা দিলে তাকে পরীক্ষার আওতায় নিতে হবে। রোগ ধরা পড়লে চিকিৎসা দিতে হবে।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">কন্ট্যাক্ট ট্রেসিংয়ের কাজটি শুরু থেকে করে আসছিল সরকারের রোগতত্ত্ব, রোগনিয়ন্ত্রণ ও গবেষণা প্রতিষ্ঠান (আইইডিসিআর)। গত মার্চে মাদারীপুর জেলার শিবচর এলাকায় ৯ জন করোনা রোগী শনাক্ত হয়েছিল। আইইডিসিআরের তিনজন স্বাস্থ্যকর্মী ২০ ও ২১ মার্চ ওই ৯ জনের মধ্যে ছয়জনের কন্ট্যাক্ট ট্রেসিং করেছিলেন। তাঁদের সংস্পর্শে আসা ৩৫০ জনকে চিহ্নিত করা হয়েছিল। তাঁদের মধ্যে ১০৭ জনকে কোয়ারেন্টিনে (সঙ্গনিরোধ) রাখা হয়। বাকি ২৪৩ জনের কোনো হদিস পাওয়া যায়নি। এরপর পরিস্থিতি নিয়ন্ত্রণে আনতে এলাকা লকডাউন (অবরুদ্ধ) করা হয়। জেলা প্রশাসন ও পুলিশ প্রশাসন এ কাজে স্বাস্থ্য বিভাগকে সহায়তা করেছিল। বর্তমানে শিবচরে ২১ জন রোগী আছে।</p>', 'publication/4', 38, 4, 0, '2020-05-08 01:23:53', '2020-05-08 07:25:38'),
(41, 1, 'Admin', 15, 'App User', '2020-05-08 07:23:53', 'করোনা আক্রান্তের সংস্পর্শে আসা মানুষের ওপর নজরদারি জরুরি', '<p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনা সংক্রমণের সন্দেহভাজন মানুষ খুঁজে বের করার কাজটি দুর্বল হয়ে পড়েছে। করোনা আক্রান্ত মানুষের সংস্পর্শে আসা ব্যক্তি চিহ্নিত করা এবং তাঁদের নজরদারির বিষয়টি নিশ্চিত না হলে সংক্রমণ বেড়ে যাওয়ার আশঙ্কা থাকে। রাজধানীর বিভিন্ন এলাকা ও কিছু জেলায় খোঁজ নিয়ে জানা গেছে, কাজটি ঠিকমতো হচ্ছে না।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">বিশ্ব স্বাস্থ্য সংস্থা কোভিড–১৯ আক্রান্ত বা সন্দেহভাজন রোগীর সংস্পর্শে আসা ব্যক্তিদের খুঁজে বের করার কাজটিকে বলছে ‘কন্ট্যাক্ট ট্রেসিং’। অর্থাৎ আক্রান্ত বা সন্দেহভাজন ব্যক্তিকে অনুসরণ করতে হবে, খুঁজে বের করতে হবে, তার ওপর নজরদারি করতে হবে। উপসর্গ দেখা দিলে তাকে পরীক্ষার আওতায় নিতে হবে। রোগ ধরা পড়লে চিকিৎসা দিতে হবে।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">কন্ট্যাক্ট ট্রেসিংয়ের কাজটি শুরু থেকে করে আসছিল সরকারের রোগতত্ত্ব, রোগনিয়ন্ত্রণ ও গবেষণা প্রতিষ্ঠান (আইইডিসিআর)। গত মার্চে মাদারীপুর জেলার শিবচর এলাকায় ৯ জন করোনা রোগী শনাক্ত হয়েছিল। আইইডিসিআরের তিনজন স্বাস্থ্যকর্মী ২০ ও ২১ মার্চ ওই ৯ জনের মধ্যে ছয়জনের কন্ট্যাক্ট ট্রেসিং করেছিলেন। তাঁদের সংস্পর্শে আসা ৩৫০ জনকে চিহ্নিত করা হয়েছিল। তাঁদের মধ্যে ১০৭ জনকে কোয়ারেন্টিনে (সঙ্গনিরোধ) রাখা হয়। বাকি ২৪৩ জনের কোনো হদিস পাওয়া যায়নি। এরপর পরিস্থিতি নিয়ন্ত্রণে আনতে এলাকা লকডাউন (অবরুদ্ধ) করা হয়। জেলা প্রশাসন ও পুলিশ প্রশাসন এ কাজে স্বাস্থ্য বিভাগকে সহায়তা করেছিল। বর্তমানে শিবচরে ২১ জন রোগী আছে।</p>', 'publication/4', 38, 4, 0, '2020-05-08 01:23:53', '2020-05-08 07:25:40'),
(42, 1, 'Admin', 16, 'App User', '2020-05-08 07:23:53', 'করোনা আক্রান্তের সংস্পর্শে আসা মানুষের ওপর নজরদারি জরুরি', '<p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনা সংক্রমণের সন্দেহভাজন মানুষ খুঁজে বের করার কাজটি দুর্বল হয়ে পড়েছে। করোনা আক্রান্ত মানুষের সংস্পর্শে আসা ব্যক্তি চিহ্নিত করা এবং তাঁদের নজরদারির বিষয়টি নিশ্চিত না হলে সংক্রমণ বেড়ে যাওয়ার আশঙ্কা থাকে। রাজধানীর বিভিন্ন এলাকা ও কিছু জেলায় খোঁজ নিয়ে জানা গেছে, কাজটি ঠিকমতো হচ্ছে না।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">বিশ্ব স্বাস্থ্য সংস্থা কোভিড–১৯ আক্রান্ত বা সন্দেহভাজন রোগীর সংস্পর্শে আসা ব্যক্তিদের খুঁজে বের করার কাজটিকে বলছে ‘কন্ট্যাক্ট ট্রেসিং’। অর্থাৎ আক্রান্ত বা সন্দেহভাজন ব্যক্তিকে অনুসরণ করতে হবে, খুঁজে বের করতে হবে, তার ওপর নজরদারি করতে হবে। উপসর্গ দেখা দিলে তাকে পরীক্ষার আওতায় নিতে হবে। রোগ ধরা পড়লে চিকিৎসা দিতে হবে।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">কন্ট্যাক্ট ট্রেসিংয়ের কাজটি শুরু থেকে করে আসছিল সরকারের রোগতত্ত্ব, রোগনিয়ন্ত্রণ ও গবেষণা প্রতিষ্ঠান (আইইডিসিআর)। গত মার্চে মাদারীপুর জেলার শিবচর এলাকায় ৯ জন করোনা রোগী শনাক্ত হয়েছিল। আইইডিসিআরের তিনজন স্বাস্থ্যকর্মী ২০ ও ২১ মার্চ ওই ৯ জনের মধ্যে ছয়জনের কন্ট্যাক্ট ট্রেসিং করেছিলেন। তাঁদের সংস্পর্শে আসা ৩৫০ জনকে চিহ্নিত করা হয়েছিল। তাঁদের মধ্যে ১০৭ জনকে কোয়ারেন্টিনে (সঙ্গনিরোধ) রাখা হয়। বাকি ২৪৩ জনের কোনো হদিস পাওয়া যায়নি। এরপর পরিস্থিতি নিয়ন্ত্রণে আনতে এলাকা লকডাউন (অবরুদ্ধ) করা হয়। জেলা প্রশাসন ও পুলিশ প্রশাসন এ কাজে স্বাস্থ্য বিভাগকে সহায়তা করেছিল। বর্তমানে শিবচরে ২১ জন রোগী আছে।</p>', 'publication/4', 38, 4, 0, '2020-05-08 01:23:53', '2020-05-08 07:25:41'),
(43, 1, 'Admin', 20, 'App User', '2020-05-08 07:23:53', 'করোনা আক্রান্তের সংস্পর্শে আসা মানুষের ওপর নজরদারি জরুরি', '<p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনা সংক্রমণের সন্দেহভাজন মানুষ খুঁজে বের করার কাজটি দুর্বল হয়ে পড়েছে। করোনা আক্রান্ত মানুষের সংস্পর্শে আসা ব্যক্তি চিহ্নিত করা এবং তাঁদের নজরদারির বিষয়টি নিশ্চিত না হলে সংক্রমণ বেড়ে যাওয়ার আশঙ্কা থাকে। রাজধানীর বিভিন্ন এলাকা ও কিছু জেলায় খোঁজ নিয়ে জানা গেছে, কাজটি ঠিকমতো হচ্ছে না।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">বিশ্ব স্বাস্থ্য সংস্থা কোভিড–১৯ আক্রান্ত বা সন্দেহভাজন রোগীর সংস্পর্শে আসা ব্যক্তিদের খুঁজে বের করার কাজটিকে বলছে ‘কন্ট্যাক্ট ট্রেসিং’। অর্থাৎ আক্রান্ত বা সন্দেহভাজন ব্যক্তিকে অনুসরণ করতে হবে, খুঁজে বের করতে হবে, তার ওপর নজরদারি করতে হবে। উপসর্গ দেখা দিলে তাকে পরীক্ষার আওতায় নিতে হবে। রোগ ধরা পড়লে চিকিৎসা দিতে হবে।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">কন্ট্যাক্ট ট্রেসিংয়ের কাজটি শুরু থেকে করে আসছিল সরকারের রোগতত্ত্ব, রোগনিয়ন্ত্রণ ও গবেষণা প্রতিষ্ঠান (আইইডিসিআর)। গত মার্চে মাদারীপুর জেলার শিবচর এলাকায় ৯ জন করোনা রোগী শনাক্ত হয়েছিল। আইইডিসিআরের তিনজন স্বাস্থ্যকর্মী ২০ ও ২১ মার্চ ওই ৯ জনের মধ্যে ছয়জনের কন্ট্যাক্ট ট্রেসিং করেছিলেন। তাঁদের সংস্পর্শে আসা ৩৫০ জনকে চিহ্নিত করা হয়েছিল। তাঁদের মধ্যে ১০৭ জনকে কোয়ারেন্টিনে (সঙ্গনিরোধ) রাখা হয়। বাকি ২৪৩ জনের কোনো হদিস পাওয়া যায়নি। এরপর পরিস্থিতি নিয়ন্ত্রণে আনতে এলাকা লকডাউন (অবরুদ্ধ) করা হয়। জেলা প্রশাসন ও পুলিশ প্রশাসন এ কাজে স্বাস্থ্য বিভাগকে সহায়তা করেছিল। বর্তমানে শিবচরে ২১ জন রোগী আছে।</p>', 'publication/4', 38, 4, 0, '2020-05-08 01:23:53', '2020-05-08 07:25:42'),
(44, 1, 'Admin', 21, 'App User', '2020-05-08 07:23:53', 'করোনা আক্রান্তের সংস্পর্শে আসা মানুষের ওপর নজরদারি জরুরি', '<p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনা সংক্রমণের সন্দেহভাজন মানুষ খুঁজে বের করার কাজটি দুর্বল হয়ে পড়েছে। করোনা আক্রান্ত মানুষের সংস্পর্শে আসা ব্যক্তি চিহ্নিত করা এবং তাঁদের নজরদারির বিষয়টি নিশ্চিত না হলে সংক্রমণ বেড়ে যাওয়ার আশঙ্কা থাকে। রাজধানীর বিভিন্ন এলাকা ও কিছু জেলায় খোঁজ নিয়ে জানা গেছে, কাজটি ঠিকমতো হচ্ছে না।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">বিশ্ব স্বাস্থ্য সংস্থা কোভিড–১৯ আক্রান্ত বা সন্দেহভাজন রোগীর সংস্পর্শে আসা ব্যক্তিদের খুঁজে বের করার কাজটিকে বলছে ‘কন্ট্যাক্ট ট্রেসিং’। অর্থাৎ আক্রান্ত বা সন্দেহভাজন ব্যক্তিকে অনুসরণ করতে হবে, খুঁজে বের করতে হবে, তার ওপর নজরদারি করতে হবে। উপসর্গ দেখা দিলে তাকে পরীক্ষার আওতায় নিতে হবে। রোগ ধরা পড়লে চিকিৎসা দিতে হবে।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">কন্ট্যাক্ট ট্রেসিংয়ের কাজটি শুরু থেকে করে আসছিল সরকারের রোগতত্ত্ব, রোগনিয়ন্ত্রণ ও গবেষণা প্রতিষ্ঠান (আইইডিসিআর)। গত মার্চে মাদারীপুর জেলার শিবচর এলাকায় ৯ জন করোনা রোগী শনাক্ত হয়েছিল। আইইডিসিআরের তিনজন স্বাস্থ্যকর্মী ২০ ও ২১ মার্চ ওই ৯ জনের মধ্যে ছয়জনের কন্ট্যাক্ট ট্রেসিং করেছিলেন। তাঁদের সংস্পর্শে আসা ৩৫০ জনকে চিহ্নিত করা হয়েছিল। তাঁদের মধ্যে ১০৭ জনকে কোয়ারেন্টিনে (সঙ্গনিরোধ) রাখা হয়। বাকি ২৪৩ জনের কোনো হদিস পাওয়া যায়নি। এরপর পরিস্থিতি নিয়ন্ত্রণে আনতে এলাকা লকডাউন (অবরুদ্ধ) করা হয়। জেলা প্রশাসন ও পুলিশ প্রশাসন এ কাজে স্বাস্থ্য বিভাগকে সহায়তা করেছিল। বর্তমানে শিবচরে ২১ জন রোগী আছে।</p>', 'publication/4', 38, 4, 0, '2020-05-08 01:23:53', '2020-05-08 07:25:34'),
(45, 1, 'Admin', 23, 'App User', '2020-05-08 07:23:53', 'করোনা আক্রান্তের সংস্পর্শে আসা মানুষের ওপর নজরদারি জরুরি', '<p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনা সংক্রমণের সন্দেহভাজন মানুষ খুঁজে বের করার কাজটি দুর্বল হয়ে পড়েছে। করোনা আক্রান্ত মানুষের সংস্পর্শে আসা ব্যক্তি চিহ্নিত করা এবং তাঁদের নজরদারির বিষয়টি নিশ্চিত না হলে সংক্রমণ বেড়ে যাওয়ার আশঙ্কা থাকে। রাজধানীর বিভিন্ন এলাকা ও কিছু জেলায় খোঁজ নিয়ে জানা গেছে, কাজটি ঠিকমতো হচ্ছে না।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">বিশ্ব স্বাস্থ্য সংস্থা কোভিড–১৯ আক্রান্ত বা সন্দেহভাজন রোগীর সংস্পর্শে আসা ব্যক্তিদের খুঁজে বের করার কাজটিকে বলছে ‘কন্ট্যাক্ট ট্রেসিং’। অর্থাৎ আক্রান্ত বা সন্দেহভাজন ব্যক্তিকে অনুসরণ করতে হবে, খুঁজে বের করতে হবে, তার ওপর নজরদারি করতে হবে। উপসর্গ দেখা দিলে তাকে পরীক্ষার আওতায় নিতে হবে। রোগ ধরা পড়লে চিকিৎসা দিতে হবে।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">কন্ট্যাক্ট ট্রেসিংয়ের কাজটি শুরু থেকে করে আসছিল সরকারের রোগতত্ত্ব, রোগনিয়ন্ত্রণ ও গবেষণা প্রতিষ্ঠান (আইইডিসিআর)। গত মার্চে মাদারীপুর জেলার শিবচর এলাকায় ৯ জন করোনা রোগী শনাক্ত হয়েছিল। আইইডিসিআরের তিনজন স্বাস্থ্যকর্মী ২০ ও ২১ মার্চ ওই ৯ জনের মধ্যে ছয়জনের কন্ট্যাক্ট ট্রেসিং করেছিলেন। তাঁদের সংস্পর্শে আসা ৩৫০ জনকে চিহ্নিত করা হয়েছিল। তাঁদের মধ্যে ১০৭ জনকে কোয়ারেন্টিনে (সঙ্গনিরোধ) রাখা হয়। বাকি ২৪৩ জনের কোনো হদিস পাওয়া যায়নি। এরপর পরিস্থিতি নিয়ন্ত্রণে আনতে এলাকা লকডাউন (অবরুদ্ধ) করা হয়। জেলা প্রশাসন ও পুলিশ প্রশাসন এ কাজে স্বাস্থ্য বিভাগকে সহায়তা করেছিল। বর্তমানে শিবচরে ২১ জন রোগী আছে।</p>', 'publication/4', 38, 4, 0, '2020-05-08 01:23:53', '2020-05-08 07:25:36'),
(47, 1, 'Admin', 44, 'App User', '2020-05-08 07:23:53', 'করোনা আক্রান্তের সংস্পর্শে আসা মানুষের ওপর নজরদারি জরুরি', '<p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনা সংক্রমণের সন্দেহভাজন মানুষ খুঁজে বের করার কাজটি দুর্বল হয়ে পড়েছে। করোনা আক্রান্ত মানুষের সংস্পর্শে আসা ব্যক্তি চিহ্নিত করা এবং তাঁদের নজরদারির বিষয়টি নিশ্চিত না হলে সংক্রমণ বেড়ে যাওয়ার আশঙ্কা থাকে। রাজধানীর বিভিন্ন এলাকা ও কিছু জেলায় খোঁজ নিয়ে জানা গেছে, কাজটি ঠিকমতো হচ্ছে না।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">বিশ্ব স্বাস্থ্য সংস্থা কোভিড–১৯ আক্রান্ত বা সন্দেহভাজন রোগীর সংস্পর্শে আসা ব্যক্তিদের খুঁজে বের করার কাজটিকে বলছে ‘কন্ট্যাক্ট ট্রেসিং’। অর্থাৎ আক্রান্ত বা সন্দেহভাজন ব্যক্তিকে অনুসরণ করতে হবে, খুঁজে বের করতে হবে, তার ওপর নজরদারি করতে হবে। উপসর্গ দেখা দিলে তাকে পরীক্ষার আওতায় নিতে হবে। রোগ ধরা পড়লে চিকিৎসা দিতে হবে।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">কন্ট্যাক্ট ট্রেসিংয়ের কাজটি শুরু থেকে করে আসছিল সরকারের রোগতত্ত্ব, রোগনিয়ন্ত্রণ ও গবেষণা প্রতিষ্ঠান (আইইডিসিআর)। গত মার্চে মাদারীপুর জেলার শিবচর এলাকায় ৯ জন করোনা রোগী শনাক্ত হয়েছিল। আইইডিসিআরের তিনজন স্বাস্থ্যকর্মী ২০ ও ২১ মার্চ ওই ৯ জনের মধ্যে ছয়জনের কন্ট্যাক্ট ট্রেসিং করেছিলেন। তাঁদের সংস্পর্শে আসা ৩৫০ জনকে চিহ্নিত করা হয়েছিল। তাঁদের মধ্যে ১০৭ জনকে কোয়ারেন্টিনে (সঙ্গনিরোধ) রাখা হয়। বাকি ২৪৩ জনের কোনো হদিস পাওয়া যায়নি। এরপর পরিস্থিতি নিয়ন্ত্রণে আনতে এলাকা লকডাউন (অবরুদ্ধ) করা হয়। জেলা প্রশাসন ও পুলিশ প্রশাসন এ কাজে স্বাস্থ্য বিভাগকে সহায়তা করেছিল। বর্তমানে শিবচরে ২১ জন রোগী আছে।</p>', 'publication/4', 38, 4, 0, '2020-05-08 01:23:53', '2020-05-08 07:25:33'),
(48, 1, 'Admin', 5, 'App User', '2020-05-08 07:27:45', 'হাতীবান্ধায় প্রথম করোনা রোগী শনাক্ত', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।’</p>', 'publication/5', 38, 5, 0, '2020-05-08 01:27:45', '2020-05-08 01:27:45'),
(49, 1, 'Admin', 14, 'App User', '2020-05-08 07:27:45', 'হাতীবান্ধায় প্রথম করোনা রোগী শনাক্ত', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।’</p>', 'publication/5', 38, 5, 0, '2020-05-08 01:27:45', '2020-05-08 01:27:45'),
(50, 1, 'Admin', 15, 'App User', '2020-05-08 07:27:45', 'হাতীবান্ধায় প্রথম করোনা রোগী শনাক্ত', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।’</p>', 'publication/5', 38, 5, 0, '2020-05-08 01:27:45', '2020-05-08 01:27:45'),
(51, 1, 'Admin', 16, 'App User', '2020-05-08 07:27:45', 'হাতীবান্ধায় প্রথম করোনা রোগী শনাক্ত', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।’</p>', 'publication/5', 38, 5, 0, '2020-05-08 01:27:45', '2020-05-08 01:27:45'),
(52, 1, 'Admin', 20, 'App User', '2020-05-08 07:27:45', 'হাতীবান্ধায় প্রথম করোনা রোগী শনাক্ত', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।’</p>', 'publication/5', 38, 5, 0, '2020-05-08 01:27:45', '2020-05-08 01:27:45'),
(53, 1, 'Admin', 21, 'App User', '2020-05-08 07:27:45', 'হাতীবান্ধায় প্রথম করোনা রোগী শনাক্ত', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।’</p>', 'publication/5', 38, 5, 0, '2020-05-08 01:27:45', '2020-05-08 01:27:45'),
(54, 1, 'Admin', 23, 'App User', '2020-05-08 07:27:45', 'হাতীবান্ধায় প্রথম করোনা রোগী শনাক্ত', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।’</p>', 'publication/5', 38, 5, 0, '2020-05-08 01:27:45', '2020-05-08 01:27:45');
INSERT INTO `notifications` (`id`, `from_id`, `from_user_type`, `to_id`, `to_user_type`, `date_time`, `notification_title`, `message`, `view_url`, `module_id`, `module_reference_id`, `status`, `created_at`, `updated_at`) VALUES
(55, 1, 'Admin', 25, 'App User', '2020-05-08 07:27:45', 'হাতীবান্ধায় প্রথম করোনা রোগী শনাক্ত', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।’</p>', 'publication/5', 38, 5, 1, '2020-05-08 01:27:45', '2020-05-11 10:05:26'),
(56, 1, 'Admin', 44, 'App User', '2020-05-08 07:27:45', 'হাতীবান্ধায় প্রথম করোনা রোগী শনাক্ত', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: rgb(240, 240, 237);\">এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।’</p>', 'publication/5', 38, 5, 0, '2020-05-08 01:27:45', '2020-05-08 01:27:45'),
(57, 1, 'Admin', 5, 'App User', '2020-05-08 07:45:02', 'লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।&nbsp; এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।</p>', 'notice/4', 37, 4, 0, '2020-05-08 01:45:02', '2020-05-08 01:45:02'),
(58, 1, 'Admin', 14, 'App User', '2020-05-08 07:45:02', 'লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।&nbsp; এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।</p>', 'notice/4', 37, 4, 0, '2020-05-08 01:45:02', '2020-05-08 01:45:02'),
(59, 1, 'Admin', 15, 'App User', '2020-05-08 07:45:02', 'লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।&nbsp; এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।</p>', 'notice/4', 37, 4, 0, '2020-05-08 01:45:02', '2020-05-08 01:45:02'),
(60, 1, 'Admin', 16, 'App User', '2020-05-08 07:45:02', 'লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।&nbsp; এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।</p>', 'notice/4', 37, 4, 0, '2020-05-08 01:45:02', '2020-05-08 01:45:02'),
(61, 1, 'Admin', 20, 'App User', '2020-05-08 07:45:02', 'লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।&nbsp; এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।</p>', 'notice/4', 37, 4, 0, '2020-05-08 01:45:02', '2020-05-08 01:45:02'),
(62, 1, 'Admin', 21, 'App User', '2020-05-08 07:45:02', 'লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।&nbsp; এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।</p>', 'notice/4', 37, 4, 0, '2020-05-08 01:45:02', '2020-05-08 01:45:02'),
(63, 1, 'Admin', 23, 'App User', '2020-05-08 07:45:02', 'লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।&nbsp; এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।</p>', 'notice/4', 37, 4, 0, '2020-05-08 01:45:02', '2020-05-08 01:45:02'),
(64, 1, 'Admin', 25, 'App User', '2020-05-08 07:45:02', 'লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।&nbsp; এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।</p>', 'notice/4', 37, 4, 1, '2020-05-08 01:45:02', '2020-05-09 08:07:49'),
(65, 1, 'Admin', 44, 'App User', '2020-05-08 07:45:02', 'লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।&nbsp; এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।</p>', 'notice/4', 37, 4, 0, '2020-05-08 01:45:02', '2020-05-08 01:45:02'),
(66, 1, 'Admin', 5, 'App User', '2020-05-11 15:48:37', 'বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'notice/5', 37, 5, 0, '2020-05-11 09:48:37', '2020-05-11 09:48:37'),
(67, 1, 'Admin', 14, 'App User', '2020-05-11 15:48:37', 'বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'notice/5', 37, 5, 0, '2020-05-11 09:48:37', '2020-05-11 09:48:37'),
(68, 1, 'Admin', 15, 'App User', '2020-05-11 15:48:37', 'বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'notice/5', 37, 5, 0, '2020-05-11 09:48:37', '2020-05-11 09:48:37'),
(69, 1, 'Admin', 16, 'App User', '2020-05-11 15:48:37', 'বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'notice/5', 37, 5, 0, '2020-05-11 09:48:37', '2020-05-11 09:48:37'),
(70, 1, 'Admin', 20, 'App User', '2020-05-11 15:48:37', 'বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'notice/5', 37, 5, 0, '2020-05-11 09:48:37', '2020-05-11 09:48:37'),
(71, 1, 'Admin', 21, 'App User', '2020-05-11 15:48:37', 'বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'notice/5', 37, 5, 0, '2020-05-11 09:48:37', '2020-05-11 09:48:37'),
(72, 1, 'Admin', 23, 'App User', '2020-05-11 15:48:37', 'বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'notice/5', 37, 5, 0, '2020-05-11 09:48:37', '2020-05-11 09:48:37'),
(73, 1, 'Admin', 25, 'App User', '2020-05-11 15:48:37', 'বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'notice/5', 37, 5, 1, '2020-05-11 09:48:37', '2020-05-11 09:59:26'),
(74, 1, 'Admin', 44, 'App User', '2020-05-11 15:48:37', 'বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'notice/5', 37, 5, 0, '2020-05-11 09:48:37', '2020-05-11 09:48:37'),
(75, 1, 'Admin', 5, 'App User', '2020-05-11 16:08:25', 'New Publication is published', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'publication/6', 38, 6, 0, '2020-05-11 10:08:25', '2020-05-11 10:08:25'),
(76, 1, 'Admin', 14, 'App User', '2020-05-11 16:08:25', 'New Publication is published', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'publication/6', 38, 6, 0, '2020-05-11 10:08:25', '2020-05-11 10:08:25'),
(77, 1, 'Admin', 15, 'App User', '2020-05-11 16:08:25', 'New Publication is published', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'publication/6', 38, 6, 0, '2020-05-11 10:08:25', '2020-05-11 10:08:25'),
(78, 1, 'Admin', 16, 'App User', '2020-05-11 16:08:25', 'New Publication is published', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'publication/6', 38, 6, 0, '2020-05-11 10:08:25', '2020-05-11 10:08:25'),
(79, 1, 'Admin', 20, 'App User', '2020-05-11 16:08:25', 'New Publication is published', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'publication/6', 38, 6, 0, '2020-05-11 10:08:25', '2020-05-11 10:08:25'),
(80, 1, 'Admin', 21, 'App User', '2020-05-11 16:08:25', 'New Publication is published', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'publication/6', 38, 6, 0, '2020-05-11 10:08:25', '2020-05-11 10:08:25'),
(81, 1, 'Admin', 23, 'App User', '2020-05-11 16:08:25', 'New Publication is published', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'publication/6', 38, 6, 0, '2020-05-11 10:08:25', '2020-05-11 10:08:25'),
(82, 1, 'Admin', 25, 'App User', '2020-05-11 16:08:25', 'New Publication is published', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'publication/6', 38, 6, 0, '2020-05-11 10:08:25', '2020-05-11 10:08:25'),
(83, 1, 'Admin', 44, 'App User', '2020-05-11 16:08:25', 'New Publication is published', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', 'publication/6', 38, 6, 0, '2020-05-11 10:08:25', '2020-05-11 10:08:25'),
(84, 1, 'Admin', 5, 'App User', '2020-05-11 16:21:44', 'New Publication is published', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><br class=\"Apple-interchange-newline\"><iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/JT2v83L06nI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" style=\"outline: 0px; padding: 0px; margin: 0px; border-width: 0px; border-style: initial; width: 642px; height: 361.266px;\"></iframe></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">ঈদের দিন সকাল বা দুপুরের খাবারের পর ডেসার্ট এ কিংবা অতিথি আপ্যায়নে সেমাই একটি প্রচলিত খাবার। জিরোক্যাল ড্রিংকস অ্যান্ড ডেসার্টস এর আজকের পর্বে আমরা জানব কীভাবে বানানো যায় সেমাই দিয়ে তৈরি মিষ্টি খাবার কুনাফা।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">কুনাফা তৈরির উপকরণ:</span><br style=\"outline: 0px; padding: 0px; margin: 0px;\">সেমাই ১ প্যাকেট<br style=\"outline: 0px; padding: 0px; margin: 0px;\">দুধের খিরসা পরিমাণমতো<br style=\"outline: 0px; padding: 0px; margin: 0px;\">মাখন ৩ চা চামচ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">বাদাম আধা কাপ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">জিরোক্যাল ২ স্যাশে</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">কুনাফা তৈরির পদ্ধতি</span></font><br style=\"outline: 0px; padding: 0px; margin: 0px;\">কুনাফা তৈরির জন্য চুলায় কড়াই গরম করে তাতে মাখন দিন। মাখন গরম হলে সেমাই দিয়ে হালকা বাদামি করে ভেজে নিন। সেমাই ভাজার সময় বাদাম ও জিরোক্যাল দিয়ে দিয়ে ভালোভাবে নেড়ে নিন। এবার আলাদা একটি পাত্রে মাখন লাগিয়ে নিন। ভাজা সেমাইয়ের মিশ্রণটি অর্ধেক পরিমাণে পাত্রে ঢালুন। এবার সেমাইয়ের স্তরের ওপরে খিরসা ঢেলে দিন। খিরসার স্তরের ওপরে এবার বাকি ভাজা সেমাই দিয়ে দিন। এবার এ মিশ্রণটি ফ্রিজে রেখে ঠান্ডা করে জমিয়ে নিন। তৈরি হয়ে গেল কুনাফা। পরিবেশনের সময় টুকরো করে কেটে নিয়ে পরিবেশন করুন সুস্বাদু কুনাফা।</p>', 'publication/7', 38, 7, 0, '2020-05-11 10:21:44', '2020-05-11 16:22:46'),
(85, 1, 'Admin', 14, 'App User', '2020-05-11 16:21:44', 'New Publication is published', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><br class=\"Apple-interchange-newline\"><iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/JT2v83L06nI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" style=\"outline: 0px; padding: 0px; margin: 0px; border-width: 0px; border-style: initial; width: 642px; height: 361.266px;\"></iframe></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">ঈদের দিন সকাল বা দুপুরের খাবারের পর ডেসার্ট এ কিংবা অতিথি আপ্যায়নে সেমাই একটি প্রচলিত খাবার। জিরোক্যাল ড্রিংকস অ্যান্ড ডেসার্টস এর আজকের পর্বে আমরা জানব কীভাবে বানানো যায় সেমাই দিয়ে তৈরি মিষ্টি খাবার কুনাফা।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">কুনাফা তৈরির উপকরণ:</span><br style=\"outline: 0px; padding: 0px; margin: 0px;\">সেমাই ১ প্যাকেট<br style=\"outline: 0px; padding: 0px; margin: 0px;\">দুধের খিরসা পরিমাণমতো<br style=\"outline: 0px; padding: 0px; margin: 0px;\">মাখন ৩ চা চামচ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">বাদাম আধা কাপ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">জিরোক্যাল ২ স্যাশে</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">কুনাফা তৈরির পদ্ধতি</span></font><br style=\"outline: 0px; padding: 0px; margin: 0px;\">কুনাফা তৈরির জন্য চুলায় কড়াই গরম করে তাতে মাখন দিন। মাখন গরম হলে সেমাই দিয়ে হালকা বাদামি করে ভেজে নিন। সেমাই ভাজার সময় বাদাম ও জিরোক্যাল দিয়ে দিয়ে ভালোভাবে নেড়ে নিন। এবার আলাদা একটি পাত্রে মাখন লাগিয়ে নিন। ভাজা সেমাইয়ের মিশ্রণটি অর্ধেক পরিমাণে পাত্রে ঢালুন। এবার সেমাইয়ের স্তরের ওপরে খিরসা ঢেলে দিন। খিরসার স্তরের ওপরে এবার বাকি ভাজা সেমাই দিয়ে দিন। এবার এ মিশ্রণটি ফ্রিজে রেখে ঠান্ডা করে জমিয়ে নিন। তৈরি হয়ে গেল কুনাফা। পরিবেশনের সময় টুকরো করে কেটে নিয়ে পরিবেশন করুন সুস্বাদু কুনাফা।</p>', 'publication/7', 38, 7, 0, '2020-05-11 10:21:44', '2020-05-11 16:22:49'),
(86, 1, 'Admin', 15, 'App User', '2020-05-11 16:21:44', 'New Publication is published', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><br class=\"Apple-interchange-newline\"><iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/JT2v83L06nI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" style=\"outline: 0px; padding: 0px; margin: 0px; border-width: 0px; border-style: initial; width: 642px; height: 361.266px;\"></iframe></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">ঈদের দিন সকাল বা দুপুরের খাবারের পর ডেসার্ট এ কিংবা অতিথি আপ্যায়নে সেমাই একটি প্রচলিত খাবার। জিরোক্যাল ড্রিংকস অ্যান্ড ডেসার্টস এর আজকের পর্বে আমরা জানব কীভাবে বানানো যায় সেমাই দিয়ে তৈরি মিষ্টি খাবার কুনাফা।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">কুনাফা তৈরির উপকরণ:</span><br style=\"outline: 0px; padding: 0px; margin: 0px;\">সেমাই ১ প্যাকেট<br style=\"outline: 0px; padding: 0px; margin: 0px;\">দুধের খিরসা পরিমাণমতো<br style=\"outline: 0px; padding: 0px; margin: 0px;\">মাখন ৩ চা চামচ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">বাদাম আধা কাপ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">জিরোক্যাল ২ স্যাশে</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">কুনাফা তৈরির পদ্ধতি</span></font><br style=\"outline: 0px; padding: 0px; margin: 0px;\">কুনাফা তৈরির জন্য চুলায় কড়াই গরম করে তাতে মাখন দিন। মাখন গরম হলে সেমাই দিয়ে হালকা বাদামি করে ভেজে নিন। সেমাই ভাজার সময় বাদাম ও জিরোক্যাল দিয়ে দিয়ে ভালোভাবে নেড়ে নিন। এবার আলাদা একটি পাত্রে মাখন লাগিয়ে নিন। ভাজা সেমাইয়ের মিশ্রণটি অর্ধেক পরিমাণে পাত্রে ঢালুন। এবার সেমাইয়ের স্তরের ওপরে খিরসা ঢেলে দিন। খিরসার স্তরের ওপরে এবার বাকি ভাজা সেমাই দিয়ে দিন। এবার এ মিশ্রণটি ফ্রিজে রেখে ঠান্ডা করে জমিয়ে নিন। তৈরি হয়ে গেল কুনাফা। পরিবেশনের সময় টুকরো করে কেটে নিয়ে পরিবেশন করুন সুস্বাদু কুনাফা।</p>', 'publication/7', 38, 7, 0, '2020-05-11 10:21:44', '2020-05-11 16:22:50'),
(87, 1, 'Admin', 16, 'App User', '2020-05-11 16:21:44', 'New Publication is published', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><br class=\"Apple-interchange-newline\"><iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/JT2v83L06nI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" style=\"outline: 0px; padding: 0px; margin: 0px; border-width: 0px; border-style: initial; width: 642px; height: 361.266px;\"></iframe></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">ঈদের দিন সকাল বা দুপুরের খাবারের পর ডেসার্ট এ কিংবা অতিথি আপ্যায়নে সেমাই একটি প্রচলিত খাবার। জিরোক্যাল ড্রিংকস অ্যান্ড ডেসার্টস এর আজকের পর্বে আমরা জানব কীভাবে বানানো যায় সেমাই দিয়ে তৈরি মিষ্টি খাবার কুনাফা।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">কুনাফা তৈরির উপকরণ:</span><br style=\"outline: 0px; padding: 0px; margin: 0px;\">সেমাই ১ প্যাকেট<br style=\"outline: 0px; padding: 0px; margin: 0px;\">দুধের খিরসা পরিমাণমতো<br style=\"outline: 0px; padding: 0px; margin: 0px;\">মাখন ৩ চা চামচ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">বাদাম আধা কাপ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">জিরোক্যাল ২ স্যাশে</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">কুনাফা তৈরির পদ্ধতি</span></font><br style=\"outline: 0px; padding: 0px; margin: 0px;\">কুনাফা তৈরির জন্য চুলায় কড়াই গরম করে তাতে মাখন দিন। মাখন গরম হলে সেমাই দিয়ে হালকা বাদামি করে ভেজে নিন। সেমাই ভাজার সময় বাদাম ও জিরোক্যাল দিয়ে দিয়ে ভালোভাবে নেড়ে নিন। এবার আলাদা একটি পাত্রে মাখন লাগিয়ে নিন। ভাজা সেমাইয়ের মিশ্রণটি অর্ধেক পরিমাণে পাত্রে ঢালুন। এবার সেমাইয়ের স্তরের ওপরে খিরসা ঢেলে দিন। খিরসার স্তরের ওপরে এবার বাকি ভাজা সেমাই দিয়ে দিন। এবার এ মিশ্রণটি ফ্রিজে রেখে ঠান্ডা করে জমিয়ে নিন। তৈরি হয়ে গেল কুনাফা। পরিবেশনের সময় টুকরো করে কেটে নিয়ে পরিবেশন করুন সুস্বাদু কুনাফা।</p>', 'publication/7', 38, 7, 0, '2020-05-11 10:21:44', '2020-05-11 16:22:51'),
(88, 1, 'Admin', 20, 'App User', '2020-05-11 16:21:44', 'New Publication is published', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><br class=\"Apple-interchange-newline\"><iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/JT2v83L06nI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" style=\"outline: 0px; padding: 0px; margin: 0px; border-width: 0px; border-style: initial; width: 642px; height: 361.266px;\"></iframe></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">ঈদের দিন সকাল বা দুপুরের খাবারের পর ডেসার্ট এ কিংবা অতিথি আপ্যায়নে সেমাই একটি প্রচলিত খাবার। জিরোক্যাল ড্রিংকস অ্যান্ড ডেসার্টস এর আজকের পর্বে আমরা জানব কীভাবে বানানো যায় সেমাই দিয়ে তৈরি মিষ্টি খাবার কুনাফা।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">কুনাফা তৈরির উপকরণ:</span><br style=\"outline: 0px; padding: 0px; margin: 0px;\">সেমাই ১ প্যাকেট<br style=\"outline: 0px; padding: 0px; margin: 0px;\">দুধের খিরসা পরিমাণমতো<br style=\"outline: 0px; padding: 0px; margin: 0px;\">মাখন ৩ চা চামচ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">বাদাম আধা কাপ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">জিরোক্যাল ২ স্যাশে</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">কুনাফা তৈরির পদ্ধতি</span></font><br style=\"outline: 0px; padding: 0px; margin: 0px;\">কুনাফা তৈরির জন্য চুলায় কড়াই গরম করে তাতে মাখন দিন। মাখন গরম হলে সেমাই দিয়ে হালকা বাদামি করে ভেজে নিন। সেমাই ভাজার সময় বাদাম ও জিরোক্যাল দিয়ে দিয়ে ভালোভাবে নেড়ে নিন। এবার আলাদা একটি পাত্রে মাখন লাগিয়ে নিন। ভাজা সেমাইয়ের মিশ্রণটি অর্ধেক পরিমাণে পাত্রে ঢালুন। এবার সেমাইয়ের স্তরের ওপরে খিরসা ঢেলে দিন। খিরসার স্তরের ওপরে এবার বাকি ভাজা সেমাই দিয়ে দিন। এবার এ মিশ্রণটি ফ্রিজে রেখে ঠান্ডা করে জমিয়ে নিন। তৈরি হয়ে গেল কুনাফা। পরিবেশনের সময় টুকরো করে কেটে নিয়ে পরিবেশন করুন সুস্বাদু কুনাফা।</p>', 'publication/7', 38, 7, 0, '2020-05-11 10:21:44', '2020-05-11 16:22:52'),
(89, 1, 'Admin', 21, 'App User', '2020-05-11 16:21:44', 'New Publication is published', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><br class=\"Apple-interchange-newline\"><iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/JT2v83L06nI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" style=\"outline: 0px; padding: 0px; margin: 0px; border-width: 0px; border-style: initial; width: 642px; height: 361.266px;\"></iframe></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">ঈদের দিন সকাল বা দুপুরের খাবারের পর ডেসার্ট এ কিংবা অতিথি আপ্যায়নে সেমাই একটি প্রচলিত খাবার। জিরোক্যাল ড্রিংকস অ্যান্ড ডেসার্টস এর আজকের পর্বে আমরা জানব কীভাবে বানানো যায় সেমাই দিয়ে তৈরি মিষ্টি খাবার কুনাফা।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">কুনাফা তৈরির উপকরণ:</span><br style=\"outline: 0px; padding: 0px; margin: 0px;\">সেমাই ১ প্যাকেট<br style=\"outline: 0px; padding: 0px; margin: 0px;\">দুধের খিরসা পরিমাণমতো<br style=\"outline: 0px; padding: 0px; margin: 0px;\">মাখন ৩ চা চামচ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">বাদাম আধা কাপ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">জিরোক্যাল ২ স্যাশে</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">কুনাফা তৈরির পদ্ধতি</span></font><br style=\"outline: 0px; padding: 0px; margin: 0px;\">কুনাফা তৈরির জন্য চুলায় কড়াই গরম করে তাতে মাখন দিন। মাখন গরম হলে সেমাই দিয়ে হালকা বাদামি করে ভেজে নিন। সেমাই ভাজার সময় বাদাম ও জিরোক্যাল দিয়ে দিয়ে ভালোভাবে নেড়ে নিন। এবার আলাদা একটি পাত্রে মাখন লাগিয়ে নিন। ভাজা সেমাইয়ের মিশ্রণটি অর্ধেক পরিমাণে পাত্রে ঢালুন। এবার সেমাইয়ের স্তরের ওপরে খিরসা ঢেলে দিন। খিরসার স্তরের ওপরে এবার বাকি ভাজা সেমাই দিয়ে দিন। এবার এ মিশ্রণটি ফ্রিজে রেখে ঠান্ডা করে জমিয়ে নিন। তৈরি হয়ে গেল কুনাফা। পরিবেশনের সময় টুকরো করে কেটে নিয়ে পরিবেশন করুন সুস্বাদু কুনাফা।</p>', 'publication/7', 38, 7, 0, '2020-05-11 10:21:44', '2020-05-11 16:22:53'),
(90, 1, 'Admin', 23, 'App User', '2020-05-11 16:21:44', 'New Publication is published', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><br class=\"Apple-interchange-newline\"><iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/JT2v83L06nI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" style=\"outline: 0px; padding: 0px; margin: 0px; border-width: 0px; border-style: initial; width: 642px; height: 361.266px;\"></iframe></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">ঈদের দিন সকাল বা দুপুরের খাবারের পর ডেসার্ট এ কিংবা অতিথি আপ্যায়নে সেমাই একটি প্রচলিত খাবার। জিরোক্যাল ড্রিংকস অ্যান্ড ডেসার্টস এর আজকের পর্বে আমরা জানব কীভাবে বানানো যায় সেমাই দিয়ে তৈরি মিষ্টি খাবার কুনাফা।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">কুনাফা তৈরির উপকরণ:</span><br style=\"outline: 0px; padding: 0px; margin: 0px;\">সেমাই ১ প্যাকেট<br style=\"outline: 0px; padding: 0px; margin: 0px;\">দুধের খিরসা পরিমাণমতো<br style=\"outline: 0px; padding: 0px; margin: 0px;\">মাখন ৩ চা চামচ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">বাদাম আধা কাপ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">জিরোক্যাল ২ স্যাশে</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">কুনাফা তৈরির পদ্ধতি</span></font><br style=\"outline: 0px; padding: 0px; margin: 0px;\">কুনাফা তৈরির জন্য চুলায় কড়াই গরম করে তাতে মাখন দিন। মাখন গরম হলে সেমাই দিয়ে হালকা বাদামি করে ভেজে নিন। সেমাই ভাজার সময় বাদাম ও জিরোক্যাল দিয়ে দিয়ে ভালোভাবে নেড়ে নিন। এবার আলাদা একটি পাত্রে মাখন লাগিয়ে নিন। ভাজা সেমাইয়ের মিশ্রণটি অর্ধেক পরিমাণে পাত্রে ঢালুন। এবার সেমাইয়ের স্তরের ওপরে খিরসা ঢেলে দিন। খিরসার স্তরের ওপরে এবার বাকি ভাজা সেমাই দিয়ে দিন। এবার এ মিশ্রণটি ফ্রিজে রেখে ঠান্ডা করে জমিয়ে নিন। তৈরি হয়ে গেল কুনাফা। পরিবেশনের সময় টুকরো করে কেটে নিয়ে পরিবেশন করুন সুস্বাদু কুনাফা।</p>', 'publication/7', 38, 7, 0, '2020-05-11 10:21:44', '2020-05-11 16:22:55'),
(91, 1, 'Admin', 25, 'App User', '2020-05-11 16:21:44', 'New Publication is published', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><br class=\"Apple-interchange-newline\"><iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/JT2v83L06nI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" style=\"outline: 0px; padding: 0px; margin: 0px; border-width: 0px; border-style: initial; width: 642px; height: 361.266px;\"></iframe></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">ঈদের দিন সকাল বা দুপুরের খাবারের পর ডেসার্ট এ কিংবা অতিথি আপ্যায়নে সেমাই একটি প্রচলিত খাবার। জিরোক্যাল ড্রিংকস অ্যান্ড ডেসার্টস এর আজকের পর্বে আমরা জানব কীভাবে বানানো যায় সেমাই দিয়ে তৈরি মিষ্টি খাবার কুনাফা।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">কুনাফা তৈরির উপকরণ:</span><br style=\"outline: 0px; padding: 0px; margin: 0px;\">সেমাই ১ প্যাকেট<br style=\"outline: 0px; padding: 0px; margin: 0px;\">দুধের খিরসা পরিমাণমতো<br style=\"outline: 0px; padding: 0px; margin: 0px;\">মাখন ৩ চা চামচ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">বাদাম আধা কাপ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">জিরোক্যাল ২ স্যাশে</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">কুনাফা তৈরির পদ্ধতি</span></font><br style=\"outline: 0px; padding: 0px; margin: 0px;\">কুনাফা তৈরির জন্য চুলায় কড়াই গরম করে তাতে মাখন দিন। মাখন গরম হলে সেমাই দিয়ে হালকা বাদামি করে ভেজে নিন। সেমাই ভাজার সময় বাদাম ও জিরোক্যাল দিয়ে দিয়ে ভালোভাবে নেড়ে নিন। এবার আলাদা একটি পাত্রে মাখন লাগিয়ে নিন। ভাজা সেমাইয়ের মিশ্রণটি অর্ধেক পরিমাণে পাত্রে ঢালুন। এবার সেমাইয়ের স্তরের ওপরে খিরসা ঢেলে দিন। খিরসার স্তরের ওপরে এবার বাকি ভাজা সেমাই দিয়ে দিন। এবার এ মিশ্রণটি ফ্রিজে রেখে ঠান্ডা করে জমিয়ে নিন। তৈরি হয়ে গেল কুনাফা। পরিবেশনের সময় টুকরো করে কেটে নিয়ে পরিবেশন করুন সুস্বাদু কুনাফা।</p>', 'publication/7', 38, 7, 0, '2020-05-11 10:21:44', '2020-05-11 16:22:56'),
(92, 1, 'Admin', 44, 'App User', '2020-05-11 16:21:44', 'New Publication is published', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><br class=\"Apple-interchange-newline\"><iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/JT2v83L06nI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" style=\"outline: 0px; padding: 0px; margin: 0px; border-width: 0px; border-style: initial; width: 642px; height: 361.266px;\"></iframe></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">ঈদের দিন সকাল বা দুপুরের খাবারের পর ডেসার্ট এ কিংবা অতিথি আপ্যায়নে সেমাই একটি প্রচলিত খাবার। জিরোক্যাল ড্রিংকস অ্যান্ড ডেসার্টস এর আজকের পর্বে আমরা জানব কীভাবে বানানো যায় সেমাই দিয়ে তৈরি মিষ্টি খাবার কুনাফা।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">কুনাফা তৈরির উপকরণ:</span><br style=\"outline: 0px; padding: 0px; margin: 0px;\">সেমাই ১ প্যাকেট<br style=\"outline: 0px; padding: 0px; margin: 0px;\">দুধের খিরসা পরিমাণমতো<br style=\"outline: 0px; padding: 0px; margin: 0px;\">মাখন ৩ চা চামচ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">বাদাম আধা কাপ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">জিরোক্যাল ২ স্যাশে</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">কুনাফা তৈরির পদ্ধতি</span></font><br style=\"outline: 0px; padding: 0px; margin: 0px;\">কুনাফা তৈরির জন্য চুলায় কড়াই গরম করে তাতে মাখন দিন। মাখন গরম হলে সেমাই দিয়ে হালকা বাদামি করে ভেজে নিন। সেমাই ভাজার সময় বাদাম ও জিরোক্যাল দিয়ে দিয়ে ভালোভাবে নেড়ে নিন। এবার আলাদা একটি পাত্রে মাখন লাগিয়ে নিন। ভাজা সেমাইয়ের মিশ্রণটি অর্ধেক পরিমাণে পাত্রে ঢালুন। এবার সেমাইয়ের স্তরের ওপরে খিরসা ঢেলে দিন। খিরসার স্তরের ওপরে এবার বাকি ভাজা সেমাই দিয়ে দিন। এবার এ মিশ্রণটি ফ্রিজে রেখে ঠান্ডা করে জমিয়ে নিন। তৈরি হয়ে গেল কুনাফা। পরিবেশনের সময় টুকরো করে কেটে নিয়ে পরিবেশন করুন সুস্বাদু কুনাফা।</p>', 'publication/7', 38, 7, 0, '2020-05-11 10:21:44', '2020-05-11 16:24:39'),
(93, 1, 'Admin', 5, 'App User', '2020-05-11 16:24:31', 'আইসোলেশনে যা খাবেন', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">করোনাভাইরাসে সংক্রমিত হলে আক্রান্ত ব্যক্তি ও তাঁর সংস্পর্শে আসা ব্যক্তিদের আইসোলেশনে থাকতে বলা হচ্ছে। মৃদু উপসর্গ আছে, এমন বেশির ভাগ রোগী বাড়িতে আইসোলেশনে থেকেই চিকিৎসা নিয়ে সেরে উঠছেন। তবে শুধু চিকিৎসা নয়, আইসোলেশনে থাকা ব্যক্তির খাদ্যাভ্যাস আর খাবার পরিবেশনের পদ্ধতির দিকে নজর দেওয়াও ভীষণ জরুরি।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">১</span>. করোনায় আক্রান্ত ব্যক্তি একটি আলাদা ঘরে থাকবেন। বাড়িতে ঘরের স্বল্পতা থাকলে একই ঘরে আলাদা পর্দাঘেরা কোনায় থাকবেন। খাওয়ার সময় বাড়িতে সদ্য তৈরি খাবার তাঁর দরজার কাছে কেউ একজন রেখে আসবেন। তবে এ ক্ষেত্রে খাবার সরবরাহের দায়িত্ব পালন করবেন বাড়ির সবচেয়ে সুস্থ ও কম ঝুঁকিপূর্ণ ব্যক্তিটি। তিনি খাবার দেওয়ার সময় অবশ্যই মাস্ক ও গ্লাভস ব্যবহার করবেন।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">২</span></font>. করোনায় আক্রান্ত ব্যক্তির প্লেট, গ্লাস, চামচ ও অন্যান্য ব্যবহার্য তৈজসপত্র সম্পূর্ণ আলাদা থাকবে। এসব জিনিস প্রতিবার ব্যবহারের পর গ্লাভস পরে ভালো করে সাবান-পানি দিয়ে পরিষ্কার করে অন্যদের থালা-বাসন থেকে আলাদা করে রাখতে হবে।</p>', 'publication/8', 38, 8, 0, '2020-05-11 10:24:31', '2020-05-11 10:24:31');
INSERT INTO `notifications` (`id`, `from_id`, `from_user_type`, `to_id`, `to_user_type`, `date_time`, `notification_title`, `message`, `view_url`, `module_id`, `module_reference_id`, `status`, `created_at`, `updated_at`) VALUES
(94, 1, 'Admin', 14, 'App User', '2020-05-11 16:24:31', 'আইসোলেশনে যা খাবেন', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">করোনাভাইরাসে সংক্রমিত হলে আক্রান্ত ব্যক্তি ও তাঁর সংস্পর্শে আসা ব্যক্তিদের আইসোলেশনে থাকতে বলা হচ্ছে। মৃদু উপসর্গ আছে, এমন বেশির ভাগ রোগী বাড়িতে আইসোলেশনে থেকেই চিকিৎসা নিয়ে সেরে উঠছেন। তবে শুধু চিকিৎসা নয়, আইসোলেশনে থাকা ব্যক্তির খাদ্যাভ্যাস আর খাবার পরিবেশনের পদ্ধতির দিকে নজর দেওয়াও ভীষণ জরুরি।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">১</span>. করোনায় আক্রান্ত ব্যক্তি একটি আলাদা ঘরে থাকবেন। বাড়িতে ঘরের স্বল্পতা থাকলে একই ঘরে আলাদা পর্দাঘেরা কোনায় থাকবেন। খাওয়ার সময় বাড়িতে সদ্য তৈরি খাবার তাঁর দরজার কাছে কেউ একজন রেখে আসবেন। তবে এ ক্ষেত্রে খাবার সরবরাহের দায়িত্ব পালন করবেন বাড়ির সবচেয়ে সুস্থ ও কম ঝুঁকিপূর্ণ ব্যক্তিটি। তিনি খাবার দেওয়ার সময় অবশ্যই মাস্ক ও গ্লাভস ব্যবহার করবেন।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">২</span></font>. করোনায় আক্রান্ত ব্যক্তির প্লেট, গ্লাস, চামচ ও অন্যান্য ব্যবহার্য তৈজসপত্র সম্পূর্ণ আলাদা থাকবে। এসব জিনিস প্রতিবার ব্যবহারের পর গ্লাভস পরে ভালো করে সাবান-পানি দিয়ে পরিষ্কার করে অন্যদের থালা-বাসন থেকে আলাদা করে রাখতে হবে।</p>', 'publication/8', 38, 8, 0, '2020-05-11 10:24:31', '2020-05-11 10:24:31'),
(95, 1, 'Admin', 15, 'App User', '2020-05-11 16:24:31', 'আইসোলেশনে যা খাবেন', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">করোনাভাইরাসে সংক্রমিত হলে আক্রান্ত ব্যক্তি ও তাঁর সংস্পর্শে আসা ব্যক্তিদের আইসোলেশনে থাকতে বলা হচ্ছে। মৃদু উপসর্গ আছে, এমন বেশির ভাগ রোগী বাড়িতে আইসোলেশনে থেকেই চিকিৎসা নিয়ে সেরে উঠছেন। তবে শুধু চিকিৎসা নয়, আইসোলেশনে থাকা ব্যক্তির খাদ্যাভ্যাস আর খাবার পরিবেশনের পদ্ধতির দিকে নজর দেওয়াও ভীষণ জরুরি।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">১</span>. করোনায় আক্রান্ত ব্যক্তি একটি আলাদা ঘরে থাকবেন। বাড়িতে ঘরের স্বল্পতা থাকলে একই ঘরে আলাদা পর্দাঘেরা কোনায় থাকবেন। খাওয়ার সময় বাড়িতে সদ্য তৈরি খাবার তাঁর দরজার কাছে কেউ একজন রেখে আসবেন। তবে এ ক্ষেত্রে খাবার সরবরাহের দায়িত্ব পালন করবেন বাড়ির সবচেয়ে সুস্থ ও কম ঝুঁকিপূর্ণ ব্যক্তিটি। তিনি খাবার দেওয়ার সময় অবশ্যই মাস্ক ও গ্লাভস ব্যবহার করবেন।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">২</span></font>. করোনায় আক্রান্ত ব্যক্তির প্লেট, গ্লাস, চামচ ও অন্যান্য ব্যবহার্য তৈজসপত্র সম্পূর্ণ আলাদা থাকবে। এসব জিনিস প্রতিবার ব্যবহারের পর গ্লাভস পরে ভালো করে সাবান-পানি দিয়ে পরিষ্কার করে অন্যদের থালা-বাসন থেকে আলাদা করে রাখতে হবে।</p>', 'publication/8', 38, 8, 0, '2020-05-11 10:24:31', '2020-05-11 10:24:31'),
(96, 1, 'Admin', 16, 'App User', '2020-05-11 16:24:31', 'আইসোলেশনে যা খাবেন', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">করোনাভাইরাসে সংক্রমিত হলে আক্রান্ত ব্যক্তি ও তাঁর সংস্পর্শে আসা ব্যক্তিদের আইসোলেশনে থাকতে বলা হচ্ছে। মৃদু উপসর্গ আছে, এমন বেশির ভাগ রোগী বাড়িতে আইসোলেশনে থেকেই চিকিৎসা নিয়ে সেরে উঠছেন। তবে শুধু চিকিৎসা নয়, আইসোলেশনে থাকা ব্যক্তির খাদ্যাভ্যাস আর খাবার পরিবেশনের পদ্ধতির দিকে নজর দেওয়াও ভীষণ জরুরি।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">১</span>. করোনায় আক্রান্ত ব্যক্তি একটি আলাদা ঘরে থাকবেন। বাড়িতে ঘরের স্বল্পতা থাকলে একই ঘরে আলাদা পর্দাঘেরা কোনায় থাকবেন। খাওয়ার সময় বাড়িতে সদ্য তৈরি খাবার তাঁর দরজার কাছে কেউ একজন রেখে আসবেন। তবে এ ক্ষেত্রে খাবার সরবরাহের দায়িত্ব পালন করবেন বাড়ির সবচেয়ে সুস্থ ও কম ঝুঁকিপূর্ণ ব্যক্তিটি। তিনি খাবার দেওয়ার সময় অবশ্যই মাস্ক ও গ্লাভস ব্যবহার করবেন।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">২</span></font>. করোনায় আক্রান্ত ব্যক্তির প্লেট, গ্লাস, চামচ ও অন্যান্য ব্যবহার্য তৈজসপত্র সম্পূর্ণ আলাদা থাকবে। এসব জিনিস প্রতিবার ব্যবহারের পর গ্লাভস পরে ভালো করে সাবান-পানি দিয়ে পরিষ্কার করে অন্যদের থালা-বাসন থেকে আলাদা করে রাখতে হবে।</p>', 'publication/8', 38, 8, 0, '2020-05-11 10:24:31', '2020-05-11 10:24:31'),
(97, 1, 'Admin', 20, 'App User', '2020-05-11 16:24:31', 'আইসোলেশনে যা খাবেন', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">করোনাভাইরাসে সংক্রমিত হলে আক্রান্ত ব্যক্তি ও তাঁর সংস্পর্শে আসা ব্যক্তিদের আইসোলেশনে থাকতে বলা হচ্ছে। মৃদু উপসর্গ আছে, এমন বেশির ভাগ রোগী বাড়িতে আইসোলেশনে থেকেই চিকিৎসা নিয়ে সেরে উঠছেন। তবে শুধু চিকিৎসা নয়, আইসোলেশনে থাকা ব্যক্তির খাদ্যাভ্যাস আর খাবার পরিবেশনের পদ্ধতির দিকে নজর দেওয়াও ভীষণ জরুরি।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">১</span>. করোনায় আক্রান্ত ব্যক্তি একটি আলাদা ঘরে থাকবেন। বাড়িতে ঘরের স্বল্পতা থাকলে একই ঘরে আলাদা পর্দাঘেরা কোনায় থাকবেন। খাওয়ার সময় বাড়িতে সদ্য তৈরি খাবার তাঁর দরজার কাছে কেউ একজন রেখে আসবেন। তবে এ ক্ষেত্রে খাবার সরবরাহের দায়িত্ব পালন করবেন বাড়ির সবচেয়ে সুস্থ ও কম ঝুঁকিপূর্ণ ব্যক্তিটি। তিনি খাবার দেওয়ার সময় অবশ্যই মাস্ক ও গ্লাভস ব্যবহার করবেন।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">২</span></font>. করোনায় আক্রান্ত ব্যক্তির প্লেট, গ্লাস, চামচ ও অন্যান্য ব্যবহার্য তৈজসপত্র সম্পূর্ণ আলাদা থাকবে। এসব জিনিস প্রতিবার ব্যবহারের পর গ্লাভস পরে ভালো করে সাবান-পানি দিয়ে পরিষ্কার করে অন্যদের থালা-বাসন থেকে আলাদা করে রাখতে হবে।</p>', 'publication/8', 38, 8, 0, '2020-05-11 10:24:31', '2020-05-11 10:24:31'),
(98, 1, 'Admin', 21, 'App User', '2020-05-11 16:24:31', 'আইসোলেশনে যা খাবেন', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">করোনাভাইরাসে সংক্রমিত হলে আক্রান্ত ব্যক্তি ও তাঁর সংস্পর্শে আসা ব্যক্তিদের আইসোলেশনে থাকতে বলা হচ্ছে। মৃদু উপসর্গ আছে, এমন বেশির ভাগ রোগী বাড়িতে আইসোলেশনে থেকেই চিকিৎসা নিয়ে সেরে উঠছেন। তবে শুধু চিকিৎসা নয়, আইসোলেশনে থাকা ব্যক্তির খাদ্যাভ্যাস আর খাবার পরিবেশনের পদ্ধতির দিকে নজর দেওয়াও ভীষণ জরুরি।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">১</span>. করোনায় আক্রান্ত ব্যক্তি একটি আলাদা ঘরে থাকবেন। বাড়িতে ঘরের স্বল্পতা থাকলে একই ঘরে আলাদা পর্দাঘেরা কোনায় থাকবেন। খাওয়ার সময় বাড়িতে সদ্য তৈরি খাবার তাঁর দরজার কাছে কেউ একজন রেখে আসবেন। তবে এ ক্ষেত্রে খাবার সরবরাহের দায়িত্ব পালন করবেন বাড়ির সবচেয়ে সুস্থ ও কম ঝুঁকিপূর্ণ ব্যক্তিটি। তিনি খাবার দেওয়ার সময় অবশ্যই মাস্ক ও গ্লাভস ব্যবহার করবেন।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">২</span></font>. করোনায় আক্রান্ত ব্যক্তির প্লেট, গ্লাস, চামচ ও অন্যান্য ব্যবহার্য তৈজসপত্র সম্পূর্ণ আলাদা থাকবে। এসব জিনিস প্রতিবার ব্যবহারের পর গ্লাভস পরে ভালো করে সাবান-পানি দিয়ে পরিষ্কার করে অন্যদের থালা-বাসন থেকে আলাদা করে রাখতে হবে।</p>', 'publication/8', 38, 8, 0, '2020-05-11 10:24:31', '2020-05-11 10:24:31'),
(99, 1, 'Admin', 23, 'App User', '2020-05-11 16:24:31', 'আইসোলেশনে যা খাবেন', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">করোনাভাইরাসে সংক্রমিত হলে আক্রান্ত ব্যক্তি ও তাঁর সংস্পর্শে আসা ব্যক্তিদের আইসোলেশনে থাকতে বলা হচ্ছে। মৃদু উপসর্গ আছে, এমন বেশির ভাগ রোগী বাড়িতে আইসোলেশনে থেকেই চিকিৎসা নিয়ে সেরে উঠছেন। তবে শুধু চিকিৎসা নয়, আইসোলেশনে থাকা ব্যক্তির খাদ্যাভ্যাস আর খাবার পরিবেশনের পদ্ধতির দিকে নজর দেওয়াও ভীষণ জরুরি।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">১</span>. করোনায় আক্রান্ত ব্যক্তি একটি আলাদা ঘরে থাকবেন। বাড়িতে ঘরের স্বল্পতা থাকলে একই ঘরে আলাদা পর্দাঘেরা কোনায় থাকবেন। খাওয়ার সময় বাড়িতে সদ্য তৈরি খাবার তাঁর দরজার কাছে কেউ একজন রেখে আসবেন। তবে এ ক্ষেত্রে খাবার সরবরাহের দায়িত্ব পালন করবেন বাড়ির সবচেয়ে সুস্থ ও কম ঝুঁকিপূর্ণ ব্যক্তিটি। তিনি খাবার দেওয়ার সময় অবশ্যই মাস্ক ও গ্লাভস ব্যবহার করবেন।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">২</span></font>. করোনায় আক্রান্ত ব্যক্তির প্লেট, গ্লাস, চামচ ও অন্যান্য ব্যবহার্য তৈজসপত্র সম্পূর্ণ আলাদা থাকবে। এসব জিনিস প্রতিবার ব্যবহারের পর গ্লাভস পরে ভালো করে সাবান-পানি দিয়ে পরিষ্কার করে অন্যদের থালা-বাসন থেকে আলাদা করে রাখতে হবে।</p>', 'publication/8', 38, 8, 0, '2020-05-11 10:24:31', '2020-05-11 10:24:31'),
(100, 1, 'Admin', 25, 'App User', '2020-05-11 16:24:31', 'আইসোলেশনে যা খাবেন', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">করোনাভাইরাসে সংক্রমিত হলে আক্রান্ত ব্যক্তি ও তাঁর সংস্পর্শে আসা ব্যক্তিদের আইসোলেশনে থাকতে বলা হচ্ছে। মৃদু উপসর্গ আছে, এমন বেশির ভাগ রোগী বাড়িতে আইসোলেশনে থেকেই চিকিৎসা নিয়ে সেরে উঠছেন। তবে শুধু চিকিৎসা নয়, আইসোলেশনে থাকা ব্যক্তির খাদ্যাভ্যাস আর খাবার পরিবেশনের পদ্ধতির দিকে নজর দেওয়াও ভীষণ জরুরি।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">১</span>. করোনায় আক্রান্ত ব্যক্তি একটি আলাদা ঘরে থাকবেন। বাড়িতে ঘরের স্বল্পতা থাকলে একই ঘরে আলাদা পর্দাঘেরা কোনায় থাকবেন। খাওয়ার সময় বাড়িতে সদ্য তৈরি খাবার তাঁর দরজার কাছে কেউ একজন রেখে আসবেন। তবে এ ক্ষেত্রে খাবার সরবরাহের দায়িত্ব পালন করবেন বাড়ির সবচেয়ে সুস্থ ও কম ঝুঁকিপূর্ণ ব্যক্তিটি। তিনি খাবার দেওয়ার সময় অবশ্যই মাস্ক ও গ্লাভস ব্যবহার করবেন।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">২</span></font>. করোনায় আক্রান্ত ব্যক্তির প্লেট, গ্লাস, চামচ ও অন্যান্য ব্যবহার্য তৈজসপত্র সম্পূর্ণ আলাদা থাকবে। এসব জিনিস প্রতিবার ব্যবহারের পর গ্লাভস পরে ভালো করে সাবান-পানি দিয়ে পরিষ্কার করে অন্যদের থালা-বাসন থেকে আলাদা করে রাখতে হবে।</p>', 'publication/8', 38, 8, 0, '2020-05-11 10:24:31', '2020-05-11 10:24:31'),
(101, 1, 'Admin', 44, 'App User', '2020-05-11 16:24:31', 'আইসোলেশনে যা খাবেন', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">করোনাভাইরাসে সংক্রমিত হলে আক্রান্ত ব্যক্তি ও তাঁর সংস্পর্শে আসা ব্যক্তিদের আইসোলেশনে থাকতে বলা হচ্ছে। মৃদু উপসর্গ আছে, এমন বেশির ভাগ রোগী বাড়িতে আইসোলেশনে থেকেই চিকিৎসা নিয়ে সেরে উঠছেন। তবে শুধু চিকিৎসা নয়, আইসোলেশনে থাকা ব্যক্তির খাদ্যাভ্যাস আর খাবার পরিবেশনের পদ্ধতির দিকে নজর দেওয়াও ভীষণ জরুরি।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">১</span>. করোনায় আক্রান্ত ব্যক্তি একটি আলাদা ঘরে থাকবেন। বাড়িতে ঘরের স্বল্পতা থাকলে একই ঘরে আলাদা পর্দাঘেরা কোনায় থাকবেন। খাওয়ার সময় বাড়িতে সদ্য তৈরি খাবার তাঁর দরজার কাছে কেউ একজন রেখে আসবেন। তবে এ ক্ষেত্রে খাবার সরবরাহের দায়িত্ব পালন করবেন বাড়ির সবচেয়ে সুস্থ ও কম ঝুঁকিপূর্ণ ব্যক্তিটি। তিনি খাবার দেওয়ার সময় অবশ্যই মাস্ক ও গ্লাভস ব্যবহার করবেন।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">২</span></font>. করোনায় আক্রান্ত ব্যক্তির প্লেট, গ্লাস, চামচ ও অন্যান্য ব্যবহার্য তৈজসপত্র সম্পূর্ণ আলাদা থাকবে। এসব জিনিস প্রতিবার ব্যবহারের পর গ্লাভস পরে ভালো করে সাবান-পানি দিয়ে পরিষ্কার করে অন্যদের থালা-বাসন থেকে আলাদা করে রাখতে হবে।</p>', 'publication/8', 38, 8, 0, '2020-05-11 10:24:31', '2020-05-11 10:24:31'),
(102, 1, 'Admin', 5, 'App User', '2020-05-11 17:24:52', 'A new notice published', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">প্রথম আলো: আমরা জেনেছিলাম প্রথম দিকে যে করোনায় শিশুদের করোনার সংক্রমণের ঝুঁকি কম। কিন্তু এখন শিশুদের আক্রান্ত হওয়ার, এমনকি আইসোলেশনে থাকা শিশুর মৃত্যুর সংবাদও আমরা পেয়েছি। শিশুদের কি আদৌ করোনার সংক্রমণের ঝুঁকি কম?</span></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">অধ্যাপক নাজমুন নাহার:</span>&nbsp;</font>শিশুদের মধ্যে সংক্রমণের হার কম, তবে একদমই ঝুঁকি নেই, তা নয়। করোনাভাইরাস সম্পর্কে আগে জানা ছিল যে এতে বয়স্কদের ঝুঁকি বেশি, কিন্তু আমরা কমবয়সীদেরও তীব্রভাবে ভুগতে দেখছি। এমনকি অপেক্ষাকৃত যুবা বয়সীরা মারাও গেছেন। মূলত যাঁদের রোগপ্রতিরোধ ক্ষমতা কম, তাঁদেরই ঝুঁকি বেশি। সেটা যেকোনো বয়সেই হতে পারে, এমনকি শিশুদেরও। তবে এ রকম দু–একটি ঘটনা থেকে এমনটা বলা যায় না যে আমাদের দেশে ভাইরাসটির সংক্রমণের ধারা অন্য রকম। তবে শিশুরা এ রোগের অন্যতম বাহক। যেহেতু শিশুদের মধ্যে মৃদু ধরনের সংক্রমণ হয় আর উপসর্গ কম থাকে বা না–ও থাকতে পারে, সে জন্য শিশুরা নীরবে অন্যদের সংক্রমিত করার ক্ষেত্রে বড় ভূমিকা রাখে। তাই শিশুদের সংক্রমণের বিষয়টিকে এখন গুরুত্বের সঙ্গে দেখা হচ্ছে।</p>', 'notice/6', 37, 6, 0, '2020-05-11 11:24:52', '2020-05-11 11:24:52'),
(103, 1, 'Admin', 15, 'App User', '2020-05-11 17:24:52', 'A new notice published', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">প্রথম আলো: আমরা জেনেছিলাম প্রথম দিকে যে করোনায় শিশুদের করোনার সংক্রমণের ঝুঁকি কম। কিন্তু এখন শিশুদের আক্রান্ত হওয়ার, এমনকি আইসোলেশনে থাকা শিশুর মৃত্যুর সংবাদও আমরা পেয়েছি। শিশুদের কি আদৌ করোনার সংক্রমণের ঝুঁকি কম?</span></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">অধ্যাপক নাজমুন নাহার:</span>&nbsp;</font>শিশুদের মধ্যে সংক্রমণের হার কম, তবে একদমই ঝুঁকি নেই, তা নয়। করোনাভাইরাস সম্পর্কে আগে জানা ছিল যে এতে বয়স্কদের ঝুঁকি বেশি, কিন্তু আমরা কমবয়সীদেরও তীব্রভাবে ভুগতে দেখছি। এমনকি অপেক্ষাকৃত যুবা বয়সীরা মারাও গেছেন। মূলত যাঁদের রোগপ্রতিরোধ ক্ষমতা কম, তাঁদেরই ঝুঁকি বেশি। সেটা যেকোনো বয়সেই হতে পারে, এমনকি শিশুদেরও। তবে এ রকম দু–একটি ঘটনা থেকে এমনটা বলা যায় না যে আমাদের দেশে ভাইরাসটির সংক্রমণের ধারা অন্য রকম। তবে শিশুরা এ রোগের অন্যতম বাহক। যেহেতু শিশুদের মধ্যে মৃদু ধরনের সংক্রমণ হয় আর উপসর্গ কম থাকে বা না–ও থাকতে পারে, সে জন্য শিশুরা নীরবে অন্যদের সংক্রমিত করার ক্ষেত্রে বড় ভূমিকা রাখে। তাই শিশুদের সংক্রমণের বিষয়টিকে এখন গুরুত্বের সঙ্গে দেখা হচ্ছে।</p>', 'notice/6', 37, 6, 0, '2020-05-11 11:24:52', '2020-05-11 11:24:52'),
(104, 1, 'Admin', 5, 'App User', '2020-05-11 17:28:14', 'A new notice published', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'notice/7', 37, 7, 0, '2020-05-11 11:28:14', '2020-05-11 11:28:14'),
(105, 1, 'Admin', 15, 'App User', '2020-05-11 17:28:14', 'A new notice published', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'notice/7', 37, 7, 0, '2020-05-11 11:28:14', '2020-05-11 11:28:14'),
(106, 1, 'Admin', 25, 'App User', '2020-05-11 17:28:14', 'A new notice published', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'notice/7', 37, 7, 0, '2020-05-11 11:28:14', '2020-05-11 11:28:14'),
(108, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:01', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:01', '2020-05-11 11:45:01'),
(109, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:01', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:01', '2020-05-11 11:45:01'),
(110, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:01', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:01', '2020-05-11 11:45:01'),
(111, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:01', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:01', '2020-05-11 11:45:01'),
(112, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:01', '2020-05-11 11:45:01'),
(113, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:02', '2020-05-11 11:45:02'),
(114, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:02', '2020-05-11 11:45:02'),
(115, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:02', '2020-05-11 11:45:02'),
(116, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:02', '2020-05-11 11:45:02'),
(117, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:02', '2020-05-11 11:45:02'),
(118, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:02', '2020-05-11 11:45:02'),
(119, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:02', '2020-05-11 11:45:02'),
(120, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:02', '2020-05-11 11:45:02'),
(121, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:02', '2020-05-11 11:45:02'),
(122, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:02', '2020-05-11 11:45:02'),
(123, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:02', '2020-05-11 11:45:02'),
(124, 1, 'Admin', 0, 'App User', '2020-05-11 17:45:02', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/18', 37, 18, 0, '2020-05-11 11:45:02', '2020-05-11 11:45:02'),
(125, 1, 'Admin', 5, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(126, 1, 'Admin', 14, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(127, 1, 'Admin', 15, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(128, 1, 'Admin', 20, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(129, 1, 'Admin', 21, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(130, 1, 'Admin', 23, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(131, 1, 'Admin', 25, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(132, 1, 'Admin', 44, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(133, 1, 'Admin', 5, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(134, 1, 'Admin', 14, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(135, 1, 'Admin', 15, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(136, 1, 'Admin', 16, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(137, 1, 'Admin', 20, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(138, 1, 'Admin', 21, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(139, 1, 'Admin', 23, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(140, 1, 'Admin', 25, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(141, 1, 'Admin', 44, 'App User', '2020-05-11 17:48:02', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 37, 19, 0, '2020-05-11 11:48:02', '2020-05-11 11:48:02'),
(142, 1, 'Admin', 44, 'App User', '2020-05-12 10:09:54', 'এমন বৈশাখ কখনো দেখিনি আগে', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'notice/7', 37, 7, 0, '2020-05-12 04:09:54', '2020-05-12 04:09:54'),
(143, 1, 'Admin', 5, 'App User', '2020-05-12 11:07:28', 'করোনায় নিজেকে হারিয়ে ফেলছেন না তো?', '<p>আমরা আধুনিক বা উত্তর-আধুনিক মানুষ এবং আধুনিক যুগে বাস করি। আধুনিক চিন্তা, সংস্কৃতি, ইন্ডাস্ট্রি, ব্যবসা-বাণিজ্য, বিজ্ঞান ও প্রযুক্তি আমাদের ভেতর একধরনের আধুনিক বাস্তবতা তৈরি করে দিয়েছে। যে বাস্তবতার আওতায় আধুনিক মানুষেরা একে অপরের ওপর তীব্রভাবে নির্ভরশীল, একে অপরের তীব্র প্রতিযোগী, একে অপর থেকে মানসিকভাবে প্রায় বিচ্ছিন্ন। সর্বোপরি আধুনিক মানুষ প্রকৃতির সঙ্গে তৈরি করেছে এক দীর্ঘ নেতিবাচক সম্পর্ক, যেখানে সামগ্রিক প্রকৃতিকে সে নিজের লাভের জন্য নির্বিচার শোষণ করতে অভ্যস্ত হয়ে পড়েছে।<br></p>', 'publication/20', 37, 20, 0, '2020-05-12 05:07:28', '2020-05-12 05:07:28'),
(144, 1, 'Admin', 15, 'App User', '2020-05-12 11:07:28', 'করোনায় নিজেকে হারিয়ে ফেলছেন না তো?', '<p>আমরা আধুনিক বা উত্তর-আধুনিক মানুষ এবং আধুনিক যুগে বাস করি। আধুনিক চিন্তা, সংস্কৃতি, ইন্ডাস্ট্রি, ব্যবসা-বাণিজ্য, বিজ্ঞান ও প্রযুক্তি আমাদের ভেতর একধরনের আধুনিক বাস্তবতা তৈরি করে দিয়েছে। যে বাস্তবতার আওতায় আধুনিক মানুষেরা একে অপরের ওপর তীব্রভাবে নির্ভরশীল, একে অপরের তীব্র প্রতিযোগী, একে অপর থেকে মানসিকভাবে প্রায় বিচ্ছিন্ন। সর্বোপরি আধুনিক মানুষ প্রকৃতির সঙ্গে তৈরি করেছে এক দীর্ঘ নেতিবাচক সম্পর্ক, যেখানে সামগ্রিক প্রকৃতিকে সে নিজের লাভের জন্য নির্বিচার শোষণ করতে অভ্যস্ত হয়ে পড়েছে।<br></p>', 'publication/20', 37, 20, 0, '2020-05-12 05:07:28', '2020-05-12 05:07:28'),
(145, 1, 'Admin', 25, 'App User', '2020-05-12 11:07:28', 'করোনায় নিজেকে হারিয়ে ফেলছেন না তো?', '<p>আমরা আধুনিক বা উত্তর-আধুনিক মানুষ এবং আধুনিক যুগে বাস করি। আধুনিক চিন্তা, সংস্কৃতি, ইন্ডাস্ট্রি, ব্যবসা-বাণিজ্য, বিজ্ঞান ও প্রযুক্তি আমাদের ভেতর একধরনের আধুনিক বাস্তবতা তৈরি করে দিয়েছে। যে বাস্তবতার আওতায় আধুনিক মানুষেরা একে অপরের ওপর তীব্রভাবে নির্ভরশীল, একে অপরের তীব্র প্রতিযোগী, একে অপর থেকে মানসিকভাবে প্রায় বিচ্ছিন্ন। সর্বোপরি আধুনিক মানুষ প্রকৃতির সঙ্গে তৈরি করেছে এক দীর্ঘ নেতিবাচক সম্পর্ক, যেখানে সামগ্রিক প্রকৃতিকে সে নিজের লাভের জন্য নির্বিচার শোষণ করতে অভ্যস্ত হয়ে পড়েছে।<br></p>', 'publication/20', 37, 20, 0, '2020-05-12 05:07:28', '2020-05-12 05:07:28'),
(146, 1, 'Admin', 44, 'App User', '2020-05-12 11:07:28', 'করোনায় নিজেকে হারিয়ে ফেলছেন না তো?', '<p>আমরা আধুনিক বা উত্তর-আধুনিক মানুষ এবং আধুনিক যুগে বাস করি। আধুনিক চিন্তা, সংস্কৃতি, ইন্ডাস্ট্রি, ব্যবসা-বাণিজ্য, বিজ্ঞান ও প্রযুক্তি আমাদের ভেতর একধরনের আধুনিক বাস্তবতা তৈরি করে দিয়েছে। যে বাস্তবতার আওতায় আধুনিক মানুষেরা একে অপরের ওপর তীব্রভাবে নির্ভরশীল, একে অপরের তীব্র প্রতিযোগী, একে অপর থেকে মানসিকভাবে প্রায় বিচ্ছিন্ন। সর্বোপরি আধুনিক মানুষ প্রকৃতির সঙ্গে তৈরি করেছে এক দীর্ঘ নেতিবাচক সম্পর্ক, যেখানে সামগ্রিক প্রকৃতিকে সে নিজের লাভের জন্য নির্বিচার শোষণ করতে অভ্যস্ত হয়ে পড়েছে।<br></p>', 'publication/20', 37, 20, 0, '2020-05-12 05:07:28', '2020-05-12 05:07:28'),
(147, 1, 'Admin', 14, 'App User', '2020-05-12 11:12:05', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 38, 19, 0, '2020-05-12 05:12:05', '2020-05-12 05:12:05'),
(148, 1, 'Admin', 20, 'App User', '2020-05-12 11:12:05', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 38, 19, 0, '2020-05-12 05:12:05', '2020-05-12 05:12:05'),
(149, 1, 'Admin', 25, 'App User', '2020-05-12 11:12:05', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 38, 19, 0, '2020-05-12 05:12:05', '2020-05-12 05:12:05'),
(150, 1, 'Admin', 44, 'App User', '2020-05-12 11:12:05', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 38, 19, 0, '2020-05-12 05:12:05', '2020-05-12 05:12:05'),
(151, 1, 'Admin', 5, 'App User', '2020-05-12 11:12:05', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 38, 19, 0, '2020-05-12 05:12:05', '2020-05-12 05:12:05'),
(152, 1, 'Admin', 15, 'App User', '2020-05-12 11:12:05', 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'publication/19', 38, 19, 0, '2020-05-12 05:12:05', '2020-05-12 05:12:05'),
(153, 1, 'Admin', 5, 'App User', '2020-05-12 11:15:16', 'করোনায় নিজেকে হারিয়ে ফেলছেন না তো?', '<p>আমরা আধুনিক বা উত্তর-আধুনিক মানুষ এবং আধুনিক যুগে বাস করি। আধুনিক চিন্তা, সংস্কৃতি, ইন্ডাস্ট্রি, ব্যবসা-বাণিজ্য, বিজ্ঞান ও প্রযুক্তি আমাদের ভেতর একধরনের আধুনিক বাস্তবতা তৈরি করে দিয়েছে। যে বাস্তবতার আওতায় আধুনিক মানুষেরা একে অপরের ওপর তীব্রভাবে নির্ভরশীল, একে অপরের তীব্র প্রতিযোগী, একে অপর থেকে মানসিকভাবে প্রায় বিচ্ছিন্ন। সর্বোপরি আধুনিক মানুষ প্রকৃতির সঙ্গে তৈরি করেছে এক দীর্ঘ নেতিবাচক সম্পর্ক, যেখানে সামগ্রিক প্রকৃতিকে সে নিজের লাভের জন্য নির্বিচার শোষণ করতে অভ্যস্ত হয়ে পড়েছে।<br></p>', 'publication/20', 38, 20, 0, '2020-05-12 05:15:16', '2020-05-12 05:15:16'),
(154, 1, 'Admin', 15, 'App User', '2020-05-12 11:15:16', 'করোনায় নিজেকে হারিয়ে ফেলছেন না তো?', '<p>আমরা আধুনিক বা উত্তর-আধুনিক মানুষ এবং আধুনিক যুগে বাস করি। আধুনিক চিন্তা, সংস্কৃতি, ইন্ডাস্ট্রি, ব্যবসা-বাণিজ্য, বিজ্ঞান ও প্রযুক্তি আমাদের ভেতর একধরনের আধুনিক বাস্তবতা তৈরি করে দিয়েছে। যে বাস্তবতার আওতায় আধুনিক মানুষেরা একে অপরের ওপর তীব্রভাবে নির্ভরশীল, একে অপরের তীব্র প্রতিযোগী, একে অপর থেকে মানসিকভাবে প্রায় বিচ্ছিন্ন। সর্বোপরি আধুনিক মানুষ প্রকৃতির সঙ্গে তৈরি করেছে এক দীর্ঘ নেতিবাচক সম্পর্ক, যেখানে সামগ্রিক প্রকৃতিকে সে নিজের লাভের জন্য নির্বিচার শোষণ করতে অভ্যস্ত হয়ে পড়েছে।<br></p>', 'publication/20', 38, 20, 0, '2020-05-12 05:15:16', '2020-05-12 05:15:16');
INSERT INTO `notifications` (`id`, `from_id`, `from_user_type`, `to_id`, `to_user_type`, `date_time`, `notification_title`, `message`, `view_url`, `module_id`, `module_reference_id`, `status`, `created_at`, `updated_at`) VALUES
(155, 1, 'Admin', 25, 'App User', '2020-05-12 11:15:16', 'করোনায় নিজেকে হারিয়ে ফেলছেন না তো?', '<p>আমরা আধুনিক বা উত্তর-আধুনিক মানুষ এবং আধুনিক যুগে বাস করি। আধুনিক চিন্তা, সংস্কৃতি, ইন্ডাস্ট্রি, ব্যবসা-বাণিজ্য, বিজ্ঞান ও প্রযুক্তি আমাদের ভেতর একধরনের আধুনিক বাস্তবতা তৈরি করে দিয়েছে। যে বাস্তবতার আওতায় আধুনিক মানুষেরা একে অপরের ওপর তীব্রভাবে নির্ভরশীল, একে অপরের তীব্র প্রতিযোগী, একে অপর থেকে মানসিকভাবে প্রায় বিচ্ছিন্ন। সর্বোপরি আধুনিক মানুষ প্রকৃতির সঙ্গে তৈরি করেছে এক দীর্ঘ নেতিবাচক সম্পর্ক, যেখানে সামগ্রিক প্রকৃতিকে সে নিজের লাভের জন্য নির্বিচার শোষণ করতে অভ্যস্ত হয়ে পড়েছে।<br></p>', 'publication/20', 38, 20, 0, '2020-05-12 05:15:16', '2020-05-12 05:15:16'),
(156, 1, 'Admin', 44, 'App User', '2020-05-12 11:15:16', 'করোনায় নিজেকে হারিয়ে ফেলছেন না তো?', '<p>আমরা আধুনিক বা উত্তর-আধুনিক মানুষ এবং আধুনিক যুগে বাস করি। আধুনিক চিন্তা, সংস্কৃতি, ইন্ডাস্ট্রি, ব্যবসা-বাণিজ্য, বিজ্ঞান ও প্রযুক্তি আমাদের ভেতর একধরনের আধুনিক বাস্তবতা তৈরি করে দিয়েছে। যে বাস্তবতার আওতায় আধুনিক মানুষেরা একে অপরের ওপর তীব্রভাবে নির্ভরশীল, একে অপরের তীব্র প্রতিযোগী, একে অপর থেকে মানসিকভাবে প্রায় বিচ্ছিন্ন। সর্বোপরি আধুনিক মানুষ প্রকৃতির সঙ্গে তৈরি করেছে এক দীর্ঘ নেতিবাচক সম্পর্ক, যেখানে সামগ্রিক প্রকৃতিকে সে নিজের লাভের জন্য নির্বিচার শোষণ করতে অভ্যস্ত হয়ে পড়েছে।<br></p>', 'publication/20', 38, 20, 0, '2020-05-12 05:15:16', '2020-05-12 05:15:16'),
(157, 1, 'Admin', 25, 'App User', '2020-05-12 11:16:37', 'মা–বাবার ভীতি, উদ্বেগ যেন শিশুর মধ্যে সঞ্চারিত না হয়', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">প্রথম আলো: আমরা জেনেছিলাম প্রথম দিকে যে করোনায় শিশুদের করোনার সংক্রমণের ঝুঁকি কম। কিন্তু এখন শিশুদের আক্রান্ত হওয়ার, এমনকি আইসোলেশনে থাকা শিশুর মৃত্যুর সংবাদও আমরা পেয়েছি। শিশুদের কি আদৌ করোনার সংক্রমণের ঝুঁকি কম?</span></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">অধ্যাপক নাজমুন নাহার:</span>&nbsp;</font>শিশুদের মধ্যে সংক্রমণের হার কম, তবে একদমই ঝুঁকি নেই, তা নয়। করোনাভাইরাস সম্পর্কে আগে জানা ছিল যে এতে বয়স্কদের ঝুঁকি বেশি, কিন্তু আমরা কমবয়সীদেরও তীব্রভাবে ভুগতে দেখছি। এমনকি অপেক্ষাকৃত যুবা বয়সীরা মারাও গেছেন। মূলত যাঁদের রোগপ্রতিরোধ ক্ষমতা কম, তাঁদেরই ঝুঁকি বেশি। সেটা যেকোনো বয়সেই হতে পারে, এমনকি শিশুদেরও। তবে এ রকম দু–একটি ঘটনা থেকে এমনটা বলা যায় না যে আমাদের দেশে ভাইরাসটির সংক্রমণের ধারা অন্য রকম। তবে শিশুরা এ রোগের অন্যতম বাহক। যেহেতু শিশুদের মধ্যে মৃদু ধরনের সংক্রমণ হয় আর উপসর্গ কম থাকে বা না–ও থাকতে পারে, সে জন্য শিশুরা নীরবে অন্যদের সংক্রমিত করার ক্ষেত্রে বড় ভূমিকা রাখে। তাই শিশুদের সংক্রমণের বিষয়টিকে এখন গুরুত্বের সঙ্গে দেখা হচ্ছে।</p>', 'notice/6', 37, 6, 0, '2020-05-12 05:16:37', '2020-05-12 05:16:37'),
(158, 1, 'Admin', 44, 'App User', '2020-05-12 11:16:37', 'মা–বাবার ভীতি, উদ্বেগ যেন শিশুর মধ্যে সঞ্চারিত না হয়', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">প্রথম আলো: আমরা জেনেছিলাম প্রথম দিকে যে করোনায় শিশুদের করোনার সংক্রমণের ঝুঁকি কম। কিন্তু এখন শিশুদের আক্রান্ত হওয়ার, এমনকি আইসোলেশনে থাকা শিশুর মৃত্যুর সংবাদও আমরা পেয়েছি। শিশুদের কি আদৌ করোনার সংক্রমণের ঝুঁকি কম?</span></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">অধ্যাপক নাজমুন নাহার:</span>&nbsp;</font>শিশুদের মধ্যে সংক্রমণের হার কম, তবে একদমই ঝুঁকি নেই, তা নয়। করোনাভাইরাস সম্পর্কে আগে জানা ছিল যে এতে বয়স্কদের ঝুঁকি বেশি, কিন্তু আমরা কমবয়সীদেরও তীব্রভাবে ভুগতে দেখছি। এমনকি অপেক্ষাকৃত যুবা বয়সীরা মারাও গেছেন। মূলত যাঁদের রোগপ্রতিরোধ ক্ষমতা কম, তাঁদেরই ঝুঁকি বেশি। সেটা যেকোনো বয়সেই হতে পারে, এমনকি শিশুদেরও। তবে এ রকম দু–একটি ঘটনা থেকে এমনটা বলা যায় না যে আমাদের দেশে ভাইরাসটির সংক্রমণের ধারা অন্য রকম। তবে শিশুরা এ রোগের অন্যতম বাহক। যেহেতু শিশুদের মধ্যে মৃদু ধরনের সংক্রমণ হয় আর উপসর্গ কম থাকে বা না–ও থাকতে পারে, সে জন্য শিশুরা নীরবে অন্যদের সংক্রমিত করার ক্ষেত্রে বড় ভূমিকা রাখে। তাই শিশুদের সংক্রমণের বিষয়টিকে এখন গুরুত্বের সঙ্গে দেখা হচ্ছে।</p>', 'notice/6', 37, 6, 0, '2020-05-12 05:16:37', '2020-05-12 05:16:37'),
(159, 1, 'Admin', 21, 'App User', '2020-05-13 06:38:43', 'BILS initiated a new course', 'BILS created a new course entitle: বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', 'course/3', 7, 3, 0, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(160, 1, 'Admin', 15, 'App User', '2020-05-13 06:38:43', 'BILS initiated a new course', 'BILS created a new course entitle: বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', 'course/3', 7, 3, 0, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(161, 1, 'Admin', 16, 'App User', '2020-05-13 06:38:43', 'BILS initiated a new course', 'BILS created a new course entitle: বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', 'course/3', 7, 3, 0, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(162, 1, 'Admin', 25, 'App User', '2020-05-13 06:38:43', 'BILS initiated a new course', 'BILS created a new course entitle: বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', 'course/3', 7, 3, 0, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(163, 1, 'Admin', 23, 'App User', '2020-05-13 06:38:43', 'BILS initiated a new course', 'BILS created a new course entitle: বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', 'course/3', 7, 3, 0, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(164, 1, 'Admin', 14, 'App User', '2020-05-13 06:38:43', 'BILS initiated a new course', 'BILS created a new course entitle: বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', 'course/3', 7, 3, 0, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(165, 1, 'Admin', 20, 'App User', '2020-05-13 06:38:43', 'BILS initiated a new course', 'BILS created a new course entitle: বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', 'course/3', 7, 3, 0, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(166, 1, 'Admin', 5, 'App User', '2020-05-13 06:38:43', 'BILS initiated a new course', 'BILS created a new course entitle: বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', 'course/3', 7, 3, 0, '2020-05-13 00:38:43', '2020-05-13 00:38:43'),
(167, 1, 'Admin', 44, 'App User', '2020-05-13 06:38:43', 'BILS initiated a new course', 'BILS created a new course entitle: বাড়িতে করোনা রোগীর সেবায় সাত পরামর্শ', 'course/3', 7, 3, 0, '2020-05-13 00:38:43', '2020-05-13 00:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` int(11) NOT NULL,
  `publication_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `details` text COLLATE utf8mb4_unicode_ci,
  `publication_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authors` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` tinyint(1) DEFAULT NULL COMMENT '0: In-active, 1: Active',
  `created_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `updated_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `publication_title`, `details`, `publication_type`, `authors`, `attachment`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'বিশ্বে ১০০ কোটি শিশুর স্কুলে যাওয়া বন্ধ, দেশে ৩ কোটি ৬৭ লাখ', 'মহামারি আকারে করোনাভাইরাস ছড়িয়ে পড়ায় বিশ্বব্যাপী শিক্ষাব্যবস্থা বিপর্যস্ত হয়ে পড়েছে। বিশ্বের ১১০টি দেশের সব শিক্ষাপ্রতিষ্ঠান বন্ধ হয়ে গেছে। প্রায় ১০০ কোটি শিশু-কিশোর স্কুলে যাওয়া বন্ধ করে দিয়েছে। এর মধ্যে সবচেয়ে বেশি শিশু-কিশোর স্কুলে যাওয়া বন্ধ করে দিয়েছে চীনে। ওই তালিকায় চতুর্থ স্থানে রয়েছে বাংলাদেশের নাম। চীনে ২৩ কোটি ৩০ লাখ ও বাংলাদেশে ৩ কোটি ৬৭ লাখ শিশু স্কুলে যাচ্ছে না। ওই তালিকায় দ্বিতীয় ও তৃতীয় স্থানে রয়েছে ইন্দোনেশিয়া ও পাকিস্তানের নাম।\r\n\r\nগত বুধবার জাতিসংঘের দুর্যোগবিষয়ক ওয়েবসাইট রিলিফ ওয়েবে প্রকাশিত এক প্রতিবেদনে এই তথ্য উঠে এসেছে। তবে সংস্থাটি এ–সংক্রান্ত সব তথ্য সংগ্রহ করেছে জাতিসংঘ শিশু তহবিলের (ইউনিসেফ) একটি প্রতিবেদন থেকে। এই পরিস্থিতিতে ইউনিসেফ থেকে বিশ্বের শিশুদের শিক্ষা পরিস্থিতি নিয়ে দুশ্চিন্তায় পড়েছে। তারা গত বৃহস্পতিবার বিশ্বের ৭৩টি দেশের শিক্ষামন্ত্রীদের সঙ্গে বৈঠক করেছে। অনলাইন বা ডিজিটাল মাধ্যমকে ব্যবহার করে এসব শিশুর কীভাবে শিক্ষা কার্যক্রম চালিয়ে নেওয়া যায়, সে বিষয়ে শিক্ষামন্ত্রীদের মতামত জানতে চেয়েছে তারা।', 'News', 'BILS', '3957026831588744371Nuxtjs-Cheat-Sheet.pdf', 1, 'Momit', 'Momit', '2020-03-20 10:16:46', '2020-05-06 10:40:01'),
(4, 'করোনা আক্রান্তের সংস্পর্শে আসা মানুষের ওপর নজরদারি জরুরি', '<p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">করোনা সংক্রমণের সন্দেহভাজন মানুষ খুঁজে বের করার কাজটি দুর্বল হয়ে পড়েছে। করোনা আক্রান্ত মানুষের সংস্পর্শে আসা ব্যক্তি চিহ্নিত করা এবং তাঁদের নজরদারির বিষয়টি নিশ্চিত না হলে সংক্রমণ বেড়ে যাওয়ার আশঙ্কা থাকে। রাজধানীর বিভিন্ন এলাকা ও কিছু জেলায় খোঁজ নিয়ে জানা গেছে, কাজটি ঠিকমতো হচ্ছে না।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">বিশ্ব স্বাস্থ্য সংস্থা কোভিড–১৯ আক্রান্ত বা সন্দেহভাজন রোগীর সংস্পর্শে আসা ব্যক্তিদের খুঁজে বের করার কাজটিকে বলছে ‘কন্ট্যাক্ট ট্রেসিং’। অর্থাৎ আক্রান্ত বা সন্দেহভাজন ব্যক্তিকে অনুসরণ করতে হবে, খুঁজে বের করতে হবে, তার ওপর নজরদারি করতে হবে। উপসর্গ দেখা দিলে তাকে পরীক্ষার আওতায় নিতে হবে। রোগ ধরা পড়লে চিকিৎসা দিতে হবে।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">কন্ট্যাক্ট ট্রেসিংয়ের কাজটি শুরু থেকে করে আসছিল সরকারের রোগতত্ত্ব, রোগনিয়ন্ত্রণ ও গবেষণা প্রতিষ্ঠান (আইইডিসিআর)। গত মার্চে মাদারীপুর জেলার শিবচর এলাকায় ৯ জন করোনা রোগী শনাক্ত হয়েছিল। আইইডিসিআরের তিনজন স্বাস্থ্যকর্মী ২০ ও ২১ মার্চ ওই ৯ জনের মধ্যে ছয়জনের কন্ট্যাক্ট ট্রেসিং করেছিলেন। তাঁদের সংস্পর্শে আসা ৩৫০ জনকে চিহ্নিত করা হয়েছিল। তাঁদের মধ্যে ১০৭ জনকে কোয়ারেন্টিনে (সঙ্গনিরোধ) রাখা হয়। বাকি ২৪৩ জনের কোনো হদিস পাওয়া যায়নি। এরপর পরিস্থিতি নিয়ন্ত্রণে আনতে এলাকা লকডাউন (অবরুদ্ধ) করা হয়। জেলা প্রশাসন ও পুলিশ প্রশাসন এ কাজে স্বাস্থ্য বিভাগকে সহায়তা করেছিল। বর্তমানে শিবচরে ২১ জন রোগী আছে।</p>', 'Corona virus', 'Bangladesh Institute of Labour Studies', '', 1, 'Momit', 'Momit', '2020-05-08 01:23:53', '2020-05-08 01:41:34'),
(5, 'হাতীবান্ধায় প্রথম করোনা রোগী শনাক্ত', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">লালমনিরহাটের হাতীবান্ধায় প্রথমবারের মতো এক করোনা রোগী শনাক্ত হয়েছে। গতকাল বৃহস্পতিবার রাতে হাতীবান্ধা উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা নাঈম হাসান এ তথ্য নিশ্চিত করেছেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">করোনায় আক্রান্ত ওই রোগী একজন নারী। তাঁর বয়স ২৩ বছর। তিনি কুমিল্লার একটি ইটভাটায় শ্রমিক হিসেবে কাজ করতেন। তাঁর বাড়ি হাতীবান্ধা উপজেলার সিংগীমারী ইউনিয়নে। গত রোববার তিনি বাড়ি ফিরে আসেন।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">এ বিষয়ে সিংগীমারী ইউনিয়ন পরিষদের চেয়ারম্যান মনোয়ার হোসেন জানান, ‘ওই নারী ৩ মে বাড়িতে আসেন। খবর পেয়ে তাঁকে হোম কোয়ারেন্টিনে রাখা হয়। পরে উপজেলা স্বাস্থ্য কমপ্লেক্সে তাঁর ব্যাপারে খবর পাঠাই। ৪ মে সেখান থেকে স্বাস্থ্যকর্মীরা তাঁর বাড়িতে এসে নমুনা সংগ্রহ করে রংপুর মেডিকেল কলেজের ল্যাবে পরীক্ষার জন্য পাঠায়।’</p>', 'Corona virus', 'Bangladesh Institute of Labour Studies', '', 1, 'Momit', 'Momit', '2020-05-08 01:27:45', '2020-05-08 01:41:44'),
(6, 'করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়।', '<p>করোনাভাইরাসের সংক্রমণে শতকরা ৮০-৮৫ ভাগ ক্ষেত্রে মৃদু উপসর্গ দেখা দেয়। এ ক্ষেত্রে আক্রান্ত ব্যক্তি বাড়িতে কোয়ারেন্টিনে থেকেই যথাযথ বিশ্রাম ও চিকিৎসায় সম্পূর্ণ সুস্থ হয়ে ওঠেন। এই পরিস্থিতিতে বাড়িতে রোগীর যত্নের দায়িত্ব নিতে হয় পরিবারের কাউকে। পরিবারের সেই সদস্য হবেন সবচেয়ে সুস্থ, অপেক্ষাকৃত তরুণ ও সংক্রমণের ঝুঁকি কম, এমন একজন। এ ছাড়া রোগীর সেবা দেওয়ার সময় থাকতে হবে সতর্ক। মনে রাখতে হবে, একটু অসাবধান হলেই সেবা দানকারীও সংক্রমিত হতে পারেন এবং তাঁর মাধ্যমে বাড়ির অন্যরাও আক্রান্ত হতে পারেন। কাজেই কিছু বিষয় অবশ্যই মেনে চলতে হবে:<br></p>', NULL, 'Bangladesh Institute of Labour Studies', '13374518511589213923Presentation Certificate .png', 1, 'Momit', 'Momit', '2020-05-11 10:08:25', '2020-05-11 10:18:43'),
(7, 'জিরোক্যাল ড্রিংকস অ্যান্ড ডেসার্টস রেসিপি পর্ব ১৭: কুনাফা', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><br class=\"Apple-interchange-newline\"><iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/JT2v83L06nI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" style=\"outline: 0px; padding: 0px; margin: 0px; border-width: 0px; border-style: initial; width: 642px; height: 361.266px;\"></iframe></p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">ঈদের দিন সকাল বা দুপুরের খাবারের পর ডেসার্ট এ কিংবা অতিথি আপ্যায়নে সেমাই একটি প্রচলিত খাবার। জিরোক্যাল ড্রিংকস অ্যান্ড ডেসার্টস এর আজকের পর্বে আমরা জানব কীভাবে বানানো যায় সেমাই দিয়ে তৈরি মিষ্টি খাবার কুনাফা।</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">কুনাফা তৈরির উপকরণ:</span><br style=\"outline: 0px; padding: 0px; margin: 0px;\">সেমাই ১ প্যাকেট<br style=\"outline: 0px; padding: 0px; margin: 0px;\">দুধের খিরসা পরিমাণমতো<br style=\"outline: 0px; padding: 0px; margin: 0px;\">মাখন ৩ চা চামচ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">বাদাম আধা কাপ<br style=\"outline: 0px; padding: 0px; margin: 0px;\">জিরোক্যাল ২ স্যাশে</p><p style=\"outline: 0px; padding: 0px; margin-bottom: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">কুনাফা তৈরির পদ্ধতি</span></font><br style=\"outline: 0px; padding: 0px; margin: 0px;\">কুনাফা তৈরির জন্য চুলায় কড়াই গরম করে তাতে মাখন দিন। মাখন গরম হলে সেমাই দিয়ে হালকা বাদামি করে ভেজে নিন। সেমাই ভাজার সময় বাদাম ও জিরোক্যাল দিয়ে দিয়ে ভালোভাবে নেড়ে নিন। এবার আলাদা একটি পাত্রে মাখন লাগিয়ে নিন। ভাজা সেমাইয়ের মিশ্রণটি অর্ধেক পরিমাণে পাত্রে ঢালুন। এবার সেমাইয়ের স্তরের ওপরে খিরসা ঢেলে দিন। খিরসার স্তরের ওপরে এবার বাকি ভাজা সেমাই দিয়ে দিন। এবার এ মিশ্রণটি ফ্রিজে রেখে ঠান্ডা করে জমিয়ে নিন। তৈরি হয়ে গেল কুনাফা। পরিবেশনের সময় টুকরো করে কেটে নিয়ে পরিবেশন করুন সুস্বাদু কুনাফা।</p>', 'News', 'Bangladesh Institute of Labour Studies', '16073348591589214104prosanta-kumar-chaki.pdf', 1, 'Momit', '', '2020-05-11 10:21:44', '2020-05-11 10:21:44'),
(8, 'আইসোলেশনে যা খাবেন', '<p style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\">করোনাভাইরাসে সংক্রমিত হলে আক্রান্ত ব্যক্তি ও তাঁর সংস্পর্শে আসা ব্যক্তিদের আইসোলেশনে থাকতে বলা হচ্ছে। মৃদু উপসর্গ আছে, এমন বেশির ভাগ রোগী বাড়িতে আইসোলেশনে থেকেই চিকিৎসা নিয়ে সেরে উঠছেন। তবে শুধু চিকিৎসা নয়, আইসোলেশনে থাকা ব্যক্তির খাদ্যাভ্যাস আর খাবার পরিবেশনের পদ্ধতির দিকে নজর দেওয়াও ভীষণ জরুরি।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><span style=\"outline-color: initial; outline-style: initial;\">১</span>. করোনায় আক্রান্ত ব্যক্তি একটি আলাদা ঘরে থাকবেন। বাড়িতে ঘরের স্বল্পতা থাকলে একই ঘরে আলাদা পর্দাঘেরা কোনায় থাকবেন। খাওয়ার সময় বাড়িতে সদ্য তৈরি খাবার তাঁর দরজার কাছে কেউ একজন রেখে আসবেন। তবে এ ক্ষেত্রে খাবার সরবরাহের দায়িত্ব পালন করবেন বাড়ির সবচেয়ে সুস্থ ও কম ঝুঁকিপূর্ণ ব্যক্তিটি। তিনি খাবার দেওয়ার সময় অবশ্যই মাস্ক ও গ্লাভস ব্যবহার করবেন।</p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-bottom: 16px; overflow: hidden; line-height: 30px; overflow-wrap: break-word;\"><font face=\"Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif\"><span style=\"font-size: 18px; background-color: rgb(240, 240, 237); outline-color: initial; outline-style: initial;\">২</span></font>. করোনায় আক্রান্ত ব্যক্তির প্লেট, গ্লাস, চামচ ও অন্যান্য ব্যবহার্য তৈজসপত্র সম্পূর্ণ আলাদা থাকবে। এসব জিনিস প্রতিবার ব্যবহারের পর গ্লাভস পরে ভালো করে সাবান-পানি দিয়ে পরিষ্কার করে অন্যদের থালা-বাসন থেকে আলাদা করে রাখতে হবে।</p>', 'Corona virus', 'Bangladesh Institute of Labour Studies', '7531855821589214271prosanta-kumar-chaki.pdf', 1, 'Momit', '', '2020-05-11 10:24:31', '2020-05-11 10:24:31'),
(18, 'প্রকৃতি আছে তার আপন খেয়ালে।', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'News', 'Bangladesh Institute of Labour Studies', '9651441571589219101IMG_5790.JPG', 1, 'Momit', 'Momit', '2020-05-11 11:45:01', '2020-05-11 11:47:11'),
(19, 'খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি প', '<p>প্রকৃতি আছে তার আপন খেয়ালে। পরিবর্তন নেই পৃথিবীর আহ্নিক গতি আর বার্ষিক গতিতে। চৈত্র পেরিয়ে বৈশাখ ঠিকই হাজির হয়েছে। কিন্তু মন ভালো নেই মানুষের। এমন সংকট এর আগে তো কেউ দেখেনি। এ এক বিস্ময়কর ক্রান্তি। নববর্ষ গেল। অথচ সে অর্থে প্রাণের স্পন্দন নেই। আমাদের অন্যতম বড় উৎসবের দিনে চোখে পড়েনি খোঁপায় ফুল আর লাল পাড় সাদা শাড়ি পরা কোনো তরুণী কিংবা লাল-সাদা পাঞ্জাবি পরা কোনো তরুণ। ঘরবন্দী আবালবৃদ্ধবণিতার উদযাপন নেই। বর্তমানের সংকট আর ভবিষ্যতের শঙ্কায় অদ্ভুত সময় পার করে চলেছে সবাই।<br></p>', 'News', 'Bangladesh Institute of Labour Studies', '602345221589219282IMG_5544.JPG', 1, 'Momit', 'Momit', '2020-05-11 11:48:02', '2020-05-12 04:27:30'),
(20, 'করোনায় নিজেকে হারিয়ে ফেলছেন না তো?', '<p>আমরা আধুনিক বা উত্তর-আধুনিক মানুষ এবং আধুনিক যুগে বাস করি। আধুনিক চিন্তা, সংস্কৃতি, ইন্ডাস্ট্রি, ব্যবসা-বাণিজ্য, বিজ্ঞান ও প্রযুক্তি আমাদের ভেতর একধরনের আধুনিক বাস্তবতা তৈরি করে দিয়েছে। যে বাস্তবতার আওতায় আধুনিক মানুষেরা একে অপরের ওপর তীব্রভাবে নির্ভরশীল, একে অপরের তীব্র প্রতিযোগী, একে অপর থেকে মানসিকভাবে প্রায় বিচ্ছিন্ন। সর্বোপরি আধুনিক মানুষ প্রকৃতির সঙ্গে তৈরি করেছে এক দীর্ঘ নেতিবাচক সম্পর্ক, যেখানে সামগ্রিক প্রকৃতিকে সে নিজের লাভের জন্য নির্বিচার শোষণ করতে অভ্যস্ত হয়ে পড়েছে।<br></p>', 'News', 'Bangladesh Institute of Labour Studies', '1734929286158928054134859485_1755832061172801_599560009839280128_n.jpg', 1, 'Momit', 'Momit', '2020-05-12 04:49:01', '2020-05-12 04:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `publication_categories`
--

CREATE TABLE `publication_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name_bn` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '0' COMMENT '0: In-active, 1: Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publication_categories`
--

INSERT INTO `publication_categories` (`id`, `category_name`, `category_name_bn`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'News', 'সংবাদ', 'this is about news', 1, '2020-03-20 10:08:14', '2020-05-14 05:23:18'),
(2, 'Corona Virus', 'করোনা ভাইরাস', NULL, 1, '2020-03-20 10:08:42', '2020-05-14 05:29:53'),
(3, 'Labour Law', 'লেবার আইন', 'labour law', 1, '2020-05-14 05:30:24', '2020-05-14 05:30:24'),
(4, 'new', 'নতুন', NULL, 1, '2020-05-14 08:43:37', '2020-05-14 12:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_mobile` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `short_name`, `site_name`, `admin_email`, `admin_mobile`, `site_url`, `admin_url`, `logo`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh Institute of Labour Studies', 'BILS', 'BILS APPLICATION', 'admin@bils.com', '01980340482', NULL, '/admin', NULL, 'Dhaka', NULL, '2020-02-03 11:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `survey_categories`
--

CREATE TABLE `survey_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name_bn` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '0' COMMENT '0: In-active, 1: Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_categories`
--

INSERT INTO `survey_categories` (`id`, `category_name`, `category_name_bn`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Survey Category 1', 'সার্ভে ক্যাটাগরি', NULL, 1, '2020-02-10 20:00:45', '2020-05-14 07:56:46'),
(3, 'Survey Category 3', 'সার্ভে ক্যাটেগরি ২', 'asda', 1, '2020-02-10 20:04:45', '2020-05-14 07:57:11'),
(4, 'new', 'নতুন', NULL, 1, '2020-05-14 07:57:25', '2020-05-14 07:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `survey_groups`
--

CREATE TABLE `survey_groups` (
  `id` int(11) NOT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL COMMENT 'From app_user_groups',
  `status` tinyint(1) NOT NULL COMMENT '0: In-active, 1: Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_masters`
--

CREATE TABLE `survey_masters` (
  `id` int(11) NOT NULL,
  `survey_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `survey_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `survey_category` int(11) NOT NULL COMMENT 'From survey_categories ',
  `survey_type` int(11) NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL COMMENT '0: Initiate, 1: Published, 2: Closed, 3: In-active',
  `created_by` int(11) NOT NULL COMMENT 'Admin User ID',
  `updated_by` int(11) NOT NULL COMMENT 'Admin User ID',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_masters`
--

INSERT INTO `survey_masters` (`id`, `survey_code`, `survey_name`, `start_date`, `end_date`, `survey_category`, `survey_type`, `details`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(21, '', 'New Survey 1', '2020-03-12', '2020-03-31', 1, 0, 'This is the test survey 1', 1, 1, 1, '2020-03-11 18:53:50', '2020-03-11 18:53:50'),
(22, '', 'New Survey 2', '2020-03-12', '2020-03-28', 1, 0, 'Test survey 2', 1, 1, 1, '2020-03-11 19:43:44', '2020-03-11 19:43:44'),
(24, NULL, 'Corona Virus', '2020-03-22', '2020-05-27', 1, 0, 'test discription', 1, 1, 1, '2020-03-20 11:08:20', '2020-03-20 11:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `survey_participants`
--

CREATE TABLE `survey_participants` (
  `id` int(11) NOT NULL,
  `app_user_id` int(11) NOT NULL COMMENT 'survey participants, comes from app_users table',
  `survey_id` int(11) NOT NULL,
  `answer_date` date NOT NULL,
  `survey_completed` tinyint(1) DEFAULT NULL COMMENT '0: Not-completed, 1: Completed',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_participants`
--

INSERT INTO `survey_participants` (`id`, `app_user_id`, `survey_id`, `answer_date`, `survey_completed`, `created_at`, `updated_at`) VALUES
(1, 5, 21, '2020-03-12', 0, '2020-03-12 01:15:59', NULL),
(2, 16, 21, '2020-03-12', 1, '2020-03-12 01:47:31', '2020-04-04 22:38:32'),
(3, 14, 21, '2020-03-12', 1, '2020-03-12 01:48:08', '2020-04-04 22:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `survey_participant_answers`
--

CREATE TABLE `survey_participant_answers` (
  `id` int(11) NOT NULL,
  `survey_participan_id` int(11) NOT NULL,
  `survey_question_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_participant_answers`
--

INSERT INTO `survey_participant_answers` (`id`, `survey_participan_id`, `survey_question_id`, `created_at`, `updated_at`) VALUES
(1, 1, 81, '2020-03-12 01:22:21', NULL),
(2, 1, 82, '2020-03-12 01:22:21', NULL),
(3, 1, 83, '2020-03-12 01:23:21', NULL),
(4, 1, 84, '2020-03-12 01:23:21', NULL),
(5, 1, 85, '2020-03-12 01:23:21', NULL),
(6, 1, 86, '2020-03-12 01:23:21', NULL),
(7, 2, 81, '2020-03-12 01:49:54', NULL),
(8, 2, 82, '2020-03-12 01:49:54', NULL),
(9, 2, 83, '2020-03-12 01:52:46', NULL),
(10, 2, 84, '2020-03-12 01:52:46', NULL),
(11, 2, 85, '2020-03-12 01:52:46', NULL),
(12, 2, 86, '2020-03-12 01:52:46', NULL),
(13, 3, 81, '2020-03-12 01:52:46', NULL),
(14, 3, 82, '2020-03-12 01:52:46', NULL),
(15, 3, 83, '2020-03-12 01:52:46', NULL),
(16, 3, 84, '2020-03-12 01:52:46', NULL),
(17, 3, 85, '2020-03-12 01:52:46', NULL),
(18, 3, 86, '2020-03-12 01:52:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `survey_participant_answer_options`
--

CREATE TABLE `survey_participant_answer_options` (
  `id` int(11) NOT NULL,
  `survey_participant_answer_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT '0',
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_participant_answer_options`
--

INSERT INTO `survey_participant_answer_options` (`id`, `survey_participant_answer_id`, `option_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Kajol', '2020-03-12 01:24:27', NULL),
(2, 2, 0, '27', '2020-03-12 01:24:27', NULL),
(3, 3, 132, '', '2020-03-12 01:35:41', NULL),
(4, 4, 134, '', '2020-03-12 01:35:41', NULL),
(5, 4, 137, '', '2020-03-12 01:35:41', NULL),
(6, 5, 140, '', '2020-03-12 01:35:41', NULL),
(7, 5, 141, '', '2020-03-12 01:35:41', NULL),
(8, 6, 145, '', '2020-03-12 01:35:41', NULL),
(9, 7, 0, 'chaki', '2020-03-12 01:54:02', NULL),
(10, 8, 0, '27', '2020-03-12 01:54:02', NULL),
(11, 9, 132, '', '2020-03-12 02:14:41', NULL),
(12, 10, 10, '134', '2020-03-12 02:14:41', NULL),
(13, 11, 140, '', '2020-03-12 02:14:41', NULL),
(14, 11, 141, '', '2020-03-12 02:14:41', NULL),
(15, 12, 147, '', '2020-03-12 02:14:41', NULL),
(16, 12, 145, '', '2020-03-12 02:14:41', NULL),
(17, 13, 0, 'Momit', '2020-03-12 02:14:41', NULL),
(18, 13, 0, '35', '2020-03-12 02:14:41', NULL),
(19, 14, 132, '', '2020-03-12 02:14:41', NULL),
(20, 15, 135, '', '2020-03-12 02:14:41', NULL),
(21, 16, 136, '', '2020-03-12 02:14:41', NULL),
(22, 17, 142, '', '2020-03-12 02:14:41', NULL),
(23, 17, 143, '', '2020-03-12 02:14:41', NULL),
(24, 18, 147, '', '2020-03-12 02:14:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions`
--

CREATE TABLE `survey_questions` (
  `id` int(11) NOT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `question_details` text COLLATE utf8mb4_unicode_ci,
  `question_type` int(11) DEFAULT NULL COMMENT '1: text 2: number ;3:radio ;3:checkbox',
  `display_option` tinyint(1) DEFAULT NULL COMMENT '1: Row, 2: Single Column, 3: Multiple Column',
  `serial` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_questions`
--

INSERT INTO `survey_questions` (`id`, `survey_id`, `question_details`, `question_type`, `display_option`, `serial`, `created_at`, `updated_at`) VALUES
(81, 21, 'Name', 1, 1, 1, '2020-03-11 18:54:05', '2020-03-20 10:23:00'),
(82, 21, 'Age', 2, 1, 2, '2020-03-11 18:54:22', '2020-03-11 18:54:22'),
(83, 21, 'What is your Profession?', 3, 2, 3, '2020-03-11 18:55:07', '2020-03-11 18:55:07'),
(84, 21, 'Which are your favourite food?', 4, 3, 4, '2020-03-11 18:56:46', '2020-03-11 18:56:46'),
(85, 21, 'Which are your favourite fruits?', 4, 3, 5, '2020-03-11 18:58:13', '2020-03-11 18:58:13'),
(86, 21, 'Which place do you like to visit on vacation?', 4, 2, 6, '2020-03-11 18:59:50', '2020-03-11 18:59:50'),
(87, 22, 'Name', 1, 1, 1, '2020-03-11 19:43:58', '2020-03-11 19:43:58'),
(88, 22, 'Age', 2, 1, 2, '2020-03-11 19:44:37', '2020-03-11 19:44:37'),
(89, 22, 'What is your Favourite Drink?', 3, 3, 3, '2020-03-11 19:46:09', '2020-03-11 19:46:09'),
(90, 24, 'What is your name', 1, 1, 1, '2020-03-20 11:09:24', '2020-03-20 11:09:24'),
(91, 24, 'What is your occupation?', 3, 3, 2, '2020-03-20 11:11:49', '2020-03-20 11:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `survey_question_answer_options`
--

CREATE TABLE `survey_question_answer_options` (
  `id` int(11) NOT NULL,
  `survey_question_id` int(11) NOT NULL DEFAULT '0',
  `answer_option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_question_answer_options`
--

INSERT INTO `survey_question_answer_options` (`id`, `survey_question_id`, `answer_option`, `created_at`, `updated_at`) VALUES
(94, 69, 'dfdfdf', '2020-03-06 17:40:24', '2020-03-06 17:41:07'),
(95, 69, 'dfdfdfd', '2020-03-06 17:40:24', '2020-03-06 17:41:07'),
(96, 69, 'sfdsfdsf', '2020-03-06 17:40:35', '2020-03-06 17:41:07'),
(98, 69, 'fffff', '2020-03-06 17:41:07', '2020-03-06 17:41:07'),
(130, 83, 'Student', '2020-03-11 18:55:07', '2020-03-11 18:55:07'),
(131, 83, 'Teacher', '2020-03-11 18:55:07', '2020-03-11 18:55:07'),
(132, 83, 'Job Holder', '2020-03-11 18:55:07', '2020-03-11 18:55:07'),
(133, 83, 'Banker', '2020-03-11 18:55:07', '2020-03-11 18:55:07'),
(134, 84, 'Mutton Kaschi', '2020-03-11 18:56:46', '2020-03-11 18:56:46'),
(135, 84, 'Beef Kaschi', '2020-03-11 18:56:46', '2020-03-11 18:56:46'),
(136, 84, 'Teheri', '2020-03-11 18:56:46', '2020-03-11 18:56:46'),
(137, 84, 'Pizza', '2020-03-11 18:56:46', '2020-03-11 18:56:46'),
(138, 84, 'Burgur', '2020-03-11 18:56:46', '2020-03-11 18:56:46'),
(139, 84, 'Kichuri', '2020-03-11 18:56:46', '2020-03-11 18:56:46'),
(140, 85, 'Mango', '2020-03-11 18:58:13', '2020-03-11 18:58:13'),
(141, 85, 'Apple', '2020-03-11 18:58:13', '2020-03-11 18:58:13'),
(142, 85, 'Banana', '2020-03-11 18:58:13', '2020-03-11 18:58:13'),
(143, 85, 'Grapes', '2020-03-11 18:58:13', '2020-03-11 18:58:13'),
(144, 85, 'Goava', '2020-03-11 18:58:13', '2020-03-11 18:58:13'),
(145, 86, 'Cox\'s Bazzar', '2020-03-11 18:59:50', '2020-03-11 18:59:50'),
(146, 86, 'Bandarban', '2020-03-11 18:59:50', '2020-03-11 18:59:50'),
(147, 86, 'Sylet', '2020-03-11 18:59:50', '2020-03-11 18:59:50'),
(148, 86, 'Bagura', '2020-03-11 18:59:50', '2020-03-11 18:59:50'),
(149, 86, 'Sundorbon', '2020-03-11 18:59:50', '2020-03-11 18:59:50'),
(150, 86, 'Others', '2020-03-11 18:59:50', '2020-03-11 18:59:50'),
(151, 89, 'CocaCola', '2020-03-11 19:46:09', '2020-03-11 19:46:09'),
(152, 89, 'Sprite', '2020-03-11 19:46:09', '2020-03-11 19:46:09'),
(153, 89, 'Fanta', '2020-03-11 19:46:09', '2020-03-11 19:46:09'),
(154, 89, 'Marinda', '2020-03-11 19:46:09', '2020-03-11 19:46:09'),
(155, 89, 'Speed', '2020-03-11 19:46:09', '2020-03-11 19:46:09'),
(156, 91, 'Student', '2020-03-20 11:11:49', '2020-03-20 11:11:49'),
(157, 91, 'Job holder', '2020-03-20 11:11:49', '2020-03-20 11:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT '3' COMMENT '1:admin, 2:app-use, 3: teaher',
  `status` tinyint(1) NOT NULL COMMENT '0:  In-active, 1: Active, 2: Deleted',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `user_profile_image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `contact_no`, `nid`, `address`, `user_type`, `status`, `remarks`, `user_profile_image`, `updated_at`) VALUES
(1, 'Teacher 1', 'teacher1@gmail.com', '1234', '1234', 'address1sf', 3, 1, 'This is teacher 1 profile details.', '1589350419.jpg', '2020-05-13 00:13:39'),
(4, 'Teacher 2', 'teacher2@gmail.com', '123', '1234', 'address 2', 3, 1, '', '', '2020-03-27 19:03:38'),
(5, 'Teacher 3', 'teacher3@gmail.com', '1111', '11111', NULL, 3, 1, '', '', '2020-03-27 19:03:41'),
(6, 'Tecer 4', 'teacher4@gmail.com', '444', '444', 'gabtali', 3, 1, 'asdfghjkl;', '1585338012.jpg', '2020-03-27 13:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` tinyint(1) DEFAULT '1' COMMENT '1:admin user , 2:App user, 3: Teacher',
  `user_profile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_status` tinyint(1) DEFAULT NULL COMMENT '1:logged in, 0 not logged in',
  `status` tinyint(1) DEFAULT NULL COMMENT '1:active, 0:in-active, 2: Deteted',
  `remarks` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nid_no`, `contact_no`, `email`, `address`, `user_type`, `user_profile_image`, `password`, `remember_token`, `login_status`, `status`, `remarks`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Momit', '12345', '01980340482', 'momit@bils.com', 'Mohammadpur,dhaka', 1, '1585081916.jpg', '$2y$10$ta1BmsLnz8H4tUqFJHI8puHxhCldn9DSwVfQjc3g59v9YSxM7.Trq', NULL, 0, 1, 'He is good enough', '2020-01-24 11:30:45', '2020-01-24 00:51:31', '2020-05-14 01:07:16'),
(39, 'SiaM', '1231', '01747083028', 'siam@gmail.com', 'asdasdas', 1, '1584702052.jpg', '$2y$10$ta1BmsLnz8H4tUqFJHI8puHxhCldn9DSwVfQjc3g59v9YSxM7.Trq', NULL, 0, 1, 'asdasd', NULL, '2020-03-19 07:16:15', '2020-03-24 13:50:52'),
(40, 'Mizanur Rahman', '1231231', '0123123', 'mizanur@gmail.com', NULL, 1, '', NULL, NULL, NULL, 1, 'asfsafsafasfas', NULL, '2020-03-19 07:29:16', '2020-03-21 14:35:38'),
(41, 'Mr Chaki', '2121', '01757808214', 'chaki@gmail.com', NULL, 1, '', NULL, NULL, NULL, 1, 'sgsdgsdgdsfg sdfgd f sg sdgsda', NULL, '2020-03-19 07:29:42', '2020-03-21 14:35:53'),
(42, 'Teacher 1', '1234', '1234', 'teacher1@gmail.com', 'address1sf', 1, '1589350419.jpg', NULL, NULL, NULL, 1, 'This is teacher 1 profile details.', NULL, '2020-03-20 02:10:30', '2020-05-13 00:13:39'),
(45, 'Teacher 2', '1234', '123', 'teacher2@gmail.com', 'address 2', 3, '', NULL, NULL, NULL, 1, '', NULL, '2020-03-20 02:28:24', '2020-03-27 19:42:19'),
(60, 'admin 1', '111', '111', 'admin1@gmail.com', NULL, 1, '', NULL, NULL, NULL, 1, '', NULL, '2020-03-20 04:26:38', '2020-03-27 19:04:17'),
(61, 'Teacher 3', '11111', '1111', 'teacher3@gmail.com', NULL, 3, '', NULL, NULL, NULL, 0, '', NULL, '2020-03-20 05:12:26', '2020-03-27 19:42:14'),
(62, 'Tecer 4', '444', '444', 'teacher4@gmail.com', 'gabtali', 3, '1585338012.jpg', NULL, NULL, NULL, 1, 'asdfghjkl;', NULL, '2020-03-27 13:23:46', '2020-03-27 19:42:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_name_bn` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Admin User, 2: App User',
  `status` int(11) NOT NULL COMMENT '1: Active, 0: In-active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_name_bn`, `type`, `status`, `created_at`, `updated_at`) VALUES
(26, 'Super Admin', NULL, 1, 1, '2020-02-08 05:39:02', '2020-03-19 07:00:03'),
(36, 'Admin', NULL, 1, 1, '2020-03-19 07:00:12', '2020-03-19 07:00:12'),
(37, 'Teacher', NULL, 1, 1, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(38, 'Survey', NULL, 1, 1, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(39, 'Genarel', 'সাধারন', 2, 1, '2020-03-19 07:02:26', '2020-05-14 05:40:19'),
(40, 'Leader', 'নেতা', 2, 1, '2020-03-19 07:02:58', '2020-05-14 05:40:29'),
(41, 'Worker', 'শ্রমিক', 2, 1, '2020-03-19 07:03:04', '2020-05-14 12:31:48'),
(44, 'test', 'টেস্ট', 2, 1, '2020-03-21 17:55:41', '2020-05-14 12:31:37'),
(45, 'Doctor', 'চিকিৎসক', 2, 1, '2020-05-14 05:41:01', '2020-05-14 05:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_members`
--

CREATE TABLE `user_group_members` (
  `id` int(11) NOT NULL,
  `emp_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0 : no access, 1 : access',
  `message_seen` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_group_members`
--

INSERT INTO `user_group_members` (`id`, `emp_id`, `group_id`, `status`, `message_seen`, `created_at`, `updated_at`) VALUES
(2, 1, 26, 1, 0, '2020-02-09 07:27:08', '2020-03-21 20:35:06'),
(29, 1, 36, 0, 0, '2020-03-19 07:00:12', '2020-03-19 07:00:12'),
(30, 1, 37, 0, 0, '2020-03-19 07:00:20', '2020-03-19 13:05:23'),
(31, 1, 38, 0, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(32, 39, 37, 1, 0, '2020-03-19 07:16:15', '2020-03-24 19:50:52'),
(33, 40, 38, 1, 0, '2020-03-19 07:29:16', '2020-03-21 20:35:38'),
(34, 41, 36, 1, 0, '2020-03-19 07:29:42', '2020-03-21 21:22:05'),
(35, 45, 37, 1, 0, '2020-03-20 02:28:24', '2020-03-20 02:28:24'),
(44, 60, 26, 0, 0, '2020-03-20 04:26:38', '2020-03-20 04:26:38'),
(45, 60, 36, 1, 0, '2020-03-20 04:26:38', '2020-03-20 11:00:07'),
(46, 60, 37, 0, 0, '2020-03-20 04:26:38', '2020-03-20 04:26:38'),
(47, 60, 38, 0, 0, '2020-03-20 04:26:38', '2020-03-20 04:26:38'),
(48, 39, 36, 0, 0, '2020-03-20 11:02:36', NULL),
(49, 39, 26, 0, 0, '2020-03-20 11:03:17', '2020-03-20 11:03:22'),
(50, 39, 38, 0, 0, '2020-03-20 11:03:45', NULL),
(51, 40, 36, 0, 0, '2020-03-20 11:04:46', NULL),
(52, 40, 26, 0, 0, '2020-03-20 11:05:00', NULL),
(53, 40, 37, 0, 0, '2020-03-20 11:05:21', NULL),
(54, 41, 26, 0, 0, '2020-03-20 11:06:02', NULL),
(55, 41, 37, 0, 0, '2020-03-20 11:06:16', NULL),
(56, 41, 38, 1, 0, '2020-03-20 11:06:27', '2020-03-21 21:22:05'),
(57, 45, 36, 0, 0, '2020-03-20 11:06:46', NULL),
(58, 45, 26, 0, 0, '2020-03-20 11:06:57', NULL),
(59, 45, 38, 0, 0, '2020-03-20 11:07:18', NULL),
(60, 61, 37, 1, 0, '2020-03-20 05:12:26', '2020-03-20 11:25:27'),
(61, 61, 26, 0, 0, '2020-03-20 05:12:26', '2020-03-20 05:12:26'),
(62, 61, 36, 0, 0, '2020-03-20 05:12:26', '2020-03-20 05:12:26'),
(63, 61, 38, 0, 0, '2020-03-20 05:12:26', '2020-03-20 05:12:26'),
(64, 62, 37, 1, 0, '2020-03-27 13:23:46', '2020-03-27 13:23:46'),
(65, 62, 26, 0, 0, '2020-03-27 13:23:46', '2020-03-27 13:23:46'),
(66, 62, 36, 0, 0, '2020-03-27 13:23:46', '2020-03-27 13:23:46'),
(67, 62, 38, 0, 0, '2020-03-27 13:23:46', '2020-03-27 13:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_permissions`
--

CREATE TABLE `user_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `action_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL COMMENT '0: Not Permit, 1: Permit',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_group_permissions`
--

INSERT INTO `user_group_permissions` (`id`, `group_id`, `action_id`, `status`, `created_at`, `updated_at`) VALUES
(19, 26, 1, 1, '2020-02-08 05:39:02', '2020-05-14 11:42:34'),
(20, 26, 2, 1, '2020-02-08 05:39:02', '2020-05-14 11:42:34'),
(21, 26, 4, 1, '2020-02-08 05:39:02', '2020-05-14 11:42:34'),
(22, 26, 6, 1, '2020-02-08 05:39:02', '2020-05-14 11:42:34'),
(23, 26, 7, 1, '2020-02-08 05:39:02', '2020-05-14 11:42:34'),
(24, 26, 8, 1, '2020-02-08 05:39:02', '2020-05-14 11:42:34'),
(25, 26, 9, 1, '2020-02-08 05:39:02', '2020-05-14 11:42:34'),
(26, 26, 10, 1, '2020-02-08 05:39:02', '2020-05-14 11:42:34'),
(60, 26, 24, 1, '2020-02-17 07:46:51', '2020-05-14 11:42:34'),
(66, 26, 25, 1, '2020-02-18 00:17:38', '2020-05-14 11:42:34'),
(72, 26, 26, 1, '2020-02-18 00:23:30', '2020-05-14 11:42:34'),
(78, 26, 27, 1, '2020-02-18 00:37:34', '2020-05-14 11:42:34'),
(84, 26, 28, 1, '2020-02-18 00:44:36', '2020-05-14 11:42:34'),
(90, 26, 29, 1, '2020-02-18 00:47:38', '2020-05-14 11:42:34'),
(96, 26, 30, 1, '2020-02-18 00:48:40', '2020-05-14 11:42:34'),
(102, 26, 31, 1, '2020-02-18 00:48:55', '2020-05-14 11:42:34'),
(108, 26, 32, 1, '2020-02-18 00:51:12', '2020-05-14 11:42:34'),
(114, 26, 33, 1, '2020-02-18 01:12:07', '2020-05-14 11:42:34'),
(120, 26, 34, 1, '2020-02-18 01:14:20', '2020-05-14 11:42:34'),
(126, 26, 35, 1, '2020-02-18 01:34:40', '2020-05-14 11:42:34'),
(132, 26, 36, 1, '2020-02-18 01:36:01', '2020-05-14 11:42:34'),
(138, 26, 37, 1, '2020-02-18 01:46:54', '2020-05-14 11:42:34'),
(144, 26, 38, 1, '2020-02-18 01:47:10', '2020-05-14 11:42:34'),
(150, 26, 39, 1, '2020-02-18 02:21:39', '2020-05-14 11:42:34'),
(156, 26, 40, 1, '2020-02-18 02:26:01', '2020-05-14 11:42:34'),
(162, 26, 41, 1, '2020-02-18 02:37:37', '2020-05-14 11:42:34'),
(168, 26, 42, 1, '2020-02-18 02:49:36', '2020-05-14 11:42:34'),
(174, 26, 43, 1, '2020-02-18 02:49:48', '2020-05-14 11:42:34'),
(180, 26, 44, 1, '2020-02-18 03:02:37', '2020-05-14 11:42:34'),
(186, 26, 45, 1, '2020-02-18 03:02:55', '2020-05-14 11:42:34'),
(192, 26, 46, 1, '2020-02-18 03:03:06', '2020-05-14 11:42:34'),
(198, 26, 47, 1, '2020-02-18 03:03:18', '2020-05-14 11:42:34'),
(204, 26, 48, 1, '2020-02-18 03:13:35', '2020-05-14 11:42:34'),
(210, 26, 49, 1, '2020-02-18 03:14:00', '2020-05-14 11:42:34'),
(216, 26, 50, 1, '2020-02-18 03:14:15', '2020-05-14 11:42:34'),
(222, 26, 51, 1, '2020-02-18 03:14:26', '2020-05-14 11:42:34'),
(228, 26, 52, 1, '2020-02-18 03:25:01', '2020-05-14 11:42:34'),
(234, 26, 53, 1, '2020-02-18 03:25:15', '2020-05-14 11:42:34'),
(240, 26, 54, 1, '2020-02-18 03:25:30', '2020-05-14 11:42:34'),
(246, 26, 55, 1, '2020-02-18 03:25:43', '2020-05-14 11:42:34'),
(252, 26, 56, 1, '2020-02-18 03:32:33', '2020-05-14 11:42:34'),
(258, 26, 57, 1, '2020-02-18 03:32:46', '2020-05-14 11:42:34'),
(264, 26, 58, 1, '2020-02-18 03:32:55', '2020-05-14 11:42:34'),
(270, 26, 59, 1, '2020-02-18 03:33:07', '2020-05-14 11:42:34'),
(276, 26, 60, 1, '2020-02-18 03:39:22', '2020-05-14 11:42:34'),
(282, 26, 61, 1, '2020-02-18 03:39:33', '2020-05-14 11:42:34'),
(288, 26, 62, 1, '2020-02-18 03:39:44', '2020-05-14 11:42:34'),
(294, 26, 63, 1, '2020-02-18 03:40:00', '2020-05-14 11:42:34'),
(300, 26, 64, 1, '2020-02-18 05:23:13', '2020-05-14 11:42:34'),
(306, 26, 65, 1, '2020-02-18 05:38:26', '2020-05-14 11:42:34'),
(312, 26, 66, 1, '2020-02-18 05:38:38', '2020-05-14 11:42:34'),
(318, 26, 67, 1, '2020-02-18 05:38:50', '2020-05-14 11:42:34'),
(376, 26, 68, 1, '2020-02-22 04:02:39', '2020-05-14 11:42:34'),
(383, 26, 69, 1, '2020-02-22 04:06:07', '2020-05-14 11:42:34'),
(390, 26, 70, 1, '2020-02-22 04:06:25', '2020-05-14 11:42:34'),
(397, 26, 71, 1, '2020-02-22 04:06:50', '2020-05-14 11:42:34'),
(404, 26, 72, 1, '2020-02-29 00:45:50', '2020-05-14 11:42:34'),
(411, 26, 73, 1, '2020-02-29 00:46:46', '2020-05-14 11:42:34'),
(418, 26, 74, 1, '2020-02-29 00:46:56', '2020-05-14 11:42:34'),
(425, 26, 75, 1, '2020-02-29 00:47:04', '2020-05-14 11:42:34'),
(432, 26, 76, 1, '2020-03-02 03:25:05', '2020-05-14 11:42:34'),
(439, 26, 77, 1, '2020-03-02 03:25:28', '2020-05-14 11:42:34'),
(474, 26, 82, 1, '2020-03-03 05:25:01', '2020-05-14 11:42:34'),
(481, 26, 83, 1, '2020-03-03 05:25:10', '2020-05-14 11:42:34'),
(488, 26, 84, 1, '2020-03-03 05:25:19', '2020-05-14 11:42:34'),
(495, 26, 85, 1, '2020-03-03 05:25:29', '2020-05-14 11:42:34'),
(634, 26, 86, 1, '2020-03-07 01:22:25', '2020-05-14 11:42:34'),
(643, 26, 87, 1, '2020-03-07 01:22:40', '2020-05-14 11:42:34'),
(652, 26, 88, 1, '2020-03-07 04:14:47', '2020-05-14 11:42:34'),
(661, 26, 89, 1, '2020-03-07 04:15:10', '2020-05-14 11:42:34'),
(670, 26, 90, 1, '2020-03-07 04:15:24', '2020-05-14 11:42:34'),
(679, 26, 91, 1, '2020-03-07 04:15:39', '2020-05-14 11:42:34'),
(688, 26, 92, 1, '2020-03-09 01:54:34', '2020-05-14 11:42:34'),
(697, 26, 93, 1, '2020-03-09 01:54:59', '2020-05-14 11:42:34'),
(779, 36, 1, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(780, 36, 2, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(781, 36, 4, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(782, 36, 6, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(783, 36, 7, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(784, 36, 8, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(785, 36, 9, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(786, 36, 10, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(787, 36, 27, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(788, 36, 28, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(789, 36, 86, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(790, 36, 87, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(791, 36, 24, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(792, 36, 25, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(793, 36, 26, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(794, 36, 76, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(795, 36, 77, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(796, 36, 88, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(797, 36, 89, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(798, 36, 90, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(799, 36, 91, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(800, 36, 92, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(801, 36, 93, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(802, 36, 29, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(803, 36, 30, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(804, 36, 31, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(805, 36, 32, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(806, 36, 33, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(807, 36, 34, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(808, 36, 35, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(809, 36, 36, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(810, 36, 37, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(811, 36, 38, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(812, 36, 39, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(813, 36, 40, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(814, 36, 41, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(815, 36, 42, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(816, 36, 43, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(817, 36, 44, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(818, 36, 45, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(819, 36, 46, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(820, 36, 47, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(821, 36, 48, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(822, 36, 49, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(823, 36, 50, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(824, 36, 51, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(825, 36, 52, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(826, 36, 53, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(827, 36, 54, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(828, 36, 55, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(829, 36, 56, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(830, 36, 57, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(831, 36, 58, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(832, 36, 59, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(833, 36, 60, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(834, 36, 61, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(835, 36, 62, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(836, 36, 63, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(837, 36, 82, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(838, 36, 83, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(839, 36, 84, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(840, 36, 85, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(841, 36, 72, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(842, 36, 73, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(843, 36, 74, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(844, 36, 75, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(845, 36, 64, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(846, 36, 65, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(847, 36, 66, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(848, 36, 67, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(849, 36, 68, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(850, 36, 69, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(851, 36, 70, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(852, 36, 71, 1, '2020-03-19 07:00:12', '2020-05-14 11:42:22'),
(853, 37, 1, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(854, 37, 2, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(855, 37, 4, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(856, 37, 6, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(857, 37, 7, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(858, 37, 8, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(859, 37, 9, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(860, 37, 10, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(861, 37, 27, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(862, 37, 28, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(863, 37, 86, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(864, 37, 87, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(865, 37, 24, 1, '2020-03-19 07:00:20', '2020-03-19 13:33:08'),
(866, 37, 25, 1, '2020-03-19 07:00:20', '2020-03-19 13:33:08'),
(867, 37, 26, 1, '2020-03-19 07:00:20', '2020-03-19 13:33:08'),
(868, 37, 76, 1, '2020-03-19 07:00:20', '2020-03-19 13:33:08'),
(869, 37, 77, 1, '2020-03-19 07:00:20', '2020-03-19 13:33:08'),
(870, 37, 88, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(871, 37, 89, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(872, 37, 90, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(873, 37, 91, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(874, 37, 92, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(875, 37, 93, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(876, 37, 29, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(877, 37, 30, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(878, 37, 31, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(879, 37, 32, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(880, 37, 33, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(881, 37, 34, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(882, 37, 35, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(883, 37, 36, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(884, 37, 37, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(885, 37, 38, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(886, 37, 39, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(887, 37, 40, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(888, 37, 41, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(889, 37, 42, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(890, 37, 43, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(891, 37, 44, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(892, 37, 45, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(893, 37, 46, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(894, 37, 47, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(895, 37, 48, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(896, 37, 49, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(897, 37, 50, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(898, 37, 51, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(899, 37, 52, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(900, 37, 53, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(901, 37, 54, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(902, 37, 55, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(903, 37, 56, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(904, 37, 57, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(905, 37, 58, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(906, 37, 59, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(907, 37, 60, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(908, 37, 61, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(909, 37, 62, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(910, 37, 63, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(911, 37, 82, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(912, 37, 83, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(913, 37, 84, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(914, 37, 85, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(915, 37, 72, 0, '2020-03-19 07:00:20', '2020-03-19 07:00:20'),
(916, 37, 73, 0, '2020-03-19 07:00:21', '2020-03-19 07:00:21'),
(917, 37, 74, 0, '2020-03-19 07:00:21', '2020-03-19 07:00:21'),
(918, 37, 75, 0, '2020-03-19 07:00:21', '2020-03-19 07:00:21'),
(919, 37, 64, 0, '2020-03-19 07:00:21', '2020-03-19 07:00:21'),
(920, 37, 65, 0, '2020-03-19 07:00:21', '2020-03-19 07:00:21'),
(921, 37, 66, 0, '2020-03-19 07:00:21', '2020-03-19 07:00:21'),
(922, 37, 67, 0, '2020-03-19 07:00:21', '2020-03-19 07:00:21'),
(923, 37, 68, 0, '2020-03-19 07:00:21', '2020-03-19 07:00:21'),
(924, 37, 69, 0, '2020-03-19 07:00:21', '2020-03-19 07:00:21'),
(925, 37, 70, 0, '2020-03-19 07:00:21', '2020-03-19 07:00:21'),
(926, 37, 71, 0, '2020-03-19 07:00:21', '2020-03-19 07:00:21'),
(927, 38, 1, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(928, 38, 2, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(929, 38, 4, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(930, 38, 6, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(931, 38, 7, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(932, 38, 8, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(933, 38, 9, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(934, 38, 10, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(935, 38, 27, 1, '2020-03-19 07:00:27', '2020-03-19 13:34:28'),
(936, 38, 28, 1, '2020-03-19 07:00:27', '2020-03-19 13:34:28'),
(937, 38, 86, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(938, 38, 87, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(939, 38, 24, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(940, 38, 25, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(941, 38, 26, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(942, 38, 76, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(943, 38, 77, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(944, 38, 88, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(945, 38, 89, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(946, 38, 90, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(947, 38, 91, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(948, 38, 92, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(949, 38, 93, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(950, 38, 29, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(951, 38, 30, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(952, 38, 31, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(953, 38, 32, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(954, 38, 33, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(955, 38, 34, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(956, 38, 35, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(957, 38, 36, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(958, 38, 37, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(959, 38, 38, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(960, 38, 39, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(961, 38, 40, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(962, 38, 41, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(963, 38, 42, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(964, 38, 43, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(965, 38, 44, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(966, 38, 45, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(967, 38, 46, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(968, 38, 47, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(969, 38, 48, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(970, 38, 49, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(971, 38, 50, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(972, 38, 51, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(973, 38, 52, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(974, 38, 53, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(975, 38, 54, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(976, 38, 55, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(977, 38, 56, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(978, 38, 57, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(979, 38, 58, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(980, 38, 59, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(981, 38, 60, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(982, 38, 61, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(983, 38, 62, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(984, 38, 63, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(985, 38, 82, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(986, 38, 83, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(987, 38, 84, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(988, 38, 85, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(989, 38, 72, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(990, 38, 73, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(991, 38, 74, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(992, 38, 75, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(993, 38, 64, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(994, 38, 65, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(995, 38, 66, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(996, 38, 67, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(997, 38, 68, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(998, 38, 69, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(999, 38, 70, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(1000, 38, 71, 0, '2020-03-19 07:00:27', '2020-03-19 07:00:27'),
(1001, 26, 94, 1, '2020-04-04 01:49:39', '2020-05-14 11:42:34'),
(1002, 36, 94, 1, '2020-04-04 01:49:39', '2020-05-14 11:42:22'),
(1003, 37, 94, 0, '2020-04-04 01:49:39', '2020-04-04 01:49:39'),
(1004, 38, 94, 0, '2020-04-04 01:49:39', '2020-04-04 01:49:39'),
(1005, 39, 94, 0, '2020-04-04 01:49:39', '2020-04-04 01:49:39'),
(1006, 40, 94, 0, '2020-04-04 01:49:39', '2020-04-04 01:49:39'),
(1007, 41, 94, 0, '2020-04-04 01:49:39', '2020-04-04 01:49:39'),
(1008, 44, 94, 0, '2020-04-04 01:49:39', '2020-04-04 01:49:39'),
(1009, 26, 95, 1, '2020-05-12 09:17:07', '2020-05-14 11:42:34'),
(1010, 36, 95, 1, '2020-05-12 09:17:07', '2020-05-14 11:42:22'),
(1011, 37, 95, 0, '2020-05-12 09:17:07', '2020-05-12 09:17:07'),
(1012, 38, 95, 0, '2020-05-12 09:17:07', '2020-05-12 09:17:07'),
(1013, 39, 95, 0, '2020-05-12 09:17:07', '2020-05-12 09:17:07'),
(1014, 40, 95, 0, '2020-05-12 09:17:07', '2020-05-12 09:17:07'),
(1015, 41, 95, 0, '2020-05-12 09:17:07', '2020-05-12 09:17:07'),
(1016, 44, 95, 0, '2020-05-12 09:17:07', '2020-05-12 09:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `web_actions`
--

CREATE TABLE `web_actions` (
  `id` int(11) NOT NULL,
  `activity_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:active, 0:inactive',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_actions`
--

INSERT INTO `web_actions` (`id`, `activity_name`, `module_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin Users', 1, 1, '0000-00-00 00:00:00', '2020-02-05 08:13:21'),
(2, 'Admin User Entry', 1, 1, '0000-00-00 00:00:00', '2020-02-05 08:13:21'),
(4, 'Admin User update', 1, 1, '0000-00-00 00:00:00', '2020-02-05 08:13:21'),
(6, 'Admin User delete', 1, 1, '0000-00-00 00:00:00', '2020-02-05 08:13:21'),
(7, 'App Users', 1, 1, '0000-00-00 00:00:00', '2020-02-05 08:13:21'),
(8, 'App User Entry', 1, 1, '0000-00-00 00:00:00', '2020-02-05 08:13:21'),
(9, 'App User update', 1, 1, '0000-00-00 00:00:00', '2020-02-05 08:13:21'),
(10, 'App User delete', 1, 1, '0000-00-00 00:00:00', '2020-02-05 08:13:21'),
(24, 'Open Course', 7, 1, '2020-02-17 07:46:50', '2020-02-17 07:46:50'),
(25, 'Course', 7, 1, '2020-02-18 00:17:38', '2020-02-18 00:17:38'),
(26, 'Course Entry', 7, 1, '2020-02-18 00:23:30', '2020-03-02 03:16:59'),
(27, 'Survey', 6, 1, '2020-02-18 00:37:34', '2020-02-18 00:37:34'),
(28, 'Add Survey', 6, 1, '2020-02-18 00:44:35', '2020-02-18 00:44:35'),
(29, 'Control Panel', 10, 1, '2020-02-18 00:47:38', '2020-02-18 00:47:38'),
(30, 'Web Actions Entry', 10, 1, '2020-02-18 00:48:40', '2020-02-18 00:48:40'),
(31, 'Web Actions Update', 10, 1, '2020-02-18 00:48:55', '2020-02-18 00:48:55'),
(32, 'Web Actions Management', 10, 1, '2020-02-18 00:51:12', '2020-02-18 00:51:12'),
(33, 'General Setting Management', 10, 1, '2020-02-18 01:12:07', '2020-02-18 01:12:07'),
(34, 'General Setting Update', 10, 1, '2020-02-18 01:14:20', '2020-02-18 01:14:20'),
(35, 'Manage Module', 10, 1, '2020-02-18 01:34:40', '2020-02-18 01:34:40'),
(36, 'Add Module', 10, 1, '2020-02-18 01:36:01', '2020-02-18 01:36:01'),
(37, 'Update Module', 10, 1, '2020-02-18 01:46:54', '2020-02-18 01:46:54'),
(38, 'Delete Module', 10, 1, '2020-02-18 01:47:10', '2020-02-18 01:47:10'),
(39, 'Admin User Group Management', 26, 1, '2020-02-18 02:21:39', '2020-02-18 02:21:39'),
(40, 'Admin User Group Entry', 26, 1, '2020-02-18 02:26:01', '2020-02-18 02:26:01'),
(41, 'Give Permission To Admin User', 26, 1, '2020-02-18 02:37:37', '2020-02-18 02:37:37'),
(42, 'Admin User Group Update', 26, 1, '2020-02-18 02:49:36', '2020-02-18 02:49:36'),
(43, 'Admin User Group Delete', 26, 1, '2020-02-18 02:49:47', '2020-02-18 02:49:47'),
(44, 'App User Group Management', 26, 1, '2020-02-18 03:02:37', '2020-02-18 03:02:37'),
(45, 'App User Group Entry', 26, 1, '2020-02-18 03:02:55', '2020-02-18 03:02:55'),
(46, 'App User Group Update', 26, 1, '2020-02-18 03:03:06', '2020-02-18 03:03:06'),
(47, 'App User Group Delete', 26, 1, '2020-02-18 03:03:18', '2020-02-18 03:03:18'),
(48, 'Publication Category', 26, 1, '2020-02-18 03:13:35', '2020-02-18 03:13:35'),
(49, 'Publication Category Entry', 26, 1, '2020-02-18 03:14:00', '2020-02-18 03:14:00'),
(50, 'Publication Category Update', 26, 1, '2020-02-18 03:14:15', '2020-02-18 03:14:15'),
(51, 'Publication Category Delete', 26, 1, '2020-02-18 03:14:26', '2020-02-18 03:14:26'),
(52, 'Course Category', 26, 1, '2020-02-18 03:25:01', '2020-02-18 03:25:01'),
(53, 'Course Category Entry', 26, 1, '2020-02-18 03:25:15', '2020-02-18 03:25:15'),
(54, 'Course Category Update', 26, 1, '2020-02-18 03:25:30', '2020-02-18 03:25:30'),
(55, 'Course Category Delete', 26, 1, '2020-02-18 03:25:43', '2020-02-18 03:25:43'),
(56, 'Notice Category', 26, 1, '2020-02-18 03:32:33', '2020-02-18 03:32:33'),
(57, 'Notice Category Entry', 26, 1, '2020-02-18 03:32:46', '2020-02-18 03:32:46'),
(58, 'Notice Category update', 26, 1, '2020-02-18 03:32:55', '2020-02-18 03:32:55'),
(59, 'Notice Category Delete', 26, 1, '2020-02-18 03:33:07', '2020-02-18 03:33:07'),
(60, 'Survey Category', 26, 1, '2020-02-18 03:39:22', '2020-02-18 03:39:22'),
(61, 'Survey Category Entry', 26, 1, '2020-02-18 03:39:33', '2020-02-18 03:39:33'),
(62, 'Survey Category Update', 26, 1, '2020-02-18 03:39:44', '2020-02-18 03:39:44'),
(63, 'Survey Category Delete', 26, 1, '2020-02-18 03:40:00', '2020-02-18 03:40:00'),
(64, 'Manage Notice', 37, 1, '2020-02-18 05:23:13', '2020-02-18 05:23:13'),
(65, 'Notice Entry', 37, 1, '2020-02-18 05:38:26', '2020-02-18 05:38:26'),
(66, 'Notice Update', 37, 1, '2020-02-18 05:38:38', '2020-02-18 05:38:38'),
(67, 'Notice Delete', 37, 1, '2020-02-18 05:38:50', '2020-02-18 05:38:50'),
(68, 'Publication', 38, 1, '2020-02-22 04:02:39', '2020-02-22 04:02:39'),
(69, 'Publication Entry', 38, 1, '2020-02-22 04:06:07', '2020-02-22 04:06:07'),
(70, 'Publication Update', 38, 1, '2020-02-22 04:06:25', '2020-02-22 04:06:25'),
(71, 'Publication Delete', 38, 1, '2020-02-22 04:06:50', '2020-02-22 04:06:50'),
(72, 'Message Manage', 29, 1, '2020-02-29 00:45:50', '2020-02-29 00:45:50'),
(73, 'Message Entry', 29, 1, '2020-02-29 00:46:46', '2020-02-29 00:46:46'),
(74, 'Message Update', 29, 1, '2020-02-29 00:46:56', '2020-02-29 00:46:56'),
(75, 'Message Delete', 29, 1, '2020-02-29 00:47:04', '2020-02-29 00:47:04'),
(76, 'Course Update', 7, 1, '2020-03-02 03:25:05', '2020-03-02 03:25:05'),
(77, 'Course Delete', 7, 1, '2020-03-02 03:25:27', '2020-03-02 03:25:27'),
(82, 'Message Category', 26, 1, '2020-03-03 05:25:01', '2020-03-03 05:25:01'),
(83, 'Message Category Entry', 26, 1, '2020-03-03 05:25:10', '2020-03-03 05:25:10'),
(84, 'Message Category Update', 26, 1, '2020-03-03 05:25:19', '2020-03-03 05:25:19'),
(85, 'Message Category Delete', 26, 1, '2020-03-03 05:25:29', '2020-03-03 05:25:29'),
(86, 'Survey Update', 6, 1, '2020-03-07 01:22:25', '2020-03-07 01:23:40'),
(87, 'Survey Delete', 6, 1, '2020-03-07 01:22:40', '2020-03-07 01:22:40'),
(88, 'Manage Teacher', 7, 1, '2020-03-07 04:14:47', '2020-03-07 04:14:47'),
(89, 'Teacher Entry', 7, 1, '2020-03-07 04:15:10', '2020-03-07 04:15:10'),
(90, 'Teacher Update', 7, 1, '2020-03-07 04:15:24', '2020-03-07 04:15:24'),
(91, 'Teacher Delete', 7, 1, '2020-03-07 04:15:39', '2020-03-07 04:15:39'),
(92, 'Publish Course', 7, 1, '2020-03-09 01:54:34', '2020-03-09 01:54:34'),
(93, 'Select Perticipant', 7, 1, '2020-03-09 01:54:59', '2020-03-09 01:54:59'),
(94, 'Group Message Manage', 29, 1, '2020-04-04 01:49:39', '2020-04-04 01:49:39'),
(95, 'Notification View', 54, 1, '2020-05-12 09:17:07', '2020-05-12 09:17:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `app_user_group_members`
--
ALTER TABLE `app_user_group_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Index 2` (`group_id`,`app_user_id`),
  ADD KEY `FK_app_user_group_members_app_users` (`app_user_id`);

--
-- Indexes for table `course_categories`
--
ALTER TABLE `course_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_masters`
--
ALTER TABLE `course_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_perticipants`
--
ALTER TABLE `course_perticipants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_attachments`
--
ALTER TABLE `message_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_categories`
--
ALTER TABLE `message_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_masters`
--
ALTER TABLE `message_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_message_masters_app_users` (`app_user_id`),
  ADD KEY `FK_message_masters_users` (`admin_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_categories`
--
ALTER TABLE `notice_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publication_categories`
--
ALTER TABLE `publication_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_categories`
--
ALTER TABLE `survey_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_groups`
--
ALTER TABLE `survey_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_masters`
--
ALTER TABLE `survey_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_participants`
--
ALTER TABLE `survey_participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_participant_answers`
--
ALTER TABLE `survey_participant_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_participant_answer_options`
--
ALTER TABLE `survey_participant_answer_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_question_answer_options`
--
ALTER TABLE `survey_question_answer_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group_members`
--
ALTER TABLE `user_group_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Index 4` (`emp_id`,`group_id`),
  ADD KEY `FK_user_group_members_user_groups` (`group_id`);

--
-- Indexes for table `user_group_permissions`
--
ALTER TABLE `user_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Index 2` (`group_id`,`action_id`),
  ADD KEY `FK_user_group_permission_web_actions` (`action_id`);

--
-- Indexes for table `web_actions`
--
ALTER TABLE `web_actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `activity_name_module_id` (`activity_name`,`module_id`),
  ADD KEY `module_id` (`module_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `app_user_group_members`
--
ALTER TABLE `app_user_group_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `course_categories`
--
ALTER TABLE `course_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_masters`
--
ALTER TABLE `course_masters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_perticipants`
--
ALTER TABLE `course_perticipants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `message_attachments`
--
ALTER TABLE `message_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `message_categories`
--
ALTER TABLE `message_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message_masters`
--
ALTER TABLE `message_masters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notice_categories`
--
ALTER TABLE `notice_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `publication_categories`
--
ALTER TABLE `publication_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `survey_categories`
--
ALTER TABLE `survey_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `survey_groups`
--
ALTER TABLE `survey_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_masters`
--
ALTER TABLE `survey_masters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `survey_participants`
--
ALTER TABLE `survey_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `survey_participant_answers`
--
ALTER TABLE `survey_participant_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `survey_participant_answer_options`
--
ALTER TABLE `survey_participant_answer_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `survey_questions`
--
ALTER TABLE `survey_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `survey_question_answer_options`
--
ALTER TABLE `survey_question_answer_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user_group_members`
--
ALTER TABLE `user_group_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `user_group_permissions`
--
ALTER TABLE `user_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;

--
-- AUTO_INCREMENT for table `web_actions`
--
ALTER TABLE `web_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_user_group_members`
--
ALTER TABLE `app_user_group_members`
  ADD CONSTRAINT `FK_app_user_group_members_app_users` FOREIGN KEY (`app_user_id`) REFERENCES `app_users` (`id`),
  ADD CONSTRAINT `FK_app_user_group_members_user_groups` FOREIGN KEY (`group_id`) REFERENCES `user_groups` (`id`);

--
-- Constraints for table `message_masters`
--
ALTER TABLE `message_masters`
  ADD CONSTRAINT `FK_message_masters_app_users` FOREIGN KEY (`app_user_id`) REFERENCES `app_users` (`id`),
  ADD CONSTRAINT `FK_message_masters_users` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_group_members`
--
ALTER TABLE `user_group_members`
  ADD CONSTRAINT `FK_user_group_members_user_groups` FOREIGN KEY (`group_id`) REFERENCES `user_groups` (`id`),
  ADD CONSTRAINT `FK_user_group_members_users` FOREIGN KEY (`emp_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_group_permissions`
--
ALTER TABLE `user_group_permissions`
  ADD CONSTRAINT `FK_user_group_permission_user_group` FOREIGN KEY (`group_id`) REFERENCES `user_groups` (`id`),
  ADD CONSTRAINT `FK_user_group_permission_web_actions` FOREIGN KEY (`action_id`) REFERENCES `web_actions` (`id`);

--
-- Constraints for table `web_actions`
--
ALTER TABLE `web_actions`
  ADD CONSTRAINT `FK_web_actions_menus` FOREIGN KEY (`module_id`) REFERENCES `menus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
