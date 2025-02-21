-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql211.hstn.me
-- Generation Time: Feb 20, 2025 at 03:06 PM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mseet_38309714_vatos_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'JoeDat', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `staff_id` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `term` enum('First Term','Second Term','Third Term') NOT NULL,
  `assignment_score` int(11) NOT NULL,
  `remark` enum('pass','good','very good','excellent') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `student_id`, `first_name`, `last_name`, `staff_id`, `class`, `subject`, `date`, `term`, `assignment_score`, `remark`, `created_at`, `updated_at`) VALUES
(4, 'SD2025010', 'Chinonso', 'Mercy', 'SDT2025004', 'SS1', 'Physics', '2025-02-18', 'First Term', 8, 'very good', '2025-02-18 22:26:07', '2025-02-20 20:03:25'),
(5, 'SD2025001', 'Asake', 'Ololade', 'SDT2025001', 'JSS1', 'English', '2025-02-18', 'First Term', 9, 'pass', '2025-02-18 22:26:53', '2025-02-18 22:26:53'),
(6, 'SD2025003', 'Emmanuel', 'Michael', 'SDT2025001', 'JSS1', ' Mathematics', '2025-02-18', 'First Term', 8, 'very good', '2025-02-18 22:27:47', '2025-02-18 22:27:47'),
(9, 'SD2025004', 'Victor', 'Samuel', 'SDT2025001', 'JSS1', 'English', '2025-02-28', 'First Term', 7, 'excellent', '2025-02-20 16:29:54', '2025-02-20 16:29:54'),
(10, 'SD2025012', 'Peller', 'Jarvis', 'SDT2025001', 'SS1', 'English', '2025-02-20', 'First Term', 9, 'excellent', '2025-02-20 16:32:07', '2025-02-20 16:32:07'),
(11, 'SD2025012', 'Peller', 'Jarvis', 'SDT2025002', 'SS1', 'Mathematics', '2025-02-20', 'First Term', 8, 'excellent', '2025-02-20 19:55:01', '2025-02-20 19:55:01'),
(12, 'SD2025011', 'Isaac', 'Israel', 'SDT2025004', 'SS1', 'Physics', '2025-02-20', 'First Term', 7, 'good', '2025-02-20 20:03:25', '2025-02-20 20:03:25'),
(13, 'SD2025012', 'Peller', 'Jarvis', 'SDT2025004', 'SS1', 'Physics', '2025-02-20', 'First Term', 9, 'excellent', '2025-02-20 20:03:25', '2025-02-20 20:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `present` enum('Yes','No') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `term` enum('First Term','Second Term','Third Term') DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `staff_id`, `student_id`, `class`, `present`, `date`, `term`, `first_name`, `last_name`) VALUES
(50, 'SDT2025001', 'SD2025001', 'JSS1', 'Yes', '2025-01-20', 'First Term', 'Asake', 'Ololade'),
(51, 'SDT2025001', 'SD2025003', 'JSS1', 'Yes', '2025-01-20', 'First Term', 'Emmanuel', 'Michael'),
(52, 'SDT2025001', 'SD2025004', 'JSS1', 'Yes', '2025-01-20', 'First Term', 'Victor', 'Samuel'),
(53, 'SDT2025001', 'SD2025001', 'JSS1', 'Yes', '2025-02-19', 'First Term', 'Asake', 'Ololade'),
(54, 'SDT2025001', 'SD2025003', 'JSS1', 'Yes', '2025-02-19', 'First Term', 'Emmanuel', 'Michael'),
(55, 'SDT2025001', 'SD2025004', 'JSS1', 'No', '2025-02-19', 'First Term', 'Victor', 'Samuel'),
(56, 'SDT2025001', 'SD2025001', 'JSS1', 'Yes', '2025-02-20', 'First Term', 'Asake', 'Ololade'),
(57, 'SDT2025001', 'SD2025003', 'JSS1', 'Yes', '2025-02-20', 'First Term', 'Emmanuel', 'Michael'),
(58, 'SDT2025001', 'SD2025004', 'JSS1', 'Yes', '2025-02-20', 'First Term', 'Victor', 'Samuel'),
(59, 'SDT2025002', 'SD2025002', 'JSS2', 'Yes', '2025-03-07', 'First Term', 'Favour', 'Esther'),
(60, 'SDT2025002', 'SD2025005', 'JSS2', 'No', '2025-03-07', 'First Term', 'Blessing', 'Precious'),
(61, 'SDT2025002', 'SD2025006', 'JSS2', 'Yes', '2025-03-07', 'First Term', 'Joy', 'Divine'),
(62, 'SDT2025002', 'SD2025002', 'JSS2', 'Yes', '2025-03-05', 'First Term', 'Favour', 'Esther'),
(63, 'SDT2025002', 'SD2025005', 'JSS2', 'Yes', '2025-03-05', 'First Term', 'Blessing', 'Precious'),
(64, 'SDT2025002', 'SD2025006', 'JSS2', 'No', '2025-03-05', 'First Term', 'Joy', 'Divine'),
(65, 'SDT2025002', 'SD2025002', 'JSS2', 'Yes', '2025-03-02', 'First Term', 'Favour', 'Esther'),
(66, 'SDT2025002', 'SD2025005', 'JSS2', 'Yes', '2025-03-02', 'First Term', 'Blessing', 'Precious'),
(67, 'SDT2025002', 'SD2025006', 'JSS2', 'No', '2025-03-02', 'First Term', 'Joy', 'Divine'),
(68, 'SDT2025003', 'SD2025007', 'JSS3', 'No', '2025-01-20', 'First Term', 'Ayomide', 'Jessica'),
(69, 'SDT2025003', 'SD2025008', 'JSS3', 'Yes', '2025-01-20', 'First Term', 'David', 'Daniel'),
(70, 'SDT2025003', 'SD2025009', 'JSS3', 'Yes', '2025-01-20', 'First Term', 'Peter', 'Kingsley'),
(71, 'SDT2025004', 'SD2025010', 'SS1', 'Yes', '2025-01-20', 'First Term', 'Chinonso', 'Mercy'),
(72, 'SDT2025004', 'SD2025011', 'SS1', 'Yes', '2025-01-20', 'First Term', 'Isaac', 'Israel'),
(73, 'SDT2025004', 'SD2025012', 'SS1', 'Yes', '2025-01-20', 'First Term', 'Peller', 'Jarvis'),
(74, 'SDT2025004', 'SD2025010', 'SS1', 'Yes', '2025-01-21', 'First Term', 'Chinonso', 'Mercy'),
(75, 'SDT2025004', 'SD2025011', 'SS1', 'No', '2025-01-21', 'First Term', 'Isaac', 'Israel'),
(76, 'SDT2025004', 'SD2025012', 'SS1', 'Yes', '2025-01-21', 'First Term', 'Peller', 'Jarvis'),
(77, 'SDT2025004', 'SD2025010', 'SS1', 'Yes', '2025-01-22', 'First Term', 'Chinonso', 'Mercy'),
(78, 'SDT2025004', 'SD2025011', 'SS1', 'Yes', '2025-01-22', 'First Term', 'Isaac', 'Israel'),
(79, 'SDT2025004', 'SD2025012', 'SS1', 'No', '2025-01-22', 'First Term', 'Peller', 'Jarvis'),
(80, 'SDT2025004', 'SD2025010', 'SS1', 'No', '2025-01-23', 'First Term', 'Chinonso', 'Mercy'),
(81, 'SDT2025004', 'SD2025011', 'SS1', 'Yes', '2025-01-23', 'First Term', 'Isaac', 'Israel'),
(82, 'SDT2025004', 'SD2025012', 'SS1', 'Yes', '2025-01-23', 'First Term', 'Peller', 'Jarvis'),
(83, 'SDT2025004', 'SD2025010', 'SS1', 'Yes', '2025-01-24', 'First Term', 'Chinonso', 'Mercy'),
(84, 'SDT2025004', 'SD2025011', 'SS1', 'Yes', '2025-01-24', 'First Term', 'Isaac', 'Israel'),
(85, 'SDT2025004', 'SD2025012', 'SS1', 'No', '2025-01-24', 'First Term', 'Peller', 'Jarvis');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class_id` varchar(50) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `subject_count` int(11) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `class_capacity` int(11) NOT NULL,
  `other_teachers_count` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class_id`, `class_name`, `subject_count`, `teacher_id`, `teacher_name`, `class_capacity`, `other_teachers_count`, `created_at`) VALUES
