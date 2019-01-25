-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 25, 2019 at 07:53 PM
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
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_category`
--

INSERT INTO `list_category` (`id`, `name`, `slug`) VALUES
(1, 'wordpress', 'wordpress'),
(2, 'lifestyle', 'lifestyle'),
(3, 'marketing', 'marketing'),
(4, 'computer', 'computer');

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
(14, 9, 'Nabil Chowdhury', 'nabil@mail.com', 'Hello Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.', '127.0.0.1', 1, '2019-01-15 13:26:04'),
(15, 1, 'Fahim Ahmed', 'fahim@mail.com', 'hjfkadshj ljkafl', '127.0.0.1', 1, '2019-01-16 17:01:18'),
(16, 6, 'Abdul ALim', 'abdul@mail.com', 'ajfskhjkahf asdf ', '127.0.0.1', 0, '2019-01-17 05:41:14'),
(17, 12, 'Fahad Masud', 'fahad@mail.com', 'ajhfasdjkh afsdkljfhasjkd', '127.0.0.1', 1, '2019-01-17 06:27:59');

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
(1, 'Solayman Hossain', 'solaymanict@gmail.com', 'Test Mail', 'Lorem Ipsum ha sido el texto de relleno estÃ¡ndar de las industrias desde el aÃ±o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usÃ³ una galerÃ­a de textos y los mezclÃ³ de tal manera que logrÃ³ hacer un libro de textos especimen. No sÃ³lo sobreviviÃ³ 500 aÃ±os, sino que tambien ingresÃ³ como texto de relleno en documentos electrÃ³nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaciÃ³n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y mÃ¡s recientemente con software de autoediciÃ³n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 0, '2019-01-05 17:34:46'),
(2, 'Nabil Chowdhury', 'nail@mgila.com', 'Nabil query', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, '2019-01-05 17:37:50'),
(3, 'Abdu;', 'alim@mail.com', 'Alim\'s mail', 'He is a jklaf eed', 0, '2019-01-06 05:09:20'),
(5, 'Abdul', 'halim@gmailc.om', 'You suybeje', 'Je akdsfj kl afsd', 0, '2019-01-06 05:13:24'),
(6, 'Fahim Ahmed', 'fahim@mail.com', 'Faim New Info', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy tLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy t', 1, '2019-01-16 18:29:53'),
(7, 'Moshiur Reza', 'reza@mail.com', 'New Youtube Information', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, '2019-01-16 19:48:38'),
(8, 'Nabil Chowdhury', 'nabil@email.com', 'Faim New Info', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, '2019-01-16 19:49:57'),
(9, 'Solayman HossIN', 'solayman@mail.com', 'New Youtube Information', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, '2019-01-16 19:51:20'),
(10, 'Abdul Alim', 'alim@mail.com', 'This is a test mail', 'Hello, tWant to get in touch? Fill out the form below to send me a message and I will get back to you as soon as possible!', 0, '2019-01-17 05:43:44'),
(11, 'Rejuan Talukdar', 'admin@mail.com', 'My Youtube Information', 'For many people, consuming too much sodium may contribute to high blood pressure, which is a risk factor for heart disease, stroke, and other cardiovascular issues, and it may lead to fluid retention and bloating. If you\'re sensitive to sodium, decreasing the amount of added salt and ingredients that contain sodium that you consume may help keep your blood pressure at a healthier level.', 1, '2019-01-18 16:38:26');

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
(1, 'Ezeblog', 'Simple Dynamic Blog Template', 'http://theblog.test', 'upload/logo.png', 'Bootstrap Blog', '53 Broadway, Broklyn, NY 11249', 'Phone: (+88) 01650 604 060', 'Email: Info@mycompany.com', '2019. All rights reserved. Your great site.', 1, '2019-01-17 06:04:30');

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
  `metatitle` varchar(255) DEFAULT NULL,
  `metadescription` varchar(255) DEFAULT NULL,
  `metakeywords` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_posts`
--

