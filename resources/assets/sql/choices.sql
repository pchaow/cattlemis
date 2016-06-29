-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2016 at 09:00 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cattle`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(10) UNSIGNED NOT NULL,
  `choice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `has_text` tinyint(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `choice`, `type`, `has_text`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'ชาย', 'sex', 0, NULL, '2016-06-23 21:36:31', '2016-06-23 21:36:31'),
(2, 'หญิง', 'sex', 0, NULL, '2016-06-23 21:36:31', '2016-06-23 21:36:31'),
(3, 'หัวหน้าครอบครัว', 'family_status', 0, NULL, '2016-06-23 21:36:31', '2016-06-23 21:36:31'),
(4, 'ภรรยา', 'family_status', 0, NULL, '2016-06-23 21:36:31', '2016-06-23 21:36:31'),
(5, 'บุตร', 'family_status', 0, NULL, '2016-06-23 21:36:31', '2016-06-23 21:36:31'),
(6, 'อื่นๆ', 'family_status', 1, NULL, '2016-06-23 21:36:31', '2016-06-23 21:36:31'),
(7, 'ประถมศึกษา', 'education', 0, NULL, '2016-06-23 21:36:31', '2016-06-23 21:36:31'),
(8, 'มัธยมศึกษา', 'education', 0, NULL, '2016-06-23 21:36:31', '2016-06-23 21:36:31'),
(9, 'ปวช', 'education', 0, NULL, '2016-06-23 21:36:31', '2016-06-23 21:36:31'),
(10, 'ปวส', 'education', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(11, 'ปริญญาตรี', 'education', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(12, 'สูงกว่าปริญญาตรี', 'education', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(13, 'ไม่ได้ศึกษา', 'education', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(14, 'ไม่มีตำแหน่ง', 'social_status', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(15, 'กรรมการหมู่บ้าน', 'social_status', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(16, 'สมาชิก อบต', 'social_status', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(17, 'ผู้ใหญ่บ้าน', 'social_status', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(18, 'อื่นๆ', 'social_status', 1, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(19, 'อาชีพหลัก', 'cattle_job', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(20, 'อาชีพเสริม', 'cattle_job', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(21, 'ทำนา', 'jobtypes', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(22, 'เลี้ยงโคเนื้อ', 'jobtypes', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(23, 'รับจ้าง', 'jobtypes', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(24, 'ประมง', 'jobtypes', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(25, 'ข้าราชการ', 'jobtypes', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(26, 'ค้าขาย', 'jobtypes', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(27, 'ทำสวน', 'jobtypes', 1, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(28, 'ทำไร่', 'jobtypes', 1, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(29, 'อื่นๆ', 'jobtypes', 1, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(30, '1,000 - 10,000 บาท/ปี', 'income_range', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(31, '10,000 - 50,000 บาท/ปี', 'income_range', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(32, '50,000 - 100,000 บาท/ปี', 'income_range', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(33, '100,000 - 150,000 บาท/ปี', 'income_range', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(34, 'มากกว่า 150,000 บาท/ปี', 'income_range', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(35, 'โสด', 'personal_status', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(36, 'สมรส', 'personal_status', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(37, 'หย่า', 'personal_status', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(38, 'เลี้ยงไว้จำหน่ายเป็นโคขุน', 'farm_purposes', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(39, 'เลี้ยงไว้เพื่อเป็นพ่อพันธุ์และแม่พันธุ์', 'farm_purposes', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(40, 'เลี้ยงไว้เพื่อใช้แรงงาน', 'farm_purposes', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(41, 'เพื่อผลิตลูกขาย', 'farm_purposes', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(42, 'เลี้ยงไว้เพื่อความสวยงาม/การแข่งขัน', 'farm_purposes', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(43, 'อื่นๆ', 'farm_purposes', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(44, 'มี', 'farm_record', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(45, 'ไม่มี', 'farm_record', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(46, 'พ่อพันธุ์โคเนื้อที่เลี้ยง', 'master_breeding_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(47, 'แม่พันธุ์โคเนื้อที่เลี้ยง', 'master_breeding_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(48, 'โคเพศผู้อายุมากกว่า 6 เดือนขึ้นไปแต่ไม่ใช่พ่อพันธุ์คุมฝูง', 'master_breeding_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(49, 'โคเพศเมียอายุมากกว่า 6 เดือนขึ้นไปแต่ยังไม่ตั้งท้อง', 'master_breeding_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(50, 'ลูกโคเพศผู้อายุน้อยกว่า 6 เดือน', 'master_breeding_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(51, 'ลูกโคเพศเมียอายุน้อยกว่า 6 เดือน', 'master_breeding_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(52, 'พันธุ์พื้นเมือง', 'male_breeding_types', 1, 46, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(53, 'พันธุ์แท้จากต่างประเทศ', 'male_breeding_types', 0, 46, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(54, 'พันธุ์ลูกผสมระหว่าง', 'male_breeding_types', 0, 46, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(55, 'พันธุ์อื่นๆ', 'male_breeding_types', 1, 46, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(56, 'บราห์มัน', 'male_int_breeding_types', 1, 53, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(57, 'ชาร์โรเล่ส์', 'male_int_breeding_types', 1, 53, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(58, 'อินดูบราซิล', 'male_int_breeding_types', 1, 53, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(59, 'พื้นเมือง-บราห์มัน', 'male_mixed_breeding_types', 1, 54, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(60, 'พื้นเมือง-ชาร์โรเล่ส์', 'male_mixed_breeding_types', 1, 54, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(61, 'พื้นเมือง-อินดูบราซิล', 'male_mixed_breeding_types', 1, 54, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(62, 'พันธุ์พื้นเมือง', 'female_breeding_types', 1, 47, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(63, 'พันธุ์แท้จากต่างประเทศ', 'female_breeding_types', 0, 47, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(64, 'พันธุ์ลูกผสมระหว่าง', 'female_breeding_types', 0, 47, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(65, 'พันธุ์อื่นๆ', 'female_breeding_types', 1, 47, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(66, 'บราห์มัน', 'female_int_breeding_types', 1, 63, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(67, 'ชาร์โรเล่ส์', 'female_int_breeding_types', 1, 63, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(68, 'อินดูบราซิล', 'female_int_breeding_types', 1, 63, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(69, 'พื้นเมือง-บราห์มัน', 'female_mixed_breeding_types', 1, 64, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(70, 'พื้นเมือง-ชาร์โรเล่ส์', 'female_mixed_breeding_types', 1, 64, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(71, 'พื้นเมือง-อินดูบราซิล', 'female_mixed_breeding_types', 1, 64, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(72, 'พันธุ์พื้นเมือง', 'male_over_six_breeding_types', 1, 48, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(73, 'พันธุ์แท้จากต่างประเทศ', 'male_over_six_breeding_types', 0, 48, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(74, 'พันธุ์ลูกผสมระหว่าง', 'male_over_six_breeding_types', 0, 48, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(75, 'พันธุ์อื่นๆ', 'male_over_six_breeding_types', 1, 48, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(76, 'บราห์มัน', 'male_over_six_int_breeding_types', 1, 73, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(77, 'ชาร์โรเล่ส์', 'male_over_six_int_breeding_types', 1, 73, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(78, 'อินดูบราซิล', 'male_over_six_int_breeding_types', 1, 73, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(79, 'พื้นเมือง-บราห์มัน', 'male_over_six_mixed_breeding_types', 1, 74, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(80, 'พื้นเมือง-ชาร์โรเล่ส์', 'male_over_six_mixed_breeding_types', 1, 74, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(81, 'พื้นเมือง-อินดูบราซิล', 'male_over_six_mixed_breeding_types', 1, 74, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(82, 'พันธุ์พื้นเมือง', 'female_over_six_breeding_types', 1, 48, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(83, 'พันธุ์แท้จากต่างประเทศ', 'female_over_six_breeding_types', 0, 48, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(84, 'พันธุ์ลูกผสมระหว่าง', 'female_over_six_breeding_types', 0, 48, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(85, 'พันธุ์อื่นๆ', 'female_over_six_breeding_types', 1, 49, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(86, 'บราห์มัน', 'female_over_six_int_breeding_types', 1, 83, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(87, 'ชาร์โรเล่ส์', 'female_over_six_int_breeding_types', 1, 83, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(88, 'อินดูบราซิล', 'female_over_six_int_breeding_types', 1, 83, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(89, 'พื้นเมือง-บราห์มัน', 'female_over_six_mixed_breeding_types', 1, 84, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(90, 'พื้นเมือง-ชาร์โรเล่ส์', 'female_over_six_mixed_breeding_types', 1, 84, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(91, 'พื้นเมือง-อินดูบราซิล', 'female_over_six_mixed_breeding_types', 1, 84, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(92, 'พันธุ์พื้นเมือง', 'male_under_six_breeding_types', 1, 50, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(93, 'พันธุ์แท้จากต่างประเทศ', 'male_under_six_breeding_types', 0, 50, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(94, 'พันธุ์ลูกผสมระหว่าง', 'male_under_six_breeding_types', 0, 50, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(95, 'พันธุ์อื่นๆ', 'male_under_six_breeding_types', 1, 50, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(96, 'บราห์มัน', 'male_under_six_int_breeding_types', 1, 93, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(97, 'ชาร์โรเล่ส์', 'male_under_six_int_breeding_types', 1, 93, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(98, 'อินดูบราซิล', 'male_under_six_int_breeding_types', 1, 93, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(99, 'พื้นเมือง-บราห์มัน', 'male_under_six_mixed_breeding_types', 1, 94, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(100, 'พื้นเมือง-ชาร์โรเล่ส์', 'male_under_six_mixed_breeding_types', 1, 94, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(101, 'พื้นเมือง-อินดูบราซิล', 'male_under_six_mixed_breeding_types', 1, 94, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(102, 'พันธุ์พื้นเมือง', 'female_under_six_breeding_types', 1, 51, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(103, 'พันธุ์แท้จากต่างประเทศ', 'female_under_six_breeding_types', 0, 51, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(104, 'พันธุ์ลูกผสมระหว่าง', 'female_under_six_breeding_types', 0, 51, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(105, 'พันธุ์อื่นๆ', 'female_under_six_breeding_types', 1, 51, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(106, 'บราห์มัน', 'female_under_six_int_breeding_types', 1, 103, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(107, 'ชาร์โรเล่ส์', 'female_under_six_int_breeding_types', 1, 103, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(108, 'อินดูบราซิล', 'female_under_six_int_breeding_types', 1, 103, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(109, 'พื้นเมือง-บราห์มัน', 'female_under_six_mixed_breeding_types', 1, 104, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(110, 'พื้นเมือง-ชาร์โรเล่ส์', 'female_under_six_mixed_breeding_types', 1, 104, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(111, 'พื้นเมือง-อินดูบราซิล', 'female_under_six_mixed_breeding_types', 1, 104, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(112, 'น้อยกว่า1ปี', 'farm_exp', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(113, '1-3ปี', 'farm_exp', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(114, '4-6ปี', 'farm_exp', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(115, '7-10ปี', 'farm_exp', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(116, '10ปีขึ้นไป', 'farm_exp', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(117, 'เลี้ยงน้อยลง', 'farm_future', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(118, 'เลี้ยงเพิ่มขึ้น', 'farm_future', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(119, 'ไม่แน่ใจ', 'farm_future', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(120, 'ขึ้นทะเบียนแล้ว', 'farm_register_status', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(121, 'ไม่ได้ขึ้นทะเบียน', 'farm_register_status', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(122, 'ได้การรับรองมาตรฐานฟาร์ม', 'farm_register', 0, 120, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(123, 'ไม่ได้รับการรับรองมาตรฐานฟาร์ม', 'farm_register', 0, 120, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(124, 'อยู่ระหว่างการขอการรับรอง', 'farm_register', 0, 120, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(125, 'อื่นๆ', 'farm_register', 1, 120, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(126, 'ได้รับการตรวจ', 'farm_disease_check', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(127, 'ไม่ได้รับการตรวจ', 'farm_disease_check', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(128, 'มี', 'abortion', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(129, 'ไม่มี', 'abortion', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(130, 'มี', 'tuberculosis', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(131, 'ไม่มี', 'tuberculosis', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(132, 'มี', 'foot_mouth_disease', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(133, 'ไม่มี', 'foot_mouth_disease', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(134, 'ชลประทาน', 'water_source_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(135, 'บ่อบาดาล', 'water_source_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(136, 'น้ำประปา', 'water_source_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(137, 'บ่อน้ำตื้น', 'water_source_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(138, 'อื่นๆ', 'water_source_types', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(139, 'ขังคอกตลอดเวลา', 'take_care_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(140, 'กึ่งขังกึ่งปล่อย', 'take_care_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(141, 'ปล่อยทุ่ง', 'take_care_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(142, 'มีพื้นที่ถือครอง', 'own_land', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(143, 'ไม่มีพื้นที่ถือครอง', 'own_land', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(144, 'โฉนด', 'sub_own_lands', 1, 142, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(145, 'นส.3', 'sub_own_lands', 1, 142, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(146, 'สปก.', 'sub_own_lands', 1, 142, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(147, 'อื่นๆ', 'sub_own_lands', 1, 142, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(148, 'เช่า', 'rent_land', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(149, 'ไม่เช่า', 'rent_land', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(150, 'มีพื้นที่', 'use_land', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(151, 'ไม่มีพื้นที่', 'use_land', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(152, 'คอก', 'sub_use_lands', 1, 150, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(153, 'พื้นที่ปลูกหญ้า', 'sub_use_lands', 1, 150, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(154, 'หญ้าชนิดอะไร', 'sub_use_lands', 1, 150, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(155, 'อาหารหยาบอย่างเดียว', 'feed_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(156, 'ทั้งอาหารข้นและอาหารหยาบ', 'feed_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(157, 'อาหารผสมครบส่วน(TMR)', 'feed_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(158, 'บริษัท', 'feed_sources', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(159, 'สหกรณ์', 'feed_sources', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(160, 'ผสมเองภายในฟาร์ม', 'feed_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(161, 'เคยให้', 'minerals_feed', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(162, 'ไม่เคยให้', 'minerals_feed', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(163, 'ให้เป็นบางครั้ง', 'sub_minerals_feed', 0, 161, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(164, 'ให้ตลอดทั้งปี', 'sub_minerals_feed', 0, 161, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(165, 'สำรอง', 'feedstock', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(166, 'ไม่สำรอง', 'feedstock', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(167, 'ฟางข้าวหรือเปลือกข้าวโพดอัดก้อน', 'feedstock_types', 0, 165, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(168, 'ฟางข้าวมัด', 'feedstock_types', 0, 165, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(169, 'ฟางข้าวหรือเปลือกข้าวโพดหมักหรือปรุงแต่ง', 'feedstock_types', 0, 165, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(170, 'ที่ส่วนตัวหรือไร่นาตัวเอง', 'feed_summer_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(171, 'ที่สาธารณะประโยชน์', 'feed_summer_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(172, 'แปลงปลูกหญ้าของตนเอง', 'feed_summer_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(173, 'ตามไร่นาของคนอื่น', 'feed_summer_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(174, 'ฟางข้าวหรือเปลือกข้าวโพดแห้ง', 'feed_summer_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(175, 'ฟางข้าวหรือเปลือกข้าวโพดหมักหรือปรุงแต่งเก็บไว้', 'feed_summer_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(176, 'ใช้การผสมเทียม', 'farm_breeding_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(177, 'ใช้พ่อพันธุ์คุมฝูง', 'farm_breeding_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(178, 'ใช้ทั้งการผสมเทียมและพ่อพันธุ์คุมฝูง', 'farm_breeding_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(179, 'กรมปศุสัตว์', 'inseminate_sources', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(180, 'เอกชน', 'inseminate_sources', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(181, 'สถานศึกษา', 'inseminate_sources', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(182, 'หน่วยทหารพัฒนา', 'inseminate_sources', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(183, 'อื่นๆ', 'inseminate_sources', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(184, 'เจ้าหน้าที่ของกรมปศุสัตว์', 'breeders', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(185, 'ผสมด้วยตนเอง', 'breeders', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(186, 'สถานศึกษา', 'breeders', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(187, 'เจ้าหน้าที่จากหน่วยทหารพัฒนา', 'breeders', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(188, 'อื่นๆ', 'breeders', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(189, 'มีการตาย(จำนวนตัว)', 'cattle_death', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(190, 'ไม่มีการตาย', 'cattle_death', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(191, 'แม่โคไม่มีน้ำนมหลังคลอด', 'cattle_death_causes', 0, 189, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(192, 'ท้องร่วงหรือท้องเสีย', 'cattle_death_causes', 0, 189, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(193, 'แม่โคตกเลือดหลังคลอดหรือแท้งลูก', 'cattle_death_causes', 0, 189, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(194, 'ท้องอืด', 'cattle_death_causes', 0, 189, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(195, 'ปอดบวม', 'cattle_death_causes', 0, 189, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(196, 'พยาธิภายใน', 'cattle_death_causes', 0, 189, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(197, 'อื่นๆ', 'cattle_death_causes', 1, 189, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(198, 'เจ้าหน้าที่กรมปศุสัตว์', 'disease_cured_by', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(199, 'อาสาปศุสัตว์(อ.ส.ป.)', 'disease_cured_by', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(200, 'รักษาเอง', 'disease_cured_by', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(201, 'อื่นๆ', 'disease_cured_by', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(202, 'ได้ทำ', 'dewormed_amount', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(203, 'ไม่ได้ทำ', 'dewormed_amount', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(204, 'ทำ', 'vaccine_ever', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(205, 'ไม่ได้ทำ', 'vaccine_ever', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(206, 'เจ้าหน้าที่', 'vaccined_by', 0, 204, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(207, 'ทำเอง', 'vaccined_by', 0, 204, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(208, 'ขายเพื่อเป็นรายได้จำนวน(บาท/ปี)', 'cattle_dung_uses', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(209, 'ใช้เป็นปุ๋ยคอกสำหรับปลูกพืช', 'cattle_dung_uses', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(210, 'ทำแก๊สชีวภาพใช้ในครัวเรือน', 'cattle_dung_uses', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(211, 'มีบ่อแล้ว ใช้งานได้ดี', 'biogas_status', 0, 210, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(212, 'มีบ่อแล้ว แต่ใข้งานไม่ได้', 'biogas_status', 0, 210, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(213, 'ใช้เงินทุนของตัวเอง(บาท)', 'budget_sources', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(214, 'เงินกู้', 'budget_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(215, 'ใช้ทั้งทุนของตัวเองและเงินกู้', 'budget_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(216, 'เงินทุนกู้จาก ธ.ก.ส.', 'loan_types', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(217, 'เงินกู้จากธนาคารพาณิชย์(ระบุธนาคาร)', 'loan_types', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(218, 'เงินทุนกู้จากกองทุนหมู่บ้าน(บาท)', 'loan_types', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(219, 'เงินทุนกู้ยืมนอกระบบ', 'loan_types', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(220, 'พ่อค้าคนกลาง', 'seller_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(221, 'สหกรณ์', 'seller_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(222, 'ชำแหละจำหน่ายเอง', 'seller_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(223, 'อื่นๆ', 'seller_types', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(224, 'ประมาณด้วยสายตา', 'cattle_sale_methods', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(225, 'ขายตามราคาน้ำหนักมีชีวิต', 'cattle_sale_methods', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(226, 'ขายตามราคาน้ำหนักซากและเกรดซาก', 'cattle_sale_methods', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(227, 'กลุ่มวิสาหกิจชุมชน', 'group_joins', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(228, 'สหกรณ์โคเนื้อ', 'group_joins', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(229, 'ต้องการ', 'group_join_future', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(230, 'ไม่ต้องการ', 'group_join_future', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(231, 'ความรู้ด้านการจัดการ', 'cooperative_help_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(232, 'การรักษาโรค', 'cooperative_help_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(233, 'อาหาร', 'cooperative_help_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(234, 'พันธุ์', 'cooperative_help_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(235, 'การผสมเทียม', 'cooperative_help_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(236, 'การเหนี่ยวนำการเป็นสัด', 'cooperative_help_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(237, 'ไม่ต้องการ', 'cooperative_help_types', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(238, 'อื่นๆ', 'cooperative_help_types', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(239, 'ต้องการ', 'feed_purchase_cooperative', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(240, 'ไม่ต้องการ', 'feed_purchase_cooperative', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(241, 'พ่อพันธ์', 'cattle_sales', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(242, 'แม่พันธ์', 'cattle_sales', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(243, 'โคขุน', 'cattle_sales', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(244, 'โครุ่น', 'cattle_sales', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(245, 'อื่นๆ', 'cattle_sales', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(246, 'มากที่สุด', 'sale_satisfaction', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(247, 'มาก', 'sale_satisfaction', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(248, 'ปานกลาง', 'sale_satisfaction', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(249, 'น้อย', 'sale_satisfaction', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(250, 'น้อยที่สุด', 'sale_satisfaction', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(251, 'กรมปศุสัตว์', 'support_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(252, 'องค์กรปกครองส่วนท้องถิ่น(อบต. อบจ. เทศบาล)', 'support_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(253, 'เอกชน', 'support_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(254, 'สำนักงานการปฏิรูปที่ดินเพื่อการเกษตร(ส.ป.ก.)', 'support_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(255, 'อื่นๆ(กลุ่มผู้เลี้ยงโคในหมู่บ้าน)', 'support_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(256, 'ไม่เคยได้รับบริการจากหน่วยงานใดๆ', 'support_sources', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(257, 'เคย', 'support_visit', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(258, 'ไม่เคย', 'support_visit', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(259, 'เคย', 'production_support', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(260, 'ไม่เคย', 'production_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(261, 'เคย', 'cattle_heath_support', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(262, 'ไม่เคย', 'cattle_heath_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(263, 'เคย', 'training_support', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(264, 'ไม่เคย', 'training_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(265, 'เคย', 'observe_support', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(266, 'ไม่เคย', 'observe_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(267, 'เคย', 'female_breeder_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(268, 'ไม่เคย', 'female_breeder_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