(6, 'SDC2025001', 'JSS1', 3, 'SDT2025001', 'Anu Victoria', 30, 3, '2025-02-18 17:56:19'),
(7, 'SDC2025002', 'JSS2', 3, 'SDT2025002', 'Charles Williams', 25, 2, '2025-02-18 17:59:28'),
(8, 'SDC2025003', 'JSS3', 3, 'SDT2025003', 'Pollyanna Kebe', 33, 1, '2025-02-18 18:05:56'),
(9, 'SDC2025004', 'SS1', 3, 'SDT2025004', 'Paul Sam', 25, 2, '2025-02-18 18:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `staff_id` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL,
  `term` enum('First Term','Second Term','Third Term') NOT NULL,
  `test1` int(11) DEFAULT NULL,
  `test2` int(11) DEFAULT NULL,
  `test3` int(11) DEFAULT NULL,
  `test4` int(11) DEFAULT NULL,
  `exam` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `remark` enum('pass','good','very good','excellent') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `student_id`, `staff_id`, `subject`, `class`, `term`, `test1`, `test2`, `test3`, `test4`, `exam`, `total`, `remark`, `created_at`, `updated_at`, `first_name`, `last_name`) VALUES
(2, 'VA2025002', '', '', '', 'Second Term', 8, 9, 5, 5, 52, 79, 'good', '2025-02-06 02:14:34', '2025-02-06 02:33:23', 'Joe', 'Boy'),
(5, 'VA2025001', 'VA20251002', 'Math', 'Jss1', 'First Term', 8, 7, 9, 7, 45, 76, 'very good', '2025-02-09 23:57:21', '2025-02-09 23:57:21', 'Joseph', 'Olaitan'),
(6, 'VA2025002', 'VA20251004', 'Math', 'SS1', 'First Term', 8, 7, 8, 6, 56, 85, 'pass', '2025-02-10 10:56:32', '2025-02-10 10:56:32', 'Joe', 'Boy'),
(7, 'VA2025006', 'VA20251007', 'Chemistry', 'SS3', 'Second Term', 8, 3, 6, 9, 45, 71, 'very good', '2025-02-10 12:13:27', '2025-02-10 12:13:27', 'Bola', 'Mavin'),
(10, 'SD2025001', 'SDT2025001', '', '', 'First Term', 9, 8, 6, 9, 40, 72, 'pass', '2025-02-18 20:16:40', '2025-02-18 20:16:40', 'Asake', 'Ololade'),
(11, 'SD2025003', 'SDT2025001', '', '', 'First Term', NULL, NULL, NULL, NULL, NULL, NULL, 'pass', '2025-02-18 20:16:40', '2025-02-18 20:16:40', 'Emmanuel', 'Michael'),
(12, 'SD2025004', 'SDT2025001', '', '', 'First Term', NULL, NULL, NULL, NULL, NULL, NULL, '', '2025-02-18 20:16:40', '2025-02-18 20:16:40', 'Victor', 'Samuel'),
(15, 'SD2025004', 'SDT2025001', 'English', 'JSS1', 'First Term', 9, 9, 6, 7, 46, 77, 'good', '2025-02-18 21:18:49', '2025-02-18 22:31:40', 'Victor', 'Samuel'),
(16, 'SD2025001', 'SDT2025001', 'English', 'JSS1', 'First Term', 6, 5, 8, 7, 36, 62, 'good', '2025-02-18 21:36:19', '2025-02-18 21:36:19', 'Asake', 'Ololade'),
(17, 'SD2025012', 'SDT2025001', 'English', 'SS1', 'First Term', 9, 8, 9, 9, 54, 89, 'excellent', '2025-02-18 22:28:34', '2025-02-18 22:28:34', 'Peller', 'Jarvis'),
(18, 'SD2025012', 'SDT2025002', 'Mathematics', 'SS1', 'First Term', 8, 9, 8, 8, 51, 84, 'very good', '2025-02-18 22:46:03', '2025-02-18 22:46:03', 'Peller', 'Jarvis'),
(19, 'SD2025010', 'SDT2025004', 'Physics', 'SS1', 'First Term', 5, 9, 7, 8, 45, 74, 'very good', '2025-02-20 20:01:59', '2025-02-20 20:01:59', 'Chinonso', 'Mercy'),
(20, 'SD2025011', 'SDT2025004', 'Physics', 'SS1', 'First Term', 7, 8, 6, 9, 32, 62, 'pass', '2025-02-20 20:01:59', '2025-02-20 20:01:59', 'Isaac', 'Israel'),
(21, 'SD2025012', 'SDT2025004', 'Physics', 'SS1', 'First Term', 8, 9, 8, 8, 51, 84, 'excellent', '2025-02-20 20:01:59', '2025-02-20 20:01:59', 'Peller', 'Jarvis');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `role` enum('teacher','cleaner','security','secretary','principal','vice principal') NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `phone_number` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `hire_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id`, `first_name`, `last_name`, `role`, `subject`, `class`, `phone_number`, `password`, `email`, `address`, `salary`, `account_number`, `account_name`, `bank_name`, `hire_date`, `created_at`) VALUES
(14, 'SDT2025001', 'Anu', 'Victoria', 'teacher', 'English', 'JSS1, JSS2, JSS3, SS1', '08138366273', '$2y$10$P91Kgk3.JV1COtWPNFpkiOzb3H1T45ZQUEsfGkSxgbuXJEOOpAoje', 'anuvictoria@gmail.com', 'Ikorodu, Lagos', '150000.00', '86827267', 'Anu Victoria ', 'Access', '2025-01-06', '2025-02-18 18:39:17'),
(15, 'SDT2025002', 'Charles', 'Williams', 'teacher', 'Mathematics', 'JSS1, JSS2, JSS3, SS1', '070286349701', '$2y$10$7vYoeMl5yiUgpZ5iQUl/ve888Sc3RU5FDQKBtndfzrnZZ/e6AmaIW', 'charleswilliams@gmail.com', 'Egbeda, Lagos', '160000.00', '67826288', 'Charles Williams ', 'First Bank', '2025-01-06', '2025-02-18 18:44:04'),
(16, 'SDT2025003', 'Pollyanna', 'Kebe', 'teacher', 'Civic', 'JSS1, JSS2, JSS3 ', '09027253973', '$2y$10$SRemS65y79ZVpJ9oj92SzObzoJaH1c8rlhzlMyZhTEJy2/j9uFP8m', 'pollyannakebe@gmail.com', 'Agric, Lagos', '120000.00', '46827625', 'Pollyanna Kebe ', 'Lotus Bank', '2025-01-06', '2025-02-18 18:48:40'),
(17, 'SDT2025004', 'Paul', 'Sam', 'teacher', 'Physics', 'SS1', '08136395038', '$2y$10$GcLslxjOa1V8nsajNhYFAebERX2X/SKCvRb6o4bcx5MykGO1D4VmK', 'mrjoedat@gmail.com', 'Ikorodu, Lagos', '100000.00', '88327267', 'Paul Sam', 'Access', '2025-01-06', '2025-02-18 18:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `class` varchar(50) NOT NULL,
  `parent_contact` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `enrollment_date` date NOT NULL,
  `school_fees` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `first_name`, `last_name`, `date_of_birth`, `gender`, `class`, `parent_contact`, `password`, `address`, `enrollment_date`, `school_fees`, `created_at`) VALUES
