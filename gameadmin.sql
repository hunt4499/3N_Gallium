-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2020 at 01:28 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_version`
--

CREATE TABLE `api_version` (
  `id` mediumint(10) NOT NULL,
  `v_code` varchar(6) NOT NULL,
  `apikey` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api_version`
--

INSERT INTO `api_version` (`id`, `v_code`, `apikey`) VALUES
(1, '1.0', 'fbb36f24d9b3985aa86fa37fd51c29eb');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `address`, `message`, `currency`) VALUES
(1, 'Four Brick', 'Noida,UP', 'Thank', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `game_users`
--

CREATE TABLE `game_users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reset_key` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `g_id` varchar(50) DEFAULT NULL,
  `last_logged_in` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `activation_key` varchar(255) DEFAULT NULL,
  `email_active_status` int(1) NOT NULL DEFAULT 1,
  `notification_status` int(1) NOT NULL DEFAULT 1,
  `name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` varchar(250) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `latitude` varchar(250) DEFAULT NULL,
  `longitude` varchar(250) DEFAULT NULL,
  `payment_status` varchar(10) NOT NULL DEFAULT 'UNPAID' COMMENT 'UNPAID ,PAID',
  `subscription_from` datetime DEFAULT NULL,
  `subscription_to` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_users`
--

INSERT INTO `game_users` (`id`, `role_id`, `is_default`, `password`, `temp_password`, `email`, `reset_key`, `mobile_no`, `g_id`, `last_logged_in`, `created_at`, `modified_at`, `created_by`, `modified_by`, `activation_key`, `email_active_status`, `notification_status`, `name`, `last_name`, `permanent_address`, `city`, `state`, `country`, `gender`, `dob`, `image`, `latitude`, `longitude`, `payment_status`, `subscription_from`, `subscription_to`) VALUES
(1, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'test5@gmail154545845443.com', NULL, '9560858005', '', NULL, '2019-08-18 06:03:47', '2019-12-14 17:20:01', 0, 1, '4724ab5edd3a8fa1f772fa12be84763d', 1, 1, 'raj', 'Singh', 'kfdkfdmkfmvf', 'Kanpur', 'up', 'India', 'MALE', '14 August 1984', 'profile_image-1576344001.jpg', '28.8201584', '77.4659134', 'UNPAID', '2020-04-22 20:37:03', '2020-07-22 20:37:03'),
(2, NULL, 0, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'low@gmail.com', NULL, '5633688555', '', '2019-08-17 10:57:57', '2019-08-17 10:54:52', '2019-08-17 10:54:52', 0, 0, '05d0dfebfdc8772942401e27f3363375', 1, 1, 'Arun', 'sharma', 'MDR93E, Mahson, Uttar Pradesh 272124, India Mahson Uttar Pradesh India 272124', 'Delhi', 'Bihar', 'India', 'MALE', '14 August 1994', '', '27.7432289', '72.7807219', 'UNPAID', NULL, NULL),
(3, NULL, 0, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'three@gmail.com', NULL, '1780963507', '', '2019-08-26 19:22:04', '2019-08-19 18:23:30', '2019-08-19 18:23:30', 0, 0, 'ef0cfd5766f524cb1672d1d9dbd45e16', 1, 1, 'hlo', 'nice', '1, Rasoolpur Nawada, Industrial Area, Sector 62, Noida, Uttar Pradesh 201309, India', 'Daporijo', 'Annabah', 'Algeria', 'FEMALE', '14 August 1993', 'image-1566239010.jpg', '28.6201584', '77.3659134', 'UNPAID', NULL, NULL),
(5, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'test5@gmail1545458456443.com', NULL, '99196944479', '', NULL, '2019-08-18 05:54:42', '2019-08-18 05:54:42', 0, 0, 'a019812045c9f062397616fca4d144b2', 1, 1, 'Vikas', 'sahu', 'kfdkfdmkfmvf', 'fatepur', 'up', 'India', 'MALE', '14 August 1990', 'image-1566107682.jpg', '28.6201584', '77.3659134', 'UNPAID', NULL, NULL),
(81, NULL, 0, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'one@gmail.com', NULL, '0891258634', '', '2019-08-25 21:07:56', '2019-08-19 18:24:11', '2019-08-19 18:24:11', 0, 0, 'dadf26feeeafcb56d47f49d568e1ee04', 1, 1, 'hlo', 'nice', '1, Rasoolpur Nawada, Industrial Area, Sector 62, Noida, Uttar Pradesh 201309, India', 'Daporijo', 'Annabah', 'Algeria', 'FEMALE', '14 August 1996', 'image-1566239051.jpg', '28.5355', '77.3659134', 'UNPAID', '2020-04-22 20:37:52', '2020-07-22 20:37:52'),
(82, NULL, 0, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'two@gmail.com', NULL, '0796418096', '', '2019-10-04 19:38:53', '2019-08-19 18:33:39', '2019-08-19 18:33:39', 0, 0, '94eb3bc39fb695b3f48cfb627ff65fbd', 1, 1, 'hlo ', 'love', '1, Rasoolpur Nawada, Industrial Area, Sector 62, Noida, Uttar Pradesh 201309, India', 'Bagaha', 'La Massana', 'Andorra', 'MALE', '02 August 2000', 'image-1566239619.jpg', '28.6201584', '77.3910', 'UNPAID', '2020-04-22 20:38:05', '2020-07-22 20:38:05'),
(83, NULL, 0, 'e807f1fcf82d132f9bb018ca6738a19f', 'MTIzNDU2Nzg5MA==', 'contactvikassahu@gmail.co', NULL, '7894561238', '', NULL, '2019-08-25 17:48:51', '2019-08-25 17:48:51', 0, 0, 'contactvikassahu@gmail.com082019', 1, 1, 'Raghav', 'singh', '1, Rasoolpur Nawada, Industrial Area, Sector 62, Noida, Uttar Pradesh 201309, India', 'Pogradec', 'Uttar Pradesh', 'India', 'MALE', '23 August 1990', 'image-1566755331.jpg', '28.7197812', '77.3667171', 'UNPAID', '2020-04-22 20:38:15', '2020-07-22 20:38:15'),
(84, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'test5@gmail143.com', NULL, '991969479', '', NULL, '2019-11-24 18:24:17', '2019-11-24 18:24:17', 0, 0, 'test5@gmail143.com112019', 1, 1, 'vikas', 'SDMVDSVFDMSVFFRGRB', 'kfdkfdmkfmvf', 'fatepur', 'up', 'india', 'MALE', 'fdfdfgdgf', NULL, 'fdfdfdf', 'sfdsfdf', 'UNPAID', NULL, NULL),
(85, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'test5@gzsadsadxadsadwdmail143.com', NULL, '991969471', '', NULL, '2019-11-24 18:25:31', '2019-11-24 18:25:31', 0, 0, 'test5@gzsadsadxadsadwdmail143.com112019', 1, 1, 'vikas', 'SDMVDSVFDMSVFFRGRB', 'kfdkfdmkfmvf', 'fatepur', 'up', 'india', 'MALE', 'fdfdfgdgf', 'image-1574619931.jpg', 'fdfdfdf', 'sfdsfdf', 'UNPAID', NULL, NULL),
(86, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'test5@gzsadsdsdsdsdsdsssdsasadwdmail143.com', NULL, '7485784587', '', NULL, '2019-11-24 18:28:41', '2019-11-24 18:28:41', 0, 0, 'test5@gzsadsdsdsdsdsdsssdsasadwdmail143.com112019', 1, 1, 'vikas', 'SDMVDSVFDMSVFFRGRB', 'kfdkfdmkfmvf', 'fatepur', 'up', 'india', 'MALE', 'fdfdfgdgf', 'image-1574620121.jpg', 'fdfdfdf', 'sfdsfdf', 'UNPAID', NULL, NULL),
(87, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'test5@gzsadsdsdsdsdsdsssdsil143.com', NULL, '7485784580', '', NULL, '2019-11-24 18:44:41', '2019-11-24 18:44:41', 0, 0, 'test5@gzsadsdsdsdsdsdsssdsil143.com112019', 1, 1, 'vikas', 'SDMVDSVFDMSVFFRGRB', 'kfdkfdmkfmvf', 'fatepur', 'up', 'india', 'MALE', 'fdfdfgdgf', 'image-1574621081.jpg', 'fdfdfdf', 'sfdsfdf', 'UNPAID', NULL, NULL),
(88, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'test1@gmai.com', NULL, '991969479', '', NULL, '2019-11-25 17:49:48', '2019-11-25 17:49:48', 0, 0, 'vikastest1@gmai.com112019', 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(89, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'test2@gmai.com', NULL, '991969479', '', '2020-01-19 11:13:38', '2019-11-25 17:54:40', '2020-02-23 07:38:40', 0, 2, 'vikastest2@gmai.com112019', 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', '2020-04-22 20:54:19', '2020-07-22 20:54:19'),
(90, NULL, 0, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'anand@gmail.com', '5ddc3d0481342', '9807407363', '', '2020-02-27 19:12:56', '2019-11-25 19:32:06', '2019-12-19 17:54:52', 0, 90, 'anandanand@gmail.com112019', 1, 1, 'anand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'profile_image-1576778092.jpg', NULL, NULL, 'UNPAID', '2020-04-22 21:01:56', '2021-04-22 21:01:56'),
(91, NULL, 0, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'anand1@gmail.com', NULL, '9807727567', '', NULL, '2019-11-25 19:36:29', '2019-11-25 19:36:29', 0, 0, 'anuanand1@gmail.com112019', 1, 1, 'anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(92, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'test5@gmai.com', NULL, '991969479', '', NULL, '2019-11-25 19:38:16', '2019-11-25 19:38:16', 0, 0, 'vikastest5@gmai.com112019', 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(93, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'tes3@gmai.com', NULL, '991969479', '', NULL, '2019-11-25 19:38:54', '2019-11-25 19:38:54', 0, 0, 'vikastes3@gmai.com112019', 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(94, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'tes11@gmai.com', NULL, '991969479', '', NULL, '2019-11-25 19:40:14', '2019-11-25 19:40:14', 0, 0, 'vikastes11@gmai.com112019', 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(95, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'test21@gmai.com', NULL, '9919691479', '', '2020-04-22 00:00:00', '2019-11-25 19:40:38', '2019-11-25 19:40:38', 0, 0, 'vikastest21@gmai.com112019', 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(96, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'test2s1@gmai.com', NULL, '9919691479', '', NULL, '2019-11-25 19:42:34', '2019-11-25 19:42:34', 0, 0, 'vikastest2s1@gmai.com112019', 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(97, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'tes111@gmai.com', NULL, '991969479', '', '2019-11-25 19:43:57', '2019-11-25 19:42:59', '2019-11-25 19:42:59', 0, 0, 'vikastes111@gmai.com112019', 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(98, NULL, 0, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'abc@gmail.com', NULL, '9256687528', '', '2019-11-25 19:52:16', '2019-11-25 19:50:37', '2019-11-25 19:50:37', 0, 0, 'abcabc@gmail.com112019', 1, 1, 'abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(99, NULL, 0, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'anand22@gmail.com', NULL, '9807407363', '', '2019-11-25 20:54:14', '2019-11-25 20:49:44', '2019-11-25 20:49:44', 0, 0, 'anand22anand22@gmail.com112019', 1, 1, 'anand22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(100, NULL, 0, 'a461e3bccc867b82181ff63624de2708', 'YmV0YXBw', 'shivaanraina@gmail.com', '5e5561ac897c0', '9871244996', '', '2019-12-15 17:34:39', '2019-11-26 01:14:35', '2019-12-16 01:29:07', 0, 100, 'Shivaanshivaanraina@gmail.com112019', 1, 1, 'Shivaan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'profile_image-1576459747.jpg', NULL, NULL, 'UNPAID', NULL, NULL),
(101, NULL, 0, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'anu@gmail.com', NULL, '9555829300', '', '2019-12-15 16:25:50', '2019-12-15 16:25:26', '2019-12-15 16:25:26', 0, 0, 'anuanu@gmail.com122019', 1, 1, 'anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(102, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'vikky.sahu18@gmail.com', NULL, '9354839844', '', '2019-12-15 19:17:17', '2019-12-15 18:59:01', '2019-12-15 19:08:09', 0, 102, 'vikasvikky.sahu18@gmail.com122019', 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'profile_image-1576436889.jpg', NULL, NULL, 'UNPAID', NULL, NULL),
(103, NULL, 0, '215211849e1daec4b31943025cadd8c1', 'VHJhY3lqNzA=', 'lamarparker07@yahoo.com', '5e1773c66d158', '2485876242', '', NULL, '2019-12-16 06:58:31', '2019-12-16 06:58:31', 0, 0, 'Park80lamarparker07@yahoo.com122019', 1, 1, 'Park80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(104, NULL, 0, 'abffe1d5cf633c397b718fd4c1e29fdf', 'VHJhY3k3MA==', 'lamarparker075@gmail.com', '5e0b8394aa8bf', '2485876242', '', '2019-12-16 07:00:11', '2019-12-16 06:59:43', '2019-12-16 06:59:43', 0, 0, 'Park80lamarparker075@gmail.com122019', 1, 1, 'Park80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(105, NULL, 0, '3cbe121ef85fef21ae62bb7a45094243', 'cnhwbHVzQDIwMTg=', 'cnxplay@gmail.com', NULL, '9108509581', '', '2019-12-29 23:15:02', '2019-12-29 23:14:28', '2019-12-29 23:14:28', 0, 0, 'Googlecnxplay@gmail.com122019', 1, 1, 'Google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(106, NULL, 0, 'f2e577e023d8dd5b1f2a1d82ca30c7c6', 'TGVlamFjazQw', 'leevadiejack40@gmail.com', NULL, '2488976864', '', NULL, '2019-12-31 17:25:01', '2019-12-31 17:25:01', 0, 0, 'lee40leevadiejack40@gmail.com122019', 1, 1, 'lee40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(107, NULL, 0, 'e2d63baaa689878ac0c3f7125ca820c6', 'RGlvbmcxOTkw', 'lamarparker0322@gmail.com', NULL, '2488976864', '', '2020-01-22 17:21:15', '2019-12-31 17:31:25', '2019-12-31 17:31:25', 0, 0, 'pmoney1980lamarparker0322@gmail.com122019', 1, 1, 'pmoney1980', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(108, NULL, 0, '75be46bbbe7037ba49546f87a3a2aef1', 'VHJpbkdhYmUxMTA2', 'tnl1828@gmail.com', NULL, '3134135102', '', '2020-01-01 04:08:13', '2020-01-01 04:07:48', '2020-01-01 04:07:48', 0, 0, 'tlee06tnl1828@gmail.com012020', 1, 1, 'tlee06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(109, NULL, 0, 'a461e3bccc867b82181ff63624de2708', 'YmV0YXBw', 'sr@gmail.com', NULL, '11111111', '', '2020-01-06 17:36:27', '2020-01-06 17:36:08', '2020-01-06 17:36:08', 0, 0, 'shivaansr@gmail.com012020', 1, 1, 'shivaan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(110, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'contactvikassahu@gmail.com', '5e58d75957e7d', '9354839844', '', '2020-02-24 08:24:48', '2020-01-06 18:09:13', '2020-02-25 08:18:44', 0, 2, 'vikascontactvikassahu@gmail.com012020', 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(111, NULL, 0, '4a9e9742384c313962767f179627c6a9', 'OTM1NDgzOTg0NA==', 'vikas@gmail.com', NULL, '9354839844', '', NULL, '2020-01-06 18:52:10', '2020-01-06 18:52:10', 0, 0, 'vikasvikas@gmail.com012020', 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(112, NULL, 0, 'a461e3bccc867b82181ff63624de2708', 'YmV0YXBw', 'mi@gmail.com', NULL, '111111111', '', '2020-01-07 17:27:55', '2020-01-07 17:27:38', '2020-01-07 17:27:38', 0, 0, 'mibetappmi@gmail.com012020', 1, 1, 'mibetapp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(113, NULL, 0, '74eb75e4f2913b79575d2789c25a1527', 'TGVldmFkaWUxOTQw', 'lamarparker045@gmail.com', NULL, '2485876242', '', NULL, '2020-01-09 18:31:58', '2020-01-09 18:31:58', 0, 0, 'park1980lamarparker045@gmail.com012020', 1, 1, 'park1980', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(114, NULL, 0, '74eb75e4f2913b79575d2789c25a1527', 'TGVldmFkaWUxOTQw', 'lamarparker032@gmail.com', NULL, '2485876242', '', NULL, '2020-01-09 18:33:02', '2020-01-09 18:33:02', 0, 0, 'park19lamarparker032@gmail.com012020', 1, 1, 'park19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(115, NULL, 0, '74eb75e4f2913b79575d2789c25a1527', 'TGVldmFkaWUxOTQw', 'steve19@gmail.com', NULL, '3133682175', '', NULL, '2020-01-09 18:36:33', '2020-01-09 18:36:33', 0, 0, 'park4steve19@gmail.com012020', 1, 1, 'park4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(116, NULL, 0, 'a461e3bccc867b82181ff63624de2708', 'YmV0YXBw', 'techshilsha@gmail.com', NULL, '000000000', NULL, NULL, '2020-01-14 02:04:32', '2020-01-14 02:04:32', 0, 0, 'shilshatechshilsha@gmail.com012020', 1, 1, 'shilsha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(117, NULL, 0, 'a461e3bccc867b82181ff63624de2708', 'YmV0YXBw', 'shilshatech@gmail.com', NULL, '000000000', NULL, '2020-01-14 02:05:40', '2020-01-14 02:04:54', '2020-01-14 02:04:54', 0, 0, 'shilshashilshatech@gmail.com012020', 1, 1, 'shilsha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(118, NULL, 0, 'db9f90adbf9845d8c9466024bf167807', 'a2lsdG9tMTIz', 'lasiewicz@gmail.com', NULL, '+140849976', NULL, NULL, '2020-01-18 00:04:57', '2020-01-18 00:04:57', 0, 0, 'lasiewicz@gmail.comlasiewicz@gmail.com012020', 1, 1, 'lasiewicz@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(119, NULL, 0, '87a7a9ea54e6473425be7613f6162bf9', 'dmlrYXMxMjM0NTY3ODk=', 'abcd@gmai.com', NULL, NULL, '123456789', '2020-01-19 11:17:06', '2020-01-19 11:14:57', '2020-01-19 11:14:57', 0, 0, 'vikasabcd@gmai.com012020', 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(120, NULL, 0, '87a7a9ea54e6473425be7613f6162bf9', 'dmlrYXMxMjM0NTY3ODk=', 'abcdefgh@gmai.com', NULL, NULL, '123456789', '2020-01-26 17:37:07', '2020-01-19 11:22:55', '2020-01-19 11:22:55', 0, 0, NULL, 1, 1, 'vikas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(121, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'ggg@gg.com', NULL, '1234567890', NULL, NULL, '2020-01-26 07:47:44', '2020-01-26 07:47:44', 0, 0, 'fggggg@gg.com012020', 1, 1, 'fgg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(122, NULL, 0, '2ffeda94a72fbba2f7f504cd461e594f', 'TGFtYXIgQmV0MTE0MDQ5MzQ2NzY5OTMy', 'friendbet24@gmail.com', NULL, NULL, '114049346769932', '2020-01-26 17:38:41', '2020-01-26 17:38:22', '2020-01-26 17:38:22', 0, 0, NULL, 1, 1, 'Lamar Bet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(123, NULL, 0, '336f3a36df3e87414fa8e5af0a1ca45a', 'QW5hbmQgR2F1cjEwMTUzOTYzNjEzODk4OTIxNjAxMA==', 'anand.recenturesoft@gmail.com', NULL, NULL, '101539636138989216010', '2020-01-26 17:38:53', '2020-01-26 17:38:53', '2020-01-26 17:38:53', 0, 0, NULL, 1, 1, 'Anand Gaur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(124, NULL, 0, 'a461e3bccc867b82181ff63624de2708', 'YmV0YXBw', 'shiv@gmaill.com', NULL, '08520852', NULL, NULL, '2020-01-31 19:32:03', '2020-01-31 19:32:03', 0, 0, 'shivshiv@gmaill.com012020', 1, 1, 'shiv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(125, NULL, 0, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'anan@gmail.com', NULL, '9242355555', NULL, '2020-02-02 05:49:59', '2020-02-02 05:46:48', '2020-02-02 05:46:48', 0, 0, 'anananan@gmail.com022020', 1, 1, 'anan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(126, NULL, 0, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'ananddd@gmail.com', NULL, '9242355555', NULL, NULL, '2020-02-02 05:48:47', '2020-02-02 05:48:47', 0, 0, 'ananananddd@gmail.com022020', 1, 1, 'anan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(127, NULL, 0, '83bc59a2d88179354d13e1219127d4d8', 'U2hpbHVsaTU=', 'shilulihirst@gmail.com', NULL, '0745499127', NULL, NULL, '2020-02-16 12:12:18', '2020-02-16 12:12:18', 0, 0, 'hastshilulihirst@gmail.com022020', 1, 1, 'hast', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(128, NULL, 0, '83bc59a2d88179354d13e1219127d4d8', 'U2hpbHVsaTU=', 'hirstshiluli21@gmail.com', NULL, '0745499127', NULL, NULL, '2020-02-16 12:12:47', '2020-02-16 12:12:47', 0, 0, 'hasthirstshiluli21@gmail.com022020', 1, 1, 'hast', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(129, NULL, 0, '68eacb97d86f0c4621fa2b0e17cabd8c', 'VGVzdDEyMw==', 'ashishkmr1@gmail.com', NULL, '8095099200', NULL, NULL, '2020-02-21 15:29:31', '2020-02-21 15:29:31', 0, 0, 'Oceanus Ashishashishkmr1@gmail.com022020', 1, 1, 'Oceanus Ashish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(130, NULL, 0, '68eacb97d86f0c4621fa2b0e17cabd8c', 'VGVzdDEyMw==', 'ashish.kmr1@gmail.com', NULL, '8095099200', NULL, NULL, '2020-02-21 15:29:53', '2020-02-21 15:29:53', 0, 0, 'Oceanus Ashishashish.kmr1@gmail.com022020', 1, 1, 'Oceanus Ashish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL),
(131, NULL, 0, '25f9e794323b453885f5181f1b624d0b', 'MTIzNDU2Nzg5', 'vikassahu.sr@gmail.com', '5e58d7ee9fc3c', '9919694722', NULL, '2020-02-28 09:10:21', '2020-02-28 09:05:30', '2020-02-28 09:10:55', 0, 131, 'gggvikassahu.sr@gmail.com022020', 1, 1, 'ggghhhhhh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'profile_image-1582881055.jpg', NULL, NULL, 'UNPAID', NULL, NULL),
(132, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-22 16:27:45', '2020-04-22 16:27:45', 0, 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '95858282', '156285482', 'UNPAID', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:13:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:12:\"viewGameUser\";i:9;s:11:\"viewReports\";i:10;s:13:\"updateSetting\";i:11;s:13:\"updateProfile\";i:12;s:11:\"viewProfile\";}'),
(2, 'Coordinator', 'a:7:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:12:\"viewGameUser\";i:4;s:13:\"updateSetting\";i:5;s:13:\"updateProfile\";i:6;s:11:\"viewProfile\";}'),
(3, 'Public User', 'a:4:{i:0;s:8:\"viewUser\";i:1;s:12:\"viewGameUser\";i:2;s:13:\"updateProfile\";i:3;s:11:\"viewProfile\";}');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `name`, `size`, `type`, `url`, `category`, `title`) VALUES
(2, '158770797479516.mp4', '7440099', 'mp4', 'assets/uploads/ad_vedio/158770797479516', 'VEDIO', NULL),
(3, '158770798537644.mp4', '7440099', 'mp4', 'assets/uploads/ad_vedio/158770798537644', 'VEDIO', NULL),
(4, '158770799240750.mp4', '3355422', 'mp4', 'assets/uploads/ad_vedio/158770799240750', 'VEDIO', NULL),
(5, '158770805830555.mp4', '11231375', 'mp4', 'assets/uploads/ad_vedio/158770805830555.mp4', 'VEDIO', NULL),
(6, '158770806799484.mp4', '3355422', 'mp4', 'assets/uploads/ad_vedio/158770806799484.mp4', 'VEDIO', NULL),
(7, '158771547663176.mp4', '3355422', 'mp4', 'assets/uploads/ad_vedio/158771547663176.mp4', 'VEDIO', 'Element Selector in CSS (Hindi).mp4'),
(8, '158771549419995.mp4', '3355422', 'mp4', 'assets/uploads/ad_vedio/158771549419995.mp4', 'VEDIO', 'Element Selector in CSS (Hindi).mp4'),
(9, '158772124699982.jpg', '426228', 'jpg', '/assets/uploads/ad_image/158772124699982.jpg', 'IMAGE', 'Screenshot_20200210-214947_FastField.jpg'),
(10, '158772167977461.jpg', '280503', 'jpg', '/assets/uploads/ad_image/158772167977461.jpg', 'IMAGE', 'Screenshot_20200210-215033_FastField.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'admin', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@admin.com', 'Vikas', 'sahu', '9560858005', 1),
(2, 'coordinator', '$2y$10$bHBgBiKr8KnwBLczx8kK9.XanXxxCJPwJN4p8z9.tHBfPTJFUrYQ6', 'coordiantor@gmail.com', 'Arjun', '', '9354839844', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(4, 3, 4),
(5, 4, 5),
(6, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_state`
--

CREATE TABLE `user_state` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deviceType` varchar(255) DEFAULT NULL,
  `deviceID` varchar(50) DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `device_version` varchar(11) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1= Active, 0 = InActive',
  `state_created_at` datetime DEFAULT current_timestamp(),
  `state_updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_state`
--

INSERT INTO `user_state` (`id`, `user_id`, `deviceType`, `deviceID`, `device_token`, `device_version`, `latitude`, `longitude`, `status`, `state_created_at`, `state_updated_at`) VALUES
(2, 48, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', 'dscdswwwwwwwwwwwwwwwwwwwwwf', '111', 1, NULL, '2020-04-22 18:17:07'),
(3, 77, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', '148252', '1118958', 1, '2020-04-22 14:59:21', '2020-04-22 20:32:59'),
(5, 427, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', 'dscdswwwwwwwwwwwwwwwwwwwwwf', '111', 1, '2020-04-22 15:04:30', '2020-04-22 18:34:30'),
(6, 27, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', 'dscdswwwwwwwwwwwwwwwwwwwwwf', '111', 1, '2020-04-22 15:07:06', '2020-04-22 15:12:22'),
(7, 1, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', '148252', '1118958', 1, '2020-04-22 20:33:56', '2020-04-23 08:21:51'),
(8, 2, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', '148252', '1118958', 1, '2020-04-22 20:34:07', '2020-04-22 20:34:07'),
(9, 81, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', '148252', '1118958', 1, '2020-04-22 20:34:24', '2020-04-22 20:51:27'),
(10, 82, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', '148252', '1118958', 1, '2020-04-22 20:38:33', '2020-04-22 20:50:55'),
(11, 85, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', '148252', '1118958', 1, '2020-04-22 20:52:37', '2020-04-22 20:52:37'),
(12, 86, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', '148252', '1118958', 1, '2020-04-22 20:53:21', '2020-04-22 20:53:21'),
(13, 87, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', '148252', '1118958', 1, '2020-04-22 20:53:29', '2020-04-22 20:53:29'),
(14, 88, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', '148252', '1118958', 1, '2020-04-22 20:53:37', '2020-04-22 20:53:37'),
(15, 89, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', '148252', '1118958', 1, '2020-04-22 20:53:43', '2020-04-22 20:53:43'),
(16, 90, 'IOS', 'a29c2a79ed1faa7', 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '7.2', '148252', '1118958', 1, '2020-04-22 20:53:53', '2020-04-22 20:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `add_money` double DEFAULT NULL,
  `deduct_money` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `discription` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `note` varchar(250) DEFAULT NULL,
  `account_no` int(25) DEFAULT NULL,
  `ifsc_code` varchar(20) DEFAULT NULL,
  `transaction_id` int(30) DEFAULT NULL,
  `subscription_month` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `add_money`, `deduct_money`, `balance`, `user_id`, `discription`, `created_at`, `note`, `account_no`, `ifsc_code`, `transaction_id`, `subscription_month`) VALUES
(3, 5, NULL, 5, 78, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 11:15:23', NULL, 0, 'IOS', 0, 3),
(4, 5, NULL, 10, 78, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 11:17:28', NULL, 0, 'IOS', 0, 3),
(5, 35, NULL, 45, 78, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 11:20:08', NULL, 0, 'IOS', 0, 3),
(6, 46, NULL, 90.58, 78, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 11:23:21', NULL, 0, 'IOS', 0, 3),
(7, 45.58, NULL, 136.16, 77, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 11:25:08', NULL, 0, 'IOS', 0, 3),
(8, 45.58, NULL, 45.58, 56, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 11:31:50', NULL, 0, 'IOS', 0, 3),
(9, 45.58, NULL, 91.16, 56, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 11:32:36', NULL, 0, 'IOS', 0, 3),
(10, 10, NULL, 101.16, 56, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 11:33:19', NULL, 0, 'IOS', 0, 3),
(11, 10.889, NULL, 112.049, 56, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 11:33:59', NULL, 0, 'IOS', 0, 3),
(12, 10.889, NULL, 10.889, 1, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2019-04-22 11:36:33', NULL, 0, 'IOS', 0, 3),
(13, 10.889, NULL, 21.778, 1, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 14:14:48', NULL, 0, 'IOS', 0, 3),
(14, 10.889, NULL, 32.667, 1, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 14:16:12', NULL, 0, 'IOS', 0, 3),
(15, 500, NULL, 532.667, 1, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 14:59:33', NULL, 0, 'IOS', 0, 3),
(16, 500, NULL, 1032.667, 1, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 14:59:35', NULL, 0, 'IOS', 0, 3),
(17, 500, NULL, 1532.667, 1, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 15:07:03', NULL, 0, 'IOS', 0, 3),
(18, 500, NULL, 500, 81, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 15:07:52', NULL, 0, 'IOS', 0, 3),
(19, 500, NULL, 500, 82, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2019-04-22 15:08:05', NULL, 0, 'IOS', 0, 3),
(20, 500, NULL, 500, 83, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 15:08:15', NULL, 0, 'IOS', 0, 3),
(21, 500, NULL, 500, 89, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 15:24:19', NULL, 0, 'IOS', 0, 3),
(22, 500, NULL, 500, 90, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 15:24:36', NULL, 0, 'IOS', 0, 3),
(23, 500, NULL, 1000, 90, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2019-04-22 15:25:22', NULL, 0, 'IOS', 0, 12),
(24, 500, NULL, 1500, 90, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 15:26:23', NULL, 0, 'IOS', 0, 12),
(25, 500, NULL, 2000, 90, 'dNtDVktDotw:APA91bE_Lw`8RmUx31', '2020-04-22 15:31:56', NULL, 0, 'IOS', 0, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_version`
--
ALTER TABLE `api_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_users`
--
ALTER TABLE `game_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_state`
--
ALTER TABLE `user_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_version`
--
ALTER TABLE `api_version`
  MODIFY `id` mediumint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `game_users`
--
ALTER TABLE `game_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_state`
--
ALTER TABLE `user_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
