-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 01:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodmonitor`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `complaint_id` int(11) NOT NULL,
  `complaint_name` varchar(50) NOT NULL,
  `complaint_email` varchar(50) NOT NULL,
  `complaint_provider` varchar(50) NOT NULL,
  `complaint_message` text NOT NULL,
  `complaint_image` varchar(255) NOT NULL,
  `image_filename` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`complaint_id`, `complaint_name`, `complaint_email`, `complaint_provider`, `complaint_message`, `complaint_image`, `image_filename`) VALUES
(12, 'Mohammed Ali', 'mohammed@gmail.com', 'Tammam restaurant', 'this place is not clean at all and i wish that you see my message and go to this restaurant to fix the problem', '', '1697345037_652b6e0d786f6.jpg'),
(13, 'Yasser Esam Al-Ariqi', 'yaaser10esam1010@gmail.com', 'Momtaz Resturant', 'The Food is very very very expansive !! something is wrong', '', '1697345098_652b6e4a93b49.jpg'),
(14, 'yasser', 'admin@gmail', 'tahamaa', 'There is a proelm', '', '1697461317_652d344531ae7.jpg'),
(15, 'Yasser', 'the10coder1010@gmail.com', 'Momtaz Resturant', 'good', '', '1697913183_6534195f58375.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `landing_page`
--

CREATE TABLE `landing_page` (
  `landing_id` int(11) NOT NULL,
  `main_text` text NOT NULL,
  `sub_text` text NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `landing_page`
--

INSERT INTO `landing_page` (`landing_id`, `main_text`, `sub_text`, `image`) VALUES
(1, 'Welcome to CleanEats <br> Monitor', 'your trusted platform for ensuring the highest standards of cleanliness<br> and hygiene in the world of food service', '');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `provider_id` int(11) NOT NULL,
  `provider_name` varchar(50) NOT NULL,
  `provider_phone` int(50) NOT NULL,
  `provider_location` varchar(50) NOT NULL,
  `provider_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`provider_id`, `provider_name`, `provider_phone`, `provider_location`, `provider_image`) VALUES
(11, 'Al-Tazag Restaurant', 777444666, 'Yemen-Sana\'a / Haddah Street ', 'altazag.jpg'),
(12, 'Al-Malaky Restaurant', 777744433, '60 Street Next To Wahas gas station ', 'almalaki.jpg'),
(13, 'Al-Wadde Restaurant', 773878487, 'Hayel Street / Sanaa', 'alwadde.jpg'),
(14, 'Garden City Restaurant', 772130777, 'Zubairy Street / Next To MEC', 'garden city.png'),
(15, 'Tamiz Restaurant', 77777777, '60 Street', 'garden city.png');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `rule_id` int(11) NOT NULL,
  `rule_name` varchar(255) NOT NULL,
  `rule_content` text NOT NULL,
  `rule_date` date NOT NULL,
  `rule_resourse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`rule_id`, `rule_name`, `rule_content`, `rule_date`, `rule_resourse`) VALUES
(1, 'ISO - 9001', 'This is the rule content', '0000-00-00', 'Ministry of Health');

-- --------------------------------------------------------

--
-- Table structure for table `supervision`
--

CREATE TABLE `supervision` (
  `supervision_id` int(50) NOT NULL,
  `provider_id` int(50) NOT NULL,
  `provider_name` varchar(100) NOT NULL,
  `uniform` text NOT NULL,
  `masks` text NOT NULL,
  `gloves` text NOT NULL,
  `commints` text NOT NULL,
  `score` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supervision`
--

INSERT INTO `supervision` (`supervision_id`, `provider_id`, `provider_name`, `uniform`, `masks`, `gloves`, `commints`, `score`) VALUES
(18, 14, 'Garden City Restaurant', 'true', 'false', 'true', 'This food service provider excels in maintaining a high standard of food safety, adhering to international regulations. Their commitment to ISO 22000 standards ensures the quality and safety of the food they serve', 88),
(19, 13, 'Al-Wadde Restaurant', 'true', 'true', 'true', 'The allergen control program of this food service provider is commendable. It demonstrates a strong dedication to customer well-being, particularly those with food allergies. ISO 22005 compliance underscores their commitment to safety.', 95),
(20, 12, 'Al-Malaky Restaurant', 'false', 'false', 'false', 'The food service provider\'s transparency in displaying nutritional information, including calorie counts, on their menus is a positive step. It helps customers make more informed choices about their meals, contributing to public health awareness.', 77),
(21, 11, 'Al-Tazag Restaurant', 'true', 'true', 'false', 'While the food quality is generally good, there may be room for improvement in customer service. Timely and courteous service can enhance the overall dining experience.', 89),
(22, 15, 'Tamiz Restaurant', 'true', 'false', 'true', 'the', 80);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_phone` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_type`, `user_password`, `user_phone`) VALUES
(5, 'Yasser', 'yasser@admin', 'admin', 'admin', 773878487),
(6, 'Ibrahim', 'ibrahim@user', 'user', 'user', 777855455);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `complaint_id` (`complaint_id`);

--
-- Indexes for table `landing_page`
--
ALTER TABLE `landing_page`
  ADD PRIMARY KEY (`landing_id`),
  ADD KEY `landing-id` (`landing_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`provider_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `rule_id` (`rule_id`);

--
-- Indexes for table `supervision`
--
ALTER TABLE `supervision`
  ADD PRIMARY KEY (`supervision_id`),
  ADD KEY `supervision_id` (`supervision_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `landing_page`
--
ALTER TABLE `landing_page`
  MODIFY `landing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `provider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supervision`
--
ALTER TABLE `supervision`
  MODIFY `supervision_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
