-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 15, 2019 at 03:42 PM
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
(2, 'lifestyle'),
(3, 'marketing'),
(4, 'mobile');

-- --------------------------------------------------------

--
-- Table structure for table `list_comment`
--

CREATE TABLE `list_comment` (
  `id` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `ip` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_comment`
--

INSERT INTO `list_comment` (`id`, `post`, `name`, `email`, `comment`, `ip`, `status`, `created_at`) VALUES
(1, 6, 'Jhon doe', 'jhon@mail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy t', '', 0, '2019-01-06 06:29:23'),
(2, 6, 'Tahsin Alam', 'tah@gmaio.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy t', '', 1, '2019-01-06 06:30:35'),
(3, 1, 'Solayman Hossain', 'moshir@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy t', '', 1, '2019-01-06 08:01:33'),
(4, 6, 'Arif Rahman', 'arfi@mailc.om', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy t', '', 1, '2019-01-06 08:05:40'),
(5, 5, 'Fahad Masud', 'alim@mail.com', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard &lt;a href=&quot;#&quot;&gt;dummy&lt;/a&gt; tafsd&lt;/p&gt;', '', 1, '2019-01-06 08:07:47'),
(6, 1, 'Moh sm', 'mail@ma.co', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard <a href=\"#\">dummy</a> tafsd</p>', '', 1, '2019-01-06 08:29:06'),
(7, 6, 'My name', 'alim@mail.com', 'gsdfa', '', 0, '2019-01-06 08:31:41'),
(8, 2, 'Abdul Alim', 'alim@mail.com', 'Hey, this is a free blog comment <a href=\"http://theblog.test/post.php?id=2\" target=\"_blank\">My link here</a>', '', 1, '2019-01-11 10:43:53'),
(12, 6, 'Nabil Islam', 'nah@md.c', 'Thi is nabil', '127.0.0.1', 1, '2019-01-15 12:41:47'),
(13, 10, 'Riyad Hossain', 'riyad@mail.com', 'Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.', '127.0.0.1', 1, '2019-01-15 13:24:38'),
(14, 9, 'Nabil Chowdhury', 'nabil@mail.com', 'Hello Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.', '127.0.0.1', 1, '2019-01-15 13:26:04');

-- --------------------------------------------------------

--
-- Table structure for table `list_contact`
--

CREATE TABLE `list_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_contact`
--

INSERT INTO `list_contact` (`id`, `name`, `email`, `subject`, `description`, `status`, `created_at`) VALUES
(1, 'Solayman Hossain', 'solaymanict@gmail.com', 'Test Mail', 'Lorem Ipsum ha sido el texto de relleno estÃ¡ndar de las industrias desde el aÃ±o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usÃ³ una galerÃ­a de textos y los mezclÃ³ de tal manera que logrÃ³ hacer un libro de textos especimen. No sÃ³lo sobreviviÃ³ 500 aÃ±os, sino que tambien ingresÃ³ como texto de relleno en documentos electrÃ³nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaciÃ³n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y mÃ¡s recientemente con software de autoediciÃ³n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 1, '2019-01-05 17:34:46'),
(2, 'Nabil Chowdhury', 'nail@mgila.com', 'Nabil query', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2019-01-05 17:37:50'),
(3, 'Abdu;', 'alim@mail.com', 'Alim\'s mail', 'He is a jklaf eed', 1, '2019-01-06 05:09:20'),
(4, 'fsa', 'fds', 'fsdf', 'dsaf', 1, '2019-01-06 05:09:41'),
(5, 'Abdul', 'halim@gmailc.om', 'You suybeje', 'Je akdsfj kl afsd', 1, '2019-01-06 05:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `list_customize`
--

CREATE TABLE `list_customize` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `textlogo` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_customize`
--

INSERT INTO `list_customize` (`id`, `title`, `tagline`, `url`, `logo`, `textlogo`, `address`, `phone`, `email`, `copyright`, `status`, `updated_at`) VALUES
(1, 'Ezeblog', 'Simple Dynamic Blog Template', 'http://theblog.test', 'upload/logo.png', 'Bootstrap Blog', '53 Broadway, Broklyn, NY 11249', 'Phone: (+88) 01650 604 060', 'Email: Info@mycompany.com', '2019. All rights reserved. Your great site.', 1, '2019-01-15 15:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `list_footermenu`
--

CREATE TABLE `list_footermenu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_footermenu`
--

INSERT INTO `list_footermenu` (`id`, `title`, `link`) VALUES
(1, 'My Account', 'http://theblog.test/admin/'),
(3, 'Add Listing', '#'),
(6, 'Pricing', '#'),
(10, 'Privacy &amp; Policy', '#'),
(12, 'Our Partners', '#'),
(13, 'FAQ', '#'),
(14, 'How it works', '#'),
(15, 'Contact', '#');

-- --------------------------------------------------------

--
-- Table structure for table `list_mainmenu`
--

CREATE TABLE `list_mainmenu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_mainmenu`
--

INSERT INTO `list_mainmenu` (`id`, `title`, `link`, `parent_id`) VALUES
(5, 'Home', 'http://theblog.test/index.php', 0),
(7, 'WordPress', 'http://theblog.test/category.php?category=1', 0),
(8, 'Lifestyle', 'http://theblog.test/category.php?category=2', 0),
(14, 'Marketing', 'http://theblog.test/category.php?category=3', 0),
(18, 'Blog', 'http://theblog.test/blog.php', 0),
(19, 'Contact', 'http://theblog.test/contact.php', 0);

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
  `metatitle` varchar(255) NOT NULL,
  `metadescription` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_posts`
--

INSERT INTO `list_posts` (`id`, `title`, `description`, `category`, `image`, `tags`, `metatitle`, `metadescription`, `author`, `created_at`) VALUES
(1, 'Diversity in Engineering: The Effect on ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <h3>Lorem Ipsum Dolor</h3>\r\n                  <p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium</p>\r\n                  <blockquote class=\"blockquote\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\r\n                    <footer class=\"blockquote-footer\">Someone famous in\r\n                      <cite title=\"Source Title\">Source Title</cite>\r\n                    </footer>\r\n                  </blockquote>\r\n                  <p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>', 1, 'upload/post/0f97bf1f38.jpg', 'wordpress', 'Diversity in Engineering: The Effect on ', 'Diversity in Engineering: The Effect on ', 1, '2019-01-04 18:01:02'),
(2, 'Alberto Savoia Can Teach You About Interior', '<p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium\r\n\r\n    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n    Someone famous in Source Title\r\n\r\nquasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.\r\n\r\ndiv Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium\r\n\r\n    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n    Someone famous in Source Title</p>\r\n\r\n<p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>', 3, 'upload/post/254802f7da.jpg', 'life', 'Diversity in Engineering: The Effect on ', 'Diversity in Engineering: The Effect on ', 1, '2019-01-04 18:02:05'),
(4, 'Readable content of a page when looking at its layout', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. \r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All</p><p> the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 2, 'upload/post/a7382797d2.jpeg', 'lifestyle', '', '', 1, '2019-01-05 08:28:54'),
(5, 'De usar Lorem Ipsum es que tiene una distribuci', '<p>Mr korim ali Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <h3>Lorem Ipsum Dolor</h3>\r\n                  <p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium</p>\r\n                  <blockquote class=\"blockquote\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\r\n                    <footer class=\"blockquote-footer\">Someone famous in\r\n                      <cite title=\"Source Title\">Source Title</cite>\r\n                    </footer>\r\n                  </blockquote>\r\n                  <p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>', 2, 'upload/post/e42012829c.jpg', 'blog', '', '', 1, '2019-01-05 08:46:26'),
(6, 'Dcomo por ejemplo Aldus PageMaker, el cual incluye', '<p>Lorem Ipsum ha sido el texto de relleno estï¿½ndar de las  nabil besi buje industrias desde el aï¿½o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usï¿½ una galerï¿½a de textos y los mezclï¿½ de tal manera que logrï¿½ hacer un libro de textos especimen. No sï¿½lo sobreviviï¿½ 500 aï¿½os, sino que tambien ingresï¿½ como texto de relleno en documentos electrï¿½nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaciï¿½n de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y mï¿½s recientemente con software de autoediciï¿½n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. \r\nLorem Ipsum ha sido el texto de relleno estï¿½ndar de las industrias desde el aï¿½o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usï¿½ una galerï¿½a de textos y los mezclï¿½ de tal manera que logrï¿½ hacer </p><p>un libro de textos especimen. No sï¿½lo sobreviviï¿½ 500 aï¿½os, sino que tambien ingresï¿½ como texto de relleno en documentos electrï¿½nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaciï¿½n de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y mï¿½s recientemente con software de autoediciï¿½n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>', 1, 'upload/post/114bd45ec0.jpeg', 'php', 'Diversity in Engineering: The Effect on ', 'Diversity in Engineering: The Effect on ', 1, '2019-01-05 08:47:24'),
(8, 'When I was developing blog themes, I found it useful', '<p><strong><span class=\"dropcaps\" style=\"color:#418CD1\"> L </span>orem Ipsum</strong>Â is\r\n simply dummy text of the printing and typesetting industry. Lorem Ipsum\r\n has been the industryâ€™s standard dummy text ever since the 1500s, when \r\nan unknown printer took a galley of type and scrambled it to make a type\r\n specimen book. It has survived not only five centuries, but also the \r\nleap into electronic typesetting, remaining essentially unchanged. It \r\nwas popularised in the 1960s with the release of Letraset sheets \r\ncontaining Lorem Ipsum passages, and more recently with desktop \r\npublishing software like Aldus PageMaker including versions of Lorem \r\nIpsum.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which donâ€™t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisnâ€™t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.</p>\r\n<h1>H1 Font Title</h1>\r\n<h2>H2 Font Title</h2>\r\n<h3>H3 Font Title</h3>', 1, 'upload/post/9a12f8f96d.jpg', 'dummy', 'This is a dummy post for testing', 'This is a dummy post for testing', 2, '2019-01-14 18:26:27'),
(9, 'Diversity in Engineering: The Effect on ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <h3>Lorem Ipsum Dolor</h3>\r\n                  <p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium</p>\r\n                  <blockquote class=\"blockquote\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\r\n                    <footer class=\"blockquote-footer\">Someone famous in\r\n                      <cite title=\"Source Title\">Source Title</cite>\r\n                    </footer>\r\n                  </blockquote>\r\n                  <p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>', 1, 'upload/post/eac836defb.jpg', 'wordpress', 'Diversity in Engineering: The Effect on ', 'Diversity in Engineering: The Effect on ', 1, '2019-01-14 18:49:37'),
(10, 'Java Post Title will goes here', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><br></p><p><strong><a href=\"http://li-med.com/dummy-post/\" target=\"_blank\">Lorem Ipsum</a></strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><br></p>', 4, 'upload/post/20baad0b40.jpg', 'java', '', '', 2, '2019-01-14 19:15:25'),
(11, 'When I was developing blog themes', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do \r\neiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad \r\nminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip \r\nex ea commodo consequat.</p>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing\r\n elit, sed do eiusmod tempor incididunt ut labore et dolore magna \r\naliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco \r\nlaboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <h3>Lorem Ipsum Dolor</h3>\r\n                  <p>div Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Assumenda temporibus iusto voluptates deleniti \r\nsimilique rerum ducimus sint ex odio saepe. Sapiente quae pariatur \r\nratione quis perspiciatis deleniti accusantium</p>\r\n                  <blockquote class=\"blockquote\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip.</p>\r\n                    <footer class=\"blockquote-footer\">Someone famous in\r\n                      <cite title=\"Source Title\">Source Title</cite>\r\n                    </footer>\r\n                  </blockquote>\r\n                  <p>quasi nam. Libero dicta eum recusandae, commodi, \r\nad, autem at ea iusto numquam veritatis, officiis. Accusantium optio \r\nminus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit\r\n iusto ullam voluptas neque soluta adipisci ad.</p>', 1, 'upload/post/f533889c11.jpg', 'wordpress', '', '', 1, '2019-01-14 19:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `list_social`
--

CREATE TABLE `list_social` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_social`
--

INSERT INTO `list_social` (`id`, `facebook`, `twitter`, `instagram`, `skype`, `linkedin`, `youtube`) VALUES
(1, 'https://www.facebook.com/company', 'https://www.twitter.com/company', 'https://www.instagram.com/company', 'live:company', 'https://www.linkedin.com/company', 'https://www.youtube.com/channel/company');

-- --------------------------------------------------------

--
-- Table structure for table `list_subscribe`
--

CREATE TABLE `list_subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_subscribe`
--

INSERT INTO `list_subscribe` (`id`, `email`, `status`, `created_at`) VALUES
(1, 'demo@mail.com', 1, '2019-01-14 08:19:11'),
(2, 'demo2@gmail.com', 1, '2019-01-14 08:19:11'),
(3, 'demo3@mail.com', 1, '2019-01-14 08:19:11'),
(4, 'demo4@mail.com', 1, '2019-01-14 08:19:11'),
(5, 'demo5@mail.com', 0, '2019-01-14 08:19:11'),
(6, 'demo4@emaol.com', 0, '2019-01-14 08:19:11'),
(7, 'nabil@mail.com', 0, '2019-01-14 08:19:11'),
(8, 'alim@mail.com', 1, '2019-01-14 08:19:11'),
(9, 'admin@mail.com', 1, '2019-01-14 09:08:14'),
(10, 'admin@gmail.com', 0, '2019-01-14 09:08:21'),
(11, 'solaymanict@gmail.com', 1, '2019-01-14 09:09:05'),
(12, 'alim365@gmail.com', 1, '2019-01-14 09:50:44'),
(13, 'mhosin@mail.com', 1, '2019-01-14 09:52:46'),
(14, 'huda@man.com', 1, '2019-01-14 09:52:59'),
(15, 'syeda@mail.com', 1, '2019-01-14 09:53:08'),
(16, 'subscribe@huda.com', 1, '2019-01-14 09:55:25'),
(17, 'subscribe@huda.com', 1, '2019-01-14 11:14:50'),
(18, 'name@sub.com', 1, '2019-01-15 12:30:54');

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
(1, 'Solayman', 'Hossain', 'solaymanict', '', 'admin@mail.com', 'This is Solayman Hossain, a professional web developer. ', 'e10adc3949ba59abbe56e057f20f883e', '1995-08-16', 1, '2019-01-04 17:56:53'),
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
-- Indexes for table `list_comment`
--
ALTER TABLE `list_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post` (`post`);

--
-- Indexes for table `list_contact`
--
ALTER TABLE `list_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_customize`
--
ALTER TABLE `list_customize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_footermenu`
--
ALTER TABLE `list_footermenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_mainmenu`
--
ALTER TABLE `list_mainmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_posts`
--
ALTER TABLE `list_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `author` (`author`);

--
-- Indexes for table `list_social`
--
ALTER TABLE `list_social`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `list_comment`
--
ALTER TABLE `list_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `list_contact`
--
ALTER TABLE `list_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `list_customize`
--
ALTER TABLE `list_customize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `list_footermenu`
--
ALTER TABLE `list_footermenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `list_mainmenu`
--
ALTER TABLE `list_mainmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `list_posts`
--
ALTER TABLE `list_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `list_social`
--
ALTER TABLE `list_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `list_subscribe`
--
ALTER TABLE `list_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `list_user`
--
ALTER TABLE `list_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `list_comment`
--
ALTER TABLE `list_comment`
  ADD CONSTRAINT `list_comment_ibfk_1` FOREIGN KEY (`post`) REFERENCES `list_posts` (`id`);

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
