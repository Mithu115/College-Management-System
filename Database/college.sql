-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 06:43 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_result`
--

CREATE TABLE `class_result` (
  `class_result_id` int(11) NOT NULL,
  `roll_no` varchar(30) NOT NULL,
  `course_code` varchar(30) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `total_marks` varchar(11) NOT NULL,
  `obtain_marks` varchar(11) NOT NULL,
  `result_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_result`
--

INSERT INTO `class_result` (`class_result_id`, `roll_no`, `course_code`, `subject_code`, `semester`, `total_marks`, `obtain_marks`, `result_date`) VALUES
(3, '27', 'MCS', 'OOP', '2', '100', '92', '10-03-20'),
(4, '29', 'MCS', 'OOP', '2', '100', '98', '10-03-20'),
(5, '31', 'MCS', 'OOP', '2', '100', '96', '10-03-20'),
(6, '33', 'MCS', 'OOP', '2', '100', '97', '10-03-20'),
(7, '34', 'MCS', 'OOP', '2', '100', '94', '10-03-20'),
(8, '35', 'MCS', 'OOP', '2', '100', '91', '10-03-20'),
(10, 'MCS-S19-1', 'MCS', 'DBMS', '2', '100', '98', '10-03-20'),
(11, '25', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(12, '27', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(13, '29', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(14, '31', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(15, '33', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(16, 'MCS-S19-1', 'MCS', 'SE', '2', '100', '64', '10-03-20'),
(17, '35', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(18, '36', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(28, 'MCS-S19-1', 'MCS', 'DLD', '2', '100', '76', '29-03-20'),
(35, '', '', '', '', '', '', '29-03-20'),
(36, '', '', '', '', '', '', '29-03-20'),
(41, '', '', '', '', '', '', '30-03-20'),
(42, '', '', '', '', '', '', '30-03-20'),
(43, '', '', '', '', '', '', '30-03-20'),
(44, '', '', '', '', '', '', '30-03-20'),
(45, '', '', '', '', '', '', '30-03-20'),
(46, 'MCS-S19-1', 'MCS', 'SE', '2', '100', '80', '30-03-20'),
(47, '', '', '', '', '', '', '30-03-20'),
(48, '', '', '', '', '', '', '30-03-20'),
(49, '', '', '', '', '', '', '30-03-20'),
(50, '', '', '', '', '', '', '30-03-20'),
(51, '', '', '', '', '', '', '30-03-20'),
(52, '', '', '', '', '', '', '30-03-20'),
(53, '', '', '', '', '', '', '30-03-20'),
(54, '', '', '', '', '', '', '30-03-20'),
(55, '1001', '123', '1', '1', '100', '50', '22-06-21'),
(56, '1001', '123', '1', '1', '100', '50', '22-06-21'),
(57, '1001', '123', '1', '1', '100', '50', '22-06-21'),
(58, '1001', 'Computer', 'HTML123', '1', '100', '50', '27-06-21'),
(59, '1001', 'Computer', 'WP123', '1', '100', '50', '27-06-21'),
(60, '1001', 'Computer', 'HTML123', '1', '100', '50', '27-06-21'),
(61, '1002', 'Computer', 'HTML123', '1', '100', '50', '27-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `semester_or_year` varchar(10) NOT NULL,
  `no_of_year` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_name`, `semester_or_year`, `no_of_year`) VALUES
