-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 09:04 PM
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
-- Database: `nareng`
--

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

CREATE TABLE `children` (
  `id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `age` int(20) NOT NULL,
  `gender` int(100) NOT NULL,
  `city` varchar(100) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `children`
--

INSERT INTO `children` (`id`, `name`, `subject`, `age`, `gender`, `city`) VALUES
(0, 'زهرا خوشدل', 'نقاشی', 6, 0, 'تبریز'),
(1, 'مهدی علیزاده', 'کاردستی', 7, 1, 'تهران'),
(2, 'آرتین معنوی', 'قصه گویی', 5, 1, 'مشهد'),
(3, 'آوا صادقی', 'لالایی', 9, 0, 'اصفهان'),
(4, 'اسما رضایی', 'کاردستی', 6, 0, 'مشهد'),
(5, 'مهرداد عباسی', 'نقاشی', 6, 1, 'گلستان'),
(0, 'هلنا محمودی', 'قصه گویی', 8, 0, 'اهواز'),
(1, 'آیهان صادقی', 'نقاشی', 7, 1, 'خراسان شمالی'),
(9, 'آریا عظیمی', 'لالایی', 8, 1, 'تهران'),
(10, 'محیا صمدی', 'کاردستی', 6, 0, 'شیراز');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