INSERT INTO `list_posts` (`id`, `title`, `description`, `category`, `image`, `tags`, `metatitle`, `metadescription`, `metakeywords`, `slug`, `author`, `created_at`) VALUES
(1, 'Diversity in Engineering: The Effect on ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <h3>Lorem Ipsum Dolor</h3>\r\n                  <p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium</p>\r\n                  <blockquote class=\"blockquote\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\r\n                    <footer class=\"blockquote-footer\">Someone famous in\r\n                      <cite title=\"Source Title\">Source Title</cite>\r\n                    </footer>\r\n                  </blockquote>\r\n                  <p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>', 1, 'upload/post/0f97bf1f38.jpg', 'wordpress', 'Diversity in Engineering: The Effect on ', 'Diversity in Engineering: The Effect on ', '', 'diversity-in-engineering-the-effect-on', 1, '2019-01-04 18:01:02'),
(2, 'Alberto Savoia Can Teach You About Interior', '<p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium\r\n\r\n    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n    Someone famous in Source Title\r\n\r\nquasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.\r\n\r\ndiv Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium\r\n\r\n    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n    Someone famous in Source Title</p>\r\n\r\n<p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>', 3, 'upload/post/254802f7da.jpg', 'life', 'Diversity in Engineering: The Effect on ', 'Diversity in Engineering: The Effect on ', '', 'alberto-savoia-can-teach-you-about-interior', 1, '2019-01-04 18:02:05'),
(4, 'Readable content of a page when looking at its layout', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. \r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All</p><p> the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 2, 'upload/post/a7382797d2.jpeg', 'lifestyle', '', '', '', 'readable-content-of-a-page-when-looking-at-its-layout', 1, '2019-01-05 08:28:54'),
(5, 'De usar Lorem Ipsum es que tiene una distribuci', '<p>Mr korim ali Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <h3>Lorem Ipsum Dolor</h3>\r\n                  <p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium</p>\r\n                  <blockquote class=\"blockquote\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\r\n                    <footer class=\"blockquote-footer\">Someone famous in\r\n                      <cite title=\"Source Title\">Source Title</cite>\r\n                    </footer>\r\n                  </blockquote>\r\n                  <p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>', 2, 'upload/post/e42012829c.jpg', 'blog', '', '', '', 'de-usar-lorem-ipsum-es-que-tiene-una-distribuci', 1, '2019-01-05 08:46:26'),
(6, 'Dcomo por ejemplo Aldus PageMaker, el cual incluye', '<p>Lorem Ipsum ha sido el texto de relleno estï¿½ndar de las  nabil besi buje industrias desde el aï¿½o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usï¿½ una galerï¿½a de textos y los mezclï¿½ de tal manera que logrï¿½ hacer un libro de textos especimen. No sï¿½lo sobreviviï¿½ 500 aï¿½os, sino que tambien ingresï¿½ como texto de relleno en documentos electrï¿½nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaciï¿½n de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y mï¿½s recientemente con software de autoediciï¿½n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. \r\nLorem Ipsum ha sido el texto de relleno estï¿½ndar de las industrias desde el aï¿½o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usï¿½ una galerï¿½a de textos y los mezclï¿½ de tal manera que logrï¿½ hacer </p><p>un libro de textos especimen. No sï¿½lo sobreviviï¿½ 500 aï¿½os, sino que tambien ingresï¿½ como texto de relleno en documentos electrï¿½nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaciï¿½n de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y mï¿½s recientemente con software de autoediciï¿½n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>', 1, 'upload/post/114bd45ec0.jpeg', 'php', 'Diversity in Engineering: The Effect on ', 'Diversity in Engineering: The Effect on ', '', 'dcomo-por-ejemplo-aldus-pagemaker-el-cual-incluye', 1, '2019-01-05 08:47:24'),
(8, 'When I was developing blog themes, I found it useful', '<p><strong><span class=\"dropcaps\" style=\"color:#418CD1\"> L </span>orem Ipsum</strong>Â is\r\n simply dummy text of the printing and typesetting industry. Lorem Ipsum\r\n has been the industryâ€™s standard dummy text ever since the 1500s, when \r\nan unknown printer took a galley of type and scrambled it to make a type\r\n specimen book. It has survived not only five centuries, but also the \r\nleap into electronic typesetting, remaining essentially unchanged. It \r\nwas popularised in the 1960s with the release of Letraset sheets \r\ncontaining Lorem Ipsum passages, and more recently with desktop \r\npublishing software like Aldus PageMaker including versions of Lorem \r\nIpsum.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which donâ€™t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisnâ€™t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.</p>\r\n<h1>H1 Font Title</h1>\r\n<h2>H2 Font Title</h2>\r\n<h3>H3 Font Title</h3>', 1, 'upload/post/9a12f8f96d.jpg', 'dummy', 'This is a dummy post for testing', 'This is a dummy post for testing', '', 'when-i-was-developing-blog-themes-i-found-it-useful', 1, '2019-01-14 18:26:27'),
(9, 'Diversity in Engineering', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <h3>Lorem Ipsum Dolor</h3>\r\n                  <p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium</p>\r\n                  <blockquote class=\"blockquote\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\r\n                    <footer class=\"blockquote-footer\">Someone famous in\r\n                      <cite title=\"Source Title\">Source Title</cite>\r\n                    </footer>\r\n                  </blockquote>\r\n                  <p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>', 1, 'upload/post/eac836defb.jpg', 'wordpress', 'Diversity in Engineering: The Effect on ', 'Diversity in Engineering: The Effect on ', '', 'diversity-in-engineering', 1, '2019-01-14 18:49:37'),
(10, 'Java Post Title will goes here', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><br></p><p><strong><a href=\"http://li-med.com/dummy-post/\" target=\"_blank\">Lorem Ipsum</a></strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><br></p>', 4, 'upload/post/20baad0b40.jpg', 'java', '', '', '', 'java-post-title-will-goes-here', 1, '2019-01-14 19:15:25'),
(11, 'When I was developing blog themes', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do \r\neiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad \r\nminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip \r\nex ea commodo consequat.</p>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing\r\n elit, sed do eiusmod tempor incididunt ut labore et dolore magna \r\naliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco \r\nlaboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <h3>Lorem Ipsum Dolor</h3>\r\n                  <p>div Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Assumenda temporibus iusto voluptates deleniti \r\nsimilique rerum ducimus sint ex odio saepe. Sapiente quae pariatur \r\nratione quis perspiciatis deleniti accusantium</p>\r\n                  <blockquote class=\"blockquote\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip.</p>\r\n                    <footer class=\"blockquote-footer\">Someone famous in\r\n                      <cite title=\"Source Title\">Source Title</cite>\r\n                    </footer>\r\n                  </blockquote>\r\n                  <p>quasi nam. Libero dicta eum recusandae, commodi, \r\nad, autem at ea iusto numquam veritatis, officiis. Accusantium optio \r\nminus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit\r\n iusto ullam voluptas neque soluta adipisci ad.</p>', 1, 'upload/post/f533889c11.jpg', 'wordpress', '', '', '', 'when-i-was-developing-blog-themes', 1, '2019-01-14 19:16:19'),
(12, 'This time I was develop now for', '<p>In this tutorial I will show you how to make seo friendly or clean url in PHP programming language using apache .htaccess file. Semantic Url is one of the required things for Content Marketing. With the help of pretty url our website content will be Indexed on different search engine very fast. Clean Url is one part of Search Engine Optimization. SEO Friendly UrlÂ  will increase our ranking on different search engine. With the help of this clean slug our presence on search engine will increase. So, How to gain this feature for our ecommerce website, these all things are learn in this video. I think you will learn this things from this video. </p><p>In this tutorial I will show you how to make seo friendly or clean url in PHP programming language using apache .htaccess file. Semantic Url is one of the required things for Content Marketing. With the help of pretty url our website content will be Indexed on different search engine very fast. Clean Url is one part of Search Engine Optimization. SEO Friendly UrlÂ  will increase our ranking on different search engine. With the help of this clean slug our presence on search engine will increase. So, How to gain this feature for our ecommerce website, these all things are learn in this video. I think you will learn this things from this video.</p><p>In this tutorial I will show you how to make seo friendly or clean url in PHP programming language using apache .htaccess file. Semantic Url is one of the required things for Content Marketing. With the help of pretty url our website content will be Indexed on different search engine very fast. Clean Url is one part of Search Engine Optimization. SEO Friendly UrlÂ  will increase our ranking on different search engine. With the help of this clean slug our presence on search engine will increase. So, How to gain this feature for our ecommerce website, these all things are learn in this video. I think you will learn this things from this video.<br></p>', 2, 'upload/post/637d301029.jpg', 'slug', 'This time I was developing blog themes, I found it useful', 'This time I was developing blog themes, I found it useful', 'userful, mylife', 'this-time-i-was-develop-now-for', 1, '2019-01-15 16:32:13'),
(17, ' Clean Url is one part of Search Engine Optimization', '<p>In this tutorial I will show you how to make seo friendly or clean \r\nurl in PHP programming language using apache .htaccess file. Semantic \r\nUrl is one of the required things for Content Marketing. With the help \r\nof pretty url our website content will be Indexed on different search \r\nengine very fast. Clean Url is one part of Search Engine Optimization. \r\nSEO Friendly Url&nbsp; will increase our ranking on different search engine. \r\nWith the help of this clean slug our presence on search engine will \r\nincrease. So, How to gain this feature for our ecommerce website, these \r\nall things are learn in this video. I think you will learn this things \r\nfrom this video. </p><p>In this tutorial I will show you how to make seo\r\n friendly or clean url in PHP programming language using apache \r\n.htaccess file. Semantic Url is one of the required things for Content \r\nMarketing. With the help of pretty url our website content will be \r\nIndexed on different search engine very fast. Clean Url is one part of \r\nSearch Engine Optimization. SEO Friendly Url&nbsp; will increase our ranking \r\non different search engine. With the help of this clean slug our \r\npresence on search engine will increase. So, How to gain this feature \r\nfor our ecommerce website, these all things are learn in this video. I \r\nthink you will learn this things from this video.</p>In this tutorial\r\n I will show you how to make seo friendly or clean url in PHP \r\nprogramming language using apache .htaccess file. Semantic Url is one of\r\n the required things for Content Marketing. With the help of pretty url \r\nour website content will be Indexed on different search engine very \r\nfast. Clean Url is one part of Search Engine Optimization. SEO Friendly \r\nUrl&nbsp; will increase our ranking on different search engine. With the help\r\n of this clean slug our presence on search engine will increase. So, How\r\n to gain this feature for our ecommerce website, these all things are \r\nlearn in this video. I think you will learn this things from this video.', 4, 'upload/post/a6ee8be4d5.jpg', 'main', ' Clean Url is one part of Search Engine Optimization', ' Clean Url is one part of Search Engine Optimization', ' Clean Url is one part of Search Engine Optimization', 'clean-url-is-one-part-of-search-engine-optimization', 1, '2019-01-20 13:29:16'),
(18, 'Diversity in Engineering how', '<p>In this tutorial I will show you how to make seo friendly or clean \r\nurl in PHP programming language using apache .htaccess file. Semantic \r\nUrl is one of the required things for Content Marketing. With the help \r\nof pretty url our website content will be Indexed on different search \r\nengine very fast. Clean Url is one part of Search Engine Optimization. \r\nSEO Friendly UrlÂ  will increase our ranking on different search engine. \r\nWith the help of this clean slug our presence on search engine will \r\nincrease. So, How to gain this feature for our ecommerce website, these \r\nall things are learn in this video. I think you will learn this things \r\nfrom this video. </p><p>In this tutorial I will show you how to make seo\r\n friendly or clean url in PHP programming language using apache \r\n.htaccess file. Semantic Url is one of the required things for Content \r\nMarketing. With the help of pretty url our website content will be \r\nIndexed on different search engine very fast. Clean Url is one part of \r\nSearch Engine Optimization. SEO Friendly UrlÂ  will increase our ranking \r\non different search engine. With the help of this clean slug our \r\npresence on search engine will increase. So, How to gain this feature \r\nfor our ecommerce website, these all things are learn in this video. I \r\nthink you will learn this things from this video.</p>In this tutorial\r\n I will show you how to make seo friendly or clean url in PHP \r\nprogramming language using apache .htaccess file. Semantic Url is one of\r\n the required things for Content Marketing. With the help of pretty url \r\nour website content will be Indexed on different search engine very \r\nfast. Clean Url is one part of Search Engine Optimization. SEO Friendly \r\nUrlÂ  will increase our ranking on different search engine. With the help\r\n of this clean slug our presence on search engine will increase. So, How\r\n to gain this feature for our ecommerce website, these all things are \r\nlearn in this video. I think you will learn this things from this video.', 2, 'upload/post/4a7ba0ca18.jpg', 'main', 'Diversity in Engineering how', 'Diversity in Engineering how', 'diverse', 'diversity-in-engineering-how', 1, '2019-01-20 13:29:57'),
(19, 'A lot of focus is put on pool safety for children', '<p>You may be a strong swimmer, but you should still never swim alone. If something unexpected happens, you want someone else with you to notice and get the necessary help. Always swim with a buddy.<br><br>Keep an Eye on Electrical Cords<br><br>Listening to music while swimming makes it more fun. Verify that the electric cords of your sound system are not going through water on the pool deck. You don\'t want to be electrocuted when you get out of the water. Cord safety is important around pools.<br><br>Avoid Alcohol<br><br>The risk of injury and drowning increases with alcohol consumption. It is not safe to swim after drinking in excess. If you plan on swimming, avoid drinking until after you get out of the water. Keep friends and family that have been drinking away from the pool as well.<br><br>Don\'t Dive in Shallow Water<br><br>If your pool is less than nine feet deep, you should have a strict no-diving policy. The danger of head and neck injury is too high. Injuries from diving into shallow water can cause paralysis or death. Always enter shallow water feet first.<br><br>Get Out if You Hear Thunder<br><br>It is not safe to swim during a thunderstorm. If lightning hits the pool water, electrocution is likely. As soon as you hear thunder, clear the pool. Get out even if you haven\'t seen lightning yet. Stay out of the pool until it has been thirty minutes since the last lightning sighting or rumble of thunder. <br><br>Keep safety in mind this summer while you enjoy your swimming pool. If you have guests over, you are responsible for their safety. If a guest is injured in or around your pool, the liability coverage portion of your home insurance helps cover their medical bills and protect you should they decide to sue.<br><br>Your safety is our priority. Call Peachstate Insurance at (877) 997-2478 for more information on Atlanta home insurance.<br></p>', 1, 'upload/post/4dd9aec559.jpg', 'pool', '', '', '', 'a-lot-of-focus-is-put-on-pool-safety-for-children', 1, '2019-01-24 18:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `list_seo`
--

CREATE TABLE `list_seo` (
  `id` int(11) NOT NULL,
  `hometitle` varchar(255) NOT NULL,
  `homedescription` text NOT NULL,
  `homekeyword` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `bing` varchar(255) NOT NULL,
  `pinterest` varchar(255) NOT NULL,
  `analytics` varchar(255) NOT NULL,
  `checkcontent` varchar(255) NOT NULL DEFAULT '2',
  `checkkeyword` int(11) NOT NULL DEFAULT '0',
  `checksitemap` int(11) NOT NULL DEFAULT '0',
  `checkrobot` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_seo`
--

INSERT INTO `list_seo` (`id`, `hometitle`, `homedescription`, `homekeyword`, `google`, `bing`, `pinterest`, `analytics`, `checkcontent`, `checkkeyword`, `checksitemap`, `checkrobot`) VALUES
(1, 'Ezeblog - Simple Dynamic Blog Template', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', 'blog, website, ezeblog', 'w9_oQ7sF8QulKrv8FCU3z6UF9X-pl151c5YjUqGCb5Q', '', '', 'UA-223293165-1', '2', 1, 1, 1);

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
(18, 'name@sub.com', 1, '2019-01-15 12:30:54'),
(19, 'fahimahmed@mail.com', 0, '2019-01-16 17:04:30'),
(20, 'solaymanmail@mail.com', 0, '2019-01-17 05:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `list_theme`
--

CREATE TABLE `list_theme` (
  `id` int(11) NOT NULL,
  `logo` int(11) NOT NULL DEFAULT '3',
  `themefont` int(11) NOT NULL DEFAULT '1',
  `themecolor` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_theme`
--

INSERT INTO `list_theme` (`id`, `logo`, `themefont`, `themecolor`) VALUES
(1, 2, 8, 6);

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
  `details` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `birth` date NOT NULL,
  `website` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '4',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_user`
--

INSERT INTO `list_user` (`id`, `firstname`, `lastname`, `username`, `photo`, `email`, `details`, `password`, `birth`, `website`, `role`, `created_at`) VALUES
(1, 'Solayman', 'Hossain', 'solaymanict', '', 'admin@mail.com', 'This is Solayman Hossain, a professional web developer. ', 'e10adc3949ba59abbe56e057f20f883e', '1995-08-16', '', 1, '2019-01-04 17:56:53'),
(3, 'Moshiur', 'Reza', 'moshiur', 'upload/user/869e4f23ea.jpg', 'moshir@mail.com', 'Place a nice introduction here to catch reader\'s attention. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderi.', '21232f297a57a5a743894a0e4a801fc3', '2019-01-16', 'http://theblog.test/index.php', 3, '2019-01-16 13:33:09'),
(4, '', '', 'admin', 'upload/user/8ada44534e.jpg', 'alim365@gmail.com', '', '3cafd8d9ffd2563374cc9363e12a1c0c', '1970-01-01', '', 3, '2019-01-16 13:34:56'),
(6, 'Nabil ', 'Chowdhury', 'nabil', 'upload/user/ce24d87d24.jpg', 'nabil@email.com', 'Mahmud Khairul\r\nJanuary 14 at 12:49 AM Â· \r\nSalute Kazi Nazrul Islam, Love Nobel\r\nThank You Sa Re Ga Ma Pa\r\nThank you Kolkata', '8f00d6ddf514f1f3a5b0373213329a4b', '2019-01-10', 'https://www.facebook.com/khairulity', 1, '2019-01-16 13:51:49'),
(7, 'Riyajul', 'Karim', 'riyaz', 'upload/user/43f8b9372e.jpg', 'riyaz@mail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type ', 'e10adc3949ba59abbe56e057f20f883e', '2019-01-21', '', 4, '2019-01-21 17:11:42');

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
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `category` (`category`),
  ADD KEY `author` (`author`);

--
-- Indexes for table `list_seo`
--
ALTER TABLE `list_seo`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `list_theme`
--
ALTER TABLE `list_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_user`
--
ALTER TABLE `list_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list_category`
--
ALTER TABLE `list_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `list_comment`
--
ALTER TABLE `list_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `list_contact`
--
ALTER TABLE `list_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `list_customize`
--
ALTER TABLE `list_customize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `list_footermenu`
--
ALTER TABLE `list_footermenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `list_mainmenu`
--
ALTER TABLE `list_mainmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `list_posts`
--
ALTER TABLE `list_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `list_seo`
--
ALTER TABLE `list_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `list_social`
--
ALTER TABLE `list_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `list_subscribe`
--
ALTER TABLE `list_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `list_theme`
--
ALTER TABLE `list_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `list_user`
--
ALTER TABLE `list_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
