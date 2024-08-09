-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2022 at 11:59 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `prequest`
--

CREATE TABLE `prequest` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `wdd` varchar(255) DEFAULT NULL,
  `cms` varchar(255) DEFAULT NULL,
  `seo` varchar(255) DEFAULT NULL,
  `smo` varchar(255) DEFAULT NULL,
  `swd` varchar(255) DEFAULT NULL,
  `dwd` varchar(255) DEFAULT NULL,
  `fwd` varchar(255) DEFAULT NULL,
  `dr` varchar(255) DEFAULT NULL,
  `whs` varchar(255) DEFAULT NULL,
  `wm` varchar(255) DEFAULT NULL,
  `ed` varchar(255) DEFAULT NULL,
  `wta` varchar(255) DEFAULT NULL,
  `opi` varchar(255) DEFAULT NULL,
  `ld` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  `osc` varchar(255) DEFAULT NULL,
  `nd` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `query` longtext DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prequest`
--

INSERT INTO `prequest` (`id`, `name`, `email`, `contactno`, `company`, `wdd`, `cms`, `seo`, `smo`, `swd`, `dwd`, `fwd`, `dr`, `whs`, `wm`, `ed`, `wta`, `opi`, `ld`, `da`, `osc`, `nd`, `others`, `query`, `posting_date`, `remark`, `status`) VALUES
(1, 'Anuj Kumar', 'phpgurukulteam@gmail.com', '1234567890', 'Test', 'Website Design & Development', '', '', '', '', 'Dynamic Website Design', '', '', 'Web Hosting Services', '', 'Ecommerce Development', 'Walk Through Animation', '', '', '', '', '', '', 'This is for testing', '2021-04-22', 'This is for test', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `result` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `pic`, `result`) VALUES
('', 'Capture.PNG', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sens`
--

CREATE TABLE `sens` (
  `ids` varchar(100) NOT NULL,
  `a` varchar(100) NOT NULL,
  `b` varchar(100) NOT NULL,
  `c` varchar(100) NOT NULL,
  `e` varchar(100) NOT NULL,
  `f` varchar(100) NOT NULL,
  `g` varchar(100) NOT NULL,
  `h` varchar(100) NOT NULL,
  `i` varchar(100) NOT NULL,
  `pred` varchar(100) NOT NULL,
  `d` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sens`
--

INSERT INTO `sens` (`ids`, `a`, `b`, `c`, `e`, `f`, `g`, `h`, `i`, `pred`, `d`) VALUES
('', '1', '2', '3', '5', '6', '7', '8', '9', 'Yes', '4'),
('', '1', '2', '3', '5', '6', '7', '8', '9', 'Yes', '4');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `ticket_id` varchar(11) DEFAULT NULL,
  `email_id` varchar(300) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `task_type` varchar(300) DEFAULT NULL,
  `prioprity` varchar(300) DEFAULT NULL,
  `ticket` longtext DEFAULT NULL,
  `attachment` varchar(300) DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  `admin_remark` longtext DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `admin_remark_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `ticket_id`, `email_id`, `subject`, `task_type`, `prioprity`, `ticket`, `attachment`, `status`, `admin_remark`, `posting_date`, `admin_remark_date`) VALUES
