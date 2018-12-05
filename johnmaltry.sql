-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2018 at 02:19 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `johnmaltry`
--

-- --------------------------------------------------------

--
-- Table structure for table `ical_events`
--

CREATE TABLE `ical_events` (
  `event_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `text` text NOT NULL,
  `event_pid` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `event_type` varchar(30) NOT NULL,
  `added_date` date NOT NULL,
  `booking_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_about_details`
--

CREATE TABLE `lhk_about_details` (
  `about_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `about_profile_img` varchar(255) NOT NULL,
  `about_heading` varchar(255) NOT NULL,
  `about_content` longtext NOT NULL,
  `about_heading2` varchar(200) NOT NULL,
  `about_short_content` longtext,
  `about_inst_date` date NOT NULL,
  `about_update_date` date DEFAULT NULL,
  `about_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_about_property`
--

CREATE TABLE `lhk_about_property` (
  `about_id` int(11) NOT NULL,
  `about_img` varchar(255) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `content2` longtext NOT NULL,
  `img` varchar(200) NOT NULL,
  `create_date` varchar(100) NOT NULL,
  `update_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_about_property`
--

INSERT INTO `lhk_about_property` (`about_id`, `about_img`, `title`, `content`, `content2`, `img`, `create_date`, `update_date`) VALUES
(1, 'gf.jpg', 'LOG CABINS', '&lt;p&gt;Snuggle up to a cozy fireplace in the cool mountain evenings. Located just outside Asheville North Carolina we offer the best cabin rentals on our side of the Blue Ridge Mountains. Our accommodations consist of beautifully aged historic cabins originally built in the 1930s.&amp;nbsp;Our one and two bedroom cabin rentals are conveniently located to downtown Asheville NC. Many of our cabins have fireplaces and kitchens, all have air conditioning.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Consider sitting back in a 100 year old cabin, feel the charm, feel the history then look it up on the Internet. All of our vacation cabin rentals have FREE wireless access, today&amp;#39;s comforts with yesterday&amp;#39;s ambiance. A rustic stopover that time forgot will be a treat you&amp;#39;ll long remember.&lt;/p&gt;\r\n\r\n&lt;p&gt;Click on the following link to be redirected to the Log Cabin Motor Court&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;a href=&quot;https://clients.innroad.com/logcabin/property.aspx&quot;&gt;https://clients.innroad.com/logcabin/property.aspx&lt;/a&gt;&lt;/p&gt;', '', '', '2018-08-09 10:07:30', '2018-08-15 05:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_alternate_details`
--

CREATE TABLE `lhk_alternate_details` (
  `user_id` int(11) NOT NULL,
  `alt_name` varchar(100) NOT NULL,
  `alt_pass` varchar(100) NOT NULL,
  `alt_login_time` varchar(100) NOT NULL,
  `alt_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_amenities_details`
--

CREATE TABLE `lhk_amenities_details` (
  `amenity_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `amenity_name` varchar(255) NOT NULL,
  `amenity_value` longtext NOT NULL,
  `amenity_add_date` date NOT NULL,
  `amenity_update_date` date NOT NULL,
  `amenity_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_amenity`
--

CREATE TABLE `lhk_amenity` (
  `amenity_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `amenity_name` varchar(255) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `amenity_add_date` date NOT NULL,
  `amenity_update_date` date NOT NULL,
  `amenity_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_amenity`
--

INSERT INTO `lhk_amenity` (`amenity_id`, `property_id`, `admin_id`, `amenity_name`, `menu_order`, `amenity_add_date`, `amenity_update_date`, `amenity_ip`) VALUES
(1, 1, 1, 'House Rules', 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(2, 1, 1, 'Location Type', 2, '2018-08-08', '2018-08-08', '43.230.197.202'),
(3, 1, 1, 'Theme', 3, '2018-08-08', '2018-08-08', '43.230.197.202'),
(4, 1, 1, 'General', 4, '2018-08-08', '2018-08-08', '43.230.197.202'),
(5, 1, 1, 'Kitchen', 5, '2018-08-08', '2018-08-08', '43.230.197.202'),
(6, 1, 1, 'Dining room', 6, '2018-08-08', '2018-08-08', '43.230.197.202'),
(7, 1, 1, 'Bathrooms', 7, '2018-08-08', '2018-08-08', '43.230.197.202'),
(8, 1, 1, 'Bedrooms', 8, '2018-08-08', '2018-08-08', '43.230.197.202'),
(9, 1, 1, 'Entertainment', 9, '2018-08-08', '2018-08-08', '43.230.197.202'),
(10, 1, 1, 'Outside', 10, '2018-08-08', '2018-08-08', '43.230.197.202'),
(13, 1, 1, 'Other ', 13, '2018-08-08', '2018-08-08', '43.230.197.202'),
(14, 1, 1, 'Leisure activities', 14, '2018-08-08', '2018-08-08', '43.230.197.202'),
(15, 1, 1, 'Local Services &amp; Businesses', 15, '2018-08-08', '2018-08-08', '43.230.197.202'),
(16, 1, 1, 'Sports and Adventure Activities', 16, '2018-08-08', '2018-08-08', '43.230.197.202'),
(17, 2, 1, 'House Rules', 17, '2018-08-08', '2018-08-08', '43.230.197.202'),
(18, 2, 1, 'Location Type', 18, '2018-08-08', '2018-08-08', '43.230.197.202'),
(19, 2, 1, 'Theme', 19, '2018-08-08', '2018-08-08', '43.230.197.202'),
(20, 2, 1, 'General', 20, '2018-08-08', '2018-08-08', '43.230.197.202'),
(21, 2, 1, 'Kitchen', 21, '2018-08-08', '2018-08-08', '43.230.197.202'),
(22, 2, 1, 'Dining room', 22, '2018-08-08', '2018-08-08', '43.230.197.202'),
(23, 2, 1, 'Bathrooms', 23, '2018-08-08', '2018-08-08', '43.230.197.202'),
(24, 2, 1, 'Bedrooms', 24, '2018-08-08', '2018-08-08', '43.230.197.202'),
(25, 2, 1, 'Entertainment', 25, '2018-08-08', '2018-08-08', '43.230.197.202'),
(26, 2, 1, 'Exterior', 26, '2018-08-08', '2018-08-08', '43.230.197.202'),
(28, 2, 1, 'Pool / Spa', 28, '2018-08-08', '2018-08-08', '43.230.197.202'),
(29, 2, 1, 'Others', 29, '2018-08-08', '2018-08-08', '43.230.197.202'),
(30, 2, 1, 'Leisure activities', 30, '2018-08-08', '2018-08-08', '43.230.197.202'),
(31, 2, 1, 'Local Services &amp; Businesses', 31, '2018-08-08', '2018-08-08', '43.230.197.202'),
(32, 2, 1, 'Sports and Adventure Activities', 32, '2018-08-08', '2018-08-08', '43.230.197.202'),
(33, 3, 1, 'House Rules', 33, '2018-08-09', '2018-08-09', '43.230.197.202'),
(34, 3, 1, 'Location Type', 34, '2018-08-09', '2018-08-09', '43.230.197.202'),
(35, 3, 1, 'Theme', 35, '2018-08-09', '2018-08-09', '43.230.197.202'),
(36, 3, 1, 'General', 36, '2018-08-09', '2018-08-09', '43.230.197.202'),
(37, 3, 1, 'Kitchen', 37, '2018-08-09', '2018-08-09', '43.230.197.202'),
(38, 3, 1, 'Dining room', 38, '2018-08-09', '2018-08-09', '43.230.197.202'),
(39, 3, 1, 'Bathrooms', 39, '2018-08-09', '2018-08-09', '43.230.197.202'),
(40, 3, 1, 'Bedrooms', 40, '2018-08-09', '2018-08-09', '43.230.197.202'),
(41, 3, 1, 'Entertainment', 41, '2018-08-09', '2018-08-09', '43.230.197.202'),
(42, 3, 1, 'Outside', 42, '2018-08-09', '2018-08-09', '43.230.197.202'),
(44, 3, 1, 'Swimming pool / Spa', 44, '2018-08-09', '2018-08-09', '43.230.197.202'),
(46, 3, 1, 'Leisure activities', 46, '2018-08-09', '2018-08-09', '43.230.197.202'),
(47, 3, 1, 'Local Services &amp; Businesses', 47, '2018-08-09', '2018-08-09', '43.230.197.202'),
(48, 3, 1, 'Sports and Adventure Activities', 48, '2018-08-09', '2018-08-09', '43.230.197.202');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_amenity_details`
--

CREATE TABLE `lhk_amenity_details` (
  `amen_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL,
  `amen_value` varchar(255) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `amen_status` int(11) NOT NULL,
  `add_date` date NOT NULL,
  `update_date` date NOT NULL,
  `amen_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_amenity_details`
--

INSERT INTO `lhk_amenity_details` (`amen_id`, `amenity_id`, `amen_value`, `menu_order`, `amen_status`, `add_date`, `update_date`, `amen_ip`) VALUES
(1, 1, 'Max Occupancy: 8', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(2, 1, 'smoking is not allowed', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(3, 1, 'Minimum Age Limit for Renters', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(4, 1, 'children allowed', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(5, 1, 'pets allowed', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(6, 2, 'In front of the lake', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(7, 3, 'refuge', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(8, 3, 'family trip', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(9, 3, 'tourist attractions', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(10, 4, 'air conditioning', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(11, 4, 'clothes dryer', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(12, 4, 'fireplace', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(14, 4, 'hair dryer', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(15, 4, 'Central Heating', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(16, 4, 'Internet access', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(19, 4, 'living room', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(20, 4, 'parking', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(23, 4, 'Washing machine', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(24, 4, 'wireless connection', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(25, 5, 'coffee machine', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(26, 5, 'Dishes and Utensils', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(27, 5, 'dishwasher', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(28, 5, 'Full Kitchen', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(29, 5, 'microwave oven', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(30, 5, 'oven', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(31, 5, 'spices', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(32, 5, 'refrigerator', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(33, 5, 'cooker', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(34, 5, 'toaster', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(36, 6, 'dining area', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(37, 6, '8 places', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(38, 7, '2 Bathrooms', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(39, 7, '1 toilet', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(40, 8, '4 bedrooms', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(41, 8, 'sleeps maximum of 8 people', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(42, 9, 'DVD player', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(43, 9, 'cable or satellite tv', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(44, 9, 'stereo', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(46, 10, 'Deck / Patio', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(47, 10, 'garden / lawn', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(48, 10, 'barbecue grill', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(51, 13, 'Arboretum', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(52, 13, 'Botanical Garden', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(53, 13, 'Churches', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(54, 13, 'Movie theaters', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(55, 13, 'festivals', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(56, 13, 'health / beauty spa', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(57, 13, 'Library', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(58, 13, 'playground', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(59, 13, 'Recreation center', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(60, 13, 'winery tours', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(61, 14, 'Paddle boating', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(62, 14, 'horse riding', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(63, 14, 'miniature golf', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(64, 14, 'photography', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(65, 14, 'Panoramic roads', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(66, 14, 'mall', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(67, 14, 'picturesque landscapes', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(68, 14, 'walking', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(69, 15, 'ATMs', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(70, 15, 'fitness center', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(71, 15, 'supermarket', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(72, 15, 'Hospital', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(73, 15, 'automatic laundry', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(74, 15, 'masseur', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(75, 15, 'health care', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(76, 16, 'cycling', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(77, 16, 'fishing with rod', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(78, 16, 'freshwater fishing', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(79, 16, 'golf', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(80, 16, 'hunting', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(81, 16, 'mountain bike', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(82, 16, 'mountaineering', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(83, 16, 'sneakers', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(84, 17, 'Check-in: 16:00 / Check-out: 10:00', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(85, 17, 'Max Occupancy: 8', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(86, 17, 'smoking is not allowed', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(87, 17, 'Minimum Age Limit for Renters', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(88, 17, 'children allowed', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(89, 17, 'pets allowed', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(90, 18, 'Mountain', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(91, 18, 'Mountain view', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(92, 18, 'River view', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(93, 19, 'adventure', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(94, 19, 'refuge', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(95, 19, 'family trip', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(96, 19, 'romance', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(97, 20, 'air conditioning', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(98, 20, 'broadband connection', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(99, 20, 'clothes dryer', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(101, 20, 'fireplace', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(102, 20, 'Free Long Distance', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(103, 20, 'garage', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(104, 20, 'hair dryer', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(105, 20, 'Central Heating', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(106, 20, 'Internet access', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(107, 20, 'iron &amp; board dish washer', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(109, 20, 'living room', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(110, 20, 'parking', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(111, 20, 'Parking off street', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(112, 20, 'telephone', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(114, 20, 'Washing machine', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(115, 20, 'wireless connection', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(116, 20, 'Wood Fireplace', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(118, 21, 'coffee machine', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(119, 21, 'kitchen utensils', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(120, 21, 'Dishes and Utensils', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(121, 21, 'dishwasher', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(122, 21, 'Ice machine', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(123, 21, 'Full Kitchen', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(124, 21, 'microwave oven', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(125, 21, 'oven', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(126, 21, 'spices', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(127, 21, 'refrigerator', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(128, 21, 'cooker', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(129, 21, 'cooktop', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(130, 21, 'toaster', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(132, 22, 'dining area', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(133, 22, '8 places', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(134, 23, '2 Full Baths', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(135, 24, '3 bedrooms', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(136, 24, 'sleeps maximum of 8 people', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(137, 25, 'CD player', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(138, 25, 'DVD player', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(139, 25, 'cable or satellite tv', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(140, 25, 'stereo', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(141, 25, 'TV', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(142, 26, 'Deck / Patio', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(143, 26, 'barbecue grill', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(144, 26, 'gas grill', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(145, 26, 'deck wood', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(147, 28, 'hot tub', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(148, 29, 'Arboretum', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(149, 29, 'autumnal landscape', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(150, 29, 'Botanical Garden', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(151, 29, 'Churches', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(152, 29, 'Cinemas', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(153, 29, 'festivals', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(154, 29, 'health/beauty spa', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(155, 29, 'Library', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(156, 29, 'theater', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(157, 29, 'Museums', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(158, 29, 'playground', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(159, 29, 'Restaurants', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(160, 29, 'waterfalls', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(161, 29, 'winery tours', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(162, 29, 'Zoo', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(163, 30, 'antiquing', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(164, 30, 'horse riding', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(165, 30, 'miniature golf', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(166, 30, 'Panoramic roads', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(167, 30, 'shopping', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(168, 30, 'picturesque landscapes', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(169, 30, 'sleigh', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(170, 30, 'walking', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(171, 30, 'wildlife viewing', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(172, 31, 'ATMs', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(173, 31, 'fitness center', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(174, 31, 'supermarket', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(175, 31, 'Hospital', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(176, 31, 'automatic laundry', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(177, 31, 'masseur', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(178, 31, 'health care', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(179, 32, 'cycling', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(180, 32, 'fishing', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(181, 32, 'freshwater fishing', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(182, 32, 'gulf', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(183, 32, 'trails', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(184, 32, 'hot air ballooning', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(185, 32, 'hunting', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(186, 32, 'kayaking', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(187, 32, 'mountain bike', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(188, 32, 'Mountain climbing', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(189, 32, 'Rafting', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(190, 32, 'rock climbing', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(191, 32, 'sneakers', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(192, 32, 'Whitewater rafting', 0, 1, '2018-08-08', '2018-08-08', '43.230.197.202'),
(193, 33, 'Check-in: 4:00 PM / Check-out: 10:00 AM', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(194, 33, 'Max Occupancy: 10', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(195, 33, 'smoking is not allowed', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(196, 33, 'Minimum Age Limit for Renters', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(197, 33, 'children allowed', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(198, 33, 'pets allowed', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(199, 34, 'Mountain', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(200, 34, 'Mountain view', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(201, 35, 'refuge', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(202, 35, 'family trip', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(203, 36, 'air conditioning', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(204, 36, 'Alarm clock', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(205, 36, 'Soap', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(206, 36, 'broadband connection', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(207, 36, 'ceiling fan', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(208, 36, 'clothes dryer', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(209, 36, 'fireplace', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(210, 36, 'Free Long Distance', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(211, 36, 'garage', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(212, 36, 'hair dryer', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(213, 36, 'Central Heating', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(214, 36, 'Internet access', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(215, 36, 'iron &amp; board dish washer', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(217, 36, 'living room', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(218, 36, 'Linens provided', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(220, 36, 'parking', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(221, 36, 'Parking off street', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(222, 36, 'telephone', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(223, 36, 'toilet paper', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(225, 36, 'Washing machine', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(226, 36, 'wireless connection', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(227, 36, 'Wood Fireplace', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(229, 37, 'Blender', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(230, 37, 'coffee machine', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(231, 37, 'kitchen utensils', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(232, 37, 'Dishes and Utensils', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(233, 37, 'dishwasher', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(234, 37, 'Freezer', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(235, 37, 'Ice machine', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(236, 37, 'Full Kitchen', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(237, 37, 'microwave oven', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(238, 37, 'oven', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(239, 37, 'spices', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(240, 37, 'refrigerator', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(241, 37, 'cooker', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(242, 37, 'cooktop', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(243, 37, 'toaster', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(245, 38, 'dining area', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(246, 38, '10 places', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(247, 39, '3 Bathrooms', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(248, 39, '1 toilet', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(249, 40, '4 bedrooms', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(250, 40, 'sleeps maximum of 10 people', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(251, 41, 'CD player', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(252, 41, 'DVD player', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(255, 41, 'music collection', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(256, 41, 'radio', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(257, 41, 'cable or satellite tv', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(258, 41, 'stereo', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(259, 41, 'TV', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(260, 41, 'video tape', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(262, 42, 'Deck / Patio', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(263, 42, 'Gazebo', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(265, 42, 'gas grill', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(271, 44, 'outdoor hot tub', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(286, 46, 'antiquing', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(287, 46, 'ecotourism', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(288, 46, 'casinos', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(289, 46, 'horse riding', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(290, 46, 'shopping / outlet', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(291, 46, 'rowing', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(292, 46, 'Panoramic roads', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(293, 46, 'mall', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(294, 46, 'picturesque landscapes', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(295, 46, 'sleigh', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(296, 46, 'walking', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(297, 46, 'wildlife viewing', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(298, 47, 'ATMs', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(299, 47, 'fitness center', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(300, 47, 'supermarket', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(301, 47, 'Hospital', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(302, 47, 'automatic laundry', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(303, 47, 'masseur', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(304, 47, 'health care', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(305, 48, 'cycling', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(306, 48, 'horsemanship', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(307, 48, 'fishing', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(308, 48, 'fishing with rod', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(309, 48, 'golf', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(310, 48, 'trails', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(311, 48, 'hot air ballooning', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(312, 48, 'hunting', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(313, 48, 'kayaking', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(314, 48, 'mountain bike', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(315, 48, 'mountaineering', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(316, 48, 'Rafting', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(317, 48, 'rock climbing', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(318, 48, 'ski', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(319, 48, 'snowboarding', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(320, 48, 'caves / caving', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(321, 48, 'sneakers', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(322, 48, 'Whitewater rafting', 0, 1, '2018-08-09', '2018-08-09', '43.230.197.202'),
(323, 9, 'Smart TV', 0, 1, '2018-09-19', '2018-09-19', '43.230.197.202'),
(324, 10, 'lake/pond', 0, 1, '2018-09-19', '2018-09-19', '43.230.197.202'),
(325, 20, 'Linens Provided', 0, 1, '2018-09-19', '2018-09-19', '43.230.197.202'),
(326, 36, 'Paper Towels', 0, 1, '2018-09-19', '2018-09-19', '43.230.197.202'),
(329, 4, 'Iron', 0, 1, '2018-09-19', '2018-09-19', '43.230.197.202'),
(330, 4, 'Board Dishwasher', 0, 1, '2018-09-19', '2018-09-19', '43.230.197.202'),
(331, 41, 'Foosball Table', 0, 1, '2018-09-19', '2018-09-19', '43.230.197.202'),
(332, 41, 'Games', 0, 1, '2018-09-19', '2018-09-19', '43.230.197.202');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_area_detail`
--

CREATE TABLE `lhk_area_detail` (
  `area_id` int(11) NOT NULL,
  `area_title` varchar(200) NOT NULL,
  `area_content` longtext NOT NULL,
  `create_date` varchar(100) NOT NULL,
  `update_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_area_info`
--

CREATE TABLE `lhk_area_info` (
  `id` int(11) NOT NULL,
  `loc_id` int(11) NOT NULL,
  `admin_id` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `icons` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_area_info`
--

INSERT INTO `lhk_area_info` (`id`, `loc_id`, `admin_id`, `img`, `heading`, `content`, `sub_title`, `icons`, `added_date`) VALUES
(5, 0, '1', '../uploads/areainfo/Mountain-Made-Gallery,-Asheville,-NC,-USA.jpg', 'IEdhbGxlcnkgb2YgdGhlIE1vdW50YWlucw==', '&lt;a href=&quot;https://www.grovewood.com/&quot; target=&quot;_blank&quot;&gt;Click Here For More Info&lt;/a&gt;', '', '', '2018-08-15 13:05:30'),
(7, 0, '1', '../uploads/areainfo/J62A4467.jpg', 'TW91bnRhaW4gTWFkZSBBcnQgR2FsbGVyeQ==', '&lt;a href=&quot;https://www.mtnmade.com/&quot; target=&quot;_blank&quot;&gt;Click Here For More Info&lt;/a&gt;', '', '', '2018-08-15 13:09:38'),
(8, 0, '1', '../uploads/areainfo/the-soda-fountain-at.jpg', 'V29vbHdvcnRoIFdhbGs=', '&lt;a href=&quot;http://www.woolworthwalk.com/&quot; target=&quot;_blank&quot;&gt;Click Here For More Info&lt;/a&gt;', '', '', '2018-08-15 13:10:32'),
(9, 0, '1', '../uploads/areainfo/sdaf.jpg', 'UGFjayBTcXVhcmUgUGFyaw==', '&lt;a href=&quot;https://www.nps.gov/nr/travel/asheville/pac.htm&quot; target=&quot;_blank&quot;&gt;Click Here For More Info&lt;/a&gt;', '', '', '2018-08-15 13:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_beach_place`
--

CREATE TABLE `lhk_beach_place` (
  `id` int(11) NOT NULL,
  `admin_id` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `urllink` varchar(200) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `added_date` date NOT NULL,
  `r_update_date` date NOT NULL,
  `r_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_beach_rules`
--

CREATE TABLE `lhk_beach_rules` (
  `rule_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `img` varchar(200) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `create_date` varchar(100) NOT NULL,
  `update_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_booking_details`
--

CREATE TABLE `lhk_booking_details` (
  `bok_det_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `prop_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `tot_amt` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `request_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tax` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalnight` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adult` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `no_of_ppl` int(11) DEFAULT NULL,
  `pets` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addr` longtext COLLATE utf8_unicode_ci NOT NULL,
  `msg` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` date NOT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lhk_booking_details`
--

INSERT INTO `lhk_booking_details` (`bok_det_id`, `property_id`, `admin_id`, `prop_name`, `checkin`, `checkout`, `tot_amt`, `request_id`, `tax`, `totalnight`, `name`, `email`, `phone`, `adult`, `children`, `no_of_ppl`, `pets`, `addr`, `msg`, `added_date`, `ip`, `book_status`) VALUES
(1, 2, 1, 'Long Range Mountain Views', '2018-09-16', '2018-09-20', '1510', 'eCvUQm2Xsz', NULL, 4, 'sdf', 'test@gmail.com', 'sfdgsdg sdf', NULL, NULL, 3, '', '', 'gdfgdfg', '2018-08-15', '43.230.197.202', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lhk_client_details`
--

CREATE TABLE `lhk_client_details` (
  `client_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `req_num` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstdate` date NOT NULL,
  `lastdate` date NOT NULL,
  `adddate` date NOT NULL,
  `client_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_contact_details`
--

CREATE TABLE `lhk_contact_details` (
  `contact_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_email1` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_addr` text NOT NULL,
  `contact_content` longtext,
  `map_longitude` varchar(255) NOT NULL,
  `map_latitude` varchar(255) NOT NULL,
  `contact_det_insert_date` date NOT NULL,
  `contact_det_update_date` date DEFAULT NULL,
  `contact_det_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_contact_details`
--

INSERT INTO `lhk_contact_details` (`contact_id`, `admin_id`, `contact_name`, `contact_email`, `contact_email1`, `contact_phone`, `contact_addr`, `contact_content`, `map_longitude`, `map_latitude`, `contact_det_insert_date`, `contact_det_update_date`, `contact_det_ip`) VALUES
(1, 1, '', 'info@ashevillelodgings.com', '', '828-222-0440', '', '&amp;nbsp;105 Appalachian Village Road, Asheville', '', '', '2018-08-15', '2018-08-21', '43.230.197.202');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_current_special`
--

CREATE TABLE `lhk_current_special` (
  `current_id` int(11) NOT NULL,
  `beach_id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `heading` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `modify_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_dewey_facts`
--

CREATE TABLE `lhk_dewey_facts` (
  `fact_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `create_date` varchar(100) NOT NULL,
  `update_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_files`
--

CREATE TABLE `lhk_files` (
  `image_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_cat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_order` int(11) NOT NULL,
  `uploaded_img_date` date NOT NULL,
  `updated_img_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lhk_files`
--

INSERT INTO `lhk_files` (`image_id`, `property_id`, `admin_id`, `file_name`, `file_cat`, `file_size`, `caption`, `menu_order`, `uploaded_img_date`, `updated_img_date`) VALUES
(2, 1, 1, '4.jpg', '', 0, NULL, 2, '2018-08-08', '2018-08-08'),
(3, 1, 1, '6.jpg', '', 0, NULL, 3, '2018-08-08', '2018-08-08'),
(4, 1, 1, '1.jpg', '', 0, NULL, 4, '2018-08-08', '2018-08-08'),
(5, 1, 1, '2.jpg', '', 0, NULL, 5, '2018-08-08', '2018-08-08'),
(6, 1, 1, '5.jpg', '', 0, NULL, 6, '2018-08-08', '2018-08-08'),
(7, 1, 1, '11.jpg', '', 0, NULL, 7, '2018-08-08', '2018-08-08'),
(8, 1, 1, '7.jpg', '', 0, NULL, 8, '2018-08-08', '2018-08-08'),
(9, 1, 1, '8.jpg', '', 0, NULL, 9, '2018-08-08', '2018-08-08'),
(10, 1, 1, '9.jpg', '', 0, NULL, 10, '2018-08-08', '2018-08-08'),
(11, 1, 1, '10.jpg', '', 0, NULL, 11, '2018-08-08', '2018-08-08'),
(12, 1, 1, '12.jpg', '', 0, NULL, 12, '2018-08-08', '2018-08-08'),
(13, 1, 1, '13.jpg', '', 0, NULL, 13, '2018-08-08', '2018-08-08'),
(14, 1, 1, '14.jpg', '', 0, NULL, 14, '2018-08-08', '2018-08-08'),
(15, 1, 1, '15.jpg', '', 0, NULL, 15, '2018-08-08', '2018-08-08'),
(16, 1, 1, '18.jpg', '', 0, NULL, 16, '2018-08-08', '2018-08-08'),
(17, 1, 1, '19.jpg', '', 0, NULL, 17, '2018-08-08', '2018-08-08'),
(18, 1, 1, '16.jpg', '', 0, NULL, 18, '2018-08-08', '2018-08-08'),
(19, 1, 1, '21.jpg', '', 0, NULL, 19, '2018-08-08', '2018-08-08'),
(20, 1, 1, '17.jpg', '', 0, NULL, 20, '2018-08-08', '2018-08-08'),
(21, 1, 1, '20.jpg', '', 0, NULL, 21, '2018-08-08', '2018-08-08'),
(22, 1, 1, '22.jpg', '', 0, NULL, 22, '2018-08-08', '2018-08-08'),
(23, 1, 1, '24.jpg', '', 0, NULL, 23, '2018-08-08', '2018-08-08'),
(24, 1, 1, '23.jpg', '', 0, NULL, 24, '2018-08-08', '2018-08-08'),
(25, 1, 1, '26.jpg', '', 0, NULL, 25, '2018-08-08', '2018-08-08'),
(26, 1, 1, '27.jpg', '', 0, NULL, 26, '2018-08-08', '2018-08-08'),
(27, 1, 1, '28.jpg', '', 0, NULL, 27, '2018-08-08', '2018-08-08'),
(28, 1, 1, '30.jpg', '', 0, NULL, 28, '2018-08-08', '2018-08-08'),
(29, 1, 1, '31.jpg', '', 0, NULL, 29, '2018-08-08', '2018-08-08'),
(30, 1, 1, '25.jpg', '', 0, NULL, 30, '2018-08-08', '2018-08-08'),
(31, 1, 1, '29.jpg', '', 0, NULL, 31, '2018-08-08', '2018-08-08'),
(32, 2, 1, '1.jpg', '', 0, NULL, 1, '2018-08-08', '2018-08-08'),
(33, 2, 1, '2.jpg', '', 0, NULL, 2, '2018-08-08', '2018-08-08'),
(34, 2, 1, '5.jpg', '', 0, NULL, 3, '2018-08-08', '2018-08-08'),
(35, 2, 1, '3.jpg', '', 0, NULL, 4, '2018-08-08', '2018-08-08'),
(36, 2, 1, '6.jpg', '', 0, NULL, 5, '2018-08-08', '2018-08-08'),
(37, 2, 1, '4.jpg', '', 0, NULL, 6, '2018-08-08', '2018-08-08'),
(38, 2, 1, '7.jpg', '', 0, NULL, 7, '2018-08-08', '2018-08-08'),
(39, 2, 1, '9.jpg', '', 0, NULL, 8, '2018-08-08', '2018-08-08'),
(40, 2, 1, '11.jpg', '', 0, NULL, 9, '2018-08-08', '2018-08-08'),
(41, 2, 1, '10.jpg', '', 0, NULL, 10, '2018-08-08', '2018-08-08'),
(42, 2, 1, '8.jpg', '', 0, NULL, 11, '2018-08-08', '2018-08-08'),
(43, 2, 1, '12.jpg', '', 0, NULL, 12, '2018-08-08', '2018-08-08'),
(44, 2, 1, '15.jpg', '', 0, NULL, 13, '2018-08-08', '2018-08-08'),
(45, 2, 1, '18.jpg', '', 0, NULL, 14, '2018-08-08', '2018-08-08'),
(46, 2, 1, '13.jpg', '', 0, NULL, 15, '2018-08-08', '2018-08-08'),
(47, 2, 1, '14.jpg', '', 0, NULL, 16, '2018-08-08', '2018-08-08'),
(48, 2, 1, '17.jpg', '', 0, NULL, 17, '2018-08-08', '2018-08-08'),
(49, 2, 1, '19.jpg', '', 0, NULL, 18, '2018-08-08', '2018-08-08'),
(50, 2, 1, '20.jpg', '', 0, NULL, 19, '2018-08-08', '2018-08-08'),
(51, 2, 1, '21.jpg', '', 0, NULL, 20, '2018-08-08', '2018-08-08'),
(52, 2, 1, '16.jpg', '', 0, NULL, 21, '2018-08-08', '2018-08-08'),
(53, 2, 1, '22.jpg', '', 0, NULL, 22, '2018-08-08', '2018-08-08'),
(54, 3, 1, '4.jpg', '', 0, NULL, 1, '2018-08-09', '2018-08-09'),
(55, 3, 1, '6.jpg', '', 0, NULL, 2, '2018-08-09', '2018-08-09'),
(56, 3, 1, '5.jpg', '', 0, NULL, 3, '2018-08-09', '2018-08-09'),
(57, 3, 1, '2.jpg', '', 0, NULL, 4, '2018-08-09', '2018-08-09'),
(58, 3, 1, '1.jpg', '', 0, NULL, 5, '2018-08-09', '2018-08-09'),
(59, 3, 1, '3.jpg', '', 0, NULL, 6, '2018-08-09', '2018-08-09'),
(60, 3, 1, '10.jpg', '', 0, NULL, 7, '2018-08-09', '2018-08-09'),
(61, 3, 1, '11.jpg', '', 0, NULL, 8, '2018-08-09', '2018-08-09'),
(62, 3, 1, '12.jpg', '', 0, NULL, 9, '2018-08-09', '2018-08-09'),
(63, 3, 1, '7.jpg', '', 0, NULL, 10, '2018-08-09', '2018-08-09'),
(64, 3, 1, '8.jpg', '', 0, NULL, 11, '2018-08-09', '2018-08-09'),
(65, 3, 1, '9.jpg', '', 0, NULL, 12, '2018-08-09', '2018-08-09'),
(66, 3, 1, '14.jpg', '', 0, NULL, 13, '2018-08-09', '2018-08-09'),
(67, 3, 1, '17.jpg', '', 0, NULL, 14, '2018-08-09', '2018-08-09'),
(68, 3, 1, '16.jpg', '', 0, NULL, 15, '2018-08-09', '2018-08-09'),
(69, 3, 1, '15.jpg', '', 0, NULL, 16, '2018-08-09', '2018-08-09'),
(70, 3, 1, '13.jpg', '', 0, NULL, 17, '2018-08-09', '2018-08-09'),
(71, 3, 1, '18.jpg', '', 0, NULL, 18, '2018-08-09', '2018-08-09'),
(72, 3, 1, '20.jpg', '', 0, NULL, 19, '2018-08-09', '2018-08-09'),
(73, 3, 1, '21.jpg', '', 0, NULL, 20, '2018-08-09', '2018-08-09'),
(74, 3, 1, '22.jpg', '', 0, NULL, 21, '2018-08-09', '2018-08-09'),
(75, 3, 1, '23.jpg', '', 0, NULL, 22, '2018-08-09', '2018-08-09'),
(76, 3, 1, '19.jpg', '', 0, NULL, 23, '2018-08-09', '2018-08-09'),
(77, 3, 1, '24.jpg', '', 0, NULL, 24, '2018-08-09', '2018-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_front_attraction`
--

CREATE TABLE `lhk_front_attraction` (
  `f_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `f_img` varchar(255) NOT NULL,
  `f_heading` varchar(255) NOT NULL,
  `f_content` longtext NOT NULL,
  `f_caption` varchar(255) NOT NULL,
  `added_date` date NOT NULL,
  `f_update_date` date NOT NULL,
  `f_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_gallery`
--

CREATE TABLE `lhk_gallery` (
  `image_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu_order` int(11) NOT NULL,
  `uploaded_img_date` date NOT NULL,
  `updated_image_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_home_details`
--

CREATE TABLE `lhk_home_details` (
  `home_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `home_heading` varchar(255) NOT NULL,
  `home_content` longtext NOT NULL,
  `other_content` longtext,
  `home_type` varchar(255) DEFAULT NULL,
  `home_video_url` varchar(200) NOT NULL,
  `home_no_of_bedrooms` varchar(255) DEFAULT NULL,
  `home_no_of_sleeps` varchar(255) DEFAULT NULL,
  `home_no_of_baths` varchar(255) DEFAULT NULL,
  `home_det_insert_date` date NOT NULL,
  `home_det_update_date` date DEFAULT NULL,
  `home_det_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_home_details`
--

INSERT INTO `lhk_home_details` (`home_id`, `admin_id`, `home_heading`, `home_content`, `other_content`, `home_type`, `home_video_url`, `home_no_of_bedrooms`, `home_no_of_sleeps`, `home_no_of_baths`, `home_det_insert_date`, `home_det_update_date`, `home_det_ip`) VALUES
(1, 1, 'Asheville Cabins and Vacation Rentals', 'Asheville Cabins and Vacation Rentals offers three vacation rentals and sixteen log cabins listed on the National Register of Historic Places and two lodges located at the Log Cabin Motor. Court.&nbsp;&nbsp;All properties are 6 miles north of downtown Asheville, North Carolina. We offer a variety of options, from Historic Log Cabins to Serene Vacation Rentals with spectacular Long Range Mountain Views and Hidden Ponds. We would love to assist you in finding your perfect vacation spot.', '', '', '', '', '', '', '2018-08-15', '2018-08-21', '43.230.197.202');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_ical_events`
--

CREATE TABLE `lhk_ical_events` (
  `event_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `text` text NOT NULL,
  `event_pid` int(11) NOT NULL,
  `event_type` varchar(30) NOT NULL,
  `added_date` date NOT NULL,
  `booking_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_ical_links`
--

CREATE TABLE `lhk_ical_links` (
  `i_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `property_heading` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `add_date` varchar(100) NOT NULL,
  `update_date` varchar(100) NOT NULL,
  `ical_add_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_info`
--

CREATE TABLE `lhk_info` (
  `f_id` int(11) NOT NULL,
  `s_id` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `sdate` varchar(255) NOT NULL,
  `edate` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `t_night` int(11) NOT NULL,
  `total_amt` float NOT NULL,
  `guest` int(11) NOT NULL,
  `discount` float NOT NULL,
  `min_stay` int(11) NOT NULL,
  `g_amount` float NOT NULL,
  `clean` int(11) NOT NULL,
  `r_fees` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `tax_fees` float NOT NULL,
  `addedon` datetime NOT NULL,
  `updateon` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_login_details`
--

CREATE TABLE `lhk_login_details` (
  `admin_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL,
  `admin_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_login_details`
--

INSERT INTO `lhk_login_details` (`admin_id`, `user_name`, `user_pass`, `last_login`, `admin_ip`) VALUES
(1, 'admin', '675959b7dcfe4096bb2051fb446028a3', '2018-09-21 14:15:13', '60.241.55.1');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_logo`
--

CREATE TABLE `lhk_logo` (
  `logo_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `logo_img` varchar(255) NOT NULL,
  `logo_inst_date` date NOT NULL,
  `logo_update_date` date DEFAULT NULL,
  `logo_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_meta_tbl`
--

CREATE TABLE `lhk_meta_tbl` (
  `id` int(21) NOT NULL,
  `admin_id` int(21) NOT NULL,
  `property_id` varchar(255) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_Canonical_Link` varchar(255) NOT NULL,
  `meta_Heading_Tag` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `add_date` date NOT NULL,
  `update_date` date NOT NULL,
  `ical_add_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_payment_initiate`
--

CREATE TABLE `lhk_payment_initiate` (
  `pinit_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `prop_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `request_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` date NOT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `msg` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_profile_details`
--

CREATE TABLE `lhk_profile_details` (
  `profile_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `profile_img` varchar(255) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `website_name` varchar(255) NOT NULL,
  `profile_inst_date` date NOT NULL,
  `profile_update_date` date NOT NULL,
  `profile_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_profile_details`
--

INSERT INTO `lhk_profile_details` (`profile_id`, `admin_id`, `profile_img`, `profile_name`, `website_name`, `profile_inst_date`, `profile_update_date`, `profile_ip`) VALUES
(1, 1, 'uploads/profile/boy.png', 'johnmaltry', 'johnmaltry', '2018-08-08', '0000-00-00', '43.230.197.202');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_property_back_details`
--

CREATE TABLE `lhk_property_back_details` (
  `pro_back_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `pro_king_bed` varchar(255) NOT NULL,
  `pro_queen_bed` varchar(255) NOT NULL,
  `pro_single_bed` varchar(255) NOT NULL,
  `pro_double_bed` varchar(255) NOT NULL,
  `pro_twin_bed` varchar(255) NOT NULL,
  `pro_sofa_bed` varchar(255) NOT NULL,
  `pro_bunk_bed` varchar(255) NOT NULL,
  `pro_cribs` varchar(255) NOT NULL,
  `pro_cot` varchar(255) NOT NULL,
  `pro_insert_date` date NOT NULL,
  `pro_update_date` date NOT NULL,
  `pro_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_property_default_rates`
--

CREATE TABLE `lhk_property_default_rates` (
  `pro_def_rate_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `pro_def_rate_rates` varchar(200) NOT NULL,
  `pro_def_rate_check_in` varchar(200) NOT NULL,
  `pro_def_rate_check_out` varchar(200) NOT NULL,
  `pro_def_rate_min_stay` varchar(100) NOT NULL,
  `pro_def_rate_currency` varchar(100) NOT NULL,
  `add_fees` varchar(100) NOT NULL,
  `pro_cleaning_fee` varchar(255) DEFAULT NULL,
  `pro_refundable_amt` varchar(100) DEFAULT NULL,
  `pro_tax_fee` varchar(100) DEFAULT NULL,
  `can_policy` longtext NOT NULL,
  `notes` longtext NOT NULL,
  `extra_notes` longtext NOT NULL,
  `pro_def_insert_date` varchar(100) NOT NULL,
  `pro_def_update_date` varchar(100) DEFAULT NULL,
  `pro_def_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_property_default_rates`
--

INSERT INTO `lhk_property_default_rates` (`pro_def_rate_id`, `property_id`, `admin_id`, `pro_def_rate_rates`, `pro_def_rate_check_in`, `pro_def_rate_check_out`, `pro_def_rate_min_stay`, `pro_def_rate_currency`, `add_fees`, `pro_cleaning_fee`, `pro_refundable_amt`, `pro_tax_fee`, `can_policy`, `notes`, `extra_notes`, `pro_def_insert_date`, `pro_def_update_date`, `pro_def_ip`) VALUES
(1, 1, 1, '367', '', '', '', '', '13', '170', '', NULL, 'Bookings canceled at least 60 days before the start of the stay will receive a 100% refund.', 'First Pet Fee $75,&lt;br /&gt;\r\nSecond&amp;nbsp;Pet Fee $25&lt;br /&gt;\r\n&amp;nbsp;', '', '2018-08-08 13:44:36', '2018-09-19 07:08:38', '43.230.197.202'),
(2, 2, 1, '335', '', '', '', '', '13', '170', '', NULL, '100% refund if canceled at least 60 days before arrival date.&amp;nbsp;', 'First Pet Fee $75&lt;br /&gt;\r\nSecond Pet Fee $25&lt;br /&gt;\r\n&amp;nbsp;', '', '2018-08-08 14:08:19', '2018-09-19 08:48:07', '43.230.197.202'),
(3, 3, 1, '352', '', '', '', '', '13', '170', '', NULL, '100% refund if canceled at least 60 days before arrival date.&amp;nbsp;', 'First Pet Fee $75&lt;br /&gt;\r\nSecond Pet Fee $25&lt;br /&gt;\r\n&amp;nbsp;', '', '2018-08-09 06:14:36', '2018-09-19 08:12:42', '43.230.197.202');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_property_details`
--

CREATE TABLE `lhk_property_details` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `featured` varchar(50) NOT NULL,
  `loc_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `property_heading` varchar(255) NOT NULL,
  `property_heading1` varchar(250) DEFAULT NULL,
  `property_heading2` varchar(250) DEFAULT NULL,
  `property_head_title` varchar(255) DEFAULT NULL,
  `property_content` longtext,
  `other_content1` longtext,
  `other_content2` longtext,
  `masterbedroom` longtext NOT NULL,
  `bedrooms2` longtext NOT NULL,
  `bedrooms3` longtext NOT NULL,
  `property_acc_type` varchar(255) DEFAULT NULL,
  `property_address` varchar(255) DEFAULT NULL,
  `property_latt` varchar(255) DEFAULT NULL,
  `property_long` varchar(255) DEFAULT NULL,
  `property_status` varchar(100) DEFAULT NULL,
  `property_type` varchar(255) DEFAULT NULL,
  `property_no_of_bedrooms` varchar(255) DEFAULT NULL,
  `property_no_of_sleeps` varchar(255) DEFAULT NULL,
  `property_no_of_baths` varchar(255) DEFAULT NULL,
  `property_floor` varchar(255) DEFAULT NULL,
  `property_feet` varchar(255) DEFAULT NULL,
  `property_garage` varchar(255) DEFAULT NULL,
  `property_elevator` varchar(100) DEFAULT NULL,
  `pro_det_insert_date` date NOT NULL,
  `pro_det_update_date` date DEFAULT NULL,
  `pro_det_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_property_details`
--

INSERT INTO `lhk_property_details` (`id`, `property_id`, `featured`, `loc_id`, `admin_id`, `property_heading`, `property_heading1`, `property_heading2`, `property_head_title`, `property_content`, `other_content1`, `other_content2`, `masterbedroom`, `bedrooms2`, `bedrooms3`, `property_acc_type`, `property_address`, `property_latt`, `property_long`, `property_status`, `property_type`, `property_no_of_bedrooms`, `property_no_of_sleeps`, `property_no_of_baths`, `property_floor`, `property_feet`, `property_garage`, `property_elevator`, `pro_det_insert_date`, `pro_det_update_date`, `pro_det_ip`) VALUES
(1, 1, '', 0, 1, 'Hidden Pond', NULL, NULL, '', '<p>Enjoy the beauty and serenity of a lakefront home nestled in the woods of Western North Carolina, a mere six miles from the main attractions in and and around the City of Asheville.</p>\r\n\r\n<p>Comfortably sleeping eight in four spacious bedrooms (one master with a King, and three with Queens) this home away from home is perfect for family gatherings.&nbsp;&nbsp;Newly decorated to meet the demands of function and good taste, you will find all of the conveniences of a luxury vacation rental.&nbsp;&nbsp;The living room is equipped with a fifty-two inch flat screen TV, a state of the art entertainment system, and a logged gas fireplace.&nbsp;&nbsp;Flat screen TVs are in all of the bedrooms. Cable and internet are provided. For some extra needed privacy, retreat to a private office with computer and printer.&nbsp;&nbsp;No amenity has been spared in a roomy kitchen that is equipped with a gas stove and oven, an electric oven and two microwaves, and a large center island table that seats six.&nbsp;&nbsp;Should you find in-kitchen eating wanting, step through to the separate formal dining room that seats 10-12 and has its own gas log fireplace.&nbsp;&nbsp;From the dining room or living room walk through sliding glass doors onto a welcoming porch with chairs for conversation, book reading, or a nap.&nbsp;&nbsp;Just beyond the porch meander through a tastefully landscaped yard, at the end of which is a deck overlooking a one acre spring free lake stocked with Bluegill, Smallmouth Bass, and Catfish. Sit on the deck and appreciate the sights and sounds emanating from the fountain at the heart of the lake.&nbsp;&nbsp;&ldquo;Catch and Release&rdquo; fishing is permitted, swimming and boating is not permitted.&nbsp;&nbsp;Grills are provided for afternoon and evening cookouts.&nbsp;&nbsp;Or if you just prefer to huddle around a fire on a cool Western North Carolina evening there is a gas fire pit in the back yard.&nbsp;</p>\r\n\r\n<p>This home is unique by simultaneously meeting the needs of those who want quiet and seclusion and those who want proximity to the conveniences of a city and surrounding attractions.&nbsp;&nbsp;Once through the main driveway and onto the property relish the feeling that you are miles away from the hustle and bustle of daily life. And yet without sacrificing privacy, you are walking distance to a grocery store, gas station, pharmacy, fast-food joints, restaurants, and putt-putt golf.&nbsp;&nbsp;Major regional attractions are short car rides away.&nbsp;&nbsp;You are, for example, eight miles from the majestic Biltmore Estate, five miles from the Grove Park Inn and Spa, ten miles from the Blue Ridge Parkway, and ten miles from hiking trails.&nbsp;&nbsp;If white water rafting is to your fancy, the French Broad River is three miles away. Preferring to stay on land, enjoy breath-taking views of the Appalachian Mountains on golf courses less than ten miles away.&nbsp;&nbsp;Horseback riding is a short twenty-five minutes jaunt from your lakefront home.&nbsp;&nbsp;Fifteen miles and you are at the seat of the most exhilarating zip line rides in all of the United States.&nbsp;&nbsp;Interested in a car ride to be in the presence of the natural beauty of the region, consider visiting the breath-taking Chimney Rock and Grandfather Mountain, thirty and seventy miles away respectively.&nbsp;&nbsp;</p>\r\n\r\n<p>Your lakeside home brings you close to one of America&rsquo;s friendliest, eclectic, and dynamic towns in America.&nbsp;&nbsp;Don&rsquo;t take our word for it. Notice how the accolades keep pouring in.&nbsp;&nbsp;it is among the &ldquo;World&rsquo;s Best Cities&rdquo; according to National Geographic Travel (2014), Conde Nast Traveler rates it among &ldquo;America&rsquo;s Top Beer Cities&rdquo; (January 2015), Yoga Journal listed it among the top ten towns in America with &ldquo;Top Notch Yoga&rdquo; (2011), the Huffington Post placed Asheville on the list &ldquo;The 13 Greatest Destination Food Towns in America&rdquo; (2014), and USAToday picked Asheville among the top ten locations to see &ldquo;The Brightest Foliage Around the USA&rdquo; (2014).&nbsp;</p>\r\n', '', '', 'Yes', 'Yes', '', '', 'Asheville, NC, USA', '', '', 'for rent', 'House', '4', '8', '2.5', '', 'Yes', '', '3', '2018-08-08', '2018-09-19', '43.230.197.202'),
(2, 2, '', 0, 1, 'Long Range Mountain Views', NULL, NULL, '', 'Peace, relaxation, solitude, luxury, with only the breeze or the cry of a soaring hawk to break the silence.....<br />\r\nall surrounded by a 100-acre nature preserve with turkeys, bob cats, deer, and even an occasional bear. &nbsp;<br />\r\nJust seven miles from the center of eclectic and historic Asheville, North Carolina, and close to a host of Western North Carolina attractions and activities. &nbsp;<br />\r\nA uniquely constructed home that seamlessly blends with its mountain environment, the home features a 22-foot-high cathedral ceiling, two large stone fireplaces (one in the living room and one in the master bedroom), and includes all the usual amenities plus a 6-person hot tub on the terrace, broadband Internet, a CD/Tape/Radio sound system throughout the house and unlimited U.S. long distance calling. Completely furnished, it will comfortably accommodate 8 people.&nbsp;The oversized master bedroom on the first floor has a king bed, 32&rdquo; flat screen TV, reclining chair and stone fireplace.<br />\r\nThe master bath features a sunken tub, a separate porcelain tile shower and two sinks. The second bedroom features a queen bed. &nbsp;The second bathroom has a shower and a single sink. The third bedroom is furnished with two twin beds and is in the open loft overlooking the living room. The living room has a 37&rdquo; flat screen TV, DVD, stone wood burning fireplace and large sofa. Several sliding glass doors allow easy access to the deck. The master and second bedroom has long range mountain views. &nbsp;All linens and towels provided.<br />\r\n<br />\r\nThe home is split into three levels you will be renting the upper two levels which consist of the main floor, plus the loft for a total of 2600 sq ft. &nbsp;The lower basement level will not be occupied during your visit, however, THERE IS AN OFFICE WITH AN OUTSIDE ENTRANCE THAT MAY BE USED BY CCMC PERSONNEL. The 1200 sq ft of outside decking and 400 sq ft of terrace offers privacy for the perfect place to relax (and while no smoking is allowed inside, smoking is permitted on the deck). With the gas grill, it&rsquo;s also the perfect place to cook and dine. Or enjoy preparing gourmet meals in the fully equipped kitchen as you enjoy the mountain vistas. The kitchen includes full size appliances, including refrigerator with ice/water in the door, electric stove with self cleaning oven, dishwasher, and microwave. You&rsquo;ll find sharp knives, multitude of pots, pans and bake dishes, pizza pans, hand mixer, toaster, blender, and coffee grinder and maker. There&rsquo;s also a full-size washer and dryer for your convenience.&nbsp;<br />\r\n<br />\r\nLush, green and serene, the home is remarkably close to historic Asheville, with abundant shopping, dining, arts, and entertainment. Just 9 miles away is the world famous Biltmore House. &nbsp;Also visit the world famous Grove Park Inn &amp; Spa less than 6 miles away, walk around Beaver Lake or Lake Louise, or picnic alongside the French Broad River only a 2 mile drive. Cruise the Blue Ridge Parkway, just 9 miles away.<br />\r\n<br />\r\nOther area attractions and activities include: the quaint town of Weaverville, the 435-acre North Carolina Arboretum, the Pisgah National Forest (mountain biking, swimming, hiking), horseback riding, balloon rides, skiing at Wolf Laurel (19 miles), relaxing at the historic Hot Springs Spa (30 miles), Harrah&rsquo;s Cherokee Casino, Chimney Rock Park, Grandfather Mountain, the Great Smoky Mountain Railroad, and, of course, the Great Smoky Mountains National Park.&nbsp;<br />\r\n<br />\r\nBut then you may find you&rsquo;d just rather stay home and sit on the deck with a good book.<br />\r\n<br />\r\nMust be over 25 years old to rent this property.', '', '', 'Yes', 'Yes', '', '', 'Asheville, NC, USA', '', '', 'for rent', 'House', '3', '8', '2', '', 'Yes', '', '3', '2018-08-08', '2018-09-19', '43.230.197.202'),
(3, 3, '', 0, 1, 'Serene Mountain Vacation Home', NULL, NULL, '', '<p>Peace, relaxation, solitude, with only the breeze or the cry of a soaring hawk to break the silence ... all surrounded by a 100-acre nature preserve with turkeys, deer, and even an occasional bear. Just seven miles from the center of eclectic and historic Asheville, North Carolina, and close to a host of Western North Carolina attractions and activities.</p>\r\n\r\n<p>This 3,200 square foot home perched high on the side of a mountain at the end of a pristine forested drive offers stunning panoramic winter views, spring and summer views through the lush curtain of leaves from hardwoods standing as sentinels of your privacy. A uniquely constructed home of wood and rock that seamlessly blends with its mountain environment, the home features a 22-foot-high cathedral ceiling, two large stone fireplaces, and includes all the usual amenities plus a 6-person hot tub on the deck, broadband Internet, a CD/Tape/Radio sound system throughout the house and unlimited U.S. long distance calling. Completely furnished, it will comfortably accommodate 10 people.The oversized master bedroom on the first floor has a king bed, TV, and the master bath features a full size tub, glass shower and two sinks. A second suite on the lower floor features two mission style queen beds, a massage chair and private bath. The third bedroom is furnished with a king bed, crib (linens not provided for crib) and rocking chair. All three bedrooms open directly to outside decks through large glass doors. The fourth bedroom has one queen bed. All linens and towels provided.</p>\r\n\r\n<p>The large decks on both the top and bottom floors cover 1,500 square feet and offer a gazebo, rocking chairs and privacy for the perfect place to relax (and while no smoking is allowed inside it is permitted on the deck). With the gas grill, it&rsquo;s also the perfect place to cook and dine. Or enjoy preparing gourmet meals in the fully equipped kitchen as you enjoy the mountain vistas through a large bay window. The kitchen includes full size appliances, including refrigerator with ice/water in the door, electric flat cook top with self cleaning oven, dishwasher, and microwave. You&rsquo;ll find sharp knives, multitude of pots, pans and bake dishes, pizza pans, hand mixer, toaster, blender, and coffee grinder and maker. There&rsquo;s also a full-size washer and dryer for your convenience. Off the kitchen you will find a small breakfast nook.</p>\r\n\r\n<p>Lush, green and serene, the home is remarkably close to historic Asheville, with abundant shopping, dining, arts, and entertainment. Just 9 miles away is the world famous Biltmore House. Also visit the world famous Grove Park Inn &amp; Spa less than 6 miles away, walk around Beaver Lake or Lake Louise, or picnic alongside the French Broad River only a 2 mile drive. Cruise the Blue Ridge Parkway, just 9 miles away.</p>\r\n\r\n<p>Other area attractions and activities include: the quaint town of Weaverville, the 435-acre North Carolina Arboretum, the Pisgah National Forest (mountain biking, swimming, hiking), horseback riding, balloon rides, skiing at Wolf Laurel (19 miles), relaxing at the historic Hot Springs Spa (30 miles), Harrah&rsquo;s Cherokee Casino, Chimney Rock Park, Grandfather Mountain, the Great Smoky Mountain Railroad, and, of course, the Great Smoky Mountains National Park.</p>\r\n\r\n<p>But then you may find you&rsquo;d just rather stay home and sit on the deck with a good book.</p>\r\n', '', '', 'Yes', 'Yes', '', '', 'Asheville, NC, USA', '', '', 'for rent', 'House', '4', '10', '3.5', '', 'Yes', '', '3', '2018-08-09', '2018-09-19', '43.230.197.202');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_property_listing`
--

CREATE TABLE `lhk_property_listing` (
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `loc_id` int(11) NOT NULL,
  `property_heading` varchar(255) NOT NULL,
  `property_status` varchar(255) NOT NULL,
  `pro_add_insert_date` date NOT NULL,
  `pro_add_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_property_listing`
--

INSERT INTO `lhk_property_listing` (`property_id`, `admin_id`, `loc_id`, `property_heading`, `property_status`, `pro_add_insert_date`, `pro_add_ip`) VALUES
(1, 1, 0, 'Hidden Pond', 'for rent', '2018-08-08', '43.230.197.202'),
(2, 1, 0, 'Long Range Mountain Views', 'for rent', '2018-08-08', '43.230.197.202'),
(3, 1, 0, 'Serene Mountain Vacation Home', 'for rent', '2018-08-09', '43.230.197.202');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_property_new_rates`
--

CREATE TABLE `lhk_property_new_rates` (
  `pro_new_rate_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `pro_new_rate_desc` varchar(255) NOT NULL,
  `pro_new_rate_sdate` date NOT NULL,
  `pro_new_rate_edate` date NOT NULL,
  `pro_new_rate_weekend_nt` varchar(255) NOT NULL,
  `pro_new_rate_week_nt` varchar(255) NOT NULL,
  `pro_new_rate_weekly_nt` varchar(255) NOT NULL,
  `pro_new_rate_monthly` varchar(255) NOT NULL,
  `pro_new_rate_event` varchar(100) NOT NULL,
  `pro_new_rate_min_stay` varchar(255) NOT NULL,
  `basedonguest` varchar(100) NOT NULL,
  `guestpernoght` varchar(100) NOT NULL,
  `pro_new_insert_date` date NOT NULL,
  `pro_new_update_date` date NOT NULL,
  `pro_new_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_property_new_rates`
--

INSERT INTO `lhk_property_new_rates` (`pro_new_rate_id`, `property_id`, `admin_id`, `pro_new_rate_desc`, `pro_new_rate_sdate`, `pro_new_rate_edate`, `pro_new_rate_weekend_nt`, `pro_new_rate_week_nt`, `pro_new_rate_weekly_nt`, `pro_new_rate_monthly`, `pro_new_rate_event`, `pro_new_rate_min_stay`, `basedonguest`, `guestpernoght`, `pro_new_insert_date`, `pro_new_update_date`, `pro_new_ip`) VALUES
(12, 3, 0, 'Labor Day', '2018-08-30', '2018-09-04', '445', '385', '2325', '4500', '', '3', '', '', '2018-08-09', '2018-09-19', '43.230.197.202'),
(13, 3, 0, 'Leaf Season 2017', '2018-10-04', '2018-11-13', '445', '385', '2325', '', '', '3', '', '', '2018-08-09', '2018-09-19', '43.230.197.202'),
(14, 3, 0, 'Thanksgiving', '2018-11-19', '2018-11-26', '445', '385', '2325', '4500', '', '5', '', '', '2018-08-09', '2018-09-19', '43.230.197.202'),
(15, 3, 0, 'Christmas/New Year', '2018-12-21', '2019-01-01', '445', '385', '2325', '4500', '', '5', '', '', '2018-08-09', '2018-09-19', '43.230.197.202'),
(16, 3, 0, 'Winter Season', '2019-01-02', '2019-02-13', '331', '268', '1528', '3600', '', '3', '', '', '2018-08-09', '2018-09-07', '43.230.197.202'),
(17, 3, 0, 'Valentines Day', '2019-02-14', '2019-02-17', '445', '385', '', '', '', '3', '', '', '2018-08-09', '2018-09-19', '43.230.197.202'),
(18, 3, 0, 'Easter', '2019-04-18', '2019-04-22', '445', '385', '2325', '4500', '', '4', '', '', '2018-08-09', '2018-09-19', '43.230.197.202'),
(19, 3, 0, 'Memorial Day', '2019-05-23', '2019-05-27', '', '385', '2325', '4500', '', '5', '', '', '2018-08-09', '0000-00-00', '43.230.197.202'),
(20, 3, 0, 'My Standard Rate', '0000-00-00', '0000-00-00', '390', '335', '1910', '4500', '', '3', '', '', '2018-08-09', '2018-09-07', '43.230.197.202'),
(21, 3, 0, 'July', '2019-07-01', '2019-07-31', '445', '385', '2325', '', '', '5', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(24, 1, 0, 'Labor Day', '2018-08-30', '2018-09-04', '445', '385', '2325', '4500', '', '3', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(25, 1, 0, 'Leaf Season 2017', '2018-10-04', '2018-11-13', '445', '385', '2325', '', '', '3', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(26, 1, 0, 'Thanksgiving', '2018-11-21', '2018-11-28', '445', '385', '2325', '4500', '', '5', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(27, 1, 0, 'Christmas/New Year', '2018-12-20', '2019-01-01', '445', '385', '2325', '4500', '', '5', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(29, 1, 0, 'Winter Season', '2019-01-02', '2019-02-13', '331', '268', '1528', '3600', '', '3', '', '', '2018-09-07', '2018-09-11', '43.230.197.202'),
(30, 1, 0, 'Valentines Day', '2019-02-14', '2019-02-17', '445', '385', '', '', '', '3', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(31, 1, 0, 'Easter', '2019-04-18', '2019-04-22', '445', '385', '2325', '4500', '', '4', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(32, 1, 0, 'Memorial Day', '2019-05-23', '2019-05-27', '', '385', '2325', '4500', '', '5', '', '', '2018-09-07', '0000-00-00', '43.230.197.202'),
(33, 1, 0, 'My Standard Rate', '0000-00-00', '0000-00-00', '390', '335', '1910', '4500', '', '3', '', '', '2018-09-07', '2018-09-11', '43.230.197.202'),
(34, 1, 0, 'July', '2019-07-01', '2019-07-31', '445', '385', '2325', '', '', '5', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(36, 2, 0, 'Labor Day', '2018-08-30', '2018-09-04', '445', '385', '2325', '4500', '', '3', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(37, 2, 0, 'Leaf Season 2017', '2018-10-04', '2018-11-13', '445', '385', '2325', '', '', '3', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(38, 2, 0, 'Thanksgiving', '2018-11-19', '2018-11-26', '445', '385', '2325', '4500', '', '5', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(39, 2, 0, 'Christmas/New Year', '2018-12-21', '2019-01-01', '445', '385', '2325', '4500', '', '5', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(40, 2, 0, 'Winter Season', '2019-01-02', '2019-02-13', '331', '268', '1528', '3600', '', '3', '', '', '2018-09-07', '2018-09-11', '43.230.197.202'),
(41, 2, 0, 'Valentines Day', '2019-02-14', '2019-02-17', '445', '385', '', '', '', '3', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(42, 2, 0, 'Easter', '2019-04-18', '2019-04-22', '445', '385', '2325', '4500', '', '4', '', '', '2018-09-07', '2018-09-19', '43.230.197.202'),
(43, 2, 0, 'Memorial Day', '2019-05-23', '2019-05-27', '', '385', '2325', '4500', '', '5', '', '', '2018-09-07', '0000-00-00', '43.230.197.202'),
(44, 2, 0, 'My Standard Rate', '0000-00-00', '0000-00-00', '390', '335', '1910', '4500', '', '3', '', '', '2018-09-07', '2018-09-11', '43.230.197.202'),
(45, 2, 0, 'July', '2019-07-01', '2019-07-31', '445', '385', '2325', '', '', '5', '', '', '2018-09-07', '2018-09-19', '43.230.197.202');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_restaurant`
--

CREATE TABLE `lhk_restaurant` (
  `current_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `heading` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `modify_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_reviews_detail`
--

CREATE TABLE `lhk_reviews_detail` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `c_review` longtext NOT NULL,
  `c_place` varchar(255) NOT NULL,
  `sdate` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `r_update_date` date DEFAULT NULL,
  `r_ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_reviews_detail`
--

INSERT INTO `lhk_reviews_detail` (`id`, `property_id`, `admin_id`, `img`, `c_name`, `heading`, `c_review`, `c_place`, `sdate`, `status`, `added_date`, `r_update_date`, `r_ip`) VALUES
(1, 1, 1, '', 'Donna H.', 'Such a cozy home and absolutely loved the pond and fenced yard!', '<p>Beautiful, clean home and had all the amenities we could have possibly needed. Absolutely loved the yard and the pond...such a relaxing place to start and end the day. The location was so convenient to everything...grocery store, restaurants, Asheville, and hiking. Owner is very responsive and accommodating.</p>\r\n\r\n<p>Would definitely stay there again!</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(2, 1, 1, '', 'Lynn G.', 'Great Place to Spend Christmas or anytime of the year!', '<p>Great location! In a beautiful setting on a pond, but a quick drive to downtown Asheville. And very convenient to grocery store, drugstore, etc. Very comfortable for our family of 5 adults. Our dogs were welcomed and they loved the fenced in area. The owners were extremely responsive when we had questions. They even had a Christmas tree put up that we quickly decorated with our own ornaments. We would definitely consider going back. We had a wonderful Christmas in Asheville and our lodging made us feel at home.</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(3, 1, 1, '', 'Susan L.', 'Wonderful accommodation in great location', '<p>This property is in a great location. Very close to the highways and easy walking distance to the grocery store to pick up odds and ends. Comfortable, clean, spacious. The owner rapidly responded to any questions. Bright and airy.</p>\r\n\r\n<p>We stayed with our two of our children and their families, and were able to spread out. The walks were fun and challenging right from the property. Of course, Asheville has a lot to recommend itself.</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(4, 1, 1, '', 'Kalpesh P.', 'Great property', '<p>Great place</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(5, 1, 1, '', 'Jonathan J.', 'Very comfortable', '<p>This very spacious home was a great vacation getaway for me and my family. My teenage daughters loved it. Very convenient to Asheville. Loved the fish pond which was cool and right by the house. I highly recommend a stay here!</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(6, 1, 1, '', 'Michelle J.', 'Loved this place!', '<p>This is our third rental through VRBO and by far the best! The house was perfect! Beautifully decorated and comfortable. It had all that we needed and then some. We especially liked the fact that it was a short drive to downtown Asheville, so we could have a great balance of relaxing and activities! So great to have the fenced in yard. Thank you so much for sharing your wonderful home with us.</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(7, 1, 1, '', 'Tom L.', 'Great home and very comfortable.', '<p>Beautiful property with all the amenities. Highly recommended.</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(8, 1, 1, '', 'Allie S.', 'I would definitely stay here again', '<p>Lots a space, large kitchen and dining room table. Love the fire places. The view of the pond and the setting is nice. Love the hot tub. Location is great, feels safe and secluded but right off the main road and behind the grocery. So convienent.</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(9, 1, 1, '', 'Kathleen Q.', 'Something For Everyone', '<p>We had a great vacation at this very conveniently located home. Very close to the Ingles supermarket, it is on it&#39;s own private road and actually feels quite remote when you pull into the driveway and explore the property. Sitting on the front porch, overlooking the pond, we had the sense of serenity and privacy. The house was perfect for us as my husband and I had comfortable surroundings to enjoy while my son and his family explored the mountains, river rafting and beautiful water holes in the surrounding mountains. We toured the Biltmore estate, had a wine tasting, lunch at the Grove Park Inn, attended the Folk Dance and Music Festival , took the Hop On Trolly Tour and walked through the gorgeous NC Arboretum which had a Lego sculpture exhibit integrated into the beautiful gardens.</p>\r\n\r\n<p>My husband is a baseball nut and the TVs had all the channels he could want. The kitchen lent itself to fun family meals as we sat around the large table for eight.</p>\r\n\r\n<p>We had a minor issue that when reported was immediately taken care of and the owner was extremely responsive. I&#39;d recommend this house to any family.</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(10, 1, 1, '', 'Allen H.', 'Great House, Property, and Lots of Space and Private', '<p>Eight of us went up for an &quot;Extended Family&quot; short vacation. Ages from 17 to 87, and it was the perfect place! Lots of room to spread out and enjoy ourselves yet still be able to have our space. 2 small dogs enjoyed the rabbits, and fish. Pond was beautiful and stocked with lots of fish. Fish Food when we arrived was an unexpected surprise!</p>\r\n\r\n<p>Close to downtown Asheville and right off the highway, and close to Grocery Stores and restaurants, etc.</p>\r\n\r\n<p>House was nice and well equipped. Would definitely stay again!</p>\r\n\r\n<p>Kudo&#39;s to the Owners!</p>\r\n\r\n<p>Perfect for 2 families to stay and enjoy all the surrounding areas have to offer.</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(11, 2, 1, '', 'Roberta B.', 'Fun Retreat in the Mountains', '<p>Wonderful setting for our family reunion. Comfortable accommodations with a killer view off the back deck. The hot tub was in constant use and the fenced in dog run made it easy for us to have our pets with us. It was only a short drive to all the sites in Asheville but sure nice to come back to a serene tranquil setting. We had nearby grocery stores, golf courses and a game facility with putt-putt, go carts and an arcade. Plenty of things to occupy everyone at this rental. We had an enjoyable week!</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(12, 2, 1, '', 'Ken K.', 'Excellent take two', '<p>Stayed here two years ago for my daughter&#39;s graduation and enjoyed the stay so much that we came back to stay again for my next daughter&#39;s graduation. No more graduations coming but if I am in the Asheville and looking for a place to stay I would definitely stay again!!</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(13, 2, 1, '', 'Michael M.', 'Gorgeous, well maintained home!', '<p>Thank you John and Georgina for the use of your beautiful property! Space was ample, the view was breathtaking, the hot tub was a perfect touch. We arrived and it was spotless. The notes provided on how to get in and operate everything were detailed. Other reviewers have stated that there were not enough kitchen utensils, pot/pans, tools etc. We did not find this to be the case. We had 8 people with us and cooked most of our meals there and did not find the kitchen wanting for anything. A few notes from us on how things could be improved: We were led to believe that there would be a dishwasher but upon arrival found it to be out of order. It would have been nice to have a heads up about this especially since there were no dish sponges left for us to do the dishes with. Paper products were very scarce. We had 8 people and the toilet paper and paper towels were pretty much gone by day 2. These are two very nit-picky things and of little consequence when looking at the grand scheme of our lovely mountain stay. Thanks again and have already recommended it to others!</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(14, 2, 1, '', 'Nancy W.', 'Great location! Beautiful views and wonderful home!', '<p>A rainy weekend but a fabulous house. Well appointed and clean and cozy!</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(15, 2, 1, '', 'Kristyna L.', 'Beautiful and Relaxing', '<p>The house is very nice and clean. We stayed with our family for a few days and enjoyed the view.</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(16, 2, 1, '', 'Bonnie G.', 'Beautiful Views, Homey, and So Relaxing', '<p>We loved our Christmas stay at the Long Range Mountain Views house. As others have said, the house is super comfortable and the views are wonderful. The fireplace and the stonework is a work of art. We loved it so much we had a hard time going anywhere else. Being able to include our dogs in our Christmas vacation made it even more special. They even had a Christmas tree set up for us! The place was immaculate and had most everything you would want at your fingertips. Georgie was so helpful and accommodating. I can see that a couple of upgrades here and there would add to the home but we will definitely go back hopefully a couple of times this year. We would highly recommend this home.</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(17, 2, 1, '', 'Denise P.', 'As advertised!', '<p>I would definitely rent this property again. The location is very good - 15 minutes from most things in Asheville, but a feeling of being away in the mountains. Our family enjoyed the living room with its comfortable furniture (love the swivel chair!), views, and beautiful stone fireplace. We have small dogs, and liked that there are 2 fenced in areas, and little carpeting. Excellent laundry room, home office/dining area, large master bath with private toilet area, good seating on the deck, good parking. The house does have some quirks - like the very hot water that comes out of the cold tap in the bathroom, and it has an &quot;updated 90s&quot; vibe- man made countertops mixed with granite, new sink/old cabinetry etc. They also need to replace the ceiling light in the master bedroom because it makes the corner storage space very dark. The kitchen was pretty well equipped, but we missed having a griddle. We liked the stools at the island with good access to plugs for charging devices - good morning hangout space. The bottom floor is rented out, but the renters were friendly. I would bring extra towels - only the minimum is provided. I highly recommend this property.</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(18, 2, 1, '', 'Hans B.', 'AMAZING TIME!!!', '<p>This place was amazing from the start. The view from the back porch in the morning looking over the French Broad while drinking coffee and listening to the wild animals (turkeys gobble) was nothing short of perfect. Everything in the house was as promised and was in great condition (clean and tidy). The rooms were large as well as the bathroooms and living area. When I had a question or there was a problem (no real problems) they were immediately fixed and/or received a quick response. Can&#39;t wait to visit again and will definitely stay at this beautiful home.</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(19, 2, 1, '', 'Theresa C.', 'Relaxing mountain views', '<p>Our family of five enjoyed this spacious relaxing home for 3days. It had plenty of room and was spotless. We loved how close to downtown Asheville this house was. The view was serene at all times of the day but especially sunrise and sunset. We hiked the Craggy Gardens trail off the Blue Ridge Parkway and also went to the NC Arboretum. We enjoyed the enormous fireplace at the end of the day. We enjoyed meals at Tupelo Honey, Wicked Weed and Walk -- all were excellent. We also cooked in at the well equipped kitchen. All in all a successful family trip.</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(20, 2, 1, '', 'Ron W.', 'Mountain View vacation', '<p>The house was perfect. Very clean when we got their and the view of the mountains was breathtaking. The only thing that could have been better was better directions on getting to the place. Would go again!!!!!</p>\r\n', '', '', 1, '2018-08-08', NULL, NULL),
(21, 3, 1, '', 'Jack S.', 'Simply Fantastic!', '<p>I don&#39;t even know where to start. Everything was perfect. Very clean, fully filled with all you need for your visit, from linens, to kitchen utensils. Everything in the VRBO description was delivered on. The quiet back porch led to wonderful family filled evenings, and all was a short drive to downtown. Really anywhere you wanted to go was very easy with the I26 access just a mile or so away.</p>\r\n\r\n<p>I highly recommend this wonderful retreat, and I can assure you we will be back!</p>\r\n', '', '', 1, '2018-08-09', NULL, NULL),
(22, 3, 1, '', 'Adam B.', 'A beautiful, convenient place.', 'While it&#39;s easy to think you&#39;re on top of your own private mountain when looking off the back deck of this house, you&#39;re really only a few minutes from all the activities greater Asheville has to offer as well. It&#39;s a great &quot;hidden&quot; location that is still close to everything.', '', '', 1, '2018-08-09', NULL, NULL),
(23, 3, 1, '', 'Ann S.', 'Beautiful cabin in the woods! Great location!', '<p>Gathered with a group of 10 for craft beer and White water rafting in Asheville. The cabin was awesome! Great location and very clean and comfortable. We were greeted by wild turkeys in the morning and great views in the afternoon! It was a wonderful visit and would suggest to anyone!</p>\r\n', '', '', 1, '2018-08-09', NULL, NULL),
(24, 3, 1, '', 'Linda W.', 'Great views, plenty of room.', '<p>This was a great place for a family reunion of 8 people. The master suite on the main floor was perfect for my 91 year old mother, who uses a walker. The large decks offered great views with plenty of room. I appreciated the extras like soap and shampoo laid out for every guest, lots of good pots and pans, and even extra dishwasher soap. The location was perfect for visits to local breweries and the Biltmore House. Loved it.</p>\r\n', '', '', 1, '2018-08-09', NULL, NULL),
(25, 3, 1, '', 'Janie H.', 'Spacious, clean, well equipped, and very comfortable.', '<p>My family and I thoroughly enjoyed our stay. The home and view from it were beautiful. The house was everything promised and we would be thrilled to stay there again. There were 7 of us, but there&rsquo;s plenty of room for 10. Asheville is great city with lots to do there.</p>\r\n', '', '', 1, '2018-08-09', NULL, NULL),
(26, 3, 1, '', 'zackary f.', 'Great property in a convenient location to Asheville!', '<p>Loved this property! Lots of room, with many nice small touches like two wood burning fireplaces, massage chair, and heat lamp for when you get out of the shower. Well stocked kitchen. Super Mountain Views!</p>\r\n', '', '', 1, '2018-08-09', NULL, NULL),
(27, 3, 1, '', 'Casey W.', 'Girls weekend away', '<p>Some friends and I just wanted a quiet weekend away without the guys and found this perfect little gem just 10 minutes from downtown Asheville. Nice to stay in or grab an uber ride downtown for some brewery hopping! Would be great for families too - lots of space and things to do!</p>\r\n', '', '', 1, '2018-08-09', NULL, NULL),
(28, 3, 1, '', 'Andrina K.', 'Very nice and well kept home. Loved the hot tub and Fooseball table. Perfect for our large family!', '<p>House was perfect size for our family gathering. Well stocked kitchen for cooking. Loved the fireplace upstairs and down. Only thing was it really needed better pillows, especially in upstairs master bedroom and extra blankets. The two provided weren&#39;t quite enough for chilly nights.</p>\r\n', '', '', 1, '2018-08-09', NULL, NULL),
(29, 3, 1, '', 'Sheila M.', 'Tranquil Retreat', '<p>Four of my high school friends and I have just returned from our stay at this wonderful home. We had a marvelous time. The home is exactly pictured as in the VRBO photos and is just beautiful. We especially enjoyed the covered gazebo on the back deck, and spent a lot of time out there in the wooden rockers ( 5 of them!) drinking coffee in the morning or having a glass of wine in the evening. We had no issues or problems with the wifi--didn&#39;t use the TVs or hot tub, so I can&#39;t comment on those. I did have a little trouble opening the lockbox, but the owner happened to come by, so he helped with that. I would agree with a previous reviewer that the steep drive might be challenging to navigate with snow on the ground. I rented an SUV and I had no problems getting out. A big plus in my book is that we had the peaceful experience of a home in the woods along with the convenience of being close to town. Asheville was a great choice for our gathering--spent Saturday exploring the Biltmore Estate and Winery and on Sunday drove on the Blur Ridge Parkway up to Craggy Gardens and did a short hike there. I cannot say enough how much we enjoyed our time and I would not hesitate to recommend this place as a vacation retreat for your time in Asheville.</p>\r\n', '', '', 1, '2018-08-09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lhk_social_links`
--

CREATE TABLE `lhk_social_links` (
  `social_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `linkdin` varchar(255) NOT NULL,
  `instragram` varchar(255) NOT NULL,
  `google_plus` varchar(255) NOT NULL,
  `social_status` int(11) NOT NULL,
  `social_insert_date` date NOT NULL,
  `social_update_date` date DEFAULT NULL,
  `social_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_social_links`
--

INSERT INTO `lhk_social_links` (`social_id`, `admin_id`, `facebook`, `twitter`, `linkdin`, `instragram`, `google_plus`, `social_status`, `social_insert_date`, `social_update_date`, `social_ip`) VALUES
(1, 1, 'https://www.facebook.com/', 'https://twitter.com/', '', '', 'https://plus.google.com/', 1, '2018-01-12', NULL, '43.251.85.163');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_subscribe`
--

CREATE TABLE `lhk_subscribe` (
  `sub_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `statuss` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_tbl_area_information`
--

CREATE TABLE `lhk_tbl_area_information` (
  `area_id` int(11) NOT NULL,
  `property_id` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_tbl_highlights`
--

CREATE TABLE `lhk_tbl_highlights` (
  `high_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `menu_order` varchar(100) NOT NULL,
  `create_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_tbl_things_files`
--

CREATE TABLE `lhk_tbl_things_files` (
  `image_id` int(11) NOT NULL,
  `current_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_order` int(11) NOT NULL,
  `uploaded_img_date` date NOT NULL,
  `updated_img_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_tpl_location`
--

CREATE TABLE `lhk_tpl_location` (
  `loc_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `loc_title` varchar(200) NOT NULL,
  `loc_img` varchar(200) NOT NULL,
  `loc_content` longtext NOT NULL,
  `loc_address` varchar(255) NOT NULL,
  `create_date` varchar(100) NOT NULL,
  `update_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_transaction`
--

CREATE TABLE `lhk_transaction` (
  `trans_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `prop_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trans_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trans_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `trans_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `trans_amt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trans_curr` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `trans_checkin` date NOT NULL,
  `trans_checkout` date NOT NULL,
  `request_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msg` text COLLATE utf8_unicode_ci NOT NULL,
  `trans_date` date NOT NULL,
  `trans_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lhk_why_dewey`
--

CREATE TABLE `lhk_why_dewey` (
  `why_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL,
  `update_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ical_events`
--
ALTER TABLE `ical_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `lhk_about_details`
--
ALTER TABLE `lhk_about_details`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `lhk_about_property`
--
ALTER TABLE `lhk_about_property`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `lhk_alternate_details`
--
ALTER TABLE `lhk_alternate_details`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `lhk_amenities_details`
--
ALTER TABLE `lhk_amenities_details`
  ADD PRIMARY KEY (`amenity_id`);

--
-- Indexes for table `lhk_amenity`
--
ALTER TABLE `lhk_amenity`
  ADD PRIMARY KEY (`amenity_id`);

--
-- Indexes for table `lhk_amenity_details`
--
ALTER TABLE `lhk_amenity_details`
  ADD PRIMARY KEY (`amen_id`);

--
-- Indexes for table `lhk_area_detail`
--
ALTER TABLE `lhk_area_detail`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `lhk_area_info`
--
ALTER TABLE `lhk_area_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lhk_beach_place`
--
ALTER TABLE `lhk_beach_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lhk_beach_rules`
--
ALTER TABLE `lhk_beach_rules`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `lhk_booking_details`
--
ALTER TABLE `lhk_booking_details`
  ADD PRIMARY KEY (`bok_det_id`);

--
-- Indexes for table `lhk_client_details`
--
ALTER TABLE `lhk_client_details`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `lhk_contact_details`
--
ALTER TABLE `lhk_contact_details`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `lhk_current_special`
--
ALTER TABLE `lhk_current_special`
  ADD PRIMARY KEY (`current_id`);

--
-- Indexes for table `lhk_dewey_facts`
--
ALTER TABLE `lhk_dewey_facts`
  ADD PRIMARY KEY (`fact_id`);

--
-- Indexes for table `lhk_files`
--
ALTER TABLE `lhk_files`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `lhk_front_attraction`
--
ALTER TABLE `lhk_front_attraction`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lhk_gallery`
--
ALTER TABLE `lhk_gallery`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `lhk_home_details`
--
ALTER TABLE `lhk_home_details`
  ADD PRIMARY KEY (`home_id`);

--
-- Indexes for table `lhk_ical_events`
--
ALTER TABLE `lhk_ical_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `lhk_ical_links`
--
ALTER TABLE `lhk_ical_links`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `lhk_info`
--
ALTER TABLE `lhk_info`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lhk_login_details`
--
ALTER TABLE `lhk_login_details`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `lhk_logo`
--
ALTER TABLE `lhk_logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `lhk_meta_tbl`
--
ALTER TABLE `lhk_meta_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lhk_payment_initiate`
--
ALTER TABLE `lhk_payment_initiate`
  ADD PRIMARY KEY (`pinit_id`);

--
-- Indexes for table `lhk_profile_details`
--
ALTER TABLE `lhk_profile_details`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `lhk_property_back_details`
--
ALTER TABLE `lhk_property_back_details`
  ADD PRIMARY KEY (`pro_back_id`);

--
-- Indexes for table `lhk_property_default_rates`
--
ALTER TABLE `lhk_property_default_rates`
  ADD PRIMARY KEY (`pro_def_rate_id`);

--
-- Indexes for table `lhk_property_details`
--
ALTER TABLE `lhk_property_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lhk_property_listing`
--
ALTER TABLE `lhk_property_listing`
  ADD PRIMARY KEY (`property_id`);

--
-- Indexes for table `lhk_property_new_rates`
--
ALTER TABLE `lhk_property_new_rates`
  ADD PRIMARY KEY (`pro_new_rate_id`);

--
-- Indexes for table `lhk_restaurant`
--
ALTER TABLE `lhk_restaurant`
  ADD PRIMARY KEY (`current_id`);

--
-- Indexes for table `lhk_reviews_detail`
--
ALTER TABLE `lhk_reviews_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lhk_social_links`
--
ALTER TABLE `lhk_social_links`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `lhk_subscribe`
--
ALTER TABLE `lhk_subscribe`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `lhk_tbl_area_information`
--
ALTER TABLE `lhk_tbl_area_information`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `lhk_tbl_highlights`
--
ALTER TABLE `lhk_tbl_highlights`
  ADD PRIMARY KEY (`high_id`);

--
-- Indexes for table `lhk_tbl_things_files`
--
ALTER TABLE `lhk_tbl_things_files`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `lhk_tpl_location`
--
ALTER TABLE `lhk_tpl_location`
  ADD PRIMARY KEY (`loc_id`);

--
-- Indexes for table `lhk_transaction`
--
ALTER TABLE `lhk_transaction`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `lhk_why_dewey`
--
ALTER TABLE `lhk_why_dewey`
  ADD PRIMARY KEY (`why_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ical_events`
--
ALTER TABLE `ical_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_about_details`
--
ALTER TABLE `lhk_about_details`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_about_property`
--
ALTER TABLE `lhk_about_property`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lhk_alternate_details`
--
ALTER TABLE `lhk_alternate_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_amenities_details`
--
ALTER TABLE `lhk_amenities_details`
  MODIFY `amenity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_amenity`
--
ALTER TABLE `lhk_amenity`
  MODIFY `amenity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `lhk_amenity_details`
--
ALTER TABLE `lhk_amenity_details`
  MODIFY `amen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `lhk_area_detail`
--
ALTER TABLE `lhk_area_detail`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_area_info`
--
ALTER TABLE `lhk_area_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lhk_beach_place`
--
ALTER TABLE `lhk_beach_place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_beach_rules`
--
ALTER TABLE `lhk_beach_rules`
  MODIFY `rule_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_booking_details`
--
ALTER TABLE `lhk_booking_details`
  MODIFY `bok_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lhk_client_details`
--
ALTER TABLE `lhk_client_details`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lhk_contact_details`
--
ALTER TABLE `lhk_contact_details`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lhk_current_special`
--
ALTER TABLE `lhk_current_special`
  MODIFY `current_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_dewey_facts`
--
ALTER TABLE `lhk_dewey_facts`
  MODIFY `fact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_files`
--
ALTER TABLE `lhk_files`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `lhk_front_attraction`
--
ALTER TABLE `lhk_front_attraction`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_gallery`
--
ALTER TABLE `lhk_gallery`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_home_details`
--
ALTER TABLE `lhk_home_details`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lhk_ical_events`
--
ALTER TABLE `lhk_ical_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lhk_ical_links`
--
ALTER TABLE `lhk_ical_links`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_info`
--
ALTER TABLE `lhk_info`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_login_details`
--
ALTER TABLE `lhk_login_details`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lhk_logo`
--
ALTER TABLE `lhk_logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_meta_tbl`
--
ALTER TABLE `lhk_meta_tbl`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_payment_initiate`
--
ALTER TABLE `lhk_payment_initiate`
  MODIFY `pinit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_profile_details`
--
ALTER TABLE `lhk_profile_details`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lhk_property_back_details`
--
ALTER TABLE `lhk_property_back_details`
  MODIFY `pro_back_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_property_default_rates`
--
ALTER TABLE `lhk_property_default_rates`
  MODIFY `pro_def_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lhk_property_details`
--
ALTER TABLE `lhk_property_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lhk_property_listing`
--
ALTER TABLE `lhk_property_listing`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lhk_property_new_rates`
--
ALTER TABLE `lhk_property_new_rates`
  MODIFY `pro_new_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `lhk_restaurant`
--
ALTER TABLE `lhk_restaurant`
  MODIFY `current_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_reviews_detail`
--
ALTER TABLE `lhk_reviews_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `lhk_social_links`
--
ALTER TABLE `lhk_social_links`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lhk_subscribe`
--
ALTER TABLE `lhk_subscribe`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_tbl_area_information`
--
ALTER TABLE `lhk_tbl_area_information`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_tbl_highlights`
--
ALTER TABLE `lhk_tbl_highlights`
  MODIFY `high_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_tbl_things_files`
--
ALTER TABLE `lhk_tbl_things_files`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_tpl_location`
--
ALTER TABLE `lhk_tpl_location`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_transaction`
--
ALTER TABLE `lhk_transaction`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_why_dewey`
--
ALTER TABLE `lhk_why_dewey`
  MODIFY `why_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
