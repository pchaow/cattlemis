-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2016 at 07:37 AM
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
(21, 'ทำนา', 'jobtype', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(22, 'เลี้ยงโคเนื้อ', 'jobtype', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(23, 'รับจ้าง', 'jobtype', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(24, 'ประมง', 'jobtype', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(25, 'ข้าราชการ', 'jobtype', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(26, 'ค้าขาย', 'jobtype', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(27, 'ทำสวน', 'jobtype', 1, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(28, 'ทำไร่', 'jobtype', 1, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(29, 'อื่นๆ', 'jobtype', 1, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(30, '1,000 - 10,000 บาท/ปี', 'income_range', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(31, '10,000 - 50,000 บาท/ปี', 'income_range', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(32, '50,000 - 100,000 บาท/ปี', 'income_range', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(33, '100,000 - 150,000 บาท/ปี', 'income_range', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(34, 'มากกว่า 150,000 บาท/ปี', 'income_range', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(35, 'โสด', 'personal_status', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(36, 'สมรส', 'personal_status', 0, NULL, '2016-06-23 21:36:32', '2016-06-23 21:36:32'),
(37, 'หย่า', 'personal_status', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(38, 'มี', 'farm_record', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(39, 'ไม่มี', 'farm_record', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(40, 'น้อยกว่า1ปี', 'farm_exp', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(41, '1-3ปี', 'farm_exp', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(42, '4-6ปี', 'farm_exp', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(43, '7-10ปี', 'farm_exp', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(44, '10ปีขึ้นไป', 'farm_exp', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(45, 'เลี้ยงน้อยลง', 'farm_future', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(46, 'เลี้ยงเพิ่มขึ้น', 'farm_future', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(47, 'ไม่แน่ใจ', 'farm_future', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(48, 'ได้การรับรองมาตรฐานฟาร์ม', 'farm_register', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(49, 'ไม่ได้รับการรับรองมาตรฐานฟาร์ม', 'farm_register', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(50, 'อยู่ระหว่างการขอการรับรอง', 'farm_register', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(51, 'อื่นๆ', 'farm_register', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(52, 'ได้รับการตรวจ', 'farm_disease_check', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(53, 'ไม่ได้รับการตรวจ', 'farm_disease_check', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(54, 'เลี้ยงไว้จำหน่ายเป็นโคขุน', 'farm_purpose', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(55, 'เลี้ยงไว้เพื่อเป็นพ่อพันธุ์และแม่พันธุ์', 'farm_purpose', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(56, 'เลี้ยงไว้เพื่อใช้แรงงาน', 'farm_purpose', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(57, 'เพื่อผลิตลูกขาย', 'farm_purpose', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(58, 'เลี้ยงไว้เพื่อความสวยงาม/การแข่งขัน', 'farm_purpose', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(59, 'อื่นๆ', 'farm_purpose', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(60, 'พ่อพันธุ์', 'breeding_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(61, 'แม่พันธุ์', 'breeding_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(62, 'โคเพศผู้อายุมากกว่า 6 เดือนขึ้นไปแต่ไม่ใช่พ่อพันธุ์คุมฝูง', 'breeding_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(63, 'โคเพศเมียอายุมากกว่า 6 เดือนขึ้นไปแต่ยังไม่ตั้งท้อง', 'breeding_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(64, 'ลูกโคเพศผู้อายุน้อยกว่า 6 เดือน', 'breeding_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(65, 'ลูกโคเพศเมียอายุน้อยกว่า 6 เดือน', 'breeding_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(66, 'พื้นเมือง', 'cattle_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(67, 'บราห์มัน', 'cattle_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(68, 'ชาร์โรเล่ส์', 'cattle_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(69, 'อินดูบราซิล', 'cattle_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(70, 'พื้นเมือง-บราห์มัน', 'cattle_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(71, 'พื้นเมือง-ชาร์โรเล่ส์', 'cattle_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(72, 'พื้นเมือง-อินดูบราซิล', 'cattle_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(73, 'ค่ายา', 'expense_type', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(74, 'ค่าอาหารและแร่ธาตุ', 'expense_type', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(75, 'อื่นๆ', 'expense_type', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(76, 'มี', 'abortion', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(77, 'ไม่มี', 'abortion', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(78, 'มี', 'tuberculosis', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(79, 'ไม่เคยให้', 'minerals_feed', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(80, 'ให้เป็นบางครั้ง', 'minerals_feed', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(81, 'ให้ตลอดทั้งปี', 'minerals_feed', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(82, 'ชลประทาน', 'water_source_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(83, 'บ่อบาดาล', 'water_source_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(84, 'น้ำประปา', 'water_source_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(85, 'บ่อน้ำตื้น', 'water_source_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(86, 'อื่นๆ', 'water_source_type', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(87, 'ขังคอกตลอดเวลา', 'take_care_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(88, 'กึ่งขังกึ่งปล่อย', 'take_care_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(89, 'ปล่อยทุ่ง', 'take_care_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(90, 'อาหารหยาบอย่างเดียว', 'feed_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(91, 'ทั้งอาหารข้นและอาหารหยาบ', 'feed_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(92, 'อาหารผสมครบส่วน(TMR)', 'feed_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(93, 'บริษัท', 'feed_source', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(94, 'สหกรณ์', 'feed_source', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(95, 'ผสมเองภายในฟาร์ม', 'feed_source', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(96, 'ฟางข้าวหรือเปลือกข้าวโพดอัดก้อน', 'feedstock_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(97, 'ฟางข้าวมัด', 'feedstock_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(98, 'ฟางข้าวหรือเปลือกข้าวโพดหมักหรือปรุงแต่ง', 'feedstock_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(99, 'ไม่สำรอง', 'feedstock_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(100, 'ที่ส่วนตัวหรือไร่นาตัวเอง', 'feed_summer_source', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(101, 'ที่สาธารณะประโยชน์', 'feed_summer_source', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(102, 'แปลงปลูกหญ้าของตนเอง', 'feed_summer_source', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(103, 'ตามไร่นาของคนอื่น', 'feed_summer_source', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(104, 'ฟางข้าวหรือเปลือกข้าวโพดแห้ง', 'feed_summer_source', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(105, 'ฟางข้าวหรือเปลือกข้าวโพดหมักหรือปรุงแต่งเก็บไว้', 'feed_summer_source', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(106, 'ใช้การผสมเทียม', 'farm_breeding_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(107, 'ใช้พ่อพันธุ์คุมฝูง', 'farm_breeding_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(108, 'ใช้ทั้งการผสมเทียมและพ่อพันธุ์คุมฝูง', 'farm_breeding_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(109, 'กรมปศุสัตว์', 'inseminate_source', 0, 108, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(110, 'เอกชน', 'inseminate_source', 0, 108, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(111, 'สถานศึกษา', 'inseminate_source', 1, 108, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(112, 'หน่วยทหารพัฒนา', 'inseminate_source', 0, 108, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(113, 'อื่นๆ', 'inseminate_source', 1, 108, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(114, 'เจ้าหน้าที่ของกรมปศุสัตว์', 'breeder', 0, 108, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(115, 'ผสมด้วยตนเอง', 'breeder', 0, 108, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(116, 'สถานศึกษา', 'breeder', 1, 108, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(117, 'เจ้าหน้าที่จากหน่วยทหารพัฒนา', 'breeder', 0, 108, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(118, 'อื่นๆ', 'breeder', 1, 108, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(119, 'ทำ', 'vaccine_ever', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(120, 'ไม่ได้ทำ', 'vaccine_ever', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(121, 'มีการตาย', 'cattle_death', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(122, 'ไม่มีการตาย', 'cattle_death', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(123, 'แม่โคไม่มีน้ำนมหลังคลอด', 'cattle_death_cause', 0, 123, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(124, 'ท้องร่วงหรือท้องเสีย', 'cattle_death_cause', 0, 121, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(125, 'แม่โคตกเลือดหลังคลอดหรือแท้งลูก', 'cattle_death_cause', 0, 121, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(126, 'ท้องอืด', 'cattle_death_cause', 0, 121, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(127, 'ปอดบวม', 'cattle_death_cause', 0, 121, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(128, 'พยาธิภายใน', 'cattle_death_cause', 0, 121, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(129, 'อื่นๆ', 'cattle_death_cause', 1, 121, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(130, 'ได้ทำ', 'dewormed_amount', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(131, 'ไม่ได้ทำ', 'dewormed_amount', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(132, 'เจ้าหน้าที่กรมปศุสัตว์', 'disease_cured_by', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(133, 'อาสาปศุสัตว์(อ.ส.ป.)', 'disease_cured_by', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(134, 'รักษาเอง', 'disease_cured_by', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(135, 'อื่นๆ', 'disease_cured_by', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(136, 'เจ้าหน้าที่', 'vaccined_by', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(137, 'ทำเอง', 'vaccined_by', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(138, 'ขายเพื่อเป็นรายได้จำนวน(บาท/ปี)', 'cattle_dung_used_for', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(139, 'ใช้เป็นปุ๋ยคอกสำหรับปลูกพืช', 'cattle_dung_used_for', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(140, 'ทำแก๊สชีวภาพใช้ในครัวเรือน', 'cattle_dung_used_for', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(141, 'มีบ่อแล้ว ใช้งานได้ดี', 'biogas_status', 0, 140, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(142, 'มีบ่อแล้ว แต่ใข้งานไม่ได้', 'biogas_status', 0, 140, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(143, 'ใช้เงินทุนของตัวเอง', 'budget_source', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(144, 'เงินกู้', 'budget_source', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(145, 'ใช้ทั้งทุนของตัวเองและเงินกู้', 'budget_source', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(146, 'ประมาณด้วยสายตา', 'cattle_sale_method', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(147, 'ขายตามราคาน้ำหนักมีชีวิต', 'cattle_sale_method', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(148, 'ขายตามราคาน้ำหนักซากและเกรดซาก', 'cattle_sale_method', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(149, 'ต้องการ', 'group_join_future', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(150, 'ไม่ต้องการ', 'group_join_future', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(151, 'ต้องการ', 'feed_purchase_cooperative', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(152, 'ไม่ต้องการ', 'feed_purchase_cooperative', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(153, 'มากที่สุด', 'sale_satisfaction', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(154, 'มาก', 'sale_satisfaction', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(155, 'ปานกลาง', 'sale_satisfaction', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(156, 'น้อย', 'sale_satisfaction', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(157, 'น้อยที่สุด', 'sale_satisfaction', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(158, 'พ่อค้าคนกลาง', 'seller_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(159, 'สหกรณ์', 'seller_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(160, 'ชำแหละจำหน่ายเอง', 'seller_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(161, 'อื่นๆ', 'seller_type', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(162, 'ความรู้ด้านการจัดการ', 'cooperative_help_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(163, 'การรักษาโรค', 'cooperative_help_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(164, 'อาหาร', 'cooperative_help_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(165, 'พันธุ์', 'cooperative_help_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(166, 'การผสมเทียม', 'cooperative_help_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(167, 'การเหนี่ยวนำการเป็นสัด', 'cooperative_help_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(168, 'ไม่ต้องการ', 'cooperative_help_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(169, 'อื่นๆ', 'cooperative_help_type', 1, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(170, 'เคย', 'production_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(171, 'ไม่เคย', 'production_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(172, 'เคย', 'cattle_heath_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(173, 'ไม่เคย', 'cattle_heath_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(174, 'เคย', 'training_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(175, 'ไม่เคย', 'training_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(176, 'เคย', 'observe_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(177, 'ไม่เคย', 'observe_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(178, 'เคย', 'female_breeder_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(179, 'ไม่เคย', 'female_breeder_support', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(180, 'กรมปศุสัตว์', 'support_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(181, 'องค์กรปกครองส่วนท้องถิ่น(อบต. อบจ. เทศบาล)', 'support_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(182, 'เอกชน', 'support_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(183, 'สำนักงานการปฏิรูปที่ดินเพื่อการเกษตร(ส.ป.ก.)', 'support_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(184, 'อื่นๆ(กลุ่มผู้เลี้ยงโคในหมู่บ้าน)', 'support_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(185, 'ไม่เคยได้รับบริการจากหน่วยงานใดๆ', 'support_type', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(186, 'เคย', 'support_visit', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(187, 'ไม่เคย', 'support_visit', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(188, 'ไม่มี', 'tuberculosis', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(189, 'มี', 'foot_mouth_disease', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33'),
(190, 'ไม่มี', 'foot_mouth_disease', 0, NULL, '2016-06-23 21:36:33', '2016-06-23 21:36:33');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
