-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 12, 2020 at 08:43 PM
-- Server version: 8.0.15
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
-- Database: `auto_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `status`, `student_id`, `subject_id`, `teacher_id`, `date`, `group_id`) VALUES
(6, 'nb', 1, 1, 4, 1568592000, 2),
(7, 'yoq', 2, 1, 4, 1568592000, 2),
(8, 'nb', 3, 1, 4, 1580601600, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, '\"B\" toifa'),
(2, '\"C\" toifa'),
(3, '\"A\" toifa');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `category_id`, `status`) VALUES
(1, '213-16', 1, 1),
(2, '221-16', 1, 1),
(15, 'teset2', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_subjects`
--

CREATE TABLE `group_subjects` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_subjects`
--

INSERT INTO `group_subjects` (`id`, `group_id`, `subject_id`, `status`) VALUES
(11, 2, 1, 1),
(12, 1, 2, 1),
(13, 2, 2, 1),
(14, 2, 3, 1),
(26, 15, 1, 1),
(27, 15, 2, 1),
(28, 15, 3, 1),
(29, 15, 4, 1),
(30, 15, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_teachers`
--

CREATE TABLE `group_teachers` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_teachers`
--

INSERT INTO `group_teachers` (`id`, `group_id`, `teacher_id`, `status`) VALUES
(1, 2, 4, 1),
(2, 1, 4, 1),
(7, 15, 5, 1),
(8, 1, 5, 1),
(9, 2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `date` float NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `mark`, `date`, `student_id`, `subject_id`, `teacher_id`, `group_id`) VALUES
(60, 1, 1567640000, 2, 1, 4, 2),
(61, 45, 1567560000, 1, 1, 4, 2),
(62, 5, 1567810000, 1, 1, 4, 2),
(63, 2, 1567730000, 1, 1, 4, 2),
(64, 11, 1567380000, 1, 1, 4, 2),
(67, 4, 1567810000, 1, 1, 4, 2),
(69, 7, 1567810000, 3, 1, 4, 2),
(70, 7, 1567560000, 3, 1, 4, 2),
(71, 8, 1568760000, 3, 1, 4, 2),
(72, 5, 1568760000, 1, 1, 4, 2),
(73, 4, 1573080000, 2, 1, 4, 2),
(74, 12, 1580600000, 1, 1, 4, 2),
(75, 5, 1580600000, 2, 1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1565552464),
('m190811_190611_init_rbac', 1565552467);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `start_date` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `middle_name`, `address`, `phone_number`, `photo`, `start_date`, `payment`, `group_id`, `status`) VALUES
(1, 's', 'Mamajonov', 'Usmon o\'g\'li', 'Farg\'ona viloyati Bag\'dod tumani', '909074093', 'salimjon.png', 23123432, 1500000, 2, 1),
(2, 'Temur', 'Ochilov', 'Bilmadim', 'Toshkent shahri Yunusobod tumani', '995345324', 'temur.png', 32422432, 1750000, 2, 1),
(3, 'Farrux', 'Choriyev', 'Bilmadim', 'Navoiy viloyati Xatirchi tumani', '944563334', 'farrux.jpg', 2343242, 1500000, 2, 1),
(4, 'Javlon', 'Ochilov', 'Bilmadim', 'Buxoro', '223423432', 'javlon.jpg', 323311313, 2231131, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(1, 'Matematika'),
(2, 'Web ilovalar'),
(3, 'Fizika'),
(4, 'biologiya'),
(6, 'dasturlash');

-- --------------------------------------------------------

--
-- Table structure for table `subject_teachers`
--

CREATE TABLE `subject_teachers` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_teachers`
--

INSERT INTO `subject_teachers` (`id`, `subject_id`, `teacher_id`) VALUES
(1, 1, 4),
(3, 3, 4),
(4, 2, 4),
(5, 4, 4),
(16, 6, 5),
(17, 1, 5),
(18, 3, 5),
(19, 2, 5),
(20, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `speciality` varchar(255) NOT NULL,
  `password_hash` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password_reset_token` varchar(512) DEFAULT NULL,
  `auth_key` varchar(512) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `role_group` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `first_name`, `last_name`, `middle_name`, `address`, `phone_number`, `photo`, `speciality`, `password_hash`, `password_reset_token`, `auth_key`, `status`, `created_at`, `updated_at`, `role_group`) VALUES
(4, 'Odila', 'Islamova', 'Bilmadim', 'Toshkent shahri Yunusobod tumani', '998765676', NULL, 'matematik', 'V1Ðý´`tÛ@wÛ@)b56e27ffd82975accce83e36bd97178eb464b54ae9edc912fbd1b7dd044e82adÁ9Z\"äs6_·ØPæK×ùÐ/[¸\0^RÕË$Ùnò', NULL, 'dXfcS4qIgPYPOz-vYjzLYu21QId3BNsP', 10, 1565511053, 1567678633, 2),
(5, 'admin', 'admin', 'admin', 'admin', '901234567', NULL, 'administrator', 'PÉ{U¤Ô®=­aR	42d99296c7a63e6ef2ef999423902b16c136f39acef480d78f28da779163cdd4	î%¹ûÆ/^=íl~2v¹tZÆªÍº+Üa!¼ÀV', NULL, 'e7U-RyP7IbQBcxawWUTMtLfxAUoAgUsL', 10, 1565547746, 1568721143, 1),
(27, 'Salimjon', 'Mamajonov', 'Usmon o\'g\'li', 'Farg\'ona Bag\'dod tumani', '909074093', 'WIN_20200203_00_38_09_Pro.jpg', 'programmer', '_?ú,æÀ%¸f¾û<\Z9634ac4bfbc55d7c76ea87543ee1f45a09defc6fe81babd90674611997411e47]HÃÜ®RDRÉ	ª°Ì\0{latC^â£o;6', NULL, 'BuC_PP0WnTg1KvKnNYYE31oK56wt3dwG', 10, 1581524928, NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `group_subjects`
--
ALTER TABLE `group_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `group_teachers`
--
ALTER TABLE `group_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_teachers`
--
ALTER TABLE `subject_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `group_subjects`
--
ALTER TABLE `group_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `group_teachers`
--
ALTER TABLE `group_teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subject_teachers`
--
ALTER TABLE `subject_teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `group_id` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `group_subjects`
--
ALTER TABLE `group_subjects`
  ADD CONSTRAINT `group_subjects_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `group_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`);

--
-- Constraints for table `group_teachers`
--
ALTER TABLE `group_teachers`
  ADD CONSTRAINT `group_teachers_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `group_teachers_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  ADD CONSTRAINT `marks_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `marks_ibfk_4` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `subject_teachers`
--
ALTER TABLE `subject_teachers`
  ADD CONSTRAINT `subject_teachers_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  ADD CONSTRAINT `subject_teachers_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