(8, 'SD2025001', 'Asake', 'Ololade', '2000-01-21', 'Male', 'JSS1', '09072646920', '$2y$10$7lugTp/z.YZXcSy6fUNmvezv5jvywBlZmo3haPEPZr7/tHuKPGS2C', 'Ojo, Lagos', '2025-01-06', '65000.00', '2025-02-18 13:14:04'),
(9, 'SD2025002', 'Favour', 'Esther', '2004-12-17', 'Male', 'JSS2', '08047249076', '$2y$10$DNOn/nb19a7Q8oBf37gAsuzgc81HcyBP7kTdIx1hYp.hEhO4l6OWy', 'Agege, Lagos', '2025-01-14', '67500.00', '2025-02-18 13:18:33'),
(10, 'SD2025003', 'Emmanuel', 'Michael', '2003-04-16', 'Male', 'JSS1', '08136530864', '$2y$10$a2LuxXxC1eue.8RwvoCtL.2zawMuO2d7rq/GT2UCs7dr69KCbIboq', 'Alimosho, Lagos', '2025-01-08', '65000.00', '2025-02-18 13:22:50'),
(11, 'SD2025004', 'Victor', 'Samuel', '2002-06-29', 'Male', 'JSS1', '07074772106', '$2y$10$fnIkkjMPDC3TQyjUFSnWSOgQD0g2BgCuVC7fB0BKJ80kfCEdTvmKW', 'Apapa, Lagos', '2025-01-06', '65000.00', '2025-02-18 13:27:08'),
(12, 'SD2025005', 'Blessing', 'Precious', '2001-05-09', 'Female', 'JSS2', '08174937520', '$2y$10$GU5mEL0VAWyhb7XizN6sTebyt/veBJmAd1LSOqo123rXjENK1tiai', 'Ikeja, Lagos', '2025-01-07', '67500.00', '2025-02-18 13:31:20'),
(13, 'SD2025006', 'Joy', 'Divine', '2004-09-12', 'Female', 'JSS2', '09137651963', '$2y$10$l5lx8n1sVe7lSdnh6SL2cujRQDy2P9NJuBl9kCqb5C7ThiS/gZPVu', 'Kosofe, Lagos', '2025-01-09', '67500.00', '2025-02-18 15:52:34'),
(14, 'SD2025007', 'Ayomide', 'Jessica', '2005-07-06', 'Female', 'JSS3', '081726273900', '$2y$10$khvE4QxhRXiGrY.lgEICbuzdgvqa8imIqXUKYhWDFozMzhzJ4L3Ie', 'Mushin, Lagos', '2025-01-08', '70000.00', '2025-02-18 15:56:36'),
(15, 'SD2025008', 'David', 'Daniel', '2004-10-29', 'Male', 'JSS3', '07064379041', '$2y$10$/GBIbdvpGBTPIIv7wrfcBOclFP6x9ecmTFqU7vXYut./rpRuISojK', 'Oshodi, Lagos', '2025-01-07', '70000.00', '2025-02-18 16:09:09'),
(16, 'SD2025009', 'Peter', 'Kingsley', '2004-07-11', 'Male', 'JSS3', '09086424426', '$2y$10$du33R6h22ULjPrNrqVTXlOg0yCHR7yj13vdTBHDs9tHFdAFezrJH2', 'Shomolu, Lagos', '2025-01-17', '70000.00', '2025-02-18 16:11:50'),
(17, 'SD2025010', 'Chinonso', 'Mercy', '2003-04-30', 'Female', 'SS1', '09085425733', '$2y$10$laIQvKOM/iIZpuMn.zwzF.UyGig8T983BU2R9owBCwPsknK/ShRAy', 'Surulere, Lagos', '2025-01-13', '75000.00', '2025-02-18 17:39:54'),
(18, 'SD2025011', 'Isaac', 'Israel', '2004-11-29', 'Male', 'SS1', '08153964739', '$2y$10$efn11dYcz2ZvncNgMRi44uDeUQdzAeeskO0IgjHdow6qxbv8Mxo4e', 'Badagry, Lagos', '2025-01-10', '75000.00', '2025-02-18 17:43:12'),
(19, 'SD2025012', 'Peller', 'Jarvis', '2003-08-20', 'Female', 'SS1', '08172559274', '$2y$10$WDn/8gCwItDK.LYPD3EuYOm1IiOOS1ytH2E8AqAdobzN4RdrXInNy', 'Epe, Lagos', '2025-01-06', '75000.00', '2025-02-18 17:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_id` varchar(50) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `student_count` int(11) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_id`, `subject_name`, `class_name`, `student_count`, `teacher_name`, `created_at`) VALUES
(2, 'SDSJ20251001', 'English', 'JSS1', 30, 'Anu Victoria', '2025-02-18 18:13:08'),
(3, 'SDSJ20252001', 'English', 'JSS2', 25, 'Anu Victoria', '2025-02-18 18:14:11'),
(4, 'SDSJ20253001', 'English', 'JSS3', 33, 'Anu Victoria', '2025-02-18 18:16:41'),
(5, 'SDSJ20254001', 'English', 'SS1', 33, 'Anu Victoria', '2025-02-18 18:17:47'),
(6, 'SDSJ20251002', 'Mathematics', 'JSS1', 30, 'Charles Williams', '2025-02-18 18:19:10'),
(7, 'SDSJ20252002', 'Mathematics', 'JSS2', 25, 'Charles Williams', '2025-02-18 18:19:57'),
(8, 'SDSJ20253002', 'Mathematics', 'JSS3', 30, 'Charles Williams', '2025-02-18 18:20:29'),
(9, 'SDSJ20254002', 'Mathematics', 'SS1', 25, 'Charles Williams', '2025-02-18 18:20:53'),
(10, 'SDSJ20251003', 'Civic', 'JSS1', 30, 'Pollyanna Kebe', '2025-02-18 18:22:25'),
(11, 'SDSJ20252003', 'Civic', 'JSS2', 25, 'Pollyanna Kebe', '2025-02-18 18:23:24'),
(12, 'SDSJ20253003', 'Civic', 'JSS3', 30, 'Pollyanna Kebe', '2025-02-18 18:23:54'),
(13, 'SDSJ20254003', 'Physics', 'SS1', 25, 'Paul Sam', '2025-02-18 18:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `term_dates`
--

CREATE TABLE `term_dates` (
  `id` int(11) NOT NULL,
  `term` enum('First Term','Second Term','Third Term') NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `session` varchar(9) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `term_dates`
--

INSERT INTO `term_dates` (`id`, `term`, `start_date`, `end_date`, `session`, `created_at`, `updated_at`) VALUES
(5, 'First Term', '2025-01-06', '2025-03-28', '2024/2025', '2025-02-18 18:09:48', '2025-02-18 18:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `term` enum('first term','second term','third term') NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `date_paid` date NOT NULL,
  `category` enum('tuition fees','school uniform','books','donations','events') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transaction_id`, `term`, `student_id`, `first_name`, `last_name`, `class`, `amount_paid`, `date_paid`, `category`, `created_at`) VALUES
(5, 'SDTR2025001', 'first term', 'SD2025012', 'Peller', 'Jarvis', 'SS1', '75000.00', '2025-01-06', 'tuition fees', '2025-02-18 18:29:55'),
(6, 'SDTR2025002', 'first term', 'SD2025012', 'Peller', 'Jarvis', 'SS1', '10000.00', '2025-02-03', 'school uniform', '2025-02-18 18:31:08'),
(7, 'SDTR2025003', 'first term', 'SD2025012', 'Peller', 'Jarvis', 'SS1', '15000.00', '2025-01-13', 'books', '2025-02-18 18:32:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term_dates`
--
ALTER TABLE `term_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `term_dates`
--
ALTER TABLE `term_dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
