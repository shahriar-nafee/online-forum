-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2019 at 12:54 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum-tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) UNSIGNED NOT NULL,
  `category_title` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `category_title`) VALUES
(1, 'COMPUTER SCIENCE & ENGINEERING'),
(2, 'BUSINESS ADMINISTRATION'),
(3, 'ENGLISH');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(3) NOT NULL,
  `student_id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `student_id`) VALUES
(1, '2015-2-60-001'),
(1, '2015-2-60-001'),
(1, '2015-2-60-002'),
(1, '2015-2-60-003'),
(1, '2015-2-60-004'),
(1, '2015-2-60-005'),
(2, '2015-2-60-006'),
(2, '2015-2-60-007'),
(2, '2015-2-60-008'),
(2, '2015-2-60-009'),
(2, '2015-2-60-010'),
(3, '2015-2-60-011'),
(3, '2015-2-60-012'),
(3, '2015-2-60-013'),
(3, '2015-2-60-014'),
(3, '2015-2-60-015'),
(4, '2015-2-60-016'),
(4, '2015-2-60-017'),
(4, '2015-2-60-018'),
(4, '2015-2-60-019'),
(4, '2015-2-60-020'),
(5, '2015-2-60-021'),
(5, '2015-2-60-022'),
(5, '2015-2-60-023'),
(5, '2015-2-60-024'),
(5, '2015-2-60-025'),
(6, '2015-2-60-001'),
(6, '2015-2-60-002'),
(6, '2015-2-60-003'),
(6, '2015-2-60-004'),
(6, '2015-2-60-005'),
(7, '2015-2-60-006'),
(7, '2015-2-60-007'),
(7, '2015-2-60-008'),
(7, '2015-2-60-009'),
(7, '2015-2-60-010'),
(8, '2015-2-60-011'),
(8, '2015-2-60-012'),
(8, '2015-2-60-013'),
(8, '2015-2-60-014'),
(8, '2015-2-60-015'),
(9, '2015-2-60-016'),
(9, '2015-2-60-017'),
(9, '2015-2-60-018'),
(9, '2015-2-60-019'),
(9, '2015-2-60-020'),
(10, '2015-2-60-021'),
(10, '2015-2-60-022'),
(10, '2015-2-60-023'),
(10, '2015-2-60-024'),
(10, '2015-2-60-025'),
(11, '2015-2-60-001'),
(11, '2015-2-60-002'),
(11, '2015-2-60-003'),
(11, '2015-2-60-004'),
(11, '2015-2-60-005'),
(12, '2015-2-60-006'),
(12, '2015-2-60-007'),
(12, '2015-2-60-008'),
(12, '2015-2-60-009'),
(12, '2015-2-60-010'),
(13, '2015-2-60-011'),
(13, '2015-2-60-012'),
(13, '2015-2-60-013'),
(13, '2015-2-60-014'),
(13, '2015-2-60-015'),
(14, '2015-2-60-016'),
(14, '2015-2-60-017'),
(14, '2015-2-60-018'),
(14, '2015-2-60-019'),
(14, '2015-2-60-020'),
(15, '2015-2-60-021'),
(15, '2015-2-60-022'),
(15, '2015-2-60-023'),
(15, '2015-2-60-024'),
(15, '2015-2-60-025');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`) VALUES
('2015-2-60-001'),
('2015-2-60-002'),
('2015-2-60-003'),
('2015-2-60-004'),
('2015-2-60-005'),
('2015-2-60-006'),
('2015-2-60-007'),
('2015-2-60-008'),
('2015-2-60-009'),
('2015-2-60-010'),
('2015-2-60-011'),
('2015-2-60-012'),
('2015-2-60-013'),
('2015-2-60-014'),
('2015-2-60-015'),
('2015-2-60-016'),
('2015-2-60-017'),
('2015-2-60-018'),
('2015-2-60-019'),
('2015-2-60-020'),
('2015-2-60-021'),
('2015-2-60-022'),
('2015-2-60-023'),
('2015-2-60-024'),
('2015-2-60-025');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `reply_id` int(3) UNSIGNED NOT NULL,
  `category_id` int(3) UNSIGNED NOT NULL,
  `subcategory_id` int(3) UNSIGNED NOT NULL,
  `topic_id` int(3) UNSIGNED NOT NULL,
  `author` varchar(16) NOT NULL,
  `comment` text NOT NULL,
  `date_posted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`reply_id`, `category_id`, `subcategory_id`, `topic_id`, `author`, `comment`, `date_posted`) VALUES
(1, 1, 1, 6, 'nafee', 'hgf', '2019-04-01'),
(2, 1, 1, 1, 'nafee', 'replyes4', '2019-04-02'),
(3, 1, 1, 6, 'nafee', 'hkvjh', '2019-04-02'),
(4, 1, 1, 6, 'nafee', 'hgjhkj', '2019-04-02'),
(5, 3, 11, 7, 'nafee', 'mhgf', '2019-04-02'),
(6, 1, 1, 5, 'nafee', 'no replies', '2019-04-09'),
(7, 1, 2, 10, 'hasib', 'rjgh', '2019-04-09'),
(8, 1, 2, 10, 'hasib', 'fhfjh', '2019-04-09'),
(14, 1, 2, 3, 'hasib', 'yguhkn', '2019-04-09'),
(15, 1, 2, 3, 'hasib', 'jfvkjbk,m ', '2019-04-09'),
(17, 1, 1, 9, 'sk', 'hkjbn,m', '2019-04-09'),
(18, 1, 1, 9, 'sk', 'klhblkjbkm ,', '2019-04-09'),
(19, 1, 1, 9, 'nafee', 'kjbkjgv ', '2019-04-09'),
(20, 1, 1, 9, 'nafee', ',j ,mn, ', '2019-04-09'),
(21, 2, 6, 12, 'nafee', 'hgfs', '2019-04-09');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `subcat_id` int(3) UNSIGNED NOT NULL,
  `parent_id` int(3) UNSIGNED NOT NULL,
  `subcategory_title` varchar(128) NOT NULL,
  `subcategory_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`subcat_id`, `parent_id`, `subcategory_title`, `subcategory_desc`) VALUES
