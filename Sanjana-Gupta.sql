-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2024 at 10:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Sanjana`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_url` text DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `image_url`, `content`) VALUES
(1, 'Circle', 'data:image/png;base64,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', 'A circle is a simple closed shape in Euclidean geometry. It is the set of all points in a plane that are at a given distance from a given point, the center.'),
(2, 'Square', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAG1BMVEX///8AAABZWVlUVFRXV1eBgYEcHBxbW1saGhqlxc9pAAABT0lEQVR4nO3VMY6DQBBEUS8Dxvc/sRNvTEkzqAjeO0Cpf9SvFwAAAAAAALDGMbZnG8dk4fh7ujFZuLUDLm0KFbYDLikMC9/n/jTne2nh7MwdFp32m5l9OncYCjMKixSGFBYpDCksUhhSWKQwpLBIYUhhkcKQwiKFIYVFCkMKixSGFBYpDCksUhhSWKQwpLBIYUhhkcKQwiKFIYVFCkMKixSGFBYpDCksUhhSWKQwpLBIYUhhkcKQwiKFIYVFCkMKixSGFBYpDCksUhhSWKQwpLBIYUhhkcKQwiKFIYVFCkMKixSGFBYpDCksUhhSWKQwpLBIYUhhkcKQwiKFIYVFCkMKixSGFBYpDCksUhhSWKQwpLBIYUhhkcKQwiKFIYVFawtnZ+6w6LTfzGcfT7N/lhY+mEKFCvtmC0c74NLsqz7289n2Y7IQAAAAAAAA+PcFDIMeYXGujWIAAAAASUVORK5CYII=', 'A square is a regular quadrilateral, which means that it has four equal sides and four equal angles (90-degree angles, or right angles).'),
(3, 'Triangle', 'data:image/png;base64,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', 'A triangle is a polygon with three edges and three vertices. It is one of the basic shapes in geometry. A triangle with vertices A, B, and C is denoted as ∆ABC.');
-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `header_background_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `header_background_image`) VALUES
(1, 'https://th.bing.com/th/id/R.3a9f0210ff7d1e83039ff237c81bacae?rik=asArcL6qvWfZfA&amp;riu=http%3a%2f%2fs1.picswalls.com%2fwallpapers%2f2016%2f03%2f29%2fbeautiful-nature-high-definition_042323787_304.jpg&amp;ehk=8tO7UxFL%2bC03x6vfc2O9EhdUCe4fl6tC7UGUdlnpdX4%3d&amp;risl=&amp;pid=ImgRaw&amp;r=0');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `submission_date`) VALUES
(1, 'Yusuf', 'yusuf@gmail.com', 'This is a feedback', '2024-02-13 02:40:15'),
(2, 'test', 'test@gmail.com', 'this is a test message', '2024-02-13 03:56:38'),
(3, 'sawdfeghjklo;p', 'asdfgh@gfhjbk.com', 'fchvgjknm', '2024-03-22 16:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `our_story`
--

CREATE TABLE `our_story` (
  `id` int(11) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `our_story`
--

INSERT INTO `our_story` (`id`, `content`) VALUES
(1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aspernatur nisi qui ipsa nesciunt, non ipsam impedit magni possimus earum ab, praesentium molestias. Tenetur iusto a culpa corporis explicabo quia consequatur blanditiis ducimus. Excepturi, optio debitis minima nam odit veritatis numquam a, possimus recusandae cumque magnam modi');

-- --------------------------------------------------------

--
-- Table structure for table `our_team`
--

CREATE TABLE `our_team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `our_team`
--

INSERT INTO `our_team` (`id`, `name`, `position`) VALUES
(1, 'Yusuf', 'Founder'),
(2, 'John', 'Content Writer'),
(3, 'Cindy', 'Content Moderator');

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `video_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `title`, `description`, `video_url`) VALUES
(1, 'How To Build A Website in 2026', 'Description', '<iframe width=\"1007\" height=\"566\" src=\"https://www.youtube.com/embed/acBJsjCqgtM\" title=\"How To Build A Website in 2024\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(2, 'How to Make a Website in 10 mins - Simple & Easy', 'Description 2', '<iframe width=\"1007\" height=\"566\" src=\"https://www.youtube.com/embed/YWA-xbsJrVg\" title=\"How to Make a Website in 10 mins - Simple &amp; Easy\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(4, 'This is a demo title', 'This is a demo description', '<iframe width=\"1007\" height=\"566\" src=\"https://www.youtube.com/embed/HSq5wntbkck\" title=\"How to Make an App [in 2023]\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(8, 'title edit', 'hello', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_story`
--
ALTER TABLE `our_story`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_team`
--
ALTER TABLE `our_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `our_story`
--
ALTER TABLE `our_story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `our_team`
--
ALTER TABLE `our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