(12, '5', 'phpgurukulteam@gmail.com', 'Test Ticket', 'billing', 'important', 'This ticket for testing purpose.', '', 'closed', 'Ticket resolved.  Solution provided', '2021-04-22', '2021-04-21 18:30:00'),
(14, '7', 'sur5gk@gmail.com', '', 'billing', '', '', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:29:04'),
(15, '8', 'sur5gk@gmail.com', '3', 'billing', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:31:11'),
(16, '9', 'sur5gk@gmail.com', '3', 'ot1', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:31:17'),
(17, '10', 'sur5gk@gmail.com', '3', 'ot1', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:32:41'),
(18, '11', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:32:46'),
(19, '12', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:42:06'),
(20, '13', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:43:35'),
(21, '14', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:44:04'),
(22, '15', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:44:25'),
(23, '16', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:45:01'),
(24, '17', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:45:17'),
(25, '18', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:49:50'),
(26, '19', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:50:24'),
(27, '20', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:53:42'),
(28, '21', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 04:53:47'),
(29, '22', 'sur5gk@gmail.com', '3', 'DASH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:06:41'),
(30, '23', 'sur5gk@gmail.com', '3', 'DASH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:07:02'),
(31, '24', 'sur5gk@gmail.com', '3', 'DASH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:07:50'),
(32, '25', 'sur5gk@gmail.com', '3', 'DASH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:08:07'),
(33, '26', 'sur5gk@gmail.com', '3', 'DASH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:10:05'),
(34, '27', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:10:16'),
(35, '28', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:10:31'),
(36, '29', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:10:50'),
(37, '30', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:11:06'),
(38, '31', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:12:04'),
(39, '32', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:12:10'),
(40, '33', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:12:17'),
(41, '34', 'sur5gk@gmail.com', '3', 'USD', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:23:23'),
(42, '35', 'sur5gk@gmail.com', '3', 'USD', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:23:34'),
(43, '36', 'sur5gk@gmail.com', '3', 'USD', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:24:19'),
(44, '37', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:25:28'),
(45, '38', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:25:50'),
(46, '39', 'sur5gk@gmail.com', '3', 'USD', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:25:59'),
(47, '40', 'sur5gk@gmail.com', '3', 'USD', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:26:24'),
(48, '41', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:28:59'),
(49, '42', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 05:39:29'),
(50, '43', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 06:08:10'),
(51, '44', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 06:08:26'),
(52, '45', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 06:08:32'),
(53, '46', 'sur5gk@gmail.com', '3', 'DASH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 06:11:19'),
(54, '47', 'sur5gk@gmail.com', '3', 'DASH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 06:11:35'),
(55, '48', 'sur5gk@gmail.com', '3', 'DASH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 06:11:40'),
(56, '49', 'sur5gk@gmail.com', '3', 'DASH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 13:17:19'),
(57, '50', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 13:18:11'),
(58, '51', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 13:18:36'),
(59, '52', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 13:18:43'),
(60, '53', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 13:19:07'),
(61, '54', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 13:19:30'),
(62, '55', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 13:20:46'),
(63, '56', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 13:53:37'),
(64, '57', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 14:04:58'),
(65, '58', 'sur5gk@gmail.com', '3', 'BTC', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 14:06:11'),
(66, '59', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 14:07:19'),
(67, '60', 'sur5gk@gmail.com', '3', 'ETH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 14:08:03'),
(68, '61', 'sur5gk@gmail.com', '3', 'DASH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 14:08:26'),
(69, '62', 'sur5gk@gmail.com', '3', 'DASH', '1', '2', NULL, 'Open', NULL, '2021-12-19', '2021-12-19 14:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alt_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp(),
  `sname` varchar(100) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `alt_email`, `password`, `mobile`, `gender`, `address`, `status`, `posting_date`, `sname`, `cname`, `branch`) VALUES
(5, 'suraj gayake', 'neuromastertech@gmail.com', NULL, '12345', '9999999999', 'm', NULL, NULL, '2022-02-23 10:35:11', '', '', ''),
(4, 'Suraj', 'sur5gk@gmail.com', NULL, '123456', '9665663681', 'm', NULL, NULL, '2022-02-21 04:41:45', 'gayake', 'JSPM', 'comp'),
(6, 'amit', 'amitthorat513@gmail.com', NULL, '123456', '9665663681', 'm', NULL, NULL, '2022-02-23 10:42:13', '', '', ''),
(7, 'sonali', 'smartenergymeter.user@gmail.com', NULL, '123456', '9999999999', 'm', NULL, NULL, '2022-02-23 10:44:27', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `usercheck`
--

CREATE TABLE `usercheck` (
  `id` int(11) NOT NULL,
  `logindate` varchar(255) DEFAULT '',
  `logintime` varchar(255) DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `ip` varbinary(16) DEFAULT NULL,
  `mac` varbinary(16) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercheck`
--

INSERT INTO `usercheck` (`id`, `logindate`, `logintime`, `user_id`, `username`, `email`, `ip`, `mac`, `city`, `country`) VALUES
(1, '2021/04/22', '05:59:18pm', 1, 'Anuj Kumar', 'phpgurukulteam@gmail.com', 0x3a3a31, 0x31322d46342d38442d31322d39392d39, '', ''),
(2, '2021/04/22', '10:00:15pm', 1, 'Anuj Kumar', 'phpgurukulteam@gmail.com', 0x3a3a31, 0x31322d46342d38442d31322d39392d39, '', ''),
(3, '2021/12/12', '04:56:45pm', 1, 'Anuj Kumar', 'phpgurukulteam@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(4, '2021/12/12', '04:58:57pm', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(5, '2021/12/12', '05:03:55pm', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(6, '2021/12/12', '07:24:32pm', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(7, '2021/12/12', '07:26:18pm', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(8, '2021/12/19', '09:41:50am', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(9, '2021/12/19', '10:46:56am', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(10, '2021/12/19', '10:55:08am', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(11, '2021/12/19', '10:58:22am', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(12, '2021/12/19', '11:36:53am', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(13, '2021/12/28', '08:04:33am', 3, 'suraj gayake', 'neuromastertech@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(14, '2021/12/28', '08:09:38am', 3, 'suraj gayake', 'neuromastertech@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(15, '2021/12/28', '08:32:19am', 3, 'suraj gayake', 'neuromastertech@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(16, '2021/12/28', '08:44:44am', 3, 'suraj gayake', 'neuromastertech@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(17, '2021/12/30', '08:00:27am', 3, 'suraj gayake', 'neuromastertech@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(18, '2021/12/30', '08:03:38am', 3, 'suraj gayake', 'neuromastertech@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(19, '2022/02/12', '11:54:07am', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(20, '2022/02/12', '07:25:29pm', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(21, '2022/02/12', '07:28:52pm', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(22, '2022/02/12', '08:05:24pm', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(23, '2022/02/12', '08:05:32pm', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(24, '2022/02/18', '03:22:44pm', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(25, '2022/02/18', '03:23:21pm', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(26, '2022/02/19', '10:21:28am', 2, 'suraj gayake', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(27, '2022/02/21', '10:17:34am', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(28, '2022/02/21', '10:52:11am', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(29, '2022/02/23', '03:53:10pm', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(30, '2022/02/23', '04:14:59pm', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(31, '2022/02/23', '04:16:05pm', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(32, '2022/02/23', '04:17:25pm', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(33, '2022/02/23', '10:08:04pm', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(34, '2022/03/20', '07:17:30pm', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(35, '2022/03/24', '11:07:44am', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(36, '2022/03/24', '11:10:10am', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(37, '2022/03/25', '10:42:28am', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(38, '2022/03/25', '11:23:03am', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(39, '2022/03/25', '02:23:25pm', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(40, '2022/03/25', '02:51:16pm', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', ''),
(41, '2022/03/25', '04:12:46pm', 4, 'Suraj', 'sur5gk@gmail.com', 0x3a3a31, 0x43382d44392d44322d41432d46382d39, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `ids` int(11) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `tretment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prequest`
--
ALTER TABLE `prequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usercheck`
--
ALTER TABLE `usercheck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`ids`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prequest`
--
ALTER TABLE `prequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usercheck`
--
ALTER TABLE `usercheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