(1, 1, 'CSE-105', '(Structured Programming)'),
(2, 1, 'CSE-107', '(Object Orinented Programming)'),
(3, 1, 'CSE-109', '(Electrical Circuits)'),
(4, 1, 'CSE-205', '(Discrete Mathematics)'),
(5, 1, 'CSE-207', '(Data Structures)'),
(6, 2, 'BUS-101', '(Itroduction to Business)'),
(7, 2, 'ACT-101', '(Financial Accounting)'),
(8, 2, 'FIN-201', '(Business Finance)'),
(9, 2, 'MGT-251', '(Organizational Behavior)'),
(10, 2, 'MKT-401', '(Sales Mangement)'),
(11, 3, 'ENG-101', '(Basic English)'),
(12, 3, 'ENG-102', '(Composition and Communication Skills)'),
(13, 3, 'ENG-205', '(History of English Language)'),
(14, 3, 'ENG-310', '(Shakespeare)'),
(15, 3, 'ENG-403', '(Modern Novel)');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(8) UNSIGNED NOT NULL,
  `category_id` int(3) UNSIGNED NOT NULL,
  `subcategory_id` int(3) UNSIGNED NOT NULL,
  `author` varchar(16) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `date_posted` date NOT NULL,
  `views` int(5) UNSIGNED NOT NULL,
  `replies` int(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `category_id`, `subcategory_id`, `author`, `title`, `content`, `date_posted`, `views`, `replies`) VALUES
(3, 1, 2, 'nafee', 'jjjhjh', '12jb hj n', '2019-03-31', 50, 0),
(4, 1, 3, 'nafee', 'jkhf', 'jdfgk', '2019-04-01', 6, 0),
(7, 3, 11, 'nafee', 'jhg', 'hjg', '2019-04-02', 5, 0),
(8, 1, 5, 'kamal', 'test', 'nothing to say', '2019-04-08', 0, 0),
(9, 1, 1, 'nafee', 'syllabus', 'dfhgh', '2019-04-09', 16, 0),
(12, 2, 6, 'nafee', 'hello', 'test topic', '2019-04-09', 3, 0),
(13, 2, 6, 'nafee', 'hi', 'khamu', '2019-04-09', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(13) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
('2015-2-60-001', 'nafee', '123'),
('2015-2-60-002', 'nafe', '123'),
('2015-2-60-003', 'sk', '123'),
('2015-2-60-010', 'hasib', '1234'),
('2015-2-60-024', 'karim', '123456'),
('2015-2-60-025', 'kamal', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id` (`subcategory_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subcat_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `reply_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subcat_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`cat_id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`cat_id`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`cat_id`),
  ADD CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`subcat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
