-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2018 at 04:14 PM
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
-- Database: `magpie_on`
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
(1, '1.jpg', 'Why we choose Alki', 'My wife and I fell in love with this property when we were 18 years old and were fortunate enough that when it came available for purchase 12 years later, we were able to buy it. Now we couldn&amp;#39;t imagine living anywhere else!&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp;', '', '', '2018-09-25 08:09:46', '2018-10-04 18:03:29');

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
(1, 1, 1, 'General', 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(2, 1, 1, 'Dining', 2, '2018-09-25', '2018-09-25', '43.230.197.202'),
(3, 1, 1, 'Leisure &amp; Sports', 3, '2018-09-25', '2018-09-25', '43.230.197.202'),
(4, 1, 1, 'Services', 4, '2018-09-25', '2018-09-25', '43.230.197.202'),
(5, 1, 1, 'Room Amenities', 5, '2018-09-25', '2018-09-25', '43.230.197.202'),
(6, 2, 1, 'General', 6, '2018-09-25', '2018-09-25', '43.230.197.202'),
(7, 2, 1, 'Activities', 7, '2018-09-25', '2018-09-25', '43.230.197.202'),
(8, 3, 1, 'General', 8, '2018-09-25', '2018-09-25', '43.230.197.202'),
(9, 3, 1, 'Activities', 9, '2018-09-25', '2018-09-25', '43.230.197.202');

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
(3, 1, 'Non-smoking rooms', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(4, 1, 'Rooms/ Facilities for disabled', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(5, 1, 'Free parking', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(6, 1, 'Wi-Fi', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(7, 1, 'Allergy-free rooms', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(9, 1, 'Off-site car park', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(10, 1, 'No smoking on site', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(11, 1, 'Bridal suite', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(12, 2, 'Dryer', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(13, 2, 'Cookware/ Kitchen utensils', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(14, 2, 'Outdoor dining area', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(15, 3, 'Fishing', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(16, 3, 'Jacuzzi', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(17, 3, 'Wind surfing', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(18, 3, 'Massage', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(19, 3, 'Library', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(20, 3, 'BBQ facilities', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(21, 3, 'Tennis court', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(22, 3, 'Golf course', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(23, 3, 'Sun terrace', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(24, 3, 'Hiking', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(25, 3, 'Diving', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(26, 3, 'Canoeing', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(27, 3, 'Cycling', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(28, 3, 'Garden area', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(29, 4, 'Dry cleaning', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(30, 4, 'Bicycle rental', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(31, 4, 'Business centre', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(32, 4, 'Fax/Photocopying', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(33, 4, 'Grocery shopping service', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(34, 4, 'Laundry', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(35, 4, 'Airport shuttle', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(36, 4, 'Paid airport shuttle', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(37, 4, 'Tours/Ticket assistance', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(38, 5, 'Ironing facilities', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(39, 5, 'Heating', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(40, 5, 'Air conditioning', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(41, 5, 'Tea and coffee facilities', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(42, 5, 'AM/FM alarm clock', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(43, 5, 'Sitting area', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(44, 5, 'CD player', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(45, 5, 'Dressing area', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(46, 5, 'Game room', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(47, 5, 'Free toiletries', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(48, 5, 'Dining table', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(49, 5, 'Flat-screen TV', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(50, 5, 'Patio', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(51, 5, 'Washing machine', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(52, 5, 'Parquet floor', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(53, 5, 'Babysitting/Child services', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(54, 5, 'DVDs/ Videos for children', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(55, 6, 'Check-in: 16:00  hours / Check-out: 11:00 hours', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(56, 6, 'Non-smoking', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(57, 6, 'Air conditioning', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(58, 6, 'WiFi', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(59, 6, 'Garden', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(60, 6, 'Games room', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(61, 6, 'Library', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(62, 6, 'Sun terrace', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(63, 6, 'Outdoor furniture', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(64, 6, 'Picnic area', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(65, 6, 'Outdoor fireplace', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(67, 6, 'Free private parking', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(68, 6, 'BBQ facilities', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(69, 6, 'Books', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(70, 6, 'DVDs', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(71, 6, 'music for children', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(72, 6, 'Street parking', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(73, 6, 'Shuttle service', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(74, 7, 'Tennis court', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(75, 7, 'Golf course (within 3 km)', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(76, 7, 'Fishing', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(77, 7, 'Massage', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(78, 7, 'Windsurfing', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(79, 7, 'Hot tub/jacuzzi', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(80, 7, 'Canoeing', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(81, 7, 'Hiking', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(82, 7, 'Cycling', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(83, 7, 'Diving', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(84, 7, 'Water sport facilities (on site)', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(85, 7, 'Beachfront', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(86, 7, 'Pool/beach towels', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(87, 7, 'Tennis equipment', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(88, 7, 'Beach', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(89, 8, 'Express check-in/check-out', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(91, 8, 'Free parking', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(93, 8, 'Non-smoking rooms', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(94, 8, 'Airport shuttle', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(95, 8, 'Facilities for disabled guests', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(96, 8, 'Non-smoking throughout', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(97, 8, 'Allergy-free room', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(98, 8, 'Outdoor fireplace', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(99, 8, 'Picnic area', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(100, 8, 'Outdoor furniture', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(101, 8, 'Beachfront', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(102, 8, 'Sun terrace', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(103, 8, 'BBQ facilities', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(104, 8, 'Garden', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(105, 8, 'Library', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(106, 8, 'Games room', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(107, 8, 'Internet', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(108, 8, 'Parking', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(109, 8, 'Books', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(110, 8, 'DVDs', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(112, 8, 'Board games/puzzles', 0, 1, '2018-09-25', '2018-09-25', '43.230.197.202'),
(113, 9, 'Beach', 11, 1, '2018-09-25', '2018-10-18', '43.230.197.202'),
(114, 9, 'Tennis equipment', 10, 1, '2018-09-25', '2018-10-18', '43.230.197.202'),
(116, 9, 'Diving', 8, 1, '2018-09-25', '2018-10-18', '43.230.197.202'),
(117, 9, 'Cycling', 7, 1, '2018-09-25', '2018-10-18', '43.230.197.202'),
(118, 9, 'Hiking', 6, 1, '2018-09-25', '2018-10-18', '43.230.197.202'),
(119, 9, 'Canoeing', 5, 1, '2018-09-25', '2018-10-18', '43.230.197.202'),
(120, 9, 'Windsurfing', 4, 1, '2018-09-25', '2018-10-18', '43.230.197.202'),
(121, 9, 'Fishing', 3, 1, '2018-09-25', '2018-10-18', '43.230.197.202'),
(122, 9, 'Golf course (within 3 km)', 2, 1, '2018-09-25', '2018-10-18', '43.230.197.202'),
(123, 9, 'Tennis court', 1, 1, '2018-09-25', '2018-10-18', '43.230.197.202'),
(124, 1, 'Check-in: after 4:00pm', 0, 1, '2018-10-04', '2018-10-04', '73.157.7.14'),
(125, 1, 'Check-out: Prior to 11:00am', 0, 1, '2018-10-04', '2018-10-04', '73.157.7.14'),
(126, 9, 'Beach combing', 9, 1, '2018-10-18', '2018-10-18', '73.109.46.140');

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
(1, 0, '1', '../uploads/areainfo/2.jpg', 'SGFtaWx0b24gVmlld3BvaW50IFBhcms=', 'Hamilton Viewpoint is a 16.9-acre public park in the West Seattle neighborhood of Seattle, Washington, United States. It was acquired by the city in 1914 and became a park 40 years later. Its namesake is Rupert L. Hamilton, a noted figure in the West Seattle community who helped establish the park.', 'http://www.seattle.gov/parks/find/parks/hamilton-viewpoint-park', '', '2018-09-25 08:17:31'),
(2, 0, '1', '../uploads/areainfo/3.jpg', 'TG9nIEhvdXNlIE11c2V1bQ==', 'Welcome to the &amp;ldquo;Birthplace of Seattle&amp;rdquo; Log House Museum of the Southwest Seattle Historical Society! Discover this gem one block from Alki Beach in a restored 1904 log building surrounded by a native plant garden. Our current exhibit is &amp;ldquo;Welcome Home,&amp;rdquo; the third part of a three-part series called &amp;ldquo;Telling Our Westside Stories.&amp;rdquo; Our storefront and home, the museum (with restored Admiral totem pole) is a place to discover and celebrate the history of the Duwamish peninsula and the Birthplace of Seattle', 'http://www.loghousemuseum.org/', '', '2018-09-25 08:18:45'),
(3, 0, '1', '../uploads/areainfo/4.jpg', 'QWxraSBQbGF5Z3JvdW5kIGFuZCBXaGFsZSBUYWlsIFBhcms=', 'The playground&amp;#39;s name comes from the Alki District, named New York-Alki by white settler Charles Terry. &amp;quot;Alki&amp;quot; is a Chinook word meaning &amp;quot;by and by,&amp;quot; and originally pronounced &amp;quot;al-key.&amp;quot; Originally built as a ballfield in 1911, the park is an extension of Schmitz Boulevard and serves as an entrance to the beautiful, wooded Schmitz Park from Alki Beach. Because Boulevard traffic created a hazard to school use of the playground, in 1949 the Boulevard was blocked off between 58th and 59th Avenues SW. It is marked by a park entry and trees planted along 59th.', 'http://www.seattle.gov/parks/find/parks/alki-playground', '', '2018-09-25 08:19:37'),
(4, 0, '1', '../uploads/areainfo/5.jpg', 'U2NobWl0eiBQcmVzZXJ2ZSBQYXJr', 'Schmitz Park, also known as Schmitz Preserve Park, is a 53.1-acre park around 15 blocks east of Alki Point in West Seattle, Washington. It features Schmitz Park Creek and one of the last stands of old-growth forest in the city. Ferdinand and Emma Schmitz donated 30 acres of the park to the city in 1908.', 'http://www.seattle.gov/parks/find/parks/schmitz-preserve-park', '', '2018-09-25 08:20:37'),
(5, 0, '1', '../uploads/areainfo/6.jpg', 'QWxraSBCZWFjaCBQYXJr', 'Alki Beach Park is a 135.9-acre park located in the West Seattle neighborhood of Seattle, Washington that consists of the Elliott Bay beach between Alki Point and Duwamish Head. It has a 0.5 miles of beachfront, and was the first public salt-water bathing beach on the west coast of the United States.&amp;amp;nbsp;&amp;amp;nbsp;', 'http://www.seattle.gov/parks/find/parks/alki-beach-park', '', '2018-09-25 08:22:00');

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
(1, 2, 0, 'Magpie on Alki', '2018-10-21', '2018-10-29', '2874.89', '', NULL, 9, 'sdsdsf', 'sdf@fj.hk', '63463656636', NULL, NULL, 3, '100', '', 'wrwrwer', '2018-10-16', '', 0),
(2, 3, 0, 'Master', '2018-10-21', '2018-10-29', '4280.58', '', NULL, 9, 'sdsdsf', 'sdf@fj.hk', '63463656636', NULL, NULL, 3, '0', '', 'wrwrwer', '2018-10-16', '', 0),
(3, 2, 0, 'Magpie on Alki', '2018-10-22', '2018-10-29', '2324.39', '', NULL, 8, 'cbcbcvb', 'cvb@fgj.jhk', '63463656636', NULL, NULL, 3, '100', '', 'dfgdfgd fg', '2018-10-16', '', 0),
(4, 3, 0, 'Master', '2018-10-22', '2018-10-29', '3432.81', '', NULL, 8, 'cbcbcvb', 'cvb@fgj.jhk', '63463656636', NULL, NULL, 3, '0', '', 'dfgdfgd fg', '2018-10-16', '', 1),
(5, 2, 0, 'Magpie on Alki', '2018-10-22', '2018-10-29', '2324.39', '', NULL, 8, 'Test', 'Test@gmail.com', '63463656636', NULL, NULL, 4, '100', '', 'Testing mail', '2018-10-16', '', 0),
(6, 3, 0, 'Master', '2018-10-22', '2018-10-29', '3432.81', '', NULL, 8, 'Test', 'Test@gmail.com', '63463656636', NULL, NULL, 4, '0', '', 'Testing mail', '2018-10-16', '', 0),
(7, 2, 0, 'Magpie on Alki', '2018-10-22', '2018-10-29', '2324.39', '', NULL, 8, 'Test', 'Test@gmail.com', '63463656636', NULL, NULL, 4, '100', '', 'fgdfgdf g', '2018-10-22', '', 0),
(8, 3, 0, 'Master', '2018-10-22', '2018-10-29', '3432.81', '', NULL, 8, 'Test', 'Test@gmail.com', '63463656636', NULL, NULL, 4, '0', '', 'fgdfgdf g', '2018-10-22', '', 0),
(9, 2, 0, 'Magpie on Alki', '2018-10-22', '2018-10-29', '2324.39', '', NULL, 8, 'Test', 'Test@gmail.com', '63463656636', NULL, NULL, 4, '100', '', 'sdfs dfs df', '2018-10-22', '', 0),
(10, 3, 0, 'Master', '2018-10-22', '2018-10-29', '3432.81', '', NULL, 8, 'Test', 'Test@gmail.com', '63463656636', NULL, NULL, 4, '0', '', 'sdfs dfs df', '2018-10-22', '', 0),
(11, 2, 0, 'Magpie on Alki', '2018-10-22', '2018-10-29', '2324.39', '', NULL, 8, 'Test', 'Test@gmail.com', '63463656636', NULL, NULL, 4, '100', '', 'sdfs dfs df', '2018-10-22', '', 0),
(12, 3, 0, 'Master', '2018-10-22', '2018-10-29', '3432.81', '', NULL, 8, 'Test', 'Test@gmail.com', '63463656636', NULL, NULL, 4, '0', '', 'sdfs dfs df', '2018-10-22', '', 1),
(13, 2, 0, 'Magpie on Alki', '2018-10-23', '2018-10-28', '1742.41', '', NULL, 6, 'dssdf', 'sdf@.kh.jk', '63463656636', NULL, NULL, 3, '0', '', 'd dfgdfg dfg', '2018-10-22', '', 0),
(14, 3, 0, 'Master', '2018-10-23', '2018-10-28', '1165.75', '', NULL, 6, 'dssdf', 'sdf@.kh.jk', '63463656636', NULL, NULL, 3, '0', '', 'd dfgdfg dfg', '2018-10-22', '', 0),
(15, 2, 0, 'Magpie on Alki', '2018-10-23', '2018-10-28', '1742.41', '', NULL, 6, 'dssdf', 'sdf@.kh.jk', '63463656636', NULL, NULL, 3, '0', '', 'd dfgdfg dfg', '2018-10-22', '', 0),
(16, 3, 0, 'Master', '2018-10-23', '2018-10-28', '1165.75', '', NULL, 6, 'dssdf', 'sdf@.kh.jk', '63463656636', NULL, NULL, 3, '0', '', 'd dfgdfg dfg', '2018-10-22', '', 0),
(17, 2, 0, 'Magpie on Alki', '2018-10-23', '2018-10-29', '2006.65', '', NULL, 7, 'ssd', 'dfs@h.jhk', '63463656636', NULL, NULL, 5, '0', '', 'cvxcvxcv', '2018-10-22', '', 0),
(18, 3, 0, 'Master', '2018-10-23', '2018-10-29', '1220.8', '', NULL, 7, 'ssd', 'dfs@h.jhk', '63463656636', NULL, NULL, 5, '0', '', 'cvxcvxcv', '2018-10-22', '', 0),
(19, 2, 0, 'Magpie on Alki', '2018-10-23', '2018-10-29', '2006.65', '', NULL, 7, 'sdfsd', 'assd@d.df', '63463656636', NULL, NULL, 4, '0', '', 'cxvxcvxcv', '2018-10-22', '', 0),
(20, 3, 0, 'Master', '2018-10-23', '2018-10-29', '1220.8', '', NULL, 7, 'sdfsd', 'assd@d.df', '63463656636', NULL, NULL, 4, '0', '', 'cxvxcvxcv', '2018-10-22', '', 0);

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

--
-- Dumping data for table `lhk_client_details`
--

INSERT INTO `lhk_client_details` (`client_id`, `property_id`, `admin_id`, `req_num`, `name`, `email`, `firstdate`, `lastdate`, `adddate`, `client_ip`) VALUES
(1, 2, 1, '894889', 'blocked test', 'dylanreidt@icloud.com', '2019-01-07', '2019-01-11', '2018-10-18', '73.109.46.140'),
(2, 3, 1, '865376', 'Test block', 'dylanreidt@icloud.com', '2019-01-08', '2019-01-12', '2018-10-18', '73.109.46.140');

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
(1, 1, '', 'Magpieonalki@gmail.com', '', '1-206-795-0826', '', '2938 ALKI AVE SW, Seattle WA 98116', '', '', '2018-09-25', '2018-10-04', '73.157.7.14');

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
(1, 1, 1, '6.JPEG', '', 0, NULL, 1, '2018-09-25', '2018-09-25'),
(2, 1, 1, '4.JPEG', '', 0, NULL, 2, '2018-09-25', '2018-09-25'),
(3, 1, 1, '3.JPEG', '', 0, NULL, 3, '2018-09-25', '2018-09-25'),
(4, 1, 1, '5.JPEG', '', 0, NULL, 4, '2018-09-25', '2018-09-25'),
(5, 1, 1, '1.JPEG', '', 0, NULL, 5, '2018-09-25', '2018-09-25'),
(6, 1, 1, '2.JPEG', '', 0, NULL, 6, '2018-09-25', '2018-09-25'),
(7, 1, 1, '7.JPEG', '', 0, NULL, 7, '2018-09-25', '2018-09-25'),
(8, 1, 1, '8.JPEG', '', 0, NULL, 8, '2018-09-25', '2018-09-25'),
(9, 1, 1, '10.JPEG', '', 0, NULL, 9, '2018-09-25', '2018-09-25'),
(10, 1, 1, '9.JPEG', '', 0, NULL, 10, '2018-09-25', '2018-09-25'),
(11, 1, 1, '11.JPEG', '', 0, NULL, 11, '2018-09-25', '2018-09-25'),
(12, 1, 1, '12.JPEG', '', 0, NULL, 12, '2018-09-25', '2018-09-25'),
(13, 1, 1, '13.JPEG', '', 0, NULL, 13, '2018-09-25', '2018-09-25'),
(14, 1, 1, '17.JPEG', '', 0, NULL, 14, '2018-09-25', '2018-09-25'),
(15, 1, 1, '18.JPEG', '', 0, NULL, 15, '2018-09-25', '2018-09-25'),
(16, 1, 1, '14.JPEG', '', 0, NULL, 16, '2018-09-25', '2018-09-25'),
(17, 1, 1, '16.JPEG', '', 0, NULL, 17, '2018-09-25', '2018-09-25'),
(18, 1, 1, '15.JPEG', '', 0, NULL, 18, '2018-09-25', '2018-09-25'),
(19, 1, 1, '19.JPEG', '', 0, NULL, 19, '2018-09-25', '2018-09-25'),
(20, 1, 1, '21.JPEG', '', 0, NULL, 20, '2018-09-25', '2018-09-25'),
(21, 1, 1, '20.JPEG', '', 0, NULL, 21, '2018-09-25', '2018-09-25'),
(22, 1, 1, '23.JPEG', '', 0, NULL, 22, '2018-09-25', '2018-09-25'),
(23, 1, 1, '22.JPEG', '', 0, NULL, 23, '2018-09-25', '2018-09-25'),
(24, 1, 1, '24.JPEG', '', 0, NULL, 24, '2018-09-25', '2018-09-25'),
(25, 1, 1, '25.JPEG', '', 0, NULL, 25, '2018-09-25', '2018-09-25'),
(26, 1, 1, '26.JPEG', '', 0, NULL, 26, '2018-09-25', '2018-09-25'),
(27, 1, 1, '27.JPEG', '', 0, NULL, 27, '2018-09-25', '2018-09-25'),
(28, 1, 1, '28.JPEG', '', 0, NULL, 28, '2018-09-25', '2018-09-25'),
(29, 1, 1, '29.JPEG', '', 0, NULL, 29, '2018-09-25', '2018-09-25'),
(30, 1, 1, '30.JPEG', '', 0, NULL, 30, '2018-09-25', '2018-09-25'),
(36, 2, 1, '1.jpg', '', 0, NULL, 0, '2018-09-25', '2018-10-19'),
(37, 2, 1, '2.jpg', '', 0, NULL, 2, '2018-09-25', '2018-10-19'),
(44, 2, 1, '15.jpg', '', 0, NULL, 12, '2018-09-25', '2018-10-19'),
(49, 3, 1, '3.jpg', '', 0, NULL, 5, '2018-09-25', '2018-10-11'),
(50, 3, 1, '5.jpg', '', 0, NULL, 1, '2018-09-25', '2018-10-11'),
(51, 3, 1, '6.jpg', '', 0, NULL, 2, '2018-09-25', '2018-10-11'),
(53, 3, 1, '8.jpg', '', 0, NULL, 0, '2018-09-25', '2018-10-11'),
(54, 3, 1, '4.jpg', '', 0, NULL, 4, '2018-09-25', '2018-10-11'),
(55, 3, 1, '9.jpg', '', 0, NULL, 20, '2018-09-25', '2018-10-11'),
(56, 3, 1, '7.jpg', '', 0, NULL, 6, '2018-09-25', '2018-10-11'),
(58, 3, 1, '11.jpg', '', 0, NULL, 19, '2018-09-25', '2018-10-11'),
(59, 3, 1, '10.jpg', '', 0, NULL, 8, '2018-09-25', '2018-10-11'),
(60, 3, 1, '13.jpg', '', 0, NULL, 3, '2018-09-25', '2018-10-11'),
(61, 3, 1, '12.jpg', '', 0, NULL, 7, '2018-09-25', '2018-10-11'),
(62, 3, 1, '14.jpg', '', 0, NULL, 9, '2018-09-25', '2018-10-11'),
(66, 3, 1, '17.jpg', '', 0, NULL, 10, '2018-09-25', '2018-10-11'),
(69, 3, 1, '21.jpg', '', 0, NULL, 15, '2018-09-25', '2018-10-11'),
(70, 3, 1, '22.jpg', '', 0, NULL, 16, '2018-09-25', '2018-10-11'),
(71, 3, 1, '24.jpg', '', 0, NULL, 21, '2018-09-25', '2018-10-11'),
(72, 3, 1, '25.jpg', '', 0, NULL, 22, '2018-09-25', '2018-10-11'),
(74, 3, 1, '23.jpg', '', 0, NULL, 24, '2018-09-25', '2018-10-11'),
(75, 2, 1, 'IMG_2044.JPG', '', 0, NULL, 3, '2018-10-04', '2018-10-19'),
(76, 2, 1, 'IMG_2036.JPG', '', 0, NULL, 4, '2018-10-04', '2018-10-19'),
(77, 2, 1, 'IMG_2040.JPG', '', 0, NULL, 5, '2018-10-04', '2018-10-19'),
(78, 2, 1, 'IMG_2042.JPG', '', 0, NULL, 6, '2018-10-04', '2018-10-19'),
(81, 2, 1, '11.jpg', '', 0, NULL, 7, '2018-10-04', '2018-10-19'),
(82, 2, 1, '10.jpg', '', 0, NULL, 10, '2018-10-04', '2018-10-19'),
(83, 2, 1, '6.JPG', '', 0, NULL, 11, '2018-10-04', '2018-10-19'),
(87, 2, 1, '13.JPG', '', 0, NULL, 14, '2018-10-04', '2018-10-19'),
(88, 2, 1, '4.JPG', '', 0, NULL, 13, '2018-10-09', '2018-10-19'),
(90, 2, 1, '12.jpg', '', 0, NULL, 8, '2018-10-09', '2018-10-19'),
(91, 2, 1, '100_3506.JPG', '', 0, NULL, 15, '2018-10-09', '2018-10-19'),
(92, 2, 1, 'naval ship out front.JPG', '', 0, NULL, 9, '2018-10-09', '2018-10-19'),
(93, 2, 1, 'starfish pig pile.JPG', '', 0, NULL, 16, '2018-10-09', '2018-10-19'),
(95, 2, 1, 'livingroom new.JPG', '', 0, NULL, 1, '2018-10-09', '2018-10-19'),
(97, 3, 1, 'laundryroom.JPG', '', 0, NULL, 12, '2018-10-09', '2018-10-11'),
(98, 3, 1, 'loft bth.JPG', '', 0, NULL, 13, '2018-10-09', '2018-10-11'),
(99, 3, 1, 'loftbth2.JPG', '', 0, NULL, 14, '2018-10-09', '2018-10-11'),
(100, 3, 1, 'Mainbath1.JPG', '', 0, NULL, 17, '2018-10-09', '2018-10-11'),
(101, 3, 1, 'mainbth2.JPG', '', 0, NULL, 18, '2018-10-09', '2018-10-11'),
(102, 3, 1, 'SAM_4511.JPG', '', 0, NULL, 11, '2018-10-09', '2018-10-11'),
(103, 3, 1, 'thumb_SAM_4484_1024.jpg', '', 0, NULL, 23, '2018-10-09', '2018-10-11'),
(104, 3, 1, 'SAM_3365.JPG', '', 0, NULL, 25, '2018-10-09', '2018-10-11');

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

--
-- Dumping data for table `lhk_ical_events`
--

INSERT INTO `lhk_ical_events` (`event_id`, `admin_id`, `start_date`, `end_date`, `text`, `event_pid`, `event_type`, `added_date`, `booking_status`) VALUES
(1, 1, '2019-01-07', '2019-01-11', 'Reserved - blocked test', 2, 'self', '2018-10-18', 0),
(2, 1, '2019-01-08', '2019-01-12', 'Reserved - Test block', 3, 'self', '2018-10-18', 0);

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

--
-- Dumping data for table `lhk_ical_links`
--

INSERT INTO `lhk_ical_links` (`i_id`, `property_id`, `admin_id`, `property_heading`, `link`, `add_date`, `update_date`, `ical_add_ip`) VALUES
(1, 3, 1, 'Master calendar', 'https://calendar.google.com/calendar/ical/1lnidqdrs26olhvkjq5tk7rdmk%40group.calendar.google.com/public/basic.ics', '2018-10-09 14:33:57', '2018-10-09 14:33:57', '73.109.46.140'),
(2, 2, 1, 'Magpie calendar', 'https://calendar.google.com/calendar/ical/3jc4b3u0pnu2jvt7d323r02nl8%40group.calendar.google.com/public/basic.ics', '2018-10-09 14:35:00', '2018-10-09 14:35:00', '73.109.46.140'),
(3, 1, 1, 'Entire house calendar', 'https://calendar.google.com/calendar/ical/9fldunegnjfd30la6v76jpm7l0%40group.calendar.google.com/public/basic.ics', '2018-10-09 14:36:07', '2018-10-09 14:36:07', '73.109.46.140');

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
  `phone` varchar(255) NOT NULL,
  `t_night` int(11) NOT NULL,
  `total_amt` float NOT NULL,
  `guest` int(11) NOT NULL,
  `discount` float NOT NULL,
  `min_stay` int(11) NOT NULL,
  `g_amount` float NOT NULL,
  `clean` int(11) NOT NULL,
  `r_fees` int(11) NOT NULL,
  `insu` varchar(255) NOT NULL,
  `tax` float NOT NULL,
  `tax_fees` float NOT NULL,
  `extra_guest` int(11) NOT NULL,
  `pet` varchar(255) NOT NULL,
  `addedon` datetime NOT NULL,
  `updateon` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_info`
--

INSERT INTO `lhk_info` (`f_id`, `s_id`, `pid`, `sdate`, `edate`, `name`, `email`, `phone`, `t_night`, `total_amt`, `guest`, `discount`, `min_stay`, `g_amount`, `clean`, `r_fees`, `insu`, `tax`, `tax_fees`, `extra_guest`, `pet`, `addedon`, `updateon`) VALUES
(1, 'qe0g3qrm0pgbd21bdel29rqas4', 2, '2018-10-23', '2018-10-29', 'fgdg', 'sdf@gj.jkl', '63463656636', 7, 2006.65, 3, 357.05, 2, 1650, 90, 100, '49', 10.1, 166.65, 0, '0', '2018-10-22 21:10:36', '2018-10-22 23:10:13'),
(2, 'qe0g3qrm0pgbd21bdel29rqas4', 3, '2018-10-23', '2018-10-29', 'fgdg', 'sdf@gj.jkl', '63463656636', 7, 1220.8, 3, 357.05, 2, 800, 90, 250, '49', 10.1, 80.8, 0, '0', '2018-10-22 21:10:36', '2018-10-22 23:10:13'),
(3, '8kd815sadffapl1bkqrvgogqu1', 2, '2018-10-24', '2018-10-29', 'Diannah Beauregard', 'diannahbeauregard@gmail.com', '', 6, 2192.56, 3, 0, 2, 1560, 150, 250, '49', 10.1, 157.56, 0, '75', '2018-10-22 23:10:17', '2018-10-23 00:10:01'),
(4, '8kd815sadffapl1bkqrvgogqu1', 3, '2018-10-24', '2018-10-29', 'Diannah Beauregard', 'diannahbeauregard@gmail.com', '', 6, 1165.75, 3, 0, 2, 750, 90, 250, '49', 10.1, 75.75, 0, '0', '2018-10-22 23:10:17', '2018-10-23 00:10:01'),
(5, 'iim1pelvs5ro47c937an2rklu7', 2, '2018-10-23', '2018-10-24', 'Oct test', 'gg@mail.com', '', 2, 992.47, 7, 0, 2, 470, 150, 250, '49', 10.1, 47.47, 0, '75', '2018-10-23 00:10:05', '0000-00-00 00:00:00'),
(6, 'iim1pelvs5ro47c937an2rklu7', 3, '2018-10-23', '2018-10-24', 'Oct test', 'gg@mail.com', '', 2, 615.25, 7, 0, 2, 250, 90, 250, '49', 10.1, 25.25, 0, '0', '2018-10-23 00:10:05', '0000-00-00 00:00:00');

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
(1, 'admin', 'd9247099d42f3364f4023241d4193e4b', '2018-10-23 14:13:23', '73.109.46.140');

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
(1, 1, 'uploads/profile/boy.png', 'dylanreidt', 'dylanreidt', '2018-09-24', '0000-00-00', '43.230.197.202');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_promo_code`
--

CREATE TABLE `lhk_promo_code` (
  `pro_id` int(11) NOT NULL,
  `promo_code` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL,
  `created` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_promo_code`
--

INSERT INTO `lhk_promo_code` (`pro_id`, `promo_code`, `discount`, `created`) VALUES
(2, 'ggdfg', 12, '2018-10-11'),
(3, 'ertert', 53, '2018-10-11');

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
(3, 1, 1, '345', '', '', '', '', '10.1', '250', '', '', '', '', '', '2018-09-25 10:42:29', '2018-10-11 08:17:10', '43.230.197.202'),
(4, 2, 1, '235', '', '', '', '75', '10.1', '150', '250', '49', 'Have fun and leave the home as you find it.&amp;nbsp;', 'Have fun still means you must check with the owner to have any large gatherings', '', '2018-09-25 10:42:50', '2018-10-22 11:56:34', '73.109.46.140'),
(5, 3, 1, '125', '', '', '', '', '10.1', '90', '250', '49', '', '', '', '2018-09-25 10:43:17', '2018-10-19 09:33:23', '43.230.197.202');

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
  `property_no_of_sleeps` int(11) DEFAULT NULL,
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
(1, 1, '', 0, 1, 'Magpie Inn', NULL, NULL, '', '<p>Almost daily we find the eagles in the tree outside the window. Harbor seals pass by and salmon jump in the summer.&nbsp; The wildlife and marine activity provide a constant stream of entertainment.&nbsp; One block away is the wonderful night life Alki has to offer. Within a flat 6 blocks walk along the beach there are 20 plus restaurants. The home overlooks the #3 diving hole along Alki, with the #1, next to Salty&rsquo;s, and the #2 dive hole beside the fishing pier. Divers are welcome!&nbsp; Enjoy the outdoor hot and cold shower to clean off gear, or just the sand off your feet. Soak in the hot tub while you enjoy the sight of The Seattle Space Needle &amp; the Washington Ferry traffic and the Argosy research vessels that tie up in front of the house for an afternoon of lessons. Divers are always coming and going in front of the house. Watch for the night lights.<br />\r\n<br />\r\nListen to sea lions, watch eagles dive for their lunch as ferries cross the Puget Sound. Views from every window in this brand new Master Suite on Alki Avenue just one block away from restaurants and the site where the first pioneers landed. Enjoy Kayaking in front of the house or bicycle along the extensive bikes paths on Alki. There is easy access to downtown Seattle via water taxi but after exploring the many activities around the city come home and sink into the comfortable charcoal gray couches and enjoy the views of Puget Sound or watch a movie on the 60&rdquo; flat screen TV. Open the sliding glass doors and inhale that beautiful refreshing sea breezes. The kitchen comes fully equipped with a large collection of dishes, refrigerator, gas stove, full size sink and granite counters. There is a coffee &amp; espresso maker for your convenience or Starbucks and Top Pot Donuts are 2 blocks away. The dinning room table has seating for 4. In the evening relax in the loft tub while gazing through the skylight at the stars.<br />\r\n<br />\r\nMagpie On Alki offers leisure options including a tennis court and a golf course. Guests will find video games and board games required for children on site.</p>\r\n', '', '', 'Yes', 'Yes', '', '', '2938 Alki Avenue Southwest, Seattle, United States', '', '', 'for rent', 'Villa', '4', 12, '4', '', '2500', '', '2', '2018-09-25', '2018-10-19', '43.230.197.202'),
(2, 2, '', 0, 1, 'Magpie on Alki', NULL, NULL, '', 'Almost daily we find the eagles in the tree outside the window. Harbor seals pass by and salmon jump in the summer.&nbsp; The wildlife and marine activity provide a constant stream of entertainment.&nbsp; One block away is the wonderful night life Alki has to offer. Within a flat 6 blocks walk along the beach there are 20 plus restaurants. The home overlooks the #3 diving hole along Alki, with the #1, next to Salty&rsquo;s, and the #2 dive hole beside the fishing pier. Divers are welcome!&nbsp; Enjoy the outdoor hot and cold shower to clean off gear, or just the sand off your feet. Soak in the hot tub while you enjoy the sight of The Seattle Space Needle &amp; the Washington Ferry traffic and the Argosy research vessels that tie up in front of the house for an afternoon of lessons. Divers are always coming and going in front of the house. Watch for the night lights.<br />\r\n<br />\r\nThe holiday home offers a hot tub. A business centre with a fax machine and photocopier is at guests&#39; disposal at Magpie on Alki.<br />\r\n<br />\r\nIf you would like to discover the area, cycling, kayacks and hiking are possible. in the surrounding area, there resterants and bicycle rental service.<br />\r\n<br />\r\nSeattle Center is 7 km from the accommodation. The nearest airport is Sea-Tac Airport, 17 km from Magpie on Alki.', '', '', 'Yes', 'yes', '', '', '2938 Alki Avenue Southwest, Seattle, United States', '', '', 'for rent', 'House', '3', 8, '2', '', '1450', '', '2', '2018-09-25', '2018-10-19', '73.109.46.140'),
(3, 3, '', 0, 1, 'Master', NULL, NULL, '', 'Listen to sea lions, watch eagles dive for their lunch as ferries cross the Puget Sound. Views from every window in this brand new Master Suite on Alki Avenue just one block away from restaurants and the site where the first pioneers landed. Enjoy Kayaking in front of the house or bicycle along the extensive bikes paths on Alki. There is easy access to downtown Seattle via water taxi but after exploring the many activities around the city come home and sink into the comfortable charcoal gray couches and enjoy the views of Puget Sound or watch a movie on the 60&rdquo; flat screen TV. Open the sliding glass doors and inhale that beautiful refreshing sea breezes. The kitchen comes fully equipped with a large collection of dishes, refrigerator, gas stove, full size sink and granite counters. There is a coffee &amp; espresso maker for your convenience or Starbucks and Top Pot Donuts are 2 blocks away. The dinning room table has seating for 4. In the evening relax in the loft tub while gazing through the skylight at the stars.<br />\r\n<br />\r\nThis property is 1 minute walk from the beach. Located 7 km from Seattle Center, Alki Magpie offers a garden, the beach or a patio and free WiFi.<br />\r\n<br />\r\nThe units all have a seating area with a sofa, a satelliteflat-screen TV, Blu-ray player, a fully equipped kitchen and a private bathroom with a hair dryer and free toiletries.<br />\r\n<br />\r\nThe holiday home offers a barbecue. Magpie on Alki provides a laundry service, as well as business facilities like fax and photocopying.<br />\r\n<br />\r\nIf you would like to discover the area, hiking, cycling and canoeing are possible in the surroundings and the accommodation can arrange a bicycle rental service.<br />\r\n<br />\r\nPort of Seattle is 6 km from Magpie on Alki, while Seattle Great Wheel is 6 km away. The nearest airport is Sea-Tac Airport, 17 km from the holiday home.<br />\r\n<br />\r\nWest Seattle is a great choice for travellers interested in harbours, restaurants and city trips.<br />\r\n<br />\r\nThis property also has one of the best-rated locations in Seattle! Guests are happier about it compared to other properties in the area.<br />\r\n<br />\r\nCouples particularly like the location &mdash; they rated it 9.8 for a two-person trip.<br />\r\n<br />\r\nThis property is also rated for the best value in Seattle! Guests are getting more for their money when compared to other properties in this city.<br />\r\n<br />\r\nWe speak your language!&nbsp;', '', '', 'Yes', 'no', '', '', '2938 Alki Avenue Southwest, Seattle, United States', '', '', 'for rent', 'House', '1', 4, '2', '', '1400', '', '2', '2018-09-25', '2018-10-19', '73.109.46.140');

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
(1, 1, 0, 'Magpie On Alki 1', 'for rent', '2018-09-25', '43.230.197.202'),
(2, 1, 0, 'Magpie on Alki 2', 'for rent', '2018-09-25', '43.230.197.202'),
(3, 1, 0, 'Magpie On Alki 3', 'for rent', '2018-09-25', '43.230.197.202');

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
(16, 1, 0, 'Winter', '2018-10-01', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(17, 1, 0, 'Winter', '2018-10-02', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(18, 1, 0, 'Winter', '2018-10-03', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(19, 1, 0, 'Winter', '2018-10-04', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(20, 1, 0, 'Winter', '2018-10-05', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(21, 1, 0, 'Winter', '2018-10-06', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(22, 1, 0, 'Winter', '2018-10-07', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(23, 1, 0, 'Winter', '2018-10-08', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(24, 1, 0, 'Winter', '2018-10-09', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(25, 1, 0, 'Winter', '2018-10-10', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(26, 1, 0, 'Winter', '2018-10-11', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(27, 1, 0, 'Winter', '2018-10-12', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(28, 1, 0, 'Winter', '2018-10-13', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(29, 1, 0, 'Winter', '2018-10-14', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(30, 1, 0, 'Winter', '2018-10-15', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(31, 1, 0, 'Winter', '2018-10-16', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(32, 1, 0, 'Winter', '2018-10-17', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(33, 1, 0, 'Winter', '2018-10-18', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(34, 1, 0, 'Winter', '2018-10-19', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(35, 1, 0, 'Winter', '2018-10-20', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(36, 1, 0, 'Winter', '2018-10-21', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(37, 1, 0, 'Winter', '2018-10-22', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(38, 1, 0, 'Winter', '2018-10-23', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(39, 1, 0, 'Winter', '2018-10-24', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(40, 1, 0, 'Winter', '2018-10-25', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(41, 1, 0, 'Winter', '2018-10-26', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(42, 1, 0, 'Winter', '2018-10-27', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(43, 1, 0, 'Winter', '2018-10-28', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(44, 1, 0, 'Winter', '2018-10-29', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(45, 1, 0, 'Winter', '2018-10-30', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(46, 1, 0, 'Winter', '2018-10-31', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(47, 1, 0, 'Winter', '2018-11-01', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(48, 1, 0, 'Winter', '2018-11-02', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(49, 1, 0, 'Winter', '2018-11-03', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(50, 1, 0, 'Winter', '2018-11-04', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(51, 1, 0, 'Winter', '2018-11-05', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(52, 1, 0, 'Winter', '2018-11-06', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(53, 1, 0, 'Winter', '2018-11-07', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(54, 1, 0, 'Winter', '2018-11-08', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(55, 1, 0, 'Winter', '2018-11-09', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(56, 1, 0, 'Winter', '2018-11-10', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(57, 1, 0, 'Winter', '2018-11-11', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(58, 1, 0, 'Winter', '2018-11-12', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(59, 1, 0, 'Winter', '2018-11-13', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(60, 1, 0, 'Winter', '2018-11-14', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(61, 1, 0, 'Winter', '2018-11-15', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(62, 1, 0, 'Winter', '2018-11-16', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(63, 1, 0, 'Winter', '2018-11-17', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(64, 1, 0, 'Winter', '2018-11-18', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(65, 1, 0, 'Winter', '2018-11-19', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(66, 1, 0, 'Winter', '2018-11-20', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(67, 1, 0, 'Winter', '2018-11-21', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(68, 1, 0, 'Winter', '2018-11-22', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(69, 1, 0, 'Winter', '2018-11-23', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(70, 1, 0, 'Winter', '2018-11-24', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(71, 1, 0, 'Winter', '2018-11-25', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(72, 1, 0, 'Winter', '2018-11-26', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(73, 1, 0, 'Winter', '2018-11-27', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(74, 1, 0, 'Winter', '2018-11-28', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(75, 1, 0, 'Winter', '2018-11-29', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(76, 1, 0, 'Winter', '2018-11-30', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(77, 1, 0, 'Winter', '2018-12-01', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(78, 1, 0, 'Winter', '2018-12-02', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(79, 1, 0, 'Winter', '2018-12-03', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(80, 1, 0, 'Winter', '2018-12-04', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(81, 1, 0, 'Winter', '2018-12-05', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(82, 1, 0, 'Winter', '2018-12-06', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(83, 1, 0, 'Winter', '2018-12-07', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(84, 1, 0, 'Winter', '2018-12-08', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(85, 1, 0, 'Winter', '2018-12-09', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(86, 1, 0, 'Winter', '2018-12-10', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(87, 1, 0, 'Winter', '2018-12-11', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(88, 1, 0, 'Winter', '2018-12-12', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(89, 1, 0, 'Winter', '2018-12-13', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(90, 1, 0, 'Winter', '2018-12-14', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(91, 1, 0, 'Winter', '2018-12-15', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(92, 1, 0, 'Winter', '2018-12-16', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(93, 1, 0, 'Winter', '2018-12-17', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(94, 1, 0, 'Winter', '2018-12-18', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(95, 1, 0, 'Winter', '2018-12-19', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(96, 1, 0, 'Winter', '2018-12-20', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(97, 1, 0, 'Winter', '2018-12-21', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(98, 1, 0, 'Winter', '2018-12-22', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(99, 1, 0, 'Winter', '2018-12-23', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(100, 1, 0, 'Winter', '2018-12-24', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(101, 1, 0, 'Winter', '2018-12-25', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(102, 1, 0, 'Winter', '2018-12-26', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(103, 1, 0, 'Winter', '2018-12-27', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(104, 1, 0, 'Winter', '2018-12-28', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(105, 1, 0, 'Winter', '2018-12-29', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(106, 1, 0, 'Winter', '2018-12-30', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(107, 1, 0, 'Winter', '2018-12-31', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(108, 1, 0, 'Winter', '2019-01-01', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(109, 1, 0, 'Winter', '2019-01-02', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(110, 1, 0, 'Winter', '2019-01-03', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(111, 1, 0, 'Winter', '2019-01-04', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(112, 1, 0, 'Winter', '2019-01-05', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(113, 1, 0, 'Winter', '2019-01-06', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(114, 1, 0, 'Winter', '2019-01-07', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(115, 1, 0, 'Winter', '2019-01-08', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(116, 1, 0, 'Winter', '2019-01-09', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(117, 1, 0, 'Winter', '2019-01-10', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(118, 1, 0, 'Winter', '2019-01-11', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(119, 1, 0, 'Winter', '2019-01-12', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(120, 1, 0, 'Winter', '2019-01-13', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(121, 1, 0, 'Winter', '2019-01-14', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(122, 1, 0, 'Winter', '2019-01-15', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(123, 1, 0, 'Winter', '2019-01-16', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(124, 1, 0, 'Winter', '2019-01-17', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(125, 1, 0, 'Winter', '2019-01-18', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(126, 1, 0, 'Winter', '2019-01-19', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(127, 1, 0, 'Winter', '2019-01-20', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(128, 1, 0, 'Winter', '2019-01-21', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(129, 1, 0, 'Winter', '2019-01-22', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(130, 1, 0, 'Winter', '2019-01-23', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(131, 1, 0, 'Winter', '2019-01-24', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(132, 1, 0, 'Winter', '2019-01-25', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(133, 1, 0, 'Winter', '2019-01-26', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(134, 1, 0, 'Winter', '2019-01-27', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(135, 1, 0, 'Winter', '2019-01-28', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(136, 1, 0, 'Winter', '2019-01-29', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(137, 1, 0, 'Winter', '2019-01-30', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(138, 1, 0, 'Winter', '2019-01-31', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(139, 1, 0, 'Winter', '2019-02-01', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(140, 1, 0, 'Winter', '2019-02-02', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(141, 1, 0, 'Winter', '2019-02-03', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(142, 1, 0, 'Winter', '2019-02-04', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(143, 1, 0, 'Winter', '2019-02-05', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(144, 1, 0, 'Winter', '2019-02-06', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(145, 1, 0, 'Winter', '2019-02-07', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(146, 1, 0, 'Winter', '2019-02-08', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(147, 1, 0, 'Winter', '2019-02-09', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(148, 1, 0, 'Winter', '2019-02-10', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(149, 1, 0, 'Winter', '2019-02-11', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(150, 1, 0, 'Winter', '2019-02-12', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(151, 1, 0, 'Winter', '2019-02-13', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(152, 1, 0, 'Winter', '2019-02-14', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(153, 1, 0, 'Winter', '2019-02-15', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(154, 1, 0, 'Winter', '2019-02-16', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(155, 1, 0, 'Winter', '2019-02-17', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(156, 1, 0, 'Winter', '2019-02-18', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(157, 1, 0, 'Winter', '2019-02-19', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(158, 1, 0, 'Winter', '2019-02-20', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(159, 1, 0, 'Winter', '2019-02-21', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(160, 1, 0, 'Winter', '2019-02-22', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(161, 1, 0, 'Winter', '2019-02-23', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(162, 1, 0, 'Winter', '2019-02-24', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(163, 1, 0, 'Winter', '2019-02-25', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(164, 1, 0, 'Winter', '2019-02-26', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(165, 1, 0, 'Winter', '2019-02-27', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(166, 1, 0, 'Winter', '2019-02-28', '2019-02-28', '265', '235', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(167, 1, 0, 'My Standard Rate', '0000-00-00', '0000-00-00', '', '448', '', '', '', '1', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(168, 2, 0, 'Winter', '2018-10-01', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '2018-10-22', '73.109.46.140'),
(169, 2, 0, 'Winter', '2018-10-02', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(170, 2, 0, 'Winter', '2018-10-03', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(171, 2, 0, 'Winter', '2018-10-04', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(172, 2, 0, 'Winter', '2018-10-05', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(173, 2, 0, 'Winter', '2018-10-06', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(174, 2, 0, 'Winter', '2018-10-07', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(175, 2, 0, 'Winter', '2018-10-08', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(176, 2, 0, 'Winter', '2018-10-09', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(177, 2, 0, 'Winter', '2018-10-10', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(178, 2, 0, 'Winter', '2018-10-11', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(179, 2, 0, 'Winter', '2018-10-12', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(180, 2, 0, 'Winter', '2018-10-13', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(181, 2, 0, 'Winter', '2018-10-14', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(182, 2, 0, 'Winter', '2018-10-15', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(183, 2, 0, 'Winter', '2018-10-16', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(184, 2, 0, 'Winter', '2018-10-17', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(185, 2, 0, 'Winter', '2018-10-18', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(186, 2, 0, 'Winter', '2018-10-19', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(187, 2, 0, 'Winter', '2018-10-20', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(188, 2, 0, 'Winter', '2018-10-21', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(189, 2, 0, 'Winter', '2018-10-22', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(190, 2, 0, 'Winter', '2018-10-23', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(191, 2, 0, 'Winter', '2018-10-24', '2019-02-28', '265', '260', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(192, 2, 0, 'Winter', '2018-10-25', '2019-02-28', '265', '260', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(193, 2, 0, 'Winter', '2018-10-26', '2019-02-28', '265', '270', '1650', '', '', '3', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(194, 2, 0, 'Winter', '2018-10-27', '2019-02-28', '265', '270', '1650', '', '', '3', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(195, 2, 0, 'Winter', '2018-10-28', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(196, 2, 0, 'Winter', '2018-10-29', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(197, 2, 0, 'Winter', '2018-10-30', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(198, 2, 0, 'Winter', '2018-10-31', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(199, 2, 0, 'Winter', '2018-11-01', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(200, 2, 0, 'Winter', '2018-11-02', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(201, 2, 0, 'Winter', '2018-11-03', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(202, 2, 0, 'Winter', '2018-11-04', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(203, 2, 0, 'Winter', '2018-11-05', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(204, 2, 0, 'Winter', '2018-11-06', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(205, 2, 0, 'Winter', '2018-11-07', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(206, 2, 0, 'Winter', '2018-11-08', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(207, 2, 0, 'Winter', '2018-11-09', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(208, 2, 0, 'Winter', '2018-11-10', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(209, 2, 0, 'Winter', '2018-11-11', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(210, 2, 0, 'Winter', '2018-11-12', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(211, 2, 0, 'Winter', '2018-11-13', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(212, 2, 0, 'Winter', '2018-11-14', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(213, 2, 0, 'Winter', '2018-11-15', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(214, 2, 0, 'Winter', '2018-11-16', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(215, 2, 0, 'Winter', '2018-11-17', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(216, 2, 0, 'Winter', '2018-11-18', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(217, 2, 0, 'Winter', '2018-11-19', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(218, 2, 0, 'Winter', '2018-11-20', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(219, 2, 0, 'Winter', '2018-11-21', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(220, 2, 0, 'Winter', '2018-11-22', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(221, 2, 0, 'Winter', '2018-11-23', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(222, 2, 0, 'Winter', '2018-11-24', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(223, 2, 0, 'Winter', '2018-11-25', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(224, 2, 0, 'Winter', '2018-11-26', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(225, 2, 0, 'Winter', '2018-11-27', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(226, 2, 0, 'Winter', '2018-11-28', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(227, 2, 0, 'Winter', '2018-11-29', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(228, 2, 0, 'Winter', '2018-11-30', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(229, 2, 0, 'Winter', '2018-12-01', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(230, 2, 0, 'Winter', '2018-12-02', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(231, 2, 0, 'Winter', '2018-12-03', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(232, 2, 0, 'Winter', '2018-12-04', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(233, 2, 0, 'Winter', '2018-12-05', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(234, 2, 0, 'Winter', '2018-12-06', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(235, 2, 0, 'Winter', '2018-12-07', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(236, 2, 0, 'Winter', '2018-12-08', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(237, 2, 0, 'Winter', '2018-12-09', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(238, 2, 0, 'Winter', '2018-12-10', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(239, 2, 0, 'Winter', '2018-12-11', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(240, 2, 0, 'Winter', '2018-12-12', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(241, 2, 0, 'Winter', '2018-12-13', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(242, 2, 0, 'Winter', '2018-12-14', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(243, 2, 0, 'Winter', '2018-12-15', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(244, 2, 0, 'Winter', '2018-12-16', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(245, 2, 0, 'Winter', '2018-12-17', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(246, 2, 0, 'Winter', '2018-12-18', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(247, 2, 0, 'Winter', '2018-12-19', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(248, 2, 0, 'Winter', '2018-12-20', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(249, 2, 0, 'Winter', '2018-12-21', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(250, 2, 0, 'Winter', '2018-12-22', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(251, 2, 0, 'Winter', '2018-12-23', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(252, 2, 0, 'Winter', '2018-12-24', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(253, 2, 0, 'Winter', '2018-12-25', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(254, 2, 0, 'Winter', '2018-12-26', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(255, 2, 0, 'Winter', '2018-12-27', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(256, 2, 0, 'Winter', '2018-12-28', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(257, 2, 0, 'Winter', '2018-12-29', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(258, 2, 0, 'Winter', '2018-12-30', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(259, 2, 0, 'Winter', '2018-12-31', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(260, 2, 0, 'Winter', '2019-01-01', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(261, 2, 0, 'Winter', '2019-01-02', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(262, 2, 0, 'Winter', '2019-01-03', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(263, 2, 0, 'Winter', '2019-01-04', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(264, 2, 0, 'Winter', '2019-01-05', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(265, 2, 0, 'Winter', '2019-01-06', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(266, 2, 0, 'Winter', '2019-01-07', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(267, 2, 0, 'Winter', '2019-01-08', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(268, 2, 0, 'Winter', '2019-01-09', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(269, 2, 0, 'Winter', '2019-01-10', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(270, 2, 0, 'Winter', '2019-01-11', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(271, 2, 0, 'Winter', '2019-01-12', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(272, 2, 0, 'Winter', '2019-01-13', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(273, 2, 0, 'Winter', '2019-01-14', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(274, 2, 0, 'Winter', '2019-01-15', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(275, 2, 0, 'Winter', '2019-01-16', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(276, 2, 0, 'Winter', '2019-01-17', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(277, 2, 0, 'Winter', '2019-01-18', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(278, 2, 0, 'Winter', '2019-01-19', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(279, 2, 0, 'Winter', '2019-01-20', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(280, 2, 0, 'Winter', '2019-01-21', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(281, 2, 0, 'Winter', '2019-01-22', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(282, 2, 0, 'Winter', '2019-01-23', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(283, 2, 0, 'Winter', '2019-01-24', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(284, 2, 0, 'Winter', '2019-01-25', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(285, 2, 0, 'Winter', '2019-01-26', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(286, 2, 0, 'Winter', '2019-01-27', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(287, 2, 0, 'Winter', '2019-01-28', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(288, 2, 0, 'Winter', '2019-01-29', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(289, 2, 0, 'Winter', '2019-01-30', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(290, 2, 0, 'Winter', '2019-01-31', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(291, 2, 0, 'Winter', '2019-02-01', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(292, 2, 0, 'Winter', '2019-02-02', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(293, 2, 0, 'Winter', '2019-02-03', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(294, 2, 0, 'Winter', '2019-02-04', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(295, 2, 0, 'Winter', '2019-02-05', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(296, 2, 0, 'Winter', '2019-02-06', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(297, 2, 0, 'Winter', '2019-02-07', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(298, 2, 0, 'Winter', '2019-02-08', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(299, 2, 0, 'Winter', '2019-02-09', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(300, 2, 0, 'Winter', '2019-02-10', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(301, 2, 0, 'Winter', '2019-02-11', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(302, 2, 0, 'Winter', '2019-02-12', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(303, 2, 0, 'Winter', '2019-02-13', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(304, 2, 0, 'Winter', '2019-02-14', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(305, 2, 0, 'Winter', '2019-02-15', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(306, 2, 0, 'Winter', '2019-02-16', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(307, 2, 0, 'Winter', '2019-02-17', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(308, 2, 0, 'Winter', '2019-02-18', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(309, 2, 0, 'Winter', '2019-02-19', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(310, 2, 0, 'Winter', '2019-02-20', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(311, 2, 0, 'Winter', '2019-02-21', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(312, 2, 0, 'Winter', '2019-02-22', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(313, 2, 0, 'Winter', '2019-02-23', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(314, 2, 0, 'Winter', '2019-02-24', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(315, 2, 0, 'Winter', '2019-02-25', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(316, 2, 0, 'Winter', '2019-02-26', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(317, 2, 0, 'Winter', '2019-02-27', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(318, 2, 0, 'Winter', '2019-02-28', '2019-02-28', '265', '235', '1650', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(319, 2, 0, 'Spring', '2019-03-01', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(320, 2, 0, 'Spring', '2019-03-02', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(321, 2, 0, 'Spring', '2019-03-03', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(322, 2, 0, 'Spring', '2019-03-04', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(323, 2, 0, 'Spring', '2019-03-05', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(324, 2, 0, 'Spring', '2019-03-06', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(325, 2, 0, 'Spring', '2019-03-07', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(326, 2, 0, 'Spring', '2019-03-08', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(327, 2, 0, 'Spring', '2019-03-09', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(328, 2, 0, 'Spring', '2019-03-10', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(329, 2, 0, 'Spring', '2019-03-11', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(330, 2, 0, 'Spring', '2019-03-12', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(331, 2, 0, 'Spring', '2019-03-13', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(332, 2, 0, 'Spring', '2019-03-14', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(333, 2, 0, 'Spring', '2019-03-15', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(334, 2, 0, 'Spring', '2019-03-16', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(335, 2, 0, 'Spring', '2019-03-17', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(336, 2, 0, 'Spring', '2019-03-18', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(337, 2, 0, 'Spring', '2019-03-19', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(338, 2, 0, 'Spring', '2019-03-20', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(339, 2, 0, 'Spring', '2019-03-21', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(340, 2, 0, 'Spring', '2019-03-22', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(341, 2, 0, 'Spring', '2019-03-23', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(342, 2, 0, 'Spring', '2019-03-24', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(343, 2, 0, 'Spring', '2019-03-25', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(344, 2, 0, 'Spring', '2019-03-26', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(345, 2, 0, 'Spring', '2019-03-27', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(346, 2, 0, 'Spring', '2019-03-28', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(347, 2, 0, 'Spring', '2019-03-29', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(348, 2, 0, 'Spring', '2019-03-30', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(349, 2, 0, 'Spring', '2019-03-31', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(350, 2, 0, 'Spring', '2019-04-01', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(351, 2, 0, 'Spring', '2019-04-02', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(352, 2, 0, 'Spring', '2019-04-03', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(353, 2, 0, 'Spring', '2019-04-04', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(354, 2, 0, 'Spring', '2019-04-05', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(355, 2, 0, 'Spring', '2019-04-06', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(356, 2, 0, 'Spring', '2019-04-07', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(357, 2, 0, 'Spring', '2019-04-08', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(358, 2, 0, 'Spring', '2019-04-09', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(359, 2, 0, 'Spring', '2019-04-10', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(360, 2, 0, 'Spring', '2019-04-11', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(361, 2, 0, 'Spring', '2019-04-12', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(362, 2, 0, 'Spring', '2019-04-13', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(363, 2, 0, 'Spring', '2019-04-14', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(364, 2, 0, 'Spring', '2019-04-15', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(365, 2, 0, 'Spring', '2019-04-16', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(366, 2, 0, 'Spring', '2019-04-17', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(367, 2, 0, 'Spring', '2019-04-18', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(368, 2, 0, 'Spring', '2019-04-19', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(369, 2, 0, 'Spring', '2019-04-20', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(370, 2, 0, 'Spring', '2019-04-21', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(371, 2, 0, 'Spring', '2019-04-22', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(372, 2, 0, 'Spring', '2019-04-23', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(373, 2, 0, 'Spring', '2019-04-24', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(374, 2, 0, 'Spring', '2019-04-25', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(375, 2, 0, 'Spring', '2019-04-26', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202');
INSERT INTO `lhk_property_new_rates` (`pro_new_rate_id`, `property_id`, `admin_id`, `pro_new_rate_desc`, `pro_new_rate_sdate`, `pro_new_rate_edate`, `pro_new_rate_weekend_nt`, `pro_new_rate_week_nt`, `pro_new_rate_weekly_nt`, `pro_new_rate_monthly`, `pro_new_rate_event`, `pro_new_rate_min_stay`, `basedonguest`, `guestpernoght`, `pro_new_insert_date`, `pro_new_update_date`, `pro_new_ip`) VALUES
(376, 2, 0, 'Spring', '2019-04-27', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(377, 2, 0, 'Spring', '2019-04-28', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(378, 2, 0, 'Spring', '2019-04-29', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(379, 2, 0, 'Spring', '2019-04-30', '2019-04-30', '280', '265', '1400', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(380, 2, 0, 'Late Summer', '2019-05-01', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(381, 2, 0, 'Late Summer', '2019-05-02', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(382, 2, 0, 'Late Summer', '2019-05-03', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(383, 2, 0, 'Late Summer', '2019-05-04', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(384, 2, 0, 'Late Summer', '2019-05-05', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(385, 2, 0, 'Late Summer', '2019-05-06', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(386, 2, 0, 'Late Summer', '2019-05-07', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(387, 2, 0, 'Late Summer', '2019-05-08', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(388, 2, 0, 'Late Summer', '2019-05-09', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(389, 2, 0, 'Late Summer', '2019-05-10', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(390, 2, 0, 'Late Summer', '2019-05-11', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(391, 2, 0, 'Late Summer', '2019-05-12', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(392, 2, 0, 'Late Summer', '2019-05-13', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(393, 2, 0, 'Late Summer', '2019-05-14', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(394, 2, 0, 'Late Summer', '2019-05-15', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(395, 2, 0, 'Late Summer', '2019-05-16', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(396, 2, 0, 'Late Summer', '2019-05-17', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(397, 2, 0, 'Late Summer', '2019-05-18', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(398, 2, 0, 'Late Summer', '2019-05-19', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(399, 2, 0, 'Late Summer', '2019-05-20', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(400, 2, 0, 'Late Summer', '2019-05-21', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(401, 2, 0, 'Late Summer', '2019-05-22', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(402, 2, 0, 'Late Summer', '2019-05-23', '2019-05-23', '325', '280', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(403, 2, 0, 'Summer', '2019-05-24', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(404, 2, 0, 'Summer', '2019-05-25', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(405, 2, 0, 'Summer', '2019-05-26', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(406, 2, 0, 'Summer', '2019-05-27', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(407, 2, 0, 'Summer', '2019-05-28', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(408, 2, 0, 'Summer', '2019-05-29', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(409, 2, 0, 'Summer', '2019-05-30', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(410, 2, 0, 'Summer', '2019-05-31', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(411, 2, 0, 'Summer', '2019-06-01', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(412, 2, 0, 'Summer', '2019-06-02', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(413, 2, 0, 'Summer', '2019-06-03', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(414, 2, 0, 'Summer', '2019-06-04', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(415, 2, 0, 'Summer', '2019-06-05', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(416, 2, 0, 'Summer', '2019-06-06', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(417, 2, 0, 'Summer', '2019-06-07', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(418, 2, 0, 'Summer', '2019-06-08', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(419, 2, 0, 'Summer', '2019-06-09', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(420, 2, 0, 'Summer', '2019-06-10', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(421, 2, 0, 'Summer', '2019-06-11', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(422, 2, 0, 'Summer', '2019-06-12', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(423, 2, 0, 'Summer', '2019-06-13', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(424, 2, 0, 'Summer', '2019-06-14', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(425, 2, 0, 'Summer', '2019-06-15', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(426, 2, 0, 'Summer', '2019-06-16', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(427, 2, 0, 'Summer', '2019-06-17', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(428, 2, 0, 'Summer', '2019-06-18', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(429, 2, 0, 'Summer', '2019-06-19', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(430, 2, 0, 'Summer', '2019-06-20', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(431, 2, 0, 'Summer', '2019-06-21', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(432, 2, 0, 'Summer', '2019-06-22', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(433, 2, 0, 'Summer', '2019-06-23', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(434, 2, 0, 'Summer', '2019-06-24', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(435, 2, 0, 'Summer', '2019-06-25', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(436, 2, 0, 'Summer', '2019-06-26', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(437, 2, 0, 'Summer', '2019-06-27', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(438, 2, 0, 'Summer', '2019-06-28', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(439, 2, 0, 'Summer', '2019-06-29', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(440, 2, 0, 'Summer', '2019-06-30', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(441, 2, 0, 'Summer', '2019-07-01', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(442, 2, 0, 'Summer', '2019-07-02', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(443, 2, 0, 'Summer', '2019-07-03', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(444, 2, 0, 'Summer', '2019-07-04', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(445, 2, 0, 'Summer', '2019-07-05', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(446, 2, 0, 'Summer', '2019-07-06', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(447, 2, 0, 'Summer', '2019-07-07', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(448, 2, 0, 'Summer', '2019-07-08', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(449, 2, 0, 'Summer', '2019-07-09', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(450, 2, 0, 'Summer', '2019-07-10', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(451, 2, 0, 'Summer', '2019-07-11', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(452, 2, 0, 'Summer', '2019-07-12', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(453, 2, 0, 'Summer', '2019-07-13', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(454, 2, 0, 'Summer', '2019-07-14', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(455, 2, 0, 'Summer', '2019-07-15', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(456, 2, 0, 'Summer', '2019-07-16', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(457, 2, 0, 'Summer', '2019-07-17', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(458, 2, 0, 'Summer', '2019-07-18', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(459, 2, 0, 'Summer', '2019-07-19', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(460, 2, 0, 'Summer', '2019-07-20', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(461, 2, 0, 'Summer', '2019-07-21', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(462, 2, 0, 'Summer', '2019-07-22', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(463, 2, 0, 'Summer', '2019-07-23', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(464, 2, 0, 'Summer', '2019-07-24', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(465, 2, 0, 'Summer', '2019-07-25', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(466, 2, 0, 'Summer', '2019-07-26', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(467, 2, 0, 'Summer', '2019-07-27', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(468, 2, 0, 'Summer', '2019-07-28', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(469, 2, 0, 'Summer', '2019-07-29', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(470, 2, 0, 'Summer', '2019-07-30', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(471, 2, 0, 'Summer', '2019-07-31', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(472, 2, 0, 'Summer', '2019-08-01', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(473, 2, 0, 'Summer', '2019-08-02', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(474, 2, 0, 'Summer', '2019-08-03', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(475, 2, 0, 'Summer', '2019-08-04', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(476, 2, 0, 'Summer', '2019-08-05', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(477, 2, 0, 'Summer', '2019-08-06', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(478, 2, 0, 'Summer', '2019-08-07', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(479, 2, 0, 'Summer', '2019-08-08', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(480, 2, 0, 'Summer', '2019-08-09', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(481, 2, 0, 'Summer', '2019-08-10', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(482, 2, 0, 'Summer', '2019-08-11', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(483, 2, 0, 'Summer', '2019-08-12', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(484, 2, 0, 'Summer', '2019-08-13', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(485, 2, 0, 'Summer', '2019-08-14', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(486, 2, 0, 'Summer', '2019-08-15', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(487, 2, 0, 'Summer', '2019-08-16', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(488, 2, 0, 'Summer', '2019-08-17', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(489, 2, 0, 'Summer', '2019-08-18', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(490, 2, 0, 'Summer', '2019-08-19', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(491, 2, 0, 'Summer', '2019-08-20', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(492, 2, 0, 'Summer', '2019-08-21', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(493, 2, 0, 'Summer', '2019-08-22', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(494, 2, 0, 'Summer', '2019-08-23', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(495, 2, 0, 'Summer', '2019-08-24', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(496, 2, 0, 'Summer', '2019-08-25', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(497, 2, 0, 'Summer', '2019-08-26', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(498, 2, 0, 'Summer', '2019-08-27', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(499, 2, 0, 'Summer', '2019-08-28', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(500, 2, 0, 'Summer', '2019-08-29', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(501, 2, 0, 'Summer', '2019-08-30', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(502, 2, 0, 'Summer', '2019-08-31', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(503, 2, 0, 'Summer', '2019-09-01', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(504, 2, 0, 'Summer', '2019-09-02', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(505, 2, 0, 'Summer', '2019-09-03', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(506, 2, 0, 'Summer', '2019-09-04', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(507, 2, 0, 'Summer', '2019-09-05', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(508, 2, 0, 'Summer', '2019-09-06', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(509, 2, 0, 'Summer', '2019-09-07', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(510, 2, 0, 'Summer', '2019-09-08', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(511, 2, 0, 'Summer', '2019-09-09', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(512, 2, 0, 'Summer', '2019-09-10', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(513, 2, 0, 'Summer', '2019-09-11', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(514, 2, 0, 'Summer', '2019-09-12', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(515, 2, 0, 'Summer', '2019-09-13', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(516, 2, 0, 'Summer', '2019-09-14', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(517, 2, 0, 'Summer', '2019-09-15', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(518, 2, 0, 'Summer', '2019-09-16', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(519, 2, 0, 'Summer', '2019-09-17', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(520, 2, 0, 'Summer', '2019-09-18', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(521, 2, 0, 'Summer', '2019-09-19', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(522, 2, 0, 'Summer', '2019-09-20', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(523, 2, 0, 'Summer', '2019-09-21', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(524, 2, 0, 'Summer', '2019-09-22', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(525, 2, 0, 'Summer', '2019-09-23', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(526, 2, 0, 'Summer', '2019-09-24', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(527, 2, 0, 'Summer', '2019-09-25', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(528, 2, 0, 'Summer', '2019-09-26', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(529, 2, 0, 'Summer', '2019-09-27', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(530, 2, 0, 'Summer', '2019-09-28', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(531, 2, 0, 'Summer', '2019-09-29', '2019-09-29', '450', '390', '2750', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(532, 2, 0, 'Fall', '2019-09-30', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(533, 2, 0, 'Fall', '2019-10-01', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(534, 2, 0, 'Fall', '2019-10-02', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(535, 2, 0, 'Fall', '2019-10-03', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(536, 2, 0, 'Fall', '2019-10-04', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(537, 2, 0, 'Fall', '2019-10-05', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(538, 2, 0, 'Fall', '2019-10-06', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(539, 2, 0, 'Fall', '2019-10-07', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(540, 2, 0, 'Fall', '2019-10-08', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(541, 2, 0, 'Fall', '2019-10-09', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(542, 2, 0, 'Fall', '2019-10-10', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(543, 2, 0, 'Fall', '2019-10-11', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(544, 2, 0, 'Fall', '2019-10-12', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(545, 2, 0, 'Fall', '2019-10-13', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(546, 2, 0, 'Fall', '2019-10-14', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(547, 2, 0, 'Fall', '2019-10-15', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(548, 2, 0, 'Fall', '2019-10-16', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(549, 2, 0, 'Fall', '2019-10-17', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(550, 2, 0, 'Fall', '2019-10-18', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(551, 2, 0, 'Fall', '2019-10-19', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(552, 2, 0, 'Fall', '2019-10-20', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(553, 2, 0, 'Fall', '2019-10-21', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(554, 2, 0, 'Fall', '2019-10-22', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(555, 2, 0, 'Fall', '2019-10-23', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(556, 2, 0, 'Fall', '2019-10-24', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(557, 2, 0, 'Fall', '2019-10-25', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(558, 2, 0, 'Fall', '2019-10-26', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(559, 2, 0, 'Fall', '2019-10-27', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(560, 2, 0, 'Fall', '2019-10-28', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(561, 2, 0, 'Fall', '2019-10-29', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(562, 2, 0, 'Fall', '2019-10-30', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(563, 2, 0, 'Fall', '2019-10-31', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(564, 2, 0, 'Fall', '2019-11-01', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(565, 2, 0, 'Fall', '2019-11-02', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(566, 2, 0, 'Fall', '2019-11-03', '2019-11-03', '280', '265', '1850', '', '', '2', '', '', '2018-10-10', '0000-00-00', '43.230.197.202'),
(568, 3, 0, 'Winter', '2018-10-01', '2019-02-28', '145', '125', '850', '2800', '', '2', '', '', '2018-10-11', '2018-10-18', '73.109.46.140'),
(569, 3, 0, 'Winter', '2018-10-02', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(570, 3, 0, 'Winter', '2018-10-03', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(571, 3, 0, 'Winter', '2018-10-04', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(572, 3, 0, 'Winter', '2018-10-05', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(573, 3, 0, 'Winter', '2018-10-06', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(574, 3, 0, 'Winter', '2018-10-07', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(575, 3, 0, 'Winter', '2018-10-08', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(576, 3, 0, 'Winter', '2018-10-09', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(577, 3, 0, 'Winter', '2018-10-10', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(578, 3, 0, 'Winter', '2018-10-11', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(579, 3, 0, 'Winter', '2018-10-12', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(580, 3, 0, 'Winter', '2018-10-13', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(581, 3, 0, 'Winter', '2018-10-14', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(582, 3, 0, 'Winter', '2018-10-15', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(583, 3, 0, 'Winter', '2018-10-16', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(584, 3, 0, 'Winter', '2018-10-17', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(585, 3, 0, 'Winter', '2018-10-18', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(586, 3, 0, 'Winter', '2018-10-19', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(587, 3, 0, 'Winter', '2018-10-20', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(588, 3, 0, 'Winter', '2018-10-21', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(589, 3, 0, 'Winter', '2018-10-22', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(590, 3, 0, 'Winter', '2018-10-23', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(591, 3, 0, 'Winter', '2018-10-24', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(592, 3, 0, 'Winter', '2018-10-25', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(593, 3, 0, 'Winter', '2018-10-26', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(594, 3, 0, 'Winter', '2018-10-27', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(595, 3, 0, 'Winter', '2018-10-28', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(596, 3, 0, 'Winter', '2018-10-29', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(597, 3, 0, 'Winter', '2018-10-30', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(598, 3, 0, 'Winter', '2018-10-31', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(599, 3, 0, 'Winter', '2018-11-01', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(600, 3, 0, 'Winter', '2018-11-02', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(601, 3, 0, 'Winter', '2018-11-03', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(602, 3, 0, 'Winter', '2018-11-04', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(603, 3, 0, 'Winter', '2018-11-05', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(604, 3, 0, 'Winter', '2018-11-06', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(605, 3, 0, 'Winter', '2018-11-07', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(606, 3, 0, 'Winter', '2018-11-08', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(607, 3, 0, 'Winter', '2018-11-09', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(608, 3, 0, 'Winter', '2018-11-10', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(609, 3, 0, 'Winter', '2018-11-11', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(610, 3, 0, 'Winter', '2018-11-12', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(611, 3, 0, 'Winter', '2018-11-13', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(612, 3, 0, 'Winter', '2018-11-14', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(613, 3, 0, 'Winter', '2018-11-15', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(614, 3, 0, 'Winter', '2018-11-16', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(615, 3, 0, 'Winter', '2018-11-17', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(616, 3, 0, 'Winter', '2018-11-18', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(617, 3, 0, 'Winter', '2018-11-19', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(618, 3, 0, 'Winter', '2018-11-20', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(619, 3, 0, 'Winter', '2018-11-21', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(620, 3, 0, 'Winter', '2018-11-22', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(621, 3, 0, 'Winter', '2018-11-23', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(622, 3, 0, 'Winter', '2018-11-24', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(623, 3, 0, 'Winter', '2018-11-25', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(624, 3, 0, 'Winter', '2018-11-26', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(625, 3, 0, 'Winter', '2018-11-27', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(626, 3, 0, 'Winter', '2018-11-28', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(627, 3, 0, 'Winter', '2018-11-29', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(628, 3, 0, 'Winter', '2018-11-30', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(629, 3, 0, 'Winter', '2018-12-01', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(630, 3, 0, 'Winter', '2018-12-02', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(631, 3, 0, 'Winter', '2018-12-03', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(632, 3, 0, 'Winter', '2018-12-04', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(633, 3, 0, 'Winter', '2018-12-05', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(634, 3, 0, 'Winter', '2018-12-06', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(635, 3, 0, 'Winter', '2018-12-07', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(636, 3, 0, 'Winter', '2018-12-08', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(637, 3, 0, 'Winter', '2018-12-09', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(638, 3, 0, 'Winter', '2018-12-10', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(639, 3, 0, 'Winter', '2018-12-11', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(640, 3, 0, 'Winter', '2018-12-12', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(641, 3, 0, 'Winter', '2018-12-13', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(642, 3, 0, 'Winter', '2018-12-14', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(643, 3, 0, 'Winter', '2018-12-15', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(644, 3, 0, 'Winter', '2018-12-16', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(645, 3, 0, 'Winter', '2018-12-17', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(646, 3, 0, 'Winter', '2018-12-18', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(647, 3, 0, 'Winter', '2018-12-19', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(648, 3, 0, 'Winter', '2018-12-20', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(649, 3, 0, 'Winter', '2018-12-21', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(650, 3, 0, 'Winter', '2018-12-22', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(651, 3, 0, 'Winter', '2018-12-23', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(652, 3, 0, 'Winter', '2018-12-24', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(653, 3, 0, 'Winter', '2018-12-25', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(654, 3, 0, 'Winter', '2018-12-26', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(655, 3, 0, 'Winter', '2018-12-27', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(656, 3, 0, 'Winter', '2018-12-28', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(657, 3, 0, 'Winter', '2018-12-29', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(658, 3, 0, 'Winter', '2018-12-30', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(659, 3, 0, 'Winter', '2018-12-31', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(660, 3, 0, 'Winter', '2019-01-01', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(661, 3, 0, 'Winter', '2019-01-02', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(662, 3, 0, 'Winter', '2019-01-03', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(663, 3, 0, 'Winter', '2019-01-04', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(664, 3, 0, 'Winter', '2019-01-05', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(665, 3, 0, 'Winter', '2019-01-06', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(666, 3, 0, 'Winter', '2019-01-07', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(667, 3, 0, 'Winter', '2019-01-08', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(668, 3, 0, 'Winter', '2019-01-09', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(669, 3, 0, 'Winter', '2019-01-10', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(670, 3, 0, 'Winter', '2019-01-11', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(671, 3, 0, 'Winter', '2019-01-12', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(672, 3, 0, 'Winter', '2019-01-13', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(673, 3, 0, 'Winter', '2019-01-14', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(674, 3, 0, 'Winter', '2019-01-15', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(675, 3, 0, 'Winter', '2019-01-16', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(676, 3, 0, 'Winter', '2019-01-17', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(677, 3, 0, 'Winter', '2019-01-18', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(678, 3, 0, 'Winter', '2019-01-19', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(679, 3, 0, 'Winter', '2019-01-20', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(680, 3, 0, 'Winter', '2019-01-21', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(681, 3, 0, 'Winter', '2019-01-22', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(682, 3, 0, 'Winter', '2019-01-23', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(683, 3, 0, 'Winter', '2019-01-24', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(684, 3, 0, 'Winter', '2019-01-25', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(685, 3, 0, 'Winter', '2019-01-26', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(686, 3, 0, 'Winter', '2019-01-27', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(687, 3, 0, 'Winter', '2019-01-28', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(688, 3, 0, 'Winter', '2019-01-29', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(689, 3, 0, 'Winter', '2019-01-30', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(690, 3, 0, 'Winter', '2019-01-31', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(691, 3, 0, 'Winter', '2019-02-01', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(692, 3, 0, 'Winter', '2019-02-02', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(693, 3, 0, 'Winter', '2019-02-03', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(694, 3, 0, 'Winter', '2019-02-04', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(695, 3, 0, 'Winter', '2019-02-05', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(696, 3, 0, 'Winter', '2019-02-06', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(697, 3, 0, 'Winter', '2019-02-07', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(698, 3, 0, 'Winter', '2019-02-08', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(699, 3, 0, 'Winter', '2019-02-09', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(700, 3, 0, 'Winter', '2019-02-10', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(701, 3, 0, 'Winter', '2019-02-11', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(702, 3, 0, 'Winter', '2019-02-12', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(703, 3, 0, 'Winter', '2019-02-13', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(704, 3, 0, 'Winter', '2019-02-14', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(705, 3, 0, 'Winter', '2019-02-15', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(706, 3, 0, 'Winter', '2019-02-16', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(707, 3, 0, 'Winter', '2019-02-17', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(708, 3, 0, 'Winter', '2019-02-18', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(709, 3, 0, 'Winter', '2019-02-19', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(710, 3, 0, 'Winter', '2019-02-20', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(711, 3, 0, 'Winter', '2019-02-21', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(712, 3, 0, 'Winter', '2019-02-22', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(713, 3, 0, 'Winter', '2019-02-23', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(714, 3, 0, 'Winter', '2019-02-24', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(715, 3, 0, 'Winter', '2019-02-25', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(716, 3, 0, 'Winter', '2019-02-26', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(717, 3, 0, 'Winter', '2019-02-27', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(718, 3, 0, 'Winter', '2019-02-28', '2019-02-28', '145', '125', '800', '2800', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(719, 3, 0, 'Spring', '2019-03-01', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(720, 3, 0, 'Spring', '2019-03-02', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(721, 3, 0, 'Spring', '2019-03-03', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(722, 3, 0, 'Spring', '2019-03-04', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(723, 3, 0, 'Spring', '2019-03-05', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(724, 3, 0, 'Spring', '2019-03-06', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(725, 3, 0, 'Spring', '2019-03-07', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(726, 3, 0, 'Spring', '2019-03-08', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(727, 3, 0, 'Spring', '2019-03-09', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(728, 3, 0, 'Spring', '2019-03-10', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(729, 3, 0, 'Spring', '2019-03-11', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(730, 3, 0, 'Spring', '2019-03-12', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(731, 3, 0, 'Spring', '2019-03-13', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(732, 3, 0, 'Spring', '2019-03-14', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(733, 3, 0, 'Spring', '2019-03-15', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140');
INSERT INTO `lhk_property_new_rates` (`pro_new_rate_id`, `property_id`, `admin_id`, `pro_new_rate_desc`, `pro_new_rate_sdate`, `pro_new_rate_edate`, `pro_new_rate_weekend_nt`, `pro_new_rate_week_nt`, `pro_new_rate_weekly_nt`, `pro_new_rate_monthly`, `pro_new_rate_event`, `pro_new_rate_min_stay`, `basedonguest`, `guestpernoght`, `pro_new_insert_date`, `pro_new_update_date`, `pro_new_ip`) VALUES
(734, 3, 0, 'Spring', '2019-03-16', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(735, 3, 0, 'Spring', '2019-03-17', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(736, 3, 0, 'Spring', '2019-03-18', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(737, 3, 0, 'Spring', '2019-03-19', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(738, 3, 0, 'Spring', '2019-03-20', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(739, 3, 0, 'Spring', '2019-03-21', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(740, 3, 0, 'Spring', '2019-03-22', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(741, 3, 0, 'Spring', '2019-03-23', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(742, 3, 0, 'Spring', '2019-03-24', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(743, 3, 0, 'Spring', '2019-03-25', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(744, 3, 0, 'Spring', '2019-03-26', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(745, 3, 0, 'Spring', '2019-03-27', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(746, 3, 0, 'Spring', '2019-03-28', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(747, 3, 0, 'Spring', '2019-03-29', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(748, 3, 0, 'Spring', '2019-03-30', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(749, 3, 0, 'Spring', '2019-03-31', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(750, 3, 0, 'Spring', '2019-04-01', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(751, 3, 0, 'Spring', '2019-04-02', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(752, 3, 0, 'Spring', '2019-04-03', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(753, 3, 0, 'Spring', '2019-04-04', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(754, 3, 0, 'Spring', '2019-04-05', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(755, 3, 0, 'Spring', '2019-04-06', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(756, 3, 0, 'Spring', '2019-04-07', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(757, 3, 0, 'Spring', '2019-04-08', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(758, 3, 0, 'Spring', '2019-04-09', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(759, 3, 0, 'Spring', '2019-04-10', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(760, 3, 0, 'Spring', '2019-04-11', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(761, 3, 0, 'Spring', '2019-04-12', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(762, 3, 0, 'Spring', '2019-04-13', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(763, 3, 0, 'Spring', '2019-04-14', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(764, 3, 0, 'Spring', '2019-04-15', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(765, 3, 0, 'Spring', '2019-04-16', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(766, 3, 0, 'Spring', '2019-04-17', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(767, 3, 0, 'Spring', '2019-04-18', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(768, 3, 0, 'Spring', '2019-04-19', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(769, 3, 0, 'Spring', '2019-04-20', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(770, 3, 0, 'Spring', '2019-04-21', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(771, 3, 0, 'Spring', '2019-04-22', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(772, 3, 0, 'Spring', '2019-04-23', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(773, 3, 0, 'Spring', '2019-04-24', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(774, 3, 0, 'Spring', '2019-04-25', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(775, 3, 0, 'Spring', '2019-04-26', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(776, 3, 0, 'Spring', '2019-04-27', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(777, 3, 0, 'Spring', '2019-04-28', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(778, 3, 0, 'Spring', '2019-04-29', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(779, 3, 0, 'Spring', '2019-04-30', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(780, 3, 0, 'Spring', '2019-05-01', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(781, 3, 0, 'Spring', '2019-05-02', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(782, 3, 0, 'Spring', '2019-05-03', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(783, 3, 0, 'Spring', '2019-05-04', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(784, 3, 0, 'Spring', '2019-05-05', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(785, 3, 0, 'Spring', '2019-05-06', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(786, 3, 0, 'Spring', '2019-05-07', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(787, 3, 0, 'Spring', '2019-05-08', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(788, 3, 0, 'Spring', '2019-05-09', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(789, 3, 0, 'Spring', '2019-05-10', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(790, 3, 0, 'Spring', '2019-05-11', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(791, 3, 0, 'Spring', '2019-05-12', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(792, 3, 0, 'Spring', '2019-05-13', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(793, 3, 0, 'Spring', '2019-05-14', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(794, 3, 0, 'Spring', '2019-05-15', '2019-05-15', '190', '175', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(795, 3, 0, 'Summer', '2019-05-16', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(796, 3, 0, 'Summer', '2019-05-17', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(797, 3, 0, 'Summer', '2019-05-18', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(798, 3, 0, 'Summer', '2019-05-19', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(799, 3, 0, 'Summer', '2019-05-20', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(800, 3, 0, 'Summer', '2019-05-21', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(801, 3, 0, 'Summer', '2019-05-22', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(802, 3, 0, 'Summer', '2019-05-23', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(803, 3, 0, 'Summer', '2019-05-24', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(804, 3, 0, 'Summer', '2019-05-25', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(805, 3, 0, 'Summer', '2019-05-26', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(806, 3, 0, 'Summer', '2019-05-27', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(807, 3, 0, 'Summer', '2019-05-28', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(808, 3, 0, 'Summer', '2019-05-29', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(809, 3, 0, 'Summer', '2019-05-30', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(810, 3, 0, 'Summer', '2019-05-31', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(811, 3, 0, 'Summer', '2019-06-01', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(812, 3, 0, 'Summer', '2019-06-02', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(813, 3, 0, 'Summer', '2019-06-03', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(814, 3, 0, 'Summer', '2019-06-04', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(815, 3, 0, 'Summer', '2019-06-05', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(816, 3, 0, 'Summer', '2019-06-06', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(817, 3, 0, 'Summer', '2019-06-07', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(818, 3, 0, 'Summer', '2019-06-08', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(819, 3, 0, 'Summer', '2019-06-09', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(820, 3, 0, 'Summer', '2019-06-10', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(821, 3, 0, 'Summer', '2019-06-11', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(822, 3, 0, 'Summer', '2019-06-12', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(823, 3, 0, 'Summer', '2019-06-13', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(824, 3, 0, 'Summer', '2019-06-14', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(825, 3, 0, 'Summer', '2019-06-15', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(826, 3, 0, 'Summer', '2019-06-16', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(827, 3, 0, 'Summer', '2019-06-17', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(828, 3, 0, 'Summer', '2019-06-18', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(829, 3, 0, 'Summer', '2019-06-19', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(830, 3, 0, 'Summer', '2019-06-20', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(831, 3, 0, 'Summer', '2019-06-21', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(832, 3, 0, 'Summer', '2019-06-22', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(833, 3, 0, 'Summer', '2019-06-23', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(834, 3, 0, 'Summer', '2019-06-24', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(835, 3, 0, 'Summer', '2019-06-25', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(836, 3, 0, 'Summer', '2019-06-26', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(837, 3, 0, 'Summer', '2019-06-27', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(838, 3, 0, 'Summer', '2019-06-28', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(839, 3, 0, 'Summer', '2019-06-29', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(840, 3, 0, 'Summer', '2019-06-30', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(841, 3, 0, 'Summer', '2019-07-01', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(842, 3, 0, 'Summer', '2019-07-02', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(843, 3, 0, 'Summer', '2019-07-03', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(844, 3, 0, 'Summer', '2019-07-04', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(845, 3, 0, 'Summer', '2019-07-05', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(846, 3, 0, 'Summer', '2019-07-06', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(847, 3, 0, 'Summer', '2019-07-07', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(848, 3, 0, 'Summer', '2019-07-08', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(849, 3, 0, 'Summer', '2019-07-09', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(850, 3, 0, 'Summer', '2019-07-10', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(851, 3, 0, 'Summer', '2019-07-11', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(852, 3, 0, 'Summer', '2019-07-12', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(853, 3, 0, 'Summer', '2019-07-13', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(854, 3, 0, 'Summer', '2019-07-14', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(855, 3, 0, 'Summer', '2019-07-15', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(856, 3, 0, 'Summer', '2019-07-16', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(857, 3, 0, 'Summer', '2019-07-17', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(858, 3, 0, 'Summer', '2019-07-18', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(859, 3, 0, 'Summer', '2019-07-19', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(860, 3, 0, 'Summer', '2019-07-20', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(861, 3, 0, 'Summer', '2019-07-21', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(862, 3, 0, 'Summer', '2019-07-22', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(863, 3, 0, 'Summer', '2019-07-23', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(864, 3, 0, 'Summer', '2019-07-24', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(865, 3, 0, 'Summer', '2019-07-25', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(866, 3, 0, 'Summer', '2019-07-26', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(867, 3, 0, 'Summer', '2019-07-27', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(868, 3, 0, 'Summer', '2019-07-28', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(869, 3, 0, 'Summer', '2019-07-29', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(870, 3, 0, 'Summer', '2019-07-30', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(871, 3, 0, 'Summer', '2019-07-31', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(872, 3, 0, 'Summer', '2019-08-01', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(873, 3, 0, 'Summer', '2019-08-02', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(874, 3, 0, 'Summer', '2019-08-03', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(875, 3, 0, 'Summer', '2019-08-04', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(876, 3, 0, 'Summer', '2019-08-05', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(877, 3, 0, 'Summer', '2019-08-06', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(878, 3, 0, 'Summer', '2019-08-07', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(879, 3, 0, 'Summer', '2019-08-08', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(880, 3, 0, 'Summer', '2019-08-09', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(881, 3, 0, 'Summer', '2019-08-10', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(882, 3, 0, 'Summer', '2019-08-11', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(883, 3, 0, 'Summer', '2019-08-12', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(884, 3, 0, 'Summer', '2019-08-13', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(885, 3, 0, 'Summer', '2019-08-14', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(886, 3, 0, 'Summer', '2019-08-15', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(887, 3, 0, 'Summer', '2019-08-16', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(888, 3, 0, 'Summer', '2019-08-17', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(889, 3, 0, 'Summer', '2019-08-18', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(890, 3, 0, 'Summer', '2019-08-19', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(891, 3, 0, 'Summer', '2019-08-20', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(892, 3, 0, 'Summer', '2019-08-21', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(893, 3, 0, 'Summer', '2019-08-22', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(894, 3, 0, 'Summer', '2019-08-23', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(895, 3, 0, 'Summer', '2019-08-24', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(896, 3, 0, 'Summer', '2019-08-25', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(897, 3, 0, 'Summer', '2019-08-26', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(898, 3, 0, 'Summer', '2019-08-27', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(899, 3, 0, 'Summer', '2019-08-28', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(900, 3, 0, 'Summer', '2019-08-29', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(901, 3, 0, 'Summer', '2019-08-30', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(902, 3, 0, 'Summer', '2019-08-31', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(903, 3, 0, 'Summer', '2019-09-01', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(904, 3, 0, 'Summer', '2019-09-02', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(905, 3, 0, 'Summer', '2019-09-03', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(906, 3, 0, 'Summer', '2019-09-04', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(907, 3, 0, 'Summer', '2019-09-05', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(908, 3, 0, 'Summer', '2019-09-06', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(909, 3, 0, 'Summer', '2019-09-07', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(910, 3, 0, 'Summer', '2019-09-08', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(911, 3, 0, 'Summer', '2019-09-09', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(912, 3, 0, 'Summer', '2019-09-10', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(913, 3, 0, 'Summer', '2019-09-11', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(914, 3, 0, 'Summer', '2019-09-12', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(915, 3, 0, 'Summer', '2019-09-13', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(916, 3, 0, 'Summer', '2019-09-14', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(917, 3, 0, 'Summer', '2019-09-15', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(918, 3, 0, 'Summer', '2019-09-16', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(919, 3, 0, 'Summer', '2019-09-17', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(920, 3, 0, 'Summer', '2019-09-18', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(921, 3, 0, 'Summer', '2019-09-19', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(922, 3, 0, 'Summer', '2019-09-20', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(923, 3, 0, 'Summer', '2019-09-21', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(924, 3, 0, 'Summer', '2019-09-22', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(925, 3, 0, 'Summer', '2019-09-23', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(926, 3, 0, 'Summer', '2019-09-24', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(927, 3, 0, 'Summer', '2019-09-25', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(928, 3, 0, 'Summer', '2019-09-26', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(929, 3, 0, 'Summer', '2019-09-27', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(930, 3, 0, 'Summer', '2019-09-28', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140'),
(931, 3, 0, 'Summer', '2019-09-29', '2019-09-29', '235', '195', '', '', '', '2', '', '', '2018-10-11', '0000-00-00', '73.109.46.140');

-- --------------------------------------------------------

--
-- Table structure for table `lhk_restaurant`
--

CREATE TABLE `lhk_restaurant` (
  `id` int(11) NOT NULL,
  `loc_id` int(11) NOT NULL,
  `admin_id` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `icons` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_restaurant`
--

INSERT INTO `lhk_restaurant` (`id`, `loc_id`, `admin_id`, `img`, `heading`, `content`, `sub_title`, `icons`, `added_date`) VALUES
(5, 0, '1', '../uploads/restaurant/cactus.jpg', 'Q2FjdHVzIEFsa2kgQmVhY2g=', 'Southwestern-Mexican cuisine &amp;amp; margaritas served up in a hip, colorful setting with ocean views.', 'http://www.cactusrestaurants.com/location/alki-beach/', '', '2018-10-23 07:19:19'),
(6, 0, '1', '../uploads/restaurant/download (2).jpg', 'U3VuZmlzaCBGaXNoIGFuZCBDaGlwcw==', 'Beachy spot known for classic fish &amp;#39;n&amp;#39; chips amid minimal decor, patio seating &amp;amp; ocean views.', 'https://www.yelp.com/biz/sunfish-seattle', '', '2018-10-23 07:25:34'),
(7, 0, '1', '../uploads/restaurant/download.png', 'VG9wIFBvdCBEb3VnaG51dHM=', 'Years earlier, two of our co-founders spied a vintage rustic (and rusty) neon sign gleaming above a boarded-up Chinese restaurant called &amp;quot;Topspot&amp;quot;. They bought the sign, and then left it idle in a backyard for four years, further rusting and creating a home for raccoons. Then, when the sign was finally driven off to be restored, the center &amp;quot;S&amp;quot; fell off, leaving the words &amp;quot;Top Pot&amp;quot; behind', 'http://www.toppotdoughnuts.com', '', '2018-10-23 07:28:05'),
(8, 0, '1', '../uploads/restaurant/download (1).png', 'U3RhcmJ1Y2tz', 'Seattle-based coffeehouse chain known for its signature roasts, light bites and WiFi availability.', 'https://www.starbucks.com/store-locator/store/16789/alki-ave-2742-alki-ave-sw-seattle-wa-981162812-us', '', '2018-10-23 07:30:50'),
(9, 0, '1', '../uploads/restaurant/bs-po-boy-logo.jpeg', 'QidzIFBvIEJveQ==', 'B&amp;rsquo;s Po Boy strives to give you the best and most authentic culinary experience outside of New Orleans. Our po boys are served on Leidenheimer bread, the preferred bakery in Louisiana providing to 90% of po boy shops there. Gumbo, Red Beans &amp;amp; Rice, Vegan and Vegetarian options, Beignets, Beer, Wine &amp;amp; Spirits! All this AND the Puget Sound! Come on down to Alki and check us out.', 'http://www.bspoboyseattle.com/', '', '2018-10-23 07:32:25'),
(10, 0, '1', '../uploads/restaurant/Phoenecia-Blog-Collage-Photo-e1429569167521.jpg', 'UGhvZW5lY2lh', 'Cool, waterfront bistro with 2 wine bars &amp;amp; a thoughtfully sourced menu of artisanal pizzas &amp;amp; tapas', 'http://www.phoeneciawestseattle.com/Home.html', '', '2018-10-23 07:34:46'),
(11, 0, '1', '../uploads/restaurant/alki_cafe.jpg', 'QWxraSBDYWZl', 'Casual eatery serving all-day breakfasts plus seafood &amp;amp; pasta in a space with views of Puget Sound.', 'https://www.alkicafe.com/', '', '2018-10-23 07:36:19'),
(12, 0, '1', '../uploads/restaurant/unnamed.jpg', 'QWxraSBTcHVkIEZpc2ggJiBDaGlwcw==', 'Laid-back outpost of a local chain known for its spuds, coleslaw, chowder &amp;amp; water views.', 'http://www.alkispud.com', '', '2018-10-23 07:38:30'),
(13, 0, '1', '../uploads/restaurant/location-alki.jpg', 'RWwgQ2h1cGFjYWJyYSBBbGtp', 'Happening, punk rock-themed outpost offering Mexican dishes &amp;amp; margaritas, plus a beachfront patio.', 'http://www.elchupacabraseattle.com/locations/west-seattle/', '', '2018-10-23 07:41:04'),
(14, 0, '1', '../uploads/restaurant/images.png', 'UGVwcGVyZG9jayBSZXN0YXVyYW50', 'Old-school joint serving comfort eats &amp;amp; ice cream in a no-frills, vintage set-up with a roomy patio.', 'https://www.yelp.com/biz/pepperdock-restaurant-seattle', '', '2018-10-23 07:42:37'),
(15, 0, '1', '../uploads/restaurant/ls.jpg', 'QW1wZXJzYW5kIENhZmUgb24gQWxraSA=', '', 'https://www.yelp.com/biz/ampersand-cafe-seattle', '', '2018-10-23 07:44:10'),
(16, 0, '1', '../uploads/restaurant/images (1).png', 'RHVrZSdzIFNlYWZvb2QgJiBDaG93ZGVy', 'Local chain serving market-fresh seafood, grass-fed burgers &amp;amp; cocktails in informal surroundings', 'https://www.dukesseafood.com/locations/alki/', '', '2018-10-23 07:47:27'),
(17, 0, '1', '../uploads/restaurant/christos_greek_restaurant_alki.png', 'Q2hyaXN0b3MgT24gQWxraQ==', 'Italian &amp;amp; Greek favorites served in a casual setup with a full bar, trivia nights &amp;amp; sports on TV', 'https://christosonalki.com', '', '2018-10-23 07:48:36'),
(18, 0, '1', '../uploads/restaurant/5luacGAx_400x400.jpeg', 'Qmx1ZSBNb29uIEJ1cmdlcnM=', 'Fast food gets an upgrade at this counter-serve spot with locally sourced beef &amp;amp; hand-cut fries.', 'http://bluemoonburgers.com/', '', '2018-10-23 07:50:53');

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
  `added_date` date NOT NULL,
  `r_update_date` date DEFAULT NULL,
  `r_ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lhk_reviews_detail`
--

INSERT INTO `lhk_reviews_detail` (`id`, `property_id`, `admin_id`, `img`, `c_name`, `heading`, `c_review`, `c_place`, `added_date`, `r_update_date`, `r_ip`) VALUES
(1, 2, 1, '', 'Merlyg', 'Exceptional', 'My family and I loved the house and the location. Anything n everything we needed was provided.', '', '2018-09-25', NULL, NULL),
(2, 2, 1, '', 'Muthukumar', 'Exceptional', '<p lang=\"xu\">Perfect location &amp; friendly/honest owner. We lost our car key while walking back to the room, Owner Dylan &amp; his wife helped us in this regard &amp; his wife found the car key outside the room in the sidewalk. We are so thankful to her. We were 6 in our family &amp; Dylan honestly texted and emailed me ahead of time about the vacation house can sleep only 4 and he can only provide additional pull over beds for 2. If i don&#39;t like that , I can cancel the room without any cost To appreciate his honesty, I decided to take the vacation house &amp; it was a wonderful &amp; pleasant stay for us. One suggestion to Dylan : Couple of windows needs blinds. I strongly recommend this vacation house to all.</p>\r\n', '', '2018-09-25', NULL, NULL),
(3, 2, 1, '', 'Simone', 'Superb', '<p lang=\"en\">The view was fantastic.</p>\r\n', '', '2018-09-25', NULL, NULL),
(4, 2, 1, '', 'Christine', 'Exceptional', '<p lang=\"en\">Gorgeous location opposite the water. The owners of this property had great attention to detail regarding things that people need when they are away from home- eg. there was washing liquid for washer, condiments, tea/coffee, games and so many other little touches you usually don&#39;t find in a holiday rental. They had also provied a detailed book on restaurants in the area. where to shop, things to do etc. Beds were very comfortable and the unit is beautifully furnished. We were a bit surprised by the dog which appeared in the yard and seems to live upstairs but he was really well behaved and the kids loved patting him.</p>\r\n', '', '2018-09-25', NULL, NULL),
(5, 3, 1, '', 'Sandelle', 'Relaxing stay on the beach.', 'Loved the location on the beach and lots of room in the house for our family. I enjoyed walking the beach in the morning and stopping for coffee on the way back. It was great having a washer and dryer, fully equipped kitchen, and they even left us welcome snacks!', '', '2018-09-25', NULL, NULL),
(6, 3, 1, '', ' Merlyg ', 'Lifetime Memories', 'My family and I loved the house and the location. Anything n everything we needed was provided.', '', '2018-09-25', NULL, NULL),
(7, 3, 1, '', ' Muthukumar ', 'Friendly & honest owner, perfect location', 'Perfect location &amp; friendly/honest owner. We lost our car key while walking back to the room, Owner Dylan &amp; his wife helped us in this regard &amp; his wife found the car key outside the room in the sidewalk. We are so thankful to her. We were 6 in our family &amp; Dylan honestly texted and emailed me ahead of time about the vacation house can sleep only 4 and he can only provide additional pull over beds for 2. If i don&#39;t like that , I can cancel the room without any cost To appreciate his honesty, I decided to take the vacation house &amp; it was a wonderful &amp; pleasant stay for us. One suggestion to Dylan : Couple of windows needs blinds. I strongly recommend this vacation house to all.', '', '2018-09-25', NULL, NULL);

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

--
-- Dumping data for table `lhk_subscribe`
--

INSERT INTO `lhk_subscribe` (`sub_id`, `name`, `email`, `createdate`, `statuss`) VALUES
(1, '', 'test@gmail.com', '2018-09-25', NULL),
(2, '', 'ajeetkumarup4@gmail.com', '2018-10-11', NULL);

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
-- Indexes for table `lhk_promo_code`
--
ALTER TABLE `lhk_promo_code`
  ADD PRIMARY KEY (`pro_id`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `amenity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lhk_amenity_details`
--
ALTER TABLE `lhk_amenity_details`
  MODIFY `amen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `lhk_area_detail`
--
ALTER TABLE `lhk_area_detail`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_area_info`
--
ALTER TABLE `lhk_area_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `bok_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lhk_client_details`
--
ALTER TABLE `lhk_client_details`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

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
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_ical_events`
--
ALTER TABLE `lhk_ical_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lhk_ical_links`
--
ALTER TABLE `lhk_ical_links`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lhk_info`
--
ALTER TABLE `lhk_info`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `lhk_promo_code`
--
ALTER TABLE `lhk_promo_code`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lhk_property_back_details`
--
ALTER TABLE `lhk_property_back_details`
  MODIFY `pro_back_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lhk_property_default_rates`
--
ALTER TABLE `lhk_property_default_rates`
  MODIFY `pro_def_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `pro_new_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=932;

--
-- AUTO_INCREMENT for table `lhk_restaurant`
--
ALTER TABLE `lhk_restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lhk_reviews_detail`
--
ALTER TABLE `lhk_reviews_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lhk_social_links`
--
ALTER TABLE `lhk_social_links`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lhk_subscribe`
--
ALTER TABLE `lhk_subscribe`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
