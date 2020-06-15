-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2020 at 09:28 AM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.3.18-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zm_grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(256) DEFAULT NULL,
  `log` text,
  `client_ip` varchar(45) DEFAULT NULL,
  `client_agent` varchar(45) DEFAULT NULL,
  `client_platform` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `user_id`, `username`, `log`, `client_ip`, `client_agent`, `client_platform`, `created_at`) VALUES
(1, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-03-31 13:37:22'),
(2, NULL, 'admin', '*** try to login with invalid credential', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-03-31 16:15:15'),
(3, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-03-31 16:15:24'),
(4, NULL, 'admin', '*** try to login with invalid credential', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-10 19:43:28'),
(5, NULL, 'admin', '*** try to login with invalid credential', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-10 19:43:34'),
(6, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-10 19:43:50'),
(7, NULL, 'admin', '*** try to login with invalid credential', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 11:33:13'),
(8, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 11:33:31'),
(9, 1, 'FF_Vendor', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 13:09:21'),
(10, 1, 'FF_Vendor', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 13:13:52'),
(11, 1, 'admin', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 13:14:31'),
(12, 1, 'admin', 'admin Deleted Branch  Burma kfc ', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 14:34:06'),
(13, 1, 'admin', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 15:37:04'),
(14, 1, 'admin', 'admin deleted item  yjtjytj', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 15:39:57'),
(15, 1, 'admin', 'admin deleted vendor  Chettinadu', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 15:41:13'),
(16, 1, 'admin', 'admin deleted ingredient  testing', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 15:42:59'),
(17, 1, 'admin', 'admin deleted item ingredient group  Sauce group', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 15:46:46'),
(18, 1, 'admin', 'admin deleted cuisine  Breakfast', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 15:48:45'),
(19, 1, 'admin', 'admin deleted delivery area  dfgh', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 15:50:48'),
(20, 1, 'admin', 'admin deleted vendor type Dine In', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-04-28 15:52:18'),
(21, 1, 'admin', 'logged in', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-05-02 13:49:25'),
(22, 1, 'admin', 'logged in', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-05-02 17:02:43'),
(23, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-02 17:10:33'),
(24, 1, 'admin', 'admin updated Branch named  CBE_Branch', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-02 17:22:25'),
(25, 1, 'admin', 'admin updated Branch named  CBE_Branch', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-02 17:29:52'),
(26, 1, 'admin', 'admin updated Branch named  CBE_Branch', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-02 17:30:25'),
(27, 1, 'admin', 'admin created New Branch named  Test Food', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-02 17:31:40'),
(28, 1, 'admin', 'admin updated Branch named  CBE_Branch', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-02 17:32:45'),
(29, 1, 'admin', 'admin updated Branch named  CBE_Branch', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-02 17:35:14'),
(30, 1, 'admin', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-04 12:39:20'),
(31, NULL, 'ramesh.m@.com', '*** try to login with invalid credential', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-05 19:52:37'),
(32, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-06 12:15:54'),
(33, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-06 14:44:01'),
(34, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-06 15:58:32'),
(35, 1, 'admin', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-08 16:52:29'),
(36, 1, 'admin', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-08 20:08:07'),
(37, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-09 12:22:22'),
(38, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-09 14:04:46'),
(39, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-09 15:59:24'),
(40, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-11 13:09:27'),
(41, 1, 'admin', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-12 19:05:08'),
(42, NULL, 'admin', '*** try to login with invalid credential', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-16 16:46:21'),
(43, 1, 'admin', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-16 16:46:27'),
(44, NULL, 'ramesh.m@.com', '*** try to login with invalid credential', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-16 17:57:23'),
(45, 1, 'FF_Vendor', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-16 17:57:53'),
(46, 1, 'admin', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-16 18:45:01'),
(47, 1, 'admin', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-16 19:24:48'),
(48, 1, 'admin', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-19 18:24:24'),
(49, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-20 17:55:52'),
(50, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-21 10:43:44'),
(51, 1, 'admin', 'logged in', '127.0.0.1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-22 12:11:05'),
(52, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-05-25 14:04:50'),
(53, 1, 'admin', 'logged in', '::1', 'Google Chrome 79.0.3945.130', 'linux', '2020-06-02 11:28:08'),
(54, NULL, 'admin', '*** try to login with invalid credential', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-02 12:31:00'),
(55, NULL, 'admin', '*** try to login with invalid credential', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-02 12:31:18'),
(56, NULL, 'admin', '*** try to login with invalid credential', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-02 12:31:24'),
(57, NULL, 'admin', '*** try to login with invalid credential', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-02 12:31:29'),
(58, NULL, 'admin', '*** try to login with invalid credential', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-02 12:31:34'),
(59, NULL, 'admin', '*** try to login with invalid credential', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-02 12:31:40'),
(60, NULL, 'admin', '*** try to login with invalid credential', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-02 12:34:34'),
(61, 1, 'admin', 'logged in', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-02 12:34:43'),
(62, 1, 'admin', 'logged in', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-04 19:15:59'),
(63, 1, 'admin', 'logged in', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-05 11:07:46'),
(64, 1, 'admin', 'logged in', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-06 10:20:41'),
(65, 1, 'admin', 'admin created a New Unit Named  test', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-06 10:26:15'),
(66, 1, 'admin', 'admin created a New Unit Named  trhgf', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-06 10:29:23'),
(67, 1, 'admin', 'admin created a New Unit Named  jh', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-06 10:30:20'),
(68, 1, 'admin', 'admin updated New Unit Named  jhh', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-06 10:30:49'),
(69, 1, 'admin', 'admin deleted new Unit Named  jhh', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-06 10:31:30'),
(70, 1, 'admin', 'admin created a New Unit Named  hgh', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-06 10:31:43'),
(71, 1, 'admin', 'admin edited the tabaogo Credits for customer sarogsar', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-06 10:56:29'),
(72, 1, 'admin', 'logged in', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-06 19:08:49'),
(73, 1, 'admin', 'logged in', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-08 10:45:20'),
(74, 1, 'admin', 'admin created New Item Named  testkl', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-08 11:23:03'),
(75, 1, 'admin', 'admin created New Item Named  vivo', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-08 11:30:27'),
(76, 1, 'admin', 'admin created New Item Named  vivo', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-08 11:32:44'),
(77, 1, 'admin', 'admin created New Item Named  hjhj', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-08 11:38:52'),
(78, 1, 'admin', 'admin created New Item Named  10', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-08 11:39:30'),
(79, 1, 'admin', 'admin created New Item Named  hhh', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-08 11:41:53'),
(80, 1, 'admin', 'admin created New Item Named  googles', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-08 11:44:33'),
(81, 1, 'admin', 'admin created New Item Named  data', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-08 11:45:49'),
(82, 1, 'admin', 'admin created New Item Named  2itemd', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-08 11:50:06'),
(83, 1, 'admin', 'admin created New Item Named  visk', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-08 11:51:58'),
(84, 1, 'admin', 'admin created New Item Named  create', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-08 11:53:02'),
(85, 1, 'admin', 'logged in', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:41:29'),
(86, 1, 'admin', 'admin created New Item Named  a', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:44:59'),
(87, 1, 'admin', 'admin created New Item Named  b', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:47:26'),
(88, 1, 'admin', 'admin created New Item Named  b', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:47:26'),
(89, 1, 'admin', 'admin created New Item Named  b', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:49:14'),
(90, 1, 'admin', 'admin created New Item Named  b', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:49:14'),
(91, 1, 'admin', 'admin created New Item Named  c', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:52:18'),
(92, 1, 'admin', 'admin created New Item Named  c', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:52:19'),
(93, 1, 'admin', 'admin created New Item Named  c', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:52:19'),
(94, 1, 'admin', 'admin created New Item Named  vv', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:53:25'),
(95, 1, 'admin', 'admin created New Item Named  vv', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:53:25'),
(96, 1, 'admin', 'admin created New Item Named  d', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:55:24'),
(97, 1, 'admin', 'admin created New Item Named  d', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 09:55:24'),
(98, 1, 'admin', 'admin updated new Item Named  d', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 10:00:07'),
(99, 1, 'admin', 'admin update Vendor named  YUMMY', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 10:29:53'),
(100, 1, 'admin', 'admin update Vendor named  YUMMY', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 10:30:29'),
(101, 1, 'admin', 'admin update Vendor named  YUMMY', '127.0.0.1', 'Mozilla Firefox 72.0', 'linux', '2020-06-09 10:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `address_type`
--

CREATE TABLE `address_type` (
  `address_type_id` bigint(20) NOT NULL,
  `address_type_key` varchar(16) DEFAULT NULL,
  `address_type_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 - Archieved ',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address_type`
--

INSERT INTO `address_type` (`address_type_id`, `address_type_key`, `address_type_status`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`) VALUES
(1, 'gavx6ove2hzmkn0x', 2, '2018-08-28 13:22:32', 1, NULL, NULL),
(2, 'xd03mcgnusgp3nix', 1, '2018-08-28 13:22:47', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `address_type_lang`
--

CREATE TABLE `address_type_lang` (
  `address_type_lang_id` bigint(20) NOT NULL,
  `address_type_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `address_type_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address_type_lang`
--

INSERT INTO `address_type_lang` (`address_type_lang_id`, `address_type_id`, `language_code`, `address_type_name`) VALUES
(1, 1, 'en', 'Home'),
(2, 2, 'en', 'Work'),
(3, 1, 'no', 'Hjem'),
(4, 2, 'no', 'Arbeid');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `admin_user_id` bigint(20) NOT NULL,
  `admin_user_key` varchar(16) DEFAULT NULL,
  `user_type` tinyint(1) DEFAULT NULL COMMENT '1 - Admin, 2 - Staff',
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `email_address` varchar(256) DEFAULT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `password_hash` varchar(256) DEFAULT NULL,
  `password_reset_token` varchar(256) DEFAULT NULL,
  `secret_password` varchar(256) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0 - Inactive, 1 - Active',
  `last_login` datetime DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`admin_user_id`, `admin_user_key`, `user_type`, `first_name`, `last_name`, `email_address`, `user_name`, `password_hash`, `password_reset_token`, `secret_password`, `status`, `last_login`, `role_id`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`) VALUES
(1, 'df45gf5dgde64wd', 1, 'admin', '', 'ramesh.m1@.com', 'admin', '$2y$13$P4IHY/WfYLQZtDADvUHBNOyZJDJK8xia22ZL1ucRfqHMe2C7eyp8y', '03oT-3Ur9az55DwKsCLgXtyVkhKuZGcW_1556865085', NULL, 1, '2020-06-09 09:41:29', NULL, NULL, NULL, NULL, NULL),
(2, 'rvepsbhkmprgg5nw', 2, 'Testing', 'QA', 'pradeep.k@.com', 'Sub admin', '$2y$13$lFKA2IxD8Oza0WuQBtP2SOxMuTbfjMbMk2fys5WKbxW9v0nKN1hg2', NULL, '1', 1, '2018-09-03 15:22:31', 1, '2018-09-03 15:21:38', 1, NULL, NULL),
(3, '18evj6arwlm2mgqm', 2, 'unknown branch', NULL, 'aathira.s@.com', 'aathira.s@.com', '$2y$13$zCaLn/4IjWqwvQ7HXGadDeglEuZ/Fkz4tQ0z18dM8esu.qmdOtsVq', NULL, 'qHfwDb', 1, '2018-12-03 12:03:25', 6, '2018-12-03 11:55:36', 1, NULL, NULL),
(4, 'cmlehjrogewrxx1w', 2, 'saro', 'saro', 'saro@gmail.com', 'saro', '$2y$13$UHwRZtssRyHOpWMV8KuPjuJIWuyMOWPHuwZhwPE.Knbas6To/lJam', '14FqLH7vY0eoq4hpTx_xuaOVAlwvW1Gx_1552117989', '123456', 1, '2019-02-15 13:49:36', 5, '2019-02-15 13:49:25', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_branch`
--

CREATE TABLE `admin_user_branch` (
  `admin_user_branch_id` bigint(20) NOT NULL,
  `admin_user_id` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` bigint(20) NOT NULL,
  `agent_key` varchar(16) CHARACTER SET utf8 NOT NULL,
  `first_name` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `mobile_number` varchar(18) DEFAULT NULL,
  `email` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `address` text CHARACTER SET utf8,
  `status` smallint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `updated_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `agent_key`, `first_name`, `last_name`, `mobile_number`, `email`, `address`, `status`, `created_at`, `updated_at`, `created_user_id`, `updated_user_id`) VALUES
(1, 't1nv5yjlulcxp7hr', 'sarog', 'sar', '84464656', 'f@gmail.com', 'test', 1, '2020-06-06 10:55:20', '2020-06-06 10:56:58', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_log`
--

CREATE TABLE `api_log` (
  `api_log_id` int(11) NOT NULL,
  `request_url` longtext,
  `request_method` longtext,
  `request_data` longtext,
  `response_code` smallint(6) DEFAULT NULL,
  `response_data` longtext,
  `trace` longtext,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_log`
--

INSERT INTO `api_log` (`api_log_id`, `request_url`, `request_method`, `request_data`, `response_code`, `response_data`, `trace`, `created_at`) VALUES
(1, 'http://localhost:1030/api/v1/branch/index?latitude=11.023026545192993&longitude=76.91336374729872&sort_by=&filter_by=&cuisines=&env=dev', 'GET', '{\"latitude\":\"11.023026545192993\",\"longitude\":\"76.91336374729872\",\"sort_by\":\"\",\"filter_by\":\"\",\"cuisines\":\"\",\"env\":\"dev\"}', 200, '{\"status\":200,\"data\":{\"featured\":[{\"vendor_name\":\"Decade of Delicioues\",\"vendor_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\",\"delivery_minutes\":60,\"cuisines\":[{\"cuisine_id\":\"1\",\"cuisine_name\":\"Fast foods\"},{\"cuisine_id\":\"2\",\"cuisine_name\":\"Indian Cuisine\"}],\"delivery_charge_base_km\":0,\"rating\":0},{\"vendor_name\":\"cheap\",\"vendor_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\",\"delivery_minutes\":60,\"cuisines\":[{\"cuisine_id\":\"1\",\"cuisine_name\":\"Fast foods\"},{\"cuisine_id\":\"2\",\"cuisine_name\":\"Indian Cuisine\"}],\"delivery_charge_base_km\":0,\"rating\":0}],\"list\":[{\"branch_key\":\"6thpdlezujgakkhs\",\"branch_name\":\"CBE_Branch\",\"latitude\":\"11.014822519009082\",\"longitude\":\"76.95789203652339\",\"delivery_time\":60,\"pickup_time\":12,\"minimum_cart_value\":\"50\",\"delivery_charge_base_km\":11,\"rating\":3,\"branch_availability_status\":1,\"branch_availability_text\":\"Closing at 06:00 pm\",\"busy_reason\":\"bgbg\",\"vendor_id\":1,\"vendor_name\":\"Food Factory\",\"vendor_key\":\"eohdfubo9cinm8ga\",\"user_favourite\":0,\"vendor_image_path\":\"http://localhost:1030/uploads/branchs/1588420468qm9I4.jpeg\",\"branch_image_path\":[{\"branch_image_path\":\"http://localhost:1030/uploads/branchs/15884203402J6aL.jpeg\"},{\"branch_image_path\":\"http://localhost:1030/uploads/branchs/1588420340sH8gR.jpeg\"}],\"cuisines\":[{\"cuisine_id\":\"1\",\"cuisine_name\":\"Fast foods\"}],\"vendor_type\":[{\"vendor_type_id\":\"1\",\"vendor_type_name\":\"Plated Buffet Service\"},{\"vendor_type_id\":\"2\",\"vendor_type_name\":\"Plated  Service\"}],\"distance\":4.94,\"eta_time\":62,\"items\":\"Pasta,mat testing,ds,Testing,Test 25,testt,Food,TestPizza,TestPizzass\"},{\"branch_key\":\"gu5d0asgic7lizua\",\"branch_name\":\"domino\'s pizza\",\"latitude\":\"41.87595200000001\",\"longitude\":\"12.475694\",\"delivery_time\":60,\"pickup_time\":11,\"minimum_cart_value\":\"100\",\"delivery_charge_base_km\":0,\"rating\":0,\"branch_availability_status\":2,\"branch_availability_text\":\"Opening at 02:00 pm\",\"busy_reason\":\"ss\",\"vendor_id\":2,\"vendor_name\":\"YUMMY\",\"vendor_key\":\"ek5licmujqie4glq\",\"user_favourite\":0,\"vendor_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\",\"branch_image_path\":[{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"},{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"},{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"},{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"}],\"cuisines\":[{\"cuisine_id\":\"1\",\"cuisine_name\":\"Fast foods\"}],\"vendor_type\":[{\"vendor_type_id\":\"2\",\"vendor_type_name\":\"Plated  Service\"}],\"distance\":7083.35,\"eta_time\":70845,\"items\":\"Veg Biriyani,Pastafg\"},{\"branch_key\":\"shnb1lqlbfydogw9\",\"branch_name\":\"cokaraco\",\"latitude\":\"11.0247473\",\"longitude\":\"76.89803710000001\",\"delivery_time\":60,\"pickup_time\":11,\"minimum_cart_value\":\"50\",\"delivery_charge_base_km\":11,\"rating\":3,\"branch_availability_status\":1,\"branch_availability_text\":\"Closing at 11:00 pm\",\"busy_reason\":\"\",\"vendor_id\":1,\"vendor_name\":\"Food Factory\",\"vendor_key\":\"eohdfubo9cinm8ga\",\"user_favourite\":0,\"vendor_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\",\"branch_image_path\":[{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"},{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"},{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"},{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"}],\"cuisines\":[{\"cuisine_id\":\"1\",\"cuisine_name\":\"Fast foods\"}],\"vendor_type\":[{\"vendor_type_id\":\"1\",\"vendor_type_name\":\"Plated Buffet Service\"},{\"vendor_type_id\":\"2\",\"vendor_type_name\":\"Plated  Service\"}],\"distance\":1.68,\"eta_time\":38,\"items\":\"\"},{\"branch_key\":\"c6xhpvyunjvowqrq\",\"branch_name\":\"natural restaurent\",\"latitude\":\"11.0146199\",\"longitude\":\"76.9578288\",\"delivery_time\":60,\"pickup_time\":10,\"minimum_cart_value\":\"0\",\"delivery_charge_base_km\":11,\"rating\":0,\"branch_availability_status\":2,\"branch_availability_text\":\"Opening at 04:30 pm\",\"busy_reason\":\"\",\"vendor_id\":16,\"vendor_name\":\"test\",\"vendor_key\":\"oy0oyoc4skesjcrz\",\"user_favourite\":0,\"vendor_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\",\"branch_image_path\":[],\"cuisines\":[{\"cuisine_id\":\"5\",\"cuisine_name\":\"Mexican\"}],\"vendor_type\":[],\"distance\":4.94,\"eta_time\":59,\"items\":\"\"},{\"branch_key\":\"jlcn43owfdds7nw2\",\"branch_name\":\"Eternity\",\"latitude\":\"13.0826802\",\"longitude\":\"80.2707184\",\"delivery_time\":60,\"pickup_time\":10,\"minimum_cart_value\":null,\"delivery_charge_base_km\":0,\"rating\":0,\"branch_availability_status\":2,\"branch_availability_text\":\"Opening at 12:00 am\",\"busy_reason\":\"\",\"vendor_id\":26,\"vendor_name\":\"Eter\",\"vendor_key\":\"gf1gcw9puvd2fqtj\",\"user_favourite\":0,\"vendor_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\",\"branch_image_path\":[],\"cuisines\":[{\"cuisine_id\":\"8\",\"cuisine_name\":\"Arabian\"}],\"vendor_type\":[{\"vendor_type_id\":\"1\",\"vendor_type_name\":\"Plated Buffet Service\"}],\"distance\":430.94,\"eta_time\":4338,\"items\":\"Rasgulla,Gulab Jamun,Palkova,Laddu,Basundi,Kaju Katli,Barfi,jalebi,Badusha,Halwa\"},{\"branch_key\":\"jmixreuk6cfye8mx\",\"branch_name\":\"Test Food\",\"latitude\":\"11.2388431\",\"longitude\":\"76.9974433\",\"delivery_time\":60,\"pickup_time\":25,\"minimum_cart_value\":\"50\",\"delivery_charge_base_km\":10,\"rating\":3,\"branch_availability_status\":2,\"branch_availability_text\":\"Opening at 05:30 am\",\"busy_reason\":\"\",\"vendor_id\":1,\"vendor_name\":\"Food Factory\",\"vendor_key\":\"eohdfubo9cinm8ga\",\"user_favourite\":0,\"vendor_image_path\":\"http://localhost:1030/uploads/branchs/1588420896DZ1Vp.jpeg\",\"branch_image_path\":[{\"branch_image_path\":\"http://localhost:1030/uploads/branchs/1588420896vW7SY.jpeg\"},{\"branch_image_path\":\"http://localhost:1030/uploads/branchs/1588420896DZ1Vp.jpeg\"}],\"cuisines\":[{\"cuisine_id\":\"1\",\"cuisine_name\":\"Fast foods\"}],\"vendor_type\":[{\"vendor_type_id\":\"1\",\"vendor_type_name\":\"Plated Buffet Service\"},{\"vendor_type_id\":\"2\",\"vendor_type_name\":\"Plated  Service\"}],\"distance\":25.69,\"eta_time\":282,\"items\":\"\"}]},\"time\":1591075012,\"message\":\"DEFAULT_MESSAGE\",\"system\":{\"nc\":0}}', '{\"featured\":[{\"vendor_name\":\"Decade of Delicioues\",\"vendor_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\",\"delivery_minutes\":60,\"cuisines\":[{\"cuisine_id\":\"1\",\"cuisine_name\":\"Fast foods\"},{\"cuisine_id\":\"2\",\"cuisine_name\":\"Indian Cuisine\"}],\"delivery_charge_base_km\":0,\"rating\":0},{\"vendor_name\":\"cheap\",\"vendor_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\",\"delivery_minutes\":60,\"cuisines\":[{\"cuisine_id\":\"1\",\"cuisine_name\":\"Fast foods\"},{\"cuisine_id\":\"2\",\"cuisine_name\":\"Indian Cuisine\"}],\"delivery_charge_base_km\":0,\"rating\":0}],\"list\":[{\"branch_key\":\"6thpdlezujgakkhs\",\"branch_name\":\"CBE_Branch\",\"latitude\":\"11.014822519009082\",\"longitude\":\"76.95789203652339\",\"delivery_time\":60,\"pickup_time\":12,\"minimum_cart_value\":\"50\",\"delivery_charge_base_km\":11,\"rating\":3,\"branch_availability_status\":1,\"branch_availability_text\":\"Closing at 06:00 pm\",\"busy_reason\":\"bgbg\",\"vendor_id\":1,\"vendor_name\":\"Food Factory\",\"vendor_key\":\"eohdfubo9cinm8ga\",\"user_favourite\":0,\"vendor_image_path\":\"http://localhost:1030/uploads/branchs/1588420468qm9I4.jpeg\",\"branch_image_path\":[{\"branch_image_path\":\"http://localhost:1030/uploads/branchs/15884203402J6aL.jpeg\"},{\"branch_image_path\":\"http://localhost:1030/uploads/branchs/1588420340sH8gR.jpeg\"}],\"cuisines\":[{\"cuisine_id\":\"1\",\"cuisine_name\":\"Fast foods\"}],\"vendor_type\":[{\"vendor_type_id\":\"1\",\"vendor_type_name\":\"Plated Buffet Service\"},{\"vendor_type_id\":\"2\",\"vendor_type_name\":\"Plated  Service\"}],\"distance\":4.94,\"eta_time\":62,\"items\":\"Pasta,mat testing,ds,Testing,Test 25,testt,Food,TestPizza,TestPizzass\"},{\"branch_key\":\"gu5d0asgic7lizua\",\"branch_name\":\"domino\'s pizza\",\"latitude\":\"41.87595200000001\",\"longitude\":\"12.475694\",\"delivery_time\":60,\"pickup_time\":11,\"minimum_cart_value\":\"100\",\"delivery_charge_base_km\":0,\"rating\":0,\"branch_availability_status\":2,\"branch_availability_text\":\"Opening at 02:00 pm\",\"busy_reason\":\"ss\",\"vendor_id\":2,\"vendor_name\":\"YUMMY\",\"vendor_key\":\"ek5licmujqie4glq\",\"user_favourite\":0,\"vendor_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\",\"branch_image_path\":[{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"},{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"},{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"},{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"}],\"cuisines\":[{\"cuisine_id\":\"1\",\"cuisine_name\":\"Fast foods\"}],\"vendor_type\":[{\"vendor_type_id\":\"2\",\"vendor_type_name\":\"Plated  Service\"}],\"distance\":7083.35,\"eta_time\":70845,\"items\":\"Veg Biriyani,Pastafg\"},{\"branch_key\":\"shnb1lqlbfydogw9\",\"branch_name\":\"cokaraco\",\"latitude\":\"11.0247473\",\"longitude\":\"76.89803710000001\",\"delivery_time\":60,\"pickup_time\":11,\"minimum_cart_value\":\"50\",\"delivery_charge_base_km\":11,\"rating\":3,\"branch_availability_status\":1,\"branch_availability_text\":\"Closing at 11:00 pm\",\"busy_reason\":\"\",\"vendor_id\":1,\"vendor_name\":\"Food Factory\",\"vendor_key\":\"eohdfubo9cinm8ga\",\"user_favourite\":0,\"vendor_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\",\"branch_image_path\":[{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"},{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"},{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"},{\"branch_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\"}],\"cuisines\":[{\"cuisine_id\":\"1\",\"cuisine_name\":\"Fast foods\"}],\"vendor_type\":[{\"vendor_type_id\":\"1\",\"vendor_type_name\":\"Plated Buffet Service\"},{\"vendor_type_id\":\"2\",\"vendor_type_name\":\"Plated  Service\"}],\"distance\":1.68,\"eta_time\":38,\"items\":\"\"},{\"branch_key\":\"c6xhpvyunjvowqrq\",\"branch_name\":\"natural restaurent\",\"latitude\":\"11.0146199\",\"longitude\":\"76.9578288\",\"delivery_time\":60,\"pickup_time\":10,\"minimum_cart_value\":\"0\",\"delivery_charge_base_km\":11,\"rating\":0,\"branch_availability_status\":2,\"branch_availability_text\":\"Opening at 04:30 pm\",\"busy_reason\":\"\",\"vendor_id\":16,\"vendor_name\":\"test\",\"vendor_key\":\"oy0oyoc4skesjcrz\",\"user_favourite\":0,\"vendor_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\",\"branch_image_path\":[],\"cuisines\":[{\"cuisine_id\":\"5\",\"cuisine_name\":\"Mexican\"}],\"vendor_type\":[],\"distance\":4.94,\"eta_time\":59,\"items\":\"\"},{\"branch_key\":\"jlcn43owfdds7nw2\",\"branch_name\":\"Eternity\",\"latitude\":\"13.0826802\",\"longitude\":\"80.2707184\",\"delivery_time\":60,\"pickup_time\":10,\"minimum_cart_value\":null,\"delivery_charge_base_km\":0,\"rating\":0,\"branch_availability_status\":2,\"branch_availability_text\":\"Opening at 12:00 am\",\"busy_reason\":\"\",\"vendor_id\":26,\"vendor_name\":\"Eter\",\"vendor_key\":\"gf1gcw9puvd2fqtj\",\"user_favourite\":0,\"vendor_image_path\":\"http://localhost:1030/frontend/web/theme/images/placeholder.png\",\"branch_image_path\":[],\"cuisines\":[{\"cuisine_id\":\"8\",\"cuisine_name\":\"Arabian\"}],\"vendor_type\":[{\"vendor_type_id\":\"1\",\"vendor_type_name\":\"Plated Buffet Service\"}],\"distance\":430.94,\"eta_time\":4338,\"items\":\"Rasgulla,Gulab Jamun,Palkova,Laddu,Basundi,Kaju Katli,Barfi,jalebi,Badusha,Halwa\"},{\"branch_key\":\"jmixreuk6cfye8mx\",\"branch_name\":\"Test Food\",\"latitude\":\"11.2388431\",\"longitude\":\"76.9974433\",\"delivery_time\":60,\"pickup_time\":25,\"minimum_cart_value\":\"50\",\"delivery_charge_base_km\":10,\"rating\":3,\"branch_availability_status\":2,\"branch_availability_text\":\"Opening at 05:30 am\",\"busy_reason\":\"\",\"vendor_id\":1,\"vendor_name\":\"Food Factory\",\"vendor_key\":\"eohdfubo9cinm8ga\",\"user_favourite\":0,\"vendor_image_path\":\"http://localhost:1030/uploads/branchs/1588420896DZ1Vp.jpeg\",\"branch_image_path\":[{\"branch_image_path\":\"http://localhost:1030/uploads/branchs/1588420896vW7SY.jpeg\"},{\"branch_image_path\":\"http://localhost:1030/uploads/branchs/1588420896DZ1Vp.jpeg\"}],\"cuisines\":[{\"cuisine_id\":\"1\",\"cuisine_name\":\"Fast foods\"}],\"vendor_type\":[{\"vendor_type_id\":\"1\",\"vendor_type_name\":\"Plated Buffet Service\"},{\"vendor_type_id\":\"2\",\"vendor_type_name\":\"Plated  Service\"}],\"distance\":25.69,\"eta_time\":282,\"items\":\"\"}]}', '2020-06-02 10:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` bigint(20) NOT NULL,
  `area_key` varchar(16) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `area_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 - Archieved ',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_key`, `country_id`, `city_id`, `area_status`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`) VALUES
(1, 'grknhz2y4c4u5hlm', 1, 2, 1, '2018-07-19 20:29:25', 1, NULL, NULL),
(2, 'tq7tawabwukg3x9w', 1, 1, 1, '2018-07-19 20:30:09', 1, NULL, NULL),
(3, '0uyyuyojuxc9xevw', 2, 3, 1, '2018-08-01 16:12:35', 1, NULL, NULL),
(4, 'cf0dk5bcjzbf5jt6', 2, 3, 1, '2018-08-20 11:01:39', 1, NULL, NULL),
(5, 'th9ksuvwumctjxv3', 2, 3, 3, '2018-08-27 17:56:23', 1, NULL, NULL),
(6, 'mp2ipqbz0rmyi0f8', 1, 6, 1, '2018-09-20 15:01:15', 1, NULL, NULL),
(7, 'jkg5eh8owqyprdfd', 2, 7, 1, '2019-01-12 05:30:05', 1, NULL, NULL),
(8, 'qwiqgmbtkia6vubt', 2, 9, 1, '2020-03-26 14:56:40', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `area_lang`
--

CREATE TABLE `area_lang` (
  `area_lang_id` bigint(20) NOT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `area_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `area_lang`
--

INSERT INTO `area_lang` (`area_lang_id`, `area_id`, `language_code`, `area_name`) VALUES
(1, 1, 'en', 'Sørenga'),
(2, 2, 'en', 'Bragernes'),
(3, 3, 'en', 'Maruthamalai'),
(4, 4, 'en', 'GN Mills'),
(5, 5, 'en', 'RS Puram'),
(6, 6, 'en', 'Elverum og omegn'),
(7, 6, 'no', 'Elverum og omegn norsk'),
(8, 7, 'en', 'earea'),
(9, 7, 'no', 'earea'),
(10, 7, 'ar', 'aarea'),
(11, 8, 'en', 'MG Road');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` bigint(20) NOT NULL,
  `banner_key` varchar(16) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `banner_link` text,
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `banner_type` varchar(45) DEFAULT NULL COMMENT '1 - Web, 2 - App',
  `city_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_key`, `vendor_id`, `banner_link`, `created_user_id`, `created_at`, `modified_user_id`, `modified_at`, `banner_type`, `city_id`) VALUES
(2, 'gfqhvgwzaatmm13z', NULL, NULL, 1, '2018-11-14 13:27:14', NULL, NULL, '', NULL),
(3, 'a0u1ds6x77ttmacd', 1, NULL, 1, '2018-11-14 13:29:37', NULL, NULL, '1', 2),
(4, 'qwoyhndpkpju80v4', NULL, NULL, 1, '2018-11-14 13:30:27', NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banner_lang`
--

CREATE TABLE `banner_lang` (
  `banner_lang_id` bigint(20) NOT NULL,
  `banner_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `banner_name` varchar(64) DEFAULT NULL,
  `banner_image_path` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner_lang`
--

INSERT INTO `banner_lang` (`banner_lang_id`, `banner_id`, `language_code`, `banner_name`, `banner_image_path`) VALUES
(1, 2, 'en', '', '//uploads/banners/1543491108PGgle.png'),
(2, 3, 'en', '10', '/uploads/banners/1550582007aQgKw.jpeg'),
(3, 4, 'en', NULL, '/uploads/banners/1542198627DC77g.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` bigint(20) NOT NULL,
  `branch_key` varchar(16) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `latitude` varchar(32) DEFAULT NULL,
  `longitude` varchar(32) DEFAULT NULL,
  `contact_email` varchar(256) DEFAULT NULL,
  `contact_number` varchar(32) DEFAULT NULL,
  `username` varchar(256) DEFAULT NULL,
  `password_hash` varchar(256) DEFAULT NULL,
  `secret_password_hash` varchar(256) DEFAULT NULL,
  `password_reset_token` varchar(256) DEFAULT NULL,
  `pickup_time` smallint(6) DEFAULT NULL,
  `delivery_time` smallint(6) DEFAULT NULL,
  `preparation_time` double DEFAULT NULL,
  `device_type` tinyint(1) DEFAULT NULL,
  `device_token` varchar(256) DEFAULT NULL,
  `branch_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Offline, 3 - Archeived',
  `approve_status` tinyint(1) DEFAULT NULL COMMENT '1 - Pending, 2 - Approved, 3 - Rejected',
  `payment_option` tinyint(1) DEFAULT NULL COMMENT '1 - Cod, 2 - Online, 3- Both',
  `branch_availability_status` tinyint(1) DEFAULT NULL,
  `delivery_charge_base_km` double DEFAULT NULL,
  `delivery_charge_base` double DEFAULT NULL,
  `delivery_charge_additional_per_km` double DEFAULT NULL,
  `delivery_time_base_km` double DEFAULT NULL,
  `delivery_time_base` double DEFAULT NULL,
  `delivery_time_additional_per_km` double DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `order_type` varchar(45) DEFAULT NULL COMMENT '1 - Delivery, 2 - Pickup, 3 - Both',
  `busy_reason` varchar(45) DEFAULT NULL,
  `branch_type` tinyint(2) DEFAULT NULL COMMENT '1=Veg,2-Non-Veg,3-Both',
  `branch_slug` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_key`, `vendor_id`, `latitude`, `longitude`, `contact_email`, `contact_number`, `username`, `password_hash`, `secret_password_hash`, `password_reset_token`, `pickup_time`, `delivery_time`, `preparation_time`, `device_type`, `device_token`, `branch_status`, `approve_status`, `payment_option`, `branch_availability_status`, `delivery_charge_base_km`, `delivery_charge_base`, `delivery_charge_additional_per_km`, `delivery_time_base_km`, `delivery_time_base`, `delivery_time_additional_per_km`, `rating`, `created_user_id`, `created_at`, `modified_user_id`, `modified_at`, `order_type`, `busy_reason`, `branch_type`, `branch_slug`) VALUES
(1, '6thpdlezujgakkhs', 1, '11.014822519009082', '76.95789203652339', 'aathira.s@.com', '600321499235', 'FF_Vendor', '$2y$13$9ThROhme3wTP.Gm.afINJuRPlXCto8cOPvYwQn7J.IrKvsWpGaHwe', 'qHfwDb', NULL, 12, 12, 13, NULL, NULL, 1, 2, NULL, 1, 4, 5, 10, 12, 12, 2, 3, 1, '2018-08-01 19:26:42', NULL, NULL, '3', 'bgbg', 1, 'cbe'),
(2, 'wvqzxhargtobxyqz', 3, '59.905262277234584', '10.763231728124993', 'pradeep.k@.com', '1265454', 'sdf465', '$2y$13$HIOKwfY7ZUykz1lXpvxxi.ckvNlmJJ2tjNKtzGTqDcIORa7SfPmVu', 'S1dJi2', NULL, 10, 20, 20, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, '2018-08-29 13:02:17', NULL, NULL, '3', 'sdfsd', 0, '0'),
(3, 'dp094wwzccid63np', 2, '59.9158796', '10.750738100000035', 'kfcnorway@gmail.com', '67121212222', NULL, NULL, NULL, NULL, 12, 12, 12, NULL, NULL, 3, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-09-14 16:39:31', NULL, NULL, '3', '', 0, '0'),
(4, 'ouz7glqadlc9tqiv', 11, '59.9138688', '10.752245399999993', 'gg@gmail.com', '987456321', NULL, NULL, NULL, NULL, 25, 10, 10, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-09-20 16:51:17', NULL, NULL, '2', '12', 0, '0'),
(5, 'txgw2vreqrkweegk', 4, '59.9138688', '10.752245399999993', 'vendor@hm.com', '56363653', NULL, NULL, NULL, NULL, 3, 3, 3, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-09-20 18:33:31', NULL, NULL, '3', 'th', 0, '0'),
(6, 'ojyodzzaycr3sofh', 10, '60.8848652', '11.560667800000033', 'asdasd@asdas.no', '12312312', NULL, NULL, NULL, NULL, 30, 60, 30, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2018-09-21 15:13:39', NULL, NULL, '3', NULL, 0, '0'),
(7, 'gu5d0asgic7lizua', 2, '41.87595200000001', '12.475694', 'domino@123.com', '1212121212', NULL, NULL, NULL, NULL, 11, 11, 11, NULL, NULL, 1, 2, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-09-26 14:50:47', NULL, NULL, '2', 'ss', 0, '0'),
(8, 'shnb1lqlbfydogw9', 1, '11.0247473', '76.89803710000001', 'cokaraco1212@123.com', '12121232323233', NULL, NULL, NULL, NULL, 11, 12, 21, NULL, NULL, 1, 2, NULL, 1, 40, 4, 10, NULL, NULL, NULL, NULL, 1, '2018-09-27 11:04:49', NULL, NULL, '1', NULL, 0, '0'),
(9, '4bgl44bu6tvmum5h', 1, '11.0179862', '76.91748929999994', 'test@famil.com', '99678764564', NULL, NULL, NULL, NULL, 45, 45, 45, NULL, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-10-03 09:59:54', NULL, NULL, '3', NULL, 0, '0'),
(10, 'habsco3woxsywd8m', 1, '11.0168445', '76.95583209999995', 'gautam.e@.com', '8940585885', NULL, NULL, NULL, NULL, 12, 12, 22, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-03-09 10:40:00', NULL, NULL, '1', NULL, 0, '0'),
(11, 'vpiethvl1krv73pm', 1, '11.0104033', '76.94990280000002', 'burambhai@123.com', '8940585889', NULL, NULL, NULL, NULL, 12, 12, 12, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-03-11 15:53:40', NULL, NULL, '1', NULL, 0, '0'),
(12, 'mia3wce5s6jlr7e0', 4, '11.0742791', '76.943074', 'poovizhi.r@ontabee.com', '1234567890', NULL, NULL, NULL, NULL, 10, 5, 12, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-02-25 16:08:06', NULL, NULL, '3', NULL, NULL, NULL),
(13, 'tlp80utkcsmbi3xw', 4, '11.0742791', '76.943074', 'poovizhi@ontabee.com', '1234567888', NULL, NULL, NULL, NULL, 10, 5, 12, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-02-25 16:14:35', NULL, NULL, '3', NULL, NULL, NULL),
(14, 'c6xhpvyunjvowqrq', 16, '11.0146199', '76.9578288', 'poovizhir@gmail.com', '1231231230', NULL, NULL, NULL, NULL, 10, 10, 10, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-02-28 12:52:46', NULL, NULL, '3', NULL, NULL, NULL),
(15, 'ag0la6vx3khqc8om', 2, '11.0168445', '76.9558321', 'poovizhi@yahoo.com', '1231231456', NULL, NULL, NULL, NULL, 10, 10, 10, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-02 11:02:19', NULL, NULL, '3', NULL, NULL, NULL),
(16, 'vwdsy4gdoepp2ob7', 1, '3.12026', '101.6222681', 'dfd@dg.yhj', '1231231285', NULL, NULL, NULL, NULL, 43, 44, 45, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-05 11:49:03', NULL, NULL, '3', NULL, NULL, NULL),
(17, 'xtlovfqxc4yzlr5r', 2, '37.1773363', '-3.5985571', 'hjbhj@g.com', '1231231200', NULL, NULL, NULL, NULL, 43, 4, 4, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-05 11:54:12', NULL, NULL, '3', NULL, NULL, NULL),
(18, 'hb75jcqxpf8n71jn', 7, '11.0168445', '76.9558321', 'ddc@g.com', '1147852123', NULL, NULL, NULL, NULL, 10, 10, 10, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-05 12:55:09', NULL, NULL, '3', NULL, NULL, NULL),
(19, 'me2ihsdikqfafnmf', 7, '11.2388431', '76.9974433', 'test@gmail.com', '8765678677', NULL, NULL, NULL, NULL, 32, 23, 23, NULL, NULL, 3, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-05 13:01:09', NULL, NULL, '3', NULL, NULL, NULL),
(20, 'a9nq8cniploe3z5t', 9, '11.0802453', '76.941513', 'dfsasa@dgf.gh', '1231231111', NULL, NULL, NULL, NULL, 43, 10, 10, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-05 18:49:55', NULL, NULL, '3', NULL, NULL, NULL),
(21, 'cevliovjsaeqabyw', 23, '12.9473766', '77.5946829', 'testvendor@gmail.com', '8847788846', NULL, NULL, NULL, NULL, 9, 9, 30, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2020-03-26 17:35:12', NULL, NULL, '2', NULL, NULL, NULL),
(22, 'ikvfzwy3utg97gdx', 23, '-37.8156694', '144.952988', 'testvendor3@gmail.com', '09945588876', NULL, NULL, NULL, NULL, 9, 9, 30, NULL, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-30 11:52:41', NULL, NULL, '3', NULL, NULL, NULL),
(23, 'dwibypvlfjq3wfnh', 26, '11.0168445', '76.9558321', 'amritha.r@.com', '9003793971', NULL, NULL, NULL, NULL, 10, 15, 20, NULL, NULL, 3, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-30 18:00:42', NULL, NULL, '3', NULL, NULL, NULL),
(24, 'jlcn43owfdds7nw2', 26, '13.0826802', '80.2707184', 'shdg@gmail.com', '365634654', NULL, NULL, NULL, NULL, 10, 19, 29, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-03-30 18:06:20', NULL, NULL, '3', NULL, NULL, NULL),
(25, 'jmixreuk6cfye8mx', 1, '11.2388431', '76.9974433', 'testfood@gmail.com', '9876543210', NULL, NULL, NULL, NULL, 25, 25, 25, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-02 17:31:40', NULL, NULL, '3', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch_delivery_area`
--

CREATE TABLE `branch_delivery_area` (
  `branch_delivery_area_id` bigint(20) NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `delivery_area_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch_delivery_area`
--

INSERT INTO `branch_delivery_area` (`branch_delivery_area_id`, `branch_id`, `delivery_area_id`) VALUES
(18, 4, 3),
(20, 5, 3),
(21, 6, 3),
(30, 9, 2),
(43, 13, 3),
(52, 14, 16),
(53, 15, 4),
(54, 16, 3),
(57, 17, 7),
(59, 18, 4),
(62, 19, 2),
(66, 20, 4),
(68, 7, 2),
(71, 8, 2),
(72, 21, 4),
(74, 22, 2),
(75, 23, 2),
(76, 23, 15),
(79, 24, 2),
(83, 25, 15),
(85, 1, 2),
(86, 1, 15),
(87, 2, 15),
(88, 2, 17);

-- --------------------------------------------------------

--
-- Table structure for table `branch_image`
--

CREATE TABLE `branch_image` (
  `branch_image_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `branch_image_path` varchar(250) DEFAULT NULL,
  `image_thumb_path` text,
  `image_large_path` text,
  `image_original_path` text,
  `is_default` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch_image`
--

INSERT INTO `branch_image` (`branch_image_id`, `branch_id`, `branch_image_path`, `image_thumb_path`, `image_large_path`, `image_original_path`, `is_default`) VALUES
(1, 16, 'uploads/items/1583388165uvYFJ.jpeg', NULL, NULL, NULL, NULL),
(2, 16, 'uploads/items/1583388171JgsUg.png', NULL, NULL, NULL, NULL),
(3, 16, 'uploads/items/1583388171bFuBC.jpg', NULL, NULL, NULL, NULL),
(4, 16, 'uploads/items/1583388171wknSJ.jpeg', NULL, NULL, NULL, NULL),
(5, 16, 'uploads/items/1583388181FZpGq.jpeg', NULL, NULL, NULL, NULL),
(6, 16, 'uploads/items/1583388181e3J0h.jpg', NULL, NULL, NULL, NULL),
(7, 16, 'uploads/items/1583388181c4FiT.png', NULL, NULL, NULL, NULL),
(8, 16, 'uploads/items/158338818187YaF.jpeg', NULL, NULL, NULL, NULL),
(14, 17, 'uploads/items/1583392387LAEj1.jpeg', NULL, NULL, NULL, NULL),
(15, 18, 'uploads/items/15833930598dvNS.jpg', NULL, NULL, NULL, NULL),
(17, 18, 'uploads/items/15833930592uIk7.jpeg', NULL, NULL, NULL, NULL),
(19, 18, 'uploads/items/1583393123QqLqI.jpeg', NULL, NULL, NULL, NULL),
(21, 19, 'uploads/items/15833933922xorQ.png', NULL, NULL, NULL, NULL),
(23, 19, 'uploads/items/15833935063c7qe.png', NULL, NULL, NULL, NULL),
(29, 20, 'uploads/items/1583414356R4UyT.jpeg', NULL, NULL, NULL, NULL),
(30, 20, 'uploads/items/1583414357Pi8rt.png', NULL, NULL, NULL, NULL),
(33, 20, 'uploads/items/1583414407JJQ7n.jpg', NULL, NULL, NULL, NULL),
(34, 20, 'uploads/items/1583414407mPm2V.jpeg', NULL, NULL, NULL, NULL),
(35, 20, 'uploads/items/15834144076FnWK.png', NULL, NULL, NULL, NULL),
(38, 7, 'uploads/items/1583556496LHfZa.jpeg', NULL, NULL, NULL, NULL),
(39, 7, 'uploads/items/1583556496q3wlm.jpg', NULL, NULL, NULL, NULL),
(40, 7, 'uploads/items/1583556496vXnSj.jpeg', NULL, NULL, NULL, NULL),
(41, 7, 'uploads/items/1583556496EDf7d.jpeg', NULL, NULL, NULL, NULL),
(51, 8, 'uploads/items/1583837957Esdc5.jpeg', NULL, NULL, NULL, NULL),
(52, 8, 'uploads/items/1583837957Qdssd.jpg', NULL, NULL, NULL, NULL),
(53, 8, 'uploads/items/1583837957glQO4.jpeg', NULL, NULL, NULL, NULL),
(54, 8, 'uploads/items/1583837957dlDuV.png', NULL, NULL, NULL, NULL),
(55, 1, 'uploads/branchs/15884203402J6aL.jpeg', NULL, NULL, NULL, NULL),
(56, 1, 'uploads/branchs/1588420340sH8gR.jpeg', NULL, NULL, NULL, NULL),
(59, 25, 'uploads/branchs/1588420896vW7SY.jpeg', NULL, NULL, NULL, NULL),
(60, 25, 'uploads/branchs/1588420896DZ1Vp.jpeg', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch_lang`
--

CREATE TABLE `branch_lang` (
  `branch_lang_id` bigint(20) NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `branch_name` varchar(256) DEFAULT NULL,
  `branch_address_line1` varchar(256) DEFAULT NULL,
  `branch_address_line2` varchar(256) DEFAULT NULL,
  `area` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `branch_image_path` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch_lang`
--

INSERT INTO `branch_lang` (`branch_lang_id`, `branch_id`, `language_code`, `branch_name`, `branch_address_line1`, `branch_address_line2`, `area`, `city`, `country`, `branch_image_path`) VALUES
(1, 1, 'en', 'CBE_Branch', '428,Patel Road', '', 'Coimbatore', 'Coimbatore', 'India', '/uploads/branchs/1588420468qm9I4.jpeg'),
(2, 2, 'en', 'Oslo', '16,Bispegata', '', 'Oslo', 'Oslo kommune', 'Norway', NULL),
(3, 3, 'en', 'Burma kfc ', '1,Jernbanetorget', '', 'test', 'Oslo kommune', 'Norway', NULL),
(4, 3, 'no', 'kfc norway ', '16,Torggata', '', 'test', 'Oslo kommune', 'Norway', NULL),
(6, 4, 'en', 'Cheap', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 4, 'no', 'Cheap', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 5, 'en', 'gfhjyj', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 5, 'no', 'y', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 6, 'en', 'Kafe Øst', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 6, 'no', 'Kafe Øst', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 7, 'en', 'domino\'s pizza', 'Testaccio, Rome, Metropolitan City of Rome, Italy', '', 'Rome', 'Metropolitan City of Rome', 'Italy', '/uploads/items/1583556496EDf7d.jpeg'),
(16, 7, 'no', 'domino\'s pizza', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 8, 'en', 'cokaraco', 'Vadavalli, Coimbatore, Tamil Nadu, India', '', 'Coimbatore', 'Coimbatore', 'India', '/uploads/items/1583837957dlDuV.png'),
(19, 8, 'no', 'cokaraco', 'Vadavalli, Coimbatore, Tamil Nadu, India', '', 'Coimbatore', 'Coimbatore', 'India', NULL),
(21, 9, 'en', 'test en', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 9, 'no', 'test no', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 1, 'no', 'CBE_Branch_no', '428,Patel Road', '', 'Coimbatore', 'Coimbatore', 'India', NULL),
(24, 2, 'no', 'oslo', '16,Bispegata', '', 'Oslo', 'Oslo kommune', 'Norway', NULL),
(25, 1, 'ar', 'test', '428,Patel Road', '', 'Coimbatore', 'Coimbatore', 'India', NULL),
(26, 8, 'ar', 'cokaraco', 'Vadavalli, Coimbatore, Tamil Nadu, India', '', 'Coimbatore', 'Coimbatore', 'India', NULL),
(27, 10, 'en', 'Cockaraco', 'Coimbatore, Tamil Nadu, India', '', 'Coimbatore', 'Coimbatore', 'India', NULL),
(28, 10, 'no', 'Cockaraco', 'Coimbatore, Tamil Nadu, India', '', 'Coimbatore', 'Coimbatore', 'India', NULL),
(29, 10, 'ar', 'Cockaraco', 'Coimbatore, Tamil Nadu, India', '', 'Coimbatore', 'Coimbatore', 'India', NULL),
(30, 11, 'en', 'Burma Bhai', 'R.S. Puram, Coimbatore, Tamil Nadu, India', '', 'Coimbatore', 'Coimbatore', 'India', NULL),
(31, 11, 'no', 'Burma Bhai', 'R.S. Puram, Coimbatore, Tamil Nadu, India', '', 'Coimbatore', 'Coimbatore', 'India', NULL),
(32, 11, 'ar', 'Burma Bhai', 'R.S. Puram, Coimbatore, Tamil Nadu, India', '', 'Coimbatore', 'Coimbatore', 'India', NULL),
(33, 13, 'en', 'test', 'Thudiyalur, Mettupalayam Road, Viswanathapuram, Thudiyalur, Tamil Nadu, India,Mettupalayam Road', 'Mettupalayam', 'Thudiyalur', 'Coimbatore', 'India', NULL),
(34, 14, 'en', 'natural restaurent', '428,Patel Road', 'coimbatore', 'Coimbatore', 'Coimbatore', 'India', '/uploads/branchs/1582875231jUK5D.jpg'),
(35, 15, 'en', '', 'Coimbatore, Tamil Nadu, India', 'Coimbatore, Tamil Nadu, India', 'Coimbatore', 'Coimbatore', 'India', NULL),
(36, 16, 'en', '23', 'SS2, Petaling Jaya, Selangor, Malaysia', 'coimbatore', 'Petaling Jaya', 'Coimbatore', 'Malaysia', '/uploads/items/158338818187YaF.jpeg'),
(37, 17, 'en', '34343', 'Granada, Spain', 'coimbatore', 'Granada', 'Granada', 'Spain', '/uploads/items/1583392387LAEj1.jpeg'),
(38, 18, 'en', 'Test branch for image upload', 'Coimbatore, Tamil Nadu, India', 'dsddds', 'Coimbatore', 'Coimbatore', 'India', '/uploads/items/1583393124wtsqI.jpg'),
(39, 19, 'en', 'Test Branch', 'Vadavalli, Tamil Nadu, India', '', 'Vadavalli', 'Coimbatore', 'India', '/uploads/items/15833935063c7qe.png'),
(40, 20, 'en', '12345', 'Thudiyalur, Tamil Nadu, India', 'coimbatore', 'Thudiyalur', 'Coimbatore', 'India', '/uploads/items/15834144076FnWK.png'),
(41, 21, 'en', 'test', '33 Cross Road', 'xyz', 'Bengaluru', 'Bangalore Urban', 'India', NULL),
(42, 22, 'en', 'testvendor', '220,Spencer Street', '220,Spencer Street', 'Melbourne', 'Melbourne City', 'Australia', NULL),
(43, 23, 'en', 'Eternity', 'Coimbatore, Tamil Nadu, India', '', 'Coimbatore', 'Coimbatore', 'India', NULL),
(44, 24, 'en', 'Eternity', 'Chennai, Tamil Nadu, India', '', 'Chennai', 'Chennai', 'India', NULL),
(45, 25, 'en', 'Test Food', 'Vadavalli, Tamil Nadu, India', '', 'Vadavalli', 'Coimbatore', 'India', '/uploads/branchs/1588420896DZ1Vp.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `branch_review`
--

CREATE TABLE `branch_review` (
  `branch_review_id` bigint(20) NOT NULL,
  `branch_review_key` varchar(16) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `review` text,
  `status` tinyint(1) DEFAULT NULL COMMENT '1 - Pending, 2 - Approved, 3 - Rejeceted',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch_review`
--

INSERT INTO `branch_review` (`branch_review_id`, `branch_review_key`, `user_id`, `vendor_id`, `branch_id`, `rating`, `review`, `status`, `created_at`, `modified_at`, `title`) VALUES
(1, 'g1o3k2uzyarficco', 163, 1, 1, 5, 'dsd', 3, '2019-11-27 16:09:27', NULL, NULL),
(3, 'jpvgj3akqjc0ynxs', 167, 2, 7, NULL, 'dfhjdfhj ndfjdhfjdhfjdhfjdfhjdfh ndfjdhfjdhfjhf dfjdhfjdfhjdhfjdf  dbfjdhfjdfhjdf dnbfbjdfhjdfhjd dnfbjdfjdhfjdhfjdhfdjhfjdhfjdhfjhdfjhdjfhdjfhjdhfjdfhjdhfjdhfjdhfjdfhjdfhdjfhjdfhjdfhdjfhddddddjdjfhdjfhjdf dfbdbfndfbndfbndbfndbfndbfnd', 3, '2020-03-31 08:42:35', NULL, NULL),
(4, 'vgowgm2bjybwtet3', 167, 26, 24, 5, 'Food is any substance consumed to provide nutritional support for an organism. Food is usually of plant or animal origin, and contains essential nutrients, such as carbohydrates, fats, proteins, vitamins, or minerals.', 2, '2020-03-31 08:46:04', NULL, NULL),
(5, '873qlk3y1dmi64j9', 1, 1, 1, 4, 'sss', 2, '2020-05-19 18:24:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch_timeslot`
--

CREATE TABLE `branch_timeslot` (
  `branch_timeslot_id` bigint(20) NOT NULL,
  `branch_timeslot_key` varchar(16) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `timeslot_type` tinyint(1) DEFAULT NULL COMMENT '1- Delivery, 2 - Pickup',
  `day_id` tinyint(1) DEFAULT NULL COMMENT '1 - Sunday, 2 - Monday, 3- Tuesday, 4 - Wednesday, 5 - Thursday, 6 - Friday, 7 - Saturday',
  `timeslot_start_time` time DEFAULT NULL,
  `timeslot_end_time` time DEFAULT NULL,
  `branch_timeslot_status` tinyint(1) DEFAULT NULL COMMENT '1 - A',
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch_timeslot`
--

INSERT INTO `branch_timeslot` (`branch_timeslot_id`, `branch_timeslot_key`, `branch_id`, `timeslot_type`, `day_id`, `timeslot_start_time`, `timeslot_end_time`, `branch_timeslot_status`, `created_user_id`, `created_at`, `modified_user_id`, `modified_at`) VALUES
(1, '8q917xlgmfxe7v09', 1, 1, 4, '09:00:00', '18:00:00', 1, 1, '2018-08-29 11:02:01', NULL, NULL),
(2, 'hiakbgb2nzsg3azf', 1, 2, 4, '09:00:00', '18:00:00', 1, 1, '2018-08-29 11:02:22', NULL, NULL),
(3, 'bgp2viaxncedxsun', 1, 1, 5, '08:00:00', '22:15:00', 1, 1, '2018-08-30 10:00:34', NULL, NULL),
(5, 'vmns589kshn92tvb', 1, 2, 5, '06:40:00', '22:30:00', 1, 1, '2018-08-30 10:01:23', NULL, NULL),
(6, 'dt9queznuqifeta4', 2, 1, 1, NULL, NULL, 2, 1, '2018-08-31 17:28:47', NULL, NULL),
(7, 'unq8kfqdgcq4xhoo', 2, 1, 1, NULL, NULL, 2, 1, '2018-08-31 17:28:47', NULL, NULL),
(8, 'obebirrww7jv4ade', 2, 1, 2, '00:00:00', '23:58:00', 1, 1, '2018-09-03 13:21:18', NULL, NULL),
(9, 'c55pnfrj6z9ou0x9', 2, 2, 2, '00:00:00', '23:58:00', 1, 1, '2018-09-03 13:21:20', NULL, NULL),
(10, '11cphlqukcdk3icu', 1, 1, 2, '00:00:00', '23:30:00', 1, 1, '2018-09-10 10:34:28', NULL, NULL),
(11, '9lspff5zojvc6htw', 1, 2, 2, '00:00:00', '23:00:00', 1, 1, '2018-09-10 10:34:47', NULL, NULL),
(12, 'tui51kgiynxicv5l', 2, 1, 3, '00:00:00', '23:58:00', 1, 1, '2018-09-11 10:55:20', NULL, NULL),
(13, '1ryl3tflftcdupzs', 2, 2, 3, '00:00:00', '23:58:00', 1, 1, '2018-09-11 10:56:08', NULL, NULL),
(14, 'pkpogol6e53ogu2k', 1, 1, 3, '07:30:00', '18:00:00', 1, 1, '2018-09-11 11:26:54', NULL, NULL),
(15, '7sp6vcvasjyi1l5t', 1, 2, 3, '07:30:00', '18:00:00', 1, 1, '2018-09-11 11:27:05', NULL, NULL),
(16, '2ygy2gdjler93nqr', 2, 1, 4, '00:00:00', '23:58:00', 1, 1, '2018-09-12 10:12:18', NULL, NULL),
(17, '6aozavxbx4v6cunh', 2, 2, 4, '09:00:00', '23:58:00', 2, 1, '2018-09-12 10:12:19', NULL, NULL),
(18, 'h84qag8do5aj9qxj', 2, 2, 5, '00:00:00', '23:58:00', 1, 1, '2018-09-12 11:54:27', NULL, NULL),
(19, '4ip5azgfacf0mvw4', 1, 1, 6, '08:30:00', '23:30:00', 1, 1, '2018-09-14 09:57:54', NULL, NULL),
(20, 'tdpb4gxwzvju8xby', 1, 2, 6, '06:00:00', '00:55:00', 1, 1, '2018-09-14 09:58:14', NULL, NULL),
(21, 'pjc5g9owjdspmiac', 2, 1, 5, '00:00:00', '23:58:00', 1, 1, '2018-09-14 10:01:52', NULL, NULL),
(22, 'yc5mqewjxczd1quf', 2, 1, 6, '00:00:00', '23:58:00', 1, 1, '2018-09-14 10:02:39', NULL, NULL),
(23, 'jkpytrfln58pjtsn', 2, 2, 6, '00:00:00', '23:58:00', 1, 1, '2018-09-14 10:06:42', NULL, NULL),
(24, '6myw49xqpxfthkxg', 3, 1, 6, '11:00:00', '23:58:00', 2, 1, '2018-09-14 18:23:49', NULL, NULL),
(25, 'nhcc2id5mptxd2i4', 3, 2, 6, '11:30:00', '23:58:00', 2, 1, '2018-09-14 18:24:01', NULL, NULL),
(26, '7grelwjbqu0nywfy', 3, 2, 4, '11:30:00', '23:00:00', 1, 1, '2018-09-19 11:04:49', NULL, NULL),
(27, 'yovxccfcesaejaux', 3, 1, 4, '11:30:00', '23:57:00', 1, 1, '2018-09-19 11:05:00', NULL, NULL),
(28, 'vi3zc8wlrz8y1iar', 3, 2, 5, '01:30:00', '23:58:00', 1, 1, '2018-09-20 09:47:06', NULL, NULL),
(29, '57b5zaoyefmwq2ah', 3, 1, 5, '01:30:00', '23:50:00', 1, 1, '2018-09-20 09:48:08', NULL, NULL),
(30, '7tmt6ylbqa6qpd8m', 3, 2, 1, '09:00:00', '14:00:00', 1, 1, '2018-09-24 09:41:39', NULL, NULL),
(31, 'dqzpwrrqohyyq23y', 3, 1, 1, '09:00:00', '10:00:00', 1, 1, '2018-09-24 09:41:49', NULL, NULL),
(32, 'flyquprvspyo1myj', 3, 1, 2, '09:00:00', '14:00:00', 2, 1, '2018-09-24 09:43:34', NULL, NULL),
(33, 'icpmj3uabcecvaq1', 3, 2, 2, '09:00:00', '14:00:00', 2, 1, '2018-09-24 09:43:45', NULL, NULL),
(34, 'szpo1esaxjy0uvt8', 6, 1, 1, '10:00:00', '23:55:00', 1, 1, '2018-10-01 09:41:28', NULL, NULL),
(35, 'hmddsesn2ptqrsjy', 1, 1, 1, '08:30:00', '21:30:00', 1, 1, '2018-10-03 11:53:08', NULL, NULL),
(36, 'zyssepuvyt12vlzi', 1, 2, 1, '08:30:00', '21:30:00', 1, 1, '2018-10-03 11:53:23', NULL, NULL),
(37, 'n8acy2duohfxspzu', 2, 2, 7, '00:00:00', '23:58:00', 1, 1, '2018-10-05 07:05:24', NULL, NULL),
(38, 'phhogbqklwew6op2', 2, 1, 7, '09:30:00', '11:00:00', 1, 1, '2018-10-05 07:05:44', NULL, NULL),
(39, 'ssogtz3zetiiovw1', 1, 2, 7, '00:00:00', '23:55:00', 1, 1, '2018-11-10 08:50:48', NULL, NULL),
(40, 'vlvcqemwyv5frcqo', 1, 1, 7, '00:00:00', '23:55:00', 1, 1, '2018-11-10 08:50:49', NULL, NULL),
(41, 'kfyku70aiwgydo81', 7, 1, 2, '16:00:00', '18:00:00', 1, 1, '2018-11-26 11:32:53', NULL, NULL),
(43, 'b0sckzyujuckyocr', 3, 1, 3, NULL, NULL, 1, 1, '2018-11-30 13:49:33', NULL, NULL),
(44, 'l3hcmwnqvbrjcwza', 8, 2, 6, '10:00:00', '13:58:00', 1, 1, '2018-12-07 11:54:58', NULL, NULL),
(45, 'isxoqi4slrphybur', 8, 1, 6, '00:00:00', '23:00:00', 1, 1, '2018-12-07 11:55:05', NULL, NULL),
(46, '7bw6knuu6ffxyeqz', 7, 2, 3, '00:00:00', '23:58:00', 2, 1, '2018-12-11 05:33:55', NULL, NULL),
(47, 'in2s04zlieqitrtw', 7, 1, 3, '00:00:00', '23:59:00', 2, 1, '2018-12-11 05:34:10', NULL, NULL),
(48, 'ikk7puiq0mk8lfdc', 2, 2, 1, NULL, '00:00:00', 1, 1, '2019-02-13 16:01:14', NULL, NULL),
(49, 'ynwlwrmzeuukbhty', 10, 2, 6, '00:00:00', '23:55:00', NULL, 1, '2019-03-09 10:44:06', NULL, NULL),
(50, 'ozjg6eukewdkaucp', 10, 1, 6, '00:00:00', '23:55:00', 1, 1, '2019-03-09 10:44:18', NULL, NULL),
(51, '91inznmwptaycmdd', 10, 2, 7, '10:00:00', '10:00:00', 1, 1, '2019-03-09 11:10:34', NULL, NULL),
(52, 'jt0oxyzws8jetqkv', 10, 1, 7, '00:00:00', '10:00:00', 1, 1, '2019-03-09 11:10:45', NULL, NULL),
(53, 'pnxi9qhgzpotgv3a', 10, 2, 2, '00:00:00', '23:55:00', 1, 1, '2019-03-18 10:39:51', NULL, NULL),
(54, '1cqoaxgzwbjdodnh', 10, 1, 2, '00:00:00', '23:55:00', 1, 1, '2019-03-18 10:39:52', NULL, NULL),
(55, 'qecmbmtnmvpgtkar', 8, 2, 3, '01:00:00', '23:00:00', 1, 1, '2019-05-07 16:32:36', NULL, NULL),
(56, '5y1eg4b51janmjzt', 8, 1, 3, '01:00:00', '23:00:00', 1, 1, '2019-05-07 16:32:42', NULL, NULL),
(57, 'eeyqggl13ksgnpi8', 11, 2, 3, '01:00:00', '23:00:00', 1, 1, '2019-05-07 16:32:57', NULL, NULL),
(58, '0vrpgijfie0xgt0f', 11, 1, 3, '01:00:00', '23:00:00', 1, 1, '2019-05-07 16:33:02', NULL, NULL),
(61, 'ynsxd2rf5x2kzimn', 3, 2, 3, NULL, NULL, 1, 1, '2020-02-26 17:08:31', NULL, NULL),
(62, '70h77gcoagq9ipjo', 3, 2, 7, NULL, NULL, 1, 1, '2020-02-26 17:08:34', NULL, NULL),
(63, 'tz6kkbjzbdzgxgm7', 3, 1, 7, NULL, NULL, 1, 1, '2020-02-26 17:08:40', NULL, NULL),
(65, 'mdorpy5hefwpcbff', 3, 2, 5, '01:00:00', '23:00:00', 1, 1, '2020-02-27 10:18:57', NULL, NULL),
(66, 'x2cigspvpenfbp2h', 8, 2, 5, '06:00:00', '08:00:00', 2, 1, '2020-02-27 10:34:16', NULL, NULL),
(67, 'qh10kfovr6encnp2', 8, 1, 5, '05:00:00', '10:00:00', 2, 1, '2020-02-27 10:34:18', NULL, NULL),
(72, 'tnt4icftawjaiu1x', 8, 2, 5, '14:05:00', '16:00:00', 1, 1, '2020-02-27 13:02:06', NULL, NULL),
(73, 'cjeahoysc3zrtbpl', 8, 1, 5, '14:10:00', '16:00:00', 1, 1, '2020-02-27 13:02:32', NULL, NULL),
(74, 'vvorgmrkhpmemjvk', 7, 1, 6, '00:00:00', '23:55:00', 2, 1, '2020-02-28 12:17:49', NULL, NULL),
(75, 'hjoepispugrnhgvi', 7, 2, 6, '00:00:00', '23:55:00', 2, 1, '2020-02-28 12:18:08', NULL, NULL),
(76, '413vn6fsiehamska', 7, 2, 2, '16:00:00', '18:00:00', 1, 1, '2020-03-02 12:00:29', NULL, NULL),
(77, '1zxvw5hsr2nncjj1', 14, 1, 2, '08:00:00', '18:00:00', 1, 1, '2020-03-02 12:01:12', NULL, NULL),
(78, 'aznxtolf5pfj3s03', 7, 2, 5, '14:00:00', '18:00:00', 1, 1, '2020-03-05 15:51:54', NULL, NULL),
(79, '4ihr8h59xtsuji7p', 7, 1, 5, '14:00:00', '18:00:00', 1, 1, '2020-03-05 15:51:55', NULL, NULL),
(80, '5y5jq5iz67hdpbgi', 14, 1, 5, '16:30:00', '20:00:00', 1, 1, '2020-03-05 15:54:30', NULL, NULL),
(81, 'c3zj6hyo9rztk8pa', 7, 2, 7, '05:00:00', '16:57:00', 1, 1, '2020-03-07 09:41:53', NULL, NULL),
(82, 'nkdlrrb1sehbye5a', 7, 1, 7, '05:00:00', '16:57:00', 1, 1, '2020-03-07 09:42:03', NULL, NULL),
(83, 'vupky7drxhxy7em3', 8, 2, 2, '09:00:00', '19:00:00', 1, 1, '2020-03-09 16:39:56', NULL, NULL),
(84, 'rzr9sb96tayshbme', 8, 1, 2, '09:00:00', '19:00:00', 1, 1, '2020-03-09 16:40:04', NULL, NULL),
(85, 'eykwkkzvc5qwgikk', 22, 1, 1, NULL, NULL, 2, 1, '2020-03-30 11:54:27', NULL, NULL),
(86, 'yegv17zcxbuuxlz7', 22, 1, 1, NULL, NULL, 1, 1, '2020-03-30 11:54:27', NULL, NULL),
(88, 'yefccpjslqikiuf0', 23, 2, 2, '00:00:00', '23:00:00', 1, 1, '2020-03-30 18:02:21', NULL, NULL),
(89, 'qkrnhg4zrggpenvd', 23, 1, 2, '00:00:00', '23:00:00', 1, 1, '2020-03-30 18:02:23', NULL, NULL),
(90, 'vc5knspbspbqfe9p', 24, 2, 2, '00:00:00', '23:00:00', 1, 1, '2020-03-30 18:08:53', NULL, NULL),
(91, '4yhqozt6iwyjci0v', 24, 1, 2, '00:00:00', '23:00:00', 1, 1, '2020-03-30 18:08:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` bigint(20) NOT NULL,
  `brand_key` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `sort_no` smallint(6) DEFAULT NULL,
  `brand_status` tinyint(1) DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_key`, `sort_no`, `brand_status`, `created_user_id`, `created_at`, `modified_user_id`, `updated_at`) VALUES
(1, 'tsigolcxnol4b43s', 1, 3, 1, '2019-12-26 17:30:17', NULL, '2020-01-29 17:35:04'),
(2, 'd9vuajqvjsrjj3sw', 2, 3, 1, '2019-12-26 17:42:46', NULL, '2019-12-26 17:46:40'),
(3, 'gmwx6trxm7mintjn', 85, 3, 1, '2019-12-26 17:55:56', NULL, '2020-01-29 17:35:02'),
(4, 'a2sozvqtei2s8pvk', 121, 3, 1, '2020-01-24 15:16:35', NULL, '2020-01-31 10:45:55'),
(5, '9wflrpfmijbzpy9v', 12345, 3, 1, '2020-01-24 15:17:39', NULL, '2020-01-29 17:35:00'),
(6, 'iql3jzyatdsjjbgu', 111, 3, 1, '2020-01-24 15:20:32', NULL, '2020-01-29 17:34:58'),
(7, 'vqqjv4jn6cwumh8d', 11111, 3, 1, '2020-01-24 15:23:04', NULL, '2020-01-29 17:34:56'),
(8, 'sao9ugxopsg6kdsa', 963, 3, 1, '2020-01-24 15:32:26', NULL, '2020-01-29 17:34:54'),
(9, 'jqq4taoi1mymcgxj', 345, 3, 1, '2020-01-24 15:43:46', NULL, '2020-01-24 15:45:23'),
(10, '3yg37owqp9xvfxr4', 320, 3, 1, '2020-01-29 17:29:43', NULL, '2020-01-29 17:30:00'),
(11, 'd1reibh6mhaua3hd', 456, 3, 1, '2020-01-29 17:32:56', NULL, '2020-01-29 17:35:08'),
(12, 'p9yeqmlt4y9dqxl1', 3, 3, 1, '2020-01-31 11:21:23', NULL, '2020-01-31 11:21:31'),
(13, 'wzcjmroimxdxfdbz', 11, 3, 1, '2020-02-03 11:05:02', NULL, '2020-02-19 19:52:07'),
(14, 'x83iel1ujk9lystc', 12, 3, 1, '2020-02-03 12:51:23', NULL, '2020-02-06 12:59:19'),
(15, 'qm2tvgalfumcqrju', 0, 3, 1, '2020-02-03 13:27:43', NULL, '2020-02-03 17:42:43'),
(16, 'hlhqqdtkngvoztlj', 220, 3, 1, '2020-02-03 17:43:17', NULL, '2020-03-03 17:33:53'),
(17, '3sjhtvoooqdkmueb', 20, 3, 1, '2020-02-06 16:26:38', NULL, '2020-02-06 16:29:34'),
(18, 'oostnll4wztvnfim', 52, 3, 1, '2020-02-07 11:56:35', NULL, '2020-02-11 14:23:27'),
(19, 'qi2mabifofou25ev', 52, 3, 1, '2020-02-11 14:23:38', NULL, '2020-03-03 17:33:55'),
(20, 'w3zyntvgzeylp7yr', 1, 3, 1, '2020-02-11 14:56:51', NULL, '2020-03-03 17:33:58'),
(21, 'rwepazwgnszbmrqc', 3, 3, 1, '2020-02-11 14:56:59', NULL, '2020-02-11 18:01:12'),
(22, 'at5l6jv9b0gwesiz', 3, 3, 1, '2020-02-11 18:01:17', NULL, '2020-02-12 11:12:41'),
(23, 'cpnwzyt6ywhiifai', 33, 3, 1, '2020-02-11 18:01:27', NULL, '2020-02-11 18:01:38'),
(24, 'pjyr3ayyvtocsbri', 3, 3, 1, '2020-02-12 11:12:47', NULL, '2020-02-12 12:42:30'),
(25, 'qrdw5cexpsrujlww', 3, 3, 1, '2020-02-12 12:42:43', NULL, '2020-03-03 17:34:00'),
(26, 'ewxjdrkyw5oprdnf', 1, 1, 1, '2020-03-03 17:37:58', NULL, '2020-03-16 15:16:21'),
(27, '0rmymzvxtc8juqbl', 2, 1, 1, '2020-03-03 17:38:16', NULL, '2020-03-16 15:16:20'),
(28, 'cmpx46vesuwl7mt7', 3, 1, 1, '2020-03-03 17:38:41', NULL, '2020-06-02 09:51:02'),
(29, 'ueiu2hgjwvivnlci', 5, 1, 1, '2020-03-03 17:38:57', NULL, '2020-03-16 15:16:19'),
(30, 'aeopkriaxpqizbj1', 4, 1, 1, '2020-03-03 17:40:14', NULL, '2020-03-16 15:16:17'),
(31, 'rvboeedqh3mm52zs', 7, 1, 1, '2020-03-03 17:41:03', NULL, '2020-03-16 15:16:18'),
(32, 'caz8pxm06cuvrgfw', 8, 1, 1, '2020-03-03 17:41:21', NULL, '2020-03-16 15:16:16'),
(33, '5ggdifiwv40ppog8', 9, 3, 1, '2020-03-03 17:41:35', NULL, '2020-05-06 13:30:35'),
(34, 'mqwzblcvu4bwufir', 10, 1, 1, '2020-03-03 17:41:53', NULL, '2020-03-03 17:41:53'),
(35, 'dnle7bryt8oxb2mt', 0, 1, 1, '2020-03-06 12:43:35', NULL, '2020-03-06 12:43:35'),
(36, 'i7ywwdfk4ymfkewz', 11, 1, 1, '2020-03-07 16:15:58', NULL, '2020-03-07 16:15:58'),
(37, 'knfuil6vmkputv1x', 123, 1, 1, '2020-03-30 14:44:25', NULL, '2020-03-30 14:44:25'),
(38, 'kz5vxsq8bjokqq5a', 101, 1, 1, '2020-03-31 20:55:12', NULL, '2020-03-31 21:05:10'),
(39, 'kzfjxmkmikqldne8', 102, 0, 1, '2020-03-31 21:04:02', NULL, '2020-03-31 21:04:10'),
(40, '6ecdyddomxcc29gx', 12, 1, 1, '2020-04-01 11:40:59', NULL, '2020-05-06 13:29:23'),
(41, 'cs2rhp3gyul0hrt5', 14, 1, 1, '2020-05-06 13:28:41', NULL, '2020-05-07 19:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `brand_lang`
--

CREATE TABLE `brand_lang` (
  `brand_lang_id` bigint(20) NOT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `brand_name` varchar(256) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand_lang`
--

INSERT INTO `brand_lang` (`brand_lang_id`, `brand_id`, `language_code`, `brand_name`) VALUES
(1, 1, 'en', 'hii'),
(2, 2, 'en', 'gfhfgh'),
(3, 3, 'en', 'fgfdg'),
(4, 4, 'en', 'test'),
(5, 5, 'en', 'testa'),
(6, 6, 'en', 'hsh'),
(7, 7, 'en', 's'),
(8, 8, 'en', 'abc'),
(9, 9, 'en', 'testing'),
(10, 10, 'en', 'tester'),
(11, 11, 'en', 'abcd'),
(12, 12, 'en', 'Adidas'),
(13, 13, 'en', 'test'),
(14, 14, 'en', 'te'),
(15, 15, 'en', 'Ragavan'),
(16, 16, 'en', 'Ragavan'),
(17, 17, 'en', 'testee'),
(18, 18, 'en', 'testee'),
(19, 19, 'en', 'gr'),
(20, 20, 'en', 'asas'),
(21, 21, 'en', 'Adidas'),
(22, 22, 'en', '3'),
(23, 23, 'en', '33'),
(24, 24, 'en', '3'),
(25, 25, 'en', 'fff'),
(26, 26, 'en', 'Tanduay'),
(27, 27, 'en', 'Bacardi'),
(28, 28, 'en', 'Johnnie Walker'),
(29, 29, 'en', 'Royal Stag'),
(30, 30, 'en', 'McDowell’s No. 1'),
(31, 31, 'en', 'Smirnoff'),
(32, 32, 'en', 'Emperador'),
(33, 33, 'en', 'Jinro'),
(34, 34, 'en', 'Imperial Blue'),
(35, 35, 'en', 'NEW BRAND'),
(36, 36, 'en', 'KINGFISHER'),
(37, 37, 'en', 'Xiaomi'),
(38, 38, 'en', 'Redmi Note 8 Pro'),
(39, 39, 'en', 'Brand2'),
(40, 40, 'en', '	Magic Moments'),
(41, 41, 'en', '      Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL,
  `category_key` varchar(16) DEFAULT NULL,
  `parent_category_id` int(20) NOT NULL DEFAULT '1',
  `sort_no` smallint(6) DEFAULT NULL,
  `category_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 - Archieved',
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `category_type` tinyint(1) DEFAULT NULL COMMENT '1 - Shop, 2 - Menu',
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_key`, `parent_category_id`, `sort_no`, `category_status`, `created_user_id`, `created_at`, `modified_user_id`, `modified_at`, `category_type`, `vendor_id`) VALUES
(1, '8ytl23jz7cfpyl12', 0, NULL, 1, 1, '2020-06-05 11:29:14', NULL, NULL, NULL, NULL),
(2, 'smseixffoctqam3x', 0, NULL, 1, 1, '2020-06-05 11:34:15', NULL, NULL, NULL, NULL),
(3, '7g9sae0um3ftmp5v', 0, NULL, 1, 1, '2020-06-05 11:37:18', NULL, NULL, 2, NULL),
(4, 'dt79nhj0glswk50a', 1, NULL, 1, 1, '2020-06-05 11:38:58', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_lang`
--

CREATE TABLE `category_lang` (
  `category_lang_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `category_name` varchar(256) DEFAULT NULL,
  `category_image_path` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_lang`
--

INSERT INTO `category_lang` (`category_lang_id`, `category_id`, `language_code`, `category_name`, `category_image_path`) VALUES
(1, 1, 'en', 'main', NULL),
(2, 2, 'en', 'test', NULL),
(3, 3, 'en', 'sub', NULL),
(4, 4, 'en', 'test1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` bigint(20) NOT NULL,
  `city_key` varchar(16) DEFAULT NULL,
  `city_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 - Archieved ',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_key`, `city_status`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`, `country_id`) VALUES
(1, 'stbdxj5mxoish0um', 1, '2018-07-19 20:27:36', 1, NULL, NULL, 0),
(2, 'i9hiijezxcwlr8pp', 1, '2018-07-19 20:28:00', 1, NULL, NULL, 0),
(3, 'ugbstnhq8pssi5hx', 1, '2018-08-01 16:12:05', 1, NULL, NULL, 0),
(4, '6mhvqqlsjcpsyd2h', 3, '2018-08-27 15:00:23', 1, NULL, NULL, 2),
(5, 'ln2i7yq4twzi0tgp', 3, '2018-08-27 15:29:40', 1, NULL, NULL, 2),
(6, 'ilwu5zyyi6nx0cnz', 1, '2018-09-20 15:00:50', 1, NULL, NULL, 1),
(7, 'ngvnzowbynj8usjb', 1, '2019-01-12 05:24:58', 1, NULL, NULL, 2),
(8, 'rb8wzmzgcviivrrr', 1, '2020-03-23 17:05:46', 1, NULL, NULL, 2),
(9, 'ni8o0zmnwbfhu0df', 1, '2020-03-26 14:56:06', 1, NULL, NULL, 2),
(10, 'voe4jmcdmyj3l6dh', 2, '2020-03-27 12:42:46', 1, NULL, NULL, 2),
(11, '1kre6x9b1i8x0yub', 3, '2020-03-31 12:42:56', 1, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `city_lang`
--

CREATE TABLE `city_lang` (
  `city_lang_id` bigint(20) NOT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `city_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city_lang`
--

INSERT INTO `city_lang` (`city_lang_id`, `city_id`, `language_code`, `city_name`) VALUES
(1, 1, 'en', 'Drammen'),
(2, 2, 'en', 'Oslo'),
(3, 3, 'en', 'Coimbatore'),
(4, 4, 'en', 'Coimbatore'),
(5, 5, 'en', 'Kanuvai'),
(6, 6, 'en', 'Elverum'),
(7, 6, 'no', 'Elverum'),
(8, 7, 'en', 'test'),
(9, 7, 'no', 'ntest'),
(10, 7, 'ar', 'atest'),
(11, 8, 'en', 'BAGLR'),
(12, 9, 'en', 'Bengaluru'),
(13, 10, 'en', 'Bangalore'),
(14, 11, 'en', 'cbe');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `cms_id` bigint(20) NOT NULL,
  `cms_key` varchar(16) DEFAULT NULL,
  `cms_status` tinyint(1) DEFAULT NULL COMMENT '0 - Inactive, 1 - Active',
  `slug` varchar(256) DEFAULT NULL,
  `sort_no` tinyint(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` varchar(45) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`cms_id`, `cms_key`, `cms_status`, `slug`, `sort_no`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`, `is_default`) VALUES
(1, 'ws7flpc9vws28msl', 1, 'test', 1, '2020-05-11 13:10:31', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_lang`
--

CREATE TABLE `cms_lang` (
  `cms_lang_id` bigint(20) NOT NULL,
  `cms_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) CHARACTER SET ucs2 DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` text,
  `cms_title` varchar(256) DEFAULT NULL,
  `cms_content` longtext,
  `keywords` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_lang`
--

INSERT INTO `cms_lang` (`cms_lang_id`, `cms_id`, `language_code`, `name`, `description`, `cms_title`, `cms_content`, `keywords`) VALUES
(1, 1, 'en', 'Test', 'Test', 'Test', '<p>Test</p>\r\n', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `configuration_id` bigint(20) NOT NULL,
  `configuration_key` varchar(16) DEFAULT NULL,
  `configuration_name` varchar(256) DEFAULT NULL,
  `configuration_value` text,
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`configuration_id`, `configuration_key`, `configuration_name`, `configuration_value`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`) VALUES
(5, 'hcPS8r6miAT3MW6i', 'APP_NAME', 'Food purby', '2018-04-24 05:40:31', NULL, NULL, NULL),
(6, '-I0Yd_XzEp485urw', 'APP_EMAIL', 'sales@.com', '2018-04-24 05:40:31', NULL, NULL, NULL),
(9, 'T9zDvkxFNpMd_dPV', 'SMTP_HOST', 'smtp.gmail.com', '2018-04-24 06:00:43', NULL, NULL, NULL),
(10, 'keIey9cpi4SZEudm', 'SMTP_ENCRYPTION', 'TLS', '2018-04-24 06:00:43', NULL, NULL, NULL),
(11, 'OzkZ8HehZRk9KHAZ', 'SMTP_PORT', '587', '2018-04-24 06:00:43', NULL, NULL, NULL),
(12, 'c5pbY7GGLvQI0i1-', 'SMTP_USERNAME', 'kitoki.marketsquare@gmail.com', '2018-04-24 06:00:43', NULL, NULL, NULL),
(13, 'vlpT-p5-8maIt97R', 'SMTP_PASSWORD', 'Ki2Ki@123', '2018-04-24 06:00:43', NULL, NULL, NULL),
(16, 'EDFREWFWE', 'IS_SMTP_ENABLED', '1', '2018-05-14 04:52:09', 1, NULL, NULL),
(17, 'mNOmYc0j_7nUc26s', 'IS_SMS_ENABLED', '1', '2018-05-15 05:51:34', 1, NULL, NULL),
(18, 'A5lP56r5hiVFe-_q', 'TABAOGO_CREDIT', '5', '2018-05-25 15:40:53', 1, NULL, NULL),
(19, 'vkpTwOJAGdRev7yk', 'LEVEL1_REFERRAL_POINTS', '10', '2018-05-25 15:41:25', 1, NULL, NULL),
(20, 'El488dBa3jFfEzzi', 'LEVEL2_REFERRAL_POINTS', '20', '2018-05-25 15:41:25', 1, NULL, NULL),
(21, 'vg8lXJLDb6DJTlsM', 'LEVEL3_REFERRAL_POINTS', '50', '2018-05-25 15:41:25', 1, NULL, NULL),
(22, 'B2FkG4mDNmjGy5em', 'DISTANCE_TIME', '10', '2018-05-25 15:41:43', 1, NULL, NULL),
(23, 'KmBaqxRyRvpksjX6', 'FACEBOOK_URL', 'https://www.facebook.com/', '2018-06-05 16:02:39', 1, NULL, NULL),
(24, 'UzrguG_BVg44I6yw', 'TWITTER_URL', 'https://www.Twitter.com/', '2018-06-05 16:02:39', 1, NULL, NULL),
(25, 'UoaDuLhkktqkA0H9', 'INSTAGRAM_URL', 'https://www.Instagram.com/', '2018-06-05 16:02:39', 1, NULL, NULL),
(26, 'FDoqDoe6m4WfQvVw', 'YOUTUBE_URL', 'https://www.Youtube.com/', '2018-06-05 16:02:39', 1, NULL, NULL),
(27, 'FcME38PZNTMGDtW3', 'GOOGLE_PLUS_URL', 'https://plus.google.com/', '2018-06-05 16:02:39', 1, NULL, NULL),
(28, 'J_P55TDwADj7_4A6', 'LINKEDIN_URL', 'https://www.Linkedin.com/', '2018-06-05 16:02:39', 1, NULL, NULL),
(29, '8yb61z7_8ROObsSJ', 'SITE_NAME', 'Foodpurby', '2018-06-05 16:07:12', 1, NULL, NULL),
(30, 'IUypGCDDzMG5RtX3', 'APP_DESCRIPTION', 'Portland', '2018-06-05 16:07:12', 1, NULL, NULL),
(31, 'gcIOmuccw2veCXat', 'META_KEYWORD', 'Portland', '2018-06-05 16:07:12', 1, NULL, NULL),
(32, 'LIoQQh7IbekITcKk', 'META_DESCRIPTION', 'Food Ordering and Delivery Application', '2018-06-05 16:07:12', 1, NULL, NULL),
(33, '92zLJUKfFUGBlUz_', 'APP_CONTACT_NO', '1234567890', '2018-06-05 16:07:12', 1, NULL, NULL),
(34, 'O3wkjOcfbdz7mS06', 'APP_CONTACT_ADDRESS', 'India', '2018-06-05 16:07:12', 1, NULL, NULL),
(35, 'aI4Doyx3YVe5cWMR', 'IOS_LINK', 'https://itunes.apple.com', '2018-06-05 16:07:12', 1, NULL, NULL),
(36, '2fepBFtzN3ePqGuk', 'ANDROID_LINK', 'https://play.google.com', '2018-06-05 16:07:12', 1, NULL, NULL),
(37, 'rCk5GSPIGS57hjnI', 'SITE_COPYRIGHT', '© Copyright  2019| All rights reserved.', '2018-06-05 16:07:12', 1, NULL, NULL),
(38, 'a45_qVaw80A_G9iB', 'COMMISSION_PERCENTAGE', '10', '2018-06-05 16:07:12', 1, NULL, NULL),
(39, 'ZxW3JKWWz8Uu_QBA', 'SERVICE_TAX', '05', '2018-06-05 16:07:12', 1, NULL, NULL),
(40, 'oKj3CBN1Pz6QcCPm', 'COUNTRY', 'India', '2018-06-05 16:07:12', 1, NULL, NULL),
(41, 'bjzn6OsVxWRPRhNI', 'APP_CITY', 'India', '2018-06-05 16:07:12', 1, NULL, NULL),
(42, 'fdsUrvtGcXyM9qng', 'APP_CURRENCY_CODE', 'RM', '2018-06-05 16:07:12', 1, NULL, NULL),
(43, 'zzMVkGIH8nMr6AzV', 'APP_LOGO_PATH', '/uploads/site-images/1588054035uK7d3.png', '2018-06-05 16:07:12', 1, NULL, NULL),
(44, 'uI1dmGhu-6LFvv9G', 'FAV_LOGO_PATH', '/uploads/site-images/1584700612kDg4b.png', '2018-06-05 16:07:12', 1, NULL, NULL),
(45, 'h1EZffpn8rOn8CYf', 'OFFER_IMAGE_PATH', '/uploads/site-images/1551345549l3ZZI.png', '2018-06-05 16:07:12', 1, NULL, NULL),
(46, 'U7kaNg4_-mbwU_KL', 'PUSH_NOTIFICATION_APP_ID', 'f0e44365-eaf9-434e-86fd-e71e4af00cc2', '2018-06-09 11:45:50', 1, NULL, NULL),
(47, '5N0rIcWwoAHlQkD9', 'PUSH_NOTIFICATION_REST_API_KEY', 'MWRlNGNlMmItNzljNS00ODRiLWI4NDAtNGYzMGJmMDRkMmQ4', '2018-06-09 11:45:50', 1, NULL, NULL),
(49, 'aN10lY9xP-ZXiJnB', 'CURRENCY_SYMBOL_SIDE', 'CURRENCY_SYMBOL_RIGHT', '2018-06-09 15:52:03', 1, NULL, NULL),
(50, 'Sq14YvUxVeYlf2wu', 'CURRENCY_DECIMAL_PLACE', '2', '2018-06-09 15:52:03', 1, NULL, NULL),
(51, 'qEw1I-q8_GF6iej0', 'CURRENCY_VALUE', '0', '2018-06-09 15:52:03', 1, NULL, NULL),
(52, 'ruEw6hxjLD556LvV', 'ORDER_ACCEPT_TIME_LIMIT', '5000', '2018-06-11 06:40:52', 1, NULL, NULL),
(53, 'hIPO2w-OzjUmvLnE', 'DELIVERYBOY_RADIUS', '7000000000000000000000000000000000000000000000000000000000000000000000', '2018-06-11 06:40:52', 1, NULL, NULL),
(55, '6JiyVU5suCMFpb3O', 'DELIVERYBOY_ONESIGNAL_APP_ID', 'b7df7795-e596-42aa-b161-5bc754db70fc-test', '2018-06-11 07:38:01', 1, NULL, NULL),
(56, '54EnGfg3YEdUqrgH', 'DELIVERY_BOY_PUSH_NOTIFICATION_REST_API_KEY', 'OGY2ZGIyMWQtNzBlOS00NDVmLWJjYWItZmNkOWQ5MmNmZWYx-test', '2018-06-11 07:38:01', 1, NULL, NULL),
(57, 'pSAS10fJsbiWkPKN', 'VENDOR_ONESIGNAL_APP_ID', '82db2cc7-aaf8-4ccd-ae82-d3d45be365ab-test', '2018-06-11 07:38:01', 1, NULL, NULL),
(58, 'WFGLtZKVVdQh9Y5X', 'VENDOR_PUSH_NOTIFICATION_REST_API_KEY', 'MGI1ZjQxOWQtOTQ3MC00MDc5LWFmNWItZWQxODBkZGZkNTU0-test', '2018-06-11 07:38:01', 1, NULL, NULL),
(59, 'GorLaDNdgJ6Ft11B', 'IS_CUSTOMER_NOTIFICATION_ENABLED', '1', '2018-06-11 11:53:46', 1, NULL, NULL),
(60, 'ZW5Ycl4vq33Ei7DY', 'IS_DELIVERY_NOTIFICATION_ENABLED', '1', '2018-06-11 11:53:46', 1, NULL, NULL),
(61, 'kntsZaC--7-s30I3', 'IS_VENDOR_NOTIFICATION_ENABLED', '1', '2018-06-11 11:53:46', 1, NULL, NULL),
(62, 'o-itAuFNyoCh8rZG', 'DELIVERY_BOY_ORDER_ASSIGN_TYPE', '1', '2018-06-15 09:27:12', 1, NULL, NULL),
(63, 'LBSuGtkxwoZ4hPgP', 'RM', 'kr', '2018-07-19 16:31:37', 1, NULL, NULL),
(64, 'jeh_NfdRprpUHG6e', 'APP_PLACEHOLDER_PATH', '/uploads/site-images/1551345572rrj2M.jpeg', '2018-07-19 19:19:37', 1, NULL, NULL),
(65, 'fSvIyuwUVdb2pZc6', 'DELIVERY_CHARGE_TYPE', '1', '2018-07-19 19:52:52', 1, NULL, NULL),
(66, 'EWZ74PVQjxHJ9e6b', 'DELIVERY_CHARGE_RADIUS', '30', '2018-07-19 19:52:52', 1, NULL, NULL),
(67, 'iLJNRvRTAQ6FBrOj', 'DELIVERY_CHARGE_BASE_KM', '10', '2018-07-19 19:52:52', 1, NULL, NULL),
(68, 'fTvC4M8fBWpU-IXF', 'DELIVERY_CHARGE_BASE_CHARGE', '150', '2018-07-19 19:52:52', 1, NULL, NULL),
(69, 'ror8FxV84do8Gbus', 'DELIVERY_CHARGE_ADD_KM', '1', '2018-07-19 19:52:52', 1, NULL, NULL),
(70, 'nUCBESCsx3LsVpCc', 'DELIVERY_CHARGE_ADD_CHARGE', '20', '2018-07-19 19:52:52', 1, NULL, NULL),
(71, 'veU_yqnpLzLo38Zu', 'SMS_GATEWAY_ACCOUNT_ID', '/+pFt75YTtI-w27nW5aQj6nzO3iT9OwVAzFPes8snn', '2018-08-27 18:19:58', 1, NULL, NULL),
(72, '0_n1tDWsyP3zYX5i', 'SMS_GATEWAY_AUTH_TOKEN', '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', '2018-08-27 18:19:58', 1, NULL, NULL),
(73, 'xbJ4Ma-wJua3Y8Lo', 'SMS_GATEWAY_SENDER_ID', '+12028398589', '2018-08-27 18:19:58', 1, NULL, NULL),
(74, 'lXmgwvC7WvQ1sLfU', 'DELIVERY_BOY_ACCESS_URL', 'http://159.65.70.4:8037/api/v1/', '2018-09-12 12:26:20', 1, NULL, NULL),
(75, 'dyOlrntHIZGeGQpU', 'COMPANY_KEY', '5ead2d68fe28eb0ee29779b9', '2018-09-12 12:26:20', 1, NULL, NULL),
(76, '459s6nJA9pjMYv41', 'DELIVERY_BOY_BEARER', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI1ZWFkMmQ2OGZlMjhlYjBlZTI5Nzc5YjkiLCJ0eXBlIjoxLCJpYXQiOjE1ODg0MDc2NTZ9.cdumg_C4E15SrM4zgTQOm-DcJLVV2LNBOPFr9jhtwM0', '2018-09-12 12:26:20', 1, NULL, NULL),
(77, 'MCIeZt9XIoKzKxLd', 'MAP_KEY', 'AIzaSyC9Hp4Tit86Ed0Z98smUFsUy62hrqNTYxI', '2018-09-14 15:10:33', 1, NULL, NULL),
(78, 'mNDhn9UFO7XpPvCM', 'CURRENCY_SYMBOL', 'MYR', '2018-09-14 15:41:19', 1, NULL, NULL),
(79, 'Jg2jr3L_ox_0rfLe', 'STRIP_SECRET_KEY', 'sk_test_IxBkoZjD3LiHTDmGtMOhFSE4', '2018-09-19 16:27:40', 1, NULL, NULL),
(80, 'c5VyOvanPGcg2K-O', 'STRIP_PUBLISHABLE_KEY', 'pk_test_ZYFwG9itqsl1d5kFWguRe8nM', '2018-09-19 16:27:40', 1, NULL, NULL),
(81, '9PQu2P-3YAL-oPwz', 'STRIP_CURRENCY', 'NOK', '2018-09-19 20:07:44', 1, NULL, NULL),
(82, '-TiNibX33LUoloG-', 'STRIPE_SECRET_KEY', 'sk_test_7zxmbL9zYglqkl5BSlnWRaHW', '2018-09-27 16:55:21', 1, NULL, NULL),
(83, '8JgWa8lnUi-1QjCW', 'STRIPE_PUBLISHABLE_KEY', 'pk_test_hCtOVQQCf5Pb7kMgjS7VjRNo', '2018-09-27 16:55:21', 1, NULL, NULL),
(84, 'w1WtyTHX1XQHgSnF', 'STRIPE_CURRENCY', 'NOK', '2018-09-27 16:55:21', 1, NULL, NULL),
(85, 'bl15VMYjq46PSNPQ', 'SMS_TYPE', '1', '2018-11-02 08:22:24', 1, NULL, NULL),
(86, 'DllCPSTXwkOvG4GS', 'SMS_ROUTE', '3', '2018-11-02 08:22:24', 1, NULL, NULL),
(87, '8JNZGut9Sozmo_oG', 'DISTANCE_UNIT', 'mi', '2018-11-12 12:31:44', 1, NULL, NULL),
(88, 'C6OK8A5TYP3LUBtG', 'RADIUS', '5', '2018-11-12 12:31:44', 1, NULL, NULL),
(89, 'RA8zBU9eKcB-FEbW', 'DRIVER_ALLOCATION', '2', '2018-11-12 12:39:59', 1, NULL, NULL),
(90, 'JE00WO_QyqmuA3ro', 'TRANSLATION_SYNC_VERSION', '17', '2018-12-10 11:16:07', 1, NULL, NULL),
(91, 'i8N6QiIkvwNsuSSB', 'TIME_ZONE', 'Asia/Kolkata', '2019-01-22 11:17:29', 1, NULL, NULL),
(92, 'BQZsKkKERouHjYNf', 'IS_ENABLED_COD_AFTER_NO_ORDER', '1', '2019-01-25 12:32:03', 1, NULL, NULL),
(93, 'lHHCN190yXB_PqKn', 'NO_OF_ORDERS', '5', '2019-01-25 12:32:03', 1, NULL, NULL),
(94, 'z60IvK3ghHmxsh8O', 'ETA_TIME', '60', '2019-02-06 16:47:58', 1, NULL, NULL),
(95, 'ktMPCdk8Yul8wb-i', 'HOUR_FORMAT_12_24', '24hr', '2019-02-19 17:51:02', 1, NULL, NULL),
(96, 'TdFuCZc4F6iUoVBP', 'CURRENCY_FORMAT', 'All', '2019-02-19 17:51:02', 1, NULL, NULL),
(97, '_w7MGo8WUyt4nfij', 'CURRENCY_SYMBOL_LEFT', '1', '2019-03-25 10:46:02', 1, NULL, NULL),
(98, 'esgkRa7Q7eRa2HCx', 'WEB_APPLICATION_NAME', 'Portland', '2019-04-26 13:08:56', 1, NULL, NULL),
(99, 'U_uACnbLgbElDdlw', 'SMS_GATEWAY_COUNTRY_CODE', '+91', '2019-07-05 16:25:59', 1, NULL, NULL),
(100, 'T9hl51ElHuJ3cuOQ', 'SOCKET_URL', 'http://159.65.70.4:8037', '2019-07-09 19:13:02', 1, NULL, NULL),
(101, 'pTXqfDs82PrYuRDj', 'DELIVERYBOY_CHANNEL_ID', 'test', '2019-08-07 20:01:17', 1, NULL, NULL),
(102, 'CuRzGbmqP5I9PjRh', 'SMS_GATEWAY_FROM', 'MSVTXT', '2019-09-25 11:35:54', 1, NULL, NULL),
(103, 'mBO2C7XHnON5nyLr', 'APP_LATITUDE', '11.0168', '2019-11-14 15:51:00', 1, NULL, NULL),
(104, 'PgmvkBrnfU9LBRSj', 'APP_LONGITUDE', '76.9558', '2019-11-14 15:51:01', 1, NULL, NULL),
(105, 'bnIvO3GkzqtLNxmT', 'PREORDER_DATE_COUNT', '6', '2020-02-27 13:33:35', 1, NULL, NULL),
(106, '17WdNuIx-AGmdm8b', 'PAYUMONEY_ENVIRONMENT', 'PG_ENV_PRODUCTION', '2020-05-08 20:08:38', 1, NULL, NULL),
(107, '0wWhdW9esfncF3ka', 'PAYUMONEY_MERCHAND_KEY', 'OHk2I5um', '2020-05-08 20:08:38', 1, NULL, NULL),
(108, 'A9aB_5OmyErPQF-X', 'PAYUMONEY_MERCHAND_SALT', 'LO8b6jrcls', '2020-05-08 20:08:38', 1, NULL, NULL),
(109, 'gii2KWAbGSVkZGLN', 'PAYUMONEY_CURRENCY', 'INR', '2020-05-08 20:08:38', 1, NULL, NULL),
(110, 'qwHPepbFFl8kO3TR', 'SUPPILER_ANDROID_LINK', 'ghgh', '2020-06-06 11:06:35', 1, NULL, NULL),
(111, 'YQmH3oLvgWugPTyE', 'DRIVER_ANDROID_LINK', 'ghgh', '2020-06-06 11:06:35', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` bigint(20) NOT NULL,
  `country_key` varchar(16) DEFAULT NULL,
  `country_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 - Archieved',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` varchar(45) DEFAULT NULL,
  `country_code` varchar(10) NOT NULL,
  `country_iso` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_key`, `country_status`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`, `country_code`, `country_iso`) VALUES
(1, 'aibwt5wytctku656', 3, '2018-07-19 20:25:18', 1, NULL, NULL, '+47', 'NO'),
(2, 'faysnt9fbdh4nnrb', 1, '2018-08-01 16:05:08', 1, NULL, NULL, '+91', 'IN'),
(3, 'x3ogwyprvj7f5vtg', 3, '2018-08-07 15:20:59', 1, NULL, NULL, 'gj', ''),
(4, 'b4quwrgvqe2g5fvv', 3, '2018-08-27 17:16:33', 1, NULL, NULL, '10', ''),
(5, 'v7tcph0wrlko22in', 3, '2018-08-27 18:23:25', 1, NULL, NULL, 'A', ''),
(6, 'uwjl6eq8hkwv1l3l', 3, '2019-02-14 17:01:09', 1, NULL, NULL, 'No', ''),
(7, 'jcqrbged5mdiliwk', 3, '2019-02-14 17:04:27', 1, NULL, NULL, 'No', '');

-- --------------------------------------------------------

--
-- Table structure for table `country_lang`
--

CREATE TABLE `country_lang` (
  `country_lang_id` bigint(20) NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `country_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_lang`
--

INSERT INTO `country_lang` (`country_lang_id`, `country_id`, `language_code`, `country_name`) VALUES
(1, 1, 'en', 'Norway'),
(2, 2, 'en', 'India'),
(3, 3, 'en', 'hgj'),
(4, 4, 'en', 'sa'),
(5, 5, 'en', 'aFRICA'),
(6, 1, 'no', 'Norway'),
(7, 1, 'ar', 'Norway'),
(8, 2, 'no', 'India'),
(9, 2, 'ar', 'India'),
(10, 6, 'en', 'Norway'),
(11, 6, 'no', 'Norway'),
(12, 6, 'ar', 'Norway'),
(13, 7, 'en', 'Norway'),
(14, 7, 'no', 'Norway'),
(15, 7, 'ar', 'Norway');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` bigint(20) NOT NULL,
  `coupon_key` varchar(16) DEFAULT NULL,
  `coupon_type` smallint(1) DEFAULT NULL COMMENT '1 - Amount based, 2 - Percentage based',
  `coupon_minimum_cart_value` double DEFAULT NULL,
  `coupon_value` double DEFAULT NULL,
  `coupon_code` varchar(16) DEFAULT NULL,
  `coupon_starts_at` datetime DEFAULT NULL,
  `coupon_ends_at` datetime DEFAULT NULL,
  `coupon_status` smallint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 - Deleted',
  `coupon_scope` smallint(1) DEFAULT NULL COMMENT '1 - Global, 2 - User',
  `app_type` smallint(1) DEFAULT NULL COMMENT '1 - All user, 2 - Web, 3 - App',
  `is_all_vendor` tinyint(1) DEFAULT NULL COMMENT '0 - No, 1 - Yes',
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `maximum_redeem_amount` double DEFAULT NULL,
  `coupon_name` varchar(250) DEFAULT NULL,
  `coupon_description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_key`, `coupon_type`, `coupon_minimum_cart_value`, `coupon_value`, `coupon_code`, `coupon_starts_at`, `coupon_ends_at`, `coupon_status`, `coupon_scope`, `app_type`, `is_all_vendor`, `created_user_id`, `created_at`, `modified_user_id`, `modified_at`, `maximum_redeem_amount`, `coupon_name`, `coupon_description`) VALUES
(13, 'im8cpwydb7wj3aw8', 2, 100, 500, 'A9LQ', '2019-11-13 12:43:52', '2019-11-16 12:44:01', 3, 2, 1, 0, 1, '2019-09-26 12:44:38', NULL, NULL, 500, 'some', '13% off whn using this coupon'),
(14, 'kz9eg8odjnlvf8t4', 1, 112, 520, '0NUF', '2019-11-13 12:19:28', '2019-11-22 12:20:30', 3, 1, 1, 0, 1, '2019-11-15 12:20:42', NULL, NULL, 655, 'some', '13% off whn using this coupon'),
(15, 'mw6gjegyeiprp16e', 1, 10, 3, '2488', '2019-11-13 15:56:57', '2019-11-20 15:57:03', 3, 1, 1, 0, 1, '2019-11-15 15:57:19', NULL, NULL, 655, 'some', '13% off whn using this coupon'),
(16, 'yruoptjw2km0dta7', 1, 10, 23, 'UMEA', '2019-11-16 15:57:33', '2019-11-19 15:57:59', 3, 2, 1, 1, 1, '2019-11-15 15:58:18', NULL, NULL, 655, 'some', '13% off whn using this coupon'),
(17, 'izoyigrvoziapyw7', 1, 10, 23, 'LSND', '2019-11-13 15:57:33', '2019-11-19 15:57:59', 1, 2, 1, 1, 1, '2019-11-15 15:59:56', NULL, NULL, 655, 'some', '13% off whn using this coupon'),
(18, 'nxdqdn8s3jqmn1nf', 1, 100, 100, 'NYHE', '2020-02-25 18:13:01', '2020-02-28 18:13:05', 1, 1, 1, 1, 1, '2020-02-25 18:13:14', NULL, NULL, 100, NULL, NULL),
(19, 'cdrfvjvg1cguaurz', 1, 10, 100, '1Z20', '2020-02-26 15:33:40', '2020-02-28 15:33:44', 3, 1, 2, 0, 1, '2020-02-26 15:34:12', NULL, NULL, 1000, NULL, NULL),
(20, 'tvdjuk1gy4i1qhue', 1, 1, 1, 'EYL7', '2020-02-28 16:35:09', '2020-02-29 16:35:12', 3, 1, 1, 0, 1, '2020-02-28 16:35:26', NULL, NULL, 10, NULL, NULL),
(21, 'zl3fvf36ngt542xf', 1, 80, 1, 'MTHZ', '2020-02-28 16:36:41', '2020-02-29 16:36:44', 3, 1, 1, 0, 1, '2020-02-28 16:36:51', NULL, NULL, 100, NULL, NULL),
(22, 'relqpgdyjdfesais', 1, 10, 1234567890, '9A7K', '2020-02-29 17:02:51', '2020-03-28 17:02:54', 1, 1, 1, 0, 1, '2020-02-28 17:04:06', NULL, NULL, 1, NULL, NULL),
(23, 'ejsodzrskbe89fwd', 1, 10, 100, 'M2R6', '2020-03-03 11:10:06', '2020-03-05 11:10:10', 1, 1, 1, 0, 1, '2020-03-03 11:10:23', NULL, NULL, 100, NULL, NULL),
(24, '2cg3o7yqmwkqxall', 1, 3000, 10009, '5U0N', '2020-03-27 18:17:10', '2020-03-28 07:25:20', 1, 2, 1, 0, 23, '2020-03-26 16:10:04', NULL, NULL, 200, NULL, NULL),
(25, '9e208zi6bdmm0v0q', 1, 2000, 4000, 'QFL1', '2020-03-28 17:30:12', '2020-03-30 05:30:28', 1, 1, 1, 0, 1, '2020-03-27 13:46:36', NULL, NULL, 300, NULL, NULL),
(26, '13l36eacgeu9yzcr', 1, 10, 100, '2H2R', '2020-03-30 16:33:44', '2020-03-31 16:34:16', 1, 1, 1, 0, 1, '2020-03-30 16:35:05', NULL, NULL, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_lang`
--

CREATE TABLE `coupon_lang` (
  `coupon_lang_id` bigint(20) NOT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `coupon_name` varchar(64) DEFAULT NULL,
  `coupon_description` text,
  `coupon_image` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_user`
--

CREATE TABLE `coupon_user` (
  `coupon_user_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupon_user`
--

INSERT INTO `coupon_user` (`coupon_user_id`, `user_id`, `coupon_id`) VALUES
(1, 163, 16),
(7, 166, 17),
(8, 163, 17),
(9, 166, 13),
(10, 163, 13),
(11, 167, 24);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_vendor`
--

CREATE TABLE `coupon_vendor` (
  `coupon_vendor_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupon_vendor`
--

INSERT INTO `coupon_vendor` (`coupon_vendor_id`, `vendor_id`, `coupon_id`) VALUES
(4, 4, 15),
(6, 1, 13),
(7, 1, 14),
(9, 1, 19),
(10, 1, 20),
(11, 1, 20),
(12, 1, 21),
(13, 1, 21),
(14, 1, 22),
(15, 1, 22),
(16, 1, 23),
(17, 1, 23),
(18, 22, 24),
(19, 23, 24),
(20, 23, 24),
(25, 9, 25),
(26, 7, 25),
(27, 23, 25),
(28, 1, 26);

-- --------------------------------------------------------

--
-- Table structure for table `credit_history`
--

CREATE TABLE `credit_history` (
  `credit_history_id` bigint(20) NOT NULL,
  `credit_history_number` varchar(16) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `action` smallint(1) DEFAULT NULL COMMENT '1 - Credit, 2 - Debit',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cuisine`
--

CREATE TABLE `cuisine` (
  `cuisine_id` bigint(20) NOT NULL,
  `cuisine_key` varchar(16) DEFAULT NULL,
  `sort_no` smallint(6) DEFAULT NULL,
  `cuisine_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 - Archieved',
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cuisine`
--

INSERT INTO `cuisine` (`cuisine_id`, `cuisine_key`, `sort_no`, `cuisine_status`, `created_user_id`, `created_at`, `modified_user_id`, `modified_at`) VALUES
(1, 'ncja245hhifbxbgq', 1, 1, 1, '2018-07-19 19:58:10', NULL, NULL),
(2, 'bt2obucppgnizijy', 1, 1, 1, '2018-08-01 17:29:19', NULL, NULL),
(3, 'l3apfjay79uw4jcs', 1, 3, 1, '2018-08-27 15:49:52', NULL, NULL),
(4, 'xlusmr73mauhc7sh', NULL, 3, 1, '2018-08-29 09:46:18', NULL, NULL),
(5, 'rro7c9tbotowsjei', 1, 1, 1, '2018-08-29 13:44:39', NULL, NULL),
(6, '2w1cmjrkvukw5jh1', NULL, 3, 1, '2018-09-05 10:32:08', NULL, NULL),
(7, '4rdlap0pkemsbiib', NULL, 1, 1, '2018-09-05 10:32:22', NULL, NULL),
(8, 'n9qrsouc41xe0ckp', 1, 1, 1, '2019-01-12 05:30:57', NULL, NULL),
(9, 'uxoslpqnqwlfgcb1', 10, 1, 1, '2019-03-05 11:55:51', NULL, NULL),
(10, 'h2jbqkclx01w4frs', 2, 3, 1, '2020-03-27 14:14:20', NULL, NULL),
(11, 'vmbqppfojcquaavu', 2, 1, 1, '2020-03-27 15:11:03', NULL, NULL),
(12, 'mw0bzujiceqxvy1j', NULL, 3, 1, '2020-03-30 17:41:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cuisine_lang`
--

CREATE TABLE `cuisine_lang` (
  `cuisine_lang_id` bigint(20) NOT NULL,
  `cuisine_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `cuisine_name` varchar(256) DEFAULT NULL,
  `cuisine_image_path` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cuisine_lang`
--

INSERT INTO `cuisine_lang` (`cuisine_lang_id`, `cuisine_id`, `language_code`, `cuisine_name`, `cuisine_image_path`) VALUES
(1, 1, 'en', 'Fast foods', '/uploads/cuisines/153201049042r5N.jpg'),
(2, 2, 'en', 'Indian Cuisine', '/uploads/cuisines/1533124759LvDjF.jpg'),
(3, 3, 'en', 'test', '/uploads/cuisines/1535365192ldZt5.png'),
(4, 4, 'en', 'test', ''),
(5, 5, 'en', 'Mexican', ''),
(6, 6, 'en', 'Breakfast', ''),
(7, 7, 'en', 'Lunch', ''),
(8, 1, 'no', 'Hurtigmat', NULL),
(9, 6, 'no', 'Frokost', NULL),
(10, 2, 'no', 'Indisk mat', NULL),
(11, 7, 'no', 'Lunsj', NULL),
(12, 8, 'en', 'Arabian', NULL),
(13, 8, 'no', 'test n', NULL),
(14, 8, 'ar', 'test a', NULL),
(15, 9, 'en', 'test45', NULL),
(16, 9, 'no', 'test', NULL),
(17, 9, 'ar', 'test', NULL),
(18, 10, 'en', 'test3', NULL),
(19, 11, 'en', 'test4', NULL),
(20, 12, 'en', 'Arabian Cuisine', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy`
--

CREATE TABLE `deliveryboy` (
  `deliveryboy_id` bigint(20) NOT NULL,
  `deliveryboy_key` varchar(16) DEFAULT NULL,
  `deliveryboy_username` varchar(128) DEFAULT NULL,
  `deliveryboy_email` varchar(128) DEFAULT NULL,
  `deliveryboy_password_hash` varchar(256) DEFAULT NULL,
  `commision` double DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1- Active, 2 - Inactive, 3 - On, 4 - On Job, 5 - Off',
  `device_token` text,
  `device_type` tinyint(1) DEFAULT NULL COMMENT '1 - Android, 2 - Ios',
  `latitude` text,
  `longitude` text,
  `profile_image` varchar(256) DEFAULT NULL,
  `mobile_number` bigint(16) DEFAULT NULL,
  `license` varchar(256) DEFAULT NULL,
  `identity_card` varchar(256) DEFAULT NULL,
  `vehicle_number` varchar(35) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `bank_branch_code` varchar(100) NOT NULL,
  `account_number` varchar(65) NOT NULL,
  `swift_code` varchar(20) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `stripe_account_id` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliveryboy`
--

INSERT INTO `deliveryboy` (`deliveryboy_id`, `deliveryboy_key`, `deliveryboy_username`, `deliveryboy_email`, `deliveryboy_password_hash`, `commision`, `status`, `device_token`, `device_type`, `latitude`, `longitude`, `profile_image`, `mobile_number`, `license`, `identity_card`, `vehicle_number`, `bank_name`, `bank_branch_code`, `account_number`, `swift_code`, `branch_name`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`, `stripe_account_id`) VALUES
(1, 's0qkawe226ppeppy', NULL, 'qqq@gmail.com', '$2y$13$CDI4SIq4Nh2/zt0uPExWMuJd5nmoCCjV57xsv3Zm7YHc552Z/.g4e', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1111111111, 'qqq', NULL, 'qq', 'qqq', 'qqq', 'qqq', 'qqq', 'qq', '2018-08-24 16:14:41', NULL, NULL, NULL, ''),
(2, 'r5spuhwxjvptgdf3', NULL, 'qqq@gmail.com', '$2y$13$1NYCkQu3.MN2XRrwpiiFUOQWrYjY4jlf1XnnkrgLmk9Zg9JvIHI72', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1111111111, 'qqq', NULL, 'qq', 'qqq', 'qqq', 'qqq', 'qqq', 'qq', '2018-08-24 16:41:03', NULL, NULL, NULL, ''),
(3, 'lhzhmw99x7zxj2o4', NULL, 'qqq@gmail.com', '$2y$13$P8/0f2/ftyhRULV0VWuqQeOv.HqT0lqyNM0PSyIw9wXAb2.UyXFL6', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1111111111, 'qqq', NULL, 'qq', 'qqq', 'qqq', 'qqq', 'qqq', 'qq', '2018-08-24 16:41:12', NULL, NULL, NULL, ''),
(4, 'j3irkk94wuaygli5', NULL, 'qqq@gmail.com', '$2y$13$.xNGIp6tl.4wX31dPQxCueeXk7hzjuUuzyEsOrFhWLKEvtT.pozjC', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1111111111, 'qqq', NULL, 'qq', 'qqq', 'qqq', 'qqq', 'qqq', 'qq', '2018-08-24 16:42:30', NULL, NULL, NULL, ''),
(5, 'dxgngnzecpg7cakr', NULL, 'qqq@gmail.com', '$2y$13$3fb7PAw.xSdt.uMVvz.Ycuy5/Rhg0EaMvHVyfpeMSr1fVPpWuSfjS', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1111111111, 'qqq', NULL, 'qq', 'qqq', 'qqq', 'qqq', 'qqq', 'qq', '2018-08-24 16:56:49', NULL, NULL, NULL, ''),
(6, 'blf059joycmcs5bk', NULL, 'qqq@gmail.com', '$2y$13$BMShQ2rhLVaGz6w9.OHcvOxf1.l5osa2rpV1WDZdZQJrc1CQGjjJO', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1111111111, 'qqq', NULL, 'qq', 'qqq', 'qqq', 'qqq', 'qqq', 'qq', '2018-08-24 16:56:50', NULL, NULL, NULL, ''),
(7, 'igwbvqyg7ybxh4y7', NULL, 'qqq@gmail.com', '$2y$13$CdyFMRkb6y3onZeoQkZrHeOo1DxktrUO4c7A/GAshYGt3PIQ73psC', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1111111111, 'qqq', NULL, 'qq', 'qqq', 'qqq', 'qqq', 'qqq', 'qq', '2018-08-24 16:57:07', NULL, NULL, NULL, ''),
(8, 'h0ckzqiyxyq0nlc8', NULL, 'saro@gmail.com', '$2y$13$tStQPD2zb4Jdoj/Rb3qdvuOoekI3DQgdDw9JzBjKJMZzy.xXsUvX2', NULL, 2, NULL, NULL, NULL, NULL, NULL, 9659161925, '123456789', NULL, '123456', 'saro', '12345', 'wbfwefbwbfw', '1234568', 'adddwde', '2018-08-24 18:32:16', NULL, NULL, NULL, ''),
(9, 'atxnasjsdvz6ky0o', 'Mr.K', 'pradeep.k@.com', '$2y$13$KKYDhfuT9o/tEszPouYLL.cwl.puPDvc5IBCk.b21415M7F76aDrS', 0, 3, NULL, NULL, NULL, NULL, NULL, 12345678, NULL, NULL, '', '', '', '', '', '', '2018-08-28 16:12:02', 1, NULL, NULL, ''),
(10, '983dqfj1zol4w7rq', NULL, 'kl@gm.com', '$2y$13$A5E24eNMw9mkoku6aavdG.5iRg9USDC0.21mnXhgEe4DpWBAmcANG', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1645654646, '65456', NULL, '465', '465', '465', '45', '46', '446', '2018-08-29 13:47:18', NULL, NULL, NULL, ''),
(11, '3bfkmhgqtgx01caj', NULL, 'dfdf@gmail.com', '$2y$13$n3hW0tsruFOXlCytnc1Wye1W7XIXBLPLv1tq1iVz0JWxMiwOSUsNa', NULL, 2, NULL, NULL, NULL, NULL, NULL, 32313213, '3131313', NULL, '3213131312', '32132', '13213', '213', '113', '1313', '2018-08-29 13:49:10', NULL, NULL, NULL, ''),
(12, 'mrewvaellln0xbse', NULL, 'pradeep.k@.com', '$2y$13$JQfEv8e2BPP7F22lvOCFoOhqScxXn6fUwdcd1wxmGSoqkqe6J7wju', NULL, 2, NULL, NULL, NULL, NULL, NULL, 9884464548, '4554', NULL, 'rew', 'wr', 'wre', 'wer', 'er', 'erw', '2018-08-29 14:51:51', NULL, NULL, NULL, ''),
(13, '6gcy6opsfwdjezcc', NULL, 'hello@gmail.com', '$2y$13$R/UwY6bIQ7byDrFQB20nxOEs6bqQwDm0zsdKS90apLYZPgJvZbcCS', NULL, 2, NULL, NULL, NULL, NULL, NULL, 4565456, '45454', NULL, '564156464', 'hello@gmail.com', 'hello@gmail.com', 'hello@gmail.com', 'hello@gmail.com', 'hello@gmail.com', '2018-09-12 15:43:23', NULL, NULL, NULL, ''),
(14, 'gnhpoqkg1fhy8jyk', NULL, 'pradeep.k@.com', '$2y$13$Xg3leieBtVvevhIYtuEEkeZx8b94qWZ1oJBq2CHld.0WaMImQFoe.', NULL, 2, NULL, NULL, NULL, NULL, NULL, 9884464548, 'were', NULL, 'rew', 'wr', 'wre', 'wer', 'er', 'erw', '2018-09-12 18:05:57', 8, NULL, NULL, ''),
(15, 'uegbbn96t2ohcu7g', NULL, '11@gmail.com', '$2y$13$vY4iecVNghma0bMUlJhFp.Sho4lwlBr2lM/UDv7yl0R2IncsDqs7m', NULL, 2, NULL, NULL, NULL, NULL, NULL, 12345678, '4554', NULL, 'rew', 'wr', 'wre', 'wer', 'er', 'erw', '2018-09-12 18:42:21', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy_lang`
--

CREATE TABLE `deliveryboy_lang` (
  `deliveryboy_lang_id` bigint(20) NOT NULL,
  `deliveryboy_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `deliveryboy_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliveryboy_lang`
--

INSERT INTO `deliveryboy_lang` (`deliveryboy_lang_id`, `deliveryboy_id`, `language_code`, `deliveryboy_name`) VALUES
(1, 1, 'en', 'qq'),
(2, 2, 'en', 'qq'),
(3, 3, 'en', 'qq'),
(4, 4, 'en', 'qq'),
(5, 5, 'en', 'qq'),
(6, 6, 'en', 'qq'),
(7, 7, 'en', 'qq'),
(8, 8, 'en', 'saravanan'),
(9, 9, 'en', 'Lightning Delivery'),
(10, 10, 'en', 'fdv'),
(11, 11, 'en', 'df'),
(12, 12, 'en', 'wre'),
(13, 13, 'en', 'hello@gmail.com'),
(14, 14, 'en', 'Lightning Delivery'),
(15, 15, 'en', 'wre');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy_rating`
--

CREATE TABLE `deliveryboy_rating` (
  `deliveryboy_rating_id` bigint(20) NOT NULL,
  `deliveryboy_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `rating` bigint(20) DEFAULT NULL,
  `comments` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliveryboy_rating`
--

INSERT INTO `deliveryboy_rating` (`deliveryboy_rating_id`, `deliveryboy_id`, `order_id`, `user_id`, `rating`, `comments`, `created_at`) VALUES
(1, 5, 414, 163, 5, 'cxc', NULL),
(2, 5, 413, 163, 4, 'zxxzx', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy_request`
--

CREATE TABLE `deliveryboy_request` (
  `deliveryboy_request_id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_boy_id` bigint(20) DEFAULT NULL,
  `requested_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliveryboy_request`
--

INSERT INTO `deliveryboy_request` (`deliveryboy_request_id`, `order_id`, `delivery_boy_id`, `requested_datetime`, `status`) VALUES
(1, 7, 9, '2018-09-11 15:29:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy_request_history`
--

CREATE TABLE `deliveryboy_request_history` (
  `deliveryboy_request_history_id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryboy_id` bigint(20) DEFAULT NULL,
  `requested_datetime` datetime DEFAULT NULL,
  `accepted_deliveryboy_id` bigint(20) DEFAULT NULL,
  `accepted_datetime` datetime DEFAULT NULL,
  `rejected_datetime` datetime DEFAULT NULL,
  `cancel_reason` text,
  `completed_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_area`
--

CREATE TABLE `delivery_area` (
  `delivery_area_id` bigint(20) NOT NULL,
  `delivery_area_key` varchar(16) DEFAULT NULL,
  `delivery_area_name` varchar(256) DEFAULT NULL,
  `delivery_area_type` tinyint(1) DEFAULT NULL COMMENT '1 - Circle, 2 - POlygon',
  `delivery_area_radius` double DEFAULT NULL,
  `delivery_area_data` longtext,
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivery_area`
--

INSERT INTO `delivery_area` (`delivery_area_id`, `delivery_area_key`, `delivery_area_name`, `delivery_area_type`, `delivery_area_radius`, `delivery_area_data`, `created_at`, `created_user_id`, `updated_at`, `modified_user_id`) VALUES
(2, 'o99adoi9ukb3gd3p', 'coimbatore', 1, 71073.004161303, '[10.952990929266,76.901046620126]', '2018-08-01 19:22:24', 1, '2019-08-12 15:56:53', NULL),
(3, 'mv5dles86yzextd2', 'OSLO', 2, NULL, '[[6.313706973769,94.387288450059],[6.4276686472036,94.318967222029],[6.2273659907051,94.584699033559],[6.256716702309,93.978219388784],[6.1768516266712,94.470372556509],[6.313706973769,94.387288450059],[6.313706973769,94.387288450059],[6.313706973769,94.387288450059]]', '2018-08-29 13:16:56', 1, '2018-09-14 11:37:46', NULL),
(4, 'srrzug94aceovwpi', 'DOD 2', 1, 21830.735371652, '[60.471526811259,9.1017208689975]', '2018-09-10 12:34:05', 1, '2018-09-14 14:51:55', NULL),
(7, 'mwrj04xvwp9xl0a6', 'yhh', 1, 890.41100613375, '[3.6464508146191,101.95824223269]', '2018-09-11 13:03:00', 1, '2018-09-11 13:03:00', NULL),
(9, '8h0ocgmzx8pyxuhh', 'ft', 1, 1973.5008230233, '[3.6490205186602,101.9790132593]', '2018-09-11 13:10:14', 1, '2018-09-11 13:10:14', NULL),
(10, 'vjxc6in2ohokwkk0', 'gj', 2, NULL, '[[3.6498770850409,101.97643833865],[3.6399408648546,101.96596699465],[3.6531320298361,101.97249012698],[3.6498770850409,101.97643833865]]', '2018-09-11 13:10:41', 1, '2018-09-11 13:10:41', NULL),
(11, 'leqbjarmpjfx9etk', 'delhi', 1, 667.47447095141, '[3.643367160075,101.97403507937]', '2018-09-11 13:12:59', 1, '2018-09-11 13:12:59', NULL),
(12, 'gllepazshibgo9xd', 'ss', 1, 458.09299889974, '[3.6442237318421,101.97884159792]', '2018-09-11 13:14:38', 1, '2018-09-11 13:14:38', NULL),
(14, '4kgbu9wddwbo1dji', 'Aravind', 2, NULL, '[[60.489727968296,8.4737637407599],[60.47780325493,8.4265568620979],[60.473488981094,8.4871533281622],[60.486007251683,8.4969380266485],[60.489727968296,8.4737637407599],[60.489727968296,8.4737637407599]]', '2019-01-25 13:23:22', 1, '2019-01-25 13:24:59', NULL),
(15, 'soarmmvh1spa7w1u', 'vadavalli', 1, 17187.595535439, '[11.034012380376,76.897814952821]', '2019-08-12 16:15:55', 1, '2019-08-12 18:05:48', NULL),
(16, 'lwqibq7xvoaqcazz', 'vadavalli polygon', 2, NULL, '[[11.051517799951,76.855491473864],[11.069038983671,76.896690204332],[11.102730620453,76.940635516832],[11.095992603733,76.972221210192],[11.089254431605,77.029899432848],[11.05286562049,77.04500563402],[11.024560089668,77.079337909411],[10.992207575698,77.062858417223],[10.953110220796,77.049125507067],[10.926143517993,77.014793231676],[10.923446712849,76.921409442614],[10.927491911377,76.863731219957],[10.95850326681,76.833518817614],[10.99759990807,76.790946796129],[11.033995569673,76.829398944567],[11.046126455875,76.866477801989],[11.055561242987,76.867851093004],[11.051517799951,76.855491473864]]', '2019-08-28 12:22:51', 1, '2019-08-28 12:22:51', NULL),
(17, 'ujfqofozkgkwyi33', 'TEST', 2, NULL, '[[4.2165731180796735,101.936272633693],[4.208451759486205,101.9912365343877],[4.224201863834733,101.97029384639941],[4.2165731180796735,101.936272633693]]', '2020-03-24 10:57:55', 1, '2020-03-24 10:57:55', NULL),
(18, 'ieyq1vprjbksvevf', 'S', 2, NULL, '[[4.205317465956858,101.91876226894279],[4.1965862574214166,101.93661505214591],[4.215931744555456,101.90949255458732],[4.205317465956858,101.91876226894279]]', '2020-03-24 10:58:59', 1, '2020-03-24 10:58:59', NULL),
(19, 'xg9ywyx4srugasci', 'jfjfjffj', 2, NULL, '[[4.209438036250216,101.97630582166299],[4.207554852638165,102.00840649915322],[4.189407577495543,101.99673352552041],[4.191119602599102,101.97012601209268],[4.209438036250216,101.97630582166299]]', '2020-03-27 13:21:44', 1, '2020-03-27 13:21:44', NULL),
(20, 'sbcovzbyyll3a0dq', 'test3', 2, NULL, '[[4.235426040018868,101.93699379997257],[4.267951942899624,101.99553032951358],[4.234398883915244,101.95862313346866],[4.235426040018868,101.93699379997257]]', '2020-03-27 16:13:43', 1, '2020-03-27 16:13:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charge_setting`
--

CREATE TABLE `delivery_charge_setting` (
  `delivery_charge_id` int(11) NOT NULL,
  `delivery_charge_setting_key` varchar(50) NOT NULL,
  `start_km` double NOT NULL,
  `end_km` double NOT NULL,
  `amount` double NOT NULL,
  `created_at` datetime NOT NULL,
  `created_user_id` bigint(20) NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivery_charge_setting`
--

INSERT INTO `delivery_charge_setting` (`delivery_charge_id`, `delivery_charge_setting_key`, `start_km`, `end_km`, `amount`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`) VALUES
(2, '49vnpkxz6gujeu3e', 0, 5, 11, '2018-08-27 17:33:52', 1, NULL, NULL),
(3, 'uz7d3ian1zl4wvcm', 5.1, 10, 130, '2018-09-04 15:32:51', 1, NULL, NULL),
(4, 'fqt93l6mi2t5mprs', 15.1, 30, 10, '2018-09-11 14:46:36', 1, NULL, NULL),
(5, 'k0mo2wrfq9siozsy', 10.1, 15, 10, '2018-09-14 17:26:05', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_queue`
--

CREATE TABLE `email_queue` (
  `email_queue_id` bigint(20) NOT NULL,
  `email_queue_key` varchar(16) DEFAULT NULL,
  `to_address` longtext,
  `subject` varchar(500) DEFAULT NULL,
  `content` longtext,
  `status` tinyint(1) DEFAULT NULL COMMENT '1 - Draft, 2 - Success, 3 - Failed',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_queue`
--

INSERT INTO `email_queue` (`email_queue_id`, `email_queue_key`, `to_address`, `subject`, `content`, `status`, `created_at`, `modified_at`) VALUES
(1, 'pdjgsjwbjfvyaa7g', 'ramesh.m@.com', 'Order Placed', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title>Thank you for your Order!</title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/frontend/web/theme/images/placeholder.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                        Thank you for your Order!                                    </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                <p style=\"margin:0px 0px 10px 0px;\">Dear <b>Ramesh</b>, </p>\n<p style=\"margin:0px 0px 5px 0px;\">Thank you for placing order at\n    <b style=\"color:#000\">Portland</b>.\n</p>\n<p style=\"margin:0px\">Exciting to have you here. Your order has been successfully\n    placed and please allow us sometime to confirm your order.\n</p>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" style=\"background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;\">\n    <tr>\n        <th colspan=\"3\" style=\"padding:15px 15px 0px 15px; text-align:left; \n            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase\">\n             Order Information:  \n        </th>\n   </tr>\n   <tr>\n        <td>\n            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <td style=\"padding:15px; text-align:left;\">\n                        <p style=\"margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Order ID</p>\n                        <b style=\"font-size:15px; font-weight:bold\">0000023</b>\n                </td>\n                <td style=\"padding:15px 0px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Date Added</p>\n                        <b style=\"font-size:15px; font-weight:bold\">2020-04-10 11:05:12</b>\n                </td>\n                <td style=\"padding:15px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Payment Method</p>\n                        <b style=\"font-size:15px; font-weight:bold\"> Cash On Delivery </b>\n                </td>\n            </table>\n        </td>\n    </tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" \n    style=\"margin-bottom:20px; border-top: 1px solid #d3d4d8;\">\n    <tr>\n        <td>\n        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <thead>\n                    <th colspan=\"3\" style=\"padding:10px 15px 10px 15px;\n                        text-align:left; color:#1189BC; font-size:14px;\n                        font-weight:600; text-transform:uppercase;\n                        background-color:#fff; border-left: 1px solid #d3d4d8;\n                        border-right: 1px solid #d3d4d8;\">\n                        Order Detail:\n                    </th>							   \n                </thead>\n        </table>\n        </td>\n    </tr>\n    \n    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" >\n    <tr>\n        <thead style=\"background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold\">\n            <th style=\"padding:10px 15px; text-align:left;\">Product</th>\n            <th style=\"padding:10px 0px; text-align:center;\">Qty</th>\n            <th style=\"padding:10px 15px; text-align:right\">Price</th>\n        </thead>\n    </tr>\n     \n    <tr style=\"background:#fff;\">\n        <td style=\"padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;\">             \n            <p style=\"margin:0; font-weight:bold\">Product Name</p>\n            <p style=\"margin:0px; color:#666; font-size:12px\">\n                <span style=\"margin:5px 5px 0px 0px\">Pasta-<b style=\"color:#333;\">RM 100.00</b></span>\n            </p>          \n        </td>  \n        <td width=\"50\" style=\"padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold\">         \n            4  </td>         \n        <td width=\"80\" style=\"padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold\">RM 400.00</td>					            \n    </tr>    \n         <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Item Total:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\"> RM 404.00</td>					\n    </tr>\n        <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">IGST:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 161.60</td>					\n    </tr>\n    <!--    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Service Tax:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">?= Com::moneyFormat(round($service_tax, 2), \'\') ?></td>					\n    </tr>-->\n    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Coupon:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>                   \n    </tr>\n     <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Delivery Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 10.00</td>					\n    </tr>\n       <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Packaging Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 25.00</td>					\n    </tr> \n    <tr style=\"text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px\">\n        <td style=\"border-right:1px solid #1189BC;\"></td>\n        <td width=\"80\" style=\"padding:12px 15px; background:#f5af19\">Sub Total</td>\n        <td width=\"100\" style=\"padding:12px 15px; background:#f5af19; font-size:18px\">RM 600.60</td>					\n    </tr>\n    </table>\n</table>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-04-10 11:05:17', NULL),
(2, 'apylwvcp7yxprlhp', 'ramesh.m@.com', 'Order Placed', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title>Thank you for your Order!</title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/frontend/web/theme/images/placeholder.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                        Thank you for your Order!                                    </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                <p style=\"margin:0px 0px 10px 0px;\">Dear <b>Ramesh</b>, </p>\n<p style=\"margin:0px 0px 5px 0px;\">Thank you for placing order at\n    <b style=\"color:#000\">Portland</b>.\n</p>\n<p style=\"margin:0px\">Exciting to have you here. Your order has been successfully\n    placed and please allow us sometime to confirm your order.\n</p>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" style=\"background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;\">\n    <tr>\n        <th colspan=\"3\" style=\"padding:15px 15px 0px 15px; text-align:left; \n            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase\">\n             Order Information:  \n        </th>\n   </tr>\n   <tr>\n        <td>\n            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <td style=\"padding:15px; text-align:left;\">\n                        <p style=\"margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Order ID</p>\n                        <b style=\"font-size:15px; font-weight:bold\">0000024</b>\n                </td>\n                <td style=\"padding:15px 0px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Date Added</p>\n                        <b style=\"font-size:15px; font-weight:bold\">2020-04-10 11:10:13</b>\n                </td>\n                <td style=\"padding:15px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Payment Method</p>\n                        <b style=\"font-size:15px; font-weight:bold\"> Cash On Delivery </b>\n                </td>\n            </table>\n        </td>\n    </tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" \n    style=\"margin-bottom:20px; border-top: 1px solid #d3d4d8;\">\n    <tr>\n        <td>\n        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <thead>\n                    <th colspan=\"3\" style=\"padding:10px 15px 10px 15px;\n                        text-align:left; color:#1189BC; font-size:14px;\n                        font-weight:600; text-transform:uppercase;\n                        background-color:#fff; border-left: 1px solid #d3d4d8;\n                        border-right: 1px solid #d3d4d8;\">\n                        Order Detail:\n                    </th>							   \n                </thead>\n        </table>\n        </td>\n    </tr>\n    \n    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" >\n    <tr>\n        <thead style=\"background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold\">\n            <th style=\"padding:10px 15px; text-align:left;\">Product</th>\n            <th style=\"padding:10px 0px; text-align:center;\">Qty</th>\n            <th style=\"padding:10px 15px; text-align:right\">Price</th>\n        </thead>\n    </tr>\n     \n    <tr style=\"background:#fff;\">\n        <td style=\"padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;\">             \n            <p style=\"margin:0; font-weight:bold\">Product Name</p>\n            <p style=\"margin:0px; color:#666; font-size:12px\">\n                <span style=\"margin:5px 5px 0px 0px\">Pasta-<b style=\"color:#333;\">RM 100.00</b></span>\n            </p>          \n        </td>  \n        <td width=\"50\" style=\"padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold\">         \n            4  </td>         \n        <td width=\"80\" style=\"padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold\">RM 400.00</td>					            \n    </tr>    \n         <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Item Total:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\"> RM 404.00</td>					\n    </tr>\n        <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">IGST:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 161.60</td>					\n    </tr>\n    <!--    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Service Tax:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">?= Com::moneyFormat(round($service_tax, 2), \'\') ?></td>					\n    </tr>-->\n    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Coupon:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>                   \n    </tr>\n     <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Delivery Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 10.00</td>					\n    </tr>\n       <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Packaging Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 25.00</td>					\n    </tr> \n    <tr style=\"text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px\">\n        <td style=\"border-right:1px solid #1189BC;\"></td>\n        <td width=\"80\" style=\"padding:12px 15px; background:#f5af19\">Sub Total</td>\n        <td width=\"100\" style=\"padding:12px 15px; background:#f5af19; font-size:18px\">RM 600.60</td>					\n    </tr>\n    </table>\n</table>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-04-10 11:10:18', NULL),
(3, 'nvl3uxmv4bmboyhq', 'ramesh.m@.com', 'Order Placed', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title>Thank you for your Order!</title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                        Thank you for your Order!                                    </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                <p style=\"margin:0px 0px 10px 0px;\">Dear <b>Ramesh</b>, </p>\n<p style=\"margin:0px 0px 5px 0px;\">Thank you for placing order at\n    <b style=\"color:#000\">Portland</b>.\n</p>\n<p style=\"margin:0px\">Exciting to have you here. Your order has been successfully\n    placed and please allow us sometime to confirm your order.\n</p>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" style=\"background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;\">\n    <tr>\n        <th colspan=\"3\" style=\"padding:15px 15px 0px 15px; text-align:left; \n            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase\">\n             Order Information:  \n        </th>\n   </tr>\n   <tr>\n        <td>\n            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <td style=\"padding:15px; text-align:left;\">\n                        <p style=\"margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Order ID</p>\n                        <b style=\"font-size:15px; font-weight:bold\">0000025</b>\n                </td>\n                <td style=\"padding:15px 0px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Date Added</p>\n                        <b style=\"font-size:15px; font-weight:bold\">2020-04-28 13:23:52</b>\n                </td>\n                <td style=\"padding:15px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Payment Method</p>\n                        <b style=\"font-size:15px; font-weight:bold\"> Cash On Delivery </b>\n                </td>\n            </table>\n        </td>\n    </tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" \n    style=\"margin-bottom:20px; border-top: 1px solid #d3d4d8;\">\n    <tr>\n        <td>\n        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <thead>\n                    <th colspan=\"3\" style=\"padding:10px 15px 10px 15px;\n                        text-align:left; color:#1189BC; font-size:14px;\n                        font-weight:600; text-transform:uppercase;\n                        background-color:#fff; border-left: 1px solid #d3d4d8;\n                        border-right: 1px solid #d3d4d8;\">\n                        Order Detail:\n                    </th>							   \n                </thead>\n        </table>\n        </td>\n    </tr>\n    \n    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" >\n    <tr>\n        <thead style=\"background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold\">\n            <th style=\"padding:10px 15px; text-align:left;\">Product</th>\n            <th style=\"padding:10px 0px; text-align:center;\">Qty</th>\n            <th style=\"padding:10px 15px; text-align:right\">Price</th>\n        </thead>\n    </tr>\n     \n    <tr style=\"background:#fff;\">\n        <td style=\"padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;\">             \n            <p style=\"margin:0; font-weight:bold\">Product Name</p>\n            <p style=\"margin:0px; color:#666; font-size:12px\">\n                <span style=\"margin:5px 5px 0px 0px\">mat testing-<b style=\"color:#333;\">RM 300.00</b></span>\n            </p>          \n        </td>  \n        <td width=\"50\" style=\"padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold\">         \n            1  </td>         \n        <td width=\"80\" style=\"padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold\">RM 300.00</td>					            \n    </tr>    \n         <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Item Total:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\"> RM 300.00</td>					\n    </tr>\n        <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">IGST:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 120.00</td>					\n    </tr>\n    <!--    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Service Tax:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">?= Com::moneyFormat(round($service_tax, 2), \'\') ?></td>					\n    </tr>-->\n    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Coupon:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>                   \n    </tr>\n     <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Delivery Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 11.00</td>					\n    </tr>\n       <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Packaging Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>					\n    </tr> \n    <tr style=\"text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px\">\n        <td style=\"border-right:1px solid #1189BC;\"></td>\n        <td width=\"80\" style=\"padding:12px 15px; background:#f5af19\">Sub Total</td>\n        <td width=\"100\" style=\"padding:12px 15px; background:#f5af19; font-size:18px\">RM 431.00</td>					\n    </tr>\n    </table>\n</table>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-04-28 13:24:04', NULL),
(4, 'so0xaujbtprrsbzj', 'ramesh.m@.com', 'Order Placed', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title>Thank you for your Order!</title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                        Thank you for your Order!                                    </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                <p style=\"margin:0px 0px 10px 0px;\">Dear <b>Ramesh</b>, </p>\n<p style=\"margin:0px 0px 5px 0px;\">Thank you for placing order at\n    <b style=\"color:#000\">Portland</b>.\n</p>\n<p style=\"margin:0px\">Exciting to have you here. Your order has been successfully\n    placed and please allow us sometime to confirm your order.\n</p>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" style=\"background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;\">\n    <tr>\n        <th colspan=\"3\" style=\"padding:15px 15px 0px 15px; text-align:left; \n            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase\">\n             Order Information:  \n        </th>\n   </tr>\n   <tr>\n        <td>\n            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <td style=\"padding:15px; text-align:left;\">\n                        <p style=\"margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Order ID</p>\n                        <b style=\"font-size:15px; font-weight:bold\">0000026</b>\n                </td>\n                <td style=\"padding:15px 0px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Date Added</p>\n                        <b style=\"font-size:15px; font-weight:bold\">2020-04-28 14:00:20</b>\n                </td>\n                <td style=\"padding:15px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Payment Method</p>\n                        <b style=\"font-size:15px; font-weight:bold\"> Online </b>\n                </td>\n            </table>\n        </td>\n    </tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" \n    style=\"margin-bottom:20px; border-top: 1px solid #d3d4d8;\">\n    <tr>\n        <td>\n        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <thead>\n                    <th colspan=\"3\" style=\"padding:10px 15px 10px 15px;\n                        text-align:left; color:#1189BC; font-size:14px;\n                        font-weight:600; text-transform:uppercase;\n                        background-color:#fff; border-left: 1px solid #d3d4d8;\n                        border-right: 1px solid #d3d4d8;\">\n                        Order Detail:\n                    </th>							   \n                </thead>\n        </table>\n        </td>\n    </tr>\n    \n    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" >\n    <tr>\n        <thead style=\"background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold\">\n            <th style=\"padding:10px 15px; text-align:left;\">Product</th>\n            <th style=\"padding:10px 0px; text-align:center;\">Qty</th>\n            <th style=\"padding:10px 15px; text-align:right\">Price</th>\n        </thead>\n    </tr>\n     \n    <tr style=\"background:#fff;\">\n        <td style=\"padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;\">             \n            <p style=\"margin:0; font-weight:bold\">Product Name</p>\n            <p style=\"margin:0px; color:#666; font-size:12px\">\n                <span style=\"margin:5px 5px 0px 0px\">mat testing-<b style=\"color:#333;\">RM 300.00</b></span>\n            </p>          \n        </td>  \n        <td width=\"50\" style=\"padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold\">         \n            1  </td>         \n        <td width=\"80\" style=\"padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold\">RM 300.00</td>					            \n    </tr>    \n         <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Item Total:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\"> RM 300.00</td>					\n    </tr>\n        <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">IGST:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 120.00</td>					\n    </tr>\n    <!--    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Service Tax:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">?= Com::moneyFormat(round($service_tax, 2), \'\') ?></td>					\n    </tr>-->\n    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Coupon:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>                   \n    </tr>\n     <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Delivery Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 11.00</td>					\n    </tr>\n       <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Packaging Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>					\n    </tr> \n    <tr style=\"text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px\">\n        <td style=\"border-right:1px solid #1189BC;\"></td>\n        <td width=\"80\" style=\"padding:12px 15px; background:#f5af19\">Sub Total</td>\n        <td width=\"100\" style=\"padding:12px 15px; background:#f5af19; font-size:18px\">RM 431.00</td>					\n    </tr>\n    </table>\n</table>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-04-28 14:00:30', NULL);
INSERT INTO `email_queue` (`email_queue_id`, `email_queue_key`, `to_address`, `subject`, `content`, `status`, `created_at`, `modified_at`) VALUES
(5, 'r9shoqfovqqutiwt', 'ramesh.m@.com', 'Order Placed', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title>Thank you for your Order!</title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                        Thank you for your Order!                                    </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                <p style=\"margin:0px 0px 10px 0px;\">Dear <b>Ramesh</b>, </p>\n<p style=\"margin:0px 0px 5px 0px;\">Thank you for placing order at\n    <b style=\"color:#000\">Portland</b>.\n</p>\n<p style=\"margin:0px\">Exciting to have you here. Your order has been successfully\n    placed and please allow us sometime to confirm your order.\n</p>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" style=\"background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;\">\n    <tr>\n        <th colspan=\"3\" style=\"padding:15px 15px 0px 15px; text-align:left; \n            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase\">\n             Order Information:  \n        </th>\n   </tr>\n   <tr>\n        <td>\n            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <td style=\"padding:15px; text-align:left;\">\n                        <p style=\"margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Order ID</p>\n                        <b style=\"font-size:15px; font-weight:bold\">0000027</b>\n                </td>\n                <td style=\"padding:15px 0px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Date Added</p>\n                        <b style=\"font-size:15px; font-weight:bold\">2020-04-28 14:01:42</b>\n                </td>\n                <td style=\"padding:15px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Payment Method</p>\n                        <b style=\"font-size:15px; font-weight:bold\"> Online </b>\n                </td>\n            </table>\n        </td>\n    </tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" \n    style=\"margin-bottom:20px; border-top: 1px solid #d3d4d8;\">\n    <tr>\n        <td>\n        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <thead>\n                    <th colspan=\"3\" style=\"padding:10px 15px 10px 15px;\n                        text-align:left; color:#1189BC; font-size:14px;\n                        font-weight:600; text-transform:uppercase;\n                        background-color:#fff; border-left: 1px solid #d3d4d8;\n                        border-right: 1px solid #d3d4d8;\">\n                        Order Detail:\n                    </th>							   \n                </thead>\n        </table>\n        </td>\n    </tr>\n    \n    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" >\n    <tr>\n        <thead style=\"background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold\">\n            <th style=\"padding:10px 15px; text-align:left;\">Product</th>\n            <th style=\"padding:10px 0px; text-align:center;\">Qty</th>\n            <th style=\"padding:10px 15px; text-align:right\">Price</th>\n        </thead>\n    </tr>\n     \n    <tr style=\"background:#fff;\">\n        <td style=\"padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;\">             \n            <p style=\"margin:0; font-weight:bold\">Product Name</p>\n            <p style=\"margin:0px; color:#666; font-size:12px\">\n                <span style=\"margin:5px 5px 0px 0px\">mat testing-<b style=\"color:#333;\">RM 300.00</b></span>\n            </p>          \n        </td>  \n        <td width=\"50\" style=\"padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold\">         \n            1  </td>         \n        <td width=\"80\" style=\"padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold\">RM 300.00</td>					            \n    </tr>    \n         <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Item Total:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\"> RM 300.00</td>					\n    </tr>\n        <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">IGST:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 120.00</td>					\n    </tr>\n    <!--    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Service Tax:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">?= Com::moneyFormat(round($service_tax, 2), \'\') ?></td>					\n    </tr>-->\n    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Coupon:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>                   \n    </tr>\n     <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Delivery Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 11.00</td>					\n    </tr>\n       <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Packaging Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>					\n    </tr> \n    <tr style=\"text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px\">\n        <td style=\"border-right:1px solid #1189BC;\"></td>\n        <td width=\"80\" style=\"padding:12px 15px; background:#f5af19\">Sub Total</td>\n        <td width=\"100\" style=\"padding:12px 15px; background:#f5af19; font-size:18px\">RM 431.00</td>					\n    </tr>\n    </table>\n</table>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-04-28 14:02:08', NULL),
(6, '2wqcu4dkugtcrnnf', 'ramesh.m@.com', 'Order Placed', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title>Thank you for your Order!</title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                        Thank you for your Order!                                    </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                <p style=\"margin:0px 0px 10px 0px;\">Dear <b>Ramesh</b>, </p>\n<p style=\"margin:0px 0px 5px 0px;\">Thank you for placing order at\n    <b style=\"color:#000\">Portland</b>.\n</p>\n<p style=\"margin:0px\">Exciting to have you here. Your order has been successfully\n    placed and please allow us sometime to confirm your order.\n</p>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" style=\"background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;\">\n    <tr>\n        <th colspan=\"3\" style=\"padding:15px 15px 0px 15px; text-align:left; \n            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase\">\n             Order Information:  \n        </th>\n   </tr>\n   <tr>\n        <td>\n            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <td style=\"padding:15px; text-align:left;\">\n                        <p style=\"margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Order ID</p>\n                        <b style=\"font-size:15px; font-weight:bold\">0000001</b>\n                </td>\n                <td style=\"padding:15px 0px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Date Added</p>\n                        <b style=\"font-size:15px; font-weight:bold\">2020-05-06 12:02:12</b>\n                </td>\n                <td style=\"padding:15px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Payment Method</p>\n                        <b style=\"font-size:15px; font-weight:bold\"> Cash On Delivery </b>\n                </td>\n            </table>\n        </td>\n    </tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" \n    style=\"margin-bottom:20px; border-top: 1px solid #d3d4d8;\">\n    <tr>\n        <td>\n        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <thead>\n                    <th colspan=\"3\" style=\"padding:10px 15px 10px 15px;\n                        text-align:left; color:#1189BC; font-size:14px;\n                        font-weight:600; text-transform:uppercase;\n                        background-color:#fff; border-left: 1px solid #d3d4d8;\n                        border-right: 1px solid #d3d4d8;\">\n                        Order Detail:\n                    </th>							   \n                </thead>\n        </table>\n        </td>\n    </tr>\n    \n    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" >\n    <tr>\n        <thead style=\"background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold\">\n            <th style=\"padding:10px 15px; text-align:left;\">Product</th>\n            <th style=\"padding:10px 0px; text-align:center;\">Qty</th>\n            <th style=\"padding:10px 15px; text-align:right\">Price</th>\n        </thead>\n    </tr>\n     \n    <tr style=\"background:#fff;\">\n        <td style=\"padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;\">             \n            <p style=\"margin:0; font-weight:bold\">Product Name</p>\n            <p style=\"margin:0px; color:#666; font-size:12px\">\n                <span style=\"margin:5px 5px 0px 0px\">mat testing-<b style=\"color:#333;\">RM 300.00</b></span>\n            </p>          \n        </td>  \n        <td width=\"50\" style=\"padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold\">         \n            1  </td>         \n        <td width=\"80\" style=\"padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold\">RM 300.00</td>					            \n    </tr>    \n         <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Item Total:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\"> RM 300.00</td>					\n    </tr>\n        <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">IGST:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 120.00</td>					\n    </tr>\n    <!--    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Service Tax:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">?= Com::moneyFormat(round($service_tax, 2), \'\') ?></td>					\n    </tr>-->\n    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Coupon:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>                   \n    </tr>\n     <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Delivery Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 10.00</td>					\n    </tr>\n       <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Packaging Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>					\n    </tr> \n    <tr style=\"text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px\">\n        <td style=\"border-right:1px solid #1189BC;\"></td>\n        <td width=\"80\" style=\"padding:12px 15px; background:#f5af19\">Sub Total</td>\n        <td width=\"100\" style=\"padding:12px 15px; background:#f5af19; font-size:18px\">RM 430.00</td>					\n    </tr>\n    </table>\n</table>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-05-06 12:02:16', NULL),
(7, 'mtl3bhwbot1xulu6', 'ramesh.m@.com', 'Order Placed', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title>Thank you for your Order!</title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                        Thank you for your Order!                                    </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                <p style=\"margin:0px 0px 10px 0px;\">Dear <b>Ramesh</b>, </p>\n<p style=\"margin:0px 0px 5px 0px;\">Thank you for placing order at\n    <b style=\"color:#000\">Portland</b>.\n</p>\n<p style=\"margin:0px\">Exciting to have you here. Your order has been successfully\n    placed and please allow us sometime to confirm your order.\n</p>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" style=\"background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;\">\n    <tr>\n        <th colspan=\"3\" style=\"padding:15px 15px 0px 15px; text-align:left; \n            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase\">\n             Order Information:  \n        </th>\n   </tr>\n   <tr>\n        <td>\n            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <td style=\"padding:15px; text-align:left;\">\n                        <p style=\"margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Order ID</p>\n                        <b style=\"font-size:15px; font-weight:bold\">0000002</b>\n                </td>\n                <td style=\"padding:15px 0px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Date Added</p>\n                        <b style=\"font-size:15px; font-weight:bold\">2020-05-06 12:14:16</b>\n                </td>\n                <td style=\"padding:15px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Payment Method</p>\n                        <b style=\"font-size:15px; font-weight:bold\"> Cash On Delivery </b>\n                </td>\n            </table>\n        </td>\n    </tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" \n    style=\"margin-bottom:20px; border-top: 1px solid #d3d4d8;\">\n    <tr>\n        <td>\n        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <thead>\n                    <th colspan=\"3\" style=\"padding:10px 15px 10px 15px;\n                        text-align:left; color:#1189BC; font-size:14px;\n                        font-weight:600; text-transform:uppercase;\n                        background-color:#fff; border-left: 1px solid #d3d4d8;\n                        border-right: 1px solid #d3d4d8;\">\n                        Order Detail:\n                    </th>							   \n                </thead>\n        </table>\n        </td>\n    </tr>\n    \n    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" >\n    <tr>\n        <thead style=\"background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold\">\n            <th style=\"padding:10px 15px; text-align:left;\">Product</th>\n            <th style=\"padding:10px 0px; text-align:center;\">Qty</th>\n            <th style=\"padding:10px 15px; text-align:right\">Price</th>\n        </thead>\n    </tr>\n     \n    <tr style=\"background:#fff;\">\n        <td style=\"padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;\">             \n            <p style=\"margin:0; font-weight:bold\">Product Name</p>\n            <p style=\"margin:0px; color:#666; font-size:12px\">\n                <span style=\"margin:5px 5px 0px 0px\">mat testing-<b style=\"color:#333;\">RM 300.00</b></span>\n            </p>          \n        </td>  \n        <td width=\"50\" style=\"padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold\">         \n            1  </td>         \n        <td width=\"80\" style=\"padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold\">RM 300.00</td>					            \n    </tr>    \n         <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Item Total:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\"> RM 300.00</td>					\n    </tr>\n        <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">IGST:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 120.00</td>					\n    </tr>\n    <!--    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Service Tax:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">?= Com::moneyFormat(round($service_tax, 2), \'\') ?></td>					\n    </tr>-->\n    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Coupon:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>                   \n    </tr>\n     <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Delivery Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 10.00</td>					\n    </tr>\n       <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Packaging Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>					\n    </tr> \n    <tr style=\"text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px\">\n        <td style=\"border-right:1px solid #1189BC;\"></td>\n        <td width=\"80\" style=\"padding:12px 15px; background:#f5af19\">Sub Total</td>\n        <td width=\"100\" style=\"padding:12px 15px; background:#f5af19; font-size:18px\">RM 430.00</td>					\n    </tr>\n    </table>\n</table>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-05-06 12:14:19', NULL),
(8, 'k9skubpxsx7rjcry', 'ramesh.m@.com', 'Order Placed', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title>Thank you for your Order!</title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                        Thank you for your Order!                                    </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                <p style=\"margin:0px 0px 10px 0px;\">Dear <b>Ramesh</b>, </p>\n<p style=\"margin:0px 0px 5px 0px;\">Thank you for placing order at\n    <b style=\"color:#000\">Portland</b>.\n</p>\n<p style=\"margin:0px\">Exciting to have you here. Your order has been successfully\n    placed and please allow us sometime to confirm your order.\n</p>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" style=\"background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;\">\n    <tr>\n        <th colspan=\"3\" style=\"padding:15px 15px 0px 15px; text-align:left; \n            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase\">\n             Order Information:  \n        </th>\n   </tr>\n   <tr>\n        <td>\n            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <td style=\"padding:15px; text-align:left;\">\n                        <p style=\"margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Order ID</p>\n                        <b style=\"font-size:15px; font-weight:bold\">0000003</b>\n                </td>\n                <td style=\"padding:15px 0px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Date Added</p>\n                        <b style=\"font-size:15px; font-weight:bold\">2020-05-06 13:18:07</b>\n                </td>\n                <td style=\"padding:15px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Payment Method</p>\n                        <b style=\"font-size:15px; font-weight:bold\"> Cash On Delivery </b>\n                </td>\n            </table>\n        </td>\n    </tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" \n    style=\"margin-bottom:20px; border-top: 1px solid #d3d4d8;\">\n    <tr>\n        <td>\n        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <thead>\n                    <th colspan=\"3\" style=\"padding:10px 15px 10px 15px;\n                        text-align:left; color:#1189BC; font-size:14px;\n                        font-weight:600; text-transform:uppercase;\n                        background-color:#fff; border-left: 1px solid #d3d4d8;\n                        border-right: 1px solid #d3d4d8;\">\n                        Order Detail:\n                    </th>							   \n                </thead>\n        </table>\n        </td>\n    </tr>\n    \n    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" >\n    <tr>\n        <thead style=\"background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold\">\n            <th style=\"padding:10px 15px; text-align:left;\">Product</th>\n            <th style=\"padding:10px 0px; text-align:center;\">Qty</th>\n            <th style=\"padding:10px 15px; text-align:right\">Price</th>\n        </thead>\n    </tr>\n     \n    <tr style=\"background:#fff;\">\n        <td style=\"padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;\">             \n            <p style=\"margin:0; font-weight:bold\">Product Name</p>\n            <p style=\"margin:0px; color:#666; font-size:12px\">\n                <span style=\"margin:5px 5px 0px 0px\">mat testing-<b style=\"color:#333;\">RM 300.00</b></span>\n            </p>          \n        </td>  \n        <td width=\"50\" style=\"padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold\">         \n            1  </td>         \n        <td width=\"80\" style=\"padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold\">RM 300.00</td>					            \n    </tr>    \n         <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Item Total:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\"> RM 300.00</td>					\n    </tr>\n        <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">IGST:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 120.00</td>					\n    </tr>\n    <!--    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Service Tax:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">?= Com::moneyFormat(round($service_tax, 2), \'\') ?></td>					\n    </tr>-->\n    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Coupon:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>                   \n    </tr>\n     <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Delivery Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 10.00</td>					\n    </tr>\n       <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Packaging Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>					\n    </tr> \n    <tr style=\"text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px\">\n        <td style=\"border-right:1px solid #1189BC;\"></td>\n        <td width=\"80\" style=\"padding:12px 15px; background:#f5af19\">Sub Total</td>\n        <td width=\"100\" style=\"padding:12px 15px; background:#f5af19; font-size:18px\">RM 430.00</td>					\n    </tr>\n    </table>\n</table>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-05-06 13:18:12', NULL);
INSERT INTO `email_queue` (`email_queue_id`, `email_queue_key`, `to_address`, `subject`, `content`, `status`, `created_at`, `modified_at`) VALUES
(9, 'aay79grspyvfgfps', 'ramesh.m@.com', 'Order Placed', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title>Thank you for your Order!</title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                        Thank you for your Order!                                    </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                <p style=\"margin:0px 0px 10px 0px;\">Dear <b>Ramesh</b>, </p>\n<p style=\"margin:0px 0px 5px 0px;\">Thank you for placing order at\n    <b style=\"color:#000\">Portland</b>.\n</p>\n<p style=\"margin:0px\">Exciting to have you here. Your order has been successfully\n    placed and please allow us sometime to confirm your order.\n</p>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" style=\"background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;\">\n    <tr>\n        <th colspan=\"3\" style=\"padding:15px 15px 0px 15px; text-align:left; \n            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase\">\n             Order Information:  \n        </th>\n   </tr>\n   <tr>\n        <td>\n            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <td style=\"padding:15px; text-align:left;\">\n                        <p style=\"margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Order ID</p>\n                        <b style=\"font-size:15px; font-weight:bold\">0000004</b>\n                </td>\n                <td style=\"padding:15px 0px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Date Added</p>\n                        <b style=\"font-size:15px; font-weight:bold\">2020-05-06 14:37:22</b>\n                </td>\n                <td style=\"padding:15px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Payment Method</p>\n                        <b style=\"font-size:15px; font-weight:bold\"> Cash On Delivery </b>\n                </td>\n            </table>\n        </td>\n    </tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" \n    style=\"margin-bottom:20px; border-top: 1px solid #d3d4d8;\">\n    <tr>\n        <td>\n        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <thead>\n                    <th colspan=\"3\" style=\"padding:10px 15px 10px 15px;\n                        text-align:left; color:#1189BC; font-size:14px;\n                        font-weight:600; text-transform:uppercase;\n                        background-color:#fff; border-left: 1px solid #d3d4d8;\n                        border-right: 1px solid #d3d4d8;\">\n                        Order Detail:\n                    </th>							   \n                </thead>\n        </table>\n        </td>\n    </tr>\n    \n    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" >\n    <tr>\n        <thead style=\"background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold\">\n            <th style=\"padding:10px 15px; text-align:left;\">Product</th>\n            <th style=\"padding:10px 0px; text-align:center;\">Qty</th>\n            <th style=\"padding:10px 15px; text-align:right\">Price</th>\n        </thead>\n    </tr>\n     \n    <tr style=\"background:#fff;\">\n        <td style=\"padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;\">             \n            <p style=\"margin:0; font-weight:bold\">Product Name</p>\n            <p style=\"margin:0px; color:#666; font-size:12px\">\n                <span style=\"margin:5px 5px 0px 0px\">mat testing-<b style=\"color:#333;\">RM 300.00</b></span>\n            </p>          \n        </td>  \n        <td width=\"50\" style=\"padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold\">         \n            1  </td>         \n        <td width=\"80\" style=\"padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold\">RM 300.00</td>					            \n    </tr>    \n         <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Item Total:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\"> RM 300.00</td>					\n    </tr>\n        <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">IGST:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 120.00</td>					\n    </tr>\n    <!--    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Service Tax:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">?= Com::moneyFormat(round($service_tax, 2), \'\') ?></td>					\n    </tr>-->\n    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Coupon:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>                   \n    </tr>\n     <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Delivery Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 10.00</td>					\n    </tr>\n       <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Packaging Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>					\n    </tr> \n    <tr style=\"text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px\">\n        <td style=\"border-right:1px solid #1189BC;\"></td>\n        <td width=\"80\" style=\"padding:12px 15px; background:#f5af19\">Sub Total</td>\n        <td width=\"100\" style=\"padding:12px 15px; background:#f5af19; font-size:18px\">RM 430.00</td>					\n    </tr>\n    </table>\n</table>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-05-06 14:37:28', NULL),
(10, 'n0wy3crw0kphyctf', 'ramesh.m@.com', 'Order Placed', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title>Thank you for your Order!</title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                        Thank you for your Order!                                    </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                <p style=\"margin:0px 0px 10px 0px;\">Dear <b>Ramesh</b>, </p>\n<p style=\"margin:0px 0px 5px 0px;\">Thank you for placing order at\n    <b style=\"color:#000\">Portland</b>.\n</p>\n<p style=\"margin:0px\">Exciting to have you here. Your order has been successfully\n    placed and please allow us sometime to confirm your order.\n</p>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" style=\"background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;\">\n    <tr>\n        <th colspan=\"3\" style=\"padding:15px 15px 0px 15px; text-align:left; \n            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase\">\n             Order Information:  \n        </th>\n   </tr>\n   <tr>\n        <td>\n            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <td style=\"padding:15px; text-align:left;\">\n                        <p style=\"margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Order ID</p>\n                        <b style=\"font-size:15px; font-weight:bold\">0000005</b>\n                </td>\n                <td style=\"padding:15px 0px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Date Added</p>\n                        <b style=\"font-size:15px; font-weight:bold\">2020-05-06 14:41:28</b>\n                </td>\n                <td style=\"padding:15px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Payment Method</p>\n                        <b style=\"font-size:15px; font-weight:bold\"> Cash On Delivery </b>\n                </td>\n            </table>\n        </td>\n    </tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" \n    style=\"margin-bottom:20px; border-top: 1px solid #d3d4d8;\">\n    <tr>\n        <td>\n        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <thead>\n                    <th colspan=\"3\" style=\"padding:10px 15px 10px 15px;\n                        text-align:left; color:#1189BC; font-size:14px;\n                        font-weight:600; text-transform:uppercase;\n                        background-color:#fff; border-left: 1px solid #d3d4d8;\n                        border-right: 1px solid #d3d4d8;\">\n                        Order Detail:\n                    </th>							   \n                </thead>\n        </table>\n        </td>\n    </tr>\n    \n    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" >\n    <tr>\n        <thead style=\"background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold\">\n            <th style=\"padding:10px 15px; text-align:left;\">Product</th>\n            <th style=\"padding:10px 0px; text-align:center;\">Qty</th>\n            <th style=\"padding:10px 15px; text-align:right\">Price</th>\n        </thead>\n    </tr>\n     \n    <tr style=\"background:#fff;\">\n        <td style=\"padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;\">             \n            <p style=\"margin:0; font-weight:bold\">Product Name</p>\n            <p style=\"margin:0px; color:#666; font-size:12px\">\n                <span style=\"margin:5px 5px 0px 0px\">mat testing-<b style=\"color:#333;\">RM 300.00</b></span>\n            </p>          \n        </td>  \n        <td width=\"50\" style=\"padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold\">         \n            1  </td>         \n        <td width=\"80\" style=\"padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold\">RM 300.00</td>					            \n    </tr>    \n         <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Item Total:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\"> RM 300.00</td>					\n    </tr>\n        <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">IGST:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 120.00</td>					\n    </tr>\n    <!--    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Service Tax:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">?= Com::moneyFormat(round($service_tax, 2), \'\') ?></td>					\n    </tr>-->\n    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Coupon:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>                   \n    </tr>\n     <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Delivery Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 10.00</td>					\n    </tr>\n       <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Packaging Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>					\n    </tr> \n    <tr style=\"text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px\">\n        <td style=\"border-right:1px solid #1189BC;\"></td>\n        <td width=\"80\" style=\"padding:12px 15px; background:#f5af19\">Sub Total</td>\n        <td width=\"100\" style=\"padding:12px 15px; background:#f5af19; font-size:18px\">RM 435.00</td>					\n    </tr>\n    </table>\n</table>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-05-06 14:41:33', NULL),
(11, '9ijrpmvdqq15znxz', 'ramesh.m@.com', 'Order Placed', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title>Thank you for your Order!</title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                        Thank you for your Order!                                    </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                <p style=\"margin:0px 0px 10px 0px;\">Dear <b>Ramesh</b>, </p>\n<p style=\"margin:0px 0px 5px 0px;\">Thank you for placing order at\n    <b style=\"color:#000\">Portland</b>.\n</p>\n<p style=\"margin:0px\">Exciting to have you here. Your order has been successfully\n    placed and please allow us sometime to confirm your order.\n</p>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" style=\"background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;\">\n    <tr>\n        <th colspan=\"3\" style=\"padding:15px 15px 0px 15px; text-align:left; \n            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase\">\n             Order Information:  \n        </th>\n   </tr>\n   <tr>\n        <td>\n            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <td style=\"padding:15px; text-align:left;\">\n                        <p style=\"margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Order ID</p>\n                        <b style=\"font-size:15px; font-weight:bold\">0000017</b>\n                </td>\n                <td style=\"padding:15px 0px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Date Added</p>\n                        <b style=\"font-size:15px; font-weight:bold\">2020-05-16 17:21:04</b>\n                </td>\n                <td style=\"padding:15px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Payment Method</p>\n                        <b style=\"font-size:15px; font-weight:bold\"> Cash On Delivery </b>\n                </td>\n            </table>\n        </td>\n    </tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" \n    style=\"margin-bottom:20px; border-top: 1px solid #d3d4d8;\">\n    <tr>\n        <td>\n        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <thead>\n                    <th colspan=\"3\" style=\"padding:10px 15px 10px 15px;\n                        text-align:left; color:#1189BC; font-size:14px;\n                        font-weight:600; text-transform:uppercase;\n                        background-color:#fff; border-left: 1px solid #d3d4d8;\n                        border-right: 1px solid #d3d4d8;\">\n                        Order Detail:\n                    </th>							   \n                </thead>\n        </table>\n        </td>\n    </tr>\n    \n    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" >\n    <tr>\n        <thead style=\"background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold\">\n            <th style=\"padding:10px 15px; text-align:left;\">Product</th>\n            <th style=\"padding:10px 0px; text-align:center;\">Qty</th>\n            <th style=\"padding:10px 15px; text-align:right\">Price</th>\n        </thead>\n    </tr>\n     \n    <tr style=\"background:#fff;\">\n        <td style=\"padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;\">             \n            <p style=\"margin:0; font-weight:bold\">Product Name</p>\n            <p style=\"margin:0px; color:#666; font-size:12px\">\n                <span style=\"margin:5px 5px 0px 0px\">mat testing-<b style=\"color:#333;\">RM 300.00</b></span>\n            </p>          \n        </td>  \n        <td width=\"50\" style=\"padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold\">         \n            1  </td>         \n        <td width=\"80\" style=\"padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold\">RM 300.00</td>					            \n    </tr>    \n         <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Item Total:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\"> RM 300.00</td>					\n    </tr>\n        <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">IGST:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 120.00</td>					\n    </tr>\n    <!--    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Service Tax:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">?= Com::moneyFormat(round($service_tax, 2), \'\') ?></td>					\n    </tr>-->\n    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Coupon:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>                   \n    </tr>\n     <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Delivery Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>					\n    </tr>\n       <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Packaging Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>					\n    </tr> \n    <tr style=\"text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px\">\n        <td style=\"border-right:1px solid #1189BC;\"></td>\n        <td width=\"80\" style=\"padding:12px 15px; background:#f5af19\">Sub Total</td>\n        <td width=\"100\" style=\"padding:12px 15px; background:#f5af19; font-size:18px\">RM 420.00</td>					\n    </tr>\n    </table>\n</table>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-05-16 17:21:06', NULL),
(12, 'mjwg13nfujzmexf1', 'ramesh.m@.com', 'Password Reset Link', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title></title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                                                            </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                \n<p style=\"margin:0px 0px 10px 0px;\">\n    Dear <b>Name</b>,\n</p>\n<p style=\"margin:0px 0px 5px 0px;\">\n    We have received your forgot password\n    request.<b\n    style=\"color:#000; font-size:15px\"><a href= http://localhost:1030/app/vendor/password-reset?resetToken=hgVlOBxE19rNTxWtlXss_z-OpztVYHPK_1589631868> Click Here </a></b>.\n    to reset your password.\n</p>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-05-16 17:54:28', NULL);
INSERT INTO `email_queue` (`email_queue_id`, `email_queue_key`, `to_address`, `subject`, `content`, `status`, `created_at`, `modified_at`) VALUES
(13, 'jxupw1itg7qwon1n', 'ramesh.m@.com', 'Order Placed', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title>Thank you for your Order!</title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                        Thank you for your Order!                                    </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                <p style=\"margin:0px 0px 10px 0px;\">Dear <b>Ramesh</b>, </p>\n<p style=\"margin:0px 0px 5px 0px;\">Thank you for placing order at\n    <b style=\"color:#000\">Portland</b>.\n</p>\n<p style=\"margin:0px\">Exciting to have you here. Your order has been successfully\n    placed and please allow us sometime to confirm your order.\n</p>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" style=\"background-color:#fff; margin-bottom:20px; border: 1px solid #d3d4d8;\">\n    <tr>\n        <th colspan=\"3\" style=\"padding:15px 15px 0px 15px; text-align:left; \n            color:#1189BC; font-size:14px; font-weight:600; text-transform:uppercase\">\n             Order Information:  \n        </th>\n   </tr>\n   <tr>\n        <td>\n            <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <td style=\"padding:15px; text-align:left;\">\n                        <p style=\"margin:0px 0px 4px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Order ID</p>\n                        <b style=\"font-size:15px; font-weight:bold\">0000019</b>\n                </td>\n                <td style=\"padding:15px 0px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Date Added</p>\n                        <b style=\"font-size:15px; font-weight:bold\">2020-05-16 19:27:20</b>\n                </td>\n                <td style=\"padding:15px; text-align:right\">\n                        <p style=\"margin:0px 0px 5px 0px; text-transform:uppercase; color:#7d7d7d; font-size:12px\">Payment Method</p>\n                        <b style=\"font-size:15px; font-weight:bold\"> Cash On Delivery </b>\n                </td>\n            </table>\n        </td>\n    </tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" \n    style=\"margin-bottom:20px; border-top: 1px solid #d3d4d8;\">\n    <tr>\n        <td>\n        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                <thead>\n                    <th colspan=\"3\" style=\"padding:10px 15px 10px 15px;\n                        text-align:left; color:#1189BC; font-size:14px;\n                        font-weight:600; text-transform:uppercase;\n                        background-color:#fff; border-left: 1px solid #d3d4d8;\n                        border-right: 1px solid #d3d4d8;\">\n                        Order Detail:\n                    </th>							   \n                </thead>\n        </table>\n        </td>\n    </tr>\n    \n    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" >\n    <tr>\n        <thead style=\"background:#e1e2e4; text-transform:uppercase; font-size:12px; font-weight:bold\">\n            <th style=\"padding:10px 15px; text-align:left;\">Product</th>\n            <th style=\"padding:10px 0px; text-align:center;\">Qty</th>\n            <th style=\"padding:10px 15px; text-align:right\">Price</th>\n        </thead>\n    </tr>\n     \n    <tr style=\"background:#fff;\">\n        <td style=\"padding:12px 15px; border-bottom:1px solid #e1e2e4; border-left:1px solid #d3d4d8;\">             \n            <p style=\"margin:0; font-weight:bold\">Product Name</p>\n            <p style=\"margin:0px; color:#666; font-size:12px\">\n                <span style=\"margin:5px 5px 0px 0px\">mat testing-<b style=\"color:#333;\">RM 300.00</b></span>\n            </p>          \n        </td>  \n        <td width=\"50\" style=\"padding:12px 0px; text-align:center; border-bottom:1px solid #e1e2e4; vertical-align:top; font-weight:bold\">         \n            1  </td>         \n        <td width=\"80\" style=\"padding:12px 15px; text-align:right; border-bottom:1px solid #e1e2e4; border-right:1px solid #d3d4d8; vertical-align:top; font-weight:bold\">RM 300.00</td>					            \n    </tr>    \n         <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Item Total:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\"> RM 300.00</td>					\n    </tr>\n        <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">IGST:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 120.00</td>					\n    </tr>\n    <!--    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Service Tax:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">?= Com::moneyFormat(round($service_tax, 2), \'\') ?></td>					\n    </tr>-->\n    <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Coupon:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>                   \n    </tr>\n     <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Delivery Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>					\n    </tr>\n       <tr style=\"text-align:right; font-weight:500; text-transform:uppercase;\">\n        <td style=\"border-right:1px solid #d3d4d8;\"></td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; background:#e6e7ea; font-size:12px\">Packaging Fee:</td>\n        <td width=\"80\" style=\"padding:8px 15px; border-bottom:1px solid #d3d4d8; border-right:1px solid #d3d4d8; background:#e6e7ea; font-weight:bold\">RM 0.00</td>					\n    </tr> \n    <tr style=\"text-align:right; font-weight:500; color:#fff; text-transform:uppercase; font-size:13px\">\n        <td style=\"border-right:1px solid #1189BC;\"></td>\n        <td width=\"80\" style=\"padding:12px 15px; background:#f5af19\">Sub Total</td>\n        <td width=\"100\" style=\"padding:12px 15px; background:#f5af19; font-size:18px\">RM 420.00</td>					\n    </tr>\n    </table>\n</table>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-05-16 19:27:23', NULL),
(14, '6foyhi4jn0g3pdhd', 'ramesh.m@.com', 'Password Reset Link', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title></title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                                                            </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                \n<p style=\"margin:0px 0px 10px 0px;\">\n    Dear <b>Ramesh</b>,\n</p>\n<p style=\"margin:0px 0px 5px 0px;\">\n    We have received your forgot password\n    request.<b\n    style=\"color:#000; font-size:15px\"><a href= http://localhost:1030/user/reset-password?reset_token=ywGVwKgVUSnDxoEAs8rS6XOHTdGnxGRC_1589892656> Click Here </a></b>.\n    to reset your password.\n</p>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-05-19 18:20:57', NULL),
(15, 'c9ytlalosi3rzdwp', 'ramesh.m@.com', 'Password Reset Link', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n    <title></title>\n    <style>\n        b {\n            font-weight: 600\n        }\n    </style>\n    </head>\n<body style=\"background:#e6e7ea\">\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n       style=\"padding:25px 15px; font-family: arial; font-size:13px; color:#333; line-height:20px;\">\n    <tbody>\n    <tr>\n        <td width=\"100%\" valign=\"top\">\n            <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\"\n                   style=\"max-width:600px; margin:0 auto; width: 100%;\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"padding-bottom:10px\">\n                        <a><img src=\"http://localhost:1030/uploads/site-images/1588054035uK7d3.png\" width=\"90\" alt=\"\" style=\"border-radius:4px\"></a>                    </td>\n                </tr>\n                <tr>\n                    <td>\n                        <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                               style=\"box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.15); border-top-left-radius:8px; border-top-right-radius:8px\">\n                            <tbody>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-top-left-radius:8px; border-top-right-radius:8px\">\n                                    <h1 style=\"margin:0px; line-height:normal; font-weight:normal; font-size:20px\">\n                                                                            </h1>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td>\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\" align=\"center\"\n                                           style=\"background-color:#ffffff; border-left: 1px solid #c1c2c7; border-right: 1px solid #c1c2c7;\">\n                                        <tbody>\n                                        <tr>\n                                            <td style=\"padding:20px 20px 15px 20px;\">\n                                                \n<p style=\"margin:0px 0px 10px 0px;\">\n    Dear <b>Name</b>,\n</p>\n<p style=\"margin:0px 0px 5px 0px;\">\n    We have received your forgot password\n    request.<b\n    style=\"color:#000; font-size:15px\"><a href= http://localhost:1030/api/v1/../../app/vendor/password-reset?resetToken=Zog3d4XZM3IUmYU8cXVgJnefHZKN5VSN_1589976998> Click Here </a></b>.\n    to reset your password.\n</p>                                            </td>\n                                        </tr>\n                                        </tbody>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td valign=\"middle\"\n                                    style=\"background-color:#f15247; color:#fff; padding:15px 20px; border-bottom-left-radius:8px; border-bottom-right-radius:8px\">\n                                    <table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n                                        <td>\n                                            <span style=\"font-weight:300; font-size:13px\">\n                                                Best Regards,</span>\n                                            <br>The Portland Team.\n                                        </td>\n                                        <td style=\"text-align:right; padding-left:15px;\">\n                                            <span style=\"font-weight:300; font-size:13px\">For more information</span><br>\n                                            <a style=\"color:#fff; text-decoration:none\">\n                                                sales@.com                                            </a>\n                                        </td>\n                                    </table>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                                <tr>\n                    <td valign=\"middle\"\n                        style=\"padding:0px 20px 20px 0px; text-align:center; color:#666; font-size:13px\">\n                        <p style=\"margin:0px 0px 15px 0px\">\n                            Questions? The <b>Portland</b> team is always here to help.\n                            <br>Contact <b>sales@.com</b> and we&apos;ll get back to you soon.\n                        </p>\n                        &copy; 2020 Portland. All rights reserved.\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n</table>\n\n</body>\n</html>\n', 1, '2020-05-20 17:46:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enquiry_id` bigint(20) NOT NULL,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `mobile_number` bigint(16) DEFAULT NULL,
  `message` text,
  `subject` varchar(250) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`enquiry_id`, `first_name`, `last_name`, `email`, `mobile_number`, `message`, `subject`, `company_name`, `created_at`, `updated_at`) VALUES
(1, 'ram', 'hj', 'ramesh.m@.com', 9797979797, 'dfsdfsdsd', 'dsds', NULL, '2020-05-21 19:37:11', '2020-05-21 19:37:11'),
(2, 'ram', NULL, 'ramesh.m@.com', 9797979797, 'dfsdfsdsd', '', NULL, '2020-05-21 19:38:00', '2020-05-21 19:38:00'),
(3, 'ram', NULL, 'ramesh.m@.com', 9797979797, 'dfsdfsdsd', 'dsds', NULL, '2020-05-21 19:38:47', '2020-05-21 19:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` bigint(20) NOT NULL,
  `faq_key` varchar(45) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_no` smallint(6) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_user_id` bigint(20) NOT NULL,
  `modified_at` datetime NOT NULL,
  `modified_user_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `faq_key`, `status`, `sort_no`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`) VALUES
(1, 'bj4giyqkzarsjqdg', 1, 1, '2020-04-28 13:16:21', 1, '0000-00-00 00:00:00', 0),
(2, 'ertx2hhjaecvduhu', 1, 2, '2020-05-06 14:44:33', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faq_lang`
--

CREATE TABLE `faq_lang` (
  `faq_lang_id` bigint(20) NOT NULL,
  `faq_id` bigint(20) NOT NULL,
  `language_code` varchar(8) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faq_lang`
--

INSERT INTO `faq_lang` (`faq_lang_id`, `faq_id`, `language_code`, `question`, `answer`) VALUES
(1, 1, 'en', 'Test', '<p>tTest</p>\r\n'),
(2, 2, 'en', 'dsd', '<p>sdsd</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `ingredient_id` bigint(20) NOT NULL,
  `ingredient_key` varchar(16) DEFAULT NULL,
  `sort_no` int(11) DEFAULT NULL,
  `ingredient_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 -Deleted',
  `ingredient_type` tinyint(1) DEFAULT NULL COMMENT '1-Modifier, 2-Others',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `user_type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`ingredient_id`, `ingredient_key`, `sort_no`, `ingredient_status`, `ingredient_type`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`, `user_type`) VALUES
(1, 'zitntjj4r2bphec2', NULL, 1, 1, '2018-08-01 17:39:50', 1, NULL, NULL, 1),
(2, '8eoizkff86ptnz2r', NULL, 1, 1, '2018-08-01 17:40:18', 1, NULL, NULL, 1),
(3, '5mjr8tj8v2dkz1kn', NULL, 1, 1, '2018-08-01 17:40:52', 1, NULL, NULL, 1),
(4, 'ogahtmx1e64zqxac', NULL, 3, NULL, '2018-08-27 16:02:38', 1, NULL, NULL, NULL),
(5, '1nc6c0l98lmnlwbo', 1, 3, 1, '2018-08-28 12:28:35', 1, NULL, NULL, 1),
(6, 'brfqa9ohanca5cwh', 12, 3, 1, '2018-09-03 11:30:48', 1, NULL, NULL, NULL),
(7, 'p5orqudf4rl9uxfv', NULL, 3, 2, '2018-09-03 17:35:10', 1, NULL, NULL, NULL),
(8, 'f6ndwvmabxsg5zqd', NULL, 3, 2, '2018-09-03 17:36:03', 1, NULL, NULL, NULL),
(9, 'fo83cskmeccyksso', 0, 1, 1, '2018-09-03 17:37:29', 1, NULL, NULL, 1),
(10, 'tkmogiss18naija6', NULL, 1, 1, '2018-09-05 10:42:21', 1, NULL, NULL, 1),
(11, '6xdxyxt8gzqkghs4', NULL, 3, 1, '2018-09-17 12:50:41', 3, NULL, NULL, NULL),
(12, '93gtojyrvlgjoz4g', 1, 1, 1, '2018-12-07 08:48:40', 1, NULL, NULL, 1),
(13, 'z2mldtqbbvrb6zzd', 1, 1, 1, '2019-01-07 05:57:42', 3, NULL, NULL, 1),
(14, 'heayna9zntoy0ui9', 10, 1, 1, '2019-02-14 10:35:14', 1, NULL, NULL, 1),
(15, 'batcscyiizajpydi', 10, 1, 1, '2019-02-28 14:41:17', 1, NULL, NULL, 1),
(16, '510nxuygsc7nvyf1', 2, 1, 1, '2019-03-15 08:17:39', 1, NULL, NULL, 1),
(17, 'czrn6uvbdfvqe2pz', 12, 1, 1, '2019-03-15 12:48:26', 1, NULL, NULL, 1),
(18, 'maqelj55dmk99hhq', 10, 1, 1, '2019-05-09 14:30:54', 1, NULL, NULL, 1),
(19, 'gjwyzaejhfegi2vd', 10, 1, 1, '2019-05-09 14:31:05', 1, NULL, NULL, 1),
(20, 'jlxrribxjvmxc0lh', 10, 1, 1, '2019-05-09 14:31:17', 1, NULL, NULL, 1),
(21, 't3ikehvwlnfabhzq', 10, 1, 1, '2019-05-09 14:31:30', 1, NULL, NULL, 1),
(22, 'umxsjllvhgpgtpvv', 42, 1, 1, '2019-05-09 14:31:47', 1, NULL, NULL, 1),
(23, 'cd2umm7rkdzi6wzr', 1, 1, 1, '2020-03-31 11:01:22', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_lang`
--

CREATE TABLE `ingredient_lang` (
  `ingredient_lang_id` bigint(20) NOT NULL,
  `ingredient_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `ingredient_name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingredient_lang`
--

INSERT INTO `ingredient_lang` (`ingredient_lang_id`, `ingredient_id`, `language_code`, `ingredient_name`) VALUES
(1, 1, 'en', 'Sweeteners'),
(2, 2, 'en', 'Preservatives'),
(3, 3, 'en', 'Colors'),
(4, 4, 'en', 'Test'),
(5, 5, 'en', 'testing'),
(6, 6, 'en', 'test 234'),
(7, 7, 'en', 'testing'),
(8, 8, 'en', 'Sauce'),
(9, 9, 'en', 'Sauce'),
(10, 10, 'en', 'Curd Raita'),
(11, 9, 'no', 'Saus'),
(12, 11, 'en', 'sdgdsgd'),
(13, 11, 'no', 'dsdsg'),
(14, 5, 'no', 'testing'),
(15, 1, 'no', 'søtningsmidler'),
(16, 2, 'no', 'konserverings'),
(17, 12, 'en', 'ass'),
(18, 13, 'en', 'Veg soup en'),
(19, 13, 'no', 'Veg soup ne'),
(20, 13, 'ar', 'حساء الخضار en'),
(21, 5, 'ar', 'اختبارات'),
(22, 1, 'ar', 'المحليات'),
(23, 9, 'ar', 'صلصة'),
(24, 2, 'ar', 'مواد حافظة'),
(25, 10, 'no', 'Curd Raita'),
(26, 10, 'ar', 'الرائب ريتا'),
(27, 3, 'no', 'Colors'),
(28, 3, 'ar', 'الألوان'),
(29, 12, 'no', 'ass'),
(30, 12, 'ar', 'حمار'),
(31, 14, 'en', 'test'),
(32, 14, 'no', 'test'),
(33, 14, 'ar', 'test'),
(34, 15, 'en', 'test10'),
(35, 15, 'no', 'retert'),
(36, 15, 'ar', 'retret'),
(37, 16, 'en', 'salsa macroni'),
(38, 16, 'no', 'salsa macroni'),
(39, 16, 'ar', 'salsa macroni'),
(40, 17, 'en', 'test ingredient'),
(41, 17, 'no', 'test ingredient'),
(42, 17, 'ar', 'test ingredient'),
(43, 18, 'en', 't1'),
(44, 18, 'no', 'regre'),
(45, 18, 'ar', 'trhrth'),
(46, 19, 'en', 't2'),
(47, 19, 'no', 't2'),
(48, 19, 'ar', 'regrg'),
(49, 20, 'en', 't3'),
(50, 20, 'no', 't4'),
(51, 20, 'ar', 't4'),
(52, 21, 'en', 't5'),
(53, 21, 'no', 't5'),
(54, 21, 'ar', 't5'),
(55, 22, 'en', 't4'),
(56, 22, 'no', '4242'),
(57, 22, 'ar', '4242'),
(58, 23, 'en', 'Cashew');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` bigint(20) NOT NULL,
  `item_key` varchar(16) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `sub_category_id` bigint(20) DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `unit_id` bigint(20) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `cuisine_id` bigint(20) DEFAULT NULL,
  `actual_price` double NOT NULL DEFAULT '0',
  `item_price` double DEFAULT NULL,
  `item_status` tinyint(1) DEFAULT NULL,
  `sort_no` smallint(6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `is_recommended` tinyint(1) DEFAULT NULL COMMENT '0 - No, 1 -Yes',
  `package_price` double DEFAULT NULL,
  `item_approved_status` tinyint(1) DEFAULT NULL,
  `loyality_point` bigint(20) DEFAULT NULL,
  `minimum_order_qty` bigint(20) DEFAULT NULL,
  `fat` decimal(3,2) DEFAULT NULL,
  `sugar` decimal(3,2) DEFAULT NULL,
  `protein` decimal(3,2) DEFAULT NULL,
  `salt` decimal(3,2) DEFAULT NULL,
  `carbohydrates` decimal(3,2) DEFAULT NULL,
  `dietary_fiber` decimal(3,2) DEFAULT NULL,
  `minerals` decimal(3,2) DEFAULT NULL,
  `calories` decimal(3,2) DEFAULT NULL,
  `vitamins` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_key`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `vendor_id`, `branch_id`, `cuisine_id`, `actual_price`, `item_price`, `item_status`, `sort_no`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`, `is_recommended`, `package_price`, `item_approved_status`, `loyality_point`, `minimum_order_qty`, `fat`, `sugar`, `protein`, `salt`, `carbohydrates`, `dietary_fiber`, `minerals`, `calories`, `vitamins`) VALUES
(1, 'ouhtvrfhj9ta8aia', 1, 4, 40, 4, 4, NULL, NULL, 0, NULL, 1, 1, '2020-06-09 09:49:14', 1, NULL, NULL, NULL, NULL, 0, 0, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(2, 'uxjvckqg15akhb6n', 1, 4, 40, 4, 9, NULL, NULL, 0, NULL, 1, 1, '2020-06-09 09:49:14', 1, NULL, NULL, NULL, NULL, 0, 0, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(3, 'y5e5kzncaovvkfau', 1, 4, 40, 4, 2, NULL, NULL, 0, NULL, 1, 1, '2020-06-09 09:52:18', 1, NULL, NULL, NULL, NULL, 1, 1, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(4, 'odlmkcyov7eyzgwx', 1, 4, 40, 4, 4, NULL, NULL, 0, NULL, 1, 1, '2020-06-09 09:52:18', 1, NULL, NULL, NULL, NULL, 1, 1, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(5, 'cko22mwzzbztbefq', 1, 4, 40, 4, 7, NULL, NULL, 0, NULL, 1, 1, '2020-06-09 09:52:19', 1, NULL, NULL, NULL, NULL, 1, 1, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(6, '3x89r6hhck4jf9ud', 1, 4, 28, 4, 1, NULL, NULL, 0, NULL, 1, 1, '2020-06-09 09:53:24', 1, NULL, NULL, NULL, NULL, 0, 1, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(7, 'uz3msypniq5coro8', 1, 4, 28, 4, 3, NULL, NULL, 0, NULL, 1, 1, '2020-06-09 09:53:25', 1, NULL, NULL, NULL, NULL, 0, 1, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(8, '7y9l5qlvokpswaqg', 1, 4, 40, 4, 2, NULL, NULL, 0, NULL, 1, 1, '2020-06-09 09:55:23', 1, NULL, NULL, NULL, NULL, 1, 1, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00'),
(9, 'kpxq00cb1iyrgzgu', 1, 4, 40, 4, 4, NULL, NULL, 0, NULL, 1, 1, '2020-06-09 09:55:24', 1, NULL, NULL, NULL, NULL, 1, 1, 1, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `item_image`
--

CREATE TABLE `item_image` (
  `item_image_id` bigint(20) NOT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `item_image_path` varchar(256) DEFAULT NULL,
  `sort_no` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_image`
--

INSERT INTO `item_image` (`item_image_id`, `item_id`, `language_code`, `item_image_path`, `sort_no`) VALUES
(1, 1, 'en', '/uploads/items/1591676354OSapl.png', NULL),
(2, 2, 'en', '/uploads/items/1591676354iYNA8.png', NULL),
(3, 3, 'en', '/uploads/items/1591676538DyoIS.png', NULL),
(4, 4, 'en', '/uploads/items/1591676539CC5D3.png', NULL),
(5, 5, 'en', '/uploads/items/1591676539p4sGv.png', NULL),
(6, 6, 'en', '/uploads/items/1591676605uXEZN.png', NULL),
(7, 7, 'en', '/uploads/items/1591676605t4oKI.png', NULL),
(8, 8, 'en', '/uploads/items/1591676724htj2h.png', NULL),
(9, 9, 'en', '/uploads/items/1591676724htj2h.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_ingredient_group`
--

CREATE TABLE `item_ingredient_group` (
  `item_ingredient_group_id` bigint(20) NOT NULL,
  `item_ingredient_group_key` varchar(16) DEFAULT NULL,
  `sort_no` int(11) NOT NULL DEFAULT '0',
  `ingredient_type` tinyint(1) DEFAULT NULL COMMENT '1 - Modifiers, 2 -Others',
  `minimum` smallint(6) DEFAULT NULL,
  `maximum` smallint(6) DEFAULT NULL,
  `item_ingredient_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_ingredient_group`
--

INSERT INTO `item_ingredient_group` (`item_ingredient_group_id`, `item_ingredient_group_key`, `sort_no`, `ingredient_type`, `minimum`, `maximum`, `item_ingredient_status`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`) VALUES
(1, 'xtd30vbv1nuqufcz', 0, 1, 1, 1, 1, '2018-08-01 17:50:23', 1, NULL, NULL),
(2, 'bkuzhwewng4ujnot', 1, 2, 1, 2, 3, '2018-09-05 10:34:06', 1, NULL, NULL),
(3, 'ttgktjgwwwzktrbr', 1, 1, 1, 3, 1, '2018-09-05 10:43:20', 1, NULL, NULL),
(4, 'axcceqxrxsskikpv', 1, 2, 0, 2, 1, '2018-09-12 10:41:51', 1, NULL, NULL),
(5, 'j29szawiunhyak8i', 1, 2, 1, 2, 3, '2018-09-17 12:51:43', 3, NULL, NULL),
(6, 'l709zeupcewnuroh', 23, 1, 1, 2, 1, '2018-09-17 18:44:33', 1, NULL, NULL),
(7, 'wnubxzblepoxama9', 1, 2, 1, 1, 1, '2019-01-07 05:59:53', 3, NULL, NULL),
(8, '4qhuvkvph7eoxhsb', 10, 1, 1, 1, 1, '2019-03-05 11:30:02', 1, NULL, NULL),
(9, 'ftkvqkhh8vlfk6gy', 424, 1, 1, 2, 1, '2019-05-09 14:32:15', 1, NULL, NULL),
(10, 'rq9st8eundxev82y', 10, 1, 1, 2, 1, '2019-05-09 14:32:44', 1, NULL, NULL),
(11, '9d7f1qv0kmfj50rb', 2, 2, 2, 1, 1, '2020-03-27 14:17:06', 1, NULL, NULL),
(12, 'lyogafjteb7djgfj', 1, 1, 10, 11, 1, '2020-03-31 11:03:49', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_ingredient_group_lang`
--

CREATE TABLE `item_ingredient_group_lang` (
  `item_ingredient_group_lang_id` bigint(20) NOT NULL,
  `item_ingredient_group_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `group_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_ingredient_group_lang`
--

INSERT INTO `item_ingredient_group_lang` (`item_ingredient_group_lang_id`, `item_ingredient_group_id`, `language_code`, `group_name`) VALUES
(1, 1, 'en', 'Toppings'),
(2, 2, 'en', 'Sauce group'),
(3, 3, 'en', 'Raita'),
(4, 2, 'no', 'Saus gruppe'),
(5, 4, 'en', 'Mayonnaise'),
(6, 4, 'no', 'Majones'),
(7, 5, 'en', 'ytyiy'),
(8, 5, 'no', 'ytii'),
(9, 6, 'en', 'test'),
(10, 6, 'no', 'test'),
(11, 7, 'en', 'soup'),
(12, 7, 'no', 'soup'),
(13, 7, 'ar', 'حساء'),
(14, 4, 'ar', 'مايونيز'),
(15, 3, 'no', 'Raita'),
(16, 3, 'ar', 'ريتا'),
(17, 2, 'ar', 'مجموعة صلصة'),
(18, 6, 'ar', 'اختبار'),
(19, 1, 'no', 'Toppings'),
(20, 1, 'ar', 'الطبقة'),
(21, 8, 'en', 'test1'),
(22, 8, 'no', 'rgrg'),
(23, 8, 'ar', 'rg'),
(24, 9, 'en', 't1'),
(25, 9, 'no', 't1'),
(26, 9, 'ar', 't1'),
(27, 10, 'en', 't2'),
(28, 10, 'no', 'greg'),
(29, 10, 'ar', 'erg'),
(30, 11, 'en', 'tg'),
(31, 12, 'en', 'Sweets');

-- --------------------------------------------------------

--
-- Table structure for table `item_ingredient_mapping`
--

CREATE TABLE `item_ingredient_mapping` (
  `item_ingredient_mapping_id` bigint(20) NOT NULL,
  `item_ingredient_group_id` bigint(20) DEFAULT NULL,
  `ingredient_id` bigint(20) DEFAULT NULL,
  `default_status` tinyint(1) DEFAULT NULL COMMENT '1 - Not Default, 2 - Default',
  `price` double DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_ingredient_mapping`
--

INSERT INTO `item_ingredient_mapping` (`item_ingredient_mapping_id`, `item_ingredient_group_id`, `ingredient_id`, `default_status`, `price`, `status`) VALUES
(27, 5, 9, 0, 0, NULL),
(28, 5, 5, 0, 0, NULL),
(29, 5, 1, 0, 0, NULL),
(41, 3, 10, 1, 5, NULL),
(42, 2, 2, 1, 0, NULL),
(43, 2, 1, 1, 0, NULL),
(44, 2, 3, 1, 0, NULL),
(45, 7, 9, 1, 10, NULL),
(46, 7, 1, 1, 11, NULL),
(49, 1, 2, 1, 1, NULL),
(50, 8, 14, 0, 0, NULL),
(51, 6, 10, 1, 0, NULL),
(52, 6, 5, 1, 0, NULL),
(53, 9, 18, 0, 0, NULL),
(54, 9, 19, 0, 0, NULL),
(55, 9, 20, 0, 0, NULL),
(56, 10, 21, 0, 0, NULL),
(57, 10, 22, 0, 0, NULL),
(58, 10, 20, 0, 0, NULL),
(59, 4, 1, 1, 1, NULL),
(60, 4, 5, 1, 2, NULL),
(61, 4, 2, 1, 3, NULL),
(62, 11, 22, 0, 0, NULL),
(66, 12, 23, 1, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_lang`
--

CREATE TABLE `item_lang` (
  `item_lang_id` bigint(20) NOT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `item_name` varchar(256) DEFAULT NULL,
  `short_desc` text,
  `item_description` text,
  `allergic_ingredients` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_lang`
--

INSERT INTO `item_lang` (`item_lang_id`, `item_id`, `language_code`, `item_name`, `short_desc`, `item_description`, `allergic_ingredients`) VALUES
(1, 1, 'en', 'b', 'g', 'a', NULL),
(2, 2, 'en', 'b', 'g', 'a', NULL),
(3, 3, 'en', 'c', 'c', 'c', NULL),
(4, 4, 'en', 'c', 'c', 'c', NULL),
(5, 5, 'en', 'c', 'c', 'c', NULL),
(6, 6, 'en', 'vv', 'vv', 'v', NULL),
(7, 7, 'en', 'vv', 'vv', 'v', NULL),
(8, 8, 'en', 'd', 'd', 'd', NULL),
(9, 9, 'en', 'd', 'd', 'd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_mapping`
--

CREATE TABLE `item_mapping` (
  `item_mapping_id` bigint(20) NOT NULL,
  `item_mapping_key` varchar(16) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `item_mapping_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_mapping`
--

INSERT INTO `item_mapping` (`item_mapping_id`, `item_mapping_key`, `item_id`, `item_mapping_status`, `created_at`, `created_user_id`, `updated_at`, `updated_user_id`) VALUES
(1, 'cojnkzf8kdubphwo', 12, 1, '2018-08-22 10:42:06', 1, '2019-08-16 12:37:43', 1),
(2, 'ewplaqagnhu0stvc', 6, 1, '2018-09-05 10:41:12', 1, '2018-09-19 13:32:27', 1),
(3, 'cb5yxit1fm5tnxfh', 5, 1, '2018-09-05 10:43:41', 1, '2018-09-19 13:33:38', 1),
(4, 'o4j7xnkrzdyouvpw', 5, 3, '2018-09-05 10:45:46', 1, '2018-09-05 10:45:51', 1),
(5, 'j65sm0mc9kzyybzb', 1, 1, '2018-09-17 18:45:40', 1, '2018-09-17 18:45:40', 1),
(6, 'iljithoxystuhjkm', 9, 1, '2018-10-04 08:56:06', 1, '2018-10-04 08:56:06', 1),
(7, 'sfxv4thusycdxlct', 6, 1, '2019-01-07 06:15:55', 3, '2019-01-07 06:16:02', 3),
(8, 'meftjhreraqqjhpi', 8, 1, '2019-02-19 18:42:54', 1, '2019-02-19 18:42:54', 1),
(9, 'byip0k9q2nkkkjps', 15, 3, '2019-03-05 11:46:03', 1, '2020-03-31 11:20:53', 1),
(10, 'w7xvha8y6ufygqdy', 23, 1, '2019-05-09 14:33:27', 1, '2019-05-09 14:33:27', 1),
(11, '4ddlidjzos2gq6bb', 19, 1, '2020-03-27 14:16:00', 1, '2020-03-27 14:16:00', 1),
(12, 'l8b6stkcv9j3b0qf', 45, 1, '2020-03-31 11:20:44', 1, '2020-03-31 11:20:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_mapping_group`
--

CREATE TABLE `item_mapping_group` (
  `item_mapping_group_id` bigint(20) NOT NULL,
  `item_mapping_id` bigint(20) DEFAULT NULL,
  `item_ingredient_group_id` bigint(20) DEFAULT NULL,
  `mapping_type` tinyint(1) DEFAULT NULL COMMENT '1 - Modifiers, 2 - Ingrident',
  `is_drink` tinyint(1) DEFAULT NULL COMMENT '0 - No, 1- Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_mapping_group`
--

INSERT INTO `item_mapping_group` (`item_mapping_group_id`, `item_mapping_id`, `item_ingredient_group_id`, `mapping_type`, `is_drink`) VALUES
(6, 4, 3, 2, 0),
(18, 5, 6, 2, 0),
(19, 5, 2, 2, 0),
(20, 2, 4, 2, 0),
(21, 2, 2, 2, 0),
(22, 2, 1, 2, 0),
(24, 3, 3, 2, 0),
(25, 6, 4, 2, 0),
(26, 6, 1, 2, 0),
(27, 7, 7, 2, 0),
(28, 7, 4, 2, 0),
(29, 7, 1, 2, 0),
(30, 8, 7, 2, 0),
(31, 8, 4, 2, 0),
(32, 8, 3, 2, 0),
(33, 8, 1, 2, 0),
(36, 9, 8, 2, 0),
(37, 10, 9, 2, 0),
(38, 10, 10, 2, 0),
(40, 1, 6, 2, 0),
(41, 1, 4, 2, 0),
(42, 11, 8, 2, 0),
(43, 12, 12, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE `item_type` (
  `item_type_id` bigint(20) NOT NULL,
  `item_type_key` varchar(16) DEFAULT NULL,
  `item_type_status` smallint(1) DEFAULT NULL COMMENT '2- Inactive, 1 - Active',
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_user_id` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`item_type_id`, `item_type_key`, `item_type_status`, `created_user_id`, `created_at`, `updated_user_id`, `updated_at`) VALUES
(1, 'xnhgibmshdxs5aqj', 3, 1, '2018-08-22 10:38:46', 1, '2020-04-28 15:41:13'),
(2, 'rennfewjhn5ieiug', 1, 1, '2018-08-31 13:30:04', 1, '2018-08-31 13:30:04'),
(3, 'dtyr1w6pqwv3fcmy', 1, 1, '2018-08-31 13:30:32', 1, '2018-08-31 13:30:32'),
(4, 'cinmtqdwxl4hq6ff', 1, 1, '2018-09-05 10:28:41', 3, '2018-09-14 14:49:06'),
(5, 'vwwskrvup4k2x2s4', 1, 1, '2018-09-05 10:29:06', 3, '2018-09-14 14:49:05'),
(6, 'u3ylcaqll8zgvsgh', 1, 1, '2018-09-17 18:43:37', 1, '2019-03-05 11:09:00'),
(7, '2xnrgbfap4s5eol6', 3, 1, '2019-03-05 10:54:58', 1, '2019-03-05 11:08:35'),
(8, 'ifwjxuntkmvkdlvd', 1, 1, '2019-03-05 11:08:55', 1, '2019-03-05 11:08:55'),
(9, 'daqbdbbemzhcqpbn', 1, 1, '2020-03-27 14:18:31', 1, '2020-03-27 14:18:31'),
(10, 'uooknphqqz5qiund', 1, 1, '2020-03-30 18:30:28', 1, '2020-03-30 18:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `item_type_details`
--

CREATE TABLE `item_type_details` (
  `item_type_details_id` bigint(20) NOT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `item_type_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_type_details`
--

INSERT INTO `item_type_details` (`item_type_details_id`, `item_id`, `item_type_id`) VALUES
(2, 2, 1),
(3, 3, 1),
(19, 7, 2),
(26, 11, 3),
(29, 10, 2),
(33, 4, 1),
(34, 8, 2),
(40, 6, 1),
(41, 9, 1),
(52, NULL, 2),
(53, NULL, 4),
(54, NULL, 6),
(55, 15, 2),
(57, 17, 6),
(59, 5, 3),
(75, 18, 2),
(76, 18, 3),
(80, 20, 4),
(82, 21, 1),
(86, 1, 1),
(88, 22, 1),
(89, 16, 5),
(91, 19, 3),
(92, 12, 4),
(93, 12, 5),
(94, 23, 1),
(95, 13, 2),
(96, 14, 2),
(97, 25, 1),
(98, 26, 10),
(99, 27, 10),
(100, 28, 10),
(101, 29, 10),
(102, 30, 10),
(103, 31, 10),
(104, 32, 10),
(105, 33, 10),
(106, 34, 10),
(107, 35, 10),
(108, 36, 10),
(109, 37, 10),
(110, 38, 10),
(111, 39, 10),
(112, 40, 10),
(113, 41, 10),
(114, 42, 10),
(115, 43, 10),
(116, 44, 10),
(117, 45, 10),
(118, 46, 10),
(119, 47, 1),
(120, 48, 3),
(121, 49, 8);

-- --------------------------------------------------------

--
-- Table structure for table `item_type_lang`
--

CREATE TABLE `item_type_lang` (
  `item_type_lang_id` bigint(20) NOT NULL,
  `item_type_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `item_type_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_type_lang`
--

INSERT INTO `item_type_lang` (`item_type_lang_id`, `item_type_id`, `language_code`, `item_type_name`) VALUES
(1, 1, 'en', 'Chettinadu'),
(2, 2, 'en', 'Spicy'),
(3, 3, 'en', 'South Indian'),
(4, 4, 'en', 'Chinese'),
(5, 5, 'en', 'North Indian'),
(6, 6, 'en', 'test1'),
(7, 6, 'no', 'test'),
(8, 7, 'en', 'test1'),
(9, 7, 'no', 'test1'),
(10, 7, 'ar', 'test1'),
(11, 6, 'ar', 'test1'),
(12, 8, 'en', 'test'),
(13, 8, 'no', 'tet'),
(14, 8, 'ar', 'rgrg'),
(15, 9, 'en', 'test3'),
(16, 10, 'en', 'Mexican');

-- --------------------------------------------------------

--
-- Table structure for table `item_variant`
--

CREATE TABLE `item_variant` (
  `item_variant_id` bigint(20) NOT NULL,
  `item_variant_key` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `item_variant_parent_id` bigint(20) DEFAULT NULL,
  `item_variant_price` double DEFAULT NULL,
  `item_variant_upc_code` varchar(50) CHARACTER SET utf16 DEFAULT NULL,
  `item_variant_status` tinyint(1) DEFAULT NULL COMMENT '1 -Active ,2- In active, 3- Archieved'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_variant`
--

INSERT INTO `item_variant` (`item_variant_id`, `item_variant_key`, `item_id`, `item_variant_parent_id`, `item_variant_price`, `item_variant_upc_code`, `item_variant_status`) VALUES
(1, NULL, 1, NULL, 10, NULL, 1),
(2, NULL, 2, NULL, 10, NULL, 1),
(3, NULL, 3, NULL, 20, NULL, 1),
(4, NULL, 4, NULL, 20, NULL, 1),
(5, NULL, 5, NULL, 20, NULL, 1),
(6, NULL, 6, NULL, 10, NULL, 1),
(7, NULL, 7, NULL, 10, NULL, 1),
(9, NULL, 9, NULL, 10, NULL, 1),
(10, NULL, 8, NULL, 10, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_variant_lang`
--

CREATE TABLE `item_variant_lang` (
  `item_variant_lang_id` bigint(20) NOT NULL,
  `item_variant_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `item_variant_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_variant_lang`
--

INSERT INTO `item_variant_lang` (`item_variant_lang_id`, `item_variant_id`, `language_code`, `item_variant_name`) VALUES
(1, 1, 'en', 'hj'),
(2, 2, 'en', 'hj'),
(3, 3, 'en', 'hj'),
(4, 4, 'en', 'hj'),
(5, 5, 'en', 'hj'),
(6, 6, 'en', 'gh'),
(7, 7, 'en', 'gh'),
(8, 8, 'en', 'hj'),
(9, 9, 'en', 'hj'),
(10, 10, 'en', 'hj');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` bigint(20) NOT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `language_name` varchar(64) DEFAULT NULL,
  `native_name` varchar(64) DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL COMMENT '0 - No, 1 - Yes',
  `status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_code`, `language_name`, `native_name`, `is_rtl`, `status`) VALUES
(1, 'en', 'English', 'English', 0, 1),
(2, 'no', 'Norwegian', 'norsk', 0, 2),
(3, 'ar', 'Arabic', 'عربى', 1, 2),
(4, 'as', 'as', 'as', 0, NULL),
(5, 'as', 'as', 'as', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mall_product`
--

CREATE TABLE `mall_product` (
  `mall_product_id` bigint(20) NOT NULL,
  `mall_product_key` varchar(16) DEFAULT NULL,
  `price` double DEFAULT NULL COMMENT 'in tobaogo points',
  `product_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 - Deleted',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mall_product_lang`
--

CREATE TABLE `mall_product_lang` (
  `mall_product_lang_id` bigint(20) NOT NULL,
  `mall_product_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `product_name` varchar(256) DEFAULT NULL,
  `product_description` text,
  `product_image_path` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `language` varchar(255) CHARACTER SET utf8 NOT NULL,
  `translation` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `language`, `translation`) VALUES
(1, 'ar', 'معرف سجل النشاط'),
(1, 'en', 'Activity Log ID'),
(2, 'ar', 'هوية المستخدم'),
(2, 'en', 'User ID'),
(3, 'ar', 'اسم المستخدم'),
(3, 'en', 'Username'),
(4, 'ar', 'سجل'),
(4, 'en', 'Log'),
(5, 'ar', 'العميل ايب'),
(5, 'en', 'Client Ip'),
(6, 'ar', 'عميل العميل'),
(6, 'en', 'Client Agent'),
(7, 'ar', 'منصة العميل'),
(7, 'en', 'Client Platform'),
(8, 'ar', 'أنشئت في'),
(8, 'en', 'Created At'),
(9, 'ar', 'معرف نوع العنوان'),
(9, 'en', 'Address Type ID'),
(10, 'ar', 'مفتاح نوع العنوان'),
(10, 'en', 'Address Type Key'),
(11, 'ar', 'حالة نوع العنوان'),
(11, 'en', 'Address Type Status'),
(12, 'ar', 'أنشئت في'),
(12, 'en', 'Created At'),
(13, 'ar', 'تم انشاء كود المستخدم'),
(13, 'en', 'Created User ID'),
(14, 'ar', 'تعديل في'),
(14, 'en', 'Modified At'),
(15, 'ar', 'تعديل معرف المستخدم'),
(15, 'en', 'Modified User ID'),
(16, 'ar', 'العنوان Type Lang ID'),
(16, 'en', 'Address Type Lang ID'),
(17, 'ar', 'معرف نوع العنوان'),
(17, 'en', 'Address Type ID'),
(18, 'ar', 'رمز اللغة'),
(18, 'en', 'Language Code'),
(19, 'ar', 'اسم نوع العنوان'),
(19, 'en', 'Address Type Name'),
(20, 'ar', 'معرف مستخدم المسؤول'),
(20, 'en', 'Admin User ID'),
(21, 'ar', 'مفتاح المستخدم الإداري'),
(21, 'en', 'Admin User Key'),
(22, 'ar', 'نوع المستخدم'),
(22, 'en', 'User Type'),
(23, 'ar', 'الاسم الاول'),
(23, 'en', 'First Name'),
(24, 'ar', 'الكنية'),
(24, 'en', 'Last Name'),
(25, 'ar', 'عنوان بريد الكتروني'),
(25, 'en', 'Email Address'),
(26, 'ar', 'اسم المستخدم'),
(26, 'en', 'User Name'),
(27, 'ar', 'كلمة المرور'),
(27, 'en', 'Password Hash'),
(28, 'ar', 'رمز اعادة كلمة المرور'),
(28, 'en', 'Password Reset Token'),
(29, 'ar', 'كلمة السر السرية'),
(29, 'en', 'Secret Password'),
(30, 'ar', 'الحالة'),
(30, 'en', 'Status'),
(31, 'ar', 'آخر تسجيل دخول'),
(31, 'en', 'Last Login'),
(32, 'ar', 'معرف الدور'),
(32, 'en', 'Role ID'),
(33, 'ar', 'أنشئت في'),
(33, 'en', 'Created At'),
(34, 'ar', 'تم انشاء كود المستخدم'),
(34, 'en', 'Created User ID'),
(35, 'ar', 'تعديل في'),
(35, 'en', 'Modified At'),
(36, 'ar', 'تعديل معرف المستخدم'),
(36, 'en', 'Modified User ID'),
(37, 'ar', 'معرف المنطقة'),
(37, 'en', 'Area ID'),
(38, 'ar', 'مفتاح المنطقة'),
(38, 'en', 'Area Key'),
(39, 'ar', 'معرف المدينة'),
(39, 'en', 'City ID'),
(40, 'ar', 'الحالة'),
(40, 'en', 'Status'),
(41, 'ar', 'أنشئت في'),
(41, 'en', 'Created At'),
(42, 'ar', 'تم انشاء كود المستخدم'),
(42, 'en', 'Created User ID'),
(43, 'ar', 'تعديل في'),
(43, 'en', 'Modified At'),
(44, 'ar', 'تعديل معرف المستخدم'),
(44, 'en', 'Modified User ID'),
(45, 'ar', 'منطقة لانج معرف'),
(45, 'en', 'Area Lang ID'),
(46, 'ar', 'معرف المنطقة'),
(46, 'en', 'Area ID'),
(47, 'ar', 'رمز اللغة'),
(47, 'en', 'Language Code'),
(48, 'ar', 'اسم المنطقة'),
(48, 'en', 'Area Name'),
(49, 'ar', 'معرف البانر'),
(49, 'en', 'Banner ID'),
(50, 'ar', 'مفتاح بانر'),
(50, 'en', 'Banner Key'),
(51, 'ar', 'رقم المورد'),
(51, 'en', 'Vendor ID'),
(52, 'ar', 'بانر لينك'),
(52, 'en', 'Banner Link'),
(53, 'ar', 'تم انشاء كود المستخدم'),
(53, 'en', 'Created User ID'),
(54, 'ar', 'أنشئت في'),
(54, 'en', 'Created At'),
(55, 'ar', 'تعديل معرف المستخدم'),
(55, 'en', 'Modified User ID'),
(56, 'ar', 'تعديل في'),
(56, 'en', 'Modified At'),
(57, 'ar', 'نوع البانر'),
(57, 'en', 'Banner Type'),
(58, 'ar', 'معرف المدينة'),
(58, 'en', 'City ID'),
(59, 'ar', 'بانر لانج معرف'),
(59, 'en', 'Banner Lang ID'),
(60, 'ar', 'معرف البانر'),
(60, 'en', 'Banner ID'),
(61, 'ar', 'رمز اللغة'),
(61, 'en', 'Language Code'),
(62, 'ar', 'اسم الشعار'),
(62, 'en', 'Banner Name'),
(63, 'ar', 'بانر صورة المسار'),
(63, 'en', 'Banner Image Path'),
(64, 'ar', 'معرف الفرع'),
(64, 'en', 'Branch ID'),
(65, 'ar', 'مفتاح الفرع'),
(65, 'en', 'Branch Key'),
(66, 'ar', 'رقم المورد'),
(66, 'en', 'Vendor ID'),
(67, 'ar', 'خط العرض'),
(67, 'en', 'Latitude'),
(68, 'ar', 'خط الطول'),
(68, 'en', 'Longitude'),
(69, 'ar', 'تواصل بالبريد الاكتروني'),
(69, 'en', 'Contact Email'),
(70, 'ar', 'رقم الاتصال'),
(70, 'en', 'Contact Number'),
(71, 'ar', 'اسم المستخدم'),
(71, 'en', 'Username'),
(72, 'ar', 'كلمة المرور'),
(72, 'en', 'Password Hash'),
(73, 'ar', 'سر كلمة السر'),
(73, 'en', 'Secret Password Hash'),
(74, 'ar', 'رمز اعادة كلمة المرور'),
(74, 'en', 'Password Reset Token'),
(75, 'ar', 'اختار المعاد'),
(75, 'en', 'Pickup Time'),
(76, 'ar', 'موعد التسليم'),
(76, 'en', 'Delivery Time'),
(77, 'ar', 'وقت التحضير'),
(77, 'en', 'Preparation Time'),
(78, 'ar', 'نوع الجهاز'),
(78, 'en', 'Device Type'),
(79, 'ar', 'رمز الجهاز'),
(79, 'en', 'Device Token'),
(80, 'ar', 'حالة الفرع'),
(80, 'en', 'Branch Status'),
(81, 'ar', 'الموافقة على الوضع'),
(81, 'en', 'Approve Status'),
(82, 'ar', 'خيار الدفع'),
(82, 'en', 'Payment Option'),
(83, 'ar', 'حالة توفر الفرع'),
(83, 'en', 'Branch Availability Status'),
(84, 'ar', 'تسليم الشحن قاعدة كم'),
(84, 'en', 'Delivery Charge Base Km'),
(85, 'ar', 'قاعدة شحن التوصيل'),
(85, 'en', 'Delivery Charge Base'),
(86, 'ar', 'رسوم التوصيل إضافية لكل كيلومتر'),
(86, 'en', 'Delivery Charge Additional Per Km'),
(87, 'ar', 'وقت التسليم قاعدة كم'),
(87, 'en', 'Delivery Time Base Km'),
(88, 'ar', 'قاعدة وقت التسليم'),
(88, 'en', 'Delivery Time Base'),
(89, 'ar', 'وقت التسليم إضافي لكل كيلومتر'),
(89, 'en', 'Delivery Time Additional Per Km'),
(90, 'ar', 'تقييم'),
(90, 'en', 'Rating'),
(91, 'ar', 'تم انشاء كود المستخدم'),
(91, 'en', 'Created User ID'),
(92, 'ar', 'أنشئت في'),
(92, 'en', 'Created At'),
(93, 'ar', 'تعديل معرف المستخدم'),
(93, 'en', 'Modified User ID'),
(94, 'ar', 'تعديل في'),
(94, 'en', 'Modified At'),
(95, 'ar', 'نوع الطلب'),
(95, 'en', 'Order Type'),
(96, 'ar', 'سبب مشغول'),
(96, 'en', 'Busy Reason'),
(97, 'ar', 'رقم فرع منطقة التسليم'),
(97, 'en', 'Branch Delivery Area ID'),
(98, 'ar', 'معرف الفرع'),
(98, 'en', 'Branch ID'),
(99, 'ar', 'معرف منطقة التسليم'),
(99, 'en', 'Delivery Area ID'),
(100, 'ar', 'فرع لانج معرف'),
(100, 'en', 'Branch Lang ID'),
(101, 'ar', 'معرف الفرع'),
(101, 'en', 'Branch ID'),
(102, 'ar', 'رمز اللغة'),
(102, 'en', 'Language Code'),
(103, 'ar', 'اسم الفرع'),
(103, 'en', 'Branch Name'),
(104, 'ar', 'عنوان الفرع'),
(104, 'en', 'Branch Address Line1'),
(105, 'ar', 'عنوان الفرع Line2'),
(105, 'en', 'Branch Address Line2'),
(106, 'ar', 'منطقة'),
(106, 'en', 'Area'),
(107, 'ar', 'مدينة'),
(107, 'en', 'City'),
(108, 'ar', 'بلد'),
(108, 'en', 'Country'),
(109, 'ar', 'معرف مراجعة الفرع'),
(109, 'en', 'Branch Review ID'),
(110, 'ar', 'فرع مراجعة مفتاح'),
(110, 'en', 'Branch Review Key'),
(111, 'ar', 'هوية المستخدم'),
(111, 'en', 'User ID'),
(112, 'ar', 'رقم المورد'),
(112, 'en', 'Vendor ID'),
(113, 'ar', 'معرف الفرع'),
(113, 'en', 'Branch ID'),
(114, 'ar', 'تقييم'),
(114, 'en', 'Rating'),
(115, 'ar', 'إعادة النظر'),
(115, 'en', 'Review'),
(116, 'ar', 'الحالة'),
(116, 'en', 'Status'),
(117, 'ar', 'أنشئت في'),
(117, 'en', 'Created At'),
(118, 'ar', 'فرع Timeslot ID'),
(118, 'en', 'Branch Timeslot ID'),
(119, 'ar', 'فرع Timeslot مفتاح'),
(119, 'en', 'Branch Timeslot Key'),
(120, 'ar', 'معرف الفرع'),
(120, 'en', 'Branch ID'),
(121, 'ar', 'نوع الجدول الزمني'),
(121, 'en', 'Timeslot Type'),
(122, 'ar', 'معرف اليوم'),
(122, 'en', 'Day ID'),
(123, 'ar', 'Timeslot وقت البدء'),
(123, 'en', 'Timeslot Start Time'),
(124, 'ar', 'Timeslot نهاية الوقت'),
(124, 'en', 'Timeslot End Time'),
(125, 'ar', 'فرع Timeslot الحالة'),
(125, 'en', 'Branch Timeslot Status'),
(126, 'ar', 'تم انشاء كود المستخدم'),
(126, 'en', 'Created User ID'),
(127, 'ar', 'أنشئت في'),
(127, 'en', 'Created At'),
(128, 'ar', 'تعديل معرف المستخدم'),
(128, 'en', 'Modified User ID'),
(129, 'ar', 'تعديل في'),
(129, 'en', 'Modified At'),
(130, 'ar', 'معرف الفئة'),
(130, 'en', 'Category ID'),
(131, 'ar', 'مفتاح الفئة'),
(131, 'en', 'Category Key'),
(132, 'ar', 'فرز لا'),
(132, 'en', 'Sort No'),
(133, 'ar', 'حالة الفئة'),
(133, 'en', 'Category Status'),
(134, 'ar', 'تم انشاء كود المستخدم'),
(134, 'en', 'Created User ID'),
(135, 'ar', 'أنشئت في'),
(135, 'en', 'Created At'),
(136, 'ar', 'تعديل معرف المستخدم'),
(136, 'en', 'Modified User ID'),
(137, 'ar', 'تعديل في'),
(137, 'en', 'Modified At'),
(138, 'ar', 'نوع الفئة'),
(138, 'en', 'Category Type'),
(139, 'ar', 'فئة لانج معرف'),
(139, 'en', 'Category Lang ID'),
(140, 'ar', 'معرف الفئة'),
(140, 'en', 'Category ID'),
(141, 'ar', 'رمز اللغة'),
(141, 'en', 'Language Code'),
(142, 'ar', 'اسم التصنيف'),
(142, 'en', 'Category Name'),
(143, 'ar', 'مسار صورة الفئة'),
(143, 'en', 'Category Image Path'),
(144, 'ar', 'معرف المدينة'),
(144, 'en', 'City ID'),
(145, 'ar', 'مفتاح المدينة'),
(145, 'en', 'City Key'),
(146, 'ar', 'حالة المدينة'),
(146, 'en', 'City Status'),
(147, 'ar', 'أنشئت في'),
(147, 'en', 'Created At'),
(148, 'ar', 'تم انشاء كود المستخدم'),
(148, 'en', 'Created User ID'),
(149, 'ar', 'تعديل في'),
(149, 'en', 'Modified At'),
(150, 'ar', 'تعديل معرف المستخدم'),
(150, 'en', 'Modified User ID'),
(151, 'ar', 'مدينة لانج ID'),
(151, 'en', 'City Lang ID'),
(152, 'ar', 'معرف المدينة'),
(152, 'en', 'City ID'),
(153, 'ar', 'رمز اللغة'),
(153, 'en', 'Language Code'),
(154, 'ar', 'اسم المدينة'),
(154, 'en', 'City Name'),
(155, 'ar', 'معرف Cms'),
(155, 'en', 'Cms ID'),
(156, 'ar', 'مفتاح Cms'),
(156, 'en', 'Cms Key'),
(157, 'ar', 'حالة Cms'),
(157, 'en', 'Cms Status'),
(158, 'ar', 'سبيكة'),
(158, 'en', 'Slug'),
(159, 'ar', 'ن'),
(159, 'en', 'n'),
(160, 'ar', 'تعديل في'),
(160, 'en', 'Modified At'),
(161, 'ar', 'تعديل معرف المستخدم'),
(161, 'en', 'Modified User ID'),
(162, 'ar', 'أنشئت في'),
(162, 'en', 'Created At'),
(163, 'ar', 'Cms لانج معرف'),
(163, 'en', 'Cms Lang ID'),
(164, 'ar', 'معرف Cms'),
(164, 'en', 'Cms ID'),
(165, 'ar', 'رمز اللغة'),
(165, 'en', 'Language Code'),
(166, 'ar', 'عنوان Cms'),
(166, 'en', 'Cms Title'),
(167, 'ar', 'محتوى Cms'),
(167, 'en', 'Cms Content'),
(168, 'ar', 'معرف التكوين'),
(168, 'en', 'Configuration ID'),
(169, 'ar', 'مفتاح التكوين'),
(169, 'en', 'Configuration Key'),
(170, 'ar', 'اسم التكوين'),
(170, 'en', 'Configuration Name'),
(171, 'ar', 'قيمة التكوين'),
(171, 'en', 'Configuration Value'),
(172, 'ar', 'أنشئت في'),
(172, 'en', 'Created At'),
(173, 'ar', 'تم انشاء كود المستخدم'),
(173, 'en', 'Created User ID'),
(174, 'ar', 'تعديل في'),
(174, 'en', 'Modified At'),
(175, 'ar', 'تعديل معرف المستخدم'),
(175, 'en', 'Modified User ID'),
(176, 'ar', 'معرف البلد'),
(176, 'en', 'Country ID'),
(177, 'ar', 'مفتاح البلد'),
(177, 'en', 'Country Key'),
(178, 'ar', 'حالة البلد'),
(178, 'en', 'Country Status'),
(179, 'ar', 'أنشئت في'),
(179, 'en', 'Created At'),
(180, 'ar', 'تم انشاء كود المستخدم'),
(180, 'en', 'Created User ID'),
(181, 'ar', 'تعديل في'),
(181, 'en', 'Modified At'),
(182, 'ar', 'تعديل معرف المستخدم'),
(182, 'en', 'Modified User ID'),
(183, 'ar', 'البلد لانج معرف'),
(183, 'en', 'Country Lang ID'),
(184, 'ar', 'معرف البلد'),
(184, 'en', 'Country ID'),
(185, 'ar', 'رمز اللغة'),
(185, 'en', 'Language Code'),
(186, 'ar', 'اسم الدولة'),
(186, 'en', 'Country Name'),
(187, 'ar', 'معرّف الكوبون'),
(187, 'en', 'Coupon ID'),
(188, 'ar', 'مفتاح القسيمة'),
(188, 'en', 'Coupon Key'),
(189, 'ar', 'نوع القسيمة'),
(189, 'en', 'Coupon Type'),
(190, 'ar', 'الكوبون الحد الأدنى قيمة السلة'),
(190, 'en', 'Coupon Minimum Cart Value'),
(191, 'ar', 'قيمة القسيمة'),
(191, 'en', 'Coupon Value'),
(192, 'ar', 'كود القسيمة'),
(192, 'en', 'Coupon Code'),
(193, 'ar', 'القسيمة تبدأ في'),
(193, 'en', 'Coupon Starts At'),
(194, 'ar', 'الكوبون ينتهي في'),
(194, 'en', 'Coupon Ends At'),
(195, 'ar', 'حالة القسيمة'),
(195, 'en', 'Coupon Status'),
(196, 'ar', 'نطاق القسيمة'),
(196, 'en', 'Coupon Scope'),
(197, 'ar', 'نوع التطبيق'),
(197, 'en', 'App Type'),
(198, 'ar', 'هو كل مورد'),
(198, 'en', 'Is All Vendor'),
(199, 'ar', 'تم انشاء كود المستخدم'),
(199, 'en', 'Created User ID'),
(200, 'ar', 'أنشئت في'),
(200, 'en', 'Created At'),
(201, 'ar', 'تعديل معرف المستخدم'),
(201, 'en', 'Modified User ID'),
(202, 'ar', 'تعديل في'),
(202, 'en', 'Modified At'),
(203, 'ar', 'الحد الأقصى لاسترداد المبلغ'),
(203, 'en', 'Maximum Redeem Amount'),
(204, 'ar', 'القسيمة لانج معرف'),
(204, 'en', 'Coupon Lang ID'),
(205, 'ar', 'معرّف الكوبون'),
(205, 'en', 'Coupon ID'),
(206, 'ar', 'رمز اللغة'),
(206, 'en', 'Language Code'),
(207, 'ar', 'اسم القسيمة'),
(207, 'en', 'Coupon Name'),
(208, 'ar', 'وصف الكوبون'),
(208, 'en', 'Coupon Description'),
(209, 'ar', 'صورة القسيمة'),
(209, 'en', 'Coupon Image'),
(210, 'ar', 'الكوبون معرف المستخدم'),
(210, 'en', 'Coupon User ID'),
(211, 'ar', 'هوية المستخدم'),
(211, 'en', 'User ID'),
(212, 'ar', 'معرّف الكوبون'),
(212, 'en', 'Coupon ID'),
(213, 'ar', 'معرِّف بائع الكوبون'),
(213, 'en', 'Coupon Vendor ID'),
(214, 'ar', 'رقم المورد'),
(214, 'en', 'Vendor ID'),
(215, 'ar', 'معرّف الكوبون'),
(215, 'en', 'Coupon ID'),
(216, 'ar', 'معرف تاريخ الائتمان'),
(216, 'en', 'Credit History ID'),
(217, 'ar', 'رقم سجل الائتمان'),
(217, 'en', 'Credit History Number'),
(218, 'ar', 'هوية المستخدم'),
(218, 'en', 'User ID'),
(219, 'ar', 'رقم المورد'),
(219, 'en', 'Vendor ID'),
(220, 'ar', 'كمية'),
(220, 'en', 'Amount'),
(221, 'ar', 'المبلغ الإجمالي'),
(221, 'en', 'Total Amount'),
(222, 'ar', 'عمل'),
(222, 'en', 'Action'),
(223, 'ar', 'أنشئت في'),
(223, 'en', 'Created At'),
(224, 'ar', 'رقم تعريف المطبخ'),
(224, 'en', 'Cuisine ID'),
(225, 'ar', 'مفتاح المطبخ'),
(225, 'en', 'Cuisine Key'),
(226, 'ar', 'فرز لا'),
(226, 'en', 'Sort No'),
(227, 'ar', 'حالة المطبخ'),
(227, 'en', 'Cuisine Status'),
(228, 'ar', 'تم انشاء كود المستخدم'),
(228, 'en', 'Created User ID'),
(229, 'ar', 'أنشئت في'),
(229, 'en', 'Created At'),
(230, 'ar', 'تعديل معرف المستخدم'),
(230, 'en', 'Modified User ID'),
(231, 'ar', 'تعديل في'),
(231, 'en', 'Modified At'),
(232, 'ar', 'المطبخ لانج معرف'),
(232, 'en', 'Cuisine Lang ID'),
(233, 'ar', 'رقم تعريف المطبخ'),
(233, 'en', 'Cuisine ID'),
(234, 'ar', 'رمز اللغة'),
(234, 'en', 'Language Code'),
(235, 'ar', 'اسم المطبخ'),
(235, 'en', 'Cuisine Name'),
(236, 'ar', 'المطبخ صورة مسار'),
(236, 'en', 'Cuisine Image Path'),
(237, 'ar', 'معرف منطقة التسليم'),
(237, 'en', 'Delivery Area ID'),
(238, 'ar', 'مفتاح منطقة التسليم'),
(238, 'en', 'Delivery Area Key'),
(239, 'ar', 'اسم منطقة التسليم'),
(239, 'en', 'Delivery Area Name'),
(240, 'ar', 'نوع منطقة التسليم'),
(240, 'en', 'Delivery Area Type'),
(241, 'ar', 'منطقة التسليم نصف القطر'),
(241, 'en', 'Delivery Area Radius'),
(242, 'ar', 'بيانات منطقة التسليم'),
(242, 'en', 'Delivery Area Data'),
(243, 'ar', 'أنشئت في'),
(243, 'en', 'Created At'),
(244, 'ar', 'تم انشاء كود المستخدم'),
(244, 'en', 'Created User ID'),
(245, 'ar', 'تم التحديث في'),
(245, 'en', 'Updated At'),
(246, 'ar', 'تعديل معرف المستخدم'),
(246, 'en', 'Modified User ID'),
(247, 'ar', 'معرف التسليم'),
(247, 'en', 'Deliveryboy ID'),
(248, 'ar', 'مفتاح Deliveryboy'),
(248, 'en', 'Deliveryboy Key'),
(249, 'ar', 'اسم المستخدم Deliveryboy'),
(249, 'en', 'Deliveryboy Username'),
(250, 'ar', 'Deliveryboy البريد الإلكتروني'),
(250, 'en', 'Deliveryboy Email'),
(251, 'ar', 'Deliveryboy كلمة السر تجزئة'),
(251, 'en', 'Deliveryboy Password Hash'),
(252, 'ar', 'العمولات'),
(252, 'en', 'Commision'),
(253, 'ar', 'الحالة'),
(253, 'en', 'Status'),
(254, 'ar', 'رمز الجهاز'),
(254, 'en', 'Device Token'),
(255, 'ar', 'نوع الجهاز'),
(255, 'en', 'Device Type'),
(256, 'ar', 'خط العرض'),
(256, 'en', 'Latitude'),
(257, 'ar', 'خط الطول'),
(257, 'en', 'Longitude'),
(258, 'ar', 'صورة الملف الشخصي'),
(258, 'en', 'Profile Image'),
(259, 'ar', 'رقم الهاتف المحمول'),
(259, 'en', 'Mobile Number'),
(260, 'ar', 'رخصة'),
(260, 'en', 'License'),
(261, 'ar', 'البطاقة الشخصية'),
(261, 'en', 'Identity Card'),
(262, 'ar', 'أنشئت في'),
(262, 'en', 'Created At'),
(263, 'ar', 'تم انشاء كود المستخدم'),
(263, 'en', 'Created User ID'),
(264, 'ar', 'تعديل في'),
(264, 'en', 'Modified At'),
(265, 'ar', 'تعديل معرف المستخدم'),
(265, 'en', 'Modified User ID'),
(266, 'ar', 'معرف التحقيق'),
(266, 'en', 'Enquiry ID'),
(267, 'ar', 'اسم'),
(267, 'en', 'Name'),
(268, 'ar', 'البريد الإلكتروني'),
(268, 'en', 'Email'),
(269, 'ar', 'رقم الهاتف المحمول'),
(269, 'en', 'Mobile Number'),
(270, 'ar', 'رسالة'),
(270, 'en', 'Message'),
(271, 'ar', 'أنشئت في'),
(271, 'en', 'Created At'),
(272, 'ar', 'تم التحديث في'),
(272, 'en', 'Updated At'),
(273, 'ar', 'معرف المكونات'),
(273, 'en', 'Ingredient ID'),
(274, 'ar', 'مفتاح المكونات'),
(274, 'en', 'Ingredient Key'),
(275, 'ar', 'حالة المكونات'),
(275, 'en', 'Ingredient Status'),
(276, 'ar', 'أنشئت في'),
(276, 'en', 'Created At'),
(277, 'ar', 'تم انشاء كود المستخدم'),
(277, 'en', 'Created User ID'),
(278, 'ar', 'تعديل في'),
(278, 'en', 'Modified At'),
(279, 'ar', 'تعديل معرف المستخدم'),
(279, 'en', 'Modified User ID'),
(280, 'ar', 'معرف لانج معرف'),
(280, 'en', 'Ingredient Lang ID'),
(281, 'ar', 'معرف المكونات'),
(281, 'en', 'Ingredient ID'),
(282, 'ar', 'رمز اللغة'),
(282, 'en', 'Language Code'),
(283, 'ar', 'اسم العنصر'),
(283, 'en', 'Ingredient Name'),
(284, 'ar', 'معرف العنصر'),
(284, 'en', 'Item ID'),
(285, 'ar', 'مفتاح البند'),
(285, 'en', 'Item Key'),
(286, 'ar', 'معرف الفئة'),
(286, 'en', 'Category ID'),
(287, 'ar', 'رقم المورد'),
(287, 'en', 'Vendor ID'),
(288, 'ar', 'معرف الفرع'),
(288, 'en', 'Branch ID'),
(289, 'ar', 'سعر البند'),
(289, 'en', 'Item Price'),
(290, 'ar', 'حالة العنصر'),
(290, 'en', 'Item Status'),
(291, 'ar', 'فرز لا'),
(291, 'en', 'Sort No'),
(292, 'ar', 'أنشئت في'),
(292, 'en', 'Created At'),
(293, 'ar', 'تم انشاء كود المستخدم'),
(293, 'en', 'Created User ID'),
(294, 'ar', 'تعديل في'),
(294, 'en', 'Modified At'),
(295, 'ar', 'تعديل معرف المستخدم'),
(295, 'en', 'Modified User ID'),
(296, 'ar', 'موصى به'),
(296, 'en', 'Is Recommended'),
(297, 'ar', 'سعر الطرد'),
(297, 'en', 'Package Price'),
(298, 'ar', 'معرف صورة البند'),
(298, 'en', 'Item Image ID'),
(299, 'ar', 'معرف العنصر'),
(299, 'en', 'Item ID'),
(300, 'ar', 'رمز اللغة'),
(300, 'en', 'Language Code'),
(301, 'ar', 'مسار صورة البند'),
(301, 'en', 'Item Image Path'),
(302, 'ar', 'فرز لا'),
(302, 'en', 'Sort No'),
(303, 'ar', 'معرف مجموعة عناصر العنصر'),
(303, 'en', 'Item Ingredient Group ID'),
(304, 'ar', 'عنصر مجموعة عناصر العنصر'),
(304, 'en', 'Item Ingredient Group Key'),
(305, 'ar', 'نوع المكونات'),
(305, 'en', 'Ingredient Type'),
(306, 'ar', 'الحد الأدنى'),
(306, 'en', 'Minimum'),
(307, 'ar', 'أقصى'),
(307, 'en', 'Maximum'),
(308, 'ar', 'حالة العنصر العنصر'),
(308, 'en', 'Item Ingredient Status'),
(309, 'ar', 'أنشئت في'),
(309, 'en', 'Created At'),
(310, 'ar', 'تم انشاء كود المستخدم'),
(310, 'en', 'Created User ID'),
(311, 'ar', 'تعديل في'),
(311, 'en', 'Modified At'),
(312, 'ar', 'تعديل معرف المستخدم'),
(312, 'en', 'Modified User ID'),
(313, 'ar', 'البند عنصر المجموعة لانج معرف'),
(313, 'en', 'Item Ingredient Group Lang ID'),
(314, 'ar', 'معرف مجموعة عناصر العنصر'),
(314, 'en', 'Item Ingredient Group ID'),
(315, 'ar', 'رمز اللغة'),
(315, 'en', 'Language Code'),
(316, 'ar', 'أسم المجموعة'),
(316, 'en', 'Group Name'),
(317, 'ar', 'رقم تعريف مجموعة عناصر العنصر'),
(317, 'en', 'Item Ingredient Group Mapping ID'),
(318, 'ar', 'معرف مجموعة عناصر العنصر'),
(318, 'en', 'Item Ingredient Group ID'),
(319, 'ar', 'معرف العنصر'),
(319, 'en', 'Item ID'),
(320, 'ar', 'معرف تعيين عنصر العنصر'),
(320, 'en', 'Item Ingredient Mapping ID'),
(321, 'ar', 'معرف مجموعة عناصر العنصر'),
(321, 'en', 'Item Ingredient Group ID'),
(322, 'ar', 'معرف المكونات'),
(322, 'en', 'Ingredient ID'),
(323, 'ar', 'الحالة الافتراضية'),
(323, 'en', 'Default Status'),
(324, 'ar', 'السعر'),
(324, 'en', 'Price'),
(325, 'ar', 'الحالة'),
(325, 'en', 'Status'),
(326, 'ar', 'بند لانج معرف'),
(326, 'en', 'Item Lang ID'),
(327, 'ar', 'معرف العنصر'),
(327, 'en', 'Item ID'),
(328, 'ar', 'رمز اللغة'),
(328, 'en', 'Language Code'),
(329, 'ar', 'اسم العنصر'),
(329, 'en', 'Item Name'),
(330, 'ar', 'وصف السلعة'),
(330, 'en', 'Item Description'),
(331, 'ar', 'معرف تعيين العنصر'),
(331, 'en', 'Item Mapping ID'),
(332, 'ar', 'مفتاح تخطيط العنصر'),
(332, 'en', 'Item Mapping Key'),
(333, 'ar', 'معرف العنصر'),
(333, 'en', 'Item ID'),
(334, 'ar', 'حالة تعيين العنصر'),
(334, 'en', 'Item Mapping Status'),
(335, 'ar', 'أنشئت في'),
(335, 'en', 'Created At'),
(336, 'ar', 'تم انشاء كود المستخدم'),
(336, 'en', 'Created User ID'),
(337, 'ar', 'تم التحديث في'),
(337, 'en', 'Updated At'),
(338, 'ar', 'معرف المستخدم المحدث'),
(338, 'en', 'Updated User ID'),
(339, 'ar', 'رقم تعريف مجموعة رسم العنصر'),
(339, 'en', 'Item Mapping Group ID'),
(340, 'ar', 'معرف تعيين العنصر'),
(340, 'en', 'Item Mapping ID'),
(341, 'ar', 'معرف مجموعة عناصر العنصر'),
(341, 'en', 'Item Ingredient Group ID'),
(342, 'ar', 'نوع التعيين'),
(342, 'en', 'Mapping Type'),
(343, 'ar', 'هل شرب'),
(343, 'en', 'Is Drink'),
(344, 'ar', 'معرف نوع العنصر'),
(344, 'en', 'Item Type ID'),
(345, 'ar', 'مفتاح نوع العنصر'),
(345, 'en', 'Item Type Key'),
(346, 'ar', 'حالة نوع العنصر'),
(346, 'en', 'Item Type Status'),
(347, 'ar', 'تم انشاء كود المستخدم'),
(347, 'en', 'Created User ID'),
(348, 'ar', 'أنشئت في'),
(348, 'en', 'Created At'),
(349, 'ar', 'معرف المستخدم المحدث'),
(349, 'en', 'Updated User ID'),
(350, 'ar', 'تم التحديث في'),
(350, 'en', 'Updated At'),
(351, 'ar', 'رقم معرف تفاصيل النوع'),
(351, 'en', 'Item Type Details ID'),
(352, 'ar', 'معرف العنصر'),
(352, 'en', 'Item ID'),
(353, 'ar', 'معرف نوع العنصر'),
(353, 'en', 'Item Type ID'),
(354, 'ar', 'نوع البند لانج معرف'),
(354, 'en', 'Item Type Lang ID'),
(355, 'ar', 'معرف نوع العنصر'),
(355, 'en', 'Item Type ID'),
(356, 'ar', 'رمز اللغة'),
(356, 'en', 'Language Code'),
(357, 'ar', 'اسم نوع البند'),
(357, 'en', 'Item Type Name'),
(358, 'ar', 'معرف اللغة'),
(358, 'en', 'Language ID'),
(359, 'ar', 'رمز اللغة'),
(359, 'en', 'Language Code'),
(360, 'ar', 'اسم اللغة'),
(360, 'en', 'Language Name'),
(361, 'ar', 'الاسم الأصلي'),
(361, 'en', 'Native Name'),
(362, 'ar', 'هو Rtl'),
(362, 'en', 'Is Rtl'),
(363, 'ar', 'الحالة'),
(363, 'en', 'Status'),
(364, 'ar', 'رقم المنتج الخاص بالمول'),
(364, 'en', 'Mall Product ID'),
(365, 'ar', 'مول مفتاح المنتج'),
(365, 'en', 'Mall Product Key'),
(366, 'ar', 'السعر'),
(366, 'en', 'Price'),
(367, 'ar', 'حالة المنتج'),
(367, 'en', 'Product Status'),
(368, 'ar', 'أنشئت في'),
(368, 'en', 'Created At'),
(369, 'ar', 'تم انشاء كود المستخدم'),
(369, 'en', 'Created User ID'),
(370, 'ar', 'تعديل في'),
(370, 'en', 'Modified At'),
(371, 'ar', 'تعديل معرف المستخدم'),
(371, 'en', 'Modified User ID'),
(372, 'ar', 'رقم المنتج لمنتج لانج'),
(372, 'en', 'Mall Product Lang ID'),
(373, 'ar', 'رقم المنتج الخاص بالمول'),
(373, 'en', 'Mall Product ID'),
(374, 'ar', 'رمز اللغة'),
(374, 'en', 'Language Code'),
(375, 'ar', 'اسم المنتج'),
(375, 'en', 'Product Name'),
(376, 'ar', 'وصف المنتج'),
(376, 'en', 'Product Description'),
(377, 'ar', 'مسار صورة المنتج'),
(377, 'en', 'Product Image Path'),
(378, 'ar', 'معرف الرسالة الإخبارية'),
(378, 'en', 'Newsletter ID'),
(379, 'ar', 'مفتاح النشرة الإخبارية'),
(379, 'en', 'Newsletter Key'),
(380, 'ar', 'عنوان الرسالة الإخبارية'),
(380, 'en', 'Newsletter Title'),
(381, 'ar', 'محتوى النشرة الإخبارية'),
(381, 'en', 'Newsletter Content'),
(382, 'ar', 'صورة النشرة الإخبارية'),
(382, 'en', 'Newsletter Image'),
(383, 'ar', 'وضع النشرة الإخبارية'),
(383, 'en', 'Newsletter Status'),
(384, 'ar', 'أنشئت في'),
(384, 'en', 'Created At'),
(385, 'ar', 'تعديل في'),
(385, 'en', 'Modified At'),
(386, 'ar', 'معرف المشترك النشرة الإخبارية'),
(386, 'en', 'Newsletter Subscriber ID'),
(387, 'ar', 'الرسالة الإخبارية الرئيسية المشترك'),
(387, 'en', 'Newsletter Subscriber Key'),
(388, 'ar', 'اسم'),
(388, 'en', 'Name'),
(389, 'ar', 'البريد الإلكتروني'),
(389, 'en', 'Email'),
(390, 'ar', 'معرف الإخطار'),
(390, 'en', 'Notification ID'),
(391, 'ar', 'عنوان الإخطار'),
(391, 'en', 'Notification Title'),
(392, 'ar', 'وصف الإخطار'),
(392, 'en', 'Notification Description'),
(393, 'ar', 'مسار صورة الإخطار'),
(393, 'en', 'Notification Image Path'),
(394, 'ar', 'هو كل مستخدم'),
(394, 'en', 'Is All User'),
(395, 'ar', 'أنشئت في'),
(395, 'en', 'Created At'),
(396, 'ar', 'تم انشاء كود المستخدم'),
(396, 'en', 'Created User ID'),
(397, 'ar', 'تعديل في'),
(397, 'en', 'Modified At'),
(398, 'ar', 'تعديل معرف المستخدم'),
(398, 'en', 'Modified User ID'),
(399, 'ar', 'رقم التعريف الخاص بالطلب'),
(399, 'en', 'Order ID'),
(400, 'ar', 'مفتاح الطلب'),
(400, 'en', 'Order Key'),
(401, 'ar', 'رقم الطلب'),
(401, 'en', 'Order Number'),
(402, 'ar', 'رقم المورد'),
(402, 'en', 'Vendor ID'),
(403, 'ar', 'معرف الفرع'),
(403, 'en', 'Branch ID'),
(404, 'ar', 'هوية المستخدم'),
(404, 'en', 'User ID'),
(405, 'ar', 'اسم العميل الأول'),
(405, 'en', 'Customer First Name'),
(406, 'ar', 'اسم العائلة للعميل'),
(406, 'en', 'Customer Last Name'),
(407, 'ar', 'رقم هاتف العميل'),
(407, 'en', 'Customer Mobile Number'),
(408, 'ar', 'البريد الإلكتروني للعميل'),
(408, 'en', 'Customer Email'),
(409, 'ar', 'معرف عنوان المستخدم'),
(409, 'en', 'User Address ID'),
(410, 'ar', 'خط العرض'),
(410, 'en', 'Latitude'),
(411, 'ar', 'خط الطول'),
(411, 'en', 'Longitude'),
(412, 'ar', 'ترتيب تاريخ الوقت'),
(412, 'en', 'Order Date Time'),
(413, 'ar', 'نوع الطلب'),
(413, 'en', 'Order Type'),
(414, 'ar', 'خيار تسليم'),
(414, 'en', 'Delivery Option'),
(415, 'ar', 'وقت استلام التسليم'),
(415, 'en', 'Pickup Delivery Date Time'),
(416, 'ar', 'مجموع الاشياء'),
(416, 'en', 'Item Total'),
(417, 'ar', 'رسوم التوصيل'),
(417, 'en', 'Delivery Fee'),
(418, 'ar', 'ضريبة'),
(418, 'en', 'Tax'),
(419, 'ar', 'قيمة عرض الكوبون'),
(419, 'en', 'Coupon Offer Value'),
(420, 'ar', 'الطلب الكلي'),
(420, 'en', 'Order Total'),
(421, 'ar', 'خيار الدفع'),
(421, 'en', 'Payment Option'),
(422, 'ar', 'حالة السداد'),
(422, 'en', 'Payment Status'),
(423, 'ar', 'حالة الطلب'),
(423, 'en', 'Order Status'),
(424, 'ar', 'استجابة الدفع'),
(424, 'en', 'Payment Response'),
(425, 'ar', 'سبب رفض'),
(425, 'en', 'Rejected Reason'),
(426, 'ar', 'الوقت المقبول'),
(426, 'en', 'Accepted Time'),
(427, 'ar', 'Deliveryboy Pickuped الوقت'),
(427, 'en', 'Deliveryboy Pickuped Time'),
(428, 'ar', 'وقت التسليم'),
(428, 'en', 'Delivered Time'),
(429, 'ar', 'معرف الترويج للطلب'),
(429, 'en', 'Order Promotion ID'),
(430, 'ar', 'Siginature'),
(430, 'en', 'Siginature'),
(431, 'ar', 'سعر الطرد'),
(431, 'en', 'Package Price'),
(432, 'ar', 'لجنة الادارية'),
(432, 'en', 'Admin Commission'),
(433, 'ar', 'ربح البائع'),
(433, 'en', 'Vendor Profit'),
(434, 'ar', 'الربح الإداري'),
(434, 'en', 'Admin Profit'),
(435, 'ar', 'ضريبة البائع'),
(435, 'en', 'Vendor Tax'),
(436, 'ar', 'لجنة البائعين'),
(436, 'en', 'Vendor Commission'),
(437, 'ar', 'معرف المعاملة'),
(437, 'en', 'Transaction ID'),
(438, 'ar', 'حالة الدفع للبائع'),
(438, 'en', 'Vendor Payment Status'),
(439, 'ar', 'طلب معرّف الكوبون'),
(439, 'en', 'Order Coupon ID'),
(440, 'ar', 'رقم التعريف الخاص بالطلب'),
(440, 'en', 'Order ID'),
(441, 'ar', 'معرّف الكوبون'),
(441, 'en', 'Coupon ID'),
(442, 'ar', 'نوع القسيمة'),
(442, 'en', 'Coupon Type'),
(443, 'ar', 'الكوبون الحد الأدنى قيمة السلة'),
(443, 'en', 'Coupon Minimum Cart Value'),
(444, 'ar', 'كود القسيمة'),
(444, 'en', 'Coupon Code'),
(445, 'ar', 'قيمة القسيمة'),
(445, 'en', 'Coupon Value'),
(446, 'ar', 'كمية'),
(446, 'en', 'Quantity'),
(447, 'ar', 'طلب القسيمة لانج معرف'),
(447, 'en', 'Order Coupon Lang ID'),
(448, 'ar', 'طلب معرّف الكوبون'),
(448, 'en', 'Order Coupon ID'),
(449, 'ar', 'رمز اللغة'),
(449, 'en', 'Language Code'),
(450, 'ar', 'اسم القسيمة'),
(450, 'en', 'Coupon Name'),
(451, 'ar', 'وصف الكوبون'),
(451, 'en', 'Coupon Description'),
(452, 'ar', 'صورة القسيمة'),
(452, 'en', 'Coupon Image'),
(453, 'ar', 'معرف البند الطلب'),
(453, 'en', 'Order Item ID'),
(454, 'ar', 'رقم التعريف الخاص بالطلب'),
(454, 'en', 'Order ID'),
(455, 'ar', 'معرف العنصر'),
(455, 'en', 'Item ID'),
(456, 'ar', 'سعر البند'),
(456, 'en', 'Item Price'),
(457, 'ar', 'كمية'),
(457, 'en', 'Quantity'),
(458, 'ar', 'البند السعر الاجمالي'),
(458, 'en', 'Item Total Price'),
(459, 'ar', 'المعدلات السعر الإجمالي'),
(459, 'en', 'Modifiers Total Price'),
(460, 'ar', 'المكونات السعر الكلي'),
(460, 'en', 'Ingredients Total Price'),
(461, 'ar', 'السعر الكلي'),
(461, 'en', 'Total Price'),
(462, 'ar', 'معرف صورة البند الطلب'),
(462, 'en', 'Order Item Image ID'),
(463, 'ar', 'معرف البند الطلب'),
(463, 'en', 'Order Item ID'),
(464, 'ar', 'رمز اللغة'),
(464, 'en', 'Language Code'),
(465, 'ar', 'مسار صورة البند'),
(465, 'en', 'Item Image Path'),
(466, 'ar', 'ترتيب عنصر معرف مجموعة العنصر'),
(466, 'en', 'Order Item Ingredient Group ID'),
(467, 'ar', 'معرف البند الطلب'),
(467, 'en', 'Order Item ID'),
(468, 'ar', 'نوع المكونات'),
(468, 'en', 'Ingredient Type'),
(469, 'ar', 'الحد الأدنى'),
(469, 'en', 'Minimum'),
(470, 'ar', 'أقصى'),
(470, 'en', 'Maximum'),
(471, 'ar', 'هل شرب'),
(471, 'en', 'Is Drink'),
(472, 'ar', 'ترتيب عنصر المجموعة لانج معرف'),
(472, 'en', 'Order Item Ingredient Group Lang ID'),
(473, 'ar', 'ترتيب عنصر معرف مجموعة العنصر'),
(473, 'en', 'Order Item Ingredient Group ID'),
(474, 'ar', 'رمز اللغة'),
(474, 'en', 'Language Code'),
(475, 'ar', 'أسم المجموعة'),
(475, 'en', 'Group Name'),
(476, 'ar', 'رقم تعريف عنصر مكون العنصر'),
(476, 'en', 'Order Item Ingredient Mapping ID'),
(477, 'ar', 'ترتيب عنصر معرف مجموعة العنصر'),
(477, 'en', 'Order Item Ingredient Group ID'),
(478, 'ar', 'معرف المكونات'),
(478, 'en', 'Ingredient ID'),
(479, 'ar', 'الحالة الافتراضية'),
(479, 'en', 'Default Status'),
(480, 'ar', 'كمية المكونات'),
(480, 'en', 'Ingredient Quantity'),
(481, 'ar', 'السعر'),
(481, 'en', 'Price'),
(482, 'ar', 'ترتيب العنصر خريطه لانج معرف'),
(482, 'en', 'Order Item Ingredient Mapping Lang ID'),
(483, 'ar', 'رقم تعريف عنصر مكون العنصر'),
(483, 'en', 'Order Item Ingredient Mapping ID'),
(484, 'ar', 'رمز اللغة'),
(484, 'en', 'Language Code'),
(485, 'ar', 'اسم العنصر'),
(485, 'en', 'Ingredient Name'),
(486, 'ar', 'ترتيب البند لانج معرف'),
(486, 'en', 'Order Item Lang ID'),
(487, 'ar', 'معرف البند الطلب'),
(487, 'en', 'Order Item ID'),
(488, 'ar', 'رمز اللغة'),
(488, 'en', 'Language Code'),
(489, 'ar', 'اسم العنصر'),
(489, 'en', 'Item Name'),
(490, 'ar', 'وصف السلعة'),
(490, 'en', 'Item Description'),
(491, 'ar', 'طلب رقم المنتج الخاص بمول'),
(491, 'en', 'Order Mall Product ID'),
(492, 'ar', 'طلب مفتاح المنتج للمول'),
(492, 'en', 'Order Mall Product Key'),
(493, 'ar', 'طلب رقم المنتج'),
(493, 'en', 'Order Product Number'),
(494, 'ar', 'هوية المستخدم'),
(494, 'en', 'User ID'),
(495, 'ar', 'معرف المنتج'),
(495, 'en', 'Product ID'),
(496, 'ar', 'السعر'),
(496, 'en', 'Price'),
(497, 'ar', 'معرف عنوان المستخدم'),
(497, 'en', 'User Address ID'),
(498, 'ar', 'ترتيب تاريخ الوقت'),
(498, 'en', 'Order Date Time'),
(499, 'ar', 'حالة الطلب'),
(499, 'en', 'Order Status'),
(500, 'ar', 'أنشئت في'),
(500, 'en', 'Created At'),
(501, 'ar', 'تعديل في'),
(501, 'en', 'Modified At'),
(502, 'ar', 'ترتيب مول المنتج لانج معرف'),
(502, 'en', 'Order Mall Product Lang ID'),
(503, 'ar', 'طلب رقم المنتج الخاص بمول'),
(503, 'en', 'Order Mall Product ID'),
(504, 'ar', 'رمز اللغة'),
(504, 'en', 'Language Code'),
(505, 'ar', 'اسم المنتج'),
(505, 'en', 'Product Name'),
(506, 'ar', 'وصف المنتج'),
(506, 'en', 'Product Description'),
(507, 'ar', 'مسار صورة المنتج'),
(507, 'en', 'Product Image Path'),
(508, 'ar', 'طلب معرف الطرود'),
(508, 'en', 'Order Parcel ID'),
(509, 'ar', 'من أجل مفتاح الطرود'),
(509, 'en', 'Order Parcel Key'),
(510, 'ar', 'طلب معرف الحجز'),
(510, 'en', 'Order Booking ID'),
(511, 'ar', 'هوية المستخدم'),
(511, 'en', 'User ID'),
(512, 'ar', 'رقم تعريف نوع العنصر'),
(512, 'en', 'Parcel Item Type ID'),
(513, 'ar', 'لاقط Latitude'),
(513, 'en', 'Pickup Latitude'),
(514, 'ar', 'خط الطول'),
(514, 'en', 'Pickup Longitude'),
(515, 'ar', 'قم بإسقاط خط العرض'),
(515, 'en', 'Drop Latitude'),
(516, 'ar', 'إسقاط خط الطول'),
(516, 'en', 'Drop Longitude'),
(517, 'ar', 'تاريخ الاستلام'),
(517, 'en', 'Pickup Date Time'),
(518, 'ar', 'تاريخ التسليم'),
(518, 'en', 'Delivery Date Time'),
(519, 'ar', 'اسم المستخدم لاقط'),
(519, 'en', 'Pickup User Name'),
(520, 'ar', 'رقم هاتف محمول لاقط'),
(520, 'en', 'Pickup User Mobile Number'),
(521, 'ar', 'اسم المستخدم التسليم'),
(521, 'en', 'Delivery User Name'),
(522, 'ar', 'رقم هاتف المستخدم'),
(522, 'en', 'Delivery User Mobile Number'),
(523, 'ar', 'قيمة القسيمة'),
(523, 'en', 'Coupon Value'),
(524, 'ar', 'الرسوم القياسية'),
(524, 'en', 'Standard Fee'),
(525, 'ar', 'رسوم التوصيل'),
(525, 'en', 'Delivery Fee'),
(526, 'ar', 'مجموع الرسوم'),
(526, 'en', 'Total Fee'),
(527, 'ar', 'خيار الدفع'),
(527, 'en', 'Payment Option'),
(528, 'ar', 'مزود الدفع'),
(528, 'en', 'Payment Provider'),
(529, 'ar', 'حالة الطلب'),
(529, 'en', 'Order Status'),
(530, 'ar', 'أنشئت في'),
(530, 'en', 'Created At'),
(531, 'ar', 'تعديل في'),
(531, 'en', 'Modified At'),
(532, 'ar', 'عنوان لاقط'),
(532, 'en', 'Pickup Address'),
(533, 'ar', 'عنوان التسليم'),
(533, 'en', 'Delivery Address'),
(534, 'ar', 'حالة السداد'),
(534, 'en', 'Payment Status'),
(535, 'ar', 'وصف المنتج'),
(535, 'en', 'Product Description'),
(536, 'ar', 'ترتيب معرف صورة البند الطرود'),
(536, 'en', 'Order Parcel Item Image ID'),
(537, 'ar', 'طلب معرف الطرود'),
(537, 'en', 'Order Parcel ID'),
(538, 'ar', 'ترتيب صورة الطرود'),
(538, 'en', 'Order Parcel Image'),
(539, 'ar', 'معرف الترويج للطلب'),
(539, 'en', 'Order Promotion ID'),
(540, 'ar', 'مفتاح تعزيز الطلب'),
(540, 'en', 'Order Promotion Key'),
(541, 'ar', 'رقم طلب الشراء'),
(541, 'en', 'Order Promotion Number'),
(542, 'ar', 'هوية المستخدم'),
(542, 'en', 'User ID'),
(543, 'ar', 'معرّف الترويج'),
(543, 'en', 'Promotion ID'),
(544, 'ar', 'رقم المورد'),
(544, 'en', 'Vendor ID'),
(545, 'ar', 'سعر الترويج'),
(545, 'en', 'Promotion Price'),
(546, 'ar', 'عرض'),
(546, 'en', 'Offer'),
(547, 'ar', 'نقاط الترويج'),
(547, 'en', 'Promotion Points'),
(548, 'ar', 'أنشئت في'),
(548, 'en', 'Created At'),
(549, 'ar', 'تعديل في'),
(549, 'en', 'Modified At'),
(550, 'ar', 'يستخدم'),
(550, 'en', 'Is Used'),
(551, 'ar', 'شفرة الترقية'),
(551, 'en', 'Promotion Code'),
(552, 'ar', 'نوع الدب'),
(552, 'en', 'Bear Type'),
(553, 'ar', 'حالة السداد'),
(553, 'en', 'Payment Status'),
(554, 'ar', 'معرف المعاملة'),
(554, 'en', 'Transaction ID'),
(555, 'ar', 'استجابة الدفع'),
(555, 'en', 'Payment Response'),
(556, 'ar', 'ترتيب الترويج لانج معرف'),
(556, 'en', 'Order Promotion Lang ID'),
(557, 'ar', 'معرف الترويج للطلب'),
(557, 'en', 'Order Promotion ID'),
(558, 'ar', 'رمز اللغة'),
(558, 'en', 'Language Code'),
(559, 'ar', 'اسم الترويج'),
(559, 'en', 'Promotion Name'),
(560, 'ar', 'وصف الترويج'),
(560, 'en', 'Promotion Description'),
(561, 'ar', 'تعزيز صورة المسار'),
(561, 'en', 'Promotion Image Path'),
(562, 'ar', 'نوع الترويج'),
(562, 'en', 'Promotion Type'),
(563, 'ar', 'اطلب معرف الضرائب'),
(563, 'en', 'Order Tax ID'),
(564, 'ar', 'رقم التعريف الخاص بالطلب'),
(564, 'en', 'Order ID'),
(565, 'ar', 'الرقم الضريبي'),
(565, 'en', 'Tax ID'),
(566, 'ar', 'القيمة'),
(566, 'en', 'Value'),
(567, 'ar', 'طلب سعر الضريبة'),
(567, 'en', 'Order Tax Price'),
(568, 'ar', 'من اجل الضريبة لانج معرف'),
(568, 'en', 'Order Tax Lang ID'),
(569, 'ar', 'اطلب معرف الضرائب'),
(569, 'en', 'Order Tax ID'),
(570, 'ar', 'رمز اللغة'),
(570, 'en', 'Language Code'),
(571, 'ar', 'اسم الضريبة'),
(571, 'en', 'Tax Name'),
(572, 'ar', 'رقم تعريف نوع العنصر'),
(572, 'en', 'Parcel Item Type ID'),
(573, 'ar', 'الطرود البند نوع النوع'),
(573, 'en', 'Parcel Item Type Key'),
(574, 'ar', 'الحالة'),
(574, 'en', 'Status'),
(575, 'ar', 'تم انشاء كود المستخدم'),
(575, 'en', 'Created User ID'),
(576, 'ar', 'أنشئت في'),
(576, 'en', 'Created At'),
(577, 'ar', 'تعديل معرف المستخدم'),
(577, 'en', 'Modified User ID'),
(578, 'ar', 'تعديل في'),
(578, 'en', 'Modified At'),
(579, 'ar', 'نوع قطعة البند لانج معرف'),
(579, 'en', 'Parcel Item Type Lang ID'),
(580, 'ar', 'رقم تعريف نوع العنصر'),
(580, 'en', 'Parcel Item Type ID'),
(581, 'ar', 'رمز اللغة'),
(581, 'en', 'Language Code'),
(582, 'ar', 'اسم نوع البند الطرود'),
(582, 'en', 'Parcel Item Type Name'),
(583, 'ar', 'معرف محفوظات النقطة'),
(583, 'en', 'Point History ID'),
(584, 'ar', 'رقم محفوظات النقاط'),
(584, 'en', 'Point History Number'),
(585, 'ar', 'هوية المستخدم'),
(585, 'en', 'User ID'),
(586, 'ar', 'نقطة'),
(586, 'en', 'Point'),
(587, 'ar', 'عمل'),
(587, 'en', 'Action'),
(588, 'ar', 'ملاحظات'),
(588, 'en', 'Notes'),
(589, 'ar', 'أنشئت في'),
(589, 'en', 'Created At'),
(590, 'ar', 'بعد معرف'),
(590, 'en', 'Post ID'),
(591, 'ar', 'مفتاح المشاركة'),
(591, 'en', 'Post Key'),
(592, 'ar', 'هوية المستخدم'),
(592, 'en', 'User ID'),
(593, 'ar', 'وصف'),
(593, 'en', 'Description'),
(594, 'ar', 'نشر صورة'),
(594, 'en', 'Post Image'),
(595, 'ar', 'أنشئت في'),
(595, 'en', 'Created At'),
(596, 'ar', 'تعديل في'),
(596, 'en', 'Modified At'),
(597, 'ar', 'معرّف الترويج'),
(597, 'en', 'Promotion ID'),
(598, 'ar', 'مفتاح الترويج'),
(598, 'en', 'Promotion Key'),
(599, 'ar', 'رقم المورد'),
(599, 'en', 'Vendor ID'),
(600, 'ar', 'سعر الترويج'),
(600, 'en', 'Promotion Price'),
(601, 'ar', 'عرض'),
(601, 'en', 'Offer'),
(602, 'ar', 'نقاط الترويج'),
(602, 'en', 'Promotion Points'),
(603, 'ar', 'حالة الترقية'),
(603, 'en', 'Promotion Status'),
(604, 'ar', 'الإجمالي اشترى'),
(604, 'en', 'Total Bought'),
(605, 'ar', 'أنشئت في'),
(605, 'en', 'Created At'),
(606, 'ar', 'تم انشاء كود المستخدم'),
(606, 'en', 'Created User ID'),
(607, 'ar', 'تعديل في'),
(607, 'en', 'Modified At'),
(608, 'ar', 'تعديل معرف المستخدم'),
(608, 'en', 'Modified User ID'),
(609, 'ar', 'تاريخ البدء'),
(609, 'en', 'Start Date'),
(610, 'ar', 'تاريخ الانتهاء'),
(610, 'en', 'End Date'),
(611, 'ar', 'شفرة الترقية'),
(611, 'en', 'Promotion Code'),
(612, 'ar', 'ترويج لانج معرف'),
(612, 'en', 'Promotion Lang ID'),
(613, 'ar', 'معرّف الترويج'),
(613, 'en', 'Promotion ID'),
(614, 'ar', 'رمز اللغة'),
(614, 'en', 'Language Code'),
(615, 'ar', 'اسم الترويج'),
(615, 'en', 'Promotion Name'),
(616, 'ar', 'وصف الترويج'),
(616, 'en', 'Promotion Description'),
(617, 'ar', 'تعزيز صورة المسار'),
(617, 'en', 'Promotion Image Path'),
(618, 'ar', 'نوع الترويج'),
(618, 'en', 'Promotion Type'),
(619, 'ar', 'معرف الدور'),
(619, 'en', 'Role ID'),
(620, 'ar', 'مفتاح الدور'),
(620, 'en', 'Role Key'),
(621, 'ar', 'اسم الدور'),
(621, 'en', 'Role Name'),
(622, 'ar', 'دور الخلفية دور Json'),
(622, 'en', 'Backend Role Json'),
(623, 'ar', 'حالة الدور'),
(623, 'en', 'Role Status'),
(624, 'ar', 'تم انشاء كود المستخدم'),
(624, 'en', 'Created User ID'),
(625, 'ar', 'أنشئت في'),
(625, 'en', 'Created At'),
(626, 'ar', 'تعديل معرف المستخدم'),
(626, 'en', 'Modified User ID'),
(627, 'ar', 'تعديل في'),
(627, 'en', 'Modified At'),
(628, 'ar', 'الرقم الضريبي'),
(628, 'en', 'Tax ID'),
(629, 'ar', 'مفتاح الضرائب'),
(629, 'en', 'Tax Key'),
(630, 'ar', 'الحالة'),
(630, 'en', 'Status'),
(631, 'ar', 'القيمة'),
(631, 'en', 'Value'),
(632, 'ar', 'أنشئت في'),
(632, 'en', 'Created At'),
(633, 'ar', 'تم انشاء كود المستخدم'),
(633, 'en', 'Created User ID'),
(634, 'ar', 'تعديل في'),
(634, 'en', 'Modified At'),
(635, 'ar', 'تعديل معرف المستخدم'),
(635, 'en', 'Modified User ID'),
(636, 'ar', 'معرف البلد'),
(636, 'en', 'Country ID'),
(637, 'ar', 'Tax Lang ID'),
(637, 'en', 'Tax Lang ID'),
(638, 'ar', 'الرقم الضريبي'),
(638, 'en', 'Tax ID'),
(639, 'ar', 'رمز اللغة'),
(639, 'en', 'Language Code'),
(640, 'ar', 'اسم الضريبة'),
(640, 'en', 'Tax Name'),
(641, 'ar', 'اليوم معرف خاص'),
(641, 'en', 'Today Special ID'),
(642, 'ar', 'اليوم مفتاح خاص'),
(642, 'en', 'Today Special Key'),
(643, 'ar', 'معرف المدينة'),
(643, 'en', 'City ID'),
(644, 'ar', 'رقم المورد'),
(644, 'en', 'Vendor ID'),
(645, 'ar', 'معرف العنصر'),
(645, 'en', 'Item ID'),
(646, 'ar', 'رابط'),
(646, 'en', 'Url'),
(647, 'ar', 'من التاريخ'),
(647, 'en', 'From Date'),
(648, 'ar', 'حتى الآن'),
(648, 'en', 'To Date'),
(649, 'ar', 'تم انشاء كود المستخدم'),
(649, 'en', 'Created User ID'),
(650, 'ar', 'أنشئت في'),
(650, 'en', 'Created At'),
(651, 'ar', 'تعديل معرف المستخدم'),
(651, 'en', 'Modified User ID'),
(652, 'ar', 'تعديل في'),
(652, 'en', 'Modified At'),
(653, 'ar', 'اليوم حالة خاصة'),
(653, 'en', 'Today Special Status'),
(654, 'ar', 'اليوم خاص لانج معرف'),
(654, 'en', 'Today Special Lang ID'),
(655, 'ar', 'اليوم معرف خاص'),
(655, 'en', 'Today Special ID'),
(656, 'ar', 'رمز اللغة'),
(656, 'en', 'Language Code'),
(657, 'ar', 'اليوم اسم خاص'),
(657, 'en', 'Today Special Name'),
(658, 'ar', 'اليوم مسار الصورة الخاصة'),
(658, 'en', 'Today Special Image Path'),
(659, 'ar', 'معرِّف Topup'),
(659, 'en', 'Topup ID'),
(660, 'ar', 'مفتاح Topup'),
(660, 'en', 'Topup Key'),
(661, 'ar', 'السعر'),
(661, 'en', 'Price'),
(662, 'ar', 'ائتمان'),
(662, 'en', 'Credit'),
(663, 'ar', 'نقطة الحرة'),
(663, 'en', 'Free Point'),
(664, 'ar', 'أنشئت في'),
(664, 'en', 'Created At'),
(665, 'ar', 'تم انشاء كود المستخدم'),
(665, 'en', 'Created User ID'),
(666, 'ar', 'تعديل معرف المستخدم'),
(666, 'en', 'Modified User ID'),
(667, 'ar', 'تعديل في'),
(667, 'en', 'Modified At'),
(668, 'ar', 'رقم تعريف محفوظات التاريخ'),
(668, 'en', 'Topup History ID'),
(669, 'ar', 'مفتاح محفوظات التوقيعات'),
(669, 'en', 'Topup History Key'),
(670, 'ar', 'هوية المستخدم'),
(670, 'en', 'User ID'),
(671, 'ar', 'معرِّف Topup'),
(671, 'en', 'Topup ID'),
(672, 'ar', 'السعر الكلي'),
(672, 'en', 'Total Price'),
(673, 'ar', 'نقطة الحرة'),
(673, 'en', 'Free Point'),
(674, 'ar', 'حالة السداد'),
(674, 'en', 'Payment Status'),
(675, 'ar', 'أنشئت في'),
(675, 'en', 'Created At'),
(676, 'ar', 'تعديل في'),
(676, 'en', 'Modified At'),
(677, 'ar', 'هوية المستخدم'),
(677, 'en', 'User ID'),
(678, 'ar', 'مفتاح المستخدم'),
(678, 'en', 'User Key'),
(679, 'ar', 'الاسم الاول'),
(679, 'en', 'First Name'),
(680, 'ar', 'الكنية'),
(680, 'en', 'Last Name'),
(681, 'ar', 'البريد الإلكتروني'),
(681, 'en', 'Email'),
(682, 'ar', 'رقم الهاتف المحمول'),
(682, 'en', 'Mobile Number'),
(683, 'ar', 'اسم المستخدم'),
(683, 'en', 'Username'),
(684, 'ar', 'كلمة المرور'),
(684, 'en', 'Password Hash'),
(685, 'ar', 'رمز اعادة كلمة المرور'),
(685, 'en', 'Password Reset Token'),
(686, 'ar', 'مفتاح المصادقة'),
(686, 'en', 'Auth Key'),
(687, 'ar', 'صورة الملف الشخصي'),
(687, 'en', 'Profile Image'),
(688, 'ar', 'نقطة Tobaogo'),
(688, 'en', 'Tobaogo Point'),
(689, 'ar', 'ائتمان Tobaogo'),
(689, 'en', 'Tobaogo Credit'),
(690, 'ar', 'الحالة'),
(690, 'en', 'Status'),
(691, 'ar', 'آخر تسجيل دخول'),
(691, 'en', 'Last Login'),
(692, 'ar', 'كود الإحالة'),
(692, 'en', 'Referral Code'),
(693, 'ar', 'معرف قراءة آخر إخطار'),
(693, 'en', 'Last Read Notification ID'),
(694, 'ar', 'حالة الإشعار الترويجي'),
(694, 'en', 'Promotion Notification Status'),
(695, 'ar', 'تم انشاء كود المستخدم'),
(695, 'en', 'Created User ID'),
(696, 'ar', 'أنشئت في'),
(696, 'en', 'Created At'),
(697, 'ar', 'تم التحديث في'),
(697, 'en', 'Updated At'),
(698, 'ar', 'معرف المستخدم المحدث'),
(698, 'en', 'Updated User ID'),
(699, 'ar', 'معرف المستخدم المشار إليه'),
(699, 'en', 'Referred User ID'),
(700, 'ar', 'رمز الجهاز'),
(700, 'en', 'Device Token'),
(701, 'ar', 'نوع الجهاز'),
(701, 'en', 'Device Type'),
(702, 'ar', 'عموما Tabaogo نقطة'),
(702, 'en', 'Overall Tabaogo Point'),
(703, 'ar', 'معرف عنوان المستخدم'),
(703, 'en', 'User Address ID'),
(704, 'ar', 'مفتاح عنوان المستخدم'),
(704, 'en', 'User Address Key'),
(705, 'ar', 'هوية المستخدم'),
(705, 'en', 'User ID'),
(706, 'ar', 'خط العرض'),
(706, 'en', 'Latitude'),
(707, 'ar', 'خط الطول'),
(707, 'en', 'Longitude'),
(708, 'ar', 'حالة العنوان'),
(708, 'en', 'Address Status'),
(709, 'ar', 'أنشئت في'),
(709, 'en', 'Created At'),
(710, 'ar', 'تم انشاء كود المستخدم'),
(710, 'en', 'Created User ID'),
(711, 'ar', 'تعديل في'),
(711, 'en', 'Modified At'),
(712, 'ar', 'تعديل معرف المستخدم'),
(712, 'en', 'Modified User ID'),
(713, 'ar', 'نوع العنوان'),
(713, 'en', 'Address Type'),
(714, 'ar', 'عنوان المستخدم لانج معرف'),
(714, 'en', 'User Address Lang ID'),
(715, 'ar', 'معرف عنوان المستخدم'),
(715, 'en', 'User Address ID'),
(716, 'ar', 'رمز اللغة'),
(716, 'en', 'Language Code'),
(717, 'ar', 'اسم جهة الاتصال'),
(717, 'en', 'Address Contact Name'),
(718, 'ar', 'عنوان'),
(718, 'en', 'Address'),
(719, 'ar', 'منطقة'),
(719, 'en', 'Area'),
(720, 'ar', 'حالة'),
(720, 'en', 'State'),
(721, 'ar', 'رقم الاتصال'),
(721, 'en', 'Contact Number'),
(722, 'ar', 'العنوان'),
(722, 'en', 'Address Remark'),
(723, 'ar', 'معرف المستخدم المفضل'),
(723, 'en', 'User Favourite ID'),
(724, 'ar', 'هوية المستخدم'),
(724, 'en', 'User ID'),
(725, 'ar', 'رقم المورد'),
(725, 'en', 'Vendor ID'),
(726, 'ar', 'معرف قائمة صديق المستخدم'),
(726, 'en', 'User Friend List ID'),
(727, 'ar', 'هوية المستخدم'),
(727, 'en', 'User ID'),
(728, 'ar', 'صديق معرف المستخدم'),
(728, 'en', 'Friend User ID'),
(729, 'ar', 'أنشئت في'),
(729, 'en', 'Created At'),
(730, 'ar', 'تعديل في'),
(730, 'en', 'Modified At'),
(731, 'ar', 'معرف مستوى المستخدم'),
(731, 'en', 'User Level ID'),
(732, 'ar', 'مفتاح مستوى المستخدم'),
(732, 'en', 'User Level Key'),
(733, 'ar', 'من نقطة'),
(733, 'en', 'From Point'),
(734, 'ar', 'أن نشير'),
(734, 'en', 'To Point'),
(735, 'ar', 'مستوى'),
(735, 'en', 'Level'),
(736, 'ar', 'أنشئت في'),
(736, 'en', 'Created At'),
(737, 'ar', 'تم انشاء كود المستخدم'),
(737, 'en', 'Created User ID'),
(738, 'ar', 'تعديل في'),
(738, 'en', 'Modified At'),
(739, 'ar', 'تعديل معرف المستخدم'),
(739, 'en', 'Modified User ID'),
(740, 'ar', 'الحالة'),
(740, 'en', 'Status'),
(741, 'ar', 'معرف إعلام المستخدم'),
(741, 'en', 'User Notification ID'),
(742, 'ar', 'هوية المستخدم'),
(742, 'en', 'User ID'),
(743, 'ar', 'معرف الإخطار'),
(743, 'en', 'Notification ID'),
(744, 'ar', 'قراءة'),
(744, 'en', 'Is Read'),
(745, 'ar', 'رقم المورد'),
(745, 'en', 'Vendor ID'),
(746, 'ar', 'مفتاح البائع'),
(746, 'en', 'Vendor Key'),
(747, 'ar', 'البريد الإلكتروني'),
(747, 'en', 'Vendor Email'),
(748, 'ar', 'رقم الاتصال بالبائع'),
(748, 'en', 'Vendor Contact Number'),
(749, 'ar', 'اسم المستخدم'),
(749, 'en', 'Username'),
(750, 'ar', 'كلمة المرور'),
(750, 'en', 'Password Hash'),
(751, 'ar', 'سر كلمة السر'),
(751, 'en', 'Secret Password Hash'),
(752, 'ar', 'رمز اعادة كلمة المرور'),
(752, 'en', 'Password Reset Token'),
(753, 'ar', 'عمولة'),
(753, 'en', 'Commission'),
(754, 'ar', 'نوع المهمة'),
(754, 'en', 'Commision Type'),
(755, 'ar', 'عنوان البائع'),
(755, 'en', 'Vendor Address'),
(756, 'ar', 'قيمة سلة الحد الأدنى'),
(756, 'en', 'Minimum Cart Value'),
(757, 'ar', 'ضريبة السلع والخدمات'),
(757, 'en', 'Gst'),
(758, 'ar', 'ضريبة الخدمة'),
(758, 'en', 'Service Tax'),
(759, 'ar', 'نوع الطلب'),
(759, 'en', 'Order Type'),
(760, 'ar', 'نوع المورد'),
(760, 'en', 'Vendor Type'),
(761, 'ar', 'خيار الدفع'),
(761, 'en', 'Payment Option'),
(762, 'ar', 'معرف المدينة'),
(762, 'en', 'City ID'),
(763, 'ar', 'معرف المنطقة'),
(763, 'en', 'Area ID'),
(764, 'ar', 'المورد خط العرض'),
(764, 'en', 'Vendor Latitude'),
(765, 'ar', 'بائع خط الطول'),
(765, 'en', 'Vendor Longitude'),
(766, 'ar', 'دقائق التسليم'),
(766, 'en', 'Delivery Minutes'),
(767, 'ar', 'قبل المتاحة'),
(767, 'en', 'Preorder Available'),
(768, 'ar', 'سياسة البائع'),
(768, 'en', 'Vendor Policy'),
(769, 'ar', 'حالة البائع'),
(769, 'en', 'Vendor Status'),
(770, 'ar', 'حالة متجر البائع'),
(770, 'en', 'Vendor Shop Status'),
(771, 'ar', 'تقييم'),
(771, 'en', 'Rating'),
(772, 'ar', 'عدد التقييم'),
(772, 'en', 'Rating Count'),
(773, 'ar', 'نوع الجهاز'),
(773, 'en', 'Device Type'),
(774, 'ar', 'رمز الجهاز'),
(774, 'en', 'Device Token'),
(775, 'ar', 'هو تسجيل الدخول'),
(775, 'en', 'Is Login'),
(776, 'ar', 'أنشئت في'),
(776, 'en', 'Created At'),
(777, 'ar', 'تم انشاء كود المستخدم'),
(777, 'en', 'Created User ID'),
(778, 'ar', 'تعديل في'),
(778, 'en', 'Modified At'),
(779, 'ar', 'تعديل معرف المستخدم'),
(779, 'en', 'Modified User ID'),
(780, 'ar', 'معرف بنك المورد'),
(780, 'en', 'Vendor Bank ID'),
(781, 'ar', 'مفتاح البنك البائع'),
(781, 'en', 'Vendor Bank Key'),
(782, 'ar', 'رقم المورد'),
(782, 'en', 'Vendor ID'),
(783, 'ar', 'رقم حساب'),
(783, 'en', 'Account Number'),
(784, 'ar', 'اسم البنك'),
(784, 'en', 'Bank Name'),
(785, 'ar', 'اسم الفرع'),
(785, 'en', 'Branch Name'),
(786, 'ar', 'رقم Nric'),
(786, 'en', 'Nric Number'),
(787, 'ar', 'رقم تسجيل الشركة'),
(787, 'en', 'Company Registration Number'),
(788, 'ar', 'رقم GST'),
(788, 'en', 'Gst Number'),
(789, 'ar', 'اسم الشخص المبيعات'),
(789, 'en', 'Sales Person Name'),
(790, 'ar', 'أنشئت في'),
(790, 'en', 'Created At'),
(791, 'ar', 'تعديل في'),
(791, 'en', 'Modified At'),
(792, 'ar', 'اسم صاحب الحساب'),
(792, 'en', 'Account Holder Name'),
(793, 'ar', 'ملاحظات'),
(793, 'en', 'Remarks'),
(794, 'ar', 'فرز لا'),
(794, 'en', 'Sort No'),
(795, 'ar', 'معرف فئة البائع'),
(795, 'en', 'Vendor Category ID'),
(796, 'ar', 'رقم المورد'),
(796, 'en', 'Vendor ID'),
(797, 'ar', 'معرف الفئة'),
(797, 'en', 'Category ID'),
(798, 'ar', 'البائع لانج معرف'),
(798, 'en', 'Vendor Lang ID'),
(799, 'ar', 'رقم المورد'),
(799, 'en', 'Vendor ID'),
(800, 'ar', 'رمز اللغة'),
(800, 'en', 'Language Code'),
(801, 'ar', 'اسم البائع'),
(801, 'en', 'Vendor Name'),
(802, 'ar', 'مسار صورة البائع'),
(802, 'en', 'Vendor Image Path'),
(803, 'ar', 'وصف البائع'),
(803, 'en', 'Vendor Description'),
(804, 'ar', 'معرف نوع البائع'),
(804, 'en', 'Vendor Type ID'),
(805, 'ar', 'مفتاح نوع البائع'),
(805, 'en', 'Vendor Type Key'),
(806, 'ar', 'حالة نوع البائع'),
(806, 'en', 'Vendor Type Status'),
(807, 'ar', 'تم انشاء كود المستخدم'),
(807, 'en', 'Created User ID'),
(808, 'ar', 'أنشئت في'),
(808, 'en', 'Created At'),
(809, 'ar', 'معرف المستخدم المحدث'),
(809, 'en', 'Updated User ID'),
(810, 'ar', 'تم التحديث في'),
(810, 'en', 'Updated At'),
(811, 'ar', 'مورد نوع التفاصيل'),
(811, 'en', 'Vendor Type Detail ID'),
(812, 'ar', 'رقم المورد'),
(812, 'en', 'Vendor ID'),
(813, 'ar', 'معرف نوع البائع'),
(813, 'en', 'Vendor Type ID'),
(814, 'ar', 'بائع نوع لانج معرف'),
(814, 'en', 'Vendor Type Lang ID'),
(815, 'ar', 'معرف نوع البائع'),
(815, 'en', 'Vendor Type ID'),
(816, 'ar', 'رمز اللغة'),
(816, 'en', 'Language Code'),
(817, 'ar', 'اسم نوع المورد'),
(817, 'en', 'Vendor Type Name'),
(818, 'ar', 'مورد صورة نوع المسار'),
(818, 'en', 'Vendor Type Image Path'),
(819, 'ar', 'معرف مستخدم المسؤول'),
(819, 'en', 'Admin User ID'),
(820, 'ar', 'مفتاح المستخدم الإداري'),
(820, 'en', 'Admin User Key'),
(821, 'ar', 'نوع المستخدم'),
(821, 'en', 'User Type'),
(822, 'ar', 'الاسم الاول'),
(822, 'en', 'First Name'),
(823, 'ar', 'الكنية'),
(823, 'en', 'Last Name'),
(824, 'ar', 'عنوان بريد الكتروني'),
(824, 'en', 'Email Address'),
(825, 'ar', 'اسم المستخدم'),
(825, 'en', 'User Name'),
(826, 'ar', 'كلمة المرور'),
(826, 'en', 'Password Hash'),
(827, 'ar', 'رمز اعادة كلمة المرور'),
(827, 'en', 'Password Reset Token'),
(828, 'ar', 'كلمة السر السرية'),
(828, 'en', 'Secret Password'),
(829, 'ar', 'الحالة'),
(829, 'en', 'Status'),
(830, 'ar', 'آخر تسجيل دخول'),
(830, 'en', 'Last Login'),
(831, 'ar', 'معرف الدور'),
(831, 'en', 'Role ID'),
(832, 'ar', 'أنشئت في'),
(832, 'en', 'Created At'),
(833, 'ar', 'تم انشاء كود المستخدم'),
(833, 'en', 'Created User ID'),
(834, 'ar', 'تعديل في'),
(834, 'en', 'Modified At'),
(835, 'ar', 'تعديل معرف المستخدم'),
(835, 'en', 'Modified User ID'),
(836, 'ar', 'اسم المطعم'),
(836, 'en', 'Restaurant Name'),
(837, 'ar', 'الأحد'),
(837, 'en', 'SUNDAY'),
(838, 'ar', 'الإثنين'),
(838, 'en', 'MONDAY'),
(839, 'ar', 'الثلاثاء'),
(839, 'en', 'TUESDAY'),
(840, 'ar', 'الأربعاء'),
(840, 'en', 'WEDNESDAY'),
(841, 'ar', 'الخميس'),
(841, 'en', 'THURSDAY'),
(842, 'ar', 'يوم الجمعة'),
(842, 'en', 'FRIDAY'),
(843, 'ar', 'يوم السبت'),
(843, 'en', 'SATURDAY'),
(844, 'ar', 'هو تمكين العملاء'),
(844, 'en', 'is Enabled Customer'),
(845, 'ar', 'تم تمكين الموقع'),
(845, 'en', 'is Enabled Website'),
(846, 'ar', 'صوت ممكن'),
(846, 'en', 'Sound Enabled'),
(847, 'ar', 'هو تمكين البائع'),
(847, 'en', 'is Enabled Vendor'),
(848, 'ar', 'صوت ممكن'),
(848, 'en', 'Sound Enabled'),
(849, 'ar', 'يتم تمكين Deliveryboy'),
(849, 'en', 'is Enabled Deliveryboy'),
(850, 'ar', 'صوت ممكن'),
(850, 'en', 'Sound Enabled'),
(851, 'ar', 'الحد الأدنى من نقاط الولاء'),
(851, 'en', 'Minimum loyalty points'),
(852, 'ar', 'مساوي ل'),
(852, 'en', 'Is equal to'),
(853, 'ar', 'استضافة SMTP'),
(853, 'en', 'SMTP Host'),
(854, 'ar', 'تشفير SMTP'),
(854, 'en', 'SMTP Encryption'),
(855, 'ar', 'منفذ SMTP'),
(855, 'en', 'SMTP Port'),
(856, 'ar', 'اسم مستخدم SMTP'),
(856, 'en', 'SMTP Username'),
(857, 'ar', 'كلمة مرور SMTP'),
(857, 'en', 'SMTP Password'),
(858, 'ar', 'هو تمكين SMTP'),
(858, 'en', 'Is SMTP Enabled'),
(859, 'ar', 'معرف حساب بوابة SMS'),
(859, 'en', 'SMS Gateway Account Id'),
(860, 'ar', 'معرف مصادقة بوابة SMS'),
(860, 'en', 'SMS Gateway Auth Id'),
(861, 'ar', 'هل الرسائل القصيرة ممكن'),
(861, 'en', 'Is SMS Enabled'),
(862, 'ar', 'عمل'),
(862, 'en', 'Action'),
(863, 'ar', 'توليد كود القسيمة'),
(863, 'en', 'Generate Coupon Code'),
(865, 'ar', 'مجموع الطلبيات'),
(865, 'en', 'Total Orders'),
(866, 'ar', 'مجموع العملاء'),
(866, 'en', 'Total Customers'),
(867, 'ar', 'مجموع البائعين'),
(867, 'en', 'Total Vendors'),
(868, 'ar', 'مجموع TurnOver'),
(868, 'en', 'Total TurnOver'),
(869, 'ar', 'هل أنت متأكد أنك تريد حذف هذا السجل؟'),
(869, 'en', 'Are you sure you want to delete this record?'),
(870, 'ar', 'اختر الدور'),
(870, 'en', 'Select Role'),
(871, 'ar', 'تحديث'),
(871, 'en', 'Update'),
(872, 'ar', 'إلغاء'),
(872, 'en', 'Cancel'),
(873, 'ar', 'معلومات الشخصي'),
(873, 'en', 'Profile Info'),
(874, 'ar', 'تحديث الملف'),
(874, 'en', 'Update Profile'),
(875, 'ar', 'غير كلمة السر'),
(875, 'en', 'Change Password'),
(876, 'ar', 'إنشاء مسؤول'),
(876, 'en', 'Create Administrator'),
(877, 'ar', 'إدارة المسؤول'),
(877, 'en', 'Administrator Management'),
(878, 'ar', 'كلمة السر الجديدة'),
(878, 'en', 'New Password'),
(879, 'ar', 'تكرار كلمة مرور جديدة'),
(879, 'en', 'New password repeat'),
(880, 'ar', 'إعادة تعيين كلمة المرور'),
(880, 'en', 'Reset password'),
(881, 'ar', 'معلومات الشخصي'),
(881, 'en', 'Profile Info'),
(882, 'ar', 'حدد الدولة'),
(882, 'en', 'Select Country'),
(883, 'ar', 'اختر مدينة'),
(883, 'en', 'Select City'),
(884, 'ar', 'إدارة المناطق'),
(884, 'en', 'Area Management'),
(885, 'ar', 'تحديث المنطقة'),
(885, 'en', 'Update Area'),
(886, 'ar', 'تجاهل هذا الحقل لإنشاء إعلان بانر عن طريق اختيار اسم البائع المناسب أعلاه أو قم بمنح البانر المناسب Url لإنشاء لافتة.');
INSERT INTO `message` (`id`, `language`, `translation`) VALUES
(886, 'en', 'Ignore this field to create a Banner by choosing appropriate vendor name above or else give appropriate banner Url to create a Banner.'),
(887, 'ar', 'خلق بانر'),
(887, 'en', 'Create Banner'),
(888, 'ar', 'إدارة لافتة'),
(888, 'en', 'Banner Management'),
(889, 'ar', 'يرجى اختيار مطعم'),
(889, 'en', 'Please select a Restaurant'),
(890, 'ar', 'البحث الموقع'),
(890, 'en', 'Search Location'),
(891, 'ar', 'البحث الموقع'),
(891, 'en', 'Search Location'),
(892, 'ar', 'حدد حالة القبول'),
(892, 'en', 'Select Approval Status'),
(893, 'ar', 'حدد حالة القبول'),
(893, 'en', 'Select Approval Status'),
(894, 'ar', 'اختر نوع الطلب'),
(894, 'en', 'Select Order Type'),
(895, 'ar', 'بداية'),
(895, 'en', 'START'),
(896, 'ar', 'النهاية'),
(896, 'en', 'END'),
(897, 'ar', 'الحالة'),
(897, 'en', 'STATUS'),
(898, 'ar', 'عمل'),
(898, 'en', 'ACTION'),
(899, 'ar', 'بداية'),
(899, 'en', 'START'),
(900, 'ar', 'النهاية'),
(900, 'en', 'END'),
(901, 'ar', 'الحالة'),
(901, 'en', 'STATUS'),
(902, 'ar', 'عمل'),
(902, 'en', 'ACTION'),
(903, 'ar', 'إدارة فتحة الوقت'),
(903, 'en', 'Time Slot Management'),
(904, 'ar', 'الى الخلف'),
(904, 'en', 'back'),
(905, 'ar', 'أيام'),
(905, 'en', 'Days'),
(906, 'ar', 'ساعات لاقط'),
(906, 'en', 'Pickup Hours'),
(907, 'ar', 'ساعات التوصيل'),
(907, 'en', 'Delivery Hours'),
(908, 'ar', 'إنشاء فرع'),
(908, 'en', 'Create Branch'),
(909, 'ar', 'إدارة الفروع'),
(909, 'en', 'Branch Management'),
(910, 'ar', 'خلق'),
(910, 'en', 'Create'),
(911, 'ar', 'إدارة التقييم والمراجعة'),
(911, 'en', 'Rating and Review Management'),
(912, 'ar', 'إنشاء فئة'),
(912, 'en', 'Create Category'),
(913, 'ar', 'إدارة الفئة'),
(913, 'en', 'Category Management'),
(914, 'ar', 'تحديث الفئة'),
(914, 'en', 'Update Category'),
(915, 'ar', 'خلق المدينة'),
(915, 'en', 'Create City'),
(916, 'ar', 'إدارة المدينة'),
(916, 'en', 'City Management'),
(917, 'ar', 'تحديث المدينة'),
(917, 'en', 'Update City'),
(918, 'ar', 'إنشاء صفحة Cms'),
(918, 'en', 'Create Cms Page'),
(919, 'ar', 'إدارة CMS'),
(919, 'en', 'CMS Management'),
(920, 'ar', 'تحديث Cms الصفحة'),
(920, 'en', 'Update Cms Page'),
(921, 'ar', 'تحديث تكوين التطبيق'),
(921, 'en', 'Update Application Configuration'),
(922, 'ar', 'إعداد العملة'),
(922, 'en', 'Currency Setting'),
(923, 'ar', 'حفظ'),
(923, 'en', 'Save'),
(924, 'ar', 'إعدادات التسليم بوي'),
(924, 'en', 'Delivery Boy Settings'),
(925, 'ar', 'إعدادات الشحن التسليم'),
(925, 'en', 'Delivery Charge Settings'),
(926, 'ar', 'واحد وضع إشارة'),
(926, 'en', 'One Signal Setting'),
(927, 'ar', 'إدارة نقاط الإحالة'),
(927, 'en', 'Referral Points Management'),
(928, 'ar', 'رسالة قصيرة'),
(928, 'en', 'SMS'),
(929, 'ar', 'SMTP'),
(929, 'en', 'SMTP'),
(930, 'ar', 'Tabao Credit'),
(930, 'en', 'Tabao Credit'),
(931, 'ar', 'خلق الدولة'),
(931, 'en', 'Create Country'),
(932, 'ar', 'الإدارة القطرية'),
(932, 'en', 'Country Management'),
(933, 'ar', 'تحديث البلد'),
(933, 'en', 'Update Country'),
(934, 'ar', 'إنشاء قسيمة'),
(934, 'en', 'Create Voucher'),
(935, 'ar', 'إدارة القسيمة'),
(935, 'en', 'Coupon Management'),
(936, 'ar', 'هل أنت متأكد من أنك تريد حذف هذه القسيمة؟'),
(936, 'en', 'Are you sure you want to delete this coupon?'),
(937, 'ar', 'تحديث القسيمة'),
(937, 'en', 'Update Voucher'),
(938, 'ar', 'خلق المطبخ'),
(938, 'en', 'Create Cuisine'),
(939, 'ar', 'إدارة المطبخ'),
(939, 'en', 'Cuisine Management'),
(940, 'ar', 'هل أنت متأكد أنك تريد حذف هذا البند؟'),
(940, 'en', 'Are you sure you want to delete this item?'),
(941, 'ar', 'تحديث المطبخ'),
(941, 'en', 'Update Cuisine'),
(942, 'ar', 'أضف زون'),
(942, 'en', 'Add zon'),
(943, 'ar', 'إنشاء مجال التسليم'),
(943, 'en', 'Create Delivery Area'),
(944, 'ar', 'إدارة منطقة التسليم'),
(944, 'en', 'Delivery Area Management'),
(945, 'ar', 'تحديث منطقة التسليم'),
(945, 'en', 'Update Delivery Area'),
(946, 'ar', 'خلق ولد الصبي'),
(946, 'en', 'Create Delivery Boy'),
(947, 'ar', 'التسليم بوي الإدارة'),
(947, 'en', 'Delivery Boy Management'),
(948, 'ar', 'تحديث التسليم بوي'),
(948, 'en', 'Update Delivery Boy'),
(949, 'ar', 'Delivery Boy Info'),
(949, 'en', 'Delivery Boy Info'),
(950, 'ar', 'إدارة الاستعلام'),
(950, 'en', 'Enquiry Management'),
(951, 'ar', 'هل أنت متأكد من أنك تريد حذف هذا الاستفسار؟'),
(951, 'en', 'Are you sure you want to delete this enquiry?'),
(952, 'ar', 'إدارة الاستعلام'),
(952, 'en', 'Enquiry Management'),
(953, 'ar', 'تحقيق'),
(953, 'en', 'Enquiry'),
(954, 'ar', 'تحديث المكونات'),
(954, 'en', 'Update Ingredient'),
(955, 'ar', 'إدارة المكونات'),
(955, 'en', 'Ingredient Management'),
(956, 'ar', 'خلق عنصر'),
(956, 'en', 'Create Ingredient'),
(957, 'ar', 'خلق البند'),
(957, 'en', 'Create Item'),
(958, 'ar', 'إدارة البند'),
(958, 'en', 'Item Management'),
(959, 'ar', 'تحديث البند'),
(959, 'en', 'Update Item'),
(960, 'ar', 'يرجى تحديد نوع المكون'),
(960, 'en', 'Please select a ingredient type'),
(961, 'ar', 'لا يمكن إنشاء مجموعة المكونات فارغة مع المكونات الفارغة'),
(961, 'en', 'Ingredient Group cannot be created Empty with empty ingredients'),
(962, 'ar', 'إنشاء مجموعة المكونات'),
(962, 'en', 'Create Ingredient Group'),
(963, 'ar', 'مجموعة المكونات'),
(963, 'en', 'Ingredient Group'),
(964, 'ar', 'تحديث مكونات المجموعة'),
(964, 'en', 'Update Ingredient Group'),
(965, 'ar', 'نشيط'),
(965, 'en', 'Active'),
(966, 'ar', 'غير نشط'),
(966, 'en', 'Inactive'),
(967, 'ar', 'لا يمكن إنشاء مجموعة تعيين العناصر باستخدام مجموعات المكونات الفارغة'),
(967, 'en', 'Item Mapping Group cannot be created with  Empty ingredient groups'),
(968, 'ar', 'على الأقل اسحب مجموعة قيمة واحدة!'),
(968, 'en', 'Atleast drag one value group!'),
(969, 'ar', 'تكوين عنصر البند'),
(969, 'en', 'Create Item Mapping'),
(970, 'ar', 'تخطيط العنصر'),
(970, 'en', 'Item Mapping'),
(971, 'ar', 'تحديث البند البند'),
(971, 'en', 'Update Item Mapping'),
(972, 'ar', 'خلق نوع البند'),
(972, 'en', 'Create Item Type'),
(973, 'ar', 'إدارة نوع البند'),
(973, 'en', 'Item Type Management'),
(974, 'ar', 'تحديث نوع البند'),
(974, 'en', 'Update Item Type'),
(975, 'ar', 'اسم المستخدم'),
(975, 'en', 'Username'),
(976, 'ar', 'كلمه السر'),
(976, 'en', 'Password'),
(977, 'ar', 'هل نسيت كلمة المرور'),
(977, 'en', 'Forgot Password'),
(978, 'ar', 'البريد الإلكتروني'),
(978, 'en', 'Email'),
(979, 'ar', 'إنشاء منتج مول'),
(979, 'en', 'Create Mall Product'),
(980, 'ar', 'مول إدارة المنتج'),
(980, 'en', 'Mall Product Management'),
(981, 'ar', 'تحديث المنتج مول'),
(981, 'en', 'Update Mall Product'),
(982, 'ar', 'إنشاء النشرة الإخبارية'),
(982, 'en', 'Create Newsletter'),
(983, 'ar', 'إدارة النشرة الإخبارية'),
(983, 'en', 'Newsletter Management'),
(984, 'ar', 'تحديث النشرة الإخبارية'),
(984, 'en', 'Update Newsletter'),
(985, 'ar', 'إدارة المشتركين'),
(985, 'en', 'Subscribers Management'),
(986, 'ar', 'أفعال'),
(986, 'en', 'Actions'),
(987, 'ar', 'خلق الإخطار'),
(987, 'en', 'Create Notification'),
(988, 'ar', 'إدارة الإخطار'),
(988, 'en', 'Notification Management'),
(989, 'ar', 'تحديث الاشعارات'),
(989, 'en', 'Update Notification'),
(990, 'ar', 'حدد البائع'),
(990, 'en', 'Select Vendor'),
(991, 'ar', 'اختر الفرع'),
(991, 'en', 'Select Branch'),
(992, 'ar', 'اختر نوع الطلب'),
(992, 'en', 'Select Order Type'),
(993, 'ar', 'اختر نوع التسليم'),
(993, 'en', 'Select Delivery Type'),
(994, 'ar', 'موقع التسليم'),
(994, 'en', 'Delivery Location'),
(995, 'ar', 'قم بسحب وإفلات العلامة لموقع جديد لوضع أمر العميل وإلا سيتم اعتبار موقع العميل الافتراضي لمعالجة الطلب.'),
(995, 'en', 'Drag and Drop the marker for a new location to place order for customer or else default customer location will be considered to process the order.'),
(996, 'ar', 'اسم العنصر'),
(996, 'en', 'Item Name'),
(997, 'ar', 'كمية'),
(997, 'en', 'Quantity'),
(998, 'ar', 'المجموع الفرعي'),
(998, 'en', 'Sub total'),
(999, 'ar', 'إنشاء النظام'),
(999, 'en', 'Create Order'),
(1000, 'ar', 'اسم:'),
(1000, 'en', 'Name:'),
(1001, 'ar', 'التليفون المحمول:'),
(1001, 'en', 'Mobile:'),
(1002, 'ar', 'تعيين'),
(1002, 'en', 'Assign'),
(1003, 'ar', 'إدارة النظام'),
(1003, 'en', 'Order Management'),
(1004, 'ar', 'رقم الطلب'),
(1004, 'en', 'Order Number'),
(1005, 'ar', 'الكل'),
(1005, 'en', 'All'),
(1006, 'ar', 'elivery تفاصيل الفتى'),
(1006, 'en', 'elivery Boy Details'),
(1007, 'ar', 'يعيش تسليم الصبي تتبع'),
(1007, 'en', 'Live Delivery Boy Tracking'),
(1008, 'ar', 'تفاصيل العميل'),
(1008, 'en', 'Customer Details'),
(1009, 'ar', 'تفاصيل الفرع'),
(1009, 'en', 'Branch Details'),
(1010, 'ar', 'اسم:'),
(1010, 'en', 'Name:'),
(1011, 'ar', 'التليفون المحمول:'),
(1011, 'en', 'Mobile:'),
(1012, 'ar', 'تواصل بالبريد الاكتروني:'),
(1012, 'en', 'Contact Email:'),
(1013, 'ar', 'عنوان :'),
(1013, 'en', 'Address :'),
(1014, 'ar', 'تفاصيل الطلب'),
(1014, 'en', 'Order Details'),
(1015, 'ar', 'رقم التعريف الخاص بالطلب:'),
(1015, 'en', 'Order ID:'),
(1016, 'ar', 'تاريخ الطلب'),
(1016, 'en', 'Order Date'),
(1017, 'ar', 'نوع الطلب :'),
(1017, 'en', 'Order Type :'),
(1018, 'ar', 'خيار الدفع'),
(1018, 'en', 'Payment Option'),
(1019, 'ar', 'حالة السداد'),
(1019, 'en', 'Payment Status'),
(1020, 'ar', 'S.No.'),
(1020, 'en', 'S.No.'),
(1021, 'ar', 'اسم العنصر'),
(1021, 'en', 'Item Name'),
(1022, 'ar', 'الكمية'),
(1022, 'en', 'Qty'),
(1023, 'ar', 'السعر'),
(1023, 'en', 'Price'),
(1024, 'ar', 'تشكيلة'),
(1024, 'en', 'Variety'),
(1025, 'ar', 'تفاصيل العميل'),
(1025, 'en', 'Customer Details'),
(1026, 'ar', 'اسم:'),
(1026, 'en', 'Name:'),
(1027, 'ar', 'التليفون المحمول:'),
(1027, 'en', 'Mobile:'),
(1028, 'ar', 'عنوان الايميل:'),
(1028, 'en', 'Email Id:'),
(1029, 'ar', 'عنوان التسليم:'),
(1029, 'en', 'Delivery Address:'),
(1030, 'ar', 'تفاصيل المنتج'),
(1030, 'en', 'Product Details'),
(1031, 'ar', 'معرف المنتج:'),
(1031, 'en', 'Product Id:'),
(1032, 'ar', 'اسم المنتج:'),
(1032, 'en', 'Product Name:'),
(1033, 'ar', 'وصف المنتج:'),
(1033, 'en', 'Product Description:'),
(1034, 'ar', 'سعر المنتج:'),
(1034, 'en', 'Product Price:'),
(1035, 'ar', 'تفاصيل الطلب'),
(1035, 'en', 'Order Details'),
(1036, 'ar', 'رقم الطلب'),
(1036, 'en', 'Order Number'),
(1037, 'ar', 'تاريخ الطلب:'),
(1037, 'en', 'Order Date:'),
(1038, 'ar', 'حالة الطلب :'),
(1038, 'en', 'Order Status :'),
(1039, 'ar', 'إدارة طلب منتج مول'),
(1039, 'en', 'Mall Product Order Management'),
(1040, 'ar', 'تفاصيل طلب شراء مول'),
(1040, 'en', 'Mall Product Order Details'),
(1041, 'ar', 'طباعة'),
(1041, 'en', 'Print'),
(1042, 'ar', 'قريب'),
(1042, 'en', 'Close'),
(1043, 'ar', 'تفاصيل ustomer'),
(1043, 'en', 'ustomer Details'),
(1044, 'ar', 'اسم:'),
(1044, 'en', 'Name:'),
(1045, 'ar', 'التليفون المحمول:'),
(1045, 'en', 'Mobile:'),
(1046, 'ar', 'عنوان الايميل:'),
(1046, 'en', 'Email Id:'),
(1047, 'ar', 'عنوان التسليم:'),
(1047, 'en', 'Delivery Address:'),
(1048, 'ar', 'تفاصيل المنتج'),
(1048, 'en', 'Product Details'),
(1049, 'ar', 'معرف المنتج:'),
(1049, 'en', 'Product Id:'),
(1050, 'ar', 'اسم المنتج:'),
(1050, 'en', 'Product Name:'),
(1051, 'ar', 'وصف المنتج:'),
(1051, 'en', 'Product Description:'),
(1052, 'ar', 'سعر المنتج:'),
(1052, 'en', 'Product Price:'),
(1053, 'ar', 'تفاصيل الطلب'),
(1053, 'en', 'Order Details'),
(1054, 'ar', 'رقم الطلب :'),
(1054, 'en', 'Order Number :'),
(1055, 'ar', 'تاريخ الطلب:'),
(1055, 'en', 'Order Date:'),
(1056, 'ar', 'حالة الطلب :'),
(1056, 'en', 'Order Status :'),
(1057, 'ar', 'طلب قطعة'),
(1057, 'en', 'Parcel Order'),
(1058, 'ar', 'تفاصيل طلب الطرد'),
(1058, 'en', 'Parcel Order Details'),
(1059, 'ar', 'إلغاء'),
(1059, 'en', 'Cancel'),
(1060, 'ar', 'تفاصيل العميل'),
(1060, 'en', 'Customer Details'),
(1061, 'ar', 'تفاصيل الاستلام'),
(1061, 'en', 'Pickup Details'),
(1062, 'ar', 'التليفون المحمول:'),
(1062, 'en', 'Mobile:'),
(1063, 'ar', 'عنوان:'),
(1063, 'en', 'Address:'),
(1064, 'ar', 'تاريخ:'),
(1064, 'en', 'Date:'),
(1065, 'ar', 'تفاصيل التسليم'),
(1065, 'en', 'Delivery Details'),
(1066, 'ar', 'اسم:'),
(1066, 'en', 'Name:'),
(1067, 'ar', 'التليفون المحمول:'),
(1067, 'en', 'Mobile:'),
(1068, 'ar', 'عنوان:'),
(1068, 'en', 'Address:'),
(1069, 'ar', 'تاريخ:'),
(1069, 'en', 'Date:'),
(1070, 'ar', 'معلومات المنتج'),
(1070, 'en', 'Product Information'),
(1071, 'ar', 'وصف المنتج :'),
(1071, 'en', 'Product Description :'),
(1072, 'ar', 'تفاصيل الطلب'),
(1072, 'en', 'Order Details'),
(1073, 'ar', 'خيار الدفع :'),
(1073, 'en', 'Payment Option :'),
(1074, 'ar', 'مزود الدفع:'),
(1074, 'en', 'Payment Provider :'),
(1075, 'ar', 'حالة السداد'),
(1075, 'en', 'Payment Status'),
(1076, 'ar', 'حاصل الجمع'),
(1076, 'en', 'Subtotal'),
(1077, 'ar', 'رسوم التوصيل'),
(1077, 'en', 'Delivery Fee'),
(1078, 'ar', 'مجموع'),
(1078, 'en', 'Total'),
(1079, 'ar', 'خلق نوع البند الطرود'),
(1079, 'en', 'Create Parcel Item Type'),
(1080, 'ar', 'نوع البند الطرفي'),
(1080, 'en', 'Parcel Item Type'),
(1081, 'ar', 'هل أنت متأكد من أنك تريد حذف هذه القسيمة؟'),
(1081, 'en', 'Are you sure you want to delete this coupon?'),
(1082, 'ar', 'تحديث نوع البند الطرفي'),
(1082, 'en', 'Update Parcel Item Type'),
(1083, 'ar', 'إنشاء الترويج'),
(1083, 'en', 'Create Promotion'),
(1084, 'ar', 'إدارة الترويج'),
(1084, 'en', 'Promotion Management'),
(1085, 'ar', 'تحديث الترقية'),
(1085, 'en', 'Update Promotion'),
(1086, 'ar', 'يرجى تحديد خيار'),
(1086, 'en', 'Please select an Option'),
(1087, 'ar', 'إرسال'),
(1087, 'en', 'Send'),
(1088, 'ar', 'دفع الإخطار'),
(1088, 'en', 'Push Notification'),
(1089, 'ar', 'قواعد الوصول:'),
(1089, 'en', 'Access Rules:'),
(1090, 'ar', 'ملحوظة!'),
(1090, 'en', 'NOTE!'),
(1091, 'ar', 'السماح'),
(1091, 'en', 'allow'),
(1092, 'ar', 'أنكر'),
(1092, 'en', 'deny'),
(1093, 'ar', 'الافتراضي'),
(1093, 'en', 'default'),
(1094, 'ar', 'حدث الخطأ أعلاه بينما كان خادم الويب يعالج طلبك.'),
(1094, 'en', 'The above error occurred while the Web server was processing your request.'),
(1095, 'ar', 'يرجى الاتصال بنا إذا كنت تعتقد أن هذا خطأ في الخادم. شكرا لكم.'),
(1095, 'en', 'Please contact us if you think this is a server error. Thank you.'),
(1096, 'ar', 'التحقق من الإخطار'),
(1096, 'en', 'Checking Notification'),
(1097, 'ar', 'تحياتي الحارة'),
(1097, 'en', 'Best Regards'),
(1098, 'ar', 'للمزيد من المعلومات'),
(1098, 'en', 'For more information'),
(1099, 'ar', 'إرسال إعلام الدفع'),
(1099, 'en', 'Send Push Notification'),
(1100, 'ar', 'إنشاء نوع المورد'),
(1100, 'en', 'Create Vendor Type'),
(1101, 'ar', 'إدارة نوع المورد'),
(1101, 'en', 'Vendor Type Management'),
(1102, 'ar', 'تحديث نوع البائع'),
(1102, 'en', 'Update Vendor Type'),
(1103, 'ar', 'إدارة دفع البائع'),
(1103, 'en', 'Vendor Payment Management'),
(1104, 'ar', 'خلق تفاصيل بنك البائع'),
(1104, 'en', 'Create Vendor Bank Detail'),
(1105, 'ar', 'تحديث بنك التفاصيل التفاصيل'),
(1105, 'en', 'Update Vendor Bank Detail'),
(1106, 'ar', 'خلق البائع'),
(1106, 'en', 'Create Vendor'),
(1107, 'ar', 'تحديث العميل'),
(1107, 'en', 'Update Customer'),
(1108, 'ar', 'سجل النشاطات'),
(1108, 'en', 'Activity Log'),
(1109, 'ar', 'هل أنت متأكد أنك تريد حذف هذا السجل؟'),
(1109, 'en', 'Are you sure you want to delete this record?'),
(1110, 'ar', 'نشيط'),
(1110, 'en', 'Active'),
(1111, 'ar', 'غير نشط'),
(1111, 'en', 'Inactive'),
(1112, 'ar', 'إنشاء منطقة'),
(1112, 'en', 'Create Area'),
(1113, 'ar', 'نوع العنوان'),
(1113, 'en', 'Address Type'),
(1114, 'ar', 'تحديث المنطقة'),
(1114, 'en', 'Update Area'),
(1115, 'ar', 'تحديث بانر'),
(1115, 'en', 'Update Banner'),
(1116, 'ar', 'سبب عدم توفر المتجر'),
(1116, 'en', 'Reason for Shop Unavailability'),
(1117, 'ar', 'منطقة التسليم'),
(1117, 'en', 'Delivery Area'),
(1118, 'ar', 'إدارة الضرائب'),
(1118, 'en', 'Tax Management'),
(1119, 'ar', 'خلق الضرائب'),
(1119, 'en', 'Create Tax'),
(1120, 'ar', 'تجاهل هذا الحقل لإنشاء عنصر خاص اليوم عن طريق اختيار اسم البائع المناسب أدناه أو تقديم عنوان Url المناسب لإنشاء عنصر خاص اليوم.'),
(1120, 'en', 'Ignore this field to create a Today Special Item by choosing appropriate vendor name below or else give appropriate Item Url to create a Today Special Item.'),
(1121, 'ar', 'خلق اليوم البند الخاص'),
(1121, 'en', 'Create Today Special Item'),
(1122, 'ar', 'اليوم الإدارة الخاصة'),
(1122, 'en', 'Today Special Management'),
(1123, 'ar', 'تحديث اليوم البند الخاص'),
(1123, 'en', 'Update Today Special Item'),
(1124, 'ar', 'إنشاء تفاصيل تحويل المحفظة'),
(1124, 'en', 'Create Wallet Conversion Details'),
(1125, 'ar', 'إدارة معدل تحويل المحفظة'),
(1125, 'en', 'Wallet Conversion Rate Management'),
(1126, 'ar', 'تحديث تفاصيل تحويل المحفظة'),
(1126, 'en', 'Update Wallet Conversion Details'),
(1127, 'ar', 'خلق العملاء'),
(1127, 'en', 'Create Customer'),
(1128, 'ar', 'ادارة الزبائن'),
(1128, 'en', 'Customer Management'),
(1129, 'ar', 'خلق مستوى العملاء'),
(1129, 'en', 'Create Customer Level'),
(1130, 'ar', 'إدارة مستوى العملاء'),
(1130, 'en', 'Customer Level Management'),
(1131, 'ar', 'تحديث مستوى العملاء'),
(1131, 'en', 'Update Customer Level'),
(1132, 'ar', 'تحديث البائع'),
(1132, 'en', 'Update Vendor'),
(1133, 'ar', 'خلق دور'),
(1133, 'en', 'Create Role'),
(1134, 'ar', 'تحديث دور'),
(1134, 'en', 'Update Role'),
(1135, 'ar', 'أنت لا'),
(1135, 'en', 'YOU DON'),
(1136, 'ar', 'لا داعى للقلق! انه \\'),
(1136, 'en', 'No worries! It\\'),
(1137, 'ar', 'سجل النشاطات'),
(1137, 'en', 'Activity Log'),
(1138, 'ar', 'توليد كود القسيمة'),
(1138, 'en', 'Generate Coupon Code'),
(1139, 'ar', 'ضبط'),
(1139, 'en', 'Setting'),
(1140, 'ar', 'الصورة'),
(1140, 'en', 's'),
(1141, 'ar', 'تكوين التطبيق'),
(1141, 'en', 'Application Configuration'),
(1142, 'ar', 'وسائل الاعلام الاجتماعية'),
(1142, 'en', 'Social Media'),
(1143, 'ar', 'رسالة قصيرة'),
(1143, 'en', 'SMS'),
(1144, 'ar', 'SMTP'),
(1144, 'en', 'SMTP'),
(1145, 'ar', 'إشارة واحدة'),
(1145, 'en', 'One Signal'),
(1146, 'ar', 'دقة'),
(1146, 'en', 'Currency'),
(1147, 'ar', 'وقت المسافة'),
(1147, 'en', 'Distance Time'),
(1148, 'ar', 'فتى التوصيل'),
(1148, 'en', 'Delivery Boy'),
(1149, 'ar', 'رسوم التوصيل'),
(1149, 'en', 'Delivery Charge'),
(1150, 'ar', 'إعلام'),
(1150, 'en', 'Notification'),
(1151, 'ar', 'تنبيهات التطبيق'),
(1151, 'en', 'App Notification'),
(1152, 'ar', 'دفع الإخطار'),
(1152, 'en', 'Push Notification'),
(1153, 'ar', 'إدارة القسائم'),
(1153, 'en', 'Voucher Management'),
(1154, 'ar', 'بند'),
(1154, 'en', 'Item'),
(1155, 'ar', 'إدارة الفئة'),
(1155, 'en', 'Category Management'),
(1156, 'ar', 'إدارة البند'),
(1156, 'en', 'Item Management'),
(1157, 'ar', 'إدارة نوع البند'),
(1157, 'en', 'Item Type Management'),
(1158, 'ar', 'إدارة المكونات'),
(1158, 'en', 'Ingredient Management'),
(1159, 'ar', 'إدارة المجموعة المكونة'),
(1159, 'en', 'Ingredient Group Management'),
(1160, 'ar', 'إدارة تخطيط العناصر'),
(1160, 'en', 'Item Mapping Management'),
(1161, 'ar', 'إدارة المطبخ'),
(1161, 'en', 'Cuisine Management'),
(1162, 'ar', 'بائع'),
(1162, 'en', 'Vendor'),
(1163, 'ar', 'إدارة البائعين'),
(1163, 'en', 'Vendor Management'),
(1164, 'ar', 'إدارة الفروع'),
(1164, 'en', 'Branch Management'),
(1165, 'ar', 'إدارة منطقة التسليم'),
(1165, 'en', 'Delivery Area Management'),
(1166, 'ar', 'إدارة نوع المورد'),
(1166, 'en', 'Vendor Type Management'),
(1167, 'ar', 'إدارة تفاصيل بنك البائع'),
(1167, 'en', 'Vendor Bank Details Management'),
(1168, 'ar', 'إدارة دفع البائع'),
(1168, 'en', 'Vendor Payment Management'),
(1169, 'ar', 'طلب'),
(1169, 'en', 'Order'),
(1170, 'ar', 'زبون'),
(1170, 'en', 'Customer'),
(1171, 'ar', 'ادارة الزبائن'),
(1171, 'en', 'Customer Management'),
(1172, 'ar', 'إدارة النشرة الإخبارية'),
(1172, 'en', 'Newsletter Management'),
(1173, 'ar', 'قائمة المشتركين قائمة'),
(1173, 'en', 'Subscribers List Management'),
(1174, 'ar', 'عنوان'),
(1174, 'en', 'Address'),
(1175, 'ar', 'إدارة المدينة'),
(1175, 'en', 'City Management'),
(1176, 'ar', 'الإدارة القطرية'),
(1176, 'en', 'Country Management'),
(1177, 'ar', 'إدارة المناطق'),
(1177, 'en', 'Area Management'),
(1178, 'ar', 'نوع العنوان'),
(1178, 'en', 'Address Type'),
(1179, 'ar', 'تحقيق'),
(1179, 'en', 'Enquiry'),
(1180, 'ar', 'CMS'),
(1180, 'en', 'CMS'),
(1181, 'ar', 'التسليم بوي الإدارة'),
(1181, 'en', 'Delivery Boy Management'),
(1182, 'ar', 'إدارة التقييم والمراجعة'),
(1182, 'en', 'Rating and Review Management'),
(1183, 'ar', 'سجل النشاطات'),
(1183, 'en', 'Activity Log'),
(1184, 'ar', 'وظيفة'),
(1184, 'en', 'Role'),
(1185, 'ar', 'إدارة الدور'),
(1185, 'en', 'Role Management'),
(1186, 'ar', 'إدارة المسؤول'),
(1186, 'en', 'Administrator Management'),
(1187, 'ar', 'لوحة القيادة'),
(1187, 'en', 'Dashboard'),
(1188, 'ar', 'الإعدادات'),
(1188, 'en', 'Settings'),
(1189, 'ar', 'اسم المنطقة'),
(1189, 'en', 'Area Name'),
(1190, 'ar', 'اسم المستخدم المسؤول'),
(1190, 'en', 'Admin Username'),
(1191, 'ar', 'اسم الدور'),
(1191, 'en', 'Role Name'),
(1192, 'ar', 'كلمة المرور الحالية'),
(1192, 'en', 'urrent password'),
(1193, 'ar', 'كلمة السر الجديدة'),
(1193, 'en', 'New password'),
(1194, 'ar', 'تكرار كلمة مرور جديدة'),
(1194, 'en', 'New password repeat'),
(1195, 'ar', 'اسم المنطقة'),
(1195, 'en', 'Area Name'),
(1196, 'ar', 'اسم الدولة'),
(1196, 'en', 'Country Name'),
(1197, 'ar', 'اسم المدينة'),
(1197, 'en', 'City Name'),
(1198, 'ar', 'اسم البائع'),
(1198, 'en', 'Vendor Name'),
(1199, 'ar', 'اسم المطبخ'),
(1199, 'en', 'Cuisine Name'),
(1200, 'ar', 'السبب'),
(1200, 'en', 'Reason'),
(1201, 'ar', 'رسوم التوصيل اضافية لكل كيلومتر'),
(1201, 'en', 'Delivery Charge Extra Per Km'),
(1202, 'ar', 'تسليم قاعدة كم'),
(1202, 'en', 'Delivery Base Km'),
(1203, 'ar', 'صورة بانر'),
(1203, 'en', 'Banner Image'),
(1204, 'ar', 'اسم البائع'),
(1204, 'en', 'Vendor Name'),
(1205, 'ar', 'اسم المدينة'),
(1205, 'en', 'City Name'),
(1206, 'ar', 'مناطق التسليم'),
(1206, 'en', 'Delivery Areas'),
(1207, 'ar', 'صورة الفئة'),
(1207, 'en', 'Category Image'),
(1208, 'ar', 'اسم المدينة'),
(1208, 'en', 'City Name'),
(1209, 'ar', 'عنوان الصفحة'),
(1209, 'en', 'Page Title'),
(1210, 'ar', 'محتوى الصفحة'),
(1210, 'en', 'Page Content'),
(1211, 'ar', 'حساب نقاط الولاء؟'),
(1211, 'en', 'Calculate loyalty points on?'),
(1212, 'ar', '1 رينغيت ماليزي (في نقاط الائتمان)'),
(1212, 'en', '1 RM (in credit points)'),
(1213, 'ar', '1 كم (بالدقائق)'),
(1213, 'en', '1 KM (in minutes)'),
(1214, 'ar', 'رمز العملة'),
(1214, 'en', 'Currency Code'),
(1215, 'ar', 'ضريبة الخدمة (٪'),
(1215, 'en', 'Service tax(%'),
(1216, 'ar', 'رابط أبستور'),
(1216, 'en', 'Appstore Link'),
(1217, 'ar', 'رابط Playstore'),
(1217, 'en', 'Playstore Link'),
(1218, 'ar', 'كوالالمبور'),
(1218, 'en', 'Kuala Lumpu'),
(1219, 'ar', 'ملقا'),
(1219, 'en', 'Melaka'),
(1220, 'ar', 'سيلانغور'),
(1220, 'en', 'Selangor'),
(1221, 'ar', 'رمز العملة'),
(1221, 'en', 'Currency Symbol'),
(1222, 'ar', 'تطبيق العميل OneSignal معرف التطبيق'),
(1222, 'en', 'Customer App OneSignal App ID'),
(1223, 'ar', 'مفتاح واجهة برمجة تطبيقات تأكيد دفع العملاء'),
(1223, 'en', 'Customer Push Notification Rest API Key'),
(1224, 'ar', 'بائع التطبيق التطبيق OneSignal معرف'),
(1224, 'en', 'Vendor App OneSignal App ID'),
(1225, 'ar', 'Delivery Boy App OneSignal App ID'),
(1225, 'en', 'Delivery Boy App OneSignal App ID'),
(1226, 'ar', 'شعار الموقع'),
(1226, 'en', 'Site Logo'),
(1227, 'ar', 'Fav Logo'),
(1227, 'en', 'Fav Logo'),
(1228, 'ar', 'صورة العرض'),
(1228, 'en', 'Offer Image'),
(1229, 'ar', 'صورة العنصر النائب'),
(1229, 'en', 'Placeholder Image'),
(1230, 'ar', 'اسم الدولة'),
(1230, 'en', 'Country Name'),
(1231, 'ar', 'اسم الزبون'),
(1231, 'en', 'Customer Name'),
(1232, 'ar', 'اسم البائع'),
(1232, 'en', 'Vendor Name'),
(1233, 'ar', 'صورة المطبخ'),
(1233, 'en', 'Cuisine Image'),
(1234, 'ar', 'البند إيماج'),
(1234, 'en', 'Item Imag'),
(1235, 'ar', 'اسم البائع'),
(1235, 'en', 'Vendor Name'),
(1236, 'ar', 'اسم الفرع'),
(1236, 'en', 'Branch Name'),
(1237, 'ar', 'اسم التصنيف'),
(1237, 'en', 'Category Name'),
(1238, 'ar', 'صورة البند'),
(1238, 'en', 'Item Image'),
(1239, 'ar', 'حالة المكونات'),
(1239, 'en', 'Ingredient Status'),
(1240, 'ar', 'اسم العنصر'),
(1240, 'en', 'Item Name'),
(1241, 'ar', 'حالة التعيين'),
(1241, 'en', 'Mapping Status'),
(1242, 'ar', 'مجموعة المكونات'),
(1242, 'en', 'Ingredient Group'),
(1243, 'ar', 'نوع العنصر'),
(1243, 'en', 'Item Type'),
(1244, 'ar', 'صورة المنتج'),
(1244, 'en', 'Product Image'),
(1245, 'ar', 'صورة النشرة الإخبارية'),
(1245, 'en', 'Newsletter Image'),
(1246, 'ar', 'صورة الإخطار'),
(1246, 'en', 'Notification Image'),
(1247, 'ar', 'اسم البائع'),
(1247, 'en', 'Vendor Name'),
(1248, 'ar', 'اسم الفرع'),
(1248, 'en', 'Branch Name'),
(1249, 'ar', 'البريد الإلكتروني'),
(1249, 'en', 'Email'),
(1250, 'ar', 'رقم الطلب'),
(1250, 'en', 'Order Number'),
(1251, 'ar', 'اسم الزبون'),
(1251, 'en', 'Customer Name'),
(1252, 'ar', 'طلب الحجز'),
(1252, 'en', 'Order Booking'),
(1253, 'ar', 'نوع البند الطرفي'),
(1253, 'en', 'Parcel Item Type'),
(1254, 'ar', 'صورة الترويج'),
(1254, 'en', 'Promotion Image'),
(1255, 'ar', 'اسم الدولة'),
(1255, 'en', 'Country Name'),
(1256, 'ar', 'اليوم صورة خاصة'),
(1256, 'en', 'Today Special Image'),
(1257, 'ar', 'قيمة التحويل (RM)'),
(1257, 'en', 'Conversion value (RM)'),
(1258, 'ar', 'معدل التحويل'),
(1258, 'en', 'Conversion rate'),
(1259, 'ar', 'نقاط طاباو'),
(1259, 'en', 'Free Tabao Points'),
(1260, 'ar', 'زبون'),
(1260, 'en', 'Customer'),
(1261, 'ar', 'عنوان العميل'),
(1261, 'en', 'Customer Address'),
(1262, 'ar', 'عنوان التسليم'),
(1262, 'en', 'Delivery Address'),
(1263, 'ar', 'منطقة التسليم'),
(1263, 'en', 'Delivery Area'),
(1264, 'ar', 'حالة التسليم'),
(1264, 'en', 'Delivery State'),
(1265, 'ar', 'اسم المستوى'),
(1265, 'en', 'Level Name'),
(1266, 'ar', 'من النقاط (TP)'),
(1266, 'en', 'From Points(TP)'),
(1267, 'ar', 'إلى النقاط (TP)'),
(1267, 'en', 'To Points(TP)'),
(1268, 'ar', 'صورة البائع'),
(1268, 'en', 'Vendor Image'),
(1269, 'ar', 'اسم البائع'),
(1269, 'en', 'Vendor Name'),
(1270, 'ar', 'رقم NRIC'),
(1270, 'en', 'NRIC Number'),
(1271, 'ar', 'اسم البائع'),
(1271, 'en', 'Vendor Name'),
(1272, 'ar', 'اسم التصنيف'),
(1272, 'en', 'Category Name'),
(1273, 'ar', 'اسم المطبخ'),
(1273, 'en', 'Cuisine Name'),
(1274, 'ar', 'صورة نوع البائع'),
(1274, 'en', 'Vendor Type Image'),
(1275, 'ar', 'اسم نوع المورد'),
(1275, 'en', 'Vendor Type Name'),
(1276, 'ar', 'نوع المستخدم'),
(1276, 'en', 'User Type'),
(1277, 'ar', 'نوع التطبيق'),
(1277, 'en', 'App Type'),
(1278, 'ar', 'رسالة'),
(1278, 'en', 'Message'),
(1279, 'ar', 'نوع'),
(1279, 'en', 'Type'),
(1280, 'ar', 'معرف البريد الإلكتروني / الجوال لا'),
(1280, 'en', 'Email Id/ Mobile no'),
(1281, 'ar', 'التطبيق مثبت العميل'),
(1281, 'en', 'App Installed Customer'),
(1282, 'ar', 'كل العملاء'),
(1282, 'en', 'All Customer'),
(1283, 'ar', 'البريد الإلكتروني'),
(1283, 'en', 'Email'),
(1284, 'ar', 'رسالة قصيرة'),
(1284, 'en', 'SMS'),
(1285, 'ar', 'ذكري المظهر'),
(1285, 'en', 'Android'),
(1286, 'ar', 'IOS'),
(1286, 'en', 'IOS'),
(1287, 'ar', 'الكل'),
(1287, 'en', 'All'),
(1288, 'ar', 'دخول المشرف'),
(1288, 'en', 'Admin Login'),
(1289, 'ar', 'هل نسيت كلمة المرور'),
(1289, 'en', 'Forgot Password'),
(1290, 'ar', 'تسجيل الدخول'),
(1290, 'en', 'Login'),
(1291, 'ar', 'هل نسيت كلمة المرور؟'),
(1291, 'en', 'Forgot password?'),
(1292, 'ar', 'اسم المستخدم أو كلمة المرور غير صحيحة.'),
(1292, 'en', 'Incorrect username or password.'),
(1293, 'ar', 'مرحبا'),
(1293, 'en', 'Hi'),
(1294, 'ar', 'نعم فعلا'),
(1294, 'en', 'yes'),
(1295, 'ar', 'لا'),
(1295, 'en', 'no'),
(1296, 'ar', 'عالمي'),
(1296, 'en', 'Global'),
(1297, 'ar', 'جميع المستخدمين'),
(1297, 'en', 'All User'),
(1298, 'ar', 'شبكة'),
(1298, 'en', 'Web'),
(1299, 'ar', 'التطبيق'),
(1299, 'en', 'App'),
(1300, 'ar', 'المبلغ القائم'),
(1300, 'en', 'Amount Based'),
(1301, 'ar', 'النسبة المئوية القائمة'),
(1301, 'en', 'Percentage Based'),
(1302, 'ar', 'متجر'),
(1302, 'en', 'Shop'),
(1303, 'ar', 'قائمة طعام'),
(1303, 'en', 'Menu'),
(1304, 'ar', 'فئة المتجر'),
(1304, 'en', 'Shop Category'),
(1305, 'ar', 'فئة القائمة'),
(1305, 'en', 'Menu Category'),
(1306, 'ar', 'التعديل'),
(1306, 'en', 'Modifier'),
(1307, 'ar', 'دورة فرعية'),
(1307, 'en', 'Sub Course'),
(1308, 'ar', 'لا يمكن إنشاء مجموعة تعيين العناصر باستخدام مجموعات المكونات الفارغة'),
(1308, 'en', 'Item Mapping Group cannot be created with  Empty ingredient groups'),
(1309, 'ar', 'على الأقل اسحب مجموعة قيمة واحدة!'),
(1309, 'en', 'Atleast drag one value group!'),
(1310, 'ar', 'النسبة المئوية'),
(1310, 'en', 'Percentage'),
(1311, 'ar', 'القيمة'),
(1311, 'en', 'Value'),
(1312, 'ar', 'افتح'),
(1312, 'en', 'open'),
(1313, 'ar', 'مغلق'),
(1313, 'en', 'closed'),
(1314, 'ar', 'طلب مسبق'),
(1314, 'en', 'pre-order'),
(1315, 'ar', 'مشغول'),
(1315, 'en', 'busy'),
(1316, 'ar', 'قيد الانتظار'),
(1316, 'en', 'Pending'),
(1317, 'ar', 'دفع'),
(1317, 'en', 'Paid'),
(1318, 'ar', 'على'),
(1318, 'en', 'On'),
(1319, 'ar', 'على وظيفة'),
(1319, 'en', 'On Job'),
(1320, 'ar', 'إيقاف'),
(1320, 'en', 'Off'),
(1321, 'ar', 'وافق'),
(1321, 'en', 'Approved'),
(1322, 'ar', 'مرفوض'),
(1322, 'en', 'Rejected'),
(1323, 'ar', 'اسم التطبيق'),
(1323, 'en', 'App Name'),
(1324, 'ar', 'وصف التطبيق'),
(1324, 'en', 'App Description'),
(1325, 'ar', 'كلمة ميتا'),
(1325, 'en', 'Meta Keyword'),
(1326, 'ar', 'البريد الإلكتروني للتطبيق'),
(1326, 'en', 'App Email'),
(1327, 'ar', 'التطبيق الاتصال لا'),
(1327, 'en', 'App Contact No'),
(1328, 'ar', 'عنوان الاتصال التطبيق'),
(1328, 'en', 'App Contact Address'),
(1329, 'ar', 'الموقع حقوق النشر'),
(1329, 'en', 'Site Copyright'),
(1330, 'ar', 'URL الفيسبوك'),
(1330, 'en', 'Facebook Url'),
(1331, 'ar', 'التغريد رابط'),
(1331, 'en', 'Twitter Url'),
(1332, 'ar', 'Instagram Url'),
(1332, 'en', 'Instagram Url'),
(1333, 'ar', 'جوجل بلس رابط'),
(1333, 'en', 'Google Plus Url'),
(1334, 'ar', 'اسم مستخدم بوابة SMS'),
(1334, 'en', 'SMS Gateway Username'),
(1335, 'ar', 'كلمة مرور عبّارة SMS'),
(1335, 'en', 'SMS Gateway Password'),
(1336, 'ar', 'هوية مرسل بوابة الرسائل القصيرة'),
(1336, 'en', 'SMS Gateway Sender ID'),
(1337, 'ar', 'هو تمكين الرسائل القصيرة'),
(1337, 'en', 'Is Sms Enabled'),
(1338, 'ar', 'اختبار'),
(1338, 'en', 'Test'),
(1339, 'ar', 'استضافة SMTP'),
(1339, 'en', 'SMTP Host'),
(1340, 'ar', 'تشفير SMTP'),
(1340, 'en', 'SMTP Encryption'),
(1341, 'ar', 'منفذ SMTP'),
(1341, 'en', 'SMTP Port'),
(1342, 'ar', 'اسم مستخدم SMTP'),
(1342, 'en', 'SMTP Username'),
(1343, 'ar', 'كلمة مرور SMTP'),
(1343, 'en', 'SMTP Password'),
(1344, 'ar', 'هو تمكين SMTP'),
(1344, 'en', 'Is SMTP Enabled'),
(1345, 'ar', 'تشفير SMTP'),
(1345, 'en', 'SMTP Encryption'),
(1346, 'ar', 'اطلب قبول الحد الزمني'),
(1346, 'en', 'Order Accept Time Limit'),
(1347, 'ar', 'Deliveryboy نصف قطره'),
(1347, 'en', 'Deliveryboy Radius'),
(1348, 'ar', 'Delivery Boy Order Assign Type'),
(1348, 'en', 'Delivery Boy Order Assign Type'),
(1349, 'ar', 'عنوان الإخطار'),
(1349, 'en', 'Notification Title'),
(1350, 'ar', 'وصف الإخطار'),
(1350, 'en', 'Notification Description'),
(1351, 'ar', 'سابق'),
(1351, 'en', 'Previous'),
(1352, 'ar', 'الاخير'),
(1352, 'en', 'Last'),
(1353, 'ar', 'يرجى تحديد خيار'),
(1353, 'en', 'Please Select an option'),
(1354, 'ar', 'على حد سواء'),
(1354, 'en', 'Both'),
(1355, 'ar', 'رمز القسيمة'),
(1355, 'en', 'Voucher Code'),
(1356, 'ar', 'قيمة القسيمة الأدنى للعربة'),
(1356, 'en', 'Voucher Minimum Cart Value'),
(1357, 'ar', 'قيمة القسيمه'),
(1357, 'en', 'Voucher Value'),
(1358, 'ar', 'القسيمة تبدأ في'),
(1358, 'en', 'Voucher Starts At'),
(1359, 'ar', 'القسيمة ينتهي في'),
(1359, 'en', 'Voucher Ends At'),
(1360, 'ar', 'حالة القسيمة'),
(1360, 'en', 'Coupon Status'),
(1361, 'ar', 'اسم الفئة الفرعية'),
(1361, 'en', 'Sub Category Name'),
(1362, 'ar', 'فرز لا'),
(1362, 'en', 'Sort No'),
(1363, 'ar', 'حالة الفئة'),
(1363, 'en', 'Category Status'),
(1364, 'ar', 'سعر البند'),
(1364, 'en', 'Item Price'),
(1365, 'ar', 'طعام'),
(1365, 'en', 'Food'),
(1366, 'ar', 'حالة العنصر'),
(1366, 'en', 'Item Status'),
(1367, 'ar', 'Deactive'),
(1367, 'en', 'Deactive'),
(1368, 'ar', 'حذف'),
(1368, 'en', 'Delete'),
(1369, 'ar', 'اسم نوع البند'),
(1369, 'en', 'Item Type Name'),
(1370, 'ar', 'حالة نوع العنصر'),
(1370, 'en', 'Item Type Status'),
(1371, 'ar', 'اسم العنصر'),
(1371, 'en', 'Ingredient Name'),
(1372, 'ar', 'نوع المكونات'),
(1372, 'en', 'Ingredient Type'),
(1373, 'ar', 'تاريخ التكوين'),
(1373, 'en', 'Create Date'),
(1374, 'ar', 'أسم المجموعة'),
(1374, 'en', 'Group Name'),
(1375, 'ar', 'مجموعة المكونات'),
(1375, 'en', 'Ingredient Group'),
(1376, 'ar', 'اسم العنصر'),
(1376, 'en', 'Item Name'),
(1377, 'ar', 'حالة التعيين'),
(1377, 'en', 'Mapping Status'),
(1378, 'ar', 'حالة المطبخ'),
(1378, 'en', 'Cuisine Status'),
(1379, 'ar', 'تاريخ الإنشاء'),
(1379, 'en', 'Created Date'),
(1380, 'ar', 'البريد الإلكتروني'),
(1380, 'en', 'Vendor Email'),
(1381, 'ar', 'رقم الاتصال بالبائع'),
(1381, 'en', 'Vendor Contact Number'),
(1382, 'ar', 'مدينة'),
(1382, 'en', 'City'),
(1383, 'ar', 'منطقة'),
(1383, 'en', 'Area'),
(1384, 'ar', 'حالة البائع'),
(1384, 'en', 'Vendor Status'),
(1385, 'ar', 'خارج الخدمة'),
(1385, 'en', 'Out Of Service'),
(1386, 'ar', 'تواصل بالبريد الاكتروني'),
(1386, 'en', 'Contact Email'),
(1387, 'ar', 'رقم الاتصال'),
(1387, 'en', 'Contact Number'),
(1388, 'ar', 'حالة توفر الفرع'),
(1388, 'en', 'Branch Availability Status'),
(1389, 'ar', 'اسم منطقة التسليم'),
(1389, 'en', 'Delivery Area Name'),
(1390, 'ar', 'حالة نوع البائع'),
(1390, 'en', 'Vendor Type Status'),
(1391, 'ar', 'مجموع مبلغ الطلب'),
(1391, 'en', 'Total Order Amount'),
(1392, 'ar', 'مجموع الارباح الادارية'),
(1392, 'en', 'Total Admin Profit'),
(1393, 'ar', 'مجموع أرباح البائع'),
(1393, 'en', 'Total Vendor Profit'),
(1394, 'ar', 'لا من الطلبات'),
(1394, 'en', 'No Of Orders'),
(1395, 'ar', 'حالة الدفع للبائع'),
(1395, 'en', 'Vendor Payment Status'),
(1396, 'ar', 'من التاريخ'),
(1396, 'en', 'From Date'),
(1397, 'ar', 'حتى الآن'),
(1397, 'en', 'To Date'),
(1398, 'ar', 'تصدير'),
(1398, 'en', 'Export'),
(1399, 'ar', 'ترتيب تاريخ الوقت'),
(1399, 'en', 'Order Date Time'),
(1400, 'ar', 'الطلب الكلي'),
(1400, 'en', 'Order Total'),
(1401, 'ar', 'حالة الطلب'),
(1401, 'en', 'Order Status'),
(1402, 'ar', 'رقم الهاتف المحمول'),
(1402, 'en', 'Mobile Number'),
(1403, 'ar', 'عنوان الرسالة الإخبارية'),
(1403, 'en', 'Newsletter Title'),
(1404, 'ar', 'وضع النشرة الإخبارية'),
(1404, 'en', 'Newsletter Status'),
(1405, 'ar', 'حالة المدينة'),
(1405, 'en', 'City Status'),
(1406, 'ar', 'الرقم الدولي'),
(1406, 'en', 'Country Code'),
(1407, 'ar', 'حالة المنطقة'),
(1407, 'en', 'Area Status'),
(1408, 'ar', 'اسم نوع العنوان'),
(1408, 'en', 'Address Type Name'),
(1409, 'ar', 'حالة نوع العنوان'),
(1409, 'en', 'Address Type Status'),
(1410, 'ar', 'اسم نوع العنوان'),
(1410, 'en', 'Address Type Name'),
(1411, 'ar', 'اسم'),
(1411, 'en', 'Name'),
(1412, 'ar', 'عنوان CMS'),
(1412, 'en', 'CMS Title'),
(1413, 'ar', 'امر ترتيب'),
(1413, 'en', 'Sort Order'),
(1414, 'ar', 'حالة CMS'),
(1414, 'en', 'CMS Status'),
(1415, 'ar', 'سؤال'),
(1415, 'en', 'Question'),
(1416, 'ar', 'إجابة'),
(1416, 'en', 'Answer'),
(1417, 'ar', 'تقييم'),
(1417, 'en', 'Rating'),
(1418, 'ar', 'إعادة النظر'),
(1418, 'en', 'Review'),
(1419, 'ar', 'سجل'),
(1419, 'en', 'Log'),
(1420, 'ar', 'العميل ايب'),
(1420, 'en', 'Client Ip'),
(1421, 'ar', 'منصة العميل'),
(1421, 'en', 'Client Platform'),
(1422, 'ar', 'حالة الدور'),
(1422, 'en', 'Role Status'),
(1423, 'ar', 'الاسم الاول'),
(1423, 'en', 'First Name'),
(1424, 'ar', 'آخر تسجيل دخول'),
(1424, 'en', 'Last Login'),
(1425, 'ar', 'Delivery Boy Access Url'),
(1425, 'en', 'Delivery Boy Access Url'),
(1426, 'ar', 'مفتاح الشركة'),
(1426, 'en', 'Company Key'),
(1427, 'ar', 'ابدأ كم'),
(1427, 'en', 'Start Km'),
(1428, 'ar', 'نهاية كم'),
(1428, 'en', 'End Km'),
(1429, 'ar', 'كمية'),
(1429, 'en', 'Amount'),
(1430, 'ar', 'هو كل مستخدم'),
(1430, 'en', 'Is All User'),
(1431, 'ar', 'الخادم هو أسفل (404)! يرجى المحاولة مرة أخرى في وقت آخر!'),
(1431, 'en', 'Server is down(404)! Please try again some other time!'),
(1432, 'ar', 'ولد الصبي خلق بنجاح'),
(1432, 'en', 'Delivery boy created successfully'),
(1433, 'ar', 'لا يوجد ولد التسليم'),
(1433, 'en', 'No delivery boy found'),
(1434, 'ar', 'تحديث الصبي بنجاح'),
(1434, 'en', 'Delivery boy updated successfully'),
(1435, 'ar', 'لا يوجد عبر الإنترنت في ..!'),
(1435, 'en', 'No deliveryboy in online..!'),
(1436, 'ar', 'يتم تعيين الأمر إلى فتى التسليم'),
(1436, 'en', 'Order is assigned to delivery boy'),
(1437, 'ar', 'لم يتم تعيين الأمر لتسليم الصبي!'),
(1437, 'en', 'Order not assigned to delivery boy!'),
(1438, 'ar', 'Drivery boy غير موجود'),
(1438, 'en', 'Drivery boy not found'),
(1439, 'ar', 'فتى التوصيل تم تعطيله بنجاح'),
(1439, 'en', 'Delivery boy deactivated successfully'),
(1440, 'ar', 'الصبي تسليم تفعيلها بنجاح'),
(1440, 'en', 'Delivery boy activated successfully'),
(1441, 'ar', 'البريد الإلكتروني لا يتطابق'),
(1441, 'en', 'Email does not match'),
(1442, 'ar', 'نوع القسيمة'),
(1442, 'en', 'Coupon Type'),
(1443, 'ar', 'صورة القسيمة'),
(1443, 'en', 'Coupon Image'),
(1444, 'ar', 'نطاق القسيمة'),
(1444, 'en', 'Coupon Scope'),
(1445, 'ar', 'حالة العنصر'),
(1445, 'en', 'Item Status'),
(1446, 'ar', 'وصف السلعة'),
(1446, 'en', 'Item Description'),
(1447, 'ar', 'اسم العنصر'),
(1447, 'en', 'Ingredient Name'),
(1448, 'ar', 'أسم المجموعة'),
(1448, 'en', 'Group Name'),
(1449, 'ar', 'أقصى'),
(1449, 'en', 'Maximum'),
(1450, 'ar', 'اسحب لإضافة مكون'),
(1450, 'en', 'Drag to add Ingredient'),
(1451, 'ar', 'وقت التحضير'),
(1451, 'en', 'Preparation Time'),
(1452, 'ar', 'موعد التسليم'),
(1452, 'en', 'Delivery Time'),
(1453, 'ar', 'خط العرض'),
(1453, 'en', 'Latitude'),
(1454, 'ar', 'خط الطول'),
(1454, 'en', 'Longitude'),
(1455, 'ar', 'خيار تسليم'),
(1455, 'en', 'Delivery Option'),
(1456, 'ar', 'اسم الصبي التسليم'),
(1456, 'en', 'Delivery Boy Name'),
(1457, 'ar', 'كل الفروع'),
(1457, 'en', 'All Branches'),
(1458, 'ar', 'تم تأكيد'),
(1458, 'en', 'Confirmed'),
(1459, 'ar', 'تم التوصيل'),
(1459, 'en', 'Delivered'),
(1460, 'ar', 'اسم الصبي التسليم'),
(1460, 'en', 'Delivery Boy Name'),
(1461, 'ar', 'قيد الانتظار'),
(1461, 'en', 'Pending'),
(1462, 'ar', 'نجاح'),
(1462, 'en', 'Success'),
(1463, 'ar', 'بالفشل'),
(1463, 'en', 'Failure'),
(1464, 'ar', 'ضريبة'),
(1464, 'en', 'Tax'),
(1465, 'ar', 'الخروج'),
(1465, 'en', 'Logout'),
(1466, 'ar', 'إعدادات الحساب'),
(1466, 'en', 'Account Setting'),
(1467, 'ar', 'ملفي'),
(1467, 'en', 'My Profile'),
(1468, 'ar', 'الكنية'),
(1468, 'en', 'Last Name'),
(1469, 'ar', 'عنوان بريد الكتروني'),
(1469, 'en', 'Email Address'),
(1470, 'ar', 'خضع'),
(1470, 'en', 'Submit'),
(1471, 'ar', 'قيمة سلة الحد الأدنى'),
(1471, 'en', 'Minimum Cart Value'),
(1472, 'ar', 'ضريبة الخدمة'),
(1472, 'en', 'Service Tax'),
(1473, 'ar', 'غير الخضار'),
(1473, 'en', 'Non Veg'),
(1474, 'ar', 'هو كل مورد'),
(1474, 'en', 'Is All Vendor'),
(1475, 'ar', 'إدارة القسائم'),
(1475, 'en', 'Voucher Management'),
(1476, 'ar', 'تسجيل سائق'),
(1476, 'en', 'Driver Registration'),
(1477, 'ar', 'شريك معنا'),
(1477, 'en', 'Partner With Us'),
(1478, 'ar', 'تسجيل الدخول'),
(1478, 'en', 'Login'),
(1479, 'ar', 'حسابي'),
(1479, 'en', 'My Account'),
(1480, 'ar', 'الملف الشخصي'),
(1480, 'en', 'Profile'),
(1481, 'ar', 'عنوان'),
(1481, 'en', 'Address'),
(1482, 'ar', 'أوامر'),
(1482, 'en', 'Orders'),
(1483, 'ar', 'اسعار ومراجعات'),
(1483, 'en', 'Rates & Reviews'),
(1484, 'ar', 'المفضلة'),
(1484, 'en', 'Favourites'),
(1485, 'ar', 'الخروج'),
(1485, 'en', 'Logout'),
(1486, 'ar', 'انغذوا ذوقك مع'),
(1486, 'en', 'Indulge your tastebuds with'),
(1487, 'ar', 'FOODPURBY'),
(1487, 'en', 'FOODPURBY'),
(1488, 'ar', 'البحث عن الغذاء'),
(1488, 'en', 'Find Food'),
(1489, 'ar', 'تنزيل التطبيقات'),
(1489, 'en', 'Download Apps'),
(1490, 'ar', 'اختيار موقع'),
(1490, 'en', 'Choose Location'),
(1491, 'ar', 'يمكن للمستخدم تحديد المأكولات والبحث عن مثل هذه المطاعم في منطقتك'),
(1491, 'en', 'User can specify cuisine and search for such restaurants in your locality'),
(1492, 'ar', 'اختر المطعم'),
(1492, 'en', 'Choose Restaurant'),
(1493, 'ar', 'يمكن للمستخدم تحديد المأكولات والبحث عن مثل هذه المطاعم في منطقتك'),
(1493, 'en', 'User can specify cuisine and search for such restaurants in your locality'),
(1494, 'ar', 'اختر القائمة'),
(1494, 'en', 'Choose Menu'),
(1495, 'ar', 'تصفح المئات من القوائم للعثور على الطعام الذي يعجبك'),
(1495, 'en', 'Browse hundreds of menus to find the food you like'),
(1496, 'ar', 'اطلب & احضر'),
(1496, 'en', 'Order & Get Delivered'),
(1497, 'ar', 'يتم إعداد الطعام وتسليمه إلى الباب الخاص بك'),
(1497, 'en', 'Food is prepared & delivered to your door'),
(1498, 'ar', 'مطاعم في جيبك'),
(1498, 'en', 'Restaurants in Your Pocket'),
(1499, 'ar', 'طلب من المطاعم المفضلة لديك وتتبع على الذهاب ، مع التطبيق Foodpurby كل جديد.'),
(1499, 'en', 'Order from your favorite restaurants & track on the go, with the all-new Foodpurby app.'),
(1500, 'ar', 'تسجيل الدخول'),
(1500, 'en', 'Register / Login'),
(1501, 'ar', 'Lorem ipsum dolor sit amet، consectetur adipiscing elit. Morbi tincidunt neque mauris.'),
(1501, 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt neque mauris.'),
(1502, 'ar', 'قائمة مطعم'),
(1502, 'en', 'Restaurant Listing'),
(1503, 'ar', 'قائمة القائمة'),
(1503, 'en', 'Menu Listing'),
(1504, 'ar', 'عربتي'),
(1504, 'en', 'My Cart'),
(1505, 'ar', 'الدفع'),
(1505, 'en', 'Checkout'),
(1506, 'ar', 'حالة الطلب'),
(1506, 'en', 'Order Status'),
(1507, 'ar', 'لا يمكن أن يكون المكان خاليًا'),
(1507, 'en', 'Place cannot be empty'),
(1508, 'ar', 'أدخل موقعك'),
(1508, 'en', 'Enter Your Location'),
(1509, 'ar', 'معلومات عنا'),
(1509, 'en', 'About us'),
(1510, 'ar', 'سياسة خاصة'),
(1510, 'en', 'Privacy Policy'),
(1511, 'ar', 'الأحكام والشروط'),
(1511, 'en', 'Terms and Conditions'),
(1512, 'ar', 'تسجيل سائق'),
(1512, 'en', 'Driver Registration'),
(1513, 'ar', 'كيف تعمل'),
(1513, 'en', 'How It Works'),
(1514, 'ar', 'التعليمات'),
(1514, 'en', 'FAQ'),
(1515, 'ar', 'اتصل بنا'),
(1515, 'en', 'Contact us'),
(1516, 'ar', 'اتصل بنا'),
(1516, 'en', 'Contact Us'),
(1517, 'ar', 'الاسم الاول'),
(1517, 'en', 'First Name'),
(1518, 'ar', 'الكنية'),
(1518, 'en', 'Last Name'),
(1519, 'ar', 'عنوان بريد الكتروني'),
(1519, 'en', 'Email Address'),
(1520, 'ar', 'رقم الهاتف المحمول'),
(1520, 'en', 'Mobile Number'),
(1521, 'ar', 'رسالة'),
(1521, 'en', 'message'),
(1522, 'ar', 'خضع'),
(1522, 'en', 'Submit'),
(1523, 'ar', 'تسجيل سائق'),
(1523, 'en', 'Driver Registration'),
(1524, 'ar', 'اسم'),
(1524, 'en', 'Name'),
(1525, 'ar', 'البريد الإلكتروني'),
(1525, 'en', 'Email'),
(1526, 'ar', 'رقم الهاتف المحمول'),
(1526, 'en', 'Mobile Number'),
(1527, 'ar', 'رقم الرخصة'),
(1527, 'en', 'License Number'),
(1528, 'ar', 'عدد المركبات'),
(1528, 'en', 'vehicle number'),
(1529, 'ar', 'كلمه السر'),
(1529, 'en', 'Password'),
(1530, 'ar', 'اسم البنك'),
(1530, 'en', 'Bank name'),
(1531, 'ar', 'رمز الفرع البنك'),
(1531, 'en', 'bank branch code'),
(1532, 'ar', 'رقم حساب'),
(1532, 'en', 'Account number'),
(1533, 'ar', 'رمز السرعة'),
(1533, 'en', 'swift code'),
(1534, 'ar', 'اسم الفرع'),
(1534, 'en', 'branch name'),
(1535, 'ar', 'التسجيل ناجح'),
(1535, 'en', 'Registration Successfull'),
(1536, 'ar', 'اشترك في حسابك'),
(1536, 'en', 'Sign Up to Your Account'),
(1537, 'ar', 'كلمه السر'),
(1537, 'en', 'Password'),
(1538, 'ar', 'تأكيد كلمة المرور'),
(1538, 'en', 'Confirm Password'),
(1539, 'ar', 'هل لديك حساب؟ تسجيل الدخول'),
(1539, 'en', 'Already have an account? Sign In'),
(1540, 'ar', 'مكتب المدعي العام'),
(1540, 'en', 'Otp'),
(1541, 'ar', 'OTP أرسل رقم هاتفك المحمول'),
(1541, 'en', 'OTP send your Mobile Number'),
(1542, 'ar', 'تسجيل الدخول إلى حسابك'),
(1542, 'en', 'Sign In to Your Account'),
(1543, 'ar', 'هل نسيت كلمة المرور؟'),
(1543, 'en', 'Forgot Password?'),
(1544, 'ar', 'إعادة تعيين الرابط أرسل البريد الإلكتروني الخاص بك'),
(1544, 'en', 'Reset link send your Email'),
(1545, 'ar', 'البريد الإلكتروني لا يتطابق'),
(1545, 'en', 'Email does not match'),
(1546, 'ar', 'نسيت رقمك السري\''),
(1546, 'en', 'Forgot your Password\''),
(1547, 'ar', 'عفوا ، لا يمكننا العثور على هذه الصفحة!'),
(1547, 'en', 'oops, sorry we can\'t find that page!'),
(1548, 'ar', '> حدث خطأ ما أو لم تعد الصفحة موجودة.'),
(1548, 'en', '>Either something went wrong or the page doesn\'t exist anymore.'),
(1549, 'ar', 'عفوا ، لا يمكننا العثور على هذه الصفحة!'),
(1549, 'en', 'oops, sorry we can\'t find that page!'),
(1550, 'ar', 'حدث خطأ ما أو لم تعد الصفحة موجودة.'),
(1550, 'en', 'Either something went wrong or the page doesn\'t exist anymore.'),
(1551, 'ar', 'عنوان'),
(1551, 'en', 'Address'),
(1552, 'ar', 'اضف عنوان'),
(1552, 'en', 'Add Address'),
(1553, 'ar', 'اضف عنوان'),
(1553, 'en', 'Add Address'),
(1554, 'ar', 'اختر نوع العنوان'),
(1554, 'en', 'Select address type'),
(1555, 'ar', 'عدد مسطح'),
(1555, 'en', 'Flat number'),
(1556, 'ar', 'شقة'),
(1556, 'en', 'Apartment'),
(1557, 'ar', 'اسم الشارع'),
(1557, 'en', 'Street Name'),
(1558, 'ar', 'منطقة'),
(1558, 'en', 'Area'),
(1559, 'ar', 'مدينة'),
(1559, 'en', 'City'),
(1560, 'ar', 'معلم معروف'),
(1560, 'en', 'Landmark'),
(1561, 'ar', 'شركة'),
(1561, 'en', 'Company'),
(1562, 'ar', 'يرجى اختيار موقعك على الخريطة'),
(1562, 'en', 'Please choose your location on the map'),
(1563, 'ar', 'النجاح'),
(1563, 'en', 'Successfull'),
(1564, 'ar', 'معلومات شخصية'),
(1564, 'en', 'Personal Information'),
(1565, 'ar', 'تاريخ الميلاد'),
(1565, 'en', 'DOB'),
(1566, 'ar', 'البريد الإلكتروني'),
(1566, 'en', 'email'),
(1567, 'ar', 'هل تغير كلمة المرور؟'),
(1567, 'en', 'Are you Change password?'),
(1568, 'ar', 'غير كلمة السر'),
(1568, 'en', 'Change Password'),
(1569, 'ar', 'إدخل كلمة السر الحالية'),
(1569, 'en', 'Enter current password'),
(1570, 'ar', 'أدخل كلمة المرور الجديدة'),
(1570, 'en', 'Enter new password'),
(1571, 'ar', 'أدخل تأكيد كلمة المرور'),
(1571, 'en', 'Enter confirm password'),
(1572, 'ar', 'أود الاشتراك في الرسائل الإخبارية'),
(1572, 'en', 'I would like to subscribe for Newsletters'),
(1573, 'ar', 'تحديث'),
(1573, 'en', 'Update'),
(1574, 'ar', 'هل تغير كلمة المرور؟'),
(1574, 'en', 'Are you Change password?'),
(1575, 'ar', 'تحديث الملف الشخصي Successfull'),
(1575, 'en', 'Profile Update Successfull'),
(1576, 'ar', 'كلمة المرور الحالية خاطئة'),
(1576, 'en', 'Current Password is wrong'),
(1577, 'ar', 'جنس'),
(1577, 'en', 'Gender'),
(1578, 'ar', 'تاريخ الولادة'),
(1578, 'en', 'Date OF Birth'),
(1579, 'ar', 'عنوان الايميل'),
(1579, 'en', 'Email Id'),
(1580, 'ar', 'أدخل موقعك'),
(1580, 'en', 'Enter your location'),
(1581, 'ar', 'أوامر'),
(1581, 'en', 'Orders'),
(1582, 'ar', 'مشاهدة الطلب'),
(1582, 'en', 'View Order'),
(1583, 'ar', 'الذهاب إلى مطعم'),
(1583, 'en', 'Go To Restaurant'),
(1584, 'ar', 'آسف ليس لديك أي طلب'),
(1584, 'en', 'sorry you don\'t have any order'),
(1585, 'ar', 'التعليقات'),
(1585, 'en', 'Reviews'),
(1586, 'ar', 'تصحيح'),
(1586, 'en', 'Edit'),
(1587, 'ar', 'حذف'),
(1587, 'en', 'Delete'),
(1588, 'ar', 'تصنيفات'),
(1588, 'en', 'Ratings'),
(1589, 'ar', 'تعليقات'),
(1589, 'en', 'Comments'),
(1590, 'ar', 'مراجعة التحديث Successfull'),
(1590, 'en', 'Review Update Successfull'),
(1591, 'ar', 'مراجعة المحذوفة Successfull'),
(1591, 'en', 'Review Deleted Successfull'),
(1592, 'ar', 'المفضلة'),
(1592, 'en', 'Favourites'),
(1593, 'ar', 'افتح'),
(1593, 'en', 'Open'),
(1594, 'ar', 'مغلق'),
(1594, 'en', 'Closed'),
(1595, 'ar', 'مشغول'),
(1595, 'en', 'Busy'),
(1596, 'ar', 'تمت إزالة Successfull'),
(1596, 'en', 'Removed Successfull'),
(1597, 'ar', 'مطاعم مميزة'),
(1597, 'en', 'Featured Restaurants'),
(1598, 'ar', 'مطعم وجدت'),
(1598, 'en', 'Restaurant Found'),
(1599, 'ar', 'مطعم غير متوفر ، الرجاء البحث بالقرب من الموقع'),
(1599, 'en', 'Restaurant not available, Please Search Near by location'),
(1600, 'ar', 'عرض المطاعم مع <'),
(1600, 'en', 'Show Restaurants With<'),
(1601, 'ar', 'نقي الخضار'),
(1601, 'en', 'Pure Veg'),
(1602, 'ar', 'نقية غير الخضار'),
(1602, 'en', 'Pure Non-Veg'),
(1603, 'ar', 'المطابخ'),
(1603, 'en', 'Cuisines'),
(1604, 'ar', 'فرز'),
(1604, 'en', 'Sort'),
(1605, 'ar', 'شعبية'),
(1605, 'en', 'Popularity'),
(1606, 'ar', 'تقييم'),
(1606, 'en', 'Rating'),
(1607, 'ar', 'الحد الأدنى من القيمة'),
(1607, 'en', 'Min order value'),
(1608, 'ar', 'واضح'),
(1608, 'en', 'Clear'),
(1609, 'ar', 'عرض المطاعم'),
(1609, 'en', 'Show Restaurants'),
(1610, 'ar', 'التقييمات والمراجعات'),
(1610, 'en', 'Ratings & Reviews'),
(1611, 'ar', 'بحث'),
(1611, 'en', 'Search'),
(1612, 'ar', 'إزالة المفضلة'),
(1612, 'en', 'Remove Favourite'),
(1613, 'ar', 'أضف المفضلة'),
(1613, 'en', 'Add Favourite'),
(1614, 'ar', 'قائمة طعام'),
(1614, 'en', 'Menu'),
(1615, 'ar', 'تصنيفات'),
(1615, 'en', 'Ratings'),
(1616, 'ar', 'معلومات'),
(1616, 'en', 'Info'),
(1617, 'ar', 'اطلب الان'),
(1617, 'en', 'Order Now'),
(1618, 'ar', 'يرجى إدخال تعليقاتك'),
(1618, 'en', 'please enter your Comments'),
(1619, 'ar', 'تمت إضافة التقييم بنجاح'),
(1619, 'en', 'Rating Added Successfully'),
(1620, 'ar', 'تمت إضافة المفضلة بنجاح'),
(1620, 'en', 'Favourite Added Successfully'),
(1621, 'ar', 'تمت الإزالة المفضلة بنجاح'),
(1621, 'en', 'Favourite Removed Successfully'),
(1622, 'ar', 'قائمة طعام'),
(1622, 'en', 'Menu'),
(1623, 'ar', 'عناصر القائمة'),
(1623, 'en', 'Menu Items'),
(1624, 'ar', 'منقي'),
(1624, 'en', 'Filter'),
(1625, 'ar', 'التقييمات والمراجعات'),
(1625, 'en', 'Ratings & Reviews'),
(1626, 'ar', 'إضافة مراجعة'),
(1626, 'en', 'Add Review'),
(1627, 'ar', 'عنوان'),
(1627, 'en', 'Address'),
(1628, 'ar', 'ساعات التوصيل'),
(1628, 'en', 'Delivery Hours'),
(1629, 'ar', 'ساعات الوجبات الجاهزة'),
(1629, 'en', 'Takeaway Hours'),
(1630, 'ar', 'عربتك'),
(1630, 'en', 'Your Cart'),
(1631, 'ar', 'بند'),
(1631, 'en', 'Item'),
(1632, 'ar', 'الكمية'),
(1632, 'en', 'Qty'),
(1633, 'ar', 'السعر'),
(1633, 'en', 'Price'),
(1634, 'ar', 'حاصل الجمع'),
(1634, 'en', 'Subtotal'),
(1635, 'ar', 'ضريبة'),
(1635, 'en', 'VAT'),
(1636, 'ar', 'المبلغ الإجمالي'),
(1636, 'en', 'Total Amount'),
(1637, 'ar', 'ملاحظة: سيتم إضافة رسوم التسليم بمجرد تحديد عنوان التسليم.'),
(1637, 'en', 'Note: Delivery fee will be added once you select the delivery address.'),
(1638, 'ar', 'الدفع'),
(1638, 'en', 'Checkout'),
(1639, 'ar', 'العودة إلى المطعم'),
(1639, 'en', 'Back to Restaurant'),
(1640, 'ar', 'وصف'),
(1640, 'en', 'Description'),
(1641, 'ar', 'كمية'),
(1641, 'en', 'Quantity'),
(1642, 'ar', 'السعر'),
(1642, 'en', 'Price'),
(1643, 'ar', 'الدفع'),
(1643, 'en', 'Check Out'),
(1644, 'ar', 'كمية إزالتها'),
(1644, 'en', 'Quantity Removed'),
(1645, 'ar', 'إزالة'),
(1645, 'en', 'Remove'),
(1646, 'ar', 'المجموع الفرعي'),
(1646, 'en', 'Sub Total'),
(1647, 'ar', 'ضريبة'),
(1647, 'en', 'VAT'),
(1648, 'ar', 'المبلغ الإجمالي'),
(1648, 'en', 'Total Amount'),
(1649, 'ar', 'بيانات الدفع'),
(1649, 'en', 'payment_details'),
(1650, 'ar', 'تم تغيير اللغة بنجاح'),
(1650, 'en', 'Language changed Successfully'),
(1651, 'ar', 'تسجيل دخول المستخدم بنجاح'),
(1651, 'en', 'User logged in successfully'),
(1652, 'ar', 'البريد الالكتروني موجود بالفعل'),
(1652, 'en', 'Email Already Exists'),
(1653, 'ar', 'رقم الجوال موجود بالفعل'),
(1653, 'en', 'Mobile Number Already Exists'),
(1654, 'ar', 'OTP غير متطابق'),
(1654, 'en', 'OTP not match'),
(1655, 'ar', 'تم تغيير الرقم السري بنجاح'),
(1655, 'en', 'Password changed successfully'),
(1656, 'ar', 'خطأ في تحديث كلمة المرور يرجى المحاولة مرة أخرى'),
(1656, 'en', 'Error in updating password please try again'),
(1657, 'ar', 'إعادة تعيين الارتباط إرسال البريد الإلكتروني الخاص بك'),
(1657, 'en', 'Reset Link Send Your Email'),
(1658, 'ar', 'انتهت صلاحية رمز إعادة تعيين كلمة المرور مرة أخرى!'),
(1658, 'en', 'Password reset token expired try again !'),
(1659, 'ar', 'تم تغيير الرقم السري بنجاح'),
(1659, 'en', 'Password changed successfully'),
(1660, 'ar', 'المستخدم غير نشط'),
(1660, 'en', 'User is not active'),
(1661, 'ar', 'تم تحديث الملف الشخصي بنجاح'),
(1661, 'en', 'Profile Updated Successfully'),
(1662, 'ar', 'أضف المفضلة'),
(1662, 'en', 'Add Favourite'),
(1663, 'ar', 'إضافة'),
(1663, 'en', 'Add'),
(1664, 'ar', 'رد فعل الحساسية'),
(1664, 'en', 'Allergic Reactant'),
(1665, 'ar', 'هل تريد تغيير كلمة المرور؟'),
(1665, 'en', 'Do you want to change the password?'),
(1666, 'ar', 'كلمة المرور الحالي'),
(1666, 'en', 'Current password'),
(1667, 'ar', 'كلمة السر الجديدة'),
(1667, 'en', 'New password'),
(1668, 'ar', 'تأكيد كلمة المرور'),
(1668, 'en', 'Confirm password'),
(1669, 'ar', 'النشرة غير المكتتب بها بنجاح'),
(1669, 'en', 'Newsletter Unsubscribed successfully'),
(1670, 'ar', 'النشرة الإخبارية اشتركت بنجاح'),
(1670, 'en', 'Newsletter Subscribed successfully'),
(1671, 'ar', 'تسجيل الدخول'),
(1671, 'en', 'Login'),
(1672, 'ar', 'أون'),
(1672, 'en', 'En'),
(1673, 'ar', 'ن ن'),
(1673, 'en', 'Nn'),
(1674, 'ar', 'البريد الإلكتروني'),
(1674, 'en', 'Email'),
(1675, 'ar', 'كلمه السر'),
(1675, 'en', 'Password'),
(1676, 'ar', 'تسجيل الدخول باستخدام الفيسبوك'),
(1676, 'en', 'Login With Facebook'),
(1677, 'ar', 'تسجيل الدخول مع جوجل +'),
(1677, 'en', 'Login With Google +'),
(1678, 'ar', '(أو)'),
(1678, 'en', '(OR)'),
(1679, 'ar', 'هل نسيت كلمة المرور؟'),
(1679, 'en', 'Forgot Password?'),
(1680, 'ar', 'حساب جديد؟'),
(1680, 'en', 'New Account?'),
(1681, 'ar', 'الاسم الاول'),
(1681, 'en', 'First Name'),
(1682, 'ar', 'الكنية'),
(1682, 'en', 'Last Name'),
(1683, 'ar', 'عنوان بريد الكتروني'),
(1683, 'en', 'Email Address'),
(1684, 'ar', 'رقم الهاتف المحمول'),
(1684, 'en', 'Mobile Number'),
(1685, 'ar', 'اشترك عبر حساب فايسبوك'),
(1685, 'en', 'SignUp With Facebook'),
(1686, 'ar', 'تسجيل الدخول مع جوجل +'),
(1686, 'en', 'SignUp With Google +'),
(1687, 'ar', 'كلمه السر'),
(1687, 'en', 'Password'),
(1688, 'ar', 'الصفحة الرئيسية'),
(1688, 'en', 'Home'),
(1689, 'ar', 'أدخل موقعك'),
(1689, 'en', 'Enter Your Location'),
(1690, 'ar', 'إضافة عنوان جديد'),
(1690, 'en', 'Add New Address'),
(1691, 'ar', 'نوع العنوان'),
(1691, 'en', 'Address Type'),
(1692, 'ar', 'العنوان السطر 1'),
(1692, 'en', 'Address Line1'),
(1693, 'ar', 'سطر العنوان 2'),
(1693, 'en', 'Address Line2'),
(1694, 'ar', 'شركة'),
(1694, 'en', 'Company'),
(1695, 'ar', 'وصف'),
(1695, 'en', 'Description'),
(1696, 'ar', 'لا يمكن أن يكون البريد الإلكتروني فارغًا'),
(1696, 'en', 'Email cannot be empty'),
(1697, 'ar', 'لا يمكن أن تكون كلمة المرور فارغة');
INSERT INTO `message` (`id`, `language`, `translation`) VALUES
(1697, 'en', 'Password cannot be empty'),
(1698, 'ar', 'لا يمكن أن يكون الاسم الأول فارغًا'),
(1698, 'en', 'First Name cannot be empty'),
(1699, 'ar', 'لا يمكن أن يكون الاسم الأخير فارغًا'),
(1699, 'en', 'Last Name cannot be empty'),
(1700, 'ar', 'لا يمكن أن يكون الجوال فارغًا'),
(1700, 'en', 'Mobile cannot be Empty'),
(1701, 'ar', 'البريد الإلكتروني أو كلمة المرور لا يمكن أن تكون فارغة'),
(1701, 'en', 'Email or password cannot empty'),
(1702, 'ar', 'الرجاء إدخال بريد إلكتروني صحيح'),
(1702, 'en', 'Please enter valid email'),
(1703, 'ar', 'الصفحة الرئيسية'),
(1703, 'en', 'Home'),
(1704, 'ar', 'ملفي'),
(1704, 'en', 'My Profile'),
(1705, 'ar', 'طلباتي'),
(1705, 'en', 'My Orders'),
(1706, 'ar', 'دليل العناوين'),
(1706, 'en', 'Address Book'),
(1707, 'ar', 'المطاعم المفضلة'),
(1707, 'en', 'Favourite Restaurants'),
(1708, 'ar', 'رسالة إخبارية'),
(1708, 'en', 'News Letter'),
(1709, 'ar', 'مساعدة'),
(1709, 'en', 'Help'),
(1710, 'ar', 'اتصل بنا'),
(1710, 'en', 'Contact Us'),
(1711, 'ar', 'خروج'),
(1711, 'en', 'Sign Out'),
(1712, 'ar', 'زائر'),
(1712, 'en', 'Guest'),
(1713, 'ar', 'جنس'),
(1713, 'en', 'Gender'),
(1714, 'ar', 'تاريخ الولادة'),
(1714, 'en', 'Date Of Birth'),
(1715, 'ar', 'كلمة المرور الحالي'),
(1715, 'en', 'Current Password'),
(1716, 'ar', 'كلمة السر الجديدة'),
(1716, 'en', 'New Password'),
(1717, 'ar', 'تأكيد كلمة المرور الجديدة'),
(1717, 'en', 'Confirm New Password'),
(1718, 'ar', 'تطوير كلمة السر'),
(1718, 'en', 'Update Password'),
(1719, 'ar', 'تحديث الملف'),
(1719, 'en', 'Update Profile'),
(1720, 'ar', 'غير كلمة السر؟'),
(1720, 'en', 'Change Password?'),
(1721, 'ar', 'كلمة المرور غير متطابقة'),
(1721, 'en', 'Password not matched'),
(1722, 'ar', 'الذكر'),
(1722, 'en', 'Male'),
(1723, 'ar', 'إناثا'),
(1723, 'en', 'Female'),
(1724, 'ar', 'مكتب المدعي العام'),
(1724, 'en', 'OTP'),
(1725, 'ar', 'OTP أرسل رقم هاتفك المحمول'),
(1725, 'en', 'OTP Send your register mobile number'),
(1726, 'ar', 'أعد إرسال OTP بعد {0} ثانية'),
(1726, 'en', 'Resend your OTP after {0} Seconds'),
(1727, 'ar', 'إعادة إرسال'),
(1727, 'en', 'Resend'),
(1728, 'ar', 'إذا لم تستلم كلمة المرور الخاصة بك؟ إعادة إرسال'),
(1728, 'en', 'If you did not receive your OTP? Resend'),
(1729, 'ar', 'تحديد موقع لي'),
(1729, 'en', 'Locate me'),
(1730, 'ar', 'أدخل عنوان التسليم الخاص بك'),
(1730, 'en', 'Enter Your Delivery Address'),
(1731, 'ar', 'مطاعم'),
(1731, 'en', 'Restaurants'),
(1732, 'ar', 'شعبية'),
(1732, 'en', 'Popularity'),
(1733, 'ar', 'تقييم'),
(1733, 'en', 'Rating'),
(1734, 'ar', 'الحد الأدنى من القيمة'),
(1734, 'en', 'Min order value'),
(1735, 'ar', 'مصنف بواسطة'),
(1735, 'en', 'FILTERBY'),
(1736, 'ar', 'الطلب Avilable'),
(1736, 'en', 'Preorder Avilable'),
(1737, 'ar', 'قبول القسيمة'),
(1737, 'en', 'Voucher Accept'),
(1738, 'ar', 'Pure Vegetain'),
(1738, 'en', 'Pure Vegetarain'),
(1739, 'ar', 'غير الخضار'),
(1739, 'en', 'Non Vegetarain'),
(1740, 'ar', 'حلالا'),
(1740, 'en', 'Halal'),
(1741, 'ar', 'بحث المطاعم'),
(1741, 'en', 'Search Restaurants'),
(1742, 'ar', 'FILTERS'),
(1742, 'en', 'FILTERS'),
(1743, 'ar', 'فلاتر واضحة'),
(1743, 'en', 'CLEAR FILTERS'),
(1744, 'ar', 'تصفية المطاعم'),
(1744, 'en', 'Filter Restaurants'),
(1745, 'ar', 'افتح'),
(1745, 'en', 'Open'),
(1746, 'ar', 'قريب'),
(1746, 'en', 'Close'),
(1747, 'ar', 'مطاعم مميزة'),
(1747, 'en', 'Featured Restaurants'),
(1748, 'ar', 'مطاعم'),
(1748, 'en', 'Restaurants'),
(1749, 'ar', 'ملفي'),
(1749, 'en', 'My Profile'),
(1750, 'ar', 'لم يتم العثور على طلب'),
(1750, 'en', 'No order found'),
(1751, 'ar', 'مشاهدة الطلب'),
(1751, 'en', 'VIEW ORDER'),
(1752, 'ar', 'اذهب إلى المطاعم'),
(1752, 'en', 'Go to restaurants'),
(1753, 'ar', 'ترتيب المعلومات'),
(1753, 'en', 'ORDER INFO'),
(1754, 'ar', 'ملخص الطلب'),
(1754, 'en', 'ORDER SUMMARY'),
(1755, 'ar', 'بند'),
(1755, 'en', 'ITEM'),
(1756, 'ar', 'الكمية'),
(1756, 'en', 'QTY'),
(1757, 'ar', 'السعر'),
(1757, 'en', 'PRICE'),
(1758, 'ar', 'كمية الطلب'),
(1758, 'en', 'Order Amount'),
(1759, 'ar', 'حالة السداد'),
(1759, 'en', 'Payment Status'),
(1760, 'ar', 'الحالة'),
(1760, 'en', 'Status'),
(1761, 'ar', 'اسحب موقعك'),
(1761, 'en', 'Drag Your Location'),
(1762, 'ar', 'يرجى تحديد نوع العنوان الخاص بك'),
(1762, 'en', 'Please select your address type'),
(1763, 'ar', 'الرجاء إدخال عنوانك'),
(1763, 'en', 'Please enter your address'),
(1764, 'ar', 'يرجى إدخال عنوان LINE2 الخاص بك'),
(1764, 'en', 'Please enter your addressLine2'),
(1765, 'ar', 'أدخل بريدك الالكتروني'),
(1765, 'en', 'Enter Your Email'),
(1766, 'ar', 'لا تفوّت عروضنا الرائعة'),
(1766, 'en', 'Don\'t miss out on our Great Offers'),
(1767, 'ar', 'موضوع'),
(1767, 'en', 'Subject'),
(1768, 'ar', 'اسمك'),
(1768, 'en', 'Your name'),
(1769, 'ar', 'المزيد من المطاعم'),
(1769, 'en', 'More Restaurants'),
(1770, 'ar', 'قائمة الطعام'),
(1770, 'en', 'MENUS'),
(1771, 'ar', 'INFO'),
(1771, 'en', 'INFO'),
(1772, 'ar', 'RATINGS'),
(1772, 'en', 'RATINGS'),
(1773, 'ar', 'سلتك فارغة'),
(1773, 'en', 'Your Cart empty'),
(1774, 'ar', 'CUISINES'),
(1774, 'en', 'CUISINES'),
(1775, 'ar', 'ساعات التوصيل'),
(1775, 'en', 'DELIVERY HOURS'),
(1776, 'ar', 'ساعات PICKUP'),
(1776, 'en', 'PICKUP HOURS'),
(1777, 'ar', 'عنوان'),
(1777, 'en', 'ADDRESS'),
(1778, 'ar', 'رسوم التسليم من'),
(1778, 'en', 'DELIVERY FEE FROM'),
(1779, 'ar', 'رسوم التوصيل'),
(1779, 'en', 'DELIVERY FEE'),
(1780, 'ar', 'موعد التسليم'),
(1780, 'en', 'DELIVERY TIME'),
(1781, 'ar', 'اختار المعاد'),
(1781, 'en', 'PICKUP TIME'),
(1782, 'ar', '#ERROR!'),
(1782, 'en', '+ADD RATING'),
(1783, 'ar', 'تمت إضافة التقييم بنجاح'),
(1783, 'en', 'Rating added successfully'),
(1784, 'ar', 'إلغاء'),
(1784, 'en', 'CANCEL'),
(1785, 'ar', 'خضع'),
(1785, 'en', 'SUBMIT'),
(1786, 'ar', 'إضافة التصنيف'),
(1786, 'en', 'ADD RATING'),
(1787, 'ar', 'أوامر ..'),
(1787, 'en', 'commands..'),
(1788, 'ar', 'عربتي'),
(1788, 'en', 'My Cart'),
(1789, 'ar', 'عربة التسوق فارغة!'),
(1789, 'en', 'Your cart is empty!'),
(1790, 'ar', 'الرجاء إضافة المزيد من العناصر للوصول إلى الحد الأدنى لقيمة الطلب'),
(1790, 'en', 'Please add more items to reach the minimum order value'),
(1791, 'ar', 'الدفع'),
(1791, 'en', 'Checkout'),
(1792, 'ar', 'إزالة'),
(1792, 'en', 'REMOVE'),
(1793, 'ar', 'استمر'),
(1793, 'en', 'Continue'),
(1794, 'ar', 'اختر خيار التسليم الخاص بك'),
(1794, 'en', 'Choose your delivery option'),
(1795, 'ar', 'اختر عنوان التسليم الخاص بك'),
(1795, 'en', 'Choose your delivery address'),
(1796, 'ar', 'نوع التوصيل'),
(1796, 'en', 'DELIVERY TYPE'),
(1797, 'ar', 'طريقة الدفع او السداد'),
(1797, 'en', 'PAYMENT METHOD'),
(1798, 'ar', 'عنوان التسليم'),
(1798, 'en', 'DELIVERY ADDRESS'),
(1799, 'ar', '(في أقرب وقت ممكن)'),
(1799, 'en', '(As soon as possible)'),
(1800, 'ar', 'في وقت لاحق'),
(1800, 'en', 'Later'),
(1801, 'ar', 'لا يوجد عنوان'),
(1801, 'en', 'No Address found!'),
(1802, 'ar', 'حسنا ، يتيح جدولة وقت'),
(1802, 'en', 'OK, Lets schedule a Time'),
(1803, 'ar', 'امسك'),
(1803, 'en', 'Pickup'),
(1804, 'ar', 'توصيل'),
(1804, 'en', 'Delivery'),
(1805, 'ar', 'يرجى قبول الشروط والأحكام'),
(1805, 'en', 'Please accept the terms and conditions'),
(1806, 'ar', 'ملخص الطلب'),
(1806, 'en', 'Order Summary'),
(1807, 'ar', 'مكان الامر'),
(1807, 'en', 'Place Order'),
(1808, 'ar', 'طلب التعليمات ذات الصلة ، إن وجدت ...'),
(1808, 'en', 'Order related instructions, if any...'),
(1809, 'ar', 'أدخل رمز القسيمة'),
(1809, 'en', 'Enter coupon code'),
(1810, 'ar', 'أدخل تلميح السائق'),
(1810, 'en', 'Enter driver tip'),
(1811, 'ar', 'تطبيق'),
(1811, 'en', 'APPLY'),
(1812, 'ar', 'الدفع الالكتروني'),
(1812, 'en', 'Online Payment'),
(1813, 'ar', 'ترتيب الطلب'),
(1813, 'en', 'Order Conformation'),
(1814, 'ar', 'حالة الطلب :'),
(1814, 'en', 'Order Status :'),
(1815, 'ar', 'رقم التعريف الخاص بالطلب :'),
(1815, 'en', 'Order ID :'),
(1816, 'ar', 'كمية الطلب :'),
(1816, 'en', 'Order Amount :'),
(1817, 'ar', 'تفاعلات الحساسية:'),
(1817, 'en', 'Allergic Reactants :'),
(1818, 'ar', 'من فضلك أدخل إسمك'),
(1818, 'en', 'Please enter your Name'),
(1819, 'ar', 'رجاءا أدخل بريدك الإلكتروني'),
(1819, 'en', 'Please enter your Email'),
(1820, 'ar', 'الرجاء إدخال رقم هاتفك المحمول'),
(1820, 'en', 'Please enter your Mobile number'),
(1821, 'ar', 'يرجى إدخال الموضوع الخاص بك'),
(1821, 'en', 'Please enter your Subject'),
(1822, 'ar', 'أدرج رسالتك من فضلك'),
(1822, 'en', 'Please enter your Message'),
(1823, 'ar', 'هل تريد مسح السلة؟'),
(1823, 'en', 'Are you want to clear cart'),
(1824, 'ar', 'حسنا'),
(1824, 'en', 'OK'),
(1825, 'ar', 'إضافة التصنيف'),
(1825, 'en', 'ADD RATING'),
(1826, 'ar', 'يرجى إدخال رمز القسيمة'),
(1826, 'en', 'Please Enter the coupon code'),
(1827, 'ar', 'يرجى إدخال نصائح السائق'),
(1827, 'en', 'Please Enter the Driver Tips'),
(1828, 'ar', 'البحث عن الطعام'),
(1828, 'en', 'FIND FOOD'),
(1829, 'ar', '#NAME?'),
(1829, 'en', '+ ADD'),
(1830, 'ar', 'دفع'),
(1830, 'en', 'Payment'),
(1831, 'ar', 'العناصر'),
(1831, 'en', 'Items'),
(1832, 'ar', 'ملحوظة :'),
(1832, 'en', 'Note :'),
(1833, 'ar', 'سيتم إضافة رسوم التسليم على أساس عنوان التسليم.'),
(1833, 'en', 'Delivery fee will be added based on the delivery address.'),
(1834, 'ar', 'اختيار طريقة الدفع'),
(1834, 'en', 'CHOSSE PAYMENT METHOD'),
(1835, 'ar', 'عبر الانترنت'),
(1835, 'en', 'Online'),
(1836, 'ar', 'وصف'),
(1836, 'en', 'Description'),
(1837, 'ar', 'منطقة'),
(1837, 'en', 'Area'),
(1838, 'ar', 'مدينة'),
(1838, 'en', 'City'),
(1839, 'ar', 'من عند'),
(1839, 'en', 'From'),
(1840, 'ar', 'اشخاص'),
(1840, 'en', 'People'),
(1841, 'ar', 'خذ جولة'),
(1841, 'en', 'Take a Tour'),
(1842, 'ar', 'تخطى'),
(1842, 'en', 'Skip'),
(1843, 'ar', 'التالى'),
(1843, 'en', 'Next'),
(1844, 'ar', 'اذهب'),
(1844, 'en', 'Go'),
(1845, 'ar', 'استرجاع البيانات.'),
(1845, 'en', 'Retrieving data.'),
(1846, 'ar', 'ارجوك انتظر.'),
(1846, 'en', 'Please wait.'),
(1847, 'ar', 'الاسم الاول'),
(1847, 'en', 'FIRSTNAME'),
(1848, 'ar', 'الكنية'),
(1848, 'en', 'LAST NAME'),
(1849, 'ar', 'رقم الموبايل'),
(1849, 'en', 'MOBILE NO'),
(1850, 'ar', 'عنوان الايميل'),
(1850, 'en', 'EMAIL ID'),
(1851, 'ar', 'في وقت لاحق'),
(1851, 'en', 'Later'),
(1852, 'ar', 'SUB TOTAL'),
(1852, 'en', 'SUB TOTAL'),
(1853, 'ar', 'رسوم التوصيل'),
(1853, 'en', 'DELIVERY FEE'),
(1854, 'ar', 'ضريبة'),
(1854, 'en', 'VAT'),
(1855, 'ar', 'الأحكام والشروط'),
(1855, 'en', 'Terms and conditions'),
(1856, 'ar', 'سياسة خاصة'),
(1856, 'en', 'Privacy policy'),
(1857, 'ar', 'ترتيب حسب'),
(1857, 'en', 'SORT BY'),
(1858, 'ar', 'CUISINES'),
(1858, 'en', 'CUISINES'),
(1859, 'ar', 'عذرا ، لا المطاعم المتاحة في هذا الموقع!'),
(1859, 'en', 'Sorry, no restaurants avilable at this location!'),
(1860, 'ar', 'إلغاء'),
(1860, 'en', 'Cancel'),
(1861, 'ar', 'يجب عليك اختيار المكونات الدنيا على'),
(1861, 'en', 'You should select minimum ingredients on'),
(1862, 'ar', 'تمت إضافة السلة'),
(1862, 'en', 'Cart added'),
(1863, 'ar', 'فعله'),
(1863, 'en', 'Done'),
(1864, 'ar', 'عذرا ، لم يتم العثور على البيانات'),
(1864, 'en', 'Sorry, Data not found'),
(1865, 'ar', 'تم إرسال رسالتك بنجاح. سيتصل بك فريقنا قريبًا.'),
(1865, 'en', 'Your message sent successfully. Our team contact you soon.'),
(1866, 'ar', 'رسالتك'),
(1866, 'en', 'Your Message'),
(1867, 'ar', 'من خلال المتابعة ، أؤكد أنني قد قرأت وأوافق على الشروط والأحكام وسياسة الخصوصية'),
(1867, 'en', 'By continuing, I confirm that i have read and agree to the terms and conditions and privacy policy'),
(1868, 'ar', 'الأحكام والشروط'),
(1868, 'en', 'terms and conditions'),
(1869, 'ar', 'سياسة خاصة'),
(1869, 'en', 'privacy policy'),
(1870, 'ar', 'تطبيق رمز القسيمة'),
(1870, 'en', 'Apply voucher code'),
(1871, 'ar', 'وآمل أن يجعل الشعور لك'),
(1871, 'en', 'ALTERNATE MOBILE NUMBER'),
(1872, 'ar', 'أدخل رقم الجوال'),
(1872, 'en', 'Enter Mobile Number'),
(1873, 'ar', 'يرجى الاتصال بفريق دعم عملاء Foodi أو مكان التسليم الذي حاولت طلبه إذا استمرت المشكلة. لم يكتمل طلبك ولن يتم خصمه من بطاقة الدفع المحددة. أحد الأسباب المحتملة (والأكثر شيوعًا) لهذا الخطأ هو أن هناك لا يوجد غطاء على البطاقة التي تمت إضافتها عند الطلب.'),
(1873, 'en', 'Please contact the Foodi customer support or place of delivery you attempted to order if the problem persists.Your order is NOT completed and you will NOT be deducted from your specified payment card.One possible (and most common) reason for this error is that there is no cover on the card that was added when ordering.'),
(1874, 'ar', 'فشل الطلب'),
(1874, 'en', 'Order failed'),
(1875, 'ar', 'رقم الطلب:'),
(1875, 'en', 'Order Number:'),
(1876, 'ar', 'المبلغ الأصلي للطلب:'),
(1876, 'en', 'Original amount of order:'),
(1877, 'ar', 'دقيقة'),
(1877, 'en', 'mins'),
(1878, 'ar', 'مشغول'),
(1878, 'en', 'Busy'),
(1879, 'ar', 'هذا المطعم كان مشغولاً. لذا ، يرجى اختيار أي مطعم آخر.'),
(1879, 'en', 'This restaurant was busy. So, Please chose any other restaurant.'),
(1880, 'ar', 'تم إغلاق هذا المطعم. لذا ، يرجى اختيار أي مطعم آخر.'),
(1880, 'en', 'This restaurant was closed. So, Please chose any other restaurant.'),
(1881, 'ar', 'آسف للإزعاج'),
(1881, 'en', 'Sorry for the inconvenience'),
(1882, 'ar', 'الة تصوير'),
(1882, 'en', 'Camera'),
(1883, 'ar', 'صالة عرض'),
(1883, 'en', 'Gallery'),
(1884, 'ar', 'أختر'),
(1884, 'en', 'Choose'),
(1885, 'ar', 'إلغاء'),
(1885, 'en', 'Cancel'),
(1886, 'ar', 'عربتي'),
(1886, 'en', 'My Cart'),
(1887, 'ar', 'أجل وضعت بنجاح'),
(1887, 'en', 'Order Placed Successfully'),
(1888, 'en', 'rg'),
(1888, 'no', 'rg'),
(1888, 'ar', 'rg'),
(1889, 'en', 'Invalid coupon code'),
(1889, 'no', 'Invalid coupon code'),
(1889, 'ar', 'Invalid coupon code'),
(1890, 'en', 'Out of delivery area'),
(1890, 'no', 'Out of delivery area'),
(1890, 'ar', 'Out of delivery area'),
(1891, 'en', '');

-- --------------------------------------------------------

--
-- Table structure for table `meta_tag`
--

CREATE TABLE `meta_tag` (
  `meta_tag_id` bigint(20) NOT NULL,
  `meta_tag_key` varchar(32) NOT NULL,
  `meta_title` text,
  `meta_description` text,
  `meta_keywords` text,
  `cms_id` bigint(20) DEFAULT NULL,
  `static_page_name` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT 'TYPE : 1-ACTIVE, 2-INACTIVE',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_tag`
--

INSERT INTO `meta_tag` (`meta_tag_id`, `meta_tag_key`, `meta_title`, `meta_description`, `meta_keywords`, `cms_id`, `static_page_name`, `status`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`) VALUES
(1, 'zsdu4kzzsm0283va', 'legal-test', 'legal-test-descrption', 'legal-test-keywords', 5, '', 1, '2019-01-24 17:14:16', 1, NULL, NULL),
(2, 'ohzds3xhvxp4pbkb', 'about-us-test', 'about-us-test-desc', 'about-us-test-keywords', 2, '', 1, '2019-01-24 17:15:20', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_translation`
--

CREATE TABLE `mobile_translation` (
  `mobile_translation_id` bigint(20) NOT NULL,
  `translation_key` varchar(45) CHARACTER SET utf8 NOT NULL,
  `translation_value` longtext CHARACTER SET utf8 NOT NULL,
  `created_at` datetime NOT NULL,
  `created_user_id` bigint(20) NOT NULL,
  `modified_at` datetime NOT NULL,
  `modified_user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile_translation`
--

INSERT INTO `mobile_translation` (`mobile_translation_id`, `translation_key`, `translation_value`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`) VALUES
(1, '1Test', '{\"en\":\"test_en\"}', '2018-12-10 11:20:21', 1, '0000-00-00 00:00:00', 0),
(2, 'Error1', '{\"en\":\"error_en1\",\"no\":\"error_no1\",\"ar\":\"error_ar1\"}', '2018-12-10 11:26:22', 1, '0000-00-00 00:00:00', 0),
(3, 'teest', '{\"en\":\"english\",\"no\":\"norway\",\"ar\":\"arbic\"}', '2018-12-18 04:46:35', 1, '0000-00-00 00:00:00', 0),
(4, 'Login', '{\"en\":\"Login\",\"ar\":\"تسجيل الدخول\"}', '2018-12-18 04:57:01', 1, '0000-00-00 00:00:00', 0),
(5, 'Login', '{\"en\":\"Login\",\"ar\":\"تسجيل الدخول\"}', '2018-12-18 04:57:18', 1, '0000-00-00 00:00:00', 0),
(6, 'En', '{\"en\":\"En\",\"ar\":\"أون\"}', '2018-12-18 04:57:18', 1, '0000-00-00 00:00:00', 0),
(7, 'Nn', '{\"en\":\"Nn\",\"ar\":\"ن ن\"}', '2018-12-18 04:57:18', 1, '0000-00-00 00:00:00', 0),
(8, 'Email', '{\"en\":\"Email\",\"ar\":\"البريد الإلكتروني\"}', '2018-12-18 04:57:18', 1, '0000-00-00 00:00:00', 0),
(9, 'Password', '{\"en\":\"Password\",\"ar\":\"كلمه السر\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(10, 'Loginfb', '{\"en\":\"Login With Facebook\",\"ar\":\"تسجيل الدخول باستخدام الفيسبوك\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(11, 'LoginGPlus', '{\"en\":\"Login With Google +\",\"ar\":\"تسجيل الدخول مع جوجل +\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(12, 'or', '{\"en\":\"(OR)\",\"ar\":\"(أو)\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(13, 'Forgot', '{\"en\":\"Forgot Password?\",\"ar\":\"هل نسيت كلمة المرور؟\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(14, 'NewAccount', '{\"en\":\"New Account?\",\"ar\":\"حساب جديد؟\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(15, 'FirstName', '{\"en\":\"First Name\",\"ar\":\"الاسم الاول\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(16, 'LastName', '{\"en\":\"Last Name\",\"ar\":\"الكنية\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(17, 'EmailAddress', '{\"en\":\"Email Address\",\"ar\":\"عنوان بريد الكتروني\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(18, 'Mobile', '{\"en\":\"Mobile Number\",\"ar\":\"رقم الهاتف المحمول\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(19, 'signUpfb', '{\"en\":\"SignUp With Facebook\",\"ar\":\"اشترك عبر حساب فايسبوك\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(20, 'signUpGPlus', '{\"en\":\"SignUp With Google +\",\"ar\":\"تسجيل الدخول مع جوجل +\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(21, 'Password', '{\"en\":\"Password\",\"ar\":\"كلمه السر\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(22, 'YourLocation', '{\"en\":\"Home\",\"ar\":\"الصفحة الرئيسية\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(23, 'EnterLocation', '{\"en\":\"Enter Your Location\",\"ar\":\"أدخل موقعك\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(24, 'newAddress', '{\"en\":\"Add New Address\",\"ar\":\"إضافة عنوان جديد\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(25, 'AddressType', '{\"en\":\"Address Type\",\"ar\":\"نوع العنوان\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(26, 'line1', '{\"en\":\"Address Line1\",\"ar\":\"العنوان السطر 1\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(27, 'line2', '{\"en\":\"Address Line2\",\"ar\":\"سطر العنوان 2\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(28, 'Company', '{\"en\":\"Company\",\"ar\":\"شركة\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(29, 'LandMark', '{\"en\":\"Description\",\"ar\":\"وصف\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(30, 'Emailempty', '{\"en\":\"Email cannot be empty\",\"ar\":\"لا يمكن أن يكون البريد الإلكتروني فارغًا\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(31, 'Passwordempty', '{\"en\":\"Password cannot be empty\",\"ar\":\"لا يمكن أن تكون كلمة المرور فارغة\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(32, 'FirstNameEmpty', '{\"en\":\"First Name cannot be empty\",\"ar\":\"لا يمكن أن يكون الاسم الأول فارغًا\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(33, 'LastNameEmpty', '{\"en\":\"Last Name cannot be empty\",\"ar\":\"لا يمكن أن يكون الاسم الأخير فارغًا\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(34, 'MobileEmpty', '{\"en\":\"Mobile cannot be Empty\",\"ar\":\"لا يمكن أن يكون الجوال فارغًا\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(35, 'Emailpassword', '{\"en\":\"Email or password cannot empty\",\"ar\":\"البريد الإلكتروني أو كلمة المرور لا يمكن أن تكون فارغة\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(36, 'Validemail', '{\"en\":\"Please enter valid email\",\"ar\":\"الرجاء إدخال بريد إلكتروني صحيح\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(37, 'Home', '{\"en\":\"Home\",\"ar\":\"الصفحة الرئيسية\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(38, 'My Profile', '{\"en\":\"My Profile\",\"ar\":\"ملفي\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(39, 'My Orders', '{\"en\":\"My Orders\",\"ar\":\"طلباتي\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(40, 'Address Book', '{\"en\":\"Address Book\",\"ar\":\"دليل العناوين\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(41, 'Favourite Restaurants', '{\"en\":\"Favourite Restaurants\",\"ar\":\"المطاعم المفضلة\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(42, 'Newsletter', '{\"en\":\"News Letter\",\"ar\":\"رسالة إخبارية\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(43, 'Help', '{\"en\":\"Help\",\"ar\":\"مساعدة\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(44, 'Contact Us', '{\"en\":\"Contact Us\",\"ar\":\"اتصل بنا\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(45, 'Sign Out', '{\"en\":\"Sign Out\",\"ar\":\"خروج\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(46, 'Guest', '{\"en\":\"Guest\",\"ar\":\"زائر\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(47, 'gender', '{\"en\":\"Gender\",\"ar\":\"جنس\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(48, 'dob', '{\"en\":\"Date Of Birth\",\"ar\":\"تاريخ الولادة\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(49, 'CurrentPassword', '{\"en\":\"Current Password\",\"ar\":\"كلمة المرور الحالي\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(50, 'NewPassword', '{\"en\":\"New Password\",\"ar\":\"كلمة السر الجديدة\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(51, 'ConfirmNewPassword', '{\"en\":\"Confirm New Password\",\"ar\":\"تأكيد كلمة المرور الجديدة\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(52, 'updatePassword', '{\"en\":\"Update Password\",\"ar\":\"تطوير كلمة السر\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(53, 'updateProfile', '{\"en\":\"Update Profile\",\"ar\":\"تحديث الملف\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(54, 'changePassword', '{\"en\":\"Change Password?\",\"ar\":\"غير كلمة السر؟\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(55, 'Passwordnotmatched', '{\"en\":\"Password not matched\",\"ar\":\"كلمة المرور غير متطابقة\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(56, 'Male', '{\"en\":\"Male\",\"ar\":\"الذكر\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(57, 'Female', '{\"en\":\"Female\",\"ar\":\"إناثا\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(58, 'otpTitle', '{\"en\":\"OTP\",\"ar\":\"مكتب المدعي العام\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(59, 'optSendToMobile', '{\"en\":\"OTP Send your register mobile number\",\"ar\":\"OTP أرسل رقم هاتفك المحمول\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(60, 'resendOtp', '{\"en\":\"Resend your OTP after {0} Seconds\",\"ar\":\"أعد إرسال OTP بعد {0} ثانية\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(61, 'resend', '{\"en\":\"Resend\",\"ar\":\"إعادة إرسال\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(62, 'notReceive', '{\"en\":\"If you did not receive your OTP? Resend\",\"ar\":\"إذا لم تستلم كلمة المرور الخاصة بك؟ إعادة إرسال\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(63, 'Locate me', '{\"en\":\"Locate me\",\"ar\":\"تحديد موقع لي\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(64, 'Enter Your Delivery Address', '{\"en\":\"Enter Your Delivery Address\",\"ar\":\"أدخل عنوان التسليم الخاص بك\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(65, 'Restaurants', '{\"en\":\"Restaurants\",\"ar\":\"مطاعم\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(66, 'Popularity', '{\"en\":\"Popularity\",\"ar\":\"شعبية\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(67, 'Rating', '{\"en\":\"Rating\",\"ar\":\"تقييم\"}', '2018-12-18 04:57:19', 1, '0000-00-00 00:00:00', 0),
(68, 'Min order value', '{\"en\":\"Min order value\",\"ar\":\"الحد الأدنى من القيمة\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(69, 'FILTERBY', '{\"en\":\"FILTERBY\",\"ar\":\"مصنف بواسطة\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(70, 'Preorder Avilable', '{\"en\":\"Preorder Avilable\",\"ar\":\"الطلب Avilable\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(71, 'Voucher Accept', '{\"en\":\"Voucher Accept\",\"ar\":\"قبول القسيمة\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(72, 'Pure Vegetarain', '{\"en\":\"Pure Vegetarain\",\"ar\":\"Pure Vegetain\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(73, 'Non Vegetarain', '{\"en\":\"Non Vegetarain\",\"ar\":\"غير الخضار\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(74, 'Halal', '{\"en\":\"Halal\",\"ar\":\"حلالا\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(75, 'Search Restaurants', '{\"en\":\"Search Restaurants\",\"ar\":\"بحث المطاعم\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(76, 'FILTERS', '{\"en\":\"FILTERS\",\"ar\":\"FILTERS\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(77, 'CLEAR FILTERS', '{\"en\":\"CLEAR FILTERS\",\"ar\":\"فلاتر واضحة\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(78, 'Filter Restaurants', '{\"en\":\"Filter Restaurants\",\"ar\":\"تصفية المطاعم\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(79, 'Open', '{\"en\":\"Open\",\"ar\":\"افتح\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(80, 'Close', '{\"en\":\"Close\",\"ar\":\"قريب\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(81, 'Featured Restaurants', '{\"en\":\"Featured Restaurants\",\"ar\":\"مطاعم مميزة\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(82, 'Restaurants', '{\"en\":\"Restaurants\",\"ar\":\"مطاعم\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(83, 'My Profile', '{\"en\":\"My Profile\",\"ar\":\"ملفي\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(84, 'No order found', '{\"en\":\"No order found\",\"ar\":\"لم يتم العثور على طلب\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(85, 'VIEW ORDER', '{\"en\":\"VIEW ORDER\",\"ar\":\"مشاهدة الطلب\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(86, 'REORDER', '{\"en\":\"Go to restaurants\",\"ar\":\"اذهب إلى المطاعم\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(87, 'ORDER INFO', '{\"en\":\"ORDER INFO\",\"ar\":\"ترتيب المعلومات\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(88, 'ORDER SUMMARY', '{\"en\":\"ORDER SUMMARY\",\"ar\":\"ملخص الطلب\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(89, 'ITEM', '{\"en\":\"ITEM\",\"ar\":\"بند\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(90, 'QTY', '{\"en\":\"QTY\",\"ar\":\"الكمية\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(91, 'PRICE', '{\"en\":\"PRICE\",\"ar\":\"السعر\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(92, 'Order Amount', '{\"en\":\"Order Amount\",\"ar\":\"كمية الطلب\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(93, 'Payment Status', '{\"en\":\"Payment Status\",\"ar\":\"حالة السداد\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(94, 'Status', '{\"en\":\"Status\",\"ar\":\"الحالة\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(95, 'Drag Your Location', '{\"en\":\"Drag Your Location\",\"ar\":\"اسحب موقعك\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(96, 'Please select your address type', '{\"en\":\"Please select your address type\",\"ar\":\"يرجى تحديد نوع العنوان الخاص بك\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(97, 'Please enter your address', '{\"en\":\"Please enter your address\",\"ar\":\"الرجاء إدخال عنوانك\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(98, 'Please enter your addressLine2', '{\"en\":\"Please enter your addressLine2\",\"ar\":\"يرجى إدخال عنوان LINE2 الخاص بك\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(99, 'Enter Your Email', '{\"en\":\"Enter Your Email\",\"ar\":\"أدخل بريدك الالكتروني\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(100, 'Don\'t miss out on our Great Offers', '{\"en\":\"Don\'t miss out on our Great Offers\",\"ar\":\"لا تفوّت عروضنا الرائعة\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(101, 'Subject', '{\"en\":\"Subject\",\"ar\":\"موضوع\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(102, 'Your name', '{\"en\":\"Your name\",\"ar\":\"اسمك\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(103, 'More Restaurants', '{\"en\":\"More Restaurants\",\"ar\":\"المزيد من المطاعم\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(104, 'MENUS', '{\"en\":\"MENUS\",\"ar\":\"قائمة الطعام\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(105, 'INFO', '{\"en\":\"INFO\",\"ar\":\"INFO\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(106, 'RATINGS', '{\"en\":\"RATINGS\",\"ar\":\"RATINGS\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(107, 'YourCartempty', '{\"en\":\"Your Cart empty\",\"ar\":\"سلتك فارغة\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(108, 'CUISINES', '{\"en\":\"CUISINES\",\"ar\":\"CUISINES\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(109, 'DELIVERYHOURS', '{\"en\":\"DELIVERY HOURS\",\"ar\":\"ساعات التوصيل\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(110, 'PICKUPHOURS', '{\"en\":\"PICKUP HOURS\",\"ar\":\"ساعات PICKUP\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(111, 'ADDRESS', '{\"en\":\"ADDRESS\",\"ar\":\"عنوان\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(112, 'DELIVERYFEEFROM', '{\"en\":\"DELIVERY FEE FROM\",\"ar\":\"رسوم التسليم من\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(113, 'DELIVERYFEE', '{\"en\":\"DELIVERY FEE\",\"ar\":\"رسوم التوصيل\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(114, 'DELIVERYTIME', '{\"en\":\"DELIVERY TIME\",\"ar\":\"موعد التسليم\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(115, 'PICKUPTIME', '{\"en\":\"PICKUP TIME\",\"ar\":\"اختار المعاد\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(116, 'ADD RATING', '{\"en\":\"+ADD RATING\",\"ar\":\"#ERROR!\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(117, 'Rating added successfully', '{\"en\":\"Rating added successfully\",\"ar\":\"تمت إضافة التقييم بنجاح\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(118, 'CANCEL', '{\"en\":\"CANCEL\",\"ar\":\"إلغاء\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(119, 'SUBMIT', '{\"en\":\"SUBMIT\",\"ar\":\"خضع\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(120, 'ADDRAT', '{\"en\":\"ADD RATING\",\"ar\":\"إضافة التصنيف\"}', '2018-12-18 04:57:20', 1, '0000-00-00 00:00:00', 0),
(121, 'commands', '{\"en\":\"commands..\",\"ar\":\"أوامر ..\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(122, 'MyCart', '{\"en\":\"My Cart\",\"ar\":\"عربتي\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(123, 'Yourcartisempty', '{\"en\":\"Your cart is empty!\",\"ar\":\"عربة التسوق فارغة!\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(124, 'Please add more items to reach the minimum or', '{\"en\":\"Please add more items to reach the minimum order value\",\"ar\":\"الرجاء إضافة المزيد من العناصر للوصول إلى الحد الأدنى لقيمة الطلب\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(125, 'Checkout', '{\"en\":\"Checkout\",\"ar\":\"الدفع\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(126, 'REMOVE', '{\"en\":\"REMOVE\",\"ar\":\"إزالة\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(127, 'Continue', '{\"en\":\"Continue\",\"ar\":\"استمر\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(128, 'Choose your delivery option', '{\"en\":\"Choose your delivery option\",\"ar\":\"اختر خيار التسليم الخاص بك\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(129, 'Choose your delivery address', '{\"en\":\"Choose your delivery address\",\"ar\":\"اختر عنوان التسليم الخاص بك\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(130, 'DELIVERY TYPE', '{\"en\":\"DELIVERY TYPE\",\"ar\":\"نوع التوصيل\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(131, 'PAYMENT METHOD', '{\"en\":\"PAYMENT METHOD\",\"ar\":\"طريقة الدفع او السداد\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(132, 'DELIVERY ADDRESS', '{\"en\":\"DELIVERY ADDRESS\",\"ar\":\"عنوان التسليم\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(133, 'Assoonaspossible', '{\"en\":\"(As soon as possible)\",\"ar\":\"(في أقرب وقت ممكن)\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(134, 'Later', '{\"en\":\"Later\",\"ar\":\"في وقت لاحق\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(135, 'NoAddressfound', '{\"en\":\"No Address found!\",\"ar\":\"لا يوجد عنوان\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(136, 'OKLetsscheduleaTime', '{\"en\":\"OK, Lets schedule a Time\",\"ar\":\"حسنا ، يتيح جدولة وقت\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(137, 'Pickup', '{\"en\":\"Pickup\",\"ar\":\"امسك\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(138, 'Delivery', '{\"en\":\"Delivery\",\"ar\":\"توصيل\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(139, 'Please accept the terms and conditions', '{\"en\":\"Please accept the terms and conditions\",\"ar\":\"يرجى قبول الشروط والأحكام\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(140, 'Order Summary', '{\"en\":\"Order Summary\",\"ar\":\"ملخص الطلب\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(141, 'PlaceOrder', '{\"en\":\"Place Order\",\"ar\":\"مكان الامر\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(142, 'Orderrelatedinstructionsifany', '{\"en\":\"Order related instructions, if any...\",\"ar\":\"طلب التعليمات ذات الصلة ، إن وجدت ...\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(143, 'Enter coupon code', '{\"en\":\"Enter coupon code\",\"ar\":\"أدخل رمز القسيمة\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(144, 'Enter driver tip', '{\"en\":\"Enter driver tip\",\"ar\":\"أدخل تلميح السائق\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(145, 'APPLY', '{\"en\":\"APPLY\",\"ar\":\"تطبيق\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(146, 'Online Payment', '{\"en\":\"Online Payment\",\"ar\":\"الدفع الالكتروني\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(147, 'Order Conformation', '{\"en\":\"Order Conformation\",\"ar\":\"ترتيب الطلب\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(148, 'OrderStatus', '{\"en\":\"Order Status :\",\"ar\":\"حالة الطلب :\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(149, 'OrderID', '{\"en\":\"Order ID :\",\"ar\":\"رقم التعريف الخاص بالطلب :\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(150, 'OrderAmount', '{\"en\":\"Order Amount :\",\"ar\":\"كمية الطلب :\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(151, 'Allergic Reactants', '{\"en\":\"Allergic Reactants :\",\"ar\":\"تفاعلات الحساسية:\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(152, 'Please enter your Name', '{\"en\":\"Please enter your Name\",\"ar\":\"من فضلك أدخل إسمك\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(153, 'Please enter your Email', '{\"en\":\"Please enter your Email\",\"ar\":\"رجاءا أدخل بريدك الإلكتروني\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(154, 'Please enter your Mobile number', '{\"en\":\"Please enter your Mobile number\",\"ar\":\"الرجاء إدخال رقم هاتفك المحمول\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(155, 'Please enter your Subject', '{\"en\":\"Please enter your Subject\",\"ar\":\"يرجى إدخال الموضوع الخاص بك\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(156, 'Please enter your Message', '{\"en\":\"Please enter your Message\",\"ar\":\"أدرج رسالتك من فضلك\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(157, 'Are you want to clear cart', '{\"en\":\"Are you want to clear cart\",\"ar\":\"هل تريد مسح السلة؟\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(158, 'OK', '{\"en\":\"OK\",\"ar\":\"حسنا\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(159, 'ADDRATE', '{\"en\":\"ADD RATING\",\"ar\":\"إضافة التصنيف\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(160, 'Please Enter the coupon code', '{\"en\":\"Please Enter the coupon code\",\"ar\":\"يرجى إدخال رمز القسيمة\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(161, 'Please Enter the Driver Tips', '{\"en\":\"Please Enter the Driver Tips\",\"ar\":\"يرجى إدخال نصائح السائق\"}', '2018-12-18 04:57:21', 1, '0000-00-00 00:00:00', 0),
(162, 'Find Food', '{\"en\":\"FIND FOOD\",\"ar\":\"البحث عن الطعام\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(163, 'ADD', '{\"en\":\"+ ADD\",\"ar\":\"#NAME?\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(164, 'Payment', '{\"en\":\"Payment\",\"ar\":\"دفع\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(165, 'Items', '{\"en\":\"Items\",\"ar\":\"العناصر\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(166, 'Note', '{\"en\":\"Note :\",\"ar\":\"ملحوظة :\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(167, 'Deliveryfeewillbeaddedbasedonthedeliveryaddre', '{\"en\":\"Delivery fee will be added based on the delivery address.\",\"ar\":\"سيتم إضافة رسوم التسليم على أساس عنوان التسليم.\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(168, 'CHOSSE PAYMENT METHOD', '{\"en\":\"CHOSSE PAYMENT METHOD\",\"ar\":\"اختيار طريقة الدفع\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(169, 'Online', '{\"en\":\"Online\",\"ar\":\"عبر الانترنت\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(170, 'description', '{\"en\":\"Description\",\"ar\":\"وصف\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(171, 'area', '{\"en\":\"Area\",\"ar\":\"منطقة\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(172, 'city', '{\"en\":\"City\",\"ar\":\"مدينة\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(173, 'From', '{\"en\":\"From\",\"ar\":\"من عند\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(174, 'People', '{\"en\":\"People\",\"ar\":\"اشخاص\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(175, 'TakeaTour', '{\"en\":\"Take a Tour\",\"ar\":\"خذ جولة\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(176, 'Skip', '{\"en\":\"Skip\",\"ar\":\"تخطى\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(177, 'Next', '{\"en\":\"Next\",\"ar\":\"التالى\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(178, 'Go', '{\"en\":\"Go\",\"ar\":\"اذهب\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(179, 'Retrievingdata', '{\"en\":\"Retrieving data.\",\"ar\":\"استرجاع البيانات.\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(180, 'Pleasewait', '{\"en\":\"Please wait.\",\"ar\":\"ارجوك انتظر.\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(181, 'FIRSTNAME', '{\"en\":\"FIRSTNAME\",\"ar\":\"الاسم الاول\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(182, 'LAST NAME', '{\"en\":\"LAST NAME\",\"ar\":\"الكنية\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(183, 'MOBILE NO', '{\"en\":\"MOBILE NO\",\"ar\":\"رقم الموبايل\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(184, 'EMAIL ID', '{\"en\":\"EMAIL ID\",\"ar\":\"عنوان الايميل\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(185, 'Later', '{\"en\":\"Later\",\"ar\":\"في وقت لاحق\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(186, 'SUB TOTAL', '{\"en\":\"SUB TOTAL\",\"ar\":\"SUB TOTAL\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(187, 'DELIVERY FEE', '{\"en\":\"DELIVERY FEE\",\"ar\":\"رسوم التوصيل\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(188, 'VAT', '{\"en\":\"VAT\",\"ar\":\"ضريبة\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(189, 'Terms', '{\"en\":\"Terms and conditions\",\"ar\":\"الأحكام والشروط\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(190, 'Privacy', '{\"en\":\"Privacy policy\",\"ar\":\"سياسة خاصة\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(191, 'SORTBY', '{\"en\":\"SORT BY\",\"ar\":\"ترتيب حسب\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(192, 'CUISINES', '{\"en\":\"CUISINES\",\"ar\":\"CUISINES\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(193, 'norestaurants', '{\"en\":\"Sorry, no restaurants avilable at this location!\",\"ar\":\"عذرا ، لا المطاعم المتاحة في هذا الموقع!\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(194, 'Cancel', '{\"en\":\"Cancel\",\"ar\":\"إلغاء\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(195, 'minimumingredients', '{\"en\":\"You should select minimum ingredients on\",\"ar\":\"يجب عليك اختيار المكونات الدنيا على\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(196, 'Cart', '{\"en\":\"Cart added\",\"ar\":\"تمت إضافة السلة\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(197, 'Done', '{\"en\":\"Done\",\"ar\":\"فعله\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(198, 'dataNotFound', '{\"en\":\"Sorry, Data not found\",\"ar\":\"عذرا ، لم يتم العثور على البيانات\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(199, 'ContactMsg', '{\"en\":\"Your message sent successfully. Our team contact you soon.\",\"ar\":\"تم إرسال رسالتك بنجاح. سيتصل بك فريقنا قريبًا.\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(200, 'YourMessage', '{\"en\":\"Your Message\",\"ar\":\"رسالتك\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(201, 'OrderTerms', '{\"en\":\"By continuing, I confirm that i have read and agree to the terms and conditions and privacy policy\",\"ar\":\"من خلال المتابعة ، أؤكد أنني قد قرأت وأوافق على الشروط والأحكام وسياسة الخصوصية\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(202, 'TermsCondition', '{\"en\":\"terms and conditions\",\"ar\":\"الأحكام والشروط\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(203, 'Policy', '{\"en\":\"privacy policy\",\"ar\":\"سياسة خاصة\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(204, 'Applyvouchercode', '{\"en\":\"Apply voucher code\",\"ar\":\"تطبيق رمز القسيمة\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(205, 'AlterMobile', '{\"en\":\"ALTERNATE MOBILE NUMBER\",\"ar\":\"وآمل أن يجعل الشعور لك\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(206, 'EnterMobileNumber', '{\"en\":\"Enter Mobile Number\",\"ar\":\"أدخل رقم الجوال\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(207, 'Failmsg', '{\"en\":\"Please contact the Foodi customer support or place of delivery you attempted to order if the problem persists.Your order is NOT completed and you will NOT be deducted from your specified payment card.One possible (and most common) reason for this error is that there is no cover on the card that was added when ordering.\",\"ar\":\"يرجى الاتصال بفريق دعم عملاء Foodi أو مكان التسليم الذي حاولت طلبه إذا استمرت المشكلة. لم يكتمل طلبك ولن يتم خصمه من بطاقة الدفع المحددة. أحد الأسباب المحتملة (والأكثر شيوعًا) لهذا الخطأ هو أن هناك لا يوجد غطاء على البطاقة التي تمت إضافتها عند الطلب.\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(208, 'Order failed', '{\"en\":\"Order failed\",\"ar\":\"فشل الطلب\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(209, 'Order Number', '{\"en\":\"Order Number:\",\"ar\":\"رقم الطلب:\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(210, 'Original amount of order', '{\"en\":\"Original amount of order:\",\"ar\":\"المبلغ الأصلي للطلب:\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(211, 'mins', '{\"en\":\"mins\",\"ar\":\"دقيقة\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(212, 'busy', '{\"en\":\"Busy\",\"ar\":\"مشغول\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(213, 'busyMsg', '{\"en\":\"This restaurant was busy. So, Please chose any other restaurant.\",\"ar\":\"هذا المطعم كان مشغولاً. لذا ، يرجى اختيار أي مطعم آخر.\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(214, 'closeMsg', '{\"en\":\"This restaurant was closed. So, Please chose any other restaurant.\",\"ar\":\"تم إغلاق هذا المطعم. لذا ، يرجى اختيار أي مطعم آخر.\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(215, 'sorry', '{\"en\":\"Sorry for the inconvenience\",\"ar\":\"آسف للإزعاج\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(216, 'Camera', '{\"en\":\"Camera\",\"ar\":\"الة تصوير\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(217, 'Gallery', '{\"en\":\"Gallery\",\"ar\":\"صالة عرض\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(218, 'Choose', '{\"en\":\"Choose\",\"ar\":\"أختر\"}', '2018-12-18 04:57:22', 1, '0000-00-00 00:00:00', 0),
(219, 'Cancel', '{\"en\":\"Cancel\",\"ar\":\"إلغاء\"}', '2018-12-18 04:57:23', 1, '0000-00-00 00:00:00', 0),
(220, 'MyCart', '{\"en\":\"My Cart\",\"ar\":\"عربتي\"}', '2018-12-18 04:57:23', 1, '0000-00-00 00:00:00', 0),
(221, 'OrderPlaced', '{\"en\":\"Order Placed Successfully\",\"ar\":\"أجل وضعت بنجاح\"}', '2018-12-18 04:57:23', 1, '0000-00-00 00:00:00', 0),
(222, 'test', '{\"en\":\"tstssq\",\"no\":\"tsts\",\"ar\":\"ts\"}', '2019-02-28 13:04:30', 1, '0000-00-00 00:00:00', 0),
(223, 'gfn', '{\"en\":\"gfn\",\"no\":\"fgn\",\"ar\":\"fgnnfn\"}', '2019-02-28 13:07:11', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` bigint(20) NOT NULL,
  `newsletter_key` varchar(16) DEFAULT NULL,
  `newsletter_title` varchar(256) DEFAULT NULL,
  `newsletter_content` text,
  `newsletter_image` varchar(256) DEFAULT NULL,
  `newsletter_status` tinyint(1) DEFAULT NULL COMMENT '0 - Inactive, 1 - Active',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`newsletter_id`, `newsletter_key`, `newsletter_title`, `newsletter_content`, `newsletter_image`, `newsletter_status`, `created_at`, `modified_at`) VALUES
(1, 'olcubl3vgpcmnxwc', 'dfsdf', 'dsfdsf', '/uploads/newsletter/1533132305DOHhV.jpg', 3, '2018-08-01 19:35:05', NULL),
(2, 'rteypyudweefbuyc', 'fdgdfg', 'fdgdf dfgdfgdf gfhf gfhgfh3423423dsfdsf', '/uploads/newsletter/1533195146VMZEQ.png', 3, '2018-08-02 13:02:26', NULL),
(3, 'abytel1ba4qv5rum', 'hgh', '<p>sc<img alt=\"\" src=\"fddfdfd\" /></p>\r\n', '/uploads/newsletter/1535371730d5iF7.png', 3, '2018-08-27 17:38:50', NULL),
(4, 'i1dhgw5enspxyzza', 'sdfsf', '<p>fsddf</p>\r\n', '/uploads/newsletter/1535372238AC595.png', 3, '2018-08-27 17:47:18', NULL),
(5, 'gu3hdfbohoi3ozwr', 'test', '<p>tesy</p>\r\n', '/uploads/newsletter/1535372351XLfl9.jpg', 1, '2018-08-27 17:49:11', NULL),
(6, 'r2sj2trjc6vtkwwu', 'Test newsletter', '<p>iteiteiiytiytiytietyity</p>\r\n', '/uploads/newsletter/1536754804grVg8.png', 3, '2018-09-12 17:50:04', NULL),
(7, 'anszqv242pabraam', 'Test newslettertr', '<p>ruutrutu</p>\r\n', '/uploads/newsletter/1536900277yYRbS.jpg', 3, '2018-09-14 10:14:37', NULL),
(8, 'rxkwhzr3wfdepti9', 'Test newsletter', '<p>retret</p>\r\n\r\n<p>rtretret</p>\r\n\r\n<p>retr</p>\r\n\r\n<p>re</p>\r\n\r\n<p>rete</p>\r\n\r\n<p>ret</p>\r\n\r\n<p>r</p>\r\n', '/uploads/newsletter/1537340080ATGtG.png', 1, '2018-09-19 12:24:40', NULL),
(9, 'at5be91xh3njmxvd', 't', '<p>tt</p>\r\n', '/uploads/newsletter/1537416074so3VZ.png', 1, '2018-09-20 09:31:14', NULL),
(10, '4l8owdu0qb0abwny', 'test', '<p>&lt;ul&gt;<br />\r\n&nbsp;&nbsp;&lt;li&gt;&lt;data&nbsp;value=&quot;21053&quot;&gt;Cherry Tomato&lt;/data&gt;&lt;/li&gt;<br />\r\n&nbsp;&nbsp;&lt;li&gt;&lt;data&nbsp;value=&quot;21054&quot;&gt;Beef Tomato&lt;/data&gt;&lt;/li&gt;<br />\r\n&nbsp;&nbsp;&lt;li&gt;&lt;data&nbsp;value=&quot;21055&quot;&gt;Snack Tomato&lt;/data&gt;&lt;/li&gt;<br />\r\n&lt;/ul&gt;</p>\r\n', NULL, 1, '2020-03-24 18:15:18', NULL),
(11, 'xtppqflwghvizf2l', 'test3', '<p>test</p>\r\n', NULL, 1, '2020-03-27 16:32:21', NULL),
(12, 'ueerdo5an99hwptg', 'News', '<p>test&nbsp;</p>\r\n', NULL, 3, '2020-03-31 12:27:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `newsletter_subscriber_id` bigint(20) NOT NULL,
  `newsletter_subscriber_key` varchar(16) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `status` int(1) NOT NULL COMMENT '1-Active, 2-Inactive',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsletter_subscriber`
--

INSERT INTO `newsletter_subscriber` (`newsletter_subscriber_id`, `newsletter_subscriber_key`, `name`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, '4ipxyz2rbzszdgx1', NULL, 'thamayanthi.ssv@.com', 3, '2018-08-20 20:02:39', '2018-09-14 18:17:20'),
(6, 'depjnypvabbpll9b', 'gau', 'gauti124@gmail.com', 1, '2018-09-10 19:38:10', '2018-09-10 19:38:28'),
(7, 'xffxjso95qv4qad6', 'Pradeep', '11@gmail.com', 3, '2018-09-11 10:01:40', '2018-09-11 10:03:12'),
(12, 'mu1havsovrk6srhf', 'Pradeep', 'pradeep.k@.com', 1, '2018-09-14 18:34:12', '2018-09-19 11:50:02'),
(14, 'uzvxp4dscbx2wq6l', NULL, 'ragavan.ca@.com', 3, '2018-09-18 16:23:44', '2018-09-19 11:49:33'),
(15, 'iwvl78xpw6qc48rg', NULL, 'ccc@ccc.com', 1, '2018-09-19 00:44:01', '2018-09-19 00:44:01'),
(16, '0wiszwcvojxgcuvm', NULL, 'cccc@ccc.com', 3, '2018-09-19 00:44:34', '2020-03-31 12:39:30'),
(17, '3jjsc4izrg5hedn6', NULL, 'kanna@.com', 1, '2018-09-19 10:09:35', '2018-09-19 10:09:35'),
(18, 'gzx7pfbuwv1qikeu', 'Baluraj', 'baluraj.r@.com', 1, '2018-09-20 11:29:16', '2018-09-20 11:29:16'),
(19, 'sit3n3zkpiqimne8', NULL, 'verud@yahoo.com', 1, '2018-10-01 22:28:40', '2018-10-01 22:28:40'),
(20, 'ojyqjvrttibluhyv', 'Raj', 'rajkiran.g@.com', 3, '2018-11-12 11:41:56', '2018-11-12 11:41:57'),
(21, 'ilytpbnvo62apwoy', 'saravanan', 'gopinath.p@.com', 3, '2018-11-21 16:21:57', '2018-11-21 16:21:57'),
(22, 'odstxkdssxe9ojsp', 'Nandni', 'nandni.s@.com', 3, '2018-12-04 10:48:34', '2019-03-28 17:20:40'),
(23, 'szbwr9tgosymebk9', 'thamayanthi', 'thamayanthi.v@.com', 3, '2019-01-11 13:58:39', '2019-01-25 07:20:11'),
(24, 'wx1utpyxlhghqqtj', 'Ramesh', 'ramesh.m@.com', 1, '2019-02-14 15:55:26', '2019-02-14 16:00:08'),
(25, 'umpoeqrsecjh46uf', 'Poovizhi', 'poovizhi.r@ontabee.com', 3, '2020-02-28 17:52:32', '2020-03-31 09:41:59'),
(26, 'hrj26sxa9ltke5ks', 'Poovizhi', 'amritha.r@.com', 3, '2020-03-31 12:28:31', '2020-03-31 12:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` bigint(20) NOT NULL,
  `notification_title` varchar(256) DEFAULT NULL,
  `notification_description` text,
  `notification_image_path` varchar(256) DEFAULT NULL,
  `is_all_user` tinyint(1) DEFAULT NULL COMMENT '0 - No, 1 - Yes',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0 - Inactive, 1 - Active',
  `notification_key` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `notification_title`, `notification_description`, `notification_image_path`, `is_all_user`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`, `status`, `notification_key`) VALUES
(1, 'dsfds', 'dsfdsf', '/uploads/notification/1533116485P1pUR.jpg', 1, '2018-08-01 15:11:25', 1, NULL, NULL, 1, 'unolwbc9i0huhzko'),
(2, 'Test notification', 'This is a test notification', '/uploads/notification/1538369792Rag4i.jpg', 0, '2018-10-01 10:26:32', 1, NULL, NULL, 1, 'jojntue11yojht7r');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` bigint(20) NOT NULL,
  `order_key` varchar(16) DEFAULT NULL,
  `order_number` varchar(16) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `customer_first_name` varchar(64) DEFAULT NULL,
  `customer_last_name` varchar(64) DEFAULT NULL,
  `customer_mobile_number` bigint(16) DEFAULT NULL,
  `customer_email` varchar(256) DEFAULT NULL,
  `user_address_id` bigint(20) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `order_date_time` datetime DEFAULT NULL,
  `order_type` smallint(1) DEFAULT NULL COMMENT '1 - Delivery, 2 - Pickup',
  `delivery_option` smallint(1) DEFAULT NULL COMMENT '1 - ASAP, 2 - Later',
  `pickup_delivery_date_time` datetime DEFAULT NULL,
  `item_total` double DEFAULT NULL,
  `delivery_fee` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `vat_percent` double DEFAULT NULL,
  `vat` double DEFAULT NULL,
  `vat_percent_cgst` double DEFAULT NULL,
  `vat_cgst` double DEFAULT NULL,
  `vat_percent_sgst` double DEFAULT NULL,
  `vat_sgst` double DEFAULT NULL,
  `vat_percent_igst` double DEFAULT NULL,
  `vat_igst` double DEFAULT NULL,
  `service_tax_percent` double DEFAULT NULL,
  `service_tax` double DEFAULT NULL,
  `coupon_offer_value` double DEFAULT NULL,
  `delivery_boy_tip` double DEFAULT NULL,
  `order_total` double DEFAULT NULL,
  `payment_option` smallint(1) DEFAULT NULL COMMENT '1 - COD, 2 - Online, 3 - Tabaogo Credits, 4 - Help me pay',
  `payment_status` smallint(1) DEFAULT NULL COMMENT '1 - Pending, 2 - Success, 3 - Failure',
  `order_status` smallint(1) DEFAULT NULL,
  `payment_response` text,
  `rejected_reason` text,
  `accepted_time` time DEFAULT NULL,
  `deliveryboy_pickuped_time` time DEFAULT NULL,
  `delivered_time` time DEFAULT NULL,
  `order_promotion_id` bigint(20) DEFAULT NULL,
  `siginature` varchar(256) DEFAULT NULL,
  `package_price` double DEFAULT NULL,
  `admin_commission` double DEFAULT NULL,
  `vendor_profit` double DEFAULT NULL,
  `admin_profit` double DEFAULT NULL,
  `vendor_tax` double DEFAULT NULL,
  `vendor_commission` double DEFAULT NULL,
  `transaction_id` text,
  `vendor_payment_status` tinyint(1) DEFAULT NULL COMMENT '0 - Pending, 1 - Paid',
  `deliveryboy_id` varchar(255) DEFAULT NULL,
  `order_message` varchar(300) DEFAULT NULL,
  `is_delivery_boy_order_created` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-Not available, 1-yes, 2-No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `order_key`, `order_number`, `vendor_id`, `branch_id`, `user_id`, `customer_first_name`, `customer_last_name`, `customer_mobile_number`, `customer_email`, `user_address_id`, `latitude`, `longitude`, `order_date_time`, `order_type`, `delivery_option`, `pickup_delivery_date_time`, `item_total`, `delivery_fee`, `tax`, `vat_percent`, `vat`, `vat_percent_cgst`, `vat_cgst`, `vat_percent_sgst`, `vat_sgst`, `vat_percent_igst`, `vat_igst`, `service_tax_percent`, `service_tax`, `coupon_offer_value`, `delivery_boy_tip`, `order_total`, `payment_option`, `payment_status`, `order_status`, `payment_response`, `rejected_reason`, `accepted_time`, `deliveryboy_pickuped_time`, `delivered_time`, `order_promotion_id`, `siginature`, `package_price`, `admin_commission`, `vendor_profit`, `admin_profit`, `vendor_tax`, `vendor_commission`, `transaction_id`, `vendor_payment_status`, `deliveryboy_id`, `order_message`, `is_delivery_boy_order_created`) VALUES
(1, 'pywfcyzz15hhazav', '0000001', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-06 12:02:12', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(2, 'iytz1qvguswpcajn', '0000002', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-06 12:14:16', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(3, 'djrgoxk61r7n2ig7', '0000003', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-06 13:18:07', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(4, 'he2pzskru4t7ksq5', '0000004', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-06 14:37:22', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(5, '4iit42i4e3dnfuuv', '0000005', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-06 14:41:28', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 5, 435, 1, 1, 6, NULL, 'df', NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(6, 'oi6w1xxtq1o5cgdh', '0000006', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-08 19:58:16', 1, 2, '2020-05-09 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(7, 'hhubgn2rsbaalxj5', '0000007', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-08 19:59:55', 1, 2, '2020-05-10 10:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(8, 'uvehbnhfrvp3ddq2', '0000008', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-09 12:27:04', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(9, '5pzltev2yfdoybb7', '0000009', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-09 12:55:05', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(10, '50kanc3fa0yfvpg5', '0000010', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-09 12:57:52', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(11, 'gpsyq0giedigpjnf', '0000011', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-09 12:59:30', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(12, '0dkzcg3ri1gscann', '0000012', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-09 13:06:39', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(13, '9ys3kxf7dbyt8nih', '0000013', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-09 13:08:55', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(14, 'mmehvbednevjwcr0', '0000014', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-09 13:16:29', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 2, 2, 1, '{\"isConsentPayment\":\"0\",\"mihpayid\":\"9083865407\",\"mode\":\"CC\",\"status\":\"success\",\"unmappedstatus\":\"captured\",\"key\":\"qKevp1TE\",\"txnid\":\"0000014\",\"amount\":\"430.00\",\"addedon\":\"2020-05-09 13:12:36\",\"productinfo\":\"Order Products\",\"firstname\":\"Ramesh\",\"lastname\":\"\",\"address1\":\"\",\"address2\":\"\",\"city\":\"\",\"state\":\"\",\"country\":\"\",\"zipcode\":\"\",\"email\":\"ramesh.m@.com\",\"phone\":\"9791976451\",\"udf1\":\"\",\"udf2\":\"\",\"udf3\":\"\",\"udf4\":\"\",\"udf5\":\"\",\"udf6\":\"\",\"udf7\":\"\",\"udf8\":\"\",\"udf9\":\"\",\"udf10\":\"\",\"hash\":\"8bb99901aec2a3262e5854c7801d0cda1c2fffa2ab9733a294e120d702ab078d071f0fd317a4d1066e2145d2a7531521b4fd291b6e3eb5c7e3dff03439ec7a84\",\"field1\":\"115641203416\",\"field2\":\"466747\",\"field3\":\"205453228141104\",\"field4\":\"UGhQWHRTd0JyUGtla0w1Nk42YlQ=\",\"field5\":\"02\",\"field6\":\"\",\"field7\":\"AUTHPOSITIVE\",\"field8\":\"\",\"field9\":\"\",\"PG_TYPE\":\"HDFCPG\",\"encryptedPaymentId\":\"3BC9C5D335DA153CEA920D97D63ACBE7\",\"bank_ref_num\":\"205453228141104\",\"bankcode\":\"MAST\",\"error\":\"E000\",\"error_Message\":\"No Error\",\"name_on_card\":\"Test\",\"cardnum\":\"512345XXXXXX2346\",\"cardhash\":\"This field is no longer supported in postback params.\",\"amount_split\":\"{\\\"PAYU\\\":\\\"430.00\\\"}\",\"payuMoneyId\":\"250259962\",\"discount\":\"0.00\",\"net_amount_debit\":\"430\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(15, 'qnkbpztxmo1pi35t', '0000015', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-09 13:18:36', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 2, 2, 1, '{\"isConsentPayment\":\"0\",\"mihpayid\":\"9083865417\",\"mode\":\"CC\",\"status\":\"success\",\"unmappedstatus\":\"captured\",\"key\":\"qKevp1TE\",\"txnid\":\"0000015\",\"amount\":\"430.00\",\"addedon\":\"2020-05-09 13:18:16\",\"productinfo\":\"Order Products\",\"firstname\":\"Ramesh\",\"lastname\":\"\",\"address1\":\"\",\"address2\":\"\",\"city\":\"\",\"state\":\"\",\"country\":\"\",\"zipcode\":\"\",\"email\":\"ramesh.m@.com\",\"phone\":\"919791976451\",\"udf1\":\"\",\"udf2\":\"\",\"udf3\":\"\",\"udf4\":\"\",\"udf5\":\"\",\"udf6\":\"\",\"udf7\":\"\",\"udf8\":\"\",\"udf9\":\"\",\"udf10\":\"\",\"hash\":\"7b00c0f1bdebe7ff7d6d1dea698508358e6ab135f910289598ba7256fed84aab9da08af84a7f4e4ded5b8fddc636a617f81a8181c40a2d911f5405e26ce81223\",\"field1\":\"437603566991\",\"field2\":\"932156\",\"field3\":\"796416740998669\",\"field4\":\"YUt5V05KUUlsTmNhRkZ2WHFiU1I=\",\"field5\":\"02\",\"field6\":\"\",\"field7\":\"AUTHPOSITIVE\",\"field8\":\"\",\"field9\":\"\",\"PG_TYPE\":\"HDFCPG\",\"encryptedPaymentId\":\"8B524DB538994127471A08E6CA391C6B\",\"bank_ref_num\":\"796416740998669\",\"bankcode\":\"MAST\",\"error\":\"E000\",\"error_Message\":\"No Error\",\"name_on_card\":\"Test\",\"cardnum\":\"512345XXXXXX2346\",\"cardhash\":\"This field is no longer supported in postback params.\",\"amount_split\":\"{\\\"PAYU\\\":\\\"430.00\\\"}\",\"payuMoneyId\":\"250259973\",\"discount\":\"0.00\",\"net_amount_debit\":\"430\"}', NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(16, 'xwinxkt2ofnjyo4j', '0000016', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-09 13:19:09', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 2, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(17, '39naeyk11ta2msyd', '0000017', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', NULL, NULL, NULL, '2020-05-16 17:21:04', 2, 1, '1970-01-01 05:30:00', 300, 0, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 420, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(18, 'orzxlhwyvadyshml', '0000018', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.2388431, 76.9974433, '2020-05-16 18:19:54', 1, 1, '1970-01-01 05:30:00', 300, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 430, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(19, 'ctmssov1bb88qm0c', '0000019', 1, 1, 1, 'Ramesh', 'M', 919791976452, 'ramesh.m@.com', 1, NULL, NULL, '2020-05-16 19:27:20', 2, 1, '1970-01-01 05:30:00', 300, 0, NULL, 10, 0, 30, 0, 20, 0, 40, 120, NULL, NULL, 0, 0, 420, 1, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 274, 26, NULL, NULL, NULL, NULL, NULL, '', 0),
(20, 'etk4x6jvtl3kpike', '0000020', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.01482, 76.95789, '2020-05-25 14:08:21', 1, 1, '1970-01-01 05:30:00', 600, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 240, NULL, NULL, 0, 0, 850, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 29, 571, 29, NULL, NULL, NULL, NULL, NULL, '', 0),
(21, 'qhuaoi7xkiogloal', '0000021', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.01482, 76.95789, '2020-05-25 14:09:08', 1, 1, '1970-01-01 05:30:00', 600, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 240, NULL, NULL, 0, 0, 850, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 29, 571, 29, NULL, NULL, NULL, NULL, NULL, '', 0),
(22, 'zw8wo8xepk96xjyt', '0000022', 1, 1, 1, 'Ramesh', 'M', 919791976451, 'ramesh.m@.com', 2, 11.01482, 76.95789, '2020-05-25 14:13:54', 1, 1, '1970-01-01 05:30:00', 600, 10, NULL, 10, 0, 30, 0, 20, 0, 40, 240, NULL, NULL, 0, 0, 850, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 29, 571, 29, NULL, NULL, NULL, NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_coupon`
--

CREATE TABLE `order_coupon` (
  `order_coupon_id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `coupon_type` smallint(1) DEFAULT NULL,
  `coupon_minimum_cart_value` double DEFAULT NULL,
  `coupon_code` varchar(32) DEFAULT NULL,
  `coupon_value` double DEFAULT NULL,
  `quantity` smallint(6) DEFAULT NULL,
  `coupon_applied_date` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_coupon_lang`
--

CREATE TABLE `order_coupon_lang` (
  `order_coupon_lang_id` bigint(20) NOT NULL,
  `order_coupon_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `coupon_name` varchar(64) DEFAULT NULL,
  `coupon_description` text,
  `coupon_image` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `item_price` double DEFAULT NULL,
  `quantity` smallint(6) DEFAULT NULL,
  `item_total_price` double DEFAULT NULL,
  `modifiers_total_price` double DEFAULT NULL,
  `ingredients_total_price` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `package_price` double DEFAULT NULL,
  `special_instructions` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `item_id`, `item_price`, `quantity`, `item_total_price`, `modifiers_total_price`, `ingredients_total_price`, `total_price`, `package_price`, `special_instructions`) VALUES
(1, 1, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(2, 2, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(3, 3, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(4, 4, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(5, 5, 13, 300, 1, 300, NULL, NULL, 435, 0, ''),
(6, 6, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(7, 7, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(8, 8, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(9, 9, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(10, 10, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(11, 11, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(12, 12, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(13, 13, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(14, 14, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(15, 15, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(16, 16, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(17, 17, 13, 300, 1, 300, NULL, NULL, 420, 0, ''),
(18, 18, 13, 300, 1, 300, NULL, NULL, 430, 0, ''),
(19, 19, 13, 300, 1, 300, NULL, NULL, 420, 0, ''),
(20, 20, 13, 300, 2, 600, NULL, NULL, 850, 0, ''),
(21, 21, 13, 300, 2, 600, NULL, NULL, 850, 0, ''),
(22, 22, 13, 300, 2, 600, NULL, NULL, 850, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_item_image`
--

CREATE TABLE `order_item_image` (
  `order_item_image_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `item_image_path` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_item_image`
--

INSERT INTO `order_item_image` (`order_item_image_id`, `order_item_id`, `language_code`, `item_image_path`) VALUES
(1, 1, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(2, 1, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(3, 1, 'ar', NULL),
(4, 2, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(5, 2, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(6, 2, 'ar', NULL),
(7, 3, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(8, 3, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(9, 3, 'ar', NULL),
(10, 4, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(11, 4, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(12, 4, 'ar', NULL),
(13, 5, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(14, 5, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(15, 5, 'ar', NULL),
(16, 6, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(17, 6, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(18, 6, 'ar', NULL),
(19, 7, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(20, 7, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(21, 7, 'ar', NULL),
(22, 8, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(23, 8, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(24, 8, 'ar', NULL),
(25, 9, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(26, 9, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(27, 9, 'ar', NULL),
(28, 10, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(29, 10, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(30, 10, 'ar', NULL),
(31, 11, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(32, 11, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(33, 11, 'ar', NULL),
(34, 12, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(35, 12, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(36, 12, 'ar', NULL),
(37, 13, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(38, 13, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(39, 13, 'ar', NULL),
(40, 14, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(41, 14, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(42, 14, 'ar', NULL),
(43, 15, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(44, 15, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(45, 15, 'ar', NULL),
(46, 16, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(47, 16, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(48, 16, 'ar', NULL),
(49, 17, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(50, 17, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(51, 17, 'ar', NULL),
(52, 18, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(53, 18, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(54, 18, 'ar', NULL),
(55, 19, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(56, 19, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(57, 19, 'ar', NULL),
(58, 20, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(59, 20, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(60, 20, 'ar', NULL),
(61, 21, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(62, 21, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(63, 21, 'ar', NULL),
(64, 22, 'en', '/uploads/items/1550143245CsVhD.jpg'),
(65, 22, 'no', '/uploads/items/1537523772BD1VJ.jpg'),
(66, 22, 'ar', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_item_ingredient_group`
--

CREATE TABLE `order_item_ingredient_group` (
  `order_item_ingredient_group_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) DEFAULT NULL,
  `ingredient_type` smallint(1) DEFAULT NULL,
  `minimum` smallint(6) DEFAULT NULL,
  `maximum` smallint(6) DEFAULT NULL,
  `is_drink` varchar(45) DEFAULT NULL COMMENT '0 - No. 1 - Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_item_ingredient_group_lang`
--

CREATE TABLE `order_item_ingredient_group_lang` (
  `order_item_ingredient_group_lang_id` bigint(20) NOT NULL,
  `order_item_ingredient_group_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `group_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_item_ingredient_mapping`
--

CREATE TABLE `order_item_ingredient_mapping` (
  `order_item_ingredient_mapping_id` bigint(20) NOT NULL,
  `order_item_ingredient_group_id` bigint(20) DEFAULT NULL,
  `ingredient_id` bigint(20) DEFAULT NULL,
  `default_status` smallint(1) DEFAULT NULL COMMENT '1 - Not default, 2 - Default',
  `ingredient_quantity` smallint(6) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_item_ingredient_mapping_lang`
--

CREATE TABLE `order_item_ingredient_mapping_lang` (
  `order_item_ingredient_mapping_lang_id` bigint(20) NOT NULL,
  `order_item_ingredient_mapping_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `ingredient_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_item_lang`
--

CREATE TABLE `order_item_lang` (
  `order_item_lang_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `item_name` varchar(64) DEFAULT NULL,
  `item_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_item_lang`
--

INSERT INTO `order_item_lang` (`order_item_lang_id`, `order_item_id`, `language_code`, `item_name`, `item_description`) VALUES
(1, 1, 'en', 'mat testing', ''),
(2, 1, 'no', 'mat rett test', 'mat beskrivelse'),
(3, 1, 'ar', 'New Test', ''),
(4, 2, 'en', 'mat testing', ''),
(5, 2, 'no', 'mat rett test', 'mat beskrivelse'),
(6, 2, 'ar', 'New Test', ''),
(7, 3, 'en', 'mat testing', ''),
(8, 3, 'no', 'mat rett test', 'mat beskrivelse'),
(9, 3, 'ar', 'New Test', ''),
(10, 4, 'en', 'mat testing', ''),
(11, 4, 'no', 'mat rett test', 'mat beskrivelse'),
(12, 4, 'ar', 'New Test', ''),
(13, 5, 'en', 'mat testing', ''),
(14, 5, 'no', 'mat rett test', 'mat beskrivelse'),
(15, 5, 'ar', 'New Test', ''),
(16, 6, 'en', 'mat testing', ''),
(17, 6, 'no', 'mat rett test', 'mat beskrivelse'),
(18, 6, 'ar', 'New Test', ''),
(19, 7, 'en', 'mat testing', ''),
(20, 7, 'no', 'mat rett test', 'mat beskrivelse'),
(21, 7, 'ar', 'New Test', ''),
(22, 8, 'en', 'mat testing', ''),
(23, 8, 'no', 'mat rett test', 'mat beskrivelse'),
(24, 8, 'ar', 'New Test', ''),
(25, 9, 'en', 'mat testing', ''),
(26, 9, 'no', 'mat rett test', 'mat beskrivelse'),
(27, 9, 'ar', 'New Test', ''),
(28, 10, 'en', 'mat testing', ''),
(29, 10, 'no', 'mat rett test', 'mat beskrivelse'),
(30, 10, 'ar', 'New Test', ''),
(31, 11, 'en', 'mat testing', ''),
(32, 11, 'no', 'mat rett test', 'mat beskrivelse'),
(33, 11, 'ar', 'New Test', ''),
(34, 12, 'en', 'mat testing', ''),
(35, 12, 'no', 'mat rett test', 'mat beskrivelse'),
(36, 12, 'ar', 'New Test', ''),
(37, 13, 'en', 'mat testing', ''),
(38, 13, 'no', 'mat rett test', 'mat beskrivelse'),
(39, 13, 'ar', 'New Test', ''),
(40, 14, 'en', 'mat testing', ''),
(41, 14, 'no', 'mat rett test', 'mat beskrivelse'),
(42, 14, 'ar', 'New Test', ''),
(43, 15, 'en', 'mat testing', ''),
(44, 15, 'no', 'mat rett test', 'mat beskrivelse'),
(45, 15, 'ar', 'New Test', ''),
(46, 16, 'en', 'mat testing', ''),
(47, 16, 'no', 'mat rett test', 'mat beskrivelse'),
(48, 16, 'ar', 'New Test', ''),
(49, 17, 'en', 'mat testing', ''),
(50, 17, 'no', 'mat rett test', 'mat beskrivelse'),
(51, 17, 'ar', 'New Test', ''),
(52, 18, 'en', 'mat testing', ''),
(53, 18, 'no', 'mat rett test', 'mat beskrivelse'),
(54, 18, 'ar', 'New Test', ''),
(55, 19, 'en', 'mat testing', ''),
(56, 19, 'no', 'mat rett test', 'mat beskrivelse'),
(57, 19, 'ar', 'New Test', ''),
(58, 20, 'en', 'mat testing', ''),
(59, 20, 'no', 'mat rett test', 'mat beskrivelse'),
(60, 20, 'ar', 'New Test', ''),
(61, 21, 'en', 'mat testing', ''),
(62, 21, 'no', 'mat rett test', 'mat beskrivelse'),
(63, 21, 'ar', 'New Test', ''),
(64, 22, 'en', 'mat testing', ''),
(65, 22, 'no', 'mat rett test', 'mat beskrivelse'),
(66, 22, 'ar', 'New Test', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_mall_product`
--

CREATE TABLE `order_mall_product` (
  `order_mall_product_id` bigint(20) NOT NULL,
  `order_mall_product_key` varchar(16) DEFAULT NULL,
  `order_product_number` varchar(16) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL COMMENT 'in tabago points',
  `user_address_id` double DEFAULT NULL,
  `order_date_time` datetime DEFAULT NULL,
  `order_status` tinyint(1) DEFAULT NULL COMMENT '1 - Pending, 2 - Complete',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_mall_product_lang`
--

CREATE TABLE `order_mall_product_lang` (
  `order_mall_product_lang_id` bigint(20) NOT NULL,
  `order_mall_product_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `product_name` varchar(256) DEFAULT NULL,
  `product_description` text,
  `product_image_path` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_parcel`
--

CREATE TABLE `order_parcel` (
  `order_parcel_id` bigint(20) NOT NULL,
  `order_parcel_key` varchar(16) DEFAULT NULL,
  `order_booking_id` varchar(16) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `parcel_item_type_id` bigint(20) DEFAULT NULL,
  `pickup_latitude` double DEFAULT NULL,
  `pickup_longitude` double DEFAULT NULL,
  `drop_latitude` double DEFAULT NULL,
  `drop_longitude` double DEFAULT NULL,
  `pickup_date_time` datetime DEFAULT NULL,
  `delivery_date_time` datetime DEFAULT NULL,
  `pickup_user_name` varchar(45) DEFAULT NULL,
  `pickup_user_mobile_number` bigint(16) DEFAULT NULL,
  `delivery_user_name` varchar(64) DEFAULT NULL,
  `delivery_user_mobile_number` bigint(16) DEFAULT NULL,
  `coupon_value` double DEFAULT NULL,
  `standard_fee` double DEFAULT NULL,
  `delivery_fee` double DEFAULT NULL,
  `total_fee` double DEFAULT NULL,
  `payment_option` tinyint(1) DEFAULT NULL COMMENT '1 - COD, 2 - Online, 3 - Tabago Credit',
  `payment_provider` tinyint(1) DEFAULT NULL COMMENT '1 - Sender 2 - Receiver',
  `order_status` tinyint(1) DEFAULT NULL COMMENT '1 - Pending, 2 - Approved, 3 - Rejected',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `pickup_address` text,
  `delivery_address` text,
  `payment_status` tinyint(1) DEFAULT NULL COMMENT '1 - Pending, 2 - Success, 3 - Failure',
  `product_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_parcel_item_image`
--

CREATE TABLE `order_parcel_item_image` (
  `order_parcel_item_image_id` bigint(20) NOT NULL,
  `order_parcel_id` bigint(20) DEFAULT NULL,
  `order_parcel_image` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_promotion`
--

CREATE TABLE `order_promotion` (
  `order_promotion_id` bigint(20) NOT NULL,
  `order_promotion_key` varchar(16) DEFAULT NULL,
  `order_promotion_number` varchar(16) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `promotion_id` bigint(20) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `promotion_price` double DEFAULT NULL,
  `offer` double DEFAULT NULL,
  `promotion_points` smallint(6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT NULL COMMENT '0 - No, 1 - Yes',
  `promotion_code` varchar(8) DEFAULT NULL,
  `bear_type` varchar(45) DEFAULT NULL COMMENT '1- Admin. 2 - Vendor, 3 - Both',
  `payment_status` tinyint(1) DEFAULT NULL COMMENT '1- Pending, 2 - Success, 3 - Failure',
  `transaction_id` text,
  `payment_response` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_promotion_lang`
--

CREATE TABLE `order_promotion_lang` (
  `order_promotion_lang_id` bigint(20) NOT NULL,
  `order_promotion_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `promotion_name` varchar(64) DEFAULT NULL,
  `promotion_description` text,
  `promotion_image_path` varchar(256) DEFAULT NULL,
  `promotion_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_tax`
--

CREATE TABLE `order_tax` (
  `order_tax_id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `order_tax_price` double DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_tax_lang`
--

CREATE TABLE `order_tax_lang` (
  `order_tax_lang_id` bigint(20) NOT NULL,
  `order_tax_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `tax_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `otp_temp`
--

CREATE TABLE `otp_temp` (
  `otp_temp_id` bigint(20) NOT NULL,
  `otp_temp_key` varchar(17) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_details` text NOT NULL,
  `otp` int(5) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1-',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp_temp`
--

INSERT INTO `otp_temp` (`otp_temp_id`, `otp_temp_key`, `mobile_no`, `email`, `user_details`, `otp`, `status`, `created_at`, `modified_at`) VALUES
(1, '0llgek2swm5xkrj8', '+919791976451', 'ramesh.m@.com', '{\"_csrf-Delivery-Squad-frontend\":\"nnI6wedg4WugJJQNkhWRo_5gI80bYqbXIH2yMveq8xz8BVjyljOOJu1K5l-gdN3Cqzhq9XAU87oQUIReleLKJQ==\",\"User\":{\"first_name\":\"Ramesh\",\"last_name\":\"M\",\"email\":\"ramesh.m@.com\",\"mobile_number\":\"+919791976451\",\"password\":\"123456ad@\",\"confirm_password\":\"123456ad@\",\"terms\":\"1\"},\"country_code\":\"+91\"}', 1234, 0, '2020-05-02 13:56:06', NULL),
(2, 'ewa3slgpcs1s2iky', '+919791976451', 'ramesh.m@.com', '{\"_csrf-Delivery-Squad-frontend\":\"nnI6wedg4WugJJQNkhWRo_5gI80bYqbXIH2yMveq8xz8BVjyljOOJu1K5l-gdN3Cqzhq9XAU87oQUIReleLKJQ==\",\"User\":{\"first_name\":\"Ramesh\",\"last_name\":\"M\",\"email\":\"ramesh.m@.com\",\"mobile_number\":\"+919791976451\",\"password\":\"123456ad@\",\"confirm_password\":\"123456ad@\",\"terms\":\"1\"},\"country_code\":\"+91\"}', 1234, 0, '2020-05-02 13:58:19', NULL),
(3, 'i1exbpctarlxumjg', '+919791976451', 'ramesh.m@.com', '{\"_csrf-Delivery-Squad-frontend\":\"nnI6wedg4WugJJQNkhWRo_5gI80bYqbXIH2yMveq8xz8BVjyljOOJu1K5l-gdN3Cqzhq9XAU87oQUIReleLKJQ==\",\"User\":{\"first_name\":\"Ramesh\",\"last_name\":\"M\",\"email\":\"ramesh.m@.com\",\"mobile_number\":\"+919791976451\",\"password\":\"123456ad@\",\"confirm_password\":\"123456ad@\",\"terms\":\"1\"},\"country_code\":\"+91\"}', 1234, 0, '2020-05-02 14:01:57', NULL),
(4, 'hwtlbs4axgsu4i7r', '+919791976451', 'ramesh.m@.com', '{\"_csrf-Delivery-Squad-frontend\":\"CJZ_nw45ioibv36pcCA9Ml8iT8BNorlHzIlwralfVTFO1zr3eQ640sKJEt9ETHZwNUMEtSH43XeL7jv8_y07VQ==\",\"User\":{\"first_name\":\"Ramesh\",\"last_name\":\"M\",\"email\":\"ramesh.m@.com\",\"mobile_number\":\"+919791976451\",\"password\":\"123456ad@\",\"confirm_password\":\"123456ad@\",\"terms\":\"1\"},\"country_code\":\"+91\"}', 1234, 0, '2020-05-02 14:20:24', NULL),
(5, 'ep80mjv1ti0kkd1i', '+919791976451', 'ramesh.m@.com', '{\"_csrf-Delivery-Squad-frontend\":\"wZyLBnoYqz5Kh7kDCUKLk94644FugNnB-IYL3YI_WELw-t5wTinuZCi06jFbNeLknwKUsAGx9PCb3EPwt0ggGw==\",\"User\":{\"first_name\":\"Ram\",\"last_name\":\"M\",\"email\":\"ramesh.m@.com\",\"mobile_number\":\"+919791976451\",\"password\":\"123456admin\",\"confirm_password\":\"123456admin\",\"terms\":\"1\"},\"country_code\":\"+91\"}', 1234, 0, '2020-05-16 16:45:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parcel_item_type`
--

CREATE TABLE `parcel_item_type` (
  `parcel_item_type_id` bigint(20) NOT NULL,
  `parcel_item_type_key` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 - Archieved',
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_item_type_lang`
--

CREATE TABLE `parcel_item_type_lang` (
  `parcel_item_type_lang_id` bigint(20) NOT NULL,
  `parcel_item_type_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `parcel_item_type_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `point_history`
--

CREATE TABLE `point_history` (
  `point_history_id` bigint(20) NOT NULL,
  `point_history_number` varchar(16) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `point` double DEFAULT NULL,
  `action` tinyint(1) DEFAULT NULL COMMENT '1 - Credit, 2- Debit',
  `notes` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` bigint(20) NOT NULL,
  `post_key` varchar(16) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post_image`
--

CREATE TABLE `post_image` (
  `post_image_id` bigint(20) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `post_image_path` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `promotion_id` bigint(20) NOT NULL,
  `promotion_key` varchar(16) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `promotion_price` double DEFAULT NULL,
  `offer` double DEFAULT NULL,
  `promotion_points` smallint(6) DEFAULT NULL,
  `promotion_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Deactive, 3 - Deleted',
  `total_bought` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `promotion_code` varchar(8) DEFAULT NULL,
  `bear_type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_lang`
--

CREATE TABLE `promotion_lang` (
  `promotion_lang_id` bigint(20) NOT NULL,
  `promotion_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `promotion_name` varchar(256) DEFAULT NULL,
  `promotion_description` text,
  `promotion_image_path` varchar(256) DEFAULT NULL,
  `promotion_type` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL,
  `role_key` varchar(16) DEFAULT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  `backend_role_json` text,
  `role_status` tinyint(1) DEFAULT '1' COMMENT '0 - Inactive, 1 - Active',
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_key`, `role_name`, `backend_role_json`, `role_status`, `created_user_id`, `created_at`, `modified_user_id`, `modified_at`) VALUES
(1, 'yuiyuiiy7869y08', 'Admin ', '[{\"id\":\"banner/index\",\"state\":1},{\"id\":\"banner/create\",\"state\":0},{\"id\":\"banner/update\",\"state\":0},{\"id\":\"banner/delete\",\"state\":0},{\"id\":\"branch/index\",\"state\":1},{\"id\":\"branch/create\",\"state\":1},{\"id\":\"branch/update\",\"state\":1},{\"id\":\"branch/delete\",\"state\":0},{\"id\":\"branch/change-status\",\"state\":0},{\"id\":\"branch/get-status\",\"state\":0},{\"id\":\"branch/time-slot\",\"state\":0},{\"id\":\"branch/time-slot-update\",\"state\":0},{\"id\":\"branch/time-slot-delete\",\"state\":0},{\"id\":\"branch/save-reason\",\"state\":0},{\"id\":\"branch-review/index\",\"state\":1},{\"id\":\"branch-review/get-review-status\",\"state\":1},{\"id\":\"category/index\",\"state\":0},{\"id\":\"category/create\",\"state\":1},{\"id\":\"category/update\",\"state\":0},{\"id\":\"category/delete\",\"state\":0},{\"id\":\"category/change-status\",\"state\":1},{\"id\":\"city/index\",\"state\":0},{\"id\":\"city/create\",\"state\":0},{\"id\":\"city/update\",\"state\":0},{\"id\":\"city/delete\",\"state\":0},{\"id\":\"city/change-status\",\"state\":1},{\"id\":\"cms/index\",\"state\":0},{\"id\":\"cms/create\",\"state\":0},{\"id\":\"cms/update\",\"state\":0},{\"id\":\"cms/delete\",\"state\":1},{\"id\":\"cms/change-status\",\"state\":0},{\"id\":\"configuration/social-media\",\"state\":0},{\"id\":\"configuration/taobo-credit\",\"state\":0},{\"id\":\"configuration/taobo-wallet\",\"state\":1},{\"id\":\"configuration/sms\",\"state\":0},{\"id\":\"configuration/smtp\",\"state\":0},{\"id\":\"configuration/distance-time\",\"state\":1},{\"id\":\"configuration/referral-point\",\"state\":0},{\"id\":\"configuration/app-config\",\"state\":0},{\"id\":\"configuration/delivery-boy-setting\",\"state\":0},{\"id\":\"configuration/one-signal-setting\",\"state\":0},{\"id\":\"configuration/currency-setting\",\"state\":0},{\"id\":\"country/index\",\"state\":1},{\"id\":\"country/create\",\"state\":0},{\"id\":\"country/update\",\"state\":0},{\"id\":\"country/delete\",\"state\":1},{\"id\":\"country/change-status\",\"state\":0},{\"id\":\"coupon/index\",\"state\":0},{\"id\":\"coupon/create\",\"state\":0},{\"id\":\"coupon/update\",\"state\":1},{\"id\":\"coupon/delete\",\"state\":0},{\"id\":\"coupon/change-status\",\"state\":1},{\"id\":\"cuisine/index\",\"state\":0},{\"id\":\"cuisine/create\",\"state\":0},{\"id\":\"cuisine/update\",\"state\":0},{\"id\":\"cuisine/delete\",\"state\":0},{\"id\":\"cuisine/change-status\",\"state\":0},{\"id\":\"delivery-area/index\",\"state\":0},{\"id\":\"delivery-area/create\",\"state\":0},{\"id\":\"delivery-area/update\",\"state\":0},{\"id\":\"delivery-area/delete\",\"state\":1},{\"id\":\"deliveryboy/index\",\"state\":0},{\"id\":\"deliveryboy/view\",\"state\":1},{\"id\":\"deliveryboy/create\",\"state\":1},{\"id\":\"deliveryboy/update\",\"state\":0},{\"id\":\"deliveryboy/delete\",\"state\":0},{\"id\":\"deliveryboy/get-delivery-boy-status\",\"state\":0},{\"id\":\"enquiry/index\",\"state\":1},{\"id\":\"enquiry/quick-view\",\"state\":1},{\"id\":\"enquiry/delete\",\"state\":0},{\"id\":\"ingredient/index\",\"state\":0},{\"id\":\"ingredient/create\",\"state\":1},{\"id\":\"ingredient/update\",\"state\":1},{\"id\":\"ingredient/delete\",\"state\":0},{\"id\":\"ingredient/change-status\",\"state\":0},{\"id\":\"item/index\",\"state\":0},{\"id\":\"item/create\",\"state\":1},{\"id\":\"item/update\",\"state\":1},{\"id\":\"item/delete\",\"state\":0},{\"id\":\"item/change-status\",\"state\":0},{\"id\":\"item-ingredient-group/index\",\"state\":0},{\"id\":\"item-ingredient-group/create\",\"state\":1},{\"id\":\"item-ingredient-group/update\",\"state\":1},{\"id\":\"item-ingredient-group/delete\",\"state\":0},{\"id\":\"item-ingredient-group/change-status\",\"state\":0},{\"id\":\"item-mapping/index\",\"state\":0},{\"id\":\"item-mapping/create\",\"state\":1},{\"id\":\"item-mapping/update\",\"state\":1},{\"id\":\"item-mapping/delete\",\"state\":0},{\"id\":\"item-mapping/change-status\",\"state\":0},{\"id\":\"item-type/index\",\"state\":0},{\"id\":\"item-type/create\",\"state\":1},{\"id\":\"item-type/update\",\"state\":1},{\"id\":\"item-type/delete\",\"state\":0},{\"id\":\"item-type/change-status\",\"state\":0},{\"id\":\"mall-product/index\",\"state\":0},{\"id\":\"mall-product/create\",\"state\":0},{\"id\":\"mall-product/update\",\"state\":0},{\"id\":\"mall-product/delete\",\"state\":0},{\"id\":\"mall-product/change-status\",\"state\":0},{\"id\":\"newsletter/index\",\"state\":0},{\"id\":\"newsletter/create\",\"state\":0},{\"id\":\"newsletter/update\",\"state\":0},{\"id\":\"newsletter/delete\",\"state\":0},{\"id\":\"newsletter/change-status\",\"state\":0},{\"id\":\"newsletter-subscriber/index\",\"state\":0},{\"id\":\"newsletter-subscriber/delete\",\"state\":0},{\"id\":\"notification/index\",\"state\":0},{\"id\":\"notification/create\",\"state\":0},{\"id\":\"notification/update\",\"state\":0},{\"id\":\"notification/delete\",\"state\":0},{\"id\":\"notification/change-status\",\"state\":0},{\"id\":\"order/index\",\"state\":0},{\"id\":\"order/create\",\"state\":0},{\"id\":\"order/quick-view\",\"state\":0},{\"id\":\"order/add-item-to-cart\",\"state\":0},{\"id\":\"order/assign-order\",\"state\":0},{\"id\":\"order/assign-delivery-boy\",\"state\":0},{\"id\":\"order/get-order-status\",\"state\":0},{\"id\":\"order/track\",\"state\":0},{\"id\":\"order/print\",\"state\":0},{\"id\":\"order-mall-product/index\",\"state\":0},{\"id\":\"order-mall-product/create\",\"state\":0},{\"id\":\"order-mall-product/update\",\"state\":0},{\"id\":\"order-mall-product/delete\",\"state\":0},{\"id\":\"order-mall-product/change-status\",\"state\":0},{\"id\":\"order-mall-product/quick-view\",\"state\":0},{\"id\":\"order-mall-product/print\",\"state\":0},{\"id\":\"order-parcel/index\",\"state\":0},{\"id\":\"order-parcel/quick-view\",\"state\":0},{\"id\":\"order-parcel/change-status\",\"state\":0},{\"id\":\"parcel-item-type/index\",\"state\":0},{\"id\":\"parcel-item-type/create\",\"state\":0},{\"id\":\"parcel-item-type/update\",\"state\":0},{\"id\":\"parcel-item-type/delete\",\"state\":0},{\"id\":\"parcel-item-type/change-status\",\"state\":0},{\"id\":\"promotion/index\",\"state\":0},{\"id\":\"promotion/create\",\"state\":0},{\"id\":\"promotion/update\",\"state\":0},{\"id\":\"promotion/delete\",\"state\":0},{\"id\":\"promotion/change-status\",\"state\":0},{\"id\":\"push-notification/create\",\"state\":0},{\"id\":\"role/index\",\"state\":0},{\"id\":\"role/create\",\"state\":0},{\"id\":\"role/update\",\"state\":0},{\"id\":\"role/delete\",\"state\":0},{\"id\":\"role/change-status\",\"state\":0},{\"id\":\"tax/index\",\"state\":0},{\"id\":\"tax/create\",\"state\":0},{\"id\":\"tax/update\",\"state\":0},{\"id\":\"tax/delete\",\"state\":0},{\"id\":\"tax/change-status\",\"state\":0},{\"id\":\"today-special/index\",\"state\":0},{\"id\":\"today-special/create\",\"state\":0},{\"id\":\"today-special/update\",\"state\":0},{\"id\":\"today-special/delete\",\"state\":0},{\"id\":\"today-special/change-status\",\"state\":0},{\"id\":\"topup/index\",\"state\":0},{\"id\":\"topup/export\",\"state\":0},{\"id\":\"topup/create\",\"state\":0},{\"id\":\"topup/update\",\"state\":0},{\"id\":\"topup/delete\",\"state\":0},{\"id\":\"user/index\",\"state\":0},{\"id\":\"user/create\",\"state\":0},{\"id\":\"user/update\",\"state\":0},{\"id\":\"user/delete\",\"state\":0},{\"id\":\"user/change-status\",\"state\":0},{\"id\":\"user-level/index\",\"state\":0},{\"id\":\"user-level/create\",\"state\":0},{\"id\":\"user-level/update\",\"state\":0},{\"id\":\"user-level/delete\",\"state\":0},{\"id\":\"user-level/change-status\",\"state\":0},{\"id\":\"vendor-bank/index\",\"state\":0},{\"id\":\"vendor-bank/create\",\"state\":0},{\"id\":\"vendor-bank/update\",\"state\":0},{\"id\":\"vendor-bank/delete\",\"state\":0},{\"id\":\"vendor/index\",\"state\":0},{\"id\":\"vendor/create\",\"state\":0},{\"id\":\"vendor/update\",\"state\":0},{\"id\":\"vendor/delete\",\"state\":0},{\"id\":\"vendor/change-status\",\"state\":0},{\"id\":\"vendor-type/index\",\"state\":0},{\"id\":\"vendor-type/create\",\"state\":0},{\"id\":\"vendor-type/update\",\"state\":0},{\"id\":\"vendor-type/delete\",\"state\":0},{\"id\":\"vendor-type/change-status\",\"state\":0},{\"id\":\"delivery/delivery-boy/index\",\"state\":0},{\"id\":\"delivery/delivery-boy/create\",\"state\":0},{\"id\":\"delivery/delivery-boy/update\",\"state\":0},{\"id\":\"delivery/delivery-boy/track-delivery-boy\",\"state\":0},{\"id\":\"delivery/delivery-boy/assign-delivery-boy\",\"state\":0},{\"id\":\"delivery/delivery-boy/change-status\",\"state\":1}]', 1, 1, '2018-07-02 14:18:48', NULL, NULL),
(2, 'n0zav6l2vlpoaoye', 'Vendor', '[{\"id\":\"activity-log/index\",\"state\":0},{\"id\":\"activity-log/delete\",\"state\":0},{\"id\":\"address-type/index\",\"state\":0},{\"id\":\"address-type/create\",\"state\":0},{\"id\":\"address-type/update\",\"state\":0},{\"id\":\"address-type/delete\",\"state\":0},{\"id\":\"address-type/change-status\",\"state\":0},{\"id\":\"admin-order-report/index\",\"state\":0},{\"id\":\"admin-order-report/export\",\"state\":0},{\"id\":\"area/index\",\"state\":0},{\"id\":\"area/create\",\"state\":0},{\"id\":\"area/update\",\"state\":0},{\"id\":\"area/delete\",\"state\":0},{\"id\":\"area/change-status\",\"state\":0},{\"id\":\"banner/index\",\"state\":0},{\"id\":\"banner/create\",\"state\":0},{\"id\":\"banner/update\",\"state\":0},{\"id\":\"banner/delete\",\"state\":0},{\"id\":\"branch/index\",\"state\":1},{\"id\":\"branch/create\",\"state\":1},{\"id\":\"branch/update\",\"state\":1},{\"id\":\"branch/delete\",\"state\":1},{\"id\":\"branch/change-status\",\"state\":1},{\"id\":\"branch/get-status\",\"state\":1},{\"id\":\"branch/time-slot\",\"state\":1},{\"id\":\"branch/time-slot-update\",\"state\":1},{\"id\":\"branch/time-slot-delete\",\"state\":1},{\"id\":\"branch/save-reason\",\"state\":1},{\"id\":\"branch-review/index\",\"state\":0},{\"id\":\"branch-review/get-review-status\",\"state\":0},{\"id\":\"branch-review/view\",\"state\":0},{\"id\":\"category/index\",\"state\":1},{\"id\":\"category/create\",\"state\":1},{\"id\":\"category/update\",\"state\":1},{\"id\":\"category/delete\",\"state\":1},{\"id\":\"category/change-status\",\"state\":1},{\"id\":\"city/index\",\"state\":0},{\"id\":\"city/create\",\"state\":0},{\"id\":\"city/update\",\"state\":0},{\"id\":\"city/delete\",\"state\":0},{\"id\":\"city/change-status\",\"state\":0},{\"id\":\"cms/index\",\"state\":0},{\"id\":\"cms/create\",\"state\":0},{\"id\":\"cms/update\",\"state\":0},{\"id\":\"cms/delete\",\"state\":0},{\"id\":\"cms/change-status\",\"state\":0},{\"id\":\"configuration/social-media\",\"state\":0},{\"id\":\"configuration/taobo-credit\",\"state\":0},{\"id\":\"configuration/taobo-wallet\",\"state\":0},{\"id\":\"configuration/sms\",\"state\":0},{\"id\":\"configuration/smtp\",\"state\":0},{\"id\":\"configuration/distance-time\",\"state\":0},{\"id\":\"configuration/referral-point\",\"state\":0},{\"id\":\"configuration/app-config\",\"state\":0},{\"id\":\"configuration/delivery-boy-setting\",\"state\":0},{\"id\":\"configuration/delivery-charge-setting\",\"state\":0},{\"id\":\"configuration/one-signal-setting\",\"state\":0},{\"id\":\"configuration/currency-setting\",\"state\":0},{\"id\":\"configuration/stripe\",\"state\":0},{\"id\":\"country/index\",\"state\":0},{\"id\":\"country/create\",\"state\":0},{\"id\":\"country/update\",\"state\":0},{\"id\":\"country/delete\",\"state\":0},{\"id\":\"country/change-status\",\"state\":0},{\"id\":\"coupon/index\",\"state\":1},{\"id\":\"coupon/create\",\"state\":1},{\"id\":\"coupon/update\",\"state\":1},{\"id\":\"coupon/delete\",\"state\":1},{\"id\":\"coupon/change-status\",\"state\":1},{\"id\":\"cuisine/index\",\"state\":1},{\"id\":\"cuisine/create\",\"state\":1},{\"id\":\"cuisine/update\",\"state\":1},{\"id\":\"cuisine/delete\",\"state\":1},{\"id\":\"cuisine/change-status\",\"state\":1},{\"id\":\"delivery-area/index\",\"state\":0},{\"id\":\"delivery-area/create\",\"state\":0},{\"id\":\"delivery-area/update\",\"state\":0},{\"id\":\"delivery-area/delete\",\"state\":0},{\"id\":\"delivery-charge-settings/index\",\"state\":0},{\"id\":\"delivery-charge-settings/create\",\"state\":0},{\"id\":\"delivery-charge-settings/update\",\"state\":0},{\"id\":\"delivery-charge-settings/delete\",\"state\":0},{\"id\":\"deliveryboy/index\",\"state\":0},{\"id\":\"deliveryboy/view\",\"state\":0},{\"id\":\"deliveryboy/create\",\"state\":0},{\"id\":\"deliveryboy/update\",\"state\":0},{\"id\":\"deliveryboy/delete\",\"state\":0},{\"id\":\"deliveryboy/get-delivery-boy-status\",\"state\":0},{\"id\":\"enquiry/index\",\"state\":0},{\"id\":\"enquiry/quick-view\",\"state\":0},{\"id\":\"enquiry/delete\",\"state\":0},{\"id\":\"faq/index\",\"state\":0},{\"id\":\"faq/create\",\"state\":0},{\"id\":\"faq/update\",\"state\":0},{\"id\":\"faq/view\",\"state\":0},{\"id\":\"faq/delete\",\"state\":0},{\"id\":\"ingredient/index\",\"state\":1},{\"id\":\"ingredient/create\",\"state\":1},{\"id\":\"ingredient/update\",\"state\":1},{\"id\":\"ingredient/delete\",\"state\":1},{\"id\":\"ingredient/change-status\",\"state\":1},{\"id\":\"item/index\",\"state\":1},{\"id\":\"item/create\",\"state\":1},{\"id\":\"item/update\",\"state\":1},{\"id\":\"item/delete\",\"state\":1},{\"id\":\"item/change-status\",\"state\":1},{\"id\":\"item/view\",\"state\":1},{\"id\":\"item-ingredient-group/index\",\"state\":1},{\"id\":\"item-ingredient-group/create\",\"state\":1},{\"id\":\"item-ingredient-group/update\",\"state\":1},{\"id\":\"item-ingredient-group/delete\",\"state\":1},{\"id\":\"item-ingredient-group/change-status\",\"state\":1},{\"id\":\"item-mapping/index\",\"state\":1},{\"id\":\"item-mapping/create\",\"state\":1},{\"id\":\"item-mapping/update\",\"state\":1},{\"id\":\"item-mapping/delete\",\"state\":1},{\"id\":\"item-mapping/change-status\",\"state\":1},{\"id\":\"item-type/index\",\"state\":1},{\"id\":\"item-type/create\",\"state\":1},{\"id\":\"item-type/update\",\"state\":1},{\"id\":\"item-type/delete\",\"state\":1},{\"id\":\"item-type/change-status\",\"state\":1},{\"id\":\"language/create\",\"state\":0},{\"id\":\"language/update\",\"state\":0},{\"id\":\"language/delete\",\"state\":0},{\"id\":\"mall-product/index\",\"state\":0},{\"id\":\"mall-product/create\",\"state\":0},{\"id\":\"mall-product/update\",\"state\":0},{\"id\":\"mall-product/delete\",\"state\":0},{\"id\":\"mall-product/change-status\",\"state\":0},{\"id\":\"meta-tag/index\",\"state\":0},{\"id\":\"meta-tag/create\",\"state\":0},{\"id\":\"meta-tag/update\",\"state\":0},{\"id\":\"meta-tag/change-status\",\"state\":0},{\"id\":\"meta-tag/delete\",\"state\":0},{\"id\":\"mobile-translation/index\",\"state\":0},{\"id\":\"mobile-translation/create\",\"state\":0},{\"id\":\"mobile-translation/update\",\"state\":0},{\"id\":\"newsletter-subscriber/index\",\"state\":0},{\"id\":\"newsletter-subscriber/delete\",\"state\":0},{\"id\":\"notification/index\",\"state\":1},{\"id\":\"notification/create\",\"state\":1},{\"id\":\"notification/update\",\"state\":1},{\"id\":\"notification/delete\",\"state\":1},{\"id\":\"notification/change-status\",\"state\":1},{\"id\":\"order/index\",\"state\":1},{\"id\":\"order/accepred-order-list\",\"state\":1},{\"id\":\"order/prepared-order-list\",\"state\":1},{\"id\":\"order/delivered-order-list\",\"state\":1},{\"id\":\"order/rejected-order-list\",\"state\":1},{\"id\":\"order/create\",\"state\":0},{\"id\":\"order/quick-view\",\"state\":1},{\"id\":\"order/add-item-to-cart\",\"state\":1},{\"id\":\"order/assign-order\",\"state\":0},{\"id\":\"order/assign-delivery-boy\",\"state\":0},{\"id\":\"order/get-order-status\",\"state\":1},{\"id\":\"order/reject-order-status\",\"state\":0},{\"id\":\"order/get-payment-status\",\"state\":1},{\"id\":\"order/pickup-date-time-check\",\"state\":1},{\"id\":\"order/track\",\"state\":1},{\"id\":\"order/print\",\"state\":1},{\"id\":\"order/save\",\"state\":1},{\"id\":\"order-mall-product/index\",\"state\":0},{\"id\":\"order-mall-product/create\",\"state\":0},{\"id\":\"order-mall-product/update\",\"state\":0},{\"id\":\"order-mall-product/delete\",\"state\":0},{\"id\":\"order-mall-product/change-status\",\"state\":0},{\"id\":\"order-mall-product/quick-view\",\"state\":0},{\"id\":\"order-mall-product/print\",\"state\":0},{\"id\":\"order-parcel/index\",\"state\":0},{\"id\":\"order-parcel/quick-view\",\"state\":0},{\"id\":\"order-parcel/change-status\",\"state\":0},{\"id\":\"parcel-item-type/index\",\"state\":0},{\"id\":\"parcel-item-type/create\",\"state\":0},{\"id\":\"parcel-item-type/update\",\"state\":0},{\"id\":\"parcel-item-type/delete\",\"state\":0},{\"id\":\"parcel-item-type/change-status\",\"state\":0},{\"id\":\"promotion/index\",\"state\":0},{\"id\":\"promotion/create\",\"state\":0},{\"id\":\"promotion/update\",\"state\":0},{\"id\":\"promotion/delete\",\"state\":0},{\"id\":\"promotion/change-status\",\"state\":0},{\"id\":\"push-notification/create\",\"state\":1},{\"id\":\"rating/index\",\"state\":0},{\"id\":\"tax/index\",\"state\":0},{\"id\":\"tax/create\",\"state\":0},{\"id\":\"tax/update\",\"state\":0},{\"id\":\"tax/delete\",\"state\":0},{\"id\":\"tax/change-status\",\"state\":0},{\"id\":\"today-special/index\",\"state\":0},{\"id\":\"today-special/create\",\"state\":0},{\"id\":\"today-special/update\",\"state\":0},{\"id\":\"today-special/delete\",\"state\":0},{\"id\":\"today-special/change-status\",\"state\":0},{\"id\":\"topup/index\",\"state\":0},{\"id\":\"topup/export\",\"state\":0},{\"id\":\"topup/create\",\"state\":0},{\"id\":\"topup/update\",\"state\":0},{\"id\":\"topup/delete\",\"state\":0},{\"id\":\"user/index\",\"state\":0},{\"id\":\"user/create\",\"state\":0},{\"id\":\"user/update\",\"state\":0},{\"id\":\"user/delete\",\"state\":0},{\"id\":\"user/change-status\",\"state\":0},{\"id\":\"user/quick-view\",\"state\":0},{\"id\":\"user-level/index\",\"state\":0},{\"id\":\"user-level/create\",\"state\":0},{\"id\":\"user-level/update\",\"state\":0},{\"id\":\"user-level/delete\",\"state\":0},{\"id\":\"user-level/change-status\",\"state\":0},{\"id\":\"vendor-bank/index\",\"state\":0},{\"id\":\"vendor-bank/create\",\"state\":0},{\"id\":\"vendor-bank/update\",\"state\":0},{\"id\":\"vendor-bank/delete\",\"state\":0},{\"id\":\"vendor/index\",\"state\":0},{\"id\":\"vendor/create\",\"state\":0},{\"id\":\"vendor/update\",\"state\":0},{\"id\":\"vendor/delete\",\"state\":0},{\"id\":\"vendor/change-status\",\"state\":0},{\"id\":\"vendor-order-report/index\",\"state\":0},{\"id\":\"vendor-order-report/export\",\"state\":0},{\"id\":\"vendor-payment/index\",\"state\":0},{\"id\":\"vendor-payment/export\",\"state\":0},{\"id\":\"vendor-payment/change-vendor-payment-status\",\"state\":0},{\"id\":\"vendor-type/index\",\"state\":0},{\"id\":\"vendor-type/create\",\"state\":0},{\"id\":\"vendor-type/update\",\"state\":0},{\"id\":\"vendor-type/delete\",\"state\":0},{\"id\":\"vendor-type/change-status\",\"state\":0},{\"id\":\"webpush-notification/check-notification\",\"state\":1},{\"id\":\"delivery/delivery-boy/index\",\"state\":0},{\"id\":\"delivery/delivery-boy/create\",\"state\":0},{\"id\":\"delivery/delivery-boy/update\",\"state\":0},{\"id\":\"delivery/delivery-boy/track-delivery-boy\",\"state\":0},{\"id\":\"delivery/delivery-boy/assign-delivery-boy\",\"state\":0},{\"id\":\"delivery/delivery-boy/change-status\",\"state\":0}]', 1, 1, '2018-07-02 15:45:46', NULL, NULL),
(3, 'teuuyp2eabor87yl', 'outlet', '[{\"id\":\"banner/index\",\"state\":1},{\"id\":\"banner/create\",\"state\":0},{\"id\":\"banner/update\",\"state\":0},{\"id\":\"banner/delete\",\"state\":0},{\"id\":\"branch/index\",\"state\":0},{\"id\":\"branch/create\",\"state\":0},{\"id\":\"branch/update\",\"state\":0},{\"id\":\"branch/delete\",\"state\":0},{\"id\":\"branch/change-status\",\"state\":0},{\"id\":\"branch/get-status\",\"state\":0},{\"id\":\"branch/time-slot\",\"state\":0},{\"id\":\"branch/time-slot-update\",\"state\":0},{\"id\":\"branch/time-slot-delete\",\"state\":0},{\"id\":\"branch/save-reason\",\"state\":0},{\"id\":\"branch-review/index\",\"state\":0},{\"id\":\"branch-review/get-review-status\",\"state\":0},{\"id\":\"category/index\",\"state\":0},{\"id\":\"category/create\",\"state\":0},{\"id\":\"category/update\",\"state\":0},{\"id\":\"category/delete\",\"state\":0},{\"id\":\"category/change-status\",\"state\":0},{\"id\":\"city/index\",\"state\":0},{\"id\":\"city/create\",\"state\":0},{\"id\":\"city/update\",\"state\":0},{\"id\":\"city/delete\",\"state\":0},{\"id\":\"city/change-status\",\"state\":0},{\"id\":\"cms/index\",\"state\":0},{\"id\":\"cms/create\",\"state\":0},{\"id\":\"cms/update\",\"state\":0},{\"id\":\"cms/delete\",\"state\":0},{\"id\":\"cms/change-status\",\"state\":0},{\"id\":\"configuration/social-media\",\"state\":0},{\"id\":\"configuration/taobo-credit\",\"state\":0},{\"id\":\"configuration/taobo-wallet\",\"state\":0},{\"id\":\"configuration/sms\",\"state\":0},{\"id\":\"configuration/smtp\",\"state\":0},{\"id\":\"configuration/distance-time\",\"state\":0},{\"id\":\"configuration/referral-point\",\"state\":0},{\"id\":\"configuration/app-config\",\"state\":0},{\"id\":\"configuration/delivery-boy-setting\",\"state\":0},{\"id\":\"configuration/one-signal-setting\",\"state\":0},{\"id\":\"configuration/currency-setting\",\"state\":0},{\"id\":\"country/index\",\"state\":0},{\"id\":\"country/create\",\"state\":0},{\"id\":\"country/update\",\"state\":0},{\"id\":\"country/delete\",\"state\":0},{\"id\":\"country/change-status\",\"state\":0},{\"id\":\"coupon/index\",\"state\":0},{\"id\":\"coupon/create\",\"state\":0},{\"id\":\"coupon/update\",\"state\":0},{\"id\":\"coupon/delete\",\"state\":0},{\"id\":\"coupon/change-status\",\"state\":0},{\"id\":\"cuisine/index\",\"state\":0},{\"id\":\"cuisine/create\",\"state\":0},{\"id\":\"cuisine/update\",\"state\":0},{\"id\":\"cuisine/delete\",\"state\":0},{\"id\":\"cuisine/change-status\",\"state\":0},{\"id\":\"delivery-area/index\",\"state\":0},{\"id\":\"delivery-area/create\",\"state\":0},{\"id\":\"delivery-area/update\",\"state\":0},{\"id\":\"delivery-area/delete\",\"state\":0},{\"id\":\"deliveryboy/index\",\"state\":0},{\"id\":\"deliveryboy/view\",\"state\":0},{\"id\":\"deliveryboy/create\",\"state\":0},{\"id\":\"deliveryboy/update\",\"state\":0},{\"id\":\"deliveryboy/delete\",\"state\":0},{\"id\":\"deliveryboy/get-delivery-boy-status\",\"state\":0},{\"id\":\"enquiry/index\",\"state\":0},{\"id\":\"enquiry/quick-view\",\"state\":0},{\"id\":\"enquiry/delete\",\"state\":0},{\"id\":\"ingredient/index\",\"state\":0},{\"id\":\"ingredient/create\",\"state\":0},{\"id\":\"ingredient/update\",\"state\":0},{\"id\":\"ingredient/delete\",\"state\":0},{\"id\":\"ingredient/change-status\",\"state\":0},{\"id\":\"item/index\",\"state\":0},{\"id\":\"item/create\",\"state\":0},{\"id\":\"item/update\",\"state\":0},{\"id\":\"item/delete\",\"state\":0},{\"id\":\"item/change-status\",\"state\":0},{\"id\":\"item-ingredient-group/index\",\"state\":0},{\"id\":\"item-ingredient-group/create\",\"state\":0},{\"id\":\"item-ingredient-group/update\",\"state\":0},{\"id\":\"item-ingredient-group/delete\",\"state\":0},{\"id\":\"item-ingredient-group/change-status\",\"state\":0},{\"id\":\"item-mapping/index\",\"state\":0},{\"id\":\"item-mapping/create\",\"state\":0},{\"id\":\"item-mapping/update\",\"state\":0},{\"id\":\"item-mapping/delete\",\"state\":0},{\"id\":\"item-mapping/change-status\",\"state\":0},{\"id\":\"item-type/index\",\"state\":0},{\"id\":\"item-type/create\",\"state\":0},{\"id\":\"item-type/update\",\"state\":0},{\"id\":\"item-type/delete\",\"state\":0},{\"id\":\"item-type/change-status\",\"state\":0},{\"id\":\"mall-product/index\",\"state\":0},{\"id\":\"mall-product/create\",\"state\":0},{\"id\":\"mall-product/update\",\"state\":0},{\"id\":\"mall-product/delete\",\"state\":0},{\"id\":\"mall-product/change-status\",\"state\":0},{\"id\":\"newsletter/index\",\"state\":0},{\"id\":\"newsletter/create\",\"state\":0},{\"id\":\"newsletter/update\",\"state\":0},{\"id\":\"newsletter/delete\",\"state\":0},{\"id\":\"newsletter/change-status\",\"state\":0},{\"id\":\"newsletter-subscriber/index\",\"state\":0},{\"id\":\"newsletter-subscriber/delete\",\"state\":0},{\"id\":\"notification/index\",\"state\":0},{\"id\":\"notification/create\",\"state\":0},{\"id\":\"notification/update\",\"state\":0},{\"id\":\"notification/delete\",\"state\":0},{\"id\":\"notification/change-status\",\"state\":0},{\"id\":\"order/index\",\"state\":0},{\"id\":\"order/create\",\"state\":0},{\"id\":\"order/quick-view\",\"state\":0},{\"id\":\"order/add-item-to-cart\",\"state\":0},{\"id\":\"order/assign-order\",\"state\":0},{\"id\":\"order/assign-delivery-boy\",\"state\":0},{\"id\":\"order/get-order-status\",\"state\":0},{\"id\":\"order/track\",\"state\":0},{\"id\":\"order/print\",\"state\":0},{\"id\":\"order-mall-product/index\",\"state\":0},{\"id\":\"order-mall-product/create\",\"state\":0},{\"id\":\"order-mall-product/update\",\"state\":0},{\"id\":\"order-mall-product/delete\",\"state\":0},{\"id\":\"order-mall-product/change-status\",\"state\":0},{\"id\":\"order-mall-product/quick-view\",\"state\":0},{\"id\":\"order-mall-product/print\",\"state\":0},{\"id\":\"order-parcel/index\",\"state\":0},{\"id\":\"order-parcel/quick-view\",\"state\":0},{\"id\":\"order-parcel/change-status\",\"state\":0},{\"id\":\"parcel-item-type/index\",\"state\":0},{\"id\":\"parcel-item-type/create\",\"state\":0},{\"id\":\"parcel-item-type/update\",\"state\":0},{\"id\":\"parcel-item-type/delete\",\"state\":0},{\"id\":\"parcel-item-type/change-status\",\"state\":0},{\"id\":\"promotion/index\",\"state\":0},{\"id\":\"promotion/create\",\"state\":0},{\"id\":\"promotion/update\",\"state\":0},{\"id\":\"promotion/delete\",\"state\":0},{\"id\":\"promotion/change-status\",\"state\":0},{\"id\":\"push-notification/create\",\"state\":0},{\"id\":\"tax/index\",\"state\":0},{\"id\":\"tax/create\",\"state\":0},{\"id\":\"tax/update\",\"state\":0},{\"id\":\"tax/delete\",\"state\":0},{\"id\":\"tax/change-status\",\"state\":0},{\"id\":\"today-special/index\",\"state\":0},{\"id\":\"today-special/create\",\"state\":0},{\"id\":\"today-special/update\",\"state\":0},{\"id\":\"today-special/delete\",\"state\":0},{\"id\":\"today-special/change-status\",\"state\":0},{\"id\":\"topup/index\",\"state\":0},{\"id\":\"topup/export\",\"state\":0},{\"id\":\"topup/create\",\"state\":0},{\"id\":\"topup/update\",\"state\":0},{\"id\":\"topup/delete\",\"state\":0},{\"id\":\"user/index\",\"state\":0},{\"id\":\"user/create\",\"state\":0},{\"id\":\"user/update\",\"state\":0},{\"id\":\"user/delete\",\"state\":0},{\"id\":\"user/change-status\",\"state\":0},{\"id\":\"user-level/index\",\"state\":0},{\"id\":\"user-level/create\",\"state\":0},{\"id\":\"user-level/update\",\"state\":0},{\"id\":\"user-level/delete\",\"state\":0},{\"id\":\"user-level/change-status\",\"state\":0},{\"id\":\"vendor-bank/index\",\"state\":0},{\"id\":\"vendor-bank/create\",\"state\":0},{\"id\":\"vendor-bank/update\",\"state\":0},{\"id\":\"vendor-bank/delete\",\"state\":0},{\"id\":\"vendor/index\",\"state\":0},{\"id\":\"vendor/create\",\"state\":0},{\"id\":\"vendor/update\",\"state\":0},{\"id\":\"vendor/delete\",\"state\":0},{\"id\":\"vendor/change-status\",\"state\":0},{\"id\":\"vendor-type/index\",\"state\":0},{\"id\":\"vendor-type/create\",\"state\":0},{\"id\":\"vendor-type/update\",\"state\":0},{\"id\":\"vendor-type/delete\",\"state\":0},{\"id\":\"vendor-type/change-status\",\"state\":0},{\"id\":\"delivery/delivery-boy/index\",\"state\":0},{\"id\":\"delivery/delivery-boy/create\",\"state\":0},{\"id\":\"delivery/delivery-boy/update\",\"state\":0},{\"id\":\"delivery/delivery-boy/track-delivery-boy\",\"state\":0},{\"id\":\"delivery/delivery-boy/assign-delivery-boy\",\"state\":0},{\"id\":\"delivery/delivery-boy/change-status\",\"state\":0}]', 1, 1, '2018-07-03 14:59:13', NULL, NULL),
(5, 'is3jhnczmgemnhvk', 'test', NULL, 1, 1, '2018-09-10 10:20:28', NULL, NULL),
(6, '6ef9godberlsypfu', 'Branch User', '[{\"id\":\"activity-log/index\",\"state\":1},{\"id\":\"activity-log/delete\",\"state\":1},{\"id\":\"address-type/index\",\"state\":1},{\"id\":\"address-type/create\",\"state\":1},{\"id\":\"address-type/update\",\"state\":1},{\"id\":\"address-type/delete\",\"state\":1},{\"id\":\"address-type/change-status\",\"state\":1},{\"id\":\"area/index\",\"state\":1},{\"id\":\"area/create\",\"state\":1},{\"id\":\"area/update\",\"state\":1},{\"id\":\"area/delete\",\"state\":1},{\"id\":\"area/change-status\",\"state\":1},{\"id\":\"banner/index\",\"state\":1},{\"id\":\"banner/create\",\"state\":1},{\"id\":\"banner/update\",\"state\":1},{\"id\":\"banner/delete\",\"state\":1},{\"id\":\"branch/index\",\"state\":1},{\"id\":\"branch/create\",\"state\":1},{\"id\":\"branch/update\",\"state\":1},{\"id\":\"branch/delete\",\"state\":1},{\"id\":\"branch/change-status\",\"state\":1},{\"id\":\"branch/get-status\",\"state\":1},{\"id\":\"branch/time-slot\",\"state\":1},{\"id\":\"branch/time-slot-update\",\"state\":1},{\"id\":\"branch/time-slot-delete\",\"state\":1},{\"id\":\"branch/save-reason\",\"state\":1},{\"id\":\"branch-review/index\",\"state\":1},{\"id\":\"branch-review/get-review-status\",\"state\":1},{\"id\":\"branch-review/view\",\"state\":1},{\"id\":\"category/index\",\"state\":1},{\"id\":\"category/create\",\"state\":1},{\"id\":\"category/update\",\"state\":1},{\"id\":\"category/delete\",\"state\":1},{\"id\":\"category/change-status\",\"state\":1},{\"id\":\"city/index\",\"state\":1},{\"id\":\"city/create\",\"state\":1},{\"id\":\"city/update\",\"state\":1},{\"id\":\"city/delete\",\"state\":1},{\"id\":\"city/change-status\",\"state\":1},{\"id\":\"cms/index\",\"state\":0},{\"id\":\"cms/create\",\"state\":0},{\"id\":\"cms/update\",\"state\":0},{\"id\":\"cms/delete\",\"state\":0},{\"id\":\"cms/change-status\",\"state\":0},{\"id\":\"configuration/social-media\",\"state\":0},{\"id\":\"configuration/taobo-credit\",\"state\":0},{\"id\":\"configuration/taobo-wallet\",\"state\":0},{\"id\":\"configuration/sms\",\"state\":0},{\"id\":\"configuration/smtp\",\"state\":0},{\"id\":\"configuration/distance-time\",\"state\":0},{\"id\":\"configuration/referral-point\",\"state\":0},{\"id\":\"configuration/app-config\",\"state\":0},{\"id\":\"configuration/delivery-boy-setting\",\"state\":0},{\"id\":\"configuration/delivery-charge-setting\",\"state\":0},{\"id\":\"configuration/one-signal-setting\",\"state\":0},{\"id\":\"configuration/currency-setting\",\"state\":0},{\"id\":\"configuration/stripe\",\"state\":0},{\"id\":\"country/index\",\"state\":0},{\"id\":\"country/create\",\"state\":0},{\"id\":\"country/update\",\"state\":0},{\"id\":\"country/delete\",\"state\":0},{\"id\":\"country/change-status\",\"state\":0},{\"id\":\"coupon/index\",\"state\":0},{\"id\":\"coupon/create\",\"state\":0},{\"id\":\"coupon/update\",\"state\":0},{\"id\":\"coupon/delete\",\"state\":0},{\"id\":\"coupon/change-status\",\"state\":0},{\"id\":\"cuisine/index\",\"state\":0},{\"id\":\"cuisine/create\",\"state\":0},{\"id\":\"cuisine/update\",\"state\":0},{\"id\":\"cuisine/delete\",\"state\":0},{\"id\":\"cuisine/change-status\",\"state\":0},{\"id\":\"delivery-area/index\",\"state\":0},{\"id\":\"delivery-area/create\",\"state\":0},{\"id\":\"delivery-area/update\",\"state\":0},{\"id\":\"delivery-area/delete\",\"state\":0},{\"id\":\"delivery-charge-settings/index\",\"state\":0},{\"id\":\"delivery-charge-settings/create\",\"state\":0},{\"id\":\"delivery-charge-settings/update\",\"state\":0},{\"id\":\"delivery-charge-settings/delete\",\"state\":0},{\"id\":\"deliveryboy/index\",\"state\":0},{\"id\":\"deliveryboy/view\",\"state\":0},{\"id\":\"deliveryboy/create\",\"state\":0},{\"id\":\"deliveryboy/update\",\"state\":0},{\"id\":\"deliveryboy/delete\",\"state\":0},{\"id\":\"deliveryboy/get-delivery-boy-status\",\"state\":0},{\"id\":\"enquiry/index\",\"state\":0},{\"id\":\"enquiry/quick-view\",\"state\":0},{\"id\":\"enquiry/delete\",\"state\":0},{\"id\":\"faq/index\",\"state\":0},{\"id\":\"faq/create\",\"state\":0},{\"id\":\"faq/update\",\"state\":0},{\"id\":\"faq/view\",\"state\":0},{\"id\":\"faq/delete\",\"state\":0},{\"id\":\"ingredient/index\",\"state\":0},{\"id\":\"ingredient/create\",\"state\":0},{\"id\":\"ingredient/update\",\"state\":0},{\"id\":\"ingredient/delete\",\"state\":0},{\"id\":\"ingredient/change-status\",\"state\":0},{\"id\":\"item/index\",\"state\":0},{\"id\":\"item/create\",\"state\":0},{\"id\":\"item/update\",\"state\":0},{\"id\":\"item/delete\",\"state\":0},{\"id\":\"item/change-status\",\"state\":0},{\"id\":\"item/view\",\"state\":0},{\"id\":\"item-ingredient-group/index\",\"state\":0},{\"id\":\"item-ingredient-group/create\",\"state\":0},{\"id\":\"item-ingredient-group/update\",\"state\":0},{\"id\":\"item-ingredient-group/delete\",\"state\":0},{\"id\":\"item-ingredient-group/change-status\",\"state\":0},{\"id\":\"item-mapping/index\",\"state\":0},{\"id\":\"item-mapping/create\",\"state\":0},{\"id\":\"item-mapping/update\",\"state\":0},{\"id\":\"item-mapping/delete\",\"state\":0},{\"id\":\"item-mapping/change-status\",\"state\":0},{\"id\":\"item-type/index\",\"state\":0},{\"id\":\"item-type/create\",\"state\":0},{\"id\":\"item-type/update\",\"state\":0},{\"id\":\"item-type/delete\",\"state\":0},{\"id\":\"item-type/change-status\",\"state\":0},{\"id\":\"newsletter-subscriber/index\",\"state\":0},{\"id\":\"newsletter-subscriber/delete\",\"state\":0},{\"id\":\"notification/index\",\"state\":0},{\"id\":\"notification/create\",\"state\":0},{\"id\":\"notification/update\",\"state\":0},{\"id\":\"notification/delete\",\"state\":0},{\"id\":\"notification/change-status\",\"state\":0},{\"id\":\"order/index\",\"state\":0},{\"id\":\"order/create\",\"state\":0},{\"id\":\"order/quick-view\",\"state\":0},{\"id\":\"order/add-item-to-cart\",\"state\":0},{\"id\":\"order/assign-order\",\"state\":0},{\"id\":\"order/assign-delivery-boy\",\"state\":0},{\"id\":\"order/get-order-status\",\"state\":0},{\"id\":\"order/get-payment-status\",\"state\":0},{\"id\":\"order/pickup-date-time-check\",\"state\":0},{\"id\":\"order/track\",\"state\":0},{\"id\":\"order/print\",\"state\":0},{\"id\":\"order/save\",\"state\":0},{\"id\":\"order-mall-product/index\",\"state\":0},{\"id\":\"order-mall-product/create\",\"state\":0},{\"id\":\"order-mall-product/update\",\"state\":0},{\"id\":\"order-mall-product/delete\",\"state\":0},{\"id\":\"order-mall-product/change-status\",\"state\":0},{\"id\":\"order-mall-product/quick-view\",\"state\":0},{\"id\":\"order-mall-product/print\",\"state\":0},{\"id\":\"order-parcel/index\",\"state\":0},{\"id\":\"order-parcel/quick-view\",\"state\":0},{\"id\":\"order-parcel/change-status\",\"state\":0},{\"id\":\"parcel-item-type/index\",\"state\":0},{\"id\":\"parcel-item-type/create\",\"state\":0},{\"id\":\"parcel-item-type/update\",\"state\":0},{\"id\":\"parcel-item-type/delete\",\"state\":0},{\"id\":\"parcel-item-type/change-status\",\"state\":0},{\"id\":\"promotion/index\",\"state\":0},{\"id\":\"promotion/create\",\"state\":0},{\"id\":\"promotion/update\",\"state\":0},{\"id\":\"promotion/delete\",\"state\":0},{\"id\":\"promotion/change-status\",\"state\":0},{\"id\":\"push-notification/create\",\"state\":0},{\"id\":\"rating/index\",\"state\":0},{\"id\":\"tax/index\",\"state\":0},{\"id\":\"tax/create\",\"state\":0},{\"id\":\"tax/update\",\"state\":0},{\"id\":\"tax/delete\",\"state\":0},{\"id\":\"tax/change-status\",\"state\":0},{\"id\":\"today-special/index\",\"state\":0},{\"id\":\"today-special/create\",\"state\":0},{\"id\":\"today-special/update\",\"state\":0},{\"id\":\"today-special/delete\",\"state\":0},{\"id\":\"today-special/change-status\",\"state\":0},{\"id\":\"user/index\",\"state\":0},{\"id\":\"user/create\",\"state\":0},{\"id\":\"user/update\",\"state\":0},{\"id\":\"user/delete\",\"state\":0},{\"id\":\"user/change-status\",\"state\":0},{\"id\":\"user-level/index\",\"state\":0},{\"id\":\"user-level/create\",\"state\":0},{\"id\":\"user-level/update\",\"state\":0},{\"id\":\"user-level/delete\",\"state\":0},{\"id\":\"user-level/change-status\",\"state\":0},{\"id\":\"vendor/index\",\"state\":0},{\"id\":\"vendor/create\",\"state\":0},{\"id\":\"vendor/update\",\"state\":0},{\"id\":\"vendor/delete\",\"state\":0},{\"id\":\"vendor/change-status\",\"state\":0},{\"id\":\"vendor-order-report/index\",\"state\":0},{\"id\":\"vendor-order-report/export\",\"state\":0},{\"id\":\"vendor-payment/index\",\"state\":0},{\"id\":\"vendor-payment/export\",\"state\":0},{\"id\":\"vendor-payment/change-vendor-payment-status\",\"state\":0},{\"id\":\"vendor-type/index\",\"state\":0},{\"id\":\"vendor-type/create\",\"state\":0},{\"id\":\"vendor-type/update\",\"state\":0},{\"id\":\"vendor-type/delete\",\"state\":0},{\"id\":\"vendor-type/change-status\",\"state\":0},{\"id\":\"webpush-notification/check-notification\",\"state\":0},{\"id\":\"delivery/delivery-boy/index\",\"state\":0},{\"id\":\"delivery/delivery-boy/create\",\"state\":0},{\"id\":\"delivery/delivery-boy/update\",\"state\":0},{\"id\":\"delivery/delivery-boy/track-delivery-boy\",\"state\":0},{\"id\":\"delivery/delivery-boy/assign-delivery-boy\",\"state\":0},{\"id\":\"delivery/delivery-boy/change-status\",\"state\":0}]', 1, 1, '2018-12-03 11:54:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `source_message`
--

CREATE TABLE `source_message` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `source_message`
--

INSERT INTO `source_message` (`id`, `category`, `message`) VALUES
(1, 'common', 'Activity Log ID'),
(2, 'common', 'User ID'),
(3, 'common', 'Username'),
(4, 'common', 'Log'),
(5, 'common', 'Client Ip'),
(6, 'common', 'Client Agent'),
(7, 'common', 'Client Platform'),
(8, 'common', 'Created At'),
(9, 'common', 'Address Type ID'),
(10, 'common', 'Address Type Key'),
(11, 'common', 'Address Type Status'),
(12, 'common', 'Created At'),
(13, 'common', 'Created User ID'),
(14, 'common', 'Modified At'),
(15, 'common', 'Modified User ID'),
(16, 'common', 'Address Type Lang ID'),
(17, 'common', 'Address Type ID'),
(18, 'common', 'Language Code'),
(19, 'common', 'Address Type Name'),
(20, 'common', 'Admin User ID'),
(21, 'common', 'Admin User Key'),
(22, 'common', 'User Type'),
(23, 'common', 'First Name'),
(24, 'common', 'Last Name'),
(25, 'common', 'Email Address'),
(26, 'common', 'User Name'),
(27, 'common', 'Password Hash'),
(28, 'common', 'Password Reset Token'),
(29, 'common', 'Secret Password'),
(30, 'common', 'Status'),
(31, 'common', 'Last Login'),
(32, 'common', 'Role ID'),
(33, 'common', 'Created At'),
(34, 'common', 'Created User ID'),
(35, 'common', 'Modified At'),
(36, 'common', 'Modified User ID'),
(37, 'common', 'Area ID'),
(38, 'common', 'Area Key'),
(39, 'common', 'City ID'),
(40, 'common', 'Status'),
(41, 'common', 'Created At'),
(42, 'common', 'Created User ID'),
(43, 'common', 'Modified At'),
(44, 'common', 'Modified User ID'),
(45, 'common', 'Area Lang ID'),
(46, 'common', 'Area ID'),
(47, 'common', 'Language Code'),
(48, 'common', 'Area Name'),
(49, 'common', 'Banner ID'),
(50, 'common', 'Banner Key'),
(51, 'common', 'Vendor ID'),
(52, 'common', 'Banner Link'),
(53, 'common', 'Created User ID'),
(54, 'common', 'Created At'),
(55, 'common', 'Modified User ID'),
(56, 'common', 'Modified At'),
(57, 'common', 'Banner Type'),
(58, 'common', 'City ID'),
(59, 'common', 'Banner Lang ID'),
(60, 'common', 'Banner ID'),
(61, 'common', 'Language Code'),
(62, 'common', 'Banner Name'),
(63, 'common', 'Banner Image Path'),
(64, 'common', 'Branch ID'),
(65, 'common', 'Branch Key'),
(66, 'common', 'Vendor ID'),
(67, 'common', 'Latitude'),
(68, 'common', 'Longitude'),
(69, 'common', 'Contact Email'),
(70, 'common', 'Contact Number'),
(71, 'common', 'Username'),
(72, 'common', 'Password Hash'),
(73, 'common', 'Secret Password Hash'),
(74, 'common', 'Password Reset Token'),
(75, 'common', 'Pickup Time'),
(76, 'common', 'Delivery Time'),
(77, 'common', 'Preparation Time'),
(78, 'common', 'Device Type'),
(79, 'common', 'Device Token'),
(80, 'common', 'Branch Status'),
(81, 'common', 'Approve Status'),
(82, 'common', 'Payment Option'),
(83, 'common', 'Branch Availability Status'),
(84, 'common', 'Delivery Charge Base Km'),
(85, 'common', 'Delivery Charge Base'),
(86, 'common', 'Delivery Charge Additional Per Km'),
(87, 'common', 'Delivery Time Base Km'),
(88, 'common', 'Delivery Time Base'),
(89, 'common', 'Delivery Time Additional Per Km'),
(90, 'common', 'Rating'),
(91, 'common', 'Created User ID'),
(92, 'common', 'Created At'),
(93, 'common', 'Modified User ID'),
(94, 'common', 'Modified At'),
(95, 'common', 'Order Type'),
(96, 'common', 'Busy Reason'),
(97, 'common', 'Branch Delivery Area ID'),
(98, 'common', 'Branch ID'),
(99, 'common', 'Delivery Area ID'),
(100, 'common', 'Branch Lang ID'),
(101, 'common', 'Branch ID'),
(102, 'common', 'Language Code'),
(103, 'common', 'Branch Name'),
(104, 'common', 'Branch Address Line1'),
(105, 'common', 'Branch Address Line2'),
(106, 'common', 'Area'),
(107, 'common', 'City'),
(108, 'common', 'Country'),
(109, 'common', 'Branch Review ID'),
(110, 'common', 'Branch Review Key'),
(111, 'common', 'User ID'),
(112, 'common', 'Vendor ID'),
(113, 'common', 'Branch ID'),
(114, 'common', 'Rating'),
(115, 'common', 'Review'),
(116, 'common', 'Status'),
(117, 'common', 'Created At'),
(118, 'common', 'Branch Timeslot ID'),
(119, 'common', 'Branch Timeslot Key'),
(120, 'common', 'Branch ID'),
(121, 'common', 'Timeslot Type'),
(122, 'common', 'Day ID'),
(123, 'common', 'Timeslot Start Time'),
(124, 'common', 'Timeslot End Time'),
(125, 'common', 'Branch Timeslot Status'),
(126, 'common', 'Created User ID'),
(127, 'common', 'Created At'),
(128, 'common', 'Modified User ID'),
(129, 'common', 'Modified At'),
(130, 'common', 'Category ID'),
(131, 'common', 'Category Key'),
(132, 'common', 'Sort No'),
(133, 'common', 'Category Status'),
(134, 'common', 'Created User ID'),
(135, 'common', 'Created At'),
(136, 'common', 'Modified User ID'),
(137, 'common', 'Modified At'),
(138, 'common', 'Category Type'),
(139, 'common', 'Category Lang ID'),
(140, 'common', 'Category ID'),
(141, 'common', 'Language Code'),
(142, 'common', 'Category Name'),
(143, 'common', 'Category Image Path'),
(144, 'common', 'City ID'),
(145, 'common', 'City Key'),
(146, 'common', 'City Status'),
(147, 'common', 'Created At'),
(148, 'common', 'Created User ID'),
(149, 'common', 'Modified At'),
(150, 'common', 'Modified User ID'),
(151, 'common', 'City Lang ID'),
(152, 'common', 'City ID'),
(153, 'common', 'Language Code'),
(154, 'common', 'City Name'),
(155, 'common', 'Cms ID'),
(156, 'common', 'Cms Key'),
(157, 'common', 'Cms Status'),
(158, 'common', 'Slug'),
(159, 'common', 'n'),
(160, 'common', 'Modified At'),
(161, 'common', 'Modified User ID'),
(162, 'common', 'Created At'),
(163, 'common', 'Cms Lang ID'),
(164, 'common', 'Cms ID'),
(165, 'common', 'Language Code'),
(166, 'common', 'Cms Title'),
(167, 'common', 'Cms Content'),
(168, 'common', 'Configuration ID'),
(169, 'common', 'Configuration Key'),
(170, 'common', 'Configuration Name'),
(171, 'common', 'Configuration Value'),
(172, 'common', 'Created At'),
(173, 'common', 'Created User ID'),
(174, 'common', 'Modified At'),
(175, 'common', 'Modified User ID'),
(176, 'common', 'Country ID'),
(177, 'common', 'Country Key'),
(178, 'common', 'Country Status'),
(179, 'common', 'Created At'),
(180, 'common', 'Created User ID'),
(181, 'common', 'Modified At'),
(182, 'common', 'Modified User ID'),
(183, 'common', 'Country Lang ID'),
(184, 'common', 'Country ID'),
(185, 'common', 'Language Code'),
(186, 'common', 'Country Name'),
(187, 'common', 'Coupon ID'),
(188, 'common', 'Coupon Key'),
(189, 'common', 'Coupon Type'),
(190, 'common', 'Coupon Minimum Cart Value'),
(191, 'common', 'Coupon Value'),
(192, 'common', 'Coupon Code'),
(193, 'common', 'Coupon Starts At'),
(194, 'common', 'Coupon Ends At'),
(195, 'common', 'Coupon Status'),
(196, 'common', 'Coupon Scope'),
(197, 'common', 'App Type'),
(198, 'common', 'Is All Vendor'),
(199, 'common', 'Created User ID'),
(200, 'common', 'Created At'),
(201, 'common', 'Modified User ID'),
(202, 'common', 'Modified At'),
(203, 'common', 'Maximum Redeem Amount'),
(204, 'common', 'Coupon Lang ID'),
(205, 'common', 'Coupon ID'),
(206, 'common', 'Language Code'),
(207, 'common', 'Coupon Name'),
(208, 'common', 'Coupon Description'),
(209, 'common', 'Coupon Image'),
(210, 'common', 'Coupon User ID'),
(211, 'common', 'User ID'),
(212, 'common', 'Coupon ID'),
(213, 'common', 'Coupon Vendor ID'),
(214, 'common', 'Vendor ID'),
(215, 'common', 'Coupon ID'),
(216, 'common', 'Credit History ID'),
(217, 'common', 'Credit History Number'),
(218, 'common', 'User ID'),
(219, 'common', 'Vendor ID'),
(220, 'common', 'Amount'),
(221, 'common', 'Total Amount'),
(222, 'common', 'Action'),
(223, 'common', 'Created At'),
(224, 'common', 'Cuisine ID'),
(225, 'common', 'Cuisine Key'),
(226, 'common', 'Sort No'),
(227, 'common', 'Cuisine Status'),
(228, 'common', 'Created User ID'),
(229, 'common', 'Created At'),
(230, 'common', 'Modified User ID'),
(231, 'common', 'Modified At'),
(232, 'common', 'Cuisine Lang ID'),
(233, 'common', 'Cuisine ID'),
(234, 'common', 'Language Code'),
(235, 'common', 'Cuisine Name'),
(236, 'common', 'Cuisine Image Path'),
(237, 'common', 'Delivery Area ID'),
(238, 'common', 'Delivery Area Key'),
(239, 'common', 'Delivery Area Name'),
(240, 'common', 'Delivery Area Type'),
(241, 'common', 'Delivery Area Radius'),
(242, 'common', 'Delivery Area Data'),
(243, 'common', 'Created At'),
(244, 'common', 'Created User ID'),
(245, 'common', 'Updated At'),
(246, 'common', 'Modified User ID'),
(247, 'common', 'Deliveryboy ID'),
(248, 'common', 'Deliveryboy Key'),
(249, 'common', 'Deliveryboy Username'),
(250, 'common', 'Deliveryboy Email'),
(251, 'common', 'Deliveryboy Password Hash'),
(252, 'common', 'Commision'),
(253, 'common', 'Status'),
(254, 'common', 'Device Token'),
(255, 'common', 'Device Type'),
(256, 'common', 'Latitude'),
(257, 'common', 'Longitude'),
(258, 'common', 'Profile Image'),
(259, 'common', 'Mobile Number'),
(260, 'common', 'License'),
(261, 'common', 'Identity Card'),
(262, 'common', 'Created At'),
(263, 'common', 'Created User ID'),
(264, 'common', 'Modified At'),
(265, 'common', 'Modified User ID'),
(266, 'common', 'Enquiry ID'),
(267, 'common', 'Name'),
(268, 'common', 'Email'),
(269, 'common', 'Mobile Number'),
(270, 'common', 'Message'),
(271, 'common', 'Created At'),
(272, 'common', 'Updated At'),
(273, 'common', 'Ingredient ID'),
(274, 'common', 'Ingredient Key'),
(275, 'common', 'Ingredient Status'),
(276, 'common', 'Created At'),
(277, 'common', 'Created User ID'),
(278, 'common', 'Modified At'),
(279, 'common', 'Modified User ID'),
(280, 'common', 'Ingredient Lang ID'),
(281, 'common', 'Ingredient ID'),
(282, 'common', 'Language Code'),
(283, 'common', 'Ingredient Name'),
(284, 'common', 'Item ID'),
(285, 'common', 'Item Key'),
(286, 'common', 'Category ID'),
(287, 'common', 'Vendor ID'),
(288, 'common', 'Branch ID'),
(289, 'common', 'Item Price'),
(290, 'common', 'Item Status'),
(291, 'common', 'Sort No'),
(292, 'common', 'Created At'),
(293, 'common', 'Created User ID'),
(294, 'common', 'Modified At'),
(295, 'common', 'Modified User ID'),
(296, 'common', 'Is Recommended'),
(297, 'common', 'Package Price'),
(298, 'common', 'Item Image ID'),
(299, 'common', 'Item ID'),
(300, 'common', 'Language Code'),
(301, 'common', 'Item Image Path'),
(302, 'common', 'Sort No'),
(303, 'common', 'Item Ingredient Group ID'),
(304, 'common', 'Item Ingredient Group Key'),
(305, 'common', 'Ingredient Type'),
(306, 'common', 'Minimum'),
(307, 'common', 'Maximum'),
(308, 'common', 'Item Ingredient Status'),
(309, 'common', 'Created At'),
(310, 'common', 'Created User ID'),
(311, 'common', 'Modified At'),
(312, 'common', 'Modified User ID'),
(313, 'common', 'Item Ingredient Group Lang ID'),
(314, 'common', 'Item Ingredient Group ID'),
(315, 'common', 'Language Code'),
(316, 'common', 'Group Name'),
(317, 'common', 'Item Ingredient Group Mapping ID'),
(318, 'common', 'Item Ingredient Group ID'),
(319, 'common', 'Item ID'),
(320, 'common', 'Item Ingredient Mapping ID'),
(321, 'common', 'Item Ingredient Group ID'),
(322, 'common', 'Ingredient ID'),
(323, 'common', 'Default Status'),
(324, 'common', 'Price'),
(325, 'common', 'Status'),
(326, 'common', 'Item Lang ID'),
(327, 'common', 'Item ID'),
(328, 'common', 'Language Code'),
(329, 'common', 'Item Name'),
(330, 'common', 'Item Description'),
(331, 'common', 'Item Mapping ID'),
(332, 'common', 'Item Mapping Key'),
(333, 'common', 'Item ID'),
(334, 'common', 'Item Mapping Status'),
(335, 'common', 'Created At'),
(336, 'common', 'Created User ID'),
(337, 'common', 'Updated At'),
(338, 'common', 'Updated User ID'),
(339, 'common', 'Item Mapping Group ID'),
(340, 'common', 'Item Mapping ID'),
(341, 'common', 'Item Ingredient Group ID'),
(342, 'common', 'Mapping Type'),
(343, 'common', 'Is Drink'),
(344, 'common', 'Item Type ID'),
(345, 'common', 'Item Type Key'),
(346, 'common', 'Item Type Status'),
(347, 'common', 'Created User ID'),
(348, 'common', 'Created At'),
(349, 'common', 'Updated User ID'),
(350, 'common', 'Updated At'),
(351, 'common', 'Item Type Details ID'),
(352, 'common', 'Item ID'),
(353, 'common', 'Item Type ID'),
(354, 'common', 'Item Type Lang ID'),
(355, 'common', 'Item Type ID'),
(356, 'common', 'Language Code'),
(357, 'common', 'Item Type Name'),
(358, 'common', 'Language ID'),
(359, 'common', 'Language Code'),
(360, 'common', 'Language Name'),
(361, 'common', 'Native Name'),
(362, 'common', 'Is Rtl'),
(363, 'common', 'Status'),
(364, 'common', 'Mall Product ID'),
(365, 'common', 'Mall Product Key'),
(366, 'common', 'Price'),
(367, 'common', 'Product Status'),
(368, 'common', 'Created At'),
(369, 'common', 'Created User ID'),
(370, 'common', 'Modified At'),
(371, 'common', 'Modified User ID'),
(372, 'common', 'Mall Product Lang ID'),
(373, 'common', 'Mall Product ID'),
(374, 'common', 'Language Code'),
(375, 'common', 'Product Name'),
(376, 'common', 'Product Description'),
(377, 'common', 'Product Image Path'),
(378, 'common', 'Newsletter ID'),
(379, 'common', 'Newsletter Key'),
(380, 'common', 'Newsletter Title'),
(381, 'common', 'Newsletter Content'),
(382, 'common', 'Newsletter Image'),
(383, 'common', 'Newsletter Status'),
(384, 'common', 'Created At'),
(385, 'common', 'Modified At'),
(386, 'common', 'Newsletter Subscriber ID'),
(387, 'common', 'Newsletter Subscriber Key'),
(388, 'common', 'Name'),
(389, 'common', 'Email'),
(390, 'common', 'Notification ID'),
(391, 'common', 'Notification Title'),
(392, 'common', 'Notification Description'),
(393, 'common', 'Notification Image Path'),
(394, 'common', 'Is All User'),
(395, 'common', 'Created At'),
(396, 'common', 'Created User ID'),
(397, 'common', 'Modified At'),
(398, 'common', 'Modified User ID'),
(399, 'common', 'Order ID'),
(400, 'common', 'Order Key'),
(401, 'common', 'Order Number'),
(402, 'common', 'Vendor ID'),
(403, 'common', 'Branch ID'),
(404, 'common', 'User ID'),
(405, 'common', 'Customer First Name'),
(406, 'common', 'Customer Last Name'),
(407, 'common', 'Customer Mobile Number'),
(408, 'common', 'Customer Email'),
(409, 'common', 'User Address ID'),
(410, 'common', 'Latitude'),
(411, 'common', 'Longitude'),
(412, 'common', 'Order Date Time'),
(413, 'common', 'Order Type'),
(414, 'common', 'Delivery Option'),
(415, 'common', 'Pickup Delivery Date Time'),
(416, 'common', 'Item Total'),
(417, 'common', 'Delivery Fee'),
(418, 'common', 'Tax'),
(419, 'common', 'Coupon Offer Value'),
(420, 'common', 'Order Total'),
(421, 'common', 'Payment Option'),
(422, 'common', 'Payment Status'),
(423, 'common', 'Order Status'),
(424, 'common', 'Payment Response'),
(425, 'common', 'Rejected Reason'),
(426, 'common', 'Accepted Time'),
(427, 'common', 'Deliveryboy Pickuped Time'),
(428, 'common', 'Delivered Time'),
(429, 'common', 'Order Promotion ID'),
(430, 'common', 'Siginature'),
(431, 'common', 'Package Price'),
(432, 'common', 'Admin Commission'),
(433, 'common', 'Vendor Profit'),
(434, 'common', 'Admin Profit'),
(435, 'common', 'Vendor Tax'),
(436, 'common', 'Vendor Commission'),
(437, 'common', 'Transaction ID'),
(438, 'common', 'Vendor Payment Status'),
(439, 'common', 'Order Coupon ID'),
(440, 'common', 'Order ID'),
(441, 'common', 'Coupon ID'),
(442, 'common', 'Coupon Type'),
(443, 'common', 'Coupon Minimum Cart Value'),
(444, 'common', 'Coupon Code'),
(445, 'common', 'Coupon Value'),
(446, 'common', 'Quantity'),
(447, 'common', 'Order Coupon Lang ID'),
(448, 'common', 'Order Coupon ID'),
(449, 'common', 'Language Code'),
(450, 'common', 'Coupon Name'),
(451, 'common', 'Coupon Description'),
(452, 'common', 'Coupon Image'),
(453, 'common', 'Order Item ID'),
(454, 'common', 'Order ID'),
(455, 'common', 'Item ID'),
(456, 'common', 'Item Price'),
(457, 'common', 'Quantity'),
(458, 'common', 'Item Total Price'),
(459, 'common', 'Modifiers Total Price'),
(460, 'common', 'Ingredients Total Price'),
(461, 'common', 'Total Price'),
(462, 'common', 'Order Item Image ID'),
(463, 'common', 'Order Item ID'),
(464, 'common', 'Language Code'),
(465, 'common', 'Item Image Path'),
(466, 'common', 'Order Item Ingredient Group ID'),
(467, 'common', 'Order Item ID'),
(468, 'common', 'Ingredient Type'),
(469, 'common', 'Minimum'),
(470, 'common', 'Maximum'),
(471, 'common', 'Is Drink'),
(472, 'common', 'Order Item Ingredient Group Lang ID'),
(473, 'common', 'Order Item Ingredient Group ID'),
(474, 'common', 'Language Code'),
(475, 'common', 'Group Name'),
(476, 'common', 'Order Item Ingredient Mapping ID'),
(477, 'common', 'Order Item Ingredient Group ID'),
(478, 'common', 'Ingredient ID'),
(479, 'common', 'Default Status'),
(480, 'common', 'Ingredient Quantity'),
(481, 'common', 'Price'),
(482, 'common', 'Order Item Ingredient Mapping Lang ID'),
(483, 'common', 'Order Item Ingredient Mapping ID'),
(484, 'common', 'Language Code'),
(485, 'common', 'Ingredient Name'),
(486, 'common', 'Order Item Lang ID'),
(487, 'common', 'Order Item ID'),
(488, 'common', 'Language Code'),
(489, 'common', 'Item Name'),
(490, 'common', 'Item Description'),
(491, 'common', 'Order Mall Product ID'),
(492, 'common', 'Order Mall Product Key'),
(493, 'common', 'Order Product Number'),
(494, 'common', 'User ID'),
(495, 'common', 'Product ID'),
(496, 'common', 'Price'),
(497, 'common', 'User Address ID'),
(498, 'common', 'Order Date Time'),
(499, 'common', 'Order Status'),
(500, 'common', 'Created At'),
(501, 'common', 'Modified At'),
(502, 'common', 'Order Mall Product Lang ID'),
(503, 'common', 'Order Mall Product ID'),
(504, 'common', 'Language Code'),
(505, 'common', 'Product Name'),
(506, 'common', 'Product Description'),
(507, 'common', 'Product Image Path'),
(508, 'common', 'Order Parcel ID'),
(509, 'common', 'Order Parcel Key'),
(510, 'common', 'Order Booking ID'),
(511, 'common', 'User ID'),
(512, 'common', 'Parcel Item Type ID'),
(513, 'common', 'Pickup Latitude'),
(514, 'common', 'Pickup Longitude'),
(515, 'common', 'Drop Latitude'),
(516, 'common', 'Drop Longitude'),
(517, 'common', 'Pickup Date Time'),
(518, 'common', 'Delivery Date Time'),
(519, 'common', 'Pickup User Name'),
(520, 'common', 'Pickup User Mobile Number'),
(521, 'common', 'Delivery User Name'),
(522, 'common', 'Delivery User Mobile Number'),
(523, 'common', 'Coupon Value'),
(524, 'common', 'Standard Fee'),
(525, 'common', 'Delivery Fee'),
(526, 'common', 'Total Fee'),
(527, 'common', 'Payment Option'),
(528, 'common', 'Payment Provider'),
(529, 'common', 'Order Status'),
(530, 'common', 'Created At'),
(531, 'common', 'Modified At'),
(532, 'common', 'Pickup Address'),
(533, 'common', 'Delivery Address'),
(534, 'common', 'Payment Status'),
(535, 'common', 'Product Description'),
(536, 'common', 'Order Parcel Item Image ID'),
(537, 'common', 'Order Parcel ID'),
(538, 'common', 'Order Parcel Image'),
(539, 'common', 'Order Promotion ID'),
(540, 'common', 'Order Promotion Key'),
(541, 'common', 'Order Promotion Number'),
(542, 'common', 'User ID'),
(543, 'common', 'Promotion ID'),
(544, 'common', 'Vendor ID'),
(545, 'common', 'Promotion Price'),
(546, 'common', 'Offer'),
(547, 'common', 'Promotion Points'),
(548, 'common', 'Created At'),
(549, 'common', 'Modified At'),
(550, 'common', 'Is Used'),
(551, 'common', 'Promotion Code'),
(552, 'common', 'Bear Type'),
(553, 'common', 'Payment Status'),
(554, 'common', 'Transaction ID'),
(555, 'common', 'Payment Response'),
(556, 'common', 'Order Promotion Lang ID'),
(557, 'common', 'Order Promotion ID'),
(558, 'common', 'Language Code'),
(559, 'common', 'Promotion Name'),
(560, 'common', 'Promotion Description'),
(561, 'common', 'Promotion Image Path'),
(562, 'common', 'Promotion Type'),
(563, 'common', 'Order Tax ID'),
(564, 'common', 'Order ID'),
(565, 'common', 'Tax ID'),
(566, 'common', 'Value'),
(567, 'common', 'Order Tax Price'),
(568, 'common', 'Order Tax Lang ID'),
(569, 'common', 'Order Tax ID'),
(570, 'common', 'Language Code'),
(571, 'common', 'Tax Name'),
(572, 'common', 'Parcel Item Type ID'),
(573, 'common', 'Parcel Item Type Key'),
(574, 'common', 'Status'),
(575, 'common', 'Created User ID'),
(576, 'common', 'Created At'),
(577, 'common', 'Modified User ID'),
(578, 'common', 'Modified At'),
(579, 'common', 'Parcel Item Type Lang ID'),
(580, 'common', 'Parcel Item Type ID'),
(581, 'common', 'Language Code'),
(582, 'common', 'Parcel Item Type Name'),
(583, 'common', 'Point History ID'),
(584, 'common', 'Point History Number'),
(585, 'common', 'User ID'),
(586, 'common', 'Point'),
(587, 'common', 'Action'),
(588, 'common', 'Notes'),
(589, 'common', 'Created At'),
(590, 'common', 'Post ID'),
(591, 'common', 'Post Key'),
(592, 'common', 'User ID'),
(593, 'common', 'Description'),
(594, 'common', 'Post Image'),
(595, 'common', 'Created At'),
(596, 'common', 'Modified At'),
(597, 'common', 'Promotion ID'),
(598, 'common', 'Promotion Key'),
(599, 'common', 'Vendor ID'),
(600, 'common', 'Promotion Price'),
(601, 'common', 'Offer'),
(602, 'common', 'Promotion Points'),
(603, 'common', 'Promotion Status'),
(604, 'common', 'Total Bought'),
(605, 'common', 'Created At'),
(606, 'common', 'Created User ID'),
(607, 'common', 'Modified At'),
(608, 'common', 'Modified User ID'),
(609, 'common', 'Start Date'),
(610, 'common', 'End Date'),
(611, 'common', 'Promotion Code'),
(612, 'common', 'Promotion Lang ID'),
(613, 'common', 'Promotion ID'),
(614, 'common', 'Language Code'),
(615, 'common', 'Promotion Name'),
(616, 'common', 'Promotion Description'),
(617, 'common', 'Promotion Image Path'),
(618, 'common', 'Promotion Type'),
(619, 'common', 'Role ID'),
(620, 'common', 'Role Key'),
(621, 'common', 'Role Name'),
(622, 'common', 'Backend Role Json'),
(623, 'common', 'Role Status'),
(624, 'common', 'Created User ID'),
(625, 'common', 'Created At'),
(626, 'common', 'Modified User ID'),
(627, 'common', 'Modified At'),
(628, 'common', 'Tax ID'),
(629, 'common', 'Tax Key'),
(630, 'common', 'Status'),
(631, 'common', 'Value'),
(632, 'common', 'Created At'),
(633, 'common', 'Created User ID'),
(634, 'common', 'Modified At'),
(635, 'common', 'Modified User ID'),
(636, 'common', 'Country ID'),
(637, 'common', 'Tax Lang ID'),
(638, 'common', 'Tax ID'),
(639, 'common', 'Language Code'),
(640, 'common', 'Tax Name'),
(641, 'common', 'Today Special ID'),
(642, 'common', 'Today Special Key'),
(643, 'common', 'City ID'),
(644, 'common', 'Vendor ID'),
(645, 'common', 'Item ID'),
(646, 'common', 'Url'),
(647, 'common', 'From Date'),
(648, 'common', 'To Date'),
(649, 'common', 'Created User ID'),
(650, 'common', 'Created At'),
(651, 'common', 'Modified User ID'),
(652, 'common', 'Modified At'),
(653, 'common', 'Today Special Status'),
(654, 'common', 'Today Special Lang ID'),
(655, 'common', 'Today Special ID'),
(656, 'common', 'Language Code'),
(657, 'common', 'Today Special Name'),
(658, 'common', 'Today Special Image Path'),
(659, 'common', 'Topup ID'),
(660, 'common', 'Topup Key'),
(661, 'common', 'Price'),
(662, 'common', 'Credit'),
(663, 'common', 'Free Point'),
(664, 'common', 'Created At'),
(665, 'common', 'Created User ID'),
(666, 'common', 'Modified User ID'),
(667, 'common', 'Modified At'),
(668, 'common', 'Topup History ID'),
(669, 'common', 'Topup History Key'),
(670, 'common', 'User ID'),
(671, 'common', 'Topup ID'),
(672, 'common', 'Total Price'),
(673, 'common', 'Free Point'),
(674, 'common', 'Payment Status'),
(675, 'common', 'Created At'),
(676, 'common', 'Modified At'),
(677, 'common', 'User ID'),
(678, 'common', 'User Key'),
(679, 'common', 'First Name'),
(680, 'common', 'Last Name'),
(681, 'common', 'Email'),
(682, 'common', 'Mobile Number'),
(683, 'common', 'Username'),
(684, 'common', 'Password Hash'),
(685, 'common', 'Password Reset Token'),
(686, 'common', 'Auth Key'),
(687, 'common', 'Profile Image'),
(688, 'common', 'Tobaogo Point'),
(689, 'common', 'Tobaogo Credit'),
(690, 'common', 'Status'),
(691, 'common', 'Last Login'),
(692, 'common', 'Referral Code'),
(693, 'common', 'Last Read Notification ID'),
(694, 'common', 'Promotion Notification Status'),
(695, 'common', 'Created User ID'),
(696, 'common', 'Created At'),
(697, 'common', 'Updated At'),
(698, 'common', 'Updated User ID'),
(699, 'common', 'Referred User ID'),
(700, 'common', 'Device Token'),
(701, 'common', 'Device Type'),
(702, 'common', 'Overall Tabaogo Point'),
(703, 'common', 'User Address ID'),
(704, 'common', 'User Address Key'),
(705, 'common', 'User ID'),
(706, 'common', 'Latitude'),
(707, 'common', 'Longitude'),
(708, 'common', 'Address Status'),
(709, 'common', 'Created At'),
(710, 'common', 'Created User ID'),
(711, 'common', 'Modified At'),
(712, 'common', 'Modified User ID'),
(713, 'common', 'Address Type'),
(714, 'common', 'User Address Lang ID'),
(715, 'common', 'User Address ID'),
(716, 'common', 'Language Code'),
(717, 'common', 'Address Contact Name'),
(718, 'common', 'Address'),
(719, 'common', 'Area'),
(720, 'common', 'State'),
(721, 'common', 'Contact Number'),
(722, 'common', 'Address Remark'),
(723, 'common', 'User Favourite ID'),
(724, 'common', 'User ID'),
(725, 'common', 'Vendor ID'),
(726, 'common', 'User Friend List ID'),
(727, 'common', 'User ID'),
(728, 'common', 'Friend User ID'),
(729, 'common', 'Created At'),
(730, 'common', 'Modified At'),
(731, 'common', 'User Level ID'),
(732, 'common', 'User Level Key'),
(733, 'common', 'From Point'),
(734, 'common', 'To Point'),
(735, 'common', 'Level'),
(736, 'common', 'Created At'),
(737, 'common', 'Created User ID'),
(738, 'common', 'Modified At'),
(739, 'common', 'Modified User ID'),
(740, 'common', 'Status'),
(741, 'common', 'User Notification ID'),
(742, 'common', 'User ID'),
(743, 'common', 'Notification ID'),
(744, 'common', 'Is Read'),
(745, 'common', 'Vendor ID'),
(746, 'common', 'Vendor Key'),
(747, 'common', 'Vendor Email'),
(748, 'common', 'Vendor Contact Number'),
(749, 'common', 'Username'),
(750, 'common', 'Password Hash'),
(751, 'common', 'Secret Password Hash'),
(752, 'common', 'Password Reset Token'),
(753, 'common', 'Commission'),
(754, 'common', 'Commision Type'),
(755, 'common', 'Vendor Address'),
(756, 'common', 'Minimum Cart Value'),
(757, 'common', 'Gst'),
(758, 'common', 'Service Tax'),
(759, 'common', 'Order Type'),
(760, 'common', 'Vendor Type'),
(761, 'common', 'Payment Option'),
(762, 'common', 'City ID'),
(763, 'common', 'Area ID'),
(764, 'common', 'Vendor Latitude'),
(765, 'common', 'Vendor Longitude'),
(766, 'common', 'Delivery Minutes'),
(767, 'common', 'Preorder Available'),
(768, 'common', 'Vendor Policy'),
(769, 'common', 'Vendor Status'),
(770, 'common', 'Vendor Shop Status'),
(771, 'common', 'Rating'),
(772, 'common', 'Rating Count'),
(773, 'common', 'Device Type'),
(774, 'common', 'Device Token'),
(775, 'common', 'Is Login'),
(776, 'common', 'Created At'),
(777, 'common', 'Created User ID'),
(778, 'common', 'Modified At'),
(779, 'common', 'Modified User ID'),
(780, 'common', 'Vendor Bank ID'),
(781, 'common', 'Vendor Bank Key'),
(782, 'common', 'Vendor ID'),
(783, 'common', 'Account Number'),
(784, 'common', 'Bank Name'),
(785, 'common', 'Branch Name'),
(786, 'common', 'Nric Number'),
(787, 'common', 'Company Registration Number'),
(788, 'common', 'Gst Number'),
(789, 'common', 'Sales Person Name'),
(790, 'common', 'Created At'),
(791, 'common', 'Modified At'),
(792, 'common', 'Account Holder Name'),
(793, 'common', 'Remarks'),
(794, 'common', 'Sort No'),
(795, 'common', 'Vendor Category ID'),
(796, 'common', 'Vendor ID'),
(797, 'common', 'Category ID'),
(798, 'common', 'Vendor Lang ID'),
(799, 'common', 'Vendor ID'),
(800, 'common', 'Language Code'),
(801, 'common', 'Vendor Name'),
(802, 'common', 'Vendor Image Path'),
(803, 'common', 'Vendor Description'),
(804, 'common', 'Vendor Type ID'),
(805, 'common', 'Vendor Type Key'),
(806, 'common', 'Vendor Type Status'),
(807, 'common', 'Created User ID'),
(808, 'common', 'Created At'),
(809, 'common', 'Updated User ID'),
(810, 'common', 'Updated At'),
(811, 'common', 'Vendor Type Detail ID'),
(812, 'common', 'Vendor ID'),
(813, 'common', 'Vendor Type ID'),
(814, 'common', 'Vendor Type Lang ID'),
(815, 'common', 'Vendor Type ID'),
(816, 'common', 'Language Code'),
(817, 'common', 'Vendor Type Name'),
(818, 'common', 'Vendor Type Image Path'),
(819, 'common', 'Admin User ID'),
(820, 'common', 'Admin User Key'),
(821, 'common', 'User Type'),
(822, 'common', 'First Name'),
(823, 'common', 'Last Name'),
(824, 'common', 'Email Address'),
(825, 'common', 'User Name'),
(826, 'common', 'Password Hash'),
(827, 'common', 'Password Reset Token'),
(828, 'common', 'Secret Password'),
(829, 'common', 'Status'),
(830, 'common', 'Last Login'),
(831, 'common', 'Role ID'),
(832, 'common', 'Created At'),
(833, 'common', 'Created User ID'),
(834, 'common', 'Modified At'),
(835, 'common', 'Modified User ID'),
(836, 'common', 'Restaurant Name'),
(837, 'common', 'SUNDAY'),
(838, 'common', 'MONDAY'),
(839, 'common', 'TUESDAY'),
(840, 'common', 'WEDNESDAY'),
(841, 'common', 'THURSDAY'),
(842, 'common', 'FRIDAY'),
(843, 'common', 'SATURDAY'),
(844, 'common', 'is Enabled Customer'),
(845, 'common', 'is Enabled Website'),
(846, 'common', 'Sound Enabled'),
(847, 'common', 'is Enabled Vendor'),
(848, 'common', 'Sound Enabled'),
(849, 'common', 'is Enabled Deliveryboy'),
(850, 'common', 'Sound Enabled'),
(851, 'common', 'Minimum loyalty points'),
(852, 'common', 'Is equal to'),
(853, 'common', 'SMTP Host'),
(854, 'common', 'SMTP Encryption'),
(855, 'common', 'SMTP Port'),
(856, 'common', 'SMTP Username'),
(857, 'common', 'SMTP Password'),
(858, 'common', 'Is SMTP Enabled'),
(859, 'common', 'SMS Gateway Account Id'),
(860, 'common', 'SMS Gateway Auth Id'),
(861, 'common', 'Is SMS Enabled'),
(862, 'common', 'Action'),
(863, 'common', 'Generate Coupon Code'),
(864, 'backend', 'Total Orders'),
(865, 'backend', 'Total Orders'),
(866, 'backend', 'Total Customers'),
(867, 'backend', 'Total Vendors'),
(868, 'backend', 'Total TurnOver'),
(869, 'backend', 'Are you sure you want to delete this record?'),
(870, 'backend', 'Select Role'),
(871, 'backend', 'Update'),
(872, 'backend', 'Cancel'),
(873, 'backend', 'Profile Info'),
(874, 'backend', 'Update Profile'),
(875, 'backend', 'Change Password'),
(876, 'backend', 'Create Administrator'),
(877, 'backend', 'Administrator Management'),
(878, 'backend', 'New Password'),
(879, 'backend', 'New password repeat'),
(880, 'backend', 'Reset password'),
(881, 'backend', 'Profile Info'),
(882, 'backend', 'Select Country'),
(883, 'backend', 'Select City'),
(884, 'backend', 'Area Management'),
(885, 'backend', 'Update Area'),
(886, 'backend', 'Ignore this field to create a Banner by choosing appropriate vendor name above or else give appropriate banner Url to create a Banner.'),
(887, 'backend', 'Create Banner'),
(888, 'backend', 'Banner Management'),
(889, 'backend', 'Please select a Restaurant'),
(890, 'backend', 'Search Location'),
(891, 'backend', 'Search Location'),
(892, 'backend', 'Select Approval Status'),
(893, 'backend', 'Select Approval Status'),
(894, 'backend', 'Select Order Type'),
(895, 'backend', 'START'),
(896, 'backend', 'END'),
(897, 'backend', 'STATUS'),
(898, 'backend', 'ACTION'),
(899, 'backend', 'START'),
(900, 'backend', 'END'),
(901, 'backend', 'STATUS'),
(902, 'backend', 'ACTION'),
(903, 'backend', 'Time Slot Management'),
(904, 'backend', 'back'),
(905, 'backend', 'Days'),
(906, 'backend', 'Pickup Hours'),
(907, 'backend', 'Delivery Hours'),
(908, 'backend', 'Create Branch'),
(909, 'backend', 'Branch Management'),
(910, 'backend', 'Create'),
(911, 'backend', 'Rating and Review Management'),
(912, 'backend', 'Create Category'),
(913, 'backend', 'Category Management'),
(914, 'backend', 'Update Category'),
(915, 'backend', 'Create City'),
(916, 'backend', 'City Management'),
(917, 'backend', 'Update City'),
(918, 'backend', 'Create Cms Page'),
(919, 'backend', 'CMS Management'),
(920, 'backend', 'Update Cms Page'),
(921, 'backend', 'Update Application Configuration'),
(922, 'backend', 'Currency Setting'),
(923, 'backend', 'Save'),
(924, 'backend', 'Delivery Boy Settings'),
(925, 'backend', 'Delivery Charge Settings'),
(926, 'backend', 'One Signal Setting'),
(927, 'backend', 'Referral Points Management'),
(928, 'backend', 'SMS'),
(929, 'backend', 'SMTP'),
(930, 'backend', 'Tabao Credit'),
(931, 'backend', 'Create Country'),
(932, 'backend', 'Country Management'),
(933, 'backend', 'Update Country'),
(934, 'backend', 'Create Voucher'),
(935, 'backend', 'Coupon Management'),
(936, 'backend', 'Are you sure you want to delete this coupon?'),
(937, 'backend', 'Update Voucher'),
(938, 'backend', 'Create Cuisine'),
(939, 'backend', 'Cuisine Management'),
(940, 'backend', 'Are you sure you want to delete this item?'),
(941, 'backend', 'Update Cuisine'),
(942, 'backend', 'Add zon'),
(943, 'backend', 'Create Delivery Area'),
(944, 'backend', 'Delivery Area Management'),
(945, 'backend', 'Update Delivery Area'),
(946, 'backend', 'Create Delivery Boy'),
(947, 'backend', 'Delivery Boy Management'),
(948, 'backend', 'Update Delivery Boy'),
(949, 'backend', 'Delivery Boy Info'),
(950, 'backend', 'Enquiry Management'),
(951, 'backend', 'Are you sure you want to delete this enquiry?'),
(952, 'backend', 'Enquiry Management'),
(953, 'backend', 'Enquiry'),
(954, 'backend', 'Update Ingredient'),
(955, 'backend', 'Ingredient Management'),
(956, 'backend', 'Create Ingredient'),
(957, 'backend', 'Create Item'),
(958, 'backend', 'Item Management'),
(959, 'backend', 'Update Item'),
(960, 'backend', 'Please select a ingredient type'),
(961, 'backend', 'Ingredient Group cannot be created Empty with empty ingredients'),
(962, 'backend', 'Create Ingredient Group'),
(963, 'backend', 'Ingredient Group'),
(964, 'backend', 'Update Ingredient Group'),
(965, 'backend', 'Active'),
(966, 'backend', 'Inactive'),
(967, 'backend', 'Item Mapping Group cannot be created with  Empty ingredient groups'),
(968, 'backend', 'Atleast drag one value group!'),
(969, 'backend', 'Create Item Mapping'),
(970, 'backend', 'Item Mapping'),
(971, 'backend', 'Update Item Mapping'),
(972, 'backend', 'Create Item Type'),
(973, 'backend', 'Item Type Management'),
(974, 'backend', 'Update Item Type'),
(975, 'backend', 'Username'),
(976, 'backend', 'Password'),
(977, 'backend', 'Forgot Password'),
(978, 'backend', 'Email'),
(979, 'backend', 'Create Mall Product'),
(980, 'backend', 'Mall Product Management'),
(981, 'backend', 'Update Mall Product'),
(982, 'backend', 'Create Newsletter'),
(983, 'backend', 'Newsletter Management'),
(984, 'backend', 'Update Newsletter'),
(985, 'backend', 'Subscribers Management'),
(986, 'backend', 'Actions'),
(987, 'backend', 'Create Notification'),
(988, 'backend', 'Notification Management'),
(989, 'backend', 'Update Notification'),
(990, 'backend', 'Select Vendor'),
(991, 'backend', 'Select Branch'),
(992, 'backend', 'Select Order Type'),
(993, 'backend', 'Select Delivery Type'),
(994, 'backend', 'Delivery Location'),
(995, 'backend', 'Drag and Drop the marker for a new location to place order for customer or else default customer location will be considered to process the order.'),
(996, 'backend', 'Item Name'),
(997, 'backend', 'Quantity'),
(998, 'backend', 'Sub total'),
(999, 'backend', 'Create Order'),
(1000, 'backend', 'Name:'),
(1001, 'backend', 'Mobile:'),
(1002, 'backend', 'Assign'),
(1003, 'backend', 'Order Management'),
(1004, 'backend', 'Order Number'),
(1005, 'backend', 'All'),
(1006, 'backend', 'elivery Boy Details'),
(1007, 'backend', 'Live Delivery Boy Tracking'),
(1008, 'backend', 'Customer Details'),
(1009, 'backend', 'Branch Details'),
(1010, 'backend', 'Name:'),
(1011, 'backend', 'Mobile:'),
(1012, 'backend', 'Contact Email:'),
(1013, 'backend', 'Address :'),
(1014, 'backend', 'Order Details'),
(1015, 'backend', 'Order ID:'),
(1016, 'backend', 'Order Date'),
(1017, 'backend', 'Order Type :'),
(1018, 'backend', 'Payment Option'),
(1019, 'backend', 'Payment Status'),
(1020, 'backend', 'S.No.'),
(1021, 'backend', 'Item Name'),
(1022, 'backend', 'Qty'),
(1023, 'backend', 'Price'),
(1024, 'backend', 'Variety'),
(1025, 'backend', 'Customer Details'),
(1026, 'backend', 'Name:'),
(1027, 'backend', 'Mobile:'),
(1028, 'backend', 'Email Id:'),
(1029, 'backend', 'Delivery Address:'),
(1030, 'backend', 'Product Details'),
(1031, 'backend', 'Product Id:'),
(1032, 'backend', 'Product Name:'),
(1033, 'backend', 'Product Description:'),
(1034, 'backend', 'Product Price:'),
(1035, 'backend', 'Order Details'),
(1036, 'backend', 'Order Number'),
(1037, 'backend', 'Order Date:'),
(1038, 'backend', 'Order Status :'),
(1039, 'backend', 'Mall Product Order Management'),
(1040, 'backend', 'Mall Product Order Details'),
(1041, 'backend', 'Print'),
(1042, 'backend', 'Close'),
(1043, 'backend', 'ustomer Details'),
(1044, 'backend', 'Name:'),
(1045, 'backend', 'Mobile:'),
(1046, 'backend', 'Email Id:'),
(1047, 'backend', 'Delivery Address:'),
(1048, 'backend', 'Product Details'),
(1049, 'backend', 'Product Id:'),
(1050, 'backend', 'Product Name:'),
(1051, 'backend', 'Product Description:'),
(1052, 'backend', 'Product Price:'),
(1053, 'backend', 'Order Details'),
(1054, 'backend', 'Order Number :'),
(1055, 'backend', 'Order Date:'),
(1056, 'backend', 'Order Status :'),
(1057, 'backend', 'Parcel Order'),
(1058, 'backend', 'Parcel Order Details'),
(1059, 'backend', 'Cancel'),
(1060, 'backend', 'Customer Details'),
(1061, 'backend', 'Pickup Details'),
(1062, 'backend', 'Mobile:'),
(1063, 'backend', 'Address:'),
(1064, 'backend', 'Date:'),
(1065, 'backend', 'Delivery Details'),
(1066, 'backend', 'Name:'),
(1067, 'backend', 'Mobile:'),
(1068, 'backend', 'Address:'),
(1069, 'backend', 'Date:'),
(1070, 'backend', 'Product Information'),
(1071, 'backend', 'Product Description :'),
(1072, 'backend', 'Order Details'),
(1073, 'backend', 'Payment Option :'),
(1074, 'backend', 'Payment Provider :'),
(1075, 'backend', 'Payment Status'),
(1076, 'backend', 'Subtotal'),
(1077, 'backend', 'Delivery Fee'),
(1078, 'backend', 'Total'),
(1079, 'backend', 'Create Parcel Item Type'),
(1080, 'backend', 'Parcel Item Type'),
(1081, 'backend', 'Are you sure you want to delete this coupon?'),
(1082, 'backend', 'Update Parcel Item Type'),
(1083, 'backend', 'Create Promotion'),
(1084, 'backend', 'Promotion Management'),
(1085, 'backend', 'Update Promotion'),
(1086, 'backend', 'Please select an Option'),
(1087, 'backend', 'Send'),
(1088, 'backend', 'Push Notification'),
(1089, 'backend', 'Access Rules:'),
(1090, 'backend', 'NOTE!'),
(1091, 'backend', 'allow'),
(1092, 'backend', 'deny'),
(1093, 'backend', 'default'),
(1094, 'backend', 'The above error occurred while the Web server was processing your request.'),
(1095, 'backend', 'Please contact us if you think this is a server error. Thank you.'),
(1096, 'backend', 'Checking Notification'),
(1097, 'backend', 'Best Regards'),
(1098, 'backend', 'For more information'),
(1099, 'backend', 'Send Push Notification'),
(1100, 'backend', 'Create Vendor Type'),
(1101, 'backend', 'Vendor Type Management'),
(1102, 'backend', 'Update Vendor Type'),
(1103, 'backend', 'Vendor Payment Management'),
(1104, 'backend', 'Create Vendor Bank Detail'),
(1105, 'backend', 'Update Vendor Bank Detail'),
(1106, 'backend', 'Create Vendor'),
(1107, 'backend', 'Update Customer'),
(1108, 'backend', 'Activity Log'),
(1109, 'backend', 'Are you sure you want to delete this record?'),
(1110, 'backend', 'Active'),
(1111, 'backend', 'Inactive'),
(1112, 'backend', 'Create Area'),
(1113, 'backend', 'Address Type'),
(1114, 'backend', 'Update Area'),
(1115, 'backend', 'Update Banner'),
(1116, 'backend', 'Reason for Shop Unavailability'),
(1117, 'backend', 'Delivery Area'),
(1118, 'backend', 'Tax Management'),
(1119, 'backend', 'Create Tax'),
(1120, 'backend', 'Ignore this field to create a Today Special Item by choosing appropriate vendor name below or else give appropriate Item Url to create a Today Special Item.'),
(1121, 'backend', 'Create Today Special Item'),
(1122, 'backend', 'Today Special Management'),
(1123, 'backend', 'Update Today Special Item'),
(1124, 'backend', 'Create Wallet Conversion Details'),
(1125, 'backend', 'Wallet Conversion Rate Management'),
(1126, 'backend', 'Update Wallet Conversion Details'),
(1127, 'backend', 'Create Customer'),
(1128, 'backend', 'Customer Management'),
(1129, 'backend', 'Create Customer Level'),
(1130, 'backend', 'Customer Level Management'),
(1131, 'backend', 'Update Customer Level'),
(1132, 'backend', 'Update Vendor'),
(1133, 'backend', 'Create Role'),
(1134, 'backend', 'Update Role'),
(1135, 'backend', 'YOU DON'),
(1136, 'backend', 'No worries! It\\'),
(1137, 'backend', 'Activity Log'),
(1138, 'backend', 'Generate Coupon Code'),
(1139, 'backend', 'Setting'),
(1140, 'backend', 's'),
(1141, 'backend', 'Application Configuration'),
(1142, 'backend', 'Social Media'),
(1143, 'backend', 'SMS'),
(1144, 'backend', 'SMTP'),
(1145, 'backend', 'One Signal'),
(1146, 'backend', 'Currency'),
(1147, 'backend', 'Distance Time'),
(1148, 'backend', 'Delivery Boy'),
(1149, 'backend', 'Delivery Charge'),
(1150, 'backend', 'Notification'),
(1151, 'backend', 'App Notification'),
(1152, 'backend', 'Push Notification'),
(1153, 'backend', 'Voucher Management'),
(1154, 'backend', 'Item'),
(1155, 'backend', 'Category Management'),
(1156, 'backend', 'Item Management'),
(1157, 'backend', 'Item Type Management'),
(1158, 'backend', 'Ingredient Management'),
(1159, 'backend', 'Ingredient Group Management'),
(1160, 'backend', 'Item Mapping Management'),
(1161, 'backend', 'Cuisine Management'),
(1162, 'backend', 'Vendor'),
(1163, 'backend', 'Vendor Management'),
(1164, 'backend', 'Branch Management'),
(1165, 'backend', 'Delivery Area Management'),
(1166, 'backend', 'Vendor Type Management'),
(1167, 'backend', 'Vendor Bank Details Management'),
(1168, 'backend', 'Vendor Payment Management'),
(1169, 'backend', 'Order'),
(1170, 'backend', 'Customer'),
(1171, 'backend', 'Customer Management'),
(1172, 'backend', 'Newsletter Management'),
(1173, 'backend', 'Subscribers List Management'),
(1174, 'backend', 'Address'),
(1175, 'backend', 'City Management'),
(1176, 'backend', 'Country Management'),
(1177, 'backend', 'Area Management'),
(1178, 'backend', 'Address Type'),
(1179, 'backend', 'Enquiry'),
(1180, 'backend', 'CMS'),
(1181, 'backend', 'Delivery Boy Management'),
(1182, 'backend', 'Rating and Review Management'),
(1183, 'backend', 'Activity Log'),
(1184, 'backend', 'Role'),
(1185, 'backend', 'Role Management'),
(1186, 'backend', 'Administrator Management'),
(1187, 'backend', 'Dashboard'),
(1188, 'backend', 'Settings'),
(1189, 'backend', 'Area Name'),
(1190, 'backend', 'Admin Username'),
(1191, 'backend', 'Role Name'),
(1192, 'backend', 'urrent password'),
(1193, 'backend', 'New password'),
(1194, 'backend', 'New password repeat'),
(1195, 'backend', 'Area Name'),
(1196, 'backend', 'Country Name'),
(1197, 'backend', 'City Name'),
(1198, 'backend', 'Vendor Name'),
(1199, 'backend', 'Cuisine Name'),
(1200, 'backend', 'Reason'),
(1201, 'backend', 'Delivery Charge Extra Per Km'),
(1202, 'backend', 'Delivery Base Km'),
(1203, 'backend', 'Banner Image'),
(1204, 'backend', 'Vendor Name'),
(1205, 'backend', 'City Name'),
(1206, 'backend', 'Delivery Areas'),
(1207, 'backend', 'Category Image'),
(1208, 'backend', 'City Name'),
(1209, 'backend', 'Page Title'),
(1210, 'backend', 'Page Content'),
(1211, 'backend', 'Calculate loyalty points on?'),
(1212, 'backend', '1 RM (in credit points)'),
(1213, 'backend', '1 KM (in minutes)'),
(1214, 'backend', 'Currency Code'),
(1215, 'backend', 'Service tax(%'),
(1216, 'backend', 'Appstore Link'),
(1217, 'backend', 'Playstore Link'),
(1218, 'backend', 'Kuala Lumpu'),
(1219, 'backend', 'Melaka'),
(1220, 'backend', 'Selangor'),
(1221, 'backend', 'Currency Symbol'),
(1222, 'backend', 'Customer App OneSignal App ID'),
(1223, 'backend', 'Customer Push Notification Rest API Key'),
(1224, 'backend', 'Vendor App OneSignal App ID'),
(1225, 'backend', 'Delivery Boy App OneSignal App ID'),
(1226, 'backend', 'Site Logo'),
(1227, 'backend', 'Fav Logo'),
(1228, 'backend', 'Offer Image'),
(1229, 'backend', 'Placeholder Image'),
(1230, 'backend', 'Country Name'),
(1231, 'backend', 'Customer Name'),
(1232, 'backend', 'Vendor Name'),
(1233, 'backend', 'Cuisine Image'),
(1234, 'backend', 'Item Imag'),
(1235, 'backend', 'Vendor Name'),
(1236, 'backend', 'Branch Name'),
(1237, 'backend', 'Category Name'),
(1238, 'backend', 'Item Image'),
(1239, 'backend', 'Ingredient Status'),
(1240, 'backend', 'Item Name'),
(1241, 'backend', 'Mapping Status'),
(1242, 'backend', 'Ingredient Group'),
(1243, 'backend', 'Item Type'),
(1244, 'backend', 'Product Image'),
(1245, 'backend', 'Newsletter Image'),
(1246, 'backend', 'Notification Image'),
(1247, 'backend', 'Vendor Name'),
(1248, 'backend', 'Branch Name'),
(1249, 'backend', 'Email'),
(1250, 'backend', 'Order Number'),
(1251, 'backend', 'Customer Name'),
(1252, 'backend', 'Order Booking'),
(1253, 'backend', 'Parcel Item Type'),
(1254, 'backend', 'Promotion Image'),
(1255, 'backend', 'Country Name'),
(1256, 'backend', 'Today Special Image'),
(1257, 'backend', 'Conversion value (RM)'),
(1258, 'backend', 'Conversion rate'),
(1259, 'backend', 'Free Tabao Points'),
(1260, 'backend', 'Customer'),
(1261, 'backend', 'Customer Address'),
(1262, 'backend', 'Delivery Address'),
(1263, 'backend', 'Delivery Area'),
(1264, 'backend', 'Delivery State'),
(1265, 'backend', 'Level Name'),
(1266, 'backend', 'From Points(TP)'),
(1267, 'backend', 'To Points(TP)'),
(1268, 'backend', 'Vendor Image'),
(1269, 'backend', 'Vendor Name'),
(1270, 'backend', 'NRIC Number'),
(1271, 'backend', 'Vendor Name'),
(1272, 'backend', 'Category Name'),
(1273, 'backend', 'Cuisine Name'),
(1274, 'backend', 'Vendor Type Image'),
(1275, 'backend', 'Vendor Type Name'),
(1276, 'backend', 'User Type'),
(1277, 'backend', 'App Type'),
(1278, 'backend', 'Message'),
(1279, 'backend', 'Type'),
(1280, 'backend', 'Email Id/ Mobile no'),
(1281, 'backend', 'App Installed Customer'),
(1282, 'backend', 'All Customer'),
(1283, 'backend', 'Email'),
(1284, 'backend', 'SMS'),
(1285, 'backend', 'Android'),
(1286, 'backend', 'IOS'),
(1287, 'backend', 'All'),
(1288, 'backend', 'Admin Login'),
(1289, 'backend', 'Forgot Password'),
(1290, 'backend', 'Login'),
(1291, 'backend', 'Forgot password?'),
(1292, 'backend', 'Incorrect username or password.'),
(1293, 'backend', 'Hi'),
(1294, 'backend', 'yes'),
(1295, 'backend', 'no'),
(1296, 'backend', 'Global'),
(1297, 'backend', 'All User'),
(1298, 'backend', 'Web'),
(1299, 'backend', 'App'),
(1300, 'backend', 'Amount Based'),
(1301, 'backend', 'Percentage Based'),
(1302, 'backend', 'Shop'),
(1303, 'backend', 'Menu'),
(1304, 'backend', 'Shop Category'),
(1305, 'backend', 'Menu Category'),
(1306, 'backend', 'Modifier'),
(1307, 'backend', 'Sub Course'),
(1308, 'backend', 'Item Mapping Group cannot be created with  Empty ingredient groups'),
(1309, 'backend', 'Atleast drag one value group!'),
(1310, 'backend', 'Percentage'),
(1311, 'backend', 'Value'),
(1312, 'backend', 'open'),
(1313, 'backend', 'closed'),
(1314, 'backend', 'pre-order'),
(1315, 'backend', 'busy'),
(1316, 'backend', 'Pending'),
(1317, 'backend', 'Paid'),
(1318, 'backend', 'On'),
(1319, 'backend', 'On Job'),
(1320, 'backend', 'Off'),
(1321, 'backend', 'Approved'),
(1322, 'backend', 'Rejected'),
(1323, 'backend', 'App Name'),
(1324, 'backend', 'App Description'),
(1325, 'backend', 'Meta Keyword'),
(1326, 'backend', 'App Email'),
(1327, 'backend', 'App Contact No'),
(1328, 'backend', 'App Contact Address'),
(1329, 'backend', 'Site Copyright'),
(1330, 'backend', 'Facebook Url'),
(1331, 'backend', 'Twitter Url'),
(1332, 'backend', 'Instagram Url'),
(1333, 'backend', 'Google Plus Url'),
(1334, 'backend', 'SMS Gateway Username'),
(1335, 'backend', 'SMS Gateway Password'),
(1336, 'backend', 'SMS Gateway Sender ID'),
(1337, 'backend', 'Is Sms Enabled'),
(1338, 'backend', 'Test'),
(1339, 'backend', 'SMTP Host'),
(1340, 'backend', 'SMTP Encryption'),
(1341, 'backend', 'SMTP Port'),
(1342, 'backend', 'SMTP Username'),
(1343, 'backend', 'SMTP Password'),
(1344, 'backend', 'Is SMTP Enabled'),
(1345, 'backend', 'SMTP Encryption'),
(1346, 'backend', 'Order Accept Time Limit'),
(1347, 'backend', 'Deliveryboy Radius'),
(1348, 'backend', 'Delivery Boy Order Assign Type'),
(1349, 'backend', 'Notification Title'),
(1350, 'backend', 'Notification Description'),
(1351, 'backend', 'Previous'),
(1352, 'backend', 'Last'),
(1353, 'backend', 'Please Select an option'),
(1354, 'backend', 'Both'),
(1355, 'backend', 'Voucher Code'),
(1356, 'backend', 'Voucher Minimum Cart Value'),
(1357, 'backend', 'Voucher Value'),
(1358, 'backend', 'Voucher Starts At'),
(1359, 'backend', 'Voucher Ends At'),
(1360, 'backend', 'Coupon Status'),
(1361, 'backend', 'Sub Category Name'),
(1362, 'backend', 'Sort No'),
(1363, 'backend', 'Category Status'),
(1364, 'backend', 'Item Price'),
(1365, 'backend', 'Food'),
(1366, 'backend', 'Item Status'),
(1367, 'backend', 'Deactive'),
(1368, 'backend', 'Delete'),
(1369, 'backend', 'Item Type Name'),
(1370, 'backend', 'Item Type Status'),
(1371, 'backend', 'Ingredient Name'),
(1372, 'backend', 'Ingredient Type'),
(1373, 'backend', 'Create Date'),
(1374, 'backend', 'Group Name'),
(1375, 'backend', 'Ingredient Group'),
(1376, 'backend', 'Item Name'),
(1377, 'backend', 'Mapping Status'),
(1378, 'backend', 'Cuisine Status'),
(1379, 'backend', 'Created Date'),
(1380, 'backend', 'Vendor Email'),
(1381, 'backend', 'Vendor Contact Number'),
(1382, 'backend', 'City'),
(1383, 'backend', 'Area'),
(1384, 'backend', 'Vendor Status'),
(1385, 'backend', 'Out Of Service'),
(1386, 'backend', 'Contact Email'),
(1387, 'backend', 'Contact Number'),
(1388, 'backend', 'Branch Availability Status'),
(1389, 'backend', 'Delivery Area Name'),
(1390, 'backend', 'Vendor Type Status'),
(1391, 'backend', 'Total Order Amount'),
(1392, 'backend', 'Total Admin Profit'),
(1393, 'backend', 'Total Vendor Profit'),
(1394, 'backend', 'No Of Orders'),
(1395, 'backend', 'Vendor Payment Status'),
(1396, 'backend', 'From Date'),
(1397, 'backend', 'To Date'),
(1398, 'backend', 'Export'),
(1399, 'backend', 'Order Date Time'),
(1400, 'backend', 'Order Total'),
(1401, 'backend', 'Order Status'),
(1402, 'backend', 'Mobile Number'),
(1403, 'backend', 'Newsletter Title'),
(1404, 'backend', 'Newsletter Status'),
(1405, 'backend', 'City Status'),
(1406, 'backend', 'Country Code'),
(1407, 'backend', 'Area Status'),
(1408, 'backend', 'Address Type Name'),
(1409, 'backend', 'Address Type Status'),
(1410, 'backend', 'Address Type Name'),
(1411, 'backend', 'Name'),
(1412, 'backend', 'CMS Title'),
(1413, 'backend', 'Sort Order'),
(1414, 'backend', 'CMS Status'),
(1415, 'backend', 'Question'),
(1416, 'backend', 'Answer'),
(1417, 'backend', 'Rating'),
(1418, 'backend', 'Review'),
(1419, 'backend', 'Log'),
(1420, 'backend', 'Client Ip'),
(1421, 'backend', 'Client Platform'),
(1422, 'backend', 'Role Status'),
(1423, 'backend', 'First Name'),
(1424, 'backend', 'Last Login'),
(1425, 'backend', 'Delivery Boy Access Url'),
(1426, 'backend', 'Company Key'),
(1427, 'backend', 'Start Km'),
(1428, 'backend', 'End Km'),
(1429, 'backend', 'Amount'),
(1430, 'backend', 'Is All User'),
(1431, 'backend', 'Server is down(404)! Please try again some other time!'),
(1432, 'backend', 'Delivery boy created successfully'),
(1433, 'backend', 'No delivery boy found'),
(1434, 'backend', 'Delivery boy updated successfully'),
(1435, 'backend', 'No deliveryboy in online..!'),
(1436, 'backend', 'Order is assigned to delivery boy'),
(1437, 'backend', 'Order not assigned to delivery boy!'),
(1438, 'backend', 'Drivery boy not found'),
(1439, 'backend', 'Delivery boy deactivated successfully'),
(1440, 'backend', 'Delivery boy activated successfully'),
(1441, 'backend', 'Email does not match'),
(1442, 'backend', 'Coupon Type'),
(1443, 'backend', 'Coupon Image'),
(1444, 'backend', 'Coupon Scope'),
(1445, 'backend', 'Item Status'),
(1446, 'backend', 'Item Description'),
(1447, 'backend', 'Ingredient Name'),
(1448, 'backend', 'Group Name'),
(1449, 'backend', 'Maximum'),
(1450, 'backend', 'Drag to add Ingredient'),
(1451, 'backend', 'Preparation Time'),
(1452, 'backend', 'Delivery Time'),
(1453, 'backend', 'Latitude'),
(1454, 'backend', 'Longitude'),
(1455, 'backend', 'Delivery Option'),
(1456, 'backend', 'Delivery Boy Name'),
(1457, 'backend', 'All Branches'),
(1458, 'backend', 'Confirmed'),
(1459, 'backend', 'Delivered'),
(1460, 'backend', 'Delivery Boy Name'),
(1461, 'backend', 'Pending'),
(1462, 'backend', 'Success'),
(1463, 'backend', 'Failure'),
(1464, 'backend', 'Tax'),
(1465, 'backend', 'Logout'),
(1466, 'backend', 'Account Setting'),
(1467, 'backend', 'My Profile'),
(1468, 'backend', 'Last Name'),
(1469, 'backend', 'Email Address'),
(1470, 'backend', 'Submit'),
(1471, 'backend', 'Minimum Cart Value'),
(1472, 'backend', 'Service Tax'),
(1473, 'backend', 'Non Veg'),
(1474, 'backend', 'Is All Vendor'),
(1475, 'backend', 'Voucher Management'),
(1476, 'frontend', 'Driver Registration'),
(1477, 'frontend', 'Partner With Us'),
(1478, 'frontend', 'Login'),
(1479, 'frontend', 'My Account'),
(1480, 'frontend', 'Profile'),
(1481, 'frontend', 'Address'),
(1482, 'frontend', 'Orders'),
(1483, 'frontend', 'Rates & Reviews'),
(1484, 'frontend', 'Favourites'),
(1485, 'frontend', 'Logout');
INSERT INTO `source_message` (`id`, `category`, `message`) VALUES
(1486, 'frontend', 'Indulge your tastebuds with'),
(1487, 'frontend', 'FOODPURBY'),
(1488, 'frontend', 'Find Food'),
(1489, 'frontend', 'Download Apps'),
(1490, 'frontend', 'Choose Location'),
(1491, 'frontend', 'User can specify cuisine and search for such restaurants in your locality'),
(1492, 'frontend', 'Choose Restaurant'),
(1493, 'frontend', 'User can specify cuisine and search for such restaurants in your locality'),
(1494, 'frontend', 'Choose Menu'),
(1495, 'frontend', 'Browse hundreds of menus to find the food you like'),
(1496, 'frontend', 'Order & Get Delivered'),
(1497, 'frontend', 'Food is prepared & delivered to your door'),
(1498, 'frontend', 'Restaurants in Your Pocket'),
(1499, 'frontend', 'Order from your favorite restaurants & track on the go, with the all-new Foodpurby app.'),
(1500, 'frontend', 'Register / Login'),
(1501, 'frontend', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt neque mauris.'),
(1502, 'frontend', 'Restaurant Listing'),
(1503, 'frontend', 'Menu Listing'),
(1504, 'frontend', 'My Cart'),
(1505, 'frontend', 'Checkout'),
(1506, 'frontend', 'Order Status'),
(1507, 'frontend', 'Place cannot be empty'),
(1508, 'frontend', 'Enter Your Location'),
(1509, 'frontend', 'About us'),
(1510, 'frontend', 'Privacy Policy'),
(1511, 'frontend', 'Terms and Conditions'),
(1512, 'frontend', 'Driver Registration'),
(1513, 'frontend', 'How It Works'),
(1514, 'frontend', 'FAQ'),
(1515, 'frontend', 'Contact us'),
(1516, 'frontend', 'Contact Us'),
(1517, 'frontend', 'First Name'),
(1518, 'frontend', 'Last Name'),
(1519, 'frontend', 'Email Address'),
(1520, 'frontend', 'Mobile Number'),
(1521, 'frontend', 'message'),
(1522, 'frontend', 'Submit'),
(1523, 'frontend', 'Driver Registration'),
(1524, 'frontend', 'Name'),
(1525, 'frontend', 'Email'),
(1526, 'frontend', 'Mobile Number'),
(1527, 'frontend', 'License Number'),
(1528, 'frontend', 'vehicle number'),
(1529, 'frontend', 'Password'),
(1530, 'frontend', 'Bank name'),
(1531, 'frontend', 'bank branch code'),
(1532, 'frontend', 'Account number'),
(1533, 'frontend', 'swift code'),
(1534, 'frontend', 'branch name'),
(1535, 'frontend', 'Registration Successfull'),
(1536, 'frontend', 'Sign Up to Your Account'),
(1537, 'frontend', 'Password'),
(1538, 'frontend', 'Confirm Password'),
(1539, 'frontend', 'Already have an account? Sign In'),
(1540, 'frontend', 'Otp'),
(1541, 'frontend', 'OTP send your Mobile Number'),
(1542, 'frontend', 'Sign In to Your Account'),
(1543, 'frontend', 'Forgot Password?'),
(1544, 'frontend', 'Reset link send your Email'),
(1545, 'frontend', 'Email does not match'),
(1546, 'frontend', 'Forgot your Password\''),
(1547, 'frontend', 'oops, sorry we can\'t find that page!'),
(1548, 'frontend', '>Either something went wrong or the page doesn\'t exist anymore.'),
(1549, 'frontend', 'oops, sorry we can\'t find that page!'),
(1550, 'frontend', 'Either something went wrong or the page doesn\'t exist anymore.'),
(1551, 'frontend', 'Address'),
(1552, 'frontend', 'Add Address'),
(1553, 'frontend', 'Add Address'),
(1554, 'frontend', 'Select address type'),
(1555, 'frontend', 'Flat number'),
(1556, 'frontend', 'Apartment'),
(1557, 'frontend', 'Street Name'),
(1558, 'frontend', 'Area'),
(1559, 'frontend', 'City'),
(1560, 'frontend', 'Landmark'),
(1561, 'frontend', 'Company'),
(1562, 'frontend', 'Please choose your location on the map'),
(1563, 'frontend', 'Successfull'),
(1564, 'frontend', 'Personal Information'),
(1565, 'frontend', 'DOB'),
(1566, 'frontend', 'email'),
(1567, 'frontend', 'Are you Change password?'),
(1568, 'frontend', 'Change Password'),
(1569, 'frontend', 'Enter current password'),
(1570, 'frontend', 'Enter new password'),
(1571, 'frontend', 'Enter confirm password'),
(1572, 'frontend', 'I would like to subscribe for Newsletters'),
(1573, 'frontend', 'Update'),
(1574, 'frontend', 'Are you Change password?'),
(1575, 'frontend', 'Profile Update Successfull'),
(1576, 'frontend', 'Current Password is wrong'),
(1577, 'frontend', 'Gender'),
(1578, 'frontend', 'Date OF Birth'),
(1579, 'frontend', 'Email Id'),
(1580, 'frontend', 'Enter your location'),
(1581, 'frontend', 'Orders'),
(1582, 'frontend', 'View Order'),
(1583, 'frontend', 'Go To Restaurant'),
(1584, 'frontend', 'sorry you don\'t have any order'),
(1585, 'frontend', 'Reviews'),
(1586, 'frontend', 'Edit'),
(1587, 'frontend', 'Delete'),
(1588, 'frontend', 'Ratings'),
(1589, 'frontend', 'Comments'),
(1590, 'frontend', 'Review Update Successfull'),
(1591, 'frontend', 'Review Deleted Successfull'),
(1592, 'frontend', 'Favourites'),
(1593, 'frontend', 'Open'),
(1594, 'frontend', 'Closed'),
(1595, 'frontend', 'Busy'),
(1596, 'frontend', 'Removed Successfull'),
(1597, 'frontend', 'Featured Restaurants'),
(1598, 'frontend', 'Restaurant Found'),
(1599, 'frontend', 'Restaurant not available, Please Search Near by location'),
(1600, 'frontend', 'Show Restaurants With<'),
(1601, 'frontend', 'Pure Veg'),
(1602, 'frontend', 'Pure Non-Veg'),
(1603, 'frontend', 'Cuisines'),
(1604, 'frontend', 'Sort'),
(1605, 'frontend', 'Popularity'),
(1606, 'frontend', 'Rating'),
(1607, 'frontend', 'Min order value'),
(1608, 'frontend', 'Clear'),
(1609, 'frontend', 'Show Restaurants'),
(1610, 'frontend', 'Ratings & Reviews'),
(1611, 'frontend', 'Search'),
(1612, 'frontend', 'Remove Favourite'),
(1613, 'frontend', 'Add Favourite'),
(1614, 'frontend', 'Menu'),
(1615, 'frontend', 'Ratings'),
(1616, 'frontend', 'Info'),
(1617, 'frontend', 'Order Now'),
(1618, 'frontend', 'please enter your Comments'),
(1619, 'frontend', 'Rating Added Successfully'),
(1620, 'frontend', 'Favourite Added Successfully'),
(1621, 'frontend', 'Favourite Removed Successfully'),
(1622, 'frontend', 'Menu'),
(1623, 'frontend', 'Menu Items'),
(1624, 'frontend', 'Filter'),
(1625, 'frontend', 'Ratings & Reviews'),
(1626, 'frontend', 'Add Review'),
(1627, 'frontend', 'Address'),
(1628, 'frontend', 'Delivery Hours'),
(1629, 'frontend', 'Takeaway Hours'),
(1630, 'frontend', 'Your Cart'),
(1631, 'frontend', 'Item'),
(1632, 'frontend', 'Qty'),
(1633, 'frontend', 'Price'),
(1634, 'frontend', 'Subtotal'),
(1635, 'frontend', 'VAT'),
(1636, 'frontend', 'Total Amount'),
(1637, 'frontend', 'Note: Delivery fee will be added once you select the delivery address.'),
(1638, 'frontend', 'Checkout'),
(1639, 'frontend', 'Back to Restaurant'),
(1640, 'frontend', 'Description'),
(1641, 'frontend', 'Quantity'),
(1642, 'frontend', 'Price'),
(1643, 'frontend', 'Check Out'),
(1644, 'frontend', 'Quantity Removed'),
(1645, 'frontend', 'Remove'),
(1646, 'frontend', 'Sub Total'),
(1647, 'frontend', 'VAT'),
(1648, 'frontend', 'Total Amount'),
(1649, 'frontend', 'payment_details'),
(1650, 'frontend', 'Language changed Successfully'),
(1651, 'frontend', 'User logged in successfully'),
(1652, 'frontend', 'Email Already Exists'),
(1653, 'frontend', 'Mobile Number Already Exists'),
(1654, 'frontend', 'OTP not match'),
(1655, 'frontend', 'Password changed successfully'),
(1656, 'frontend', 'Error in updating password please try again'),
(1657, 'frontend', 'Reset Link Send Your Email'),
(1658, 'frontend', 'Password reset token expired try again !'),
(1659, 'frontend', 'Password changed successfully'),
(1660, 'frontend', 'User is not active'),
(1661, 'frontend', 'Profile Updated Successfully'),
(1662, 'frontend', 'Add Favourite'),
(1663, 'frontend', 'Add'),
(1664, 'frontend', 'Allergic Reactant'),
(1665, 'frontend', 'Do you want to change the password?'),
(1666, 'frontend', 'Current password'),
(1667, 'frontend', 'New password'),
(1668, 'frontend', 'Confirm password'),
(1669, 'frontend', 'Newsletter Unsubscribed successfully'),
(1670, 'frontend', 'Newsletter Subscribed successfully'),
(1671, 'api', 'Login'),
(1672, 'api', 'En'),
(1673, 'api', 'Nn'),
(1674, 'api', 'Email'),
(1675, 'api', 'Password'),
(1676, 'api', 'Loginfb'),
(1677, 'api', 'LoginGPlus'),
(1678, 'api', 'or'),
(1679, 'api', 'Forgot'),
(1680, 'api', 'NewAccount'),
(1681, 'api', 'FirstName'),
(1682, 'api', 'LastName'),
(1683, 'api', 'EmailAddress'),
(1684, 'api', 'Mobile'),
(1685, 'api', 'signUpfb'),
(1686, 'api', 'signUpGPlus'),
(1687, 'api', 'Password'),
(1688, 'api', 'YourLocation'),
(1689, 'api', 'EnterLocation'),
(1690, 'api', 'newAddress'),
(1691, 'api', 'AddressType'),
(1692, 'api', 'line1'),
(1693, 'api', 'line2'),
(1694, 'api', 'Company'),
(1695, 'api', 'LandMark'),
(1696, 'api', 'Emailempty'),
(1697, 'api', 'Passwordempty'),
(1698, 'api', 'FirstNameEmpty'),
(1699, 'api', 'LastNameEmpty'),
(1700, 'api', 'MobileEmpty'),
(1701, 'api', 'Emailpassword'),
(1702, 'api', 'Validemail'),
(1703, 'api', 'Home'),
(1704, 'api', 'My Profile'),
(1705, 'api', 'My Orders'),
(1706, 'api', 'Address Book'),
(1707, 'api', 'Favourite Restaurants'),
(1708, 'api', 'Newsletter'),
(1709, 'api', 'Help'),
(1710, 'api', 'Contact Us'),
(1711, 'api', 'Sign Out'),
(1712, 'api', 'Guest'),
(1713, 'api', 'gender'),
(1714, 'api', 'dob'),
(1715, 'api', 'CurrentPassword'),
(1716, 'api', 'NewPassword'),
(1717, 'api', 'ConfirmNewPassword'),
(1718, 'api', 'updatePassword'),
(1719, 'api', 'updateProfile'),
(1720, 'api', 'changePassword'),
(1721, 'api', 'Passwordnotmatched'),
(1722, 'api', 'Male'),
(1723, 'api', 'Female'),
(1724, 'api', 'otpTitle'),
(1725, 'api', 'optSendToMobile'),
(1726, 'api', 'resendOtp'),
(1727, 'api', 'resend'),
(1728, 'api', 'notReceive'),
(1729, 'api', 'Locate me'),
(1730, 'api', 'Enter Your Delivery Address'),
(1731, 'api', 'Restaurants'),
(1732, 'api', 'Popularity'),
(1733, 'api', 'Rating'),
(1734, 'api', 'Min order value'),
(1735, 'api', 'FILTERBY'),
(1736, 'api', 'Preorder Avilable'),
(1737, 'api', 'Voucher Accept'),
(1738, 'api', 'Pure Vegetarain'),
(1739, 'api', 'Non Vegetarain'),
(1740, 'api', 'Halal'),
(1741, 'api', 'Search Restaurants'),
(1742, 'api', 'FILTERS'),
(1743, 'api', 'CLEAR FILTERS'),
(1744, 'api', 'Filter Restaurants'),
(1745, 'api', 'Open'),
(1746, 'api', 'Close'),
(1747, 'api', 'Featured Restaurants'),
(1748, 'api', 'Restaurants'),
(1749, 'api', 'My Profile'),
(1750, 'api', 'No order found'),
(1751, 'api', 'VIEW ORDER'),
(1752, 'api', 'REORDER'),
(1753, 'api', 'ORDER INFO'),
(1754, 'api', 'ORDER SUMMARY'),
(1755, 'api', 'ITEM'),
(1756, 'api', 'QTY'),
(1757, 'api', 'PRICE'),
(1758, 'api', 'Order Amount'),
(1759, 'api', 'Payment Status'),
(1760, 'api', 'Status'),
(1761, 'api', 'Drag Your Location'),
(1762, 'api', 'Please select your address type'),
(1763, 'api', 'Please enter your address'),
(1764, 'api', 'Please enter your addressLine2'),
(1765, 'api', 'Enter Your Email'),
(1766, 'api', 'Don\'t miss out on our Great Offers'),
(1767, 'api', 'Subject'),
(1768, 'api', 'Your name'),
(1769, 'api', 'More Restaurants'),
(1770, 'api', 'MENUS'),
(1771, 'api', 'INFO'),
(1772, 'api', 'RATINGS'),
(1773, 'api', 'YourCartempty'),
(1774, 'api', 'CUISINES'),
(1775, 'api', 'DELIVERYHOURS'),
(1776, 'api', 'PICKUPHOURS'),
(1777, 'api', 'ADDRESS'),
(1778, 'api', 'DELIVERYFEEFROM'),
(1779, 'api', 'DELIVERYFEE'),
(1780, 'api', 'DELIVERYTIME'),
(1781, 'api', 'PICKUPTIME'),
(1782, 'api', 'ADD RATING'),
(1783, 'api', 'Rating added successfully'),
(1784, 'api', 'CANCEL'),
(1785, 'api', 'SUBMIT'),
(1786, 'api', 'ADDRAT'),
(1787, 'api', 'commands'),
(1788, 'api', 'MyCart'),
(1789, 'api', 'Yourcartisempty'),
(1790, 'api', 'Please add more items to reach the minimum order value'),
(1791, 'api', 'Checkout'),
(1792, 'api', 'REMOVE'),
(1793, 'api', 'Continue'),
(1794, 'api', 'Choose your delivery option'),
(1795, 'api', 'Choose your delivery address'),
(1796, 'api', 'DELIVERY TYPE'),
(1797, 'api', 'PAYMENT METHOD'),
(1798, 'api', 'DELIVERY ADDRESS'),
(1799, 'api', 'Assoonaspossible'),
(1800, 'api', 'Later'),
(1801, 'api', 'NoAddressfound'),
(1802, 'api', 'OKLetsscheduleaTime'),
(1803, 'api', 'Pickup'),
(1804, 'api', 'Delivery'),
(1805, 'api', 'Please accept the terms and conditions'),
(1806, 'api', 'Order Summary'),
(1807, 'api', 'PlaceOrder'),
(1808, 'api', 'Orderrelatedinstructionsifany'),
(1809, 'api', 'Enter coupon code'),
(1810, 'api', 'Enter driver tip'),
(1811, 'api', 'APPLY'),
(1812, 'api', 'Online Payment'),
(1813, 'api', 'Order Conformation'),
(1814, 'api', 'OrderStatus'),
(1815, 'api', 'OrderID'),
(1816, 'api', 'OrderAmount'),
(1817, 'api', 'Allergic Reactants'),
(1818, 'api', 'Please enter your Name'),
(1819, 'api', 'Please enter your Email'),
(1820, 'api', 'Please enter your Mobile number'),
(1821, 'api', 'Please enter your Subject'),
(1822, 'api', 'Please enter your Message'),
(1823, 'api', 'Are you want to clear cart'),
(1824, 'api', 'OK'),
(1825, 'api', 'ADDRATE'),
(1826, 'api', 'Please Enter the coupon code'),
(1827, 'api', 'Please Enter the Driver Tips'),
(1828, 'api', 'Find Food'),
(1829, 'api', 'ADD'),
(1830, 'api', 'Payment'),
(1831, 'api', 'Items'),
(1832, 'api', 'Note'),
(1833, 'api', 'DeliveryfeewillbeaddedbasedonthedeliveryaddressStr'),
(1834, 'api', 'CHOSSE PAYMENT METHOD'),
(1835, 'api', 'Online'),
(1836, 'api', 'description'),
(1837, 'api', 'area'),
(1838, 'api', 'city'),
(1839, 'api', 'From'),
(1840, 'api', 'People'),
(1841, 'api', 'TakeaTour'),
(1842, 'api', 'Skip'),
(1843, 'api', 'Next'),
(1844, 'api', 'Go'),
(1845, 'api', 'Retrievingdata'),
(1846, 'api', 'Pleasewait'),
(1847, 'api', 'FIRSTNAME'),
(1848, 'api', 'LAST NAME'),
(1849, 'api', 'MOBILE NO'),
(1850, 'api', 'EMAIL ID'),
(1851, 'api', 'Later'),
(1852, 'api', 'SUB TOTAL'),
(1853, 'api', 'DELIVERY FEE'),
(1854, 'api', 'VAT'),
(1855, 'api', 'Terms'),
(1856, 'api', 'Privacy'),
(1857, 'api', 'SORTBY'),
(1858, 'api', 'CUISINES'),
(1859, 'api', 'norestaurants'),
(1860, 'api', 'Cancel'),
(1861, 'api', 'minimumingredients'),
(1862, 'api', 'Cart'),
(1863, 'api', 'Done'),
(1864, 'api', 'dataNotFound'),
(1865, 'api', 'ContactMsg'),
(1866, 'api', 'YourMessage'),
(1867, 'api', 'OrderTerms'),
(1868, 'api', 'TermsCondition'),
(1869, 'api', 'Policy'),
(1870, 'api', 'Applyvouchercode'),
(1871, 'api', 'AlterMobile'),
(1872, 'api', 'EnterMobileNumber'),
(1873, 'api', 'Failmsg'),
(1874, 'api', 'Order failed'),
(1875, 'api', 'Order Number'),
(1876, 'api', 'Original amount of order'),
(1877, 'api', 'mins'),
(1878, 'api', 'busy'),
(1879, 'api', 'busyMsg'),
(1880, 'api', 'closeMsg'),
(1881, 'api', 'sorry'),
(1882, 'api', 'Camera'),
(1883, 'api', 'Gallery'),
(1884, 'api', 'Choose'),
(1885, 'api', 'Cancel'),
(1886, 'api', 'MyCart'),
(1887, 'api', 'OrderPlaced'),
(1888, 'api', 'rg'),
(1889, 'api', 'INVALID_COUPON_CODE'),
(1890, 'api', 'OUT_OF_DELIVERY_AREA'),
(1891, 'api', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `tax_id` bigint(20) NOT NULL,
  `tax_key` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 - Archieved',
  `value` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` varchar(45) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`tax_id`, `tax_key`, `status`, `value`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`, `country_id`) VALUES
(1, '3110tximewnprz2k', 1, 14.4, '2018-10-22 09:54:43', 1, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tax_lang`
--

CREATE TABLE `tax_lang` (
  `tax_lang_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `tax_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_lang`
--

INSERT INTO `tax_lang` (`tax_lang_id`, `tax_id`, `language_code`, `tax_name`) VALUES
(1, 1, 'en', 'GST');

-- --------------------------------------------------------

--
-- Table structure for table `time_zone`
--

CREATE TABLE `time_zone` (
  `time_zone_id` int(10) NOT NULL,
  `country_code` char(2) COLLATE utf8_bin NOT NULL,
  `time_zone_name` varchar(35) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `time_zone`
--

INSERT INTO `time_zone` (`time_zone_id`, `country_code`, `time_zone_name`) VALUES
(1, 'AD', 'Europe/Andorra'),
(2, 'AE', 'Asia/Dubai'),
(3, 'AF', 'Asia/Kabul'),
(4, 'AG', 'America/Antigua'),
(5, 'AI', 'America/Anguilla'),
(6, 'AL', 'Europe/Tirane'),
(7, 'AM', 'Asia/Yerevan'),
(8, 'AO', 'Africa/Luanda'),
(9, 'AQ', 'Antarctica/McMurdo'),
(10, 'AQ', 'Antarctica/Casey'),
(11, 'AQ', 'Antarctica/Davis'),
(12, 'AQ', 'Antarctica/DumontDUrville'),
(13, 'AQ', 'Antarctica/Mawson'),
(14, 'AQ', 'Antarctica/Palmer'),
(15, 'AQ', 'Antarctica/Rothera'),
(16, 'AQ', 'Antarctica/Syowa'),
(17, 'AQ', 'Antarctica/Troll'),
(18, 'AQ', 'Antarctica/Vostok'),
(19, 'AR', 'America/Argentina/Buenos_Aires'),
(20, 'AR', 'America/Argentina/Cordoba'),
(21, 'AR', 'America/Argentina/Salta'),
(22, 'AR', 'America/Argentina/Jujuy'),
(23, 'AR', 'America/Argentina/Tucuman'),
(24, 'AR', 'America/Argentina/Catamarca'),
(25, 'AR', 'America/Argentina/La_Rioja'),
(26, 'AR', 'America/Argentina/San_Juan'),
(27, 'AR', 'America/Argentina/Mendoza'),
(28, 'AR', 'America/Argentina/San_Luis'),
(29, 'AR', 'America/Argentina/Rio_Gallegos'),
(30, 'AR', 'America/Argentina/Ushuaia'),
(31, 'AS', 'Pacific/Pago_Pago'),
(32, 'AT', 'Europe/Vienna'),
(33, 'AU', 'Australia/Lord_Howe'),
(34, 'AU', 'Antarctica/Macquarie'),
(35, 'AU', 'Australia/Hobart'),
(36, 'AU', 'Australia/Currie'),
(37, 'AU', 'Australia/Melbourne'),
(38, 'AU', 'Australia/Sydney'),
(39, 'AU', 'Australia/Broken_Hill'),
(40, 'AU', 'Australia/Brisbane'),
(41, 'AU', 'Australia/Lindeman'),
(42, 'AU', 'Australia/Adelaide'),
(43, 'AU', 'Australia/Darwin'),
(44, 'AU', 'Australia/Perth'),
(45, 'AU', 'Australia/Eucla'),
(46, 'AW', 'America/Aruba'),
(47, 'AX', 'Europe/Mariehamn'),
(48, 'AZ', 'Asia/Baku'),
(49, 'BA', 'Europe/Sarajevo'),
(50, 'BB', 'America/Barbados'),
(51, 'BD', 'Asia/Dhaka'),
(52, 'BE', 'Europe/Brussels'),
(53, 'BF', 'Africa/Ouagadougou'),
(54, 'BG', 'Europe/Sofia'),
(55, 'BH', 'Asia/Bahrain'),
(56, 'BI', 'Africa/Bujumbura'),
(57, 'BJ', 'Africa/Porto-Novo'),
(58, 'BL', 'America/St_Barthelemy'),
(59, 'BM', 'Atlantic/Bermuda'),
(60, 'BN', 'Asia/Brunei'),
(61, 'BO', 'America/La_Paz'),
(62, 'BQ', 'America/Kralendijk'),
(63, 'BR', 'America/Noronha'),
(64, 'BR', 'America/Belem'),
(65, 'BR', 'America/Fortaleza'),
(66, 'BR', 'America/Recife'),
(67, 'BR', 'America/Araguaina'),
(68, 'BR', 'America/Maceio'),
(69, 'BR', 'America/Bahia'),
(70, 'BR', 'America/Sao_Paulo'),
(71, 'BR', 'America/Campo_Grande'),
(72, 'BR', 'America/Cuiaba'),
(73, 'BR', 'America/Santarem'),
(74, 'BR', 'America/Porto_Velho'),
(75, 'BR', 'America/Boa_Vista'),
(76, 'BR', 'America/Manaus'),
(77, 'BR', 'America/Eirunepe'),
(78, 'BR', 'America/Rio_Branco'),
(79, 'BS', 'America/Nassau'),
(80, 'BT', 'Asia/Thimphu'),
(81, 'BW', 'Africa/Gaborone'),
(82, 'BY', 'Europe/Minsk'),
(83, 'BZ', 'America/Belize'),
(84, 'CA', 'America/St_Johns'),
(85, 'CA', 'America/Halifax'),
(86, 'CA', 'America/Glace_Bay'),
(87, 'CA', 'America/Moncton'),
(88, 'CA', 'America/Goose_Bay'),
(89, 'CA', 'America/Blanc-Sablon'),
(90, 'CA', 'America/Toronto'),
(91, 'CA', 'America/Nipigon'),
(92, 'CA', 'America/Thunder_Bay'),
(93, 'CA', 'America/Iqaluit'),
(94, 'CA', 'America/Pangnirtung'),
(95, 'CA', 'America/Atikokan'),
(96, 'CA', 'America/Winnipeg'),
(97, 'CA', 'America/Rainy_River'),
(98, 'CA', 'America/Resolute'),
(99, 'CA', 'America/Rankin_Inlet'),
(100, 'CA', 'America/Regina'),
(101, 'CA', 'America/Swift_Current'),
(102, 'CA', 'America/Edmonton'),
(103, 'CA', 'America/Cambridge_Bay'),
(104, 'CA', 'America/Yellowknife'),
(105, 'CA', 'America/Inuvik'),
(106, 'CA', 'America/Creston'),
(107, 'CA', 'America/Dawson_Creek'),
(108, 'CA', 'America/Fort_Nelson'),
(109, 'CA', 'America/Vancouver'),
(110, 'CA', 'America/Whitehorse'),
(111, 'CA', 'America/Dawson'),
(112, 'CC', 'Indian/Cocos'),
(113, 'CD', 'Africa/Kinshasa'),
(114, 'CD', 'Africa/Lubumbashi'),
(115, 'CF', 'Africa/Bangui'),
(116, 'CG', 'Africa/Brazzaville'),
(117, 'CH', 'Europe/Zurich'),
(118, 'CI', 'Africa/Abidjan'),
(119, 'CK', 'Pacific/Rarotonga'),
(120, 'CL', 'America/Santiago'),
(121, 'CL', 'America/Punta_Arenas'),
(122, 'CL', 'Pacific/Easter'),
(123, 'CM', 'Africa/Douala'),
(124, 'CN', 'Asia/Shanghai'),
(125, 'CN', 'Asia/Urumqi'),
(126, 'CO', 'America/Bogota'),
(127, 'CR', 'America/Costa_Rica'),
(128, 'CU', 'America/Havana'),
(129, 'CV', 'Atlantic/Cape_Verde'),
(130, 'CW', 'America/Curacao'),
(131, 'CX', 'Indian/Christmas'),
(132, 'CY', 'Asia/Nicosia'),
(133, 'CY', 'Asia/Famagusta'),
(134, 'CZ', 'Europe/Prague'),
(135, 'DE', 'Europe/Berlin'),
(136, 'DE', 'Europe/Busingen'),
(137, 'DJ', 'Africa/Djibouti'),
(138, 'DK', 'Europe/Copenhagen'),
(139, 'DM', 'America/Dominica'),
(140, 'DO', 'America/Santo_Domingo'),
(141, 'DZ', 'Africa/Algiers'),
(142, 'EC', 'America/Guayaquil'),
(143, 'EC', 'Pacific/Galapagos'),
(144, 'EE', 'Europe/Tallinn'),
(145, 'EG', 'Africa/Cairo'),
(146, 'EH', 'Africa/El_Aaiun'),
(147, 'ER', 'Africa/Asmara'),
(148, 'ES', 'Europe/Madrid'),
(149, 'ES', 'Africa/Ceuta'),
(150, 'ES', 'Atlantic/Canary'),
(151, 'ET', 'Africa/Addis_Ababa'),
(152, 'FI', 'Europe/Helsinki'),
(153, 'FJ', 'Pacific/Fiji'),
(154, 'FK', 'Atlantic/Stanley'),
(155, 'FM', 'Pacific/Chuuk'),
(156, 'FM', 'Pacific/Pohnpei'),
(157, 'FM', 'Pacific/Kosrae'),
(158, 'FO', 'Atlantic/Faroe'),
(159, 'FR', 'Europe/Paris'),
(160, 'GA', 'Africa/Libreville'),
(161, 'GB', 'Europe/London'),
(162, 'GD', 'America/Grenada'),
(163, 'GE', 'Asia/Tbilisi'),
(164, 'GF', 'America/Cayenne'),
(165, 'GG', 'Europe/Guernsey'),
(166, 'GH', 'Africa/Accra'),
(167, 'GI', 'Europe/Gibraltar'),
(168, 'GL', 'America/Godthab'),
(169, 'GL', 'America/Danmarkshavn'),
(170, 'GL', 'America/Scoresbysund'),
(171, 'GL', 'America/Thule'),
(172, 'GM', 'Africa/Banjul'),
(173, 'GN', 'Africa/Conakry'),
(174, 'GP', 'America/Guadeloupe'),
(175, 'GQ', 'Africa/Malabo'),
(176, 'GR', 'Europe/Athens'),
(177, 'GS', 'Atlantic/South_Georgia'),
(178, 'GT', 'America/Guatemala'),
(179, 'GU', 'Pacific/Guam'),
(180, 'GW', 'Africa/Bissau'),
(181, 'GY', 'America/Guyana'),
(182, 'HK', 'Asia/Hong_Kong'),
(183, 'HN', 'America/Tegucigalpa'),
(184, 'HR', 'Europe/Zagreb'),
(185, 'HT', 'America/Port-au-Prince'),
(186, 'HU', 'Europe/Budapest'),
(187, 'ID', 'Asia/Jakarta'),
(188, 'ID', 'Asia/Pontianak'),
(189, 'ID', 'Asia/Makassar'),
(190, 'ID', 'Asia/Jayapura'),
(191, 'IE', 'Europe/Dublin'),
(192, 'IL', 'Asia/Jerusalem'),
(193, 'IM', 'Europe/Isle_of_Man'),
(194, 'IN', 'Asia/Kolkata'),
(195, 'IO', 'Indian/Chagos'),
(196, 'IQ', 'Asia/Baghdad'),
(197, 'IR', 'Asia/Tehran'),
(198, 'IS', 'Atlantic/Reykjavik'),
(199, 'IT', 'Europe/Rome'),
(200, 'JE', 'Europe/Jersey'),
(201, 'JM', 'America/Jamaica'),
(202, 'JO', 'Asia/Amman'),
(203, 'JP', 'Asia/Tokyo'),
(204, 'KE', 'Africa/Nairobi'),
(205, 'KG', 'Asia/Bishkek'),
(206, 'KH', 'Asia/Phnom_Penh'),
(207, 'KI', 'Pacific/Tarawa'),
(208, 'KI', 'Pacific/Enderbury'),
(209, 'KI', 'Pacific/Kiritimati'),
(210, 'KM', 'Indian/Comoro'),
(211, 'KN', 'America/St_Kitts'),
(212, 'KP', 'Asia/Pyongyang'),
(213, 'KR', 'Asia/Seoul'),
(214, 'KW', 'Asia/Kuwait'),
(215, 'KY', 'America/Cayman'),
(216, 'KZ', 'Asia/Almaty'),
(217, 'KZ', 'Asia/Qyzylorda'),
(218, 'KZ', 'Asia/Aqtobe'),
(219, 'KZ', 'Asia/Aqtau'),
(220, 'KZ', 'Asia/Atyrau'),
(221, 'KZ', 'Asia/Oral'),
(222, 'LA', 'Asia/Vientiane'),
(223, 'LB', 'Asia/Beirut'),
(224, 'LC', 'America/St_Lucia'),
(225, 'LI', 'Europe/Vaduz'),
(226, 'LK', 'Asia/Colombo'),
(227, 'LR', 'Africa/Monrovia'),
(228, 'LS', 'Africa/Maseru'),
(229, 'LT', 'Europe/Vilnius'),
(230, 'LU', 'Europe/Luxembourg'),
(231, 'LV', 'Europe/Riga'),
(232, 'LY', 'Africa/Tripoli'),
(233, 'MA', 'Africa/Casablanca'),
(234, 'MC', 'Europe/Monaco'),
(235, 'MD', 'Europe/Chisinau'),
(236, 'ME', 'Europe/Podgorica'),
(237, 'MF', 'America/Marigot'),
(238, 'MG', 'Indian/Antananarivo'),
(239, 'MH', 'Pacific/Majuro'),
(240, 'MH', 'Pacific/Kwajalein'),
(241, 'MK', 'Europe/Skopje'),
(242, 'ML', 'Africa/Bamako'),
(243, 'MM', 'Asia/Yangon'),
(244, 'MN', 'Asia/Ulaanbaatar'),
(245, 'MN', 'Asia/Hovd'),
(246, 'MN', 'Asia/Choibalsan'),
(247, 'MO', 'Asia/Macau'),
(248, 'MP', 'Pacific/Saipan'),
(249, 'MQ', 'America/Martinique'),
(250, 'MR', 'Africa/Nouakchott'),
(251, 'MS', 'America/Montserrat'),
(252, 'MT', 'Europe/Malta'),
(253, 'MU', 'Indian/Mauritius'),
(254, 'MV', 'Indian/Maldives'),
(255, 'MW', 'Africa/Blantyre'),
(256, 'MX', 'America/Mexico_City'),
(257, 'MX', 'America/Cancun'),
(258, 'MX', 'America/Merida'),
(259, 'MX', 'America/Monterrey'),
(260, 'MX', 'America/Matamoros'),
(261, 'MX', 'America/Mazatlan'),
(262, 'MX', 'America/Chihuahua'),
(263, 'MX', 'America/Ojinaga'),
(264, 'MX', 'America/Hermosillo'),
(265, 'MX', 'America/Tijuana'),
(266, 'MX', 'America/Bahia_Banderas'),
(267, 'MY', 'Asia/Kuala_Lumpur'),
(268, 'MY', 'Asia/Kuching'),
(269, 'MZ', 'Africa/Maputo'),
(270, 'NA', 'Africa/Windhoek'),
(271, 'NC', 'Pacific/Noumea'),
(272, 'NE', 'Africa/Niamey'),
(273, 'NF', 'Pacific/Norfolk'),
(274, 'NG', 'Africa/Lagos'),
(275, 'NI', 'America/Managua'),
(276, 'NL', 'Europe/Amsterdam'),
(277, 'NO', 'Europe/Oslo'),
(278, 'NP', 'Asia/Kathmandu'),
(279, 'NR', 'Pacific/Nauru'),
(280, 'NU', 'Pacific/Niue'),
(281, 'NZ', 'Pacific/Auckland'),
(282, 'NZ', 'Pacific/Chatham'),
(283, 'OM', 'Asia/Muscat'),
(284, 'PA', 'America/Panama'),
(285, 'PE', 'America/Lima'),
(286, 'PF', 'Pacific/Tahiti'),
(287, 'PF', 'Pacific/Marquesas'),
(288, 'PF', 'Pacific/Gambier'),
(289, 'PG', 'Pacific/Port_Moresby'),
(290, 'PG', 'Pacific/Bougainville'),
(291, 'PH', 'Asia/Manila'),
(292, 'PK', 'Asia/Karachi'),
(293, 'PL', 'Europe/Warsaw'),
(294, 'PM', 'America/Miquelon'),
(295, 'PN', 'Pacific/Pitcairn'),
(296, 'PR', 'America/Puerto_Rico'),
(297, 'PS', 'Asia/Gaza'),
(298, 'PS', 'Asia/Hebron'),
(299, 'PT', 'Europe/Lisbon'),
(300, 'PT', 'Atlantic/Madeira'),
(301, 'PT', 'Atlantic/Azores'),
(302, 'PW', 'Pacific/Palau'),
(303, 'PY', 'America/Asuncion'),
(304, 'QA', 'Asia/Qatar'),
(305, 'RE', 'Indian/Reunion'),
(306, 'RO', 'Europe/Bucharest'),
(307, 'RS', 'Europe/Belgrade'),
(308, 'RU', 'Europe/Kaliningrad'),
(309, 'RU', 'Europe/Moscow'),
(310, 'RU', 'Europe/Simferopol'),
(311, 'RU', 'Europe/Volgograd'),
(312, 'RU', 'Europe/Kirov'),
(313, 'RU', 'Europe/Astrakhan'),
(314, 'RU', 'Europe/Saratov'),
(315, 'RU', 'Europe/Ulyanovsk'),
(316, 'RU', 'Europe/Samara'),
(317, 'RU', 'Asia/Yekaterinburg'),
(318, 'RU', 'Asia/Omsk'),
(319, 'RU', 'Asia/Novosibirsk'),
(320, 'RU', 'Asia/Barnaul'),
(321, 'RU', 'Asia/Tomsk'),
(322, 'RU', 'Asia/Novokuznetsk'),
(323, 'RU', 'Asia/Krasnoyarsk'),
(324, 'RU', 'Asia/Irkutsk'),
(325, 'RU', 'Asia/Chita'),
(326, 'RU', 'Asia/Yakutsk'),
(327, 'RU', 'Asia/Khandyga'),
(328, 'RU', 'Asia/Vladivostok'),
(329, 'RU', 'Asia/Ust-Nera'),
(330, 'RU', 'Asia/Magadan'),
(331, 'RU', 'Asia/Sakhalin'),
(332, 'RU', 'Asia/Srednekolymsk'),
(333, 'RU', 'Asia/Kamchatka'),
(334, 'RU', 'Asia/Anadyr'),
(335, 'RW', 'Africa/Kigali'),
(336, 'SA', 'Asia/Riyadh'),
(337, 'SB', 'Pacific/Guadalcanal'),
(338, 'SC', 'Indian/Mahe'),
(339, 'SD', 'Africa/Khartoum'),
(340, 'SE', 'Europe/Stockholm'),
(341, 'SG', 'Asia/Singapore'),
(342, 'SH', 'Atlantic/St_Helena'),
(343, 'SI', 'Europe/Ljubljana'),
(344, 'SJ', 'Arctic/Longyearbyen'),
(345, 'SK', 'Europe/Bratislava'),
(346, 'SL', 'Africa/Freetown'),
(347, 'SM', 'Europe/San_Marino'),
(348, 'SN', 'Africa/Dakar'),
(349, 'SO', 'Africa/Mogadishu'),
(350, 'SR', 'America/Paramaribo'),
(351, 'SS', 'Africa/Juba'),
(352, 'ST', 'Africa/Sao_Tome'),
(353, 'SV', 'America/El_Salvador'),
(354, 'SX', 'America/Lower_Princes'),
(355, 'SY', 'Asia/Damascus'),
(356, 'SZ', 'Africa/Mbabane'),
(357, 'TC', 'America/Grand_Turk'),
(358, 'TD', 'Africa/Ndjamena'),
(359, 'TF', 'Indian/Kerguelen'),
(360, 'TG', 'Africa/Lome'),
(361, 'TH', 'Asia/Bangkok'),
(362, 'TJ', 'Asia/Dushanbe'),
(363, 'TK', 'Pacific/Fakaofo'),
(364, 'TL', 'Asia/Dili'),
(365, 'TM', 'Asia/Ashgabat'),
(366, 'TN', 'Africa/Tunis'),
(367, 'TO', 'Pacific/Tongatapu'),
(368, 'TR', 'Europe/Istanbul'),
(369, 'TT', 'America/Port_of_Spain'),
(370, 'TV', 'Pacific/Funafuti'),
(371, 'TW', 'Asia/Taipei'),
(372, 'TZ', 'Africa/Dar_es_Salaam'),
(373, 'UA', 'Europe/Kiev'),
(374, 'UA', 'Europe/Uzhgorod'),
(375, 'UA', 'Europe/Zaporozhye'),
(376, 'UG', 'Africa/Kampala'),
(377, 'UM', 'Pacific/Midway'),
(378, 'UM', 'Pacific/Wake'),
(379, 'US', 'America/New_York'),
(380, 'US', 'America/Detroit'),
(381, 'US', 'America/Kentucky/Louisville'),
(382, 'US', 'America/Kentucky/Monticello'),
(383, 'US', 'America/Indiana/Indianapolis'),
(384, 'US', 'America/Indiana/Vincennes'),
(385, 'US', 'America/Indiana/Winamac'),
(386, 'US', 'America/Indiana/Marengo'),
(387, 'US', 'America/Indiana/Petersburg'),
(388, 'US', 'America/Indiana/Vevay'),
(389, 'US', 'America/Chicago'),
(390, 'US', 'America/Indiana/Tell_City'),
(391, 'US', 'America/Indiana/Knox'),
(392, 'US', 'America/Menominee'),
(393, 'US', 'America/North_Dakota/Center'),
(394, 'US', 'America/North_Dakota/New_Salem'),
(395, 'US', 'America/North_Dakota/Beulah'),
(396, 'US', 'America/Denver'),
(397, 'US', 'America/Boise'),
(398, 'US', 'America/Phoenix'),
(399, 'US', 'America/Los_Angeles'),
(400, 'US', 'America/Anchorage'),
(401, 'US', 'America/Juneau'),
(402, 'US', 'America/Sitka'),
(403, 'US', 'America/Metlakatla'),
(404, 'US', 'America/Yakutat'),
(405, 'US', 'America/Nome'),
(406, 'US', 'America/Adak'),
(407, 'US', 'Pacific/Honolulu'),
(408, 'UY', 'America/Montevideo'),
(409, 'UZ', 'Asia/Samarkand'),
(410, 'UZ', 'Asia/Tashkent'),
(411, 'VA', 'Europe/Vatican'),
(412, 'VC', 'America/St_Vincent'),
(413, 'VE', 'America/Caracas'),
(414, 'VG', 'America/Tortola'),
(415, 'VI', 'America/St_Thomas'),
(416, 'VN', 'Asia/Ho_Chi_Minh'),
(417, 'VU', 'Pacific/Efate'),
(418, 'WF', 'Pacific/Wallis'),
(419, 'WS', 'Pacific/Apia'),
(420, 'YE', 'Asia/Aden'),
(421, 'YT', 'Indian/Mayotte'),
(422, 'ZA', 'Africa/Johannesburg'),
(423, 'ZM', 'Africa/Lusaka'),
(424, 'ZW', 'Africa/Harare');

-- --------------------------------------------------------

--
-- Table structure for table `today_special`
--

CREATE TABLE `today_special` (
  `today_special_id` bigint(20) NOT NULL,
  `today_special_key` varchar(16) DEFAULT NULL,
  `city_id` bigint(16) NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `url` text,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `today_special_status` tinyint(1) DEFAULT NULL COMMENT '0 - Inactive, 1 - Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `today_special_lang`
--

CREATE TABLE `today_special_lang` (
  `today_special_lang_id` bigint(20) NOT NULL,
  `today_special_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `today_special_name` varchar(64) DEFAULT NULL,
  `today_special_image_path` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `topup`
--

CREATE TABLE `topup` (
  `topup_id` bigint(20) NOT NULL,
  `topup_key` varchar(16) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `free_point` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `topup_history`
--

CREATE TABLE `topup_history` (
  `topup_history_id` bigint(20) NOT NULL,
  `topup_history_key` varchar(16) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `topup_id` bigint(20) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `free_point` double DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL COMMENT '1 - Pending, 2 - Success, 3 - Failure',
  `payment_response` text,
  `transaction_id` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `unit_id` bigint(20) NOT NULL,
  `unit_key` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `sort_no` smallint(6) DEFAULT NULL,
  `unit_status` tinyint(1) DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `unit_key`, `sort_no`, `unit_status`, `created_user_id`, `created_at`, `modified_user_id`, `updated_at`) VALUES
(1, 'oscvtlvlgg8qzonc', 10, 1, 1, '2020-06-06 10:26:15', NULL, '2020-06-06 10:26:15'),
(2, 'tffpdytsf6uoxarr', 19, 1, 1, '2020-06-06 10:29:22', NULL, '2020-06-06 10:29:22'),
(3, 'hmfb4po6xdey2kts', 12, 3, 1, '2020-06-06 10:30:19', NULL, '2020-06-06 10:31:30'),
(4, 'vc8mimvmiq1bjlbb', 4, 1, 1, '2020-06-06 10:31:43', NULL, '2020-06-06 10:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `unit_lang`
--

CREATE TABLE `unit_lang` (
  `unit_lang_id` bigint(20) NOT NULL,
  `unit_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `unit_name` varchar(256) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_lang`
--

INSERT INTO `unit_lang` (`unit_lang_id`, `unit_id`, `language_code`, `unit_name`) VALUES
(1, 3, 'en', 'jhh'),
(2, 4, 'en', 'hgh');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `user_key` varchar(16) DEFAULT NULL,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `mobile_number` varchar(18) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password_hash` varchar(256) DEFAULT NULL,
  `password_reset_token` varchar(256) DEFAULT NULL,
  `auth_key` text,
  `profile_image` varchar(256) DEFAULT NULL,
  `tobaogo_point` bigint(20) DEFAULT NULL,
  `tobaogo_credit` bigint(20) DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `referral_code` varchar(8) DEFAULT NULL,
  `last_read_notification_id` bigint(20) DEFAULT '0',
  `promotion_notification_status` tinyint(1) DEFAULT NULL COMMENT '0 - Off, 1 - On',
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_user_id` bigint(20) DEFAULT NULL,
  `referred_user_id` bigint(20) DEFAULT NULL,
  `device_token` varchar(245) DEFAULT NULL,
  `google_token` varchar(254) DEFAULT NULL,
  `fb_token` varchar(254) DEFAULT NULL,
  `device_type` varchar(45) DEFAULT NULL COMMENT '1 - Android, 2 - IOS',
  `overall_tabaogo_point` double DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL COMMENT '1-Male,2-Female',
  `DOB` varchar(15) DEFAULT NULL,
  `default_address` int(11) DEFAULT NULL,
  `web_token` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `otp` int(4) DEFAULT NULL,
  `wallet_number` varchar(16) DEFAULT NULL,
  `wallet_point` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_key`, `first_name`, `last_name`, `email`, `mobile_number`, `username`, `password_hash`, `password_reset_token`, `auth_key`, `profile_image`, `tobaogo_point`, `tobaogo_credit`, `status`, `last_login`, `referral_code`, `last_read_notification_id`, `promotion_notification_status`, `created_user_id`, `created_at`, `updated_at`, `updated_user_id`, `referred_user_id`, `device_token`, `google_token`, `fb_token`, `device_type`, `overall_tabaogo_point`, `gender`, `DOB`, `default_address`, `web_token`, `area`, `city`, `otp`, `wallet_number`, `wallet_point`) VALUES
(1, 'serrn0ugoxmzyxhh', 'Ramesh', 'M', 'ramesh.m@.com', '+919791976451', NULL, '$2y$13$4aYHCJ.WWpk5QGeYEEudgODu3FClPx4aPD81neKA05MDjR27ykWtG', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsImp0aSI6IjYxQjhBMzNBMjVEQkFLVkoifQ.eyJpc3MiOiJsb2NhbGhvc3Q6MTAzMCIsImF1ZCI6ImxvY2FsaG9zdDoxMDMwIiwianRpIjoiNjFCOEEzM0EyNURCQUtWSiIsImlhdCI6MTU5MDM5NTg2MCwibmJmIjoxNTkwMzk1ODYwLCJleHAiOjE2MjE5MzE4NjAsInRva2VuIjoic2Vycm4wdWdveG16eXhoaCJ9.NuC0yZObKuEuG5MKMaNfrHHZcWstcdDCTAb7lvkAogQ', '/uploads/user/profile/1589958320rgLsY.png', NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, '2020-05-02 14:26:22', '2020-05-25 14:13:54', 1, NULL, 's', '106800320970588763558', NULL, '1', NULL, 1, '05/03/2020', NULL, NULL, 'dfg', 'dfg', 3332, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `user_address_id` bigint(20) NOT NULL,
  `user_address_key` varchar(16) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `address_status` tinyint(1) DEFAULT '1' COMMENT '1 - Active,  2 - Deleted',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `address_type` varchar(45) DEFAULT NULL COMMENT '1 - Self, 2 - Others'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`user_address_id`, `user_address_key`, `user_id`, `latitude`, `longitude`, `address_status`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`, `address_type`) VALUES
(1, 'pdi1tbse8p8y7q8h', 1, 12.9715987, 77.5945627, 1, '2020-05-06 12:01:30', 1, NULL, NULL, '2'),
(2, 'y5bm5fmak0bc1pwo', 1, 11.2388431, 76.9974433, 1, '2020-05-06 12:02:02', 1, NULL, NULL, '2');

-- --------------------------------------------------------

--
-- Table structure for table `user_address_lang`
--

CREATE TABLE `user_address_lang` (
  `user_address_lang_id` bigint(20) NOT NULL,
  `user_address_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) NOT NULL DEFAULT 'en',
  `flat_no` varchar(100) DEFAULT NULL,
  `apartment` varchar(100) DEFAULT NULL,
  `street_name` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `company` varchar(250) DEFAULT NULL,
  `landmark` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_address_lang`
--

INSERT INTO `user_address_lang` (`user_address_lang_id`, `user_address_id`, `language_code`, `flat_no`, `apartment`, `street_name`, `city`, `area`, `company`, `landmark`) VALUES
(1, 1, 'en', '15/11, HSR Layout, KG Halli, D\' Souza Layout, Nagar, Bengaluru, Karnataka 560001, India', '', NULL, NULL, NULL, '', ''),
(2, 2, 'en', 'Senniveerampalayam Bus Stop, SH 168, Chikkarampalayam, Tamil Nadu 641104, India', '', NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `user_favourite_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 - Active, 2 - Deleted',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_friend_list`
--

CREATE TABLE `user_friend_list` (
  `user_friend_list_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `friend_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `user_level_id` bigint(20) NOT NULL,
  `user_level_key` varchar(16) DEFAULT NULL,
  `from_point` double DEFAULT NULL,
  `to_point` double DEFAULT NULL,
  `level` varchar(64) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0 - Inactive, 1 - Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_notification`
--

CREATE TABLE `user_notification` (
  `user_notification_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `notification_id` bigint(20) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL COMMENT '0 - No, 1 - Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` bigint(20) NOT NULL,
  `vendor_key` varchar(16) DEFAULT NULL,
  `first_name` varchar(254) NOT NULL,
  `last_name` varchar(254) DEFAULT NULL,
  `vendor_email` varchar(256) DEFAULT NULL,
  `vendor_contact_number` varchar(16) DEFAULT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `password_hash` varchar(256) DEFAULT NULL,
  `secret_password_hash` varchar(256) DEFAULT NULL,
  `password_reset_token` varchar(256) DEFAULT NULL,
  `commision_type` tinyint(1) DEFAULT NULL COMMENT '1- value 2- percent',
  `commission` double DEFAULT NULL,
  `commision_percent` float NOT NULL COMMENT '1 : % 2 : Value',
  `vendor_address` varchar(200) NOT NULL,
  `minimum_cart_value` float DEFAULT NULL,
  `GST` float DEFAULT NULL,
  `cgst` float DEFAULT NULL,
  `sgst` float DEFAULT NULL,
  `igst` float DEFAULT NULL,
  `service_tax` float DEFAULT NULL,
  `order_type` int(11) NOT NULL DEFAULT '3' COMMENT '1 - Delivery2 - Pickup3 - Both ',
  `vendor_type` int(11) NOT NULL DEFAULT '3' COMMENT '1 - Veg2 - Nonveg3 - Both ',
  `payment_option` int(11) NOT NULL DEFAULT '2' COMMENT '1 - COD 2 - Online 3- Both',
  `city_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `vendor_latitude` varchar(100) NOT NULL,
  `vendor_longitude` varchar(100) NOT NULL,
  `delivery_minutes` tinyint(2) NOT NULL,
  `preorder_available` int(11) NOT NULL DEFAULT '2' COMMENT '1 - Yes 2- No',
  `vendor_policy` text NOT NULL,
  `vendor_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 -Archieved',
  `vendor_shop_status` tinyint(1) DEFAULT NULL COMMENT '0 - Open, 1 - Closed, 2 - Busy',
  `is_featured` tinyint(1) NOT NULL COMMENT '1-yes,0-no',
  `stripe_account_id` varchar(254) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `rating_count` smallint(6) DEFAULT NULL,
  `device_type` tinyint(1) DEFAULT NULL,
  `device_token` varchar(256) DEFAULT NULL,
  `web_token` varchar(100) DEFAULT NULL,
  `is_login` tinyint(1) DEFAULT NULL COMMENT '0 - No, 1 - Yes',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(8) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL,
  `out_of_service` tinyint(1) DEFAULT NULL,
  `sort_no` smallint(6) DEFAULT NULL,
  `approval_status` tinyint(1) DEFAULT NULL,
  `fb_link` varchar(250) DEFAULT NULL,
  `twitter_link` varchar(250) DEFAULT NULL,
  `instagram_link` varchar(250) DEFAULT NULL,
  `personal_link` varchar(250) DEFAULT NULL,
  `license_number` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_key`, `first_name`, `last_name`, `vendor_email`, `vendor_contact_number`, `user_name`, `password_hash`, `secret_password_hash`, `password_reset_token`, `commision_type`, `commission`, `commision_percent`, `vendor_address`, `minimum_cart_value`, `GST`, `cgst`, `sgst`, `igst`, `service_tax`, `order_type`, `vendor_type`, `payment_option`, `city_id`, `area_id`, `vendor_latitude`, `vendor_longitude`, `delivery_minutes`, `preorder_available`, `vendor_policy`, `vendor_status`, `vendor_shop_status`, `is_featured`, `stripe_account_id`, `rating`, `rating_count`, `device_type`, `device_token`, `web_token`, `is_login`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`, `out_of_service`, `sort_no`, `approval_status`, `fb_link`, `twitter_link`, `instagram_link`, `personal_link`, `license_number`) VALUES
(1, 'eohdfubo9cinm8ga', 'Name', 'Lname', 'ramesh.m@.com', '959724568', 'FF_Vendor', '$2y$13$BTYSsropEC4/O6vrescb9.ANZVfjhrNkxBsobkMCVW28rUuauEmPO', 'Z48RF-', 'Zog3d4XZM3IUmYU8cXVgJnefHZKN5VSN_1589976998', 1, 23, 1, 'gfyf', 50, 10, 30, 20, 40, NULL, 3, 2, 3, 3, 3, '11.024090036616126', '76.89813575097651', 12, 2, '45345', 1, 0, 0, '1DFruZ2eZvKYlo2Cxm6Ot8Xt', 3, 1, 1, '6cd7fea4-3011-4d45-aa12-2a67c0b65ac9', NULL, 0, '2018-08-01 19:19:40', 1, NULL, NULL, NULL, NULL, NULL, '1', '2', '3', '4', NULL),
(2, 'ek5licmujqie4glq', 'Dinesh', 'kumar', 'dineshkumar2good@gmail.com', '9600362990', 'yummy', '$2y$13$tNIPj9gXXYgAFfkhbSVi7Oz6wedswPL4HrhIo9Gr55kA6ARLlayCq', '5yxEW1', NULL, 1, 30, 2, 'GN Mills,Coimbatore', 100, 0, NULL, NULL, NULL, 0, 3, 3, 2, 3, 4, '11.024090036616126', '76.89813575097651', 20, 2, 'vendor policy will update in future', 1, 1, 0, '875676767', NULL, NULL, 1, 'ffbf76b3-6992-4c62-977d-bf12d39ab3e3', NULL, 0, '2018-08-20 11:00:35', 1, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL),
(3, '1hpdwbivsemgxgeq', 'Pradeep', 'K', 'pradeep.k@.com', '12345678', 'QA', '$2y$13$RI8VSIu71qUXAHVUGJDdFOj6qr9SgxSTWthwk31bW5d4dKcMcSKNW', 'FljXB7', 'M3s7DT4WWxEEFvYf83q7nBJIr5k--fs6_1537253577', 1, 10, 2, ' Schweigaards gate 15B, 0191 Oslo, Norway', 0, 0, NULL, NULL, NULL, 10, 3, 3, 2, 2, 1, '61.80358155564027', '7.858432678962686', 10, 2, '\"Food with happiness\"', 1, 0, 1, '10', 5, 7, 1, '279ad76e-cc99-4305-9dff-a9abce7a9181', '0b1029ec-97c0-420c-a7b1-e4801f03a18f', 1, '2018-08-28 15:47:19', 1, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL),
(4, 'owqz6hr2ut3k5lhe', 'sean bean', 'sean bean', 'seanbean@gmail.com', '2112121212', 'sdfsdafas', '$2y$13$QNrWAaH6ziaNla1UNgVWieSHftuVdDhdHgb/KkV8kDozHARu0x572', 'dG66m4', NULL, 1, 21, 1, 'seanbean@gmail.com', 0, 0, NULL, NULL, NULL, 12, 1, 1, 2, 1, 2, '59.91272319314737', '10.753562615658893', 12, 1, 'fvsad', 1, 0, 0, '5365745676456', NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-10 13:40:03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'jkdsiqm6oowienph', 'Burma', 'bhai', 'ragavan.ca@.com', '12345678999', 'Burma', '$2y$13$/5Y5R6WWOOE4eNjH5QXVjeIczfPkbIt/LZ6j82qyO6hP4w81KmOEO', 'yQ0ADi', NULL, NULL, 30, 1.1, 'oslo', 0, 0, NULL, NULL, NULL, 5, 3, 3, 2, 2, 2, '60.13187324078235', '10.529814327979011', 20, 1, 'ewgwegwegewfgewgeg', 3, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-14 11:24:01', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'ggn09za9umus7xhr', 'asdas', 'asdsad', 'test@gmail.com', '123456798', 'testvendor', '$2y$13$JfONQ37q5X40AQGQzTr7dOesHFmj/It8lXQHsvHD0PIa1H4qMukA6', 'koSCyA', NULL, NULL, 10, 2, 'coimbatore', 0, 0, NULL, NULL, NULL, 5, 3, 3, 2, 1, 1, '11.034001349573627', '76.93923217968745', 20, 2, 'dswsewdrqw', 3, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-14 12:11:18', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'lm4wxxhw9yoavor8', 'SUBWAY', 'SUBWAY', 'SUBWAY@gmail.com', '12343434', 'subway', '$2y$13$uAc4Bgh6fQ9TSm4cSSYB.eNpUcC9WqdqcuTpnoGT6DSBRS2zUK1GW', '05zwJC', NULL, NULL, 11, 1, 'SUBWAY@gmail.com', 0, 0, NULL, NULL, NULL, NULL, 1, 1, 2, 1, 1, '11.229382070779275', '77.07793457226558', 23, 2, 'test', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-14 15:43:10', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'opm73uthsq9jkzwi', 'test 4345', 'test 4345', 'test4345@gmail.com', '12343434555', 'uurerr', '$2y$13$ukplRoDLBrymmacKtBFcDe2EACeBJ90BJFX0wX1iuQZhOKz3Lspve', '7-U3Rz', NULL, NULL, 12, 12, 'test 4345@gmail.com', 0, 0, NULL, NULL, NULL, NULL, 1, 1, 2, 1, 1, '11.178191540387004', '77.08342773632808', 21, 2, 'asdfsfa', 3, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-14 15:44:55', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'i0wwh26refemhm2g', 'Burma ', 'bhai', '1@gmail.com', '123456789454', 'Burma bhai', '$2y$13$5nFVpFuIWlHO4D3TRkjkJOtSDZoZLYQubR9pI8XAqf/YQNZtrTLdK', 'I5rpUi', NULL, 1, 30, 2.2, 'oslo', 100, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 3, 4, '59.91102576517891', '10.773247925290434', 60, 2, 'fhfdhfdhdh', 1, 0, 0, 'test', NULL, 2, NULL, NULL, NULL, NULL, '2018-09-14 16:11:41', 1, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL),
(11, 'qmnswr3nwm8yeit3', 'WGEW', 'GW', '1@.com', '123456784444', 'Tester', '$2y$13$55f1ixQO7R5ldJxJvQnltuI9s0.1F3qAJ/UtRn/wQzfSrmQ1ippAO', 'e3GpOQ', NULL, NULL, 10, 1.1, 'GSGEW', 0, 0, NULL, NULL, NULL, 2, 2, 2, 2, 2, 3, '59.7443257443256', '10.205168997192345', 20, 2, 'DGSDGSD', 1, 0, 1, '12345', NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-17 15:18:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '4sbdkqaas7sgzkhx', 'test', 'test', 'test@gmail.com123', '105383766', 'saro', '$2y$13$sIBCWUordcQDKWiNBLCx5uwjPzFopZpKEwVzWjCCcezZoNvp6YqJ.', 'DNMItS', NULL, NULL, 10, 10, '123456', 0, 0, NULL, NULL, NULL, NULL, 2, 1, 3, 1, 2, '60.48049307374907', '8.486409460449181', 10, 2, 'io', 3, 0, 0, '10', NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-15 12:49:28', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '9wupd0p6ydjoie2w', 'ww', 'w', 'saravanan.r@.comfv', '10101010', '4546', '$2y$13$JfQNiUOv5HQBba.Yu5aib.KtCMVyzS67O2GtEROGQ9kRT1jv02aR.', 'P-pWuK', NULL, NULL, 10, 10, 's', 0, 0, NULL, NULL, NULL, NULL, 1, 1, 3, 2, 1, '60.48012088231368', '8.466153417968712', 127, 2, '101010', 1, 0, 0, '10101', NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-28 18:44:41', 1, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'kxbewuh1grdw4gx4', 'Gautam', 'Elangovan', 'gautam.23231@gmail.com', '234234234234', 'Gautam', '$2y$13$.reO7zeghMJ7ZiykZA/TOuTMSdoQGzsjKJHgHMpGl201d8.ovVNeq', 'iCg-e0', NULL, 1, 12, 0, 'asjdfkl', 0, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 2, 1, '60.48654847283917', '8.482632910156212', 2, 2, '', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-18 15:07:51', 1, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'acwz9hivrivfkkiv', 'Ragavan', 'CA', 'ragavan23@123.com', '12121222', 'test', '$2y$13$9GQOs6MBppaLtnlgjTDnT.aS9QNKk47BNTHA/HCnfqqWSL1r6YYAq', 'nWATtk', NULL, 1, 0, 21, '1234qwer', 0, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 2, '60.483842274165596', '8.479886328124962', 12, 2, '', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-18 15:10:00', 1, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'oy0oyoc4skesjcrz', 'test', 'test2', 'testingr@gmail.com', '1010101010', 'poovizhi.r@ontabee.com', '$2y$13$JntOho9eniwkzBziO0nM0uFx0wqc5gwqeqZjqh6iKTBdn0t5WfH4S', 'Phhw-h', NULL, 1, 10, 0, 'test address', 0, NULL, 5, 5, 10, NULL, 1, 1, 2, 3, 3, '13.219051685996822', '77.64472512207034', 10, 2, '10', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 16:34:51', 1, NULL, NULL, NULL, 10, NULL, '-', '-', '-', '-', NULL),
(17, 'a6fsid9eirhk9bzb', 'Maruthamalai', 'Maruthamalai', 'Maruthamalai@gmail.com', '1212121212', '123', '$2y$13$aWg3fEAufZcHuJTpAjsaTuS56622KDZlfpWB0.dT4nIAbTzYT08aK', 'XSnWA-', NULL, 1, 5, 0, '123', 200, NULL, 5, 5, 10, NULL, 1, 1, 2, 3, 4, '11.024090036616126', '76.89813575097651', 10, 2, '100', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-25 16:41:58', 1, NULL, NULL, NULL, 10, NULL, '-', '-', '-', '-', NULL),
(18, 'ii2lhj5a04gcwn0q', 'r', 'r', 'r@g.com', '1231231230', '12', '$2y$13$QQVIJpnzPpqp89yV9rTnU.VectstVSFDdXTKfPGHLd61/IP1NRFD.', 'Ex6xsG', NULL, 1, 10, 0, 'r', 100, NULL, 5, 5, 10, NULL, 1, 1, 1, 3, 3, '13.293609844363615', '77.57058955917343', 1, 2, 'test', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-29 13:29:25', 1, NULL, NULL, NULL, 1, NULL, '-', '-', '-', '-', NULL),
(19, 'ololydherwzmd79r', 't', 't', 't@g.com', '1231231239', 'admin', '$2y$13$02yB0wxEjFw3YIwPWk.WDOSScgxjxMzL5/idu5T3u3Mv1hCOdzrbO', 'n5SLZ8', NULL, 1, 10, 0, '1', 100, NULL, 10, 10, 10, NULL, 2, 1, 1, 1, 2, '13.079992165695964', '77.51012867282687', 1, 2, '10', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-29 15:59:12', 1, NULL, NULL, NULL, 1, NULL, '-', '-', '-', '-', NULL),
(20, 'rybdsfjm88w4ztgo', 't', 't', 'det@g.com', '1231231238', 'adminxssx', '$2y$13$2m4daYdOCmUTZ1yayG/nfubGc/pya0B/MDwe0fNqNdKxiq4FygB/W', 'A8oq92', NULL, 1, 10, 0, '1', 100, NULL, 10, 10, 10, NULL, 2, 1, 1, 1, 2, '13.079992165695964', '77.51012867282687', 1, 2, '10', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-29 16:00:10', 1, NULL, NULL, NULL, 1, NULL, '-', '-', '-', '-', NULL),
(21, 'hke2kij0tnrzkhft', 'jh', 'jh', 'degdgdgdt@g.com', '1231231278', 'admin123', '$2y$13$xHTZYeQw5j3o24rm6u.njuMCF0AWX467h4A1nQUWlgpvLUwmv7xHq', 'SJTDp2', NULL, 1, 10, 0, 'r', 100, NULL, 10, 1, 1, NULL, 3, 1, 3, 3, 4, '60.48049307374907', '8.486409460449181', 1, 2, 'df', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-29 16:01:42', 1, NULL, NULL, NULL, 1, NULL, '-', '-', '-', '-', NULL),
(22, '6smhwpszsrbtbwd6', 'today entry', 'today lastname', 'test@g.com', '9456945669', 'admin789', '$2y$13$qBdMw9EpFXpv6dX3sRo7X.bWQsoppSyl7/Njr6vUmXgad2wrxo82K', 'deGgdl', NULL, 1, 10, 0, 'est', 100, NULL, 10, 10, 10, NULL, 3, 1, 3, 1, 2, '13.272521929134518', '77.60352639160159', 1, 2, 'd', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-05 09:42:52', 1, NULL, NULL, NULL, 1, NULL, '-', '-', '-', '-', NULL),
(23, 'gfss3ittegwvhgyj', 'test', 'vendor', 'testvendor@gmail.com', '09945588888', 'testvendor1', '$2y$13$UrNhcWLIIF6RTd8XpreRuuF5oXTdWFHdVWLRFQ3a1kQ6fmLBr/0Gu', '_R-7qI', NULL, 1, 10, 0, 'No 11th A Cross', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 2, 1, '12.9716', '77.5946', 30, 2, '', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-26 13:26:41', 1, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL),
(24, 'k9mx8tdxvdnvpdyo', 'prudhvi', 'akella', 'prudhvi.akella@yahoo.com', '07981617058', 'prudhviakella', '$2y$13$JfIt3Uhu4qKE.6QcPqjuIOJFggsps4lmO5BTRyFeDGJo/nDkLX9t.', 'izwBPW', NULL, 1, 10, 0, 'kumari elite', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 9, 8, '12.969043726726888', '77.5423076949552', 30, 2, '', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-27 14:30:17', 1, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL),
(26, 'gf1gcw9puvd2fqtj', 'Amritha', 'R', 'amritha.r@.com', '9003793971', 'Amritha', '$2y$13$nznG9hGhqMs63hrbSRSXoO/xdItYFfHmGdTypYpFKf9WuwFBtEyQ.', 'w8yinR', NULL, 1, 10, 0, 'Coimbatore', NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 3, 3, 3, '12.974276478832246', '77.59013680419925', 10, 2, '', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-30 17:58:44', 1, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_bank`
--

CREATE TABLE `vendor_bank` (
  `vendor_bank_id` bigint(20) NOT NULL,
  `vendor_bank_key` varchar(16) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `account_number` varchar(64) DEFAULT NULL,
  `bank_name` varchar(256) DEFAULT NULL,
  `branch_name` varchar(256) DEFAULT NULL,
  `nric_number` varchar(64) DEFAULT NULL,
  `company_registration_number` varchar(64) DEFAULT NULL,
  `gst_number` varchar(64) DEFAULT NULL,
  `sales_person_name` varchar(64) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `account_holder_name` varchar(64) DEFAULT NULL,
  `remarks` text,
  `sort_no` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_bank`
--

INSERT INTO `vendor_bank` (`vendor_bank_id`, `vendor_bank_key`, `vendor_id`, `account_number`, `bank_name`, `branch_name`, `nric_number`, `company_registration_number`, `gst_number`, `sales_person_name`, `created_at`, `modified_at`, `account_holder_name`, `remarks`, `sort_no`) VALUES
(1, 'nbz2a7ehpc8cy853', 3, '12334566', 'wetetw', 'twtwet', 'wetwet', 'wetetw', 'wetwt', 'wetwt', '2018-09-12 16:05:28', NULL, 'wetwt', 'wett', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_category`
--

CREATE TABLE `vendor_category` (
  `vendor_category_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_category`
--

INSERT INTO `vendor_category` (`vendor_category_id`, `vendor_id`, `category_id`) VALUES
(66, 6, 8),
(73, 8, 13),
(105, 10, 14),
(144, 12, 14),
(147, 11, 14),
(148, 11, 15),
(149, 11, 17),
(164, 13, 15),
(172, 14, 15),
(174, 15, 15),
(179, 4, 15),
(180, 4, 16),
(211, 3, 15),
(212, 3, 17),
(218, 17, 20),
(219, 20, 17),
(325, 16, 18),
(326, 22, 16),
(339, 9, 15),
(340, 1, 15),
(341, 1, 16),
(342, 1, 22),
(343, 23, 17),
(344, 24, 18),
(346, 25, 53),
(350, 26, 53);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_cuisine`
--

CREATE TABLE `vendor_cuisine` (
  `vendor_cuisine_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `cuisine_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_cuisine`
--

INSERT INTO `vendor_cuisine` (`vendor_cuisine_id`, `vendor_id`, `cuisine_id`) VALUES
(69, 6, 2),
(76, 8, 1),
(104, 10, 1),
(105, 10, 2),
(129, 12, 2),
(132, 11, 1),
(133, 11, 2),
(140, 13, 2),
(144, 14, 1),
(146, 15, 1),
(151, 4, 1),
(164, 3, 1),
(165, 3, 2),
(169, 17, 8),
(170, 20, 5),
(211, 16, 5),
(212, 22, 2),
(217, 9, 2),
(218, 1, 1),
(219, 23, 2),
(220, 24, 1),
(223, 25, 5),
(224, 25, 8),
(228, 26, 8);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_lang`
--

CREATE TABLE `vendor_lang` (
  `vendor_lang_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `vendor_name` varchar(256) DEFAULT NULL,
  `vendor_image_path` varchar(256) DEFAULT NULL,
  `vendor_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_lang`
--

INSERT INTO `vendor_lang` (`vendor_lang_id`, `vendor_id`, `language_code`, `vendor_name`, `vendor_image_path`, `vendor_description`) VALUES
(1, 1, 'en', 'Food Factory', '/uploads/vendors/1583826576AHHAn.png', 'fgdfgdfg'),
(2, 2, 'en', 'YUMMY', '/uploads/vendors/1534743034RDIFi.jpg', 'IT\'s a very tasty restaurant'),
(3, 3, 'en', 'Decade of Delicioues', '/uploads/vendors/1546836080kPU12.jpg', ''),
(4, 1, 'no', 'rthth', '/uploads/vendors/1536744259ckaZ4.png', ''),
(5, 4, 'en', 'sean bean', '/uploads/vendors/1536567004P5Nuu.jpg', ''),
(6, 4, 'no', 'sean bean', '/uploads/vendors/1536567004GmKmj.jpg', ''),
(7, 3, 'no', 'Decade of Delicious', '/uploads/vendors/1538638131ptctd.png', ''),
(8, 2, 'no', 'yummy no', '/uploads/vendors/15369043244a1Vx.jpg', 'Det er en svært velsmakende restaurant'),
(9, 5, 'en', 'Burma bhai', NULL, 'hdfhfdhf'),
(10, 5, 'no', 'Burma bhai', NULL, 'fdhfdfdhfdh'),
(11, 6, 'en', 'test', '/uploads/vendors/15369072788fZj4.jpg', ''),
(12, 6, 'no', 'test', NULL, 'asdasdsad'),
(13, 7, 'en', 'SUBWAY', NULL, 'SUBWAY'),
(14, 7, 'no', 'SUBWAY', NULL, 'SUBWAY'),
(15, 8, 'en', 'test 4345', '/uploads/vendors/1536920095tfuPB.jpg', ''),
(16, 8, 'no', 'test 4345', '/uploads/vendors/1536920095fLyPn.jpg', ''),
(17, 9, 'en', 'Burma bhai', '/uploads/vendors/1536921701nU3hD.jpg', ''),
(18, 9, 'no', 'Burma bhai', '/uploads/vendors/1536921701oZioj.jpg', ''),
(19, 10, 'en', 'Kafe Øst', '/uploads/vendors/1537434700DqV9R.png', ''),
(20, 10, 'no', 'Kafe Øst', NULL, ''),
(21, 11, 'en', 'cheap', '/uploads/vendors/1537177725vrwSO.jpg', ''),
(22, 11, 'no', 'cheap', '/uploads/vendors/1537177725UM8Ws.jpg', ''),
(23, 1, 'ar', 'Food Factory', NULL, 'Arabic Activated'),
(24, 2, 'ar', 'yummy no', NULL, ''),
(25, 9, 'ar', 'Burma bhai', NULL, ''),
(26, 12, 'en', 'ytjtyj', NULL, 'y'),
(27, 12, 'no', 'yjtyj', NULL, 'ytjyt'),
(28, 12, 'ar', 'ytjytj', NULL, 'ytj'),
(29, 11, 'ar', 'fgj', NULL, ''),
(30, 13, 'en', 'rgr', NULL, 'g'),
(31, 13, 'no', 'rgrgr', NULL, 'grgrg'),
(32, 13, 'ar', 'rgrg', NULL, 'rgrg'),
(33, 14, 'en', 'pastry unlimited', NULL, ''),
(34, 14, 'no', 'pastry unlimited', NULL, ''),
(35, 14, 'ar', 'pastry unlimited', NULL, ''),
(36, 15, 'en', 'Vinod chicken spot', NULL, ''),
(37, 15, 'no', 'Vinod chicken spot', NULL, ''),
(38, 15, 'ar', 'Vinod chicken spot', NULL, ''),
(39, 3, 'ar', 'Decade of Delicious', NULL, ''),
(40, 4, 'ar', 'sean bean', NULL, ''),
(41, 16, 'en', 'test', NULL, 'test'),
(42, 17, 'en', 'Maruthamalai', NULL, 'Maruthamalai'),
(43, 20, 'en', 'r', NULL, 't'),
(44, 22, 'en', 'today test vendor', NULL, 'today test vendor description'),
(45, 23, 'en', 'testvendor', NULL, ''),
(46, 24, 'en', 'Cafe Morissh', NULL, ''),
(47, 25, 'en', 'Eternity', NULL, 'Eternity is a finest  restaurant'),
(48, 26, 'en', 'Eter', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_payment`
--

CREATE TABLE `vendor_payment` (
  `vendor_payment_id` int(11) NOT NULL,
  `vendor_payment_key` varchar(32) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_payment`
--

INSERT INTO `vendor_payment` (`vendor_payment_id`, `vendor_payment_key`, `vendor_id`, `paid_amount`, `created_at`, `created_user_id`, `modified_at`, `modified_user_id`) VALUES
(1, 'gfdgdfg', 1, 222.00, '2019-12-03 14:36:31', 1, NULL, NULL),
(2, 'dgdfg', 1, 222.00, '2019-12-03 14:36:37', 1, NULL, NULL),
(10, 'yzhfwx15k1o1eo6p', 1, 200.00, '2019-12-03 17:22:18', 1, NULL, NULL),
(11, 'enqrd26ezsbzqmbm', 1, 222.00, '2019-12-03 17:56:39', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_type`
--

CREATE TABLE `vendor_type` (
  `vendor_type_id` bigint(20) NOT NULL,
  `vendor_type_key` varchar(16) DEFAULT NULL,
  `vendor_type_status` tinyint(1) DEFAULT NULL COMMENT '1 - Active, 2 - Inactive, 3 - Archeived',
  `created_user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_user_id` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_type`
--

INSERT INTO `vendor_type` (`vendor_type_id`, `vendor_type_key`, `vendor_type_status`, `created_user_id`, `created_at`, `updated_user_id`, `updated_at`) VALUES
(1, 'iil7dp1txbvldar1', 1, 1, '2018-07-19 20:33:19', 1, '2018-07-19 20:33:19'),
(2, 'abe7avuhstfy8khg', 1, 1, '2018-07-19 20:33:44', 1, '2018-09-24 13:23:18'),
(3, 'xivdxm75svk58edu', 3, 1, '2020-03-31 11:46:01', 1, '2020-04-28 15:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_type_detail`
--

CREATE TABLE `vendor_type_detail` (
  `vendor_type_detail_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `vendor_type_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_type_detail`
--

INSERT INTO `vendor_type_detail` (`vendor_type_detail_id`, `vendor_id`, `vendor_type_id`) VALUES
(81, 6, 2),
(88, 8, 1),
(111, 10, 1),
(144, 12, 1),
(147, 11, 1),
(158, 13, 2),
(164, NULL, NULL),
(165, NULL, NULL),
(166, NULL, NULL),
(167, NULL, NULL),
(168, NULL, NULL),
(169, NULL, NULL),
(170, NULL, NULL),
(171, NULL, NULL),
(172, NULL, NULL),
(173, NULL, NULL),
(188, 3, NULL),
(193, 17, NULL),
(194, 20, NULL),
(248, 16, NULL),
(249, 22, NULL),
(258, 9, NULL),
(259, 1, 1),
(260, 1, 2),
(261, 23, NULL),
(262, 24, 1),
(265, 25, 1),
(266, 25, 2),
(270, 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_type_lang`
--

CREATE TABLE `vendor_type_lang` (
  `vendor_type_lang_id` bigint(20) NOT NULL,
  `vendor_type_id` bigint(20) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL,
  `vendor_type_name` varchar(256) DEFAULT NULL,
  `vendor_type_image_path` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_type_lang`
--

INSERT INTO `vendor_type_lang` (`vendor_type_lang_id`, `vendor_type_id`, `language_code`, `vendor_type_name`, `vendor_type_image_path`) VALUES
(1, 1, 'en', 'Plated Buffet Service', '/uploads/vendors/1532012599CIv8M.jpg'),
(2, 2, 'en', 'Plated  Service', '/uploads/vendors/1532012624KdFSO.jpg'),
(3, 3, 'en', 'Dine In', '/uploads/vendors/1585635378xsCjZ.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transaction`
--

CREATE TABLE `wallet_transaction` (
  `wallet_transaction_id` bigint(20) NOT NULL,
  `wallet_transaction_key` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `user_key` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `wallet_number` varchar(16) CHARACTER SET utf8 DEFAULT NULL COMMENT 'store either user key or waller number.',
  `pay_type` tinyint(1) DEFAULT NULL COMMENT 'TYPE : 1-RECHARGE, 2-TRANSACTION',
  `amount` double DEFAULT NULL,
  `transaction_status` tinyint(1) DEFAULT NULL COMMENT 'TYPE : 0-PENDING, 1-SUCCESS, 2-FAILURE',
  `first_name` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `mobile_number` bigint(16) DEFAULT NULL,
  `response_json` text CHARACTER SET utf8,
  `transaction_type` tinyint(1) NOT NULL COMMENT 'TYPE : 1-RECHARGE, 2-TRANSACTION, 3-REFUND, 4-DECLINED',
  `created_at` datetime DEFAULT NULL,
  `created_user_id` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_transaction`
--

INSERT INTO `wallet_transaction` (`wallet_transaction_id`, `wallet_transaction_key`, `user_key`, `wallet_number`, `pay_type`, `amount`, `transaction_status`, `first_name`, `last_name`, `email`, `mobile_number`, `response_json`, `transaction_type`, `created_at`, `created_user_id`, `updated_at`, `updated_user_id`) VALUES
(1, NULL, 'cu8jqa3ccfr3smlf', NULL, 2, 50, 1, 'adasd', 'asdas', 'thenmozhi.s@.com', 8888888889, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-25 18:23:32', 123, '2019-01-25 18:23:32', 123),
(2, 'yifngd7tulk47apy', NULL, NULL, 1, 50, 1, 'adasd', 'asdas', 'thenmozhi.s@.com', 8888888889, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-25 18:37:12', NULL, '2019-01-25 18:37:12', NULL),
(3, 'y7wue6bepdnpmm1g', 'cu8jqa3ccfr3smlf', NULL, 2, 50, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 2, '2019-01-25 18:39:15', 123, '2019-01-25 18:39:15', 123),
(4, 'xrgih1ihwmwrewvl', 'cu8jqa3ccfr3smlf', NULL, 2, 50, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 2, '2019-01-25 18:44:22', 123, '2019-01-25 18:44:22', 123),
(5, 'cavskgq9zmiousck', 'cu8jqa3ccfr3smlf', NULL, 2, 50, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 2, '2019-01-25 18:45:43', 123, '2019-01-25 18:45:43', 123),
(6, 'fz14flfilfnf8xzx', 'cu8jqa3ccfr3smlf', NULL, 2, 50, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 2, '2019-01-25 18:46:05', 123, '2019-01-25 18:46:05', 123),
(7, '7qmii7elrrcjgqf6', 'cu8jqa3ccfr3smlf', NULL, 2, 50, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 2, '2019-01-25 18:46:34', 123, '2019-01-25 18:46:34', 123),
(8, '0owj4gjre7zorn5g', NULL, NULL, 1, 25, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-29 13:00:31', NULL, '2019-01-29 13:00:31', NULL),
(9, 'ar2g0qobfispfzb8', NULL, NULL, 1, 25, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-29 13:01:24', NULL, '2019-01-29 13:01:24', NULL),
(10, 'd5ugohg6ejkfffkz', NULL, NULL, 1, 25, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-29 13:02:01', NULL, '2019-01-29 13:02:01', NULL),
(11, '8vcpte9trocii7ja', NULL, NULL, 1, 10, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-29 13:03:16', NULL, '2019-01-29 13:03:16', NULL),
(12, '9auscflnsd2ln11a', NULL, NULL, 1, 10, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-29 13:05:12', NULL, '2019-01-29 13:05:12', NULL),
(13, 'ibsdmtl3nxpaf7oo', NULL, NULL, 1, 10, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-29 13:05:20', NULL, '2019-01-29 13:05:20', NULL),
(14, 'evk1ock5snkosyai', NULL, NULL, 1, 10, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-29 13:05:26', NULL, '2019-01-29 13:05:26', NULL),
(15, 'd0n01gq8xqglgr3r', NULL, NULL, 1, 30, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-29 13:18:42', NULL, '2019-01-29 13:18:42', NULL),
(16, 'up8btrim10akb7nv', NULL, NULL, 1, 12, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-30 13:29:57', NULL, '2019-01-30 13:29:57', NULL),
(17, 'swndctgt8jxnelyq', NULL, NULL, 1, 20, 1, 'adasd', 'asdas', 'thenmozhi.s@.com', 8888888889, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-30 15:24:47', NULL, '2019-01-30 15:24:47', NULL),
(18, '4k6ugbbev16dyb4f', NULL, NULL, 1, 12, 1, 'thamayanthi', 'v', 'thamayanthi.v@.com', 8760408418, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-01-30 15:52:32', NULL, '2019-01-30 15:52:32', NULL),
(19, 'fvi5otbpjnb3hagu', 'tkyrzd8ve538rsqj', NULL, 1, 12, 1, 'saro', 'saro', 'saro@gmail.com', 9659161925, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-02-19 18:37:53', 133, '2019-02-19 18:37:53', 133),
(20, 'bxibqcsgf7xiflfd', 'lnrcjc7kflop2kdd', NULL, 2, 10, 1, 'saro', 'saro', 'saravanan.r@.comr', 9659161925, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 2, '2019-03-09 15:38:10', 150, '2019-03-09 15:38:10', 150),
(21, 'jwsewb2ny07pyef2', 'lnrcjc7kflop2kdd', NULL, 2, 30, 1, 'adasd', 'asdas', 'thenmozhi.s@.com', 8888888889, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 2, '2019-03-09 15:39:23', 150, '2019-03-09 15:39:23', 150),
(22, '6xie5f6blpaepfga', 'lnrcjc7kflop2kdd', NULL, 1, 10, 1, 'saro', 'saro', 'saravanan.r@.comr', 9659161925, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-03-09 15:44:41', 150, '2019-03-09 15:44:41', 150),
(23, 'jqkwjl31crdf34cc', 'lnrcjc7kflop2kdd', NULL, 1, 10, 1, 'saravanan', 'saravanan', 'saravanan.r@.com', 9659161925, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-03-09 15:45:40', 150, '2019-03-09 15:45:40', 150),
(24, 'zlbqj5hnvwvexdgo', 'lnrcjc7kflop2kdd', NULL, 1, 10, 1, 'saravanan', 'saravanan', 'saravanan.r@.com', 9659161925, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-03-09 15:47:36', 150, '2019-03-09 15:47:36', 150),
(25, 'ohwc8llictrnghmh', NULL, NULL, 1, 10, 1, 'saravanan', 'saravanan', 'saravanan.r@.com', 9659161925, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-03-09 15:48:03', NULL, '2019-03-09 15:48:03', NULL),
(26, 'hwpve8yva0ybqdsl', 'lnrcjc7kflop2kdd', NULL, 2, 10, 1, 'adasd', 'asdas', 'thenmozhi.s@.com', 8888888889, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 2, '2019-03-09 16:10:15', 150, '2019-03-09 16:10:15', 150),
(27, 'ufr7vgcrxai6heyu', NULL, NULL, 1, 1.2121251213652e69, 1, 'adasd', 'asdas', 'thenmozhi.s@.com', 8888888889, '{\"response\":\"success\",\"stauts\":1,\"response_type\":\"dummy. Replace payment gateway response once payment gateway integrated\"}', 1, '2019-04-05 15:50:59', NULL, '2019-04-05 15:50:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `address_type`
--
ALTER TABLE `address_type`
  ADD PRIMARY KEY (`address_type_id`);

--
-- Indexes for table `address_type_lang`
--
ALTER TABLE `address_type_lang`
  ADD PRIMARY KEY (`address_type_lang_id`),
  ADD KEY `fk_address_type_lang_1_idx` (`address_type_id`);

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`admin_user_id`);

--
-- Indexes for table `admin_user_branch`
--
ALTER TABLE `admin_user_branch`
  ADD PRIMARY KEY (`admin_user_branch_id`),
  ADD KEY `fk_admin_user_branch_admin_user_idx` (`admin_user_id`),
  ADD KEY `fk_admin_user_branch_branch_idx` (`branch_id`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `api_log`
--
ALTER TABLE `api_log`
  ADD PRIMARY KEY (`api_log_id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `area_lang`
--
ALTER TABLE `area_lang`
  ADD PRIMARY KEY (`area_lang_id`),
  ADD KEY `fk_area_lang_1_idx` (`area_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `banner_lang`
--
ALTER TABLE `banner_lang`
  ADD PRIMARY KEY (`banner_lang_id`),
  ADD KEY `fk_banner_lang_1_idx` (`banner_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `fk_branch_1_idx` (`vendor_id`);

--
-- Indexes for table `branch_delivery_area`
--
ALTER TABLE `branch_delivery_area`
  ADD PRIMARY KEY (`branch_delivery_area_id`),
  ADD KEY `fk_branch_dellivery_area_1_idx` (`branch_id`),
  ADD KEY `fk_branch_dellivery_area_2_idx` (`delivery_area_id`);

--
-- Indexes for table `branch_image`
--
ALTER TABLE `branch_image`
  ADD PRIMARY KEY (`branch_image_id`);

--
-- Indexes for table `branch_lang`
--
ALTER TABLE `branch_lang`
  ADD PRIMARY KEY (`branch_lang_id`),
  ADD KEY `lang_branch_id_idx` (`branch_id`);

--
-- Indexes for table `branch_review`
--
ALTER TABLE `branch_review`
  ADD PRIMARY KEY (`branch_review_id`),
  ADD KEY `fk_branch_review_1_idx` (`user_id`),
  ADD KEY `fk_branch_review_2_idx` (`vendor_id`),
  ADD KEY `fk_branch_review_3_idx` (`branch_id`);

--
-- Indexes for table `branch_timeslot`
--
ALTER TABLE `branch_timeslot`
  ADD PRIMARY KEY (`branch_timeslot_id`),
  ADD KEY `fk_branch_timeslot_1_idx` (`branch_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `brand_lang`
--
ALTER TABLE `brand_lang`
  ADD PRIMARY KEY (`brand_lang_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `category_lang`
--
ALTER TABLE `category_lang`
  ADD PRIMARY KEY (`category_lang_id`),
  ADD KEY `lang_category_id_idx` (`category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `city_lang`
--
ALTER TABLE `city_lang`
  ADD PRIMARY KEY (`city_lang_id`),
  ADD KEY `fk_city_lang_1_idx` (`city_id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`cms_id`);

--
-- Indexes for table `cms_lang`
--
ALTER TABLE `cms_lang`
  ADD PRIMARY KEY (`cms_lang_id`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`configuration_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `country_lang`
--
ALTER TABLE `country_lang`
  ADD PRIMARY KEY (`country_lang_id`),
  ADD KEY `fk_country_lang_1_idx` (`country_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `coupon_lang`
--
ALTER TABLE `coupon_lang`
  ADD PRIMARY KEY (`coupon_lang_id`),
  ADD KEY `fk_coupon_lang_1_idx` (`coupon_id`);

--
-- Indexes for table `coupon_user`
--
ALTER TABLE `coupon_user`
  ADD PRIMARY KEY (`coupon_user_id`),
  ADD KEY `fk_coupon_user_1_idx` (`user_id`),
  ADD KEY `fk_coupon_user_2_idx` (`coupon_id`);

--
-- Indexes for table `coupon_vendor`
--
ALTER TABLE `coupon_vendor`
  ADD PRIMARY KEY (`coupon_vendor_id`);

--
-- Indexes for table `credit_history`
--
ALTER TABLE `credit_history`
  ADD PRIMARY KEY (`credit_history_id`),
  ADD KEY `fk_credit_history_1_idx` (`user_id`),
  ADD KEY `fk_credit_history_2_idx` (`vendor_id`);

--
-- Indexes for table `cuisine`
--
ALTER TABLE `cuisine`
  ADD PRIMARY KEY (`cuisine_id`);

--
-- Indexes for table `cuisine_lang`
--
ALTER TABLE `cuisine_lang`
  ADD PRIMARY KEY (`cuisine_lang_id`),
  ADD KEY `cuisine_lang_id_idx` (`cuisine_id`);

--
-- Indexes for table `deliveryboy`
--
ALTER TABLE `deliveryboy`
  ADD PRIMARY KEY (`deliveryboy_id`);

--
-- Indexes for table `deliveryboy_lang`
--
ALTER TABLE `deliveryboy_lang`
  ADD PRIMARY KEY (`deliveryboy_lang_id`);

--
-- Indexes for table `deliveryboy_rating`
--
ALTER TABLE `deliveryboy_rating`
  ADD PRIMARY KEY (`deliveryboy_rating_id`);

--
-- Indexes for table `deliveryboy_request`
--
ALTER TABLE `deliveryboy_request`
  ADD PRIMARY KEY (`deliveryboy_request_id`),
  ADD KEY `fk_deliveryboy_request_1_idx` (`order_id`),
  ADD KEY `fk_deliveryboy_request_2_idx` (`delivery_boy_id`);

--
-- Indexes for table `deliveryboy_request_history`
--
ALTER TABLE `deliveryboy_request_history`
  ADD PRIMARY KEY (`deliveryboy_request_history_id`);

--
-- Indexes for table `delivery_area`
--
ALTER TABLE `delivery_area`
  ADD PRIMARY KEY (`delivery_area_id`);

--
-- Indexes for table `delivery_charge_setting`
--
ALTER TABLE `delivery_charge_setting`
  ADD PRIMARY KEY (`delivery_charge_id`);

--
-- Indexes for table `email_queue`
--
ALTER TABLE `email_queue`
  ADD PRIMARY KEY (`email_queue_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `faq_lang`
--
ALTER TABLE `faq_lang`
  ADD PRIMARY KEY (`faq_lang_id`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`ingredient_id`);

--
-- Indexes for table `ingredient_lang`
--
ALTER TABLE `ingredient_lang`
  ADD PRIMARY KEY (`ingredient_lang_id`),
  ADD KEY `fk_ingredient_lang_1_idx` (`ingredient_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_item_2_idx` (`vendor_id`),
  ADD KEY `fk_item_3_idx` (`branch_id`),
  ADD KEY `fk_item_1_idx` (`category_id`);

--
-- Indexes for table `item_image`
--
ALTER TABLE `item_image`
  ADD PRIMARY KEY (`item_image_id`),
  ADD KEY `fk_item_image_1_idx` (`item_id`);

--
-- Indexes for table `item_ingredient_group`
--
ALTER TABLE `item_ingredient_group`
  ADD PRIMARY KEY (`item_ingredient_group_id`);

--
-- Indexes for table `item_ingredient_group_lang`
--
ALTER TABLE `item_ingredient_group_lang`
  ADD PRIMARY KEY (`item_ingredient_group_lang_id`),
  ADD KEY `fk_item_ingredient_group_lang_1_idx` (`item_ingredient_group_id`);

--
-- Indexes for table `item_ingredient_mapping`
--
ALTER TABLE `item_ingredient_mapping`
  ADD PRIMARY KEY (`item_ingredient_mapping_id`);

--
-- Indexes for table `item_lang`
--
ALTER TABLE `item_lang`
  ADD PRIMARY KEY (`item_lang_id`),
  ADD KEY `fk_item_lang_1_idx` (`item_id`);

--
-- Indexes for table `item_mapping`
--
ALTER TABLE `item_mapping`
  ADD PRIMARY KEY (`item_mapping_id`),
  ADD KEY `fk_item_mapping_1_idx` (`item_id`);

--
-- Indexes for table `item_mapping_group`
--
ALTER TABLE `item_mapping_group`
  ADD PRIMARY KEY (`item_mapping_group_id`),
  ADD KEY `fk_item_mapping_group_1_idx` (`item_mapping_id`),
  ADD KEY `fk_item_mapping_group_2_idx` (`item_ingredient_group_id`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`item_type_id`);

--
-- Indexes for table `item_type_details`
--
ALTER TABLE `item_type_details`
  ADD PRIMARY KEY (`item_type_details_id`),
  ADD KEY `fk_item_type_details_1_idx` (`item_id`),
  ADD KEY `fk_item_type_details_2_idx` (`item_type_id`);

--
-- Indexes for table `item_type_lang`
--
ALTER TABLE `item_type_lang`
  ADD PRIMARY KEY (`item_type_lang_id`),
  ADD KEY `fk_item_type_lang_1_idx` (`item_type_id`);

--
-- Indexes for table `item_variant`
--
ALTER TABLE `item_variant`
  ADD PRIMARY KEY (`item_variant_id`);

--
-- Indexes for table `item_variant_lang`
--
ALTER TABLE `item_variant_lang`
  ADD PRIMARY KEY (`item_variant_lang_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `mall_product`
--
ALTER TABLE `mall_product`
  ADD PRIMARY KEY (`mall_product_id`);

--
-- Indexes for table `mall_product_lang`
--
ALTER TABLE `mall_product_lang`
  ADD PRIMARY KEY (`mall_product_lang_id`),
  ADD KEY `fk_mall_product_lang_1_idx` (`mall_product_id`);

--
-- Indexes for table `meta_tag`
--
ALTER TABLE `meta_tag`
  ADD PRIMARY KEY (`meta_tag_id`),
  ADD KEY `fk_meta_tag_cms_id_idx` (`cms_id`);

--
-- Indexes for table `mobile_translation`
--
ALTER TABLE `mobile_translation`
  ADD PRIMARY KEY (`mobile_translation_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`newsletter_subscriber_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_order_1_idx` (`vendor_id`),
  ADD KEY `fk_order_2_idx` (`branch_id`),
  ADD KEY `fk_order_3_idx` (`user_id`),
  ADD KEY `fk_order_4_idx` (`user_address_id`),
  ADD KEY `fk_order_5_idx` (`order_promotion_id`);

--
-- Indexes for table `order_coupon`
--
ALTER TABLE `order_coupon`
  ADD PRIMARY KEY (`order_coupon_id`);

--
-- Indexes for table `order_coupon_lang`
--
ALTER TABLE `order_coupon_lang`
  ADD PRIMARY KEY (`order_coupon_lang_id`),
  ADD KEY `fk_order_coupon_lang_1_idx` (`order_coupon_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `fk_order_item_1_idx` (`order_id`),
  ADD KEY `fk_order_item_2_idx` (`item_id`);

--
-- Indexes for table `order_item_image`
--
ALTER TABLE `order_item_image`
  ADD PRIMARY KEY (`order_item_image_id`),
  ADD KEY `fk_order_item_image_1_idx` (`order_item_id`);

--
-- Indexes for table `order_item_ingredient_group`
--
ALTER TABLE `order_item_ingredient_group`
  ADD PRIMARY KEY (`order_item_ingredient_group_id`),
  ADD KEY `fk_order_item_ingredient_group_1_idx` (`order_item_id`);

--
-- Indexes for table `order_item_ingredient_group_lang`
--
ALTER TABLE `order_item_ingredient_group_lang`
  ADD PRIMARY KEY (`order_item_ingredient_group_lang_id`),
  ADD KEY `fk_order_item_ingredient_group_lang_1_idx` (`order_item_ingredient_group_id`);

--
-- Indexes for table `order_item_ingredient_mapping`
--
ALTER TABLE `order_item_ingredient_mapping`
  ADD PRIMARY KEY (`order_item_ingredient_mapping_id`),
  ADD KEY `fk_order_item_ingredient_mapping_1_idx` (`order_item_ingredient_group_id`),
  ADD KEY `fk_order_item_ingredient_mapping_2_idx` (`ingredient_id`);

--
-- Indexes for table `order_item_ingredient_mapping_lang`
--
ALTER TABLE `order_item_ingredient_mapping_lang`
  ADD PRIMARY KEY (`order_item_ingredient_mapping_lang_id`),
  ADD KEY `fk_order_item_ingredient_mapping_lang_1_idx` (`order_item_ingredient_mapping_id`);

--
-- Indexes for table `order_item_lang`
--
ALTER TABLE `order_item_lang`
  ADD PRIMARY KEY (`order_item_lang_id`),
  ADD KEY `fk_order_item_lang_1_idx` (`order_item_id`);

--
-- Indexes for table `order_mall_product`
--
ALTER TABLE `order_mall_product`
  ADD PRIMARY KEY (`order_mall_product_id`),
  ADD KEY `fk_order_mall_product_1_idx` (`user_id`),
  ADD KEY `fk_order_mall_product_2_idx` (`product_id`);

--
-- Indexes for table `order_mall_product_lang`
--
ALTER TABLE `order_mall_product_lang`
  ADD PRIMARY KEY (`order_mall_product_lang_id`);

--
-- Indexes for table `order_parcel`
--
ALTER TABLE `order_parcel`
  ADD PRIMARY KEY (`order_parcel_id`),
  ADD KEY `fk_order_parcel_1_idx` (`user_id`),
  ADD KEY `fk_order_parcel_2_idx` (`parcel_item_type_id`);

--
-- Indexes for table `order_parcel_item_image`
--
ALTER TABLE `order_parcel_item_image`
  ADD PRIMARY KEY (`order_parcel_item_image_id`);

--
-- Indexes for table `order_promotion`
--
ALTER TABLE `order_promotion`
  ADD PRIMARY KEY (`order_promotion_id`),
  ADD KEY `fk_order_promotion_1_idx` (`user_id`),
  ADD KEY `fk_order_promotion_2_idx` (`promotion_id`),
  ADD KEY `fk_order_promotion_3_idx` (`vendor_id`);

--
-- Indexes for table `order_promotion_lang`
--
ALTER TABLE `order_promotion_lang`
  ADD PRIMARY KEY (`order_promotion_lang_id`),
  ADD KEY `fk_order_promotion_lang_1_idx` (`order_promotion_id`);

--
-- Indexes for table `order_tax`
--
ALTER TABLE `order_tax`
  ADD PRIMARY KEY (`order_tax_id`),
  ADD KEY `fk_order_tax_1_idx` (`order_id`),
  ADD KEY `fk_order_tax_2_idx` (`tax_id`),
  ADD KEY `fk_order_tax_3_idx` (`country_id`);

--
-- Indexes for table `order_tax_lang`
--
ALTER TABLE `order_tax_lang`
  ADD PRIMARY KEY (`order_tax_lang_id`),
  ADD KEY `fk_order_tax_lang_1_idx` (`order_tax_id`);

--
-- Indexes for table `otp_temp`
--
ALTER TABLE `otp_temp`
  ADD PRIMARY KEY (`otp_temp_id`);

--
-- Indexes for table `parcel_item_type`
--
ALTER TABLE `parcel_item_type`
  ADD PRIMARY KEY (`parcel_item_type_id`);

--
-- Indexes for table `parcel_item_type_lang`
--
ALTER TABLE `parcel_item_type_lang`
  ADD PRIMARY KEY (`parcel_item_type_lang_id`),
  ADD KEY `fk_parcel_item_type_lang_1_idx` (`parcel_item_type_id`);

--
-- Indexes for table `point_history`
--
ALTER TABLE `point_history`
  ADD PRIMARY KEY (`point_history_id`),
  ADD KEY `fk_point_history_1_idx` (`user_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_image`
--
ALTER TABLE `post_image`
  ADD PRIMARY KEY (`post_image_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promotion_id`),
  ADD KEY `fk_promotion_1_idx` (`vendor_id`);

--
-- Indexes for table `promotion_lang`
--
ALTER TABLE `promotion_lang`
  ADD PRIMARY KEY (`promotion_lang_id`),
  ADD KEY `fk_promotion_lang_1_idx` (`promotion_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `source_message`
--
ALTER TABLE `source_message`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`tax_id`),
  ADD KEY `fk_tax_1_idx` (`country_id`);

--
-- Indexes for table `tax_lang`
--
ALTER TABLE `tax_lang`
  ADD PRIMARY KEY (`tax_lang_id`),
  ADD KEY `fk_tax_lang_1_idx` (`tax_id`);

--
-- Indexes for table `time_zone`
--
ALTER TABLE `time_zone`
  ADD PRIMARY KEY (`time_zone_id`),
  ADD KEY `idx_country_code` (`country_code`),
  ADD KEY `idx_zone_name` (`time_zone_name`);

--
-- Indexes for table `today_special`
--
ALTER TABLE `today_special`
  ADD PRIMARY KEY (`today_special_id`);

--
-- Indexes for table `today_special_lang`
--
ALTER TABLE `today_special_lang`
  ADD PRIMARY KEY (`today_special_lang_id`),
  ADD KEY `fk_today_special_lang_1_idx` (`today_special_id`);

--
-- Indexes for table `topup`
--
ALTER TABLE `topup`
  ADD PRIMARY KEY (`topup_id`);

--
-- Indexes for table `topup_history`
--
ALTER TABLE `topup_history`
  ADD PRIMARY KEY (`topup_history_id`),
  ADD KEY `fk_topup_history_1_idx` (`user_id`),
  ADD KEY `fk_topup_history_2_idx` (`topup_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `unit_lang`
--
ALTER TABLE `unit_lang`
  ADD PRIMARY KEY (`unit_lang_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`user_address_id`),
  ADD KEY `fk_user_address_1_idx` (`user_id`);

--
-- Indexes for table `user_address_lang`
--
ALTER TABLE `user_address_lang`
  ADD PRIMARY KEY (`user_address_lang_id`),
  ADD KEY `fk_user_address_lang_1_idx` (`user_address_id`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`user_favourite_id`),
  ADD KEY `fk_user_favourite_1_idx` (`user_id`),
  ADD KEY `fk_user_favourite_2_idx` (`branch_id`);

--
-- Indexes for table `user_friend_list`
--
ALTER TABLE `user_friend_list`
  ADD PRIMARY KEY (`user_friend_list_id`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`user_level_id`);

--
-- Indexes for table `user_notification`
--
ALTER TABLE `user_notification`
  ADD PRIMARY KEY (`user_notification_id`),
  ADD KEY `fk_table1_1_idx` (`user_id`),
  ADD KEY `fk_table1_2_idx` (`notification_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_bank`
--
ALTER TABLE `vendor_bank`
  ADD PRIMARY KEY (`vendor_bank_id`),
  ADD KEY `fk_vendor_bank_1_idx` (`vendor_id`);

--
-- Indexes for table `vendor_category`
--
ALTER TABLE `vendor_category`
  ADD PRIMARY KEY (`vendor_category_id`),
  ADD KEY `fk_vendor_category_1_idx` (`vendor_id`),
  ADD KEY `fk_vendor_category_2_idx` (`category_id`);

--
-- Indexes for table `vendor_cuisine`
--
ALTER TABLE `vendor_cuisine`
  ADD PRIMARY KEY (`vendor_cuisine_id`),
  ADD KEY `fk_vendor_cuisine_1_idx` (`vendor_id`),
  ADD KEY `fk_vendor_cuisine_2_idx` (`cuisine_id`);

--
-- Indexes for table `vendor_lang`
--
ALTER TABLE `vendor_lang`
  ADD PRIMARY KEY (`vendor_lang_id`),
  ADD KEY `fk_vendor_lang_1_idx` (`vendor_id`);

--
-- Indexes for table `vendor_payment`
--
ALTER TABLE `vendor_payment`
  ADD PRIMARY KEY (`vendor_payment_id`);

--
-- Indexes for table `vendor_type`
--
ALTER TABLE `vendor_type`
  ADD PRIMARY KEY (`vendor_type_id`);

--
-- Indexes for table `vendor_type_detail`
--
ALTER TABLE `vendor_type_detail`
  ADD PRIMARY KEY (`vendor_type_detail_id`),
  ADD KEY `fk_vendor_type_detail_1_idx` (`vendor_id`),
  ADD KEY `fk_vendor_type_detail_2_idx` (`vendor_type_id`);

--
-- Indexes for table `vendor_type_lang`
--
ALTER TABLE `vendor_type_lang`
  ADD PRIMARY KEY (`vendor_type_lang_id`),
  ADD KEY `fk_branch_type_lang_1_idx` (`vendor_type_id`);

--
-- Indexes for table `wallet_transaction`
--
ALTER TABLE `wallet_transaction`
  ADD PRIMARY KEY (`wallet_transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `address_type`
--
ALTER TABLE `address_type`
  MODIFY `address_type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `address_type_lang`
--
ALTER TABLE `address_type_lang`
  MODIFY `address_type_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `admin_user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `admin_user_branch`
--
ALTER TABLE `admin_user_branch`
  MODIFY `admin_user_branch_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `agent_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `api_log`
--
ALTER TABLE `api_log`
  MODIFY `api_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `area_lang`
--
ALTER TABLE `area_lang`
  MODIFY `area_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `banner_lang`
--
ALTER TABLE `banner_lang`
  MODIFY `banner_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `branch_delivery_area`
--
ALTER TABLE `branch_delivery_area`
  MODIFY `branch_delivery_area_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `branch_image`
--
ALTER TABLE `branch_image`
  MODIFY `branch_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `branch_lang`
--
ALTER TABLE `branch_lang`
  MODIFY `branch_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `branch_review`
--
ALTER TABLE `branch_review`
  MODIFY `branch_review_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `branch_timeslot`
--
ALTER TABLE `branch_timeslot`
  MODIFY `branch_timeslot_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `brand_lang`
--
ALTER TABLE `brand_lang`
  MODIFY `brand_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category_lang`
--
ALTER TABLE `category_lang`
  MODIFY `category_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `city_lang`
--
ALTER TABLE `city_lang`
  MODIFY `city_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `cms_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_lang`
--
ALTER TABLE `cms_lang`
  MODIFY `cms_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `configuration`
--
ALTER TABLE `configuration`
  MODIFY `configuration_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `country_lang`
--
ALTER TABLE `country_lang`
  MODIFY `country_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `coupon_lang`
--
ALTER TABLE `coupon_lang`
  MODIFY `coupon_lang_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `coupon_user`
--
ALTER TABLE `coupon_user`
  MODIFY `coupon_user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `coupon_vendor`
--
ALTER TABLE `coupon_vendor`
  MODIFY `coupon_vendor_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `credit_history`
--
ALTER TABLE `credit_history`
  MODIFY `credit_history_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cuisine`
--
ALTER TABLE `cuisine`
  MODIFY `cuisine_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cuisine_lang`
--
ALTER TABLE `cuisine_lang`
  MODIFY `cuisine_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `deliveryboy`
--
ALTER TABLE `deliveryboy`
  MODIFY `deliveryboy_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `deliveryboy_lang`
--
ALTER TABLE `deliveryboy_lang`
  MODIFY `deliveryboy_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `deliveryboy_rating`
--
ALTER TABLE `deliveryboy_rating`
  MODIFY `deliveryboy_rating_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `deliveryboy_request`
--
ALTER TABLE `deliveryboy_request`
  MODIFY `deliveryboy_request_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `deliveryboy_request_history`
--
ALTER TABLE `deliveryboy_request_history`
  MODIFY `deliveryboy_request_history_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `delivery_area`
--
ALTER TABLE `delivery_area`
  MODIFY `delivery_area_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `delivery_charge_setting`
--
ALTER TABLE `delivery_charge_setting`
  MODIFY `delivery_charge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `email_queue`
--
ALTER TABLE `email_queue`
  MODIFY `email_queue_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enquiry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faq_lang`
--
ALTER TABLE `faq_lang`
  MODIFY `faq_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `ingredient_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `ingredient_lang`
--
ALTER TABLE `ingredient_lang`
  MODIFY `ingredient_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `item_image`
--
ALTER TABLE `item_image`
  MODIFY `item_image_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `item_ingredient_group`
--
ALTER TABLE `item_ingredient_group`
  MODIFY `item_ingredient_group_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `item_ingredient_group_lang`
--
ALTER TABLE `item_ingredient_group_lang`
  MODIFY `item_ingredient_group_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `item_ingredient_mapping`
--
ALTER TABLE `item_ingredient_mapping`
  MODIFY `item_ingredient_mapping_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `item_lang`
--
ALTER TABLE `item_lang`
  MODIFY `item_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `item_mapping`
--
ALTER TABLE `item_mapping`
  MODIFY `item_mapping_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `item_mapping_group`
--
ALTER TABLE `item_mapping_group`
  MODIFY `item_mapping_group_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `item_type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `item_type_details`
--
ALTER TABLE `item_type_details`
  MODIFY `item_type_details_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `item_type_lang`
--
ALTER TABLE `item_type_lang`
  MODIFY `item_type_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `item_variant`
--
ALTER TABLE `item_variant`
  MODIFY `item_variant_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `item_variant_lang`
--
ALTER TABLE `item_variant_lang`
  MODIFY `item_variant_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mall_product`
--
ALTER TABLE `mall_product`
  MODIFY `mall_product_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mall_product_lang`
--
ALTER TABLE `mall_product_lang`
  MODIFY `mall_product_lang_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meta_tag`
--
ALTER TABLE `meta_tag`
  MODIFY `meta_tag_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mobile_translation`
--
ALTER TABLE `mobile_translation`
  MODIFY `mobile_translation_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `newsletter_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `newsletter_subscriber_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `order_coupon`
--
ALTER TABLE `order_coupon`
  MODIFY `order_coupon_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_coupon_lang`
--
ALTER TABLE `order_coupon_lang`
  MODIFY `order_coupon_lang_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `order_item_image`
--
ALTER TABLE `order_item_image`
  MODIFY `order_item_image_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `order_item_ingredient_group`
--
ALTER TABLE `order_item_ingredient_group`
  MODIFY `order_item_ingredient_group_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_item_ingredient_group_lang`
--
ALTER TABLE `order_item_ingredient_group_lang`
  MODIFY `order_item_ingredient_group_lang_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_item_ingredient_mapping`
--
ALTER TABLE `order_item_ingredient_mapping`
  MODIFY `order_item_ingredient_mapping_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_item_ingredient_mapping_lang`
--
ALTER TABLE `order_item_ingredient_mapping_lang`
  MODIFY `order_item_ingredient_mapping_lang_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_item_lang`
--
ALTER TABLE `order_item_lang`
  MODIFY `order_item_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `order_mall_product`
--
ALTER TABLE `order_mall_product`
  MODIFY `order_mall_product_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_mall_product_lang`
--
ALTER TABLE `order_mall_product_lang`
  MODIFY `order_mall_product_lang_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_parcel`
--
ALTER TABLE `order_parcel`
  MODIFY `order_parcel_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_parcel_item_image`
--
ALTER TABLE `order_parcel_item_image`
  MODIFY `order_parcel_item_image_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_promotion`
--
ALTER TABLE `order_promotion`
  MODIFY `order_promotion_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_promotion_lang`
--
ALTER TABLE `order_promotion_lang`
  MODIFY `order_promotion_lang_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_tax`
--
ALTER TABLE `order_tax`
  MODIFY `order_tax_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_tax_lang`
--
ALTER TABLE `order_tax_lang`
  MODIFY `order_tax_lang_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `otp_temp`
--
ALTER TABLE `otp_temp`
  MODIFY `otp_temp_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `parcel_item_type`
--
ALTER TABLE `parcel_item_type`
  MODIFY `parcel_item_type_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parcel_item_type_lang`
--
ALTER TABLE `parcel_item_type_lang`
  MODIFY `parcel_item_type_lang_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `point_history`
--
ALTER TABLE `point_history`
  MODIFY `point_history_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_image`
--
ALTER TABLE `post_image`
  MODIFY `post_image_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `promotion_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `promotion_lang`
--
ALTER TABLE `promotion_lang`
  MODIFY `promotion_lang_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `source_message`
--
ALTER TABLE `source_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1892;
--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `tax_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tax_lang`
--
ALTER TABLE `tax_lang`
  MODIFY `tax_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_zone`
--
ALTER TABLE `time_zone`
  MODIFY `time_zone_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;
--
-- AUTO_INCREMENT for table `today_special`
--
ALTER TABLE `today_special`
  MODIFY `today_special_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `today_special_lang`
--
ALTER TABLE `today_special_lang`
  MODIFY `today_special_lang_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `topup`
--
ALTER TABLE `topup`
  MODIFY `topup_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `topup_history`
--
ALTER TABLE `topup_history`
  MODIFY `topup_history_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `unit_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `unit_lang`
--
ALTER TABLE `unit_lang`
  MODIFY `unit_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `user_address_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_address_lang`
--
ALTER TABLE `user_address_lang`
  MODIFY `user_address_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `user_favourite_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_friend_list`
--
ALTER TABLE `user_friend_list`
  MODIFY `user_friend_list_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `user_level_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_notification`
--
ALTER TABLE `user_notification`
  MODIFY `user_notification_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `vendor_bank`
--
ALTER TABLE `vendor_bank`
  MODIFY `vendor_bank_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vendor_category`
--
ALTER TABLE `vendor_category`
  MODIFY `vendor_category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;
--
-- AUTO_INCREMENT for table `vendor_cuisine`
--
ALTER TABLE `vendor_cuisine`
  MODIFY `vendor_cuisine_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT for table `vendor_lang`
--
ALTER TABLE `vendor_lang`
  MODIFY `vendor_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `vendor_payment`
--
ALTER TABLE `vendor_payment`
  MODIFY `vendor_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `vendor_type`
--
ALTER TABLE `vendor_type`
  MODIFY `vendor_type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vendor_type_detail`
--
ALTER TABLE `vendor_type_detail`
  MODIFY `vendor_type_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT for table `vendor_type_lang`
--
ALTER TABLE `vendor_type_lang`
  MODIFY `vendor_type_lang_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wallet_transaction`
--
ALTER TABLE `wallet_transaction`
  MODIFY `wallet_transaction_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