('Computer T', 'PWAD', '4', 1),
('N12', '.NET', '4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_subjects`
--

CREATE TABLE `course_subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `credit_hours` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_subjects`
--

INSERT INTO `course_subjects` (`subject_code`, `subject_name`, `course_code`, `semester`, `credit_hours`) VALUES
('C3', 'CSS3', 'Computer', 1, 4),
('HTML123', 'HTML5', 'Computer', 1, 4),
('P5', 'PHP', 'Computer', 1, 4),
('WP123', 'Wordpress', 'Computer', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `account` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `user_id`, `Password`, `Role`, `account`) VALUES
(2, 'admin@gmail.com', '1234', 'Admin', ''),
(6, '1001', '1234', 'Student', 'Activate'),
(8, 'amin@gmail.com', '1234', 'Teacher', 'Activate'),
(9, '1002', '1234', 'Student', 'Activate'),
(10, 'hasan@gmail.com', '1234', 'Teacher', ''),
(11, 'ali@gmail.com', '1234', 'Teacher', ''),
(12, 'tonny@gmail.com', '1234', 'Teacher', '');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `session` varchar(30) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `session`, `created_date`) VALUES
(1, '2021', '2021-06-27 09:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `attendance_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`attendance_id`, `course_code`, `subject_code`, `semester`, `student_id`, `attendance`, `attendance_date`) VALUES
(1, '123', '1', 1, '1001', 1, '22-06-21'),
(2, '123', '1', 1, '1001', 1, '26-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `student_course_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`student_course_id`, `course_code`, `semester`, `roll_no`, `subject_code`, `session`, `assign_date`) VALUES
(0, '123', 1, '1001', '1', '', '22-06-21'),
(8, 'Computer', 1, '1001', 'HTML123', '', '27-06-21'),
(9, 'Computer', 1, '1001', 'WP123', '', '27-06-21'),
(10, 'Computer', 1, '1002', 'HTML123', '', '27-06-21'),
(11, 'Computer', 1, '1002', 'WP123', '', '27-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `fee_voucher` int(11) NOT NULL,
  `roll_no` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_fee`
--

INSERT INTO `student_fee` (`fee_voucher`, `roll_no`, `amount`, `posting_date`, `status`) VALUES
(3, '1001', 500, '2021-06-22 11:29:27', 'Paid'),
(4, '1001', 500, '2021-06-22 11:48:46', 'Paid'),
(5, '1001', 500, '2021-06-22 12:48:49', 'Paid'),
(6, '1001', 500, '2021-06-27 09:41:28', 'Paid'),
(7, '1001', 500, '2021-06-30 12:46:42', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `roll_no` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile_no` varchar(11) NOT NULL,
  `course_code` varchar(11) NOT NULL,
  `session` varchar(10) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `prospectus_issued` varchar(10) NOT NULL,
  `prospectus_amount` varchar(10) NOT NULL,
  `form_b` varchar(20) NOT NULL,
  `applicant_status` varchar(20) NOT NULL,
  `application_status` varchar(20) NOT NULL,
  `cnic` varchar(15) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `other_phone` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(150) NOT NULL,
  `current_address` varchar(150) NOT NULL,
  `place_of_birth` varchar(150) NOT NULL,
  `matric_complition_date` varchar(10) NOT NULL,
  `matric_awarded_date` varchar(10) NOT NULL,
  `matric_certificate` varchar(100) NOT NULL,
  `fa_complition_date` varchar(10) NOT NULL,
  `fa_awarded_date` varchar(10) NOT NULL,
  `fa_certificate` varchar(100) NOT NULL,
  `ba_complition_date` varchar(10) NOT NULL,
  `ba_awarded_date` varchar(10) NOT NULL,
  `ba_certificate` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `obtain_marks` int(11) NOT NULL,
  `state` varchar(20) NOT NULL,
  `admission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`roll_no`, `first_name`, `middle_name`, `last_name`, `father_name`, `email`, `mobile_no`, `course_code`, `session`, `profile_image`, `prospectus_issued`, `prospectus_amount`, `form_b`, `applicant_status`, `application_status`, `cnic`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `matric_complition_date`, `matric_awarded_date`, `matric_certificate`, `fa_complition_date`, `fa_awarded_date`, `fa_certificate`, `ba_complition_date`, `ba_awarded_date`, `ba_certificate`, `semester`, `total_marks`, `obtain_marks`, `state`, `admission_date`) VALUES
('1001', 'Mazharul', 'Mithu', 'Alam', 'Tomij', 'alam.rit115@gmail.com', '1234330435', '123', 'S19', '1109.jpg', 'Yes', 'Select Opt', '', 'Select Option', 'Select Option', '', '', '', 'Select', 'Kisoregonj', 'Kisorgonj', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-06-26 18:07:34'),
('1002', 'Thasan', 'MD', 'Faruk', 'Tomij', 'tasan@gmail.com', '01711111111', '123', 'S19', '', 'Select Opt', 'Select Opt', '', 'Admitted', 'Approved', '', '', '', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2021-06-27 19:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `attendance_id` int(11) NOT NULL,
  `teacher_id` varchar(30) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`attendance_id`, `teacher_id`, `attendance`, `attendance_date`) VALUES
(14, '4', 1, '27-06-21'),
(15, '4', 1, '27-06-21'),
(16, '4', 0, '27-06-21'),
(17, '4', 0, '27-06-21'),
(18, '4', 0, '27-06-21'),
(19, '4', 1, '27-06-21'),
(24, '4', 1, '27-06-21'),
(25, '4', 1, '27-06-21'),
(26, '5', 1, '29-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_courses`
--

CREATE TABLE `teacher_courses` (
  `teacher_courses_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `teacher_id` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL,
  `total_classes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_courses`
--

INSERT INTO `teacher_courses` (`teacher_courses_id`, `course_code`, `semester`, `teacher_id`, `subject_code`, `assign_date`, `total_classes`) VALUES
(1, '123', 1, '2', 'HTML5', '22-06-21', 50),
(2, 'Computer', 1, '4', 'HTML5', '27-06-21', 5),
(3, 'Computer', 1, '4', 'Wordpress', '27-06-21', 5),
(4, 'Computer', 1, '4', 'HTML5', '27-06-21', 5),
(5, 'Select Cou', 1, '5', 'CSS3', '29-06-21', 5);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `profile_image` blob NOT NULL,
  `teacher_status` varchar(10) NOT NULL,
  `application_status` varchar(10) NOT NULL,
  `cnic` varchar(15) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `other_phone` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(100) NOT NULL,
  `current_address` varchar(100) NOT NULL,
  `place_of_birth` varchar(50) NOT NULL,
  `matric_complition_date` varchar(10) NOT NULL,
  `matric_awarded_date` varchar(10) NOT NULL,
  `matric_certificate` varchar(100) NOT NULL,
  `fa_complition_date` varchar(10) NOT NULL,
  `fa_awarded_date` varchar(10) NOT NULL,
  `fa_certificate` varchar(100) NOT NULL,
  `ba_complition_date` varchar(10) NOT NULL,
  `ba_awarded_date` varchar(10) NOT NULL,
  `ba_certificate` varchar(100) NOT NULL,
  `ma_complition_date` varchar(10) NOT NULL,
  `ma_awarded_date` varchar(100) NOT NULL,
  `ma_certificate` varchar(101) NOT NULL,
  `last_qualification` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `hire_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`teacher_id`, `first_name`, `middle_name`, `last_name`, `father_name`, `email`, `phone_no`, `profile_image`, `teacher_status`, `application_status`, `cnic`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `matric_complition_date`, `matric_awarded_date`, `matric_certificate`, `fa_complition_date`, `fa_awarded_date`, `fa_certificate`, `ba_complition_date`, `ba_awarded_date`, `ba_certificate`, `ma_complition_date`, `ma_awarded_date`, `ma_certificate`, `last_qualification`, `state`, `hire_date`) VALUES
(4, 'Amanur', 'Rahman', 'Aman', '', 'amin@gmail.com', '1234330435', 0x636172642e706e67, 'Permanent', 'Yes', '', '', 1234330435, 'Male', '', 'Dhaka', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Msc', '', '26-06-21'),
(5, 'Aminur', 'Hasan', 'Amin', '', 'hasan@gmail.com', '01718558349', 0x636172642e706e67, 'Permanent', 'Yes', '', '', 0, 'Male', 'Dhaka', 'Dhaka', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '29-06-21'),
(6, 'Mohamad', 'Ali', 'Rahman', '', 'ali@gmail.com', '', '', 'Permanent', 'Yes', '', '', 0, 'Male', 'Airport', 'Airport', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '29-06-21'),
(7, 'CM', 'Tonny', 'Khan', '', 'tonny@gmail.com', '', '', 'Permanent', 'Yes', '', '', 0, 'Female', 'Mirpor', 'Mirpor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '29-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_allowances`
--

CREATE TABLE `teacher_salary_allowances` (
  `teacher_id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `medical_allowance` int(11) NOT NULL,
  `hr_allowance` int(11) NOT NULL,
  `scale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary_allowances`
--

INSERT INTO `teacher_salary_allowances` (`teacher_id`, `basic_salary`, `medical_allowance`, `hr_allowance`, `scale`) VALUES
(2, 7000, 200, 100, 2),
(4, 7000, 20, 100, 2),
(5, 7000, 20, 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_report`
--

CREATE TABLE `teacher_salary_report` (
  `salary_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `paid_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary_report`
--

INSERT INTO `teacher_salary_report` (`salary_id`, `teacher_id`, `total_amount`, `status`, `paid_date`) VALUES
(31, 4, 28000, 'Paid', '2021-06-27 09:23:00'),
(32, 2, 28000, 'Paid', '2021-06-25 14:30:36'),
(33, 2, 28000, 'Paid', '2021-06-27 09:19:13'),
(34, 2, 28000, 'Paid', '2021-06-27 09:19:29'),
(35, 2, 28000, 'Paid', '2021-06-27 09:20:25'),
(36, 4, 15400, 'Paid', '2021-06-27 09:21:57'),
(37, 5, 10500, 'Paid', '2021-06-29 19:06:49'),
(38, 5, 10500, 'Paid', '2021-06-29 19:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `timing_from` varchar(10) NOT NULL,
  `timing_to` varchar(10) NOT NULL,
  `day` varchar(20) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `course_code`, `semester`, `timing_from`, `timing_to`, `day`, `subject_code`, `room_no`) VALUES
(12, '1122', 1, '18:42', '19:42', 'Select Week Day', '1', 10),
(13, '123', 1, '18:45', '19:45', '1', '1', 10),
(14, 'Select Cou', 0, '', '', 'Select Week Day', '1', 0),
(15, 'Select Cou', 0, '', '', 'Select Week Day', '1', 0),
(16, 'Computer', 1, '12:50', '13:50', '1', 'C3', 10),
(17, 'Computer', 1, '12:50', '13:50', '2', 'P5', 11),
(18, 'N12', 1, '12:51', '13:51', '6', 'WP123', 12),
(19, 'N12', 1, '12:51', '13:51', '6', 'WP123', 12),
(20, 'N12', 1, '12:51', '13:51', '6', 'WP123', 12);

-- --------------------------------------------------------

--
-- Table structure for table `weekdays`
--

CREATE TABLE `weekdays` (
  `day_id` int(11) NOT NULL,
  `day_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekdays`
--

INSERT INTO `weekdays` (`day_id`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_result`
--
ALTER TABLE `class_result`
  ADD PRIMARY KEY (`class_result_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course_subjects`
--
ALTER TABLE `course_subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`student_course_id`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`fee_voucher`),
  ADD KEY `roll_no` (`roll_no`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  ADD PRIMARY KEY (`teacher_courses_id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_allowances`
--
ALTER TABLE `teacher_salary_allowances`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weekdays`
--
ALTER TABLE `weekdays`
  ADD PRIMARY KEY (`day_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_result`
--
ALTER TABLE `class_result`
  MODIFY `class_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `student_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_fee`
--
ALTER TABLE `student_fee`
  MODIFY `fee_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  MODIFY `teacher_courses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `weekdays`
--
ALTER TABLE `weekdays`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD CONSTRAINT `teacher_salary_report_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_salary_allowances` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
