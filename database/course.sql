-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2018 at 10:52 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `combinddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(5) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(5) NOT NULL,
  `create_at` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `description`, `images`, `price`, `create_at`, `status`) VALUES
(1, 'Basic Java Programming', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.Voluptates quo eligendi dolore itaque provident temporibus praesentium obcaecati assumenda', 'java.jpg', 3500, '2018-05-24', 1),
(2, 'CrossPlatform Android and iOS', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.Voluptates quo eligendi dolore itaque provident temporibus praesentium obcaecati assumenda', 'cross.png', 6500, '2018-05-24', 1),
(3, 'Angular JS for beginner', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.Voluptates quo eligendi dolore itaque provident temporibus praesentium obcaecati assumenda', 'angular.jpg', 4000, '2018-05-24', 1),
(4, 'Apache Ant learning', 'Apache Ant is a Java library and command-line tool whose mission is to drive processes described in build files as targets and extension points dependent upon', 'apache.jpg', 2580, '2018-05-26', 1),
(5, 'Basic C++ Programmikng', 'C++ is a general-purpose programming language. It has imperative, object-oriented and generic programming features, while also providing facilities for low-level memory manipulation', 'cplus.jpg', 8500, '2018-05-26', 1),
(6, 'C# Programmig', 'C# is a multi-paradigm programming language encompassing strong typing, imperative, declarative, functional, generic, object-oriented, and component-oriented programming disciplines', 'csharp.jpg', 6500, '2018-05-26', 1),
(7, 'HTML 5 for beginner', '<p>HTML5 is a markup language used for structuring and presenting content on the World Wide Web. It is the fifth and current major version of the HTML standard</p>\r\n\r\n<p><img src=\"http://cdn.shopify.com/s/files/1/0672/0187/products/museforyou-html5video_grande.png?v=1501175056\"></p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Saepe perferendis minus impedit illo facilis officiis nulla, eum molestias adipisci, nam dolorum nobis amet, rem quo similique eaque deleniti. Libero, cum!</p>\r\n\r\n<h3>Service background</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Saepe perferendis minus impedit illo facilis officiis nulla, eum molestias adipisci, nam dolorum nobis amet, rem quo similique eaque deleniti. Libero, cum!</p>\r\n\r\n<p><img src=\"https://5.imimg.com/data5/XR/MV/MY-23623741/html5-css3-javascript-ajax-service-500x500.png\"></p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Saepe perferendis minus impedit illo facilis officiis nulla, eum molestias adipisci, nam dolorum nobis amet, rem quo similique eaque deleniti. Libero, cum!</p>', 'html5.jpg', 4850, '2018-05-26', 1),
(8, 'Basic Python for developr', 'Python is an interpreted high-level programming language for general-purpose programming. Created by Guido van Rossum and first released in 1991, Python has a design philosophy that emphasizes code readability, notably using significant whitespace', 'python.jpg', 2500, '2018-05-26', 1),
(9, 'Basic Pascal Programming', 'The pascal is the SI derived unit of pressure used to quantify internal pressure, stress, Young\'s modulus and ultimate tensile strength. It is defined as one newton per square metre. It is named after the French polymath Blaise Pascal', 'pascal.jpg', 4900, '2018-05-26', 1),
(10, 'Javascript for newbie', 'JavaScript, often abbreviated as JS, is a high-level, interpreted programming language. It is a language which is also characterized as dynamic, weakly typed, prototype-based and multi-paradigm', 'javascript.png', 5000, '2018-05-26', 1),
(11, 'Scratch for kid', 'Scratch is a visual programming language and online community targeted primarily at children. Using Scratch, users can create online projects and make them into anything by coding with simple blocks', 'scratch.jpg', 1500, '2018-05-26', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
