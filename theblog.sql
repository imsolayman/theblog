-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2019 at 06:38 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `list_category`
--

CREATE TABLE `list_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_category`
--

INSERT INTO `list_category` (`id`, `name`) VALUES
(1, 'wordpress'),
(2, 'self development');

-- --------------------------------------------------------

--
-- Table structure for table `list_posts`
--

CREATE TABLE `list_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_posts`
--

INSERT INTO `list_posts` (`id`, `title`, `description`, `category`, `image`, `tags`, `author`, `userid`, `created_at`) VALUES
(1, 'Diversity in Engineering: The Effect on Questions', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, '', 'wordpress, website, freelancing', 1, 1, '2019-01-04 18:01:02'),
(2, 'Alberto Savoia Can Teach You About Interior', 'div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium\r\n\r\n    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n    Someone famous in Source Title\r\n\r\nquasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.\r\n\r\ndiv Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium\r\n\r\n    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n    Someone famous in Source Title\r\n\r\nquasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.', 2, '', 'life, development, health', 2, 2, '2019-01-04 18:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `list_subscribe`
--

CREATE TABLE `list_subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_subscribe`
--

INSERT INTO `list_subscribe` (`id`, `email`) VALUES
(1, 'demo@mail.com'),
(2, 'demo2@gmail.com'),
(3, 'demo3@mail.com'),
(4, 'demo4@mail.com'),
(5, 'demo5@mail.com'),
(6, 'demo4@emaol.com'),
(7, 'nabil@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `list_user`
--

CREATE TABLE `list_user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birth` date NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_user`
--

INSERT INTO `list_user` (`id`, `firstname`, `lastname`, `username`, `photo`, `email`, `details`, `password`, `birth`, `role`, `created_at`) VALUES
(1, 'Solayman', 'Hossain', 'solaymanict', '', 'solaymanict@gmail.com', 'This is Solayman Hossain, a professional web developer. ', '', '1995-08-16', 1, '2019-01-04 17:56:53'),
(2, 'Nabil', 'Chowdhury', 'nabil1', '', 'nabil@gmail.com', 'This is Mr Nabil', '', '2019-01-09', 1, '2019-01-04 17:58:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list_category`
--
ALTER TABLE `list_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_posts`
--
ALTER TABLE `list_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `author` (`author`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `list_subscribe`
--
ALTER TABLE `list_subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_user`
--
ALTER TABLE `list_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list_category`
--
ALTER TABLE `list_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `list_posts`
--
ALTER TABLE `list_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `list_subscribe`
--
ALTER TABLE `list_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `list_user`
--
ALTER TABLE `list_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `list_posts`
--
ALTER TABLE `list_posts`
  ADD CONSTRAINT `list_posts_ibfk_1` FOREIGN KEY (`category`) REFERENCES `list_category` (`id`),
  ADD CONSTRAINT `list_posts_ibfk_2` FOREIGN KEY (`author`) REFERENCES `list_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
