-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 06:31 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_eval`
--

-- --------------------------------------------------------

--
-- Table structure for table `atmpt_list`
--

CREATE TABLE `atmpt_list` (
  `id` int(100) NOT NULL,
  `exid` int(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `nq` int(100) NOT NULL,
  `cnq` int(100) NOT NULL,
  `ptg` int(100) NOT NULL,
  `status` int(10) NOT NULL,
  `subtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exm_list`
--

CREATE TABLE `exm_list` (
  `exid` int(100) NOT NULL,
  `exname` varchar(100) NOT NULL,
  `nq` int(50) NOT NULL,
  `desp` varchar(100) NOT NULL,
  `subt` datetime NOT NULL,
  `extime` datetime NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `subject` varchar(100) NOT NULL,
  `accessibility` text DEFAULT NULL,
  `proctoring` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exm_list`
--

INSERT INTO `exm_list` (`exid`, `exname`, `nq`, `desp`, `subt`, `extime`, `datetime`, `subject`, `accessibility`, `proctoring`, `status`) VALUES
(20, 'computer science', 2, 'exams', '2024-11-05 14:54:00', '2024-11-04 14:54:00', '2024-11-04 14:54:30', 'COMPUTER SCIENCE', NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `feedback` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `fname`, `date`, `feedback`) VALUES
(5, 'Teacher Rosey', '2021-12-12 13:01:00', 'Please kindly complete all the homework and submit tomorrow '),
(6, 'Teacher Rosey', '2021-12-13 06:23:18', 'Hello this is an announcement');

-- --------------------------------------------------------

--
-- Table structure for table `qstn_list`
--

CREATE TABLE `qstn_list` (
  `exid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `qstn` varchar(200) NOT NULL,
  `qstn_o1` varchar(100) NOT NULL,
  `qstn_o2` varchar(100) NOT NULL,
  `qstn_o3` varchar(100) NOT NULL,
  `qstn_o4` varchar(100) NOT NULL,
  `qstn_ans` varchar(100) NOT NULL,
  `sno` int(20) NOT NULL,
  `qstn_type` varchar(100) NOT NULL,
  `question` mediumtext DEFAULT NULL,
  `Testcases` mediumtext DEFAULT NULL,
  `TIME_COMPLEXITY` mediumtext DEFAULT NULL,
  `EXPECTED_OUTPUT` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `pword` varchar(255) NOT NULL,
  `fname` char(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(10) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `uname`, `pword`, `fname`, `dob`, `gender`, `email`) VALUES
(10, 'anniefrank', '1f9a884da469fdf263c098fc46891c04', 'Annie Frank', '1889-02-12', 'F', 'anniefrn@yahoo.com'),
(11, 'abraham', '1f9a884da469fdf263c098fc46891c04', 'Abraham Lincoln', '1998-02-12', 'M', 'abraham@usa.com'),
(12, 'mariealx', 'f6fdffe48c908deb0f4c3bd36c032e72', 'Marie Alex', '1790-12-12', 'F', 'mariealex@aol.com');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `pword` varchar(255) NOT NULL,
  `fname` char(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `uname`, `pword`, `fname`, `dob`, `gender`, `email`, `subject`) VALUES
(1, 'teacher', '8d788385431273d11e8b43bb78f3aa41', 'Jack Rosso', '2021-12-01', 'M', 'teacher@teach.com', 'CHEMISTRY'),
(2, 'teacher2', 'ccffb0bb993eeb79059b31e1611ec353', 'Rosey', '2021-12-01', 'F', 'teacher@gmail.com', 'BIOLOGY');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pword` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(1) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pword`, `fname`, `dob`, `gender`, `email`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '2021-12-01', 'M', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `report_templates`
--

CREATE TABLE `report_templates` (
  `id` int(11) NOT NULL,
  `template_name` varchar(100) NOT NULL,
  `metrics` text NOT NULL,
  `filters` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `analytics_data`
--

CREATE TABLE `analytics_data` (
  `id` int(11) NOT NULL,
  `metric_name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comparison_data`
--

CREATE TABLE `comparison_data` (
  `id` int(11) NOT NULL,
  `metric_name` varchar(100) NOT NULL,
  `value1` varchar(100) NOT NULL,
  `value2` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `api_settings`
--

CREATE TABLE `api_settings` (
  `id` int(11) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `api_secret` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_settings`
--

INSERT INTO `api_settings` (`id`, `api_key`, `api_secret`) VALUES
(1, 'default_api_key', 'default_api_secret');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role`, `permissions`) VALUES
(1, 'admin', 'view_dashboard,manage_users,manage_assessments,view_reports'),
(2, 'teacher', 'view_dashboard,manage_assessments,view_reports'),
(3, 'student', 'view_dashboard,view_reports');

-- --------------------------------------------------------

--
-- Table structure for table `help_requests`
--

CREATE TABLE `help_requests` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(300) NOT NULL,
  `message` varchar(3000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `help_requests`
--

INSERT INTO `help_requests` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'John Doe', 'john.doe@example.com', 'I need help with my account.', '2023-10-01 10:00:00'),
(2, 'Jane Smith', 'jane.smith@example.com', 'How do I reset my password?', '2023-10-02 11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `proctoring_logs`
--

CREATE TABLE `proctoring_logs` (
  `id` int(11) NOT NULL,
  `exam_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `violation_type` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `severity` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proctoring_logs`
--

INSERT INTO `proctoring_logs` (`id`, `exam_id`, `user_id`, `violation_type`, `details`, `timestamp`, `severity`) VALUES
(1, 'exam123', 'user123', 'face_not_detected', 'Face not detected for 30 seconds.', '2023-10-01 10:00:00', 'high'),
(2, 'exam123', 'user456', 'multiple_faces', 'Multiple faces detected.', '2023-10-01 10:05:00', 'medium');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atmpt_list`
--
ALTER TABLE `atmpt_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exm_list`
--
ALTER TABLE `exm_list`
  ADD PRIMARY KEY (`exid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qstn_list`
--
ALTER TABLE `qstn_list`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_templates`
--
ALTER TABLE `report_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analytics_data`
--
ALTER TABLE `analytics_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comparison_data`
--
ALTER TABLE `comparison_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_settings`
--
ALTER TABLE `api_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_requests`
--
ALTER TABLE `help_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proctoring_logs`
--
ALTER TABLE `proctoring_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atmpt_list`
--
ALTER TABLE `atmpt_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `exm_list`
--
ALTER TABLE `exm_list`
  MODIFY `exid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `qstn_list`
--
ALTER TABLE `qstn_list`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `report_templates`
--
ALTER TABLE `report_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `analytics_data`
--
ALTER TABLE `analytics_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comparison_data`
--
ALTER TABLE `comparison_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_settings`
--
ALTER TABLE `api_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `help_requests`
--
ALTER TABLE `help_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `proctoring_logs`
--
ALTER TABLE `proctoring_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;