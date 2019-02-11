-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2019 at 07:33 PM
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
(1, 'Wordpress', 'wordpress'),
(2, 'Lifestyle', 'lifestyle'),
(3, 'Marketing', 'marketing'),
(4, 'Computer', 'computer');

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
(18, 19, 'Solayman', 'solaymang3@gmail.com', 'Keep safety in mind this <a href=\"https://custompoolpros.com/\" target=\"_blank\">custompoolpros</a> while you enjoy your swimming pool. If you have guests over, you are responsible for their safety. If a guest is injured in or around your pool, the liability coverage portion of your home insurance helps cover their medical bills and protect you should they decide to sue.', '127.0.0.1', 1, '2019-01-26 06:45:39'),
(19, 11, 'Mohosin Mia', 'admin@mail.com', 'n this tutorial I will show you how to make seo friendly or clean url in PHP programming language using apache .htaccess file. Semantic Url is one of the required things for Content Marketing. With the help of pretty url our website content wil', '127.0.0.1', 1, '2019-01-26 08:21:41'),
(20, 19, 'Louis C. Charmissdfsa', 'nabil@zumu.com', 'Keep safety in mind this summer while you enjoy your swimming pool. If you have guests over, you are responsible for their safety. If a guest is injured in or around your pool, the liability coverage portion of your home insurance helps cover their medical bills and protect you should they decide to sue.', '127.0.0.1', 1, '2019-02-06 14:05:18');

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
(2, 'Nabil Chowdhury', 'nail@mgila.com', 'Nabil query', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2019-01-05 17:37:50'),
(6, 'Fahim Ahmed', 'fahim@mail.com', 'Faim New Info', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy tLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy t', 0, '2019-01-16 18:29:53'),
(7, 'Moshiur Reza', 'reza@mail.com', 'New Youtube Information', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, '2019-01-16 19:48:38'),
(8, 'Nabil Chowdhury', 'nabil@email.com', 'Faim New Info', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, '2019-01-16 19:49:57'),
(9, 'Solayman HossIN', 'solayman@mail.com', 'New Youtube Information', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 0, '2019-01-16 19:51:20'),
(10, 'Abdul Alim', 'alim@mail.com', 'This is a test mail', 'Hello, tWant to get in touch? Fill out the form below to send me a message and I will get back to you as soon as possible!', 0, '2019-01-17 05:43:44'),
(11, 'Rejuan Talukdar', 'admin@mail.com', 'My Youtube Information', 'For many people, consuming too much sodium may contribute to high blood pressure, which is a risk factor for heart disease, stroke, and other cardiovascular issues, and it may lead to fluid retention and bloating. If you\'re sensitive to sodium, decreasing the amount of added salt and ingredients that contain sodium that you consume may help keep your blood pressure at a healthier level.', 1, '2019-01-18 16:38:26'),
(12, 'Solayman Hossain', 'solaymanict@gmail.com', 'I paid domain price', 'I paid domain price techslite.com', 1, '2019-02-05 13:28:58');

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
  `copyright` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_customize`
--

INSERT INTO `list_customize` (`id`, `title`, `tagline`, `url`, `logo`, `textlogo`, `copyright`, `status`, `updated_at`) VALUES
(1, 'Ezeblog', 'Simple Dynamic Blog Template', 'http://theblog.test', 'upload/logo.png', 'Bootstrap Blog', '2019. All rights reserved. Your great site.', 1, '2019-01-17 06:04:30');

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
(1, 'My Account', 'http://theblog.test/login'),
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
(1, 'Home', 'http://theblog.test/index.php', 0),
(2, 'About Us', 'http://theblog.test/about-us', 0),
(3, 'Services', 'http://theblog.test/services', 0),
(5, 'Lifestyle', 'http://theblog.test/categories/lifestyle', 0),
(6, 'Marketing', 'http://theblog.test/categories/marketing', 0),
(7, 'Blog', 'http://theblog.test/blog.php', 0),
(8, 'Contact', 'http://theblog.test/contact.php', 0);

-- --------------------------------------------------------

--
-- Table structure for table `list_pages`
--

CREATE TABLE `list_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `metatitle` varchar(255) NOT NULL,
  `metadescription` varchar(255) NOT NULL,
  `metakeywords` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_pages`
--

INSERT INTO `list_pages` (`id`, `title`, `description`, `metatitle`, `metadescription`, `metakeywords`, `slug`, `created_at`) VALUES
(1, 'About Us', ' <!-- Introduction Row -->\r\n      <h1 class=\"my-4\">About Us\r\n        <small>It\'s Nice to Meet You!</small>\r\n      </h1>\r\n      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, explicabo dolores ipsam aliquam inventore corrupti eveniet quisquam quod totam laudantium repudiandae obcaecati ea consectetur debitis velit facere nisi expedita vel?</p>\r\n\r\n      <!-- Team Members Row -->\r\n      <div class=\"row\">\r\n        <div class=\"col-lg-12\">\r\n          <h2 class=\"my-4\">Our Team</h2>\r\n        </div>\r\n        <div class=\"col-lg-4 col-sm-6 text-center mb-4\">\r\n          <img class=\"rounded-circle img-fluid d-block mx-auto\" src=\"http://placehold.it/200x200\" alt=\"\">\r\n          <h3>John Smith\r\n            <small>Job Title</small>\r\n          </h3>\r\n          <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n        </div>\r\n        <div class=\"col-lg-4 col-sm-6 text-center mb-4\">\r\n          <img class=\"rounded-circle img-fluid d-block mx-auto\" src=\"http://placehold.it/200x200\" alt=\"\">\r\n          <h3>John Smith\r\n            <small>Job Title</small>\r\n          </h3>\r\n          <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n        </div>\r\n        <div class=\"col-lg-4 col-sm-6 text-center mb-4\">\r\n          <img class=\"rounded-circle img-fluid d-block mx-auto\" src=\"http://placehold.it/200x200\" alt=\"\">\r\n          <h3>John Smith\r\n            <small>Job Title</small>\r\n          </h3>\r\n          <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n        </div>\r\n        <div class=\"col-lg-4 col-sm-6 text-center mb-4\">\r\n          <img class=\"rounded-circle img-fluid d-block mx-auto\" src=\"http://placehold.it/200x200\" alt=\"\">\r\n          <h3>John Smith\r\n            <small>Job Title</small>\r\n          </h3>\r\n          <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n        </div>\r\n        <div class=\"col-lg-4 col-sm-6 text-center mb-4\">\r\n          <img class=\"rounded-circle img-fluid d-block mx-auto\" src=\"http://placehold.it/200x200\" alt=\"\">\r\n          <h3>John Smith\r\n            <small>Job Title</small>\r\n          </h3>\r\n          <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n        </div>\r\n        <div class=\"col-lg-4 col-sm-6 text-center mb-4\">\r\n          <img class=\"rounded-circle img-fluid d-block mx-auto\" src=\"http://placehold.it/200x200\" alt=\"\">\r\n          <h3>John Smith\r\n            <small>Job Title</small>\r\n          </h3>\r\n          <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n        </div>\r\n      </div>', 'About Us It\'s Nice to Meet You!', 'About Us It\'s Nice to Meet You!', 'about, team', 'about-us', '2019-01-29 09:24:04'),
(2, 'Services', '<main role=\"main\">\r\n\r\n      <section class=\"jumbotron text-center\">\r\n        <div class=\"container\">\r\n          <h1 class=\"jumbotron-heading\">Album example</h1>\r\n          <p class=\"lead text-muted\">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don\'t simply skip over it entirely.</p>\r\n          <p>\r\n            <a href=\"#\" class=\"btn btn-primary my-2\">Main call to action</a>\r\n            <a href=\"#\" class=\"btn btn-secondary my-2\">Secondary action</a>\r\n          </p>\r\n        </div>\r\n      </section>\r\n\r\n      <div class=\"album py-5 bg-light\">\r\n        <div class=\"container\">\r\n\r\n          <div class=\"row\">\r\n            <div class=\"col-md-4\">\r\n              <div class=\"card mb-4 box-shadow\">\r\n                <img class=\"card-img-top\" data-src=\"holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail\" alt=\"Thumbnail [100%x225]\" style=\"height: 225px; width: 100%; display: block;\" src=\"data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16899408b9d%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16899408b9d%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.71875%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E\" data-holder-rendered=\"true\">\r\n                <div class=\"card-body\">\r\n                  <p class=\"card-text\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\r\n                  <div class=\"d-flex justify-content-between align-items-center\">\r\n                    <div class=\"btn-group\">\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">View</button>\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">Edit</button>\r\n                    </div>\r\n                    <small class=\"text-muted\">9 mins</small>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-4\">\r\n              <div class=\"card mb-4 box-shadow\">\r\n                <img class=\"card-img-top\" data-src=\"holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail\" alt=\"Thumbnail [100%x225]\" src=\"data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16899408b9e%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16899408b9e%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.71875%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E\" data-holder-rendered=\"true\" style=\"height: 225px; width: 100%; display: block;\">\r\n                <div class=\"card-body\">\r\n                  <p class=\"card-text\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\r\n                  <div class=\"d-flex justify-content-between align-items-center\">\r\n                    <div class=\"btn-group\">\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">View</button>\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">Edit</button>\r\n                    </div>\r\n                    <small class=\"text-muted\">9 mins</small>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-4\">\r\n              <div class=\"card mb-4 box-shadow\">\r\n                <img class=\"card-img-top\" data-src=\"holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail\" alt=\"Thumbnail [100%x225]\" src=\"data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16899408ba1%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16899408ba1%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.71875%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E\" data-holder-rendered=\"true\" style=\"height: 225px; width: 100%; display: block;\">\r\n                <div class=\"card-body\">\r\n                  <p class=\"card-text\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\r\n                  <div class=\"d-flex justify-content-between align-items-center\">\r\n                    <div class=\"btn-group\">\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">View</button>\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">Edit</button>\r\n                    </div>\r\n                    <small class=\"text-muted\">9 mins</small>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n\r\n            <div class=\"col-md-4\">\r\n              <div class=\"card mb-4 box-shadow\">\r\n                <img class=\"card-img-top\" data-src=\"holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail\" alt=\"Thumbnail [100%x225]\" src=\"data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16899408ba3%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16899408ba3%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.71875%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E\" data-holder-rendered=\"true\" style=\"height: 225px; width: 100%; display: block;\">\r\n                <div class=\"card-body\">\r\n                  <p class=\"card-text\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\r\n                  <div class=\"d-flex justify-content-between align-items-center\">\r\n                    <div class=\"btn-group\">\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">View</button>\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">Edit</button>\r\n                    </div>\r\n                    <small class=\"text-muted\">9 mins</small>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-4\">\r\n              <div class=\"card mb-4 box-shadow\">\r\n                <img class=\"card-img-top\" data-src=\"holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail\" alt=\"Thumbnail [100%x225]\" src=\"data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16899408ba4%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16899408ba4%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.71875%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E\" data-holder-rendered=\"true\" style=\"height: 225px; width: 100%; display: block;\">\r\n                <div class=\"card-body\">\r\n                  <p class=\"card-text\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\r\n                  <div class=\"d-flex justify-content-between align-items-center\">\r\n                    <div class=\"btn-group\">\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">View</button>\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">Edit</button>\r\n                    </div>\r\n                    <small class=\"text-muted\">9 mins</small>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-4\">\r\n              <div class=\"card mb-4 box-shadow\">\r\n                <img class=\"card-img-top\" data-src=\"holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail\" alt=\"Thumbnail [100%x225]\" src=\"data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16899408ba6%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16899408ba6%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.71875%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E\" data-holder-rendered=\"true\" style=\"height: 225px; width: 100%; display: block;\">\r\n                <div class=\"card-body\">\r\n                  <p class=\"card-text\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\r\n                  <div class=\"d-flex justify-content-between align-items-center\">\r\n                    <div class=\"btn-group\">\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">View</button>\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">Edit</button>\r\n                    </div>\r\n                    <small class=\"text-muted\">9 mins</small>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n\r\n            <div class=\"col-md-4\">\r\n              <div class=\"card mb-4 box-shadow\">\r\n                <img class=\"card-img-top\" data-src=\"holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail\" alt=\"Thumbnail [100%x225]\" src=\"data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16899408ba8%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16899408ba8%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.71875%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E\" data-holder-rendered=\"true\" style=\"height: 225px; width: 100%; display: block;\">\r\n                <div class=\"card-body\">\r\n                  <p class=\"card-text\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\r\n                  <div class=\"d-flex justify-content-between align-items-center\">\r\n                    <div class=\"btn-group\">\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">View</button>\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">Edit</button>\r\n                    </div>\r\n                    <small class=\"text-muted\">9 mins</small>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-4\">\r\n              <div class=\"card mb-4 box-shadow\">\r\n                <img class=\"card-img-top\" data-src=\"holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail\" alt=\"Thumbnail [100%x225]\" src=\"data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16899408ba9%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16899408ba9%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.71875%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E\" data-holder-rendered=\"true\" style=\"height: 225px; width: 100%; display: block;\">\r\n                <div class=\"card-body\">\r\n                  <p class=\"card-text\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\r\n                  <div class=\"d-flex justify-content-between align-items-center\">\r\n                    <div class=\"btn-group\">\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">View</button>\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">Edit</button>\r\n                    </div>\r\n                    <small class=\"text-muted\">9 mins</small>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"col-md-4\">\r\n              <div class=\"card mb-4 box-shadow\">\r\n                <img class=\"card-img-top\" data-src=\"holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail\" alt=\"Thumbnail [100%x225]\" src=\"data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16899408baa%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16899408baa%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.71875%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E\" data-holder-rendered=\"true\" style=\"height: 225px; width: 100%; display: block;\">\r\n                <div class=\"card-body\">\r\n                  <p class=\"card-text\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\r\n                  <div class=\"d-flex justify-content-between align-items-center\">\r\n                    <div class=\"btn-group\">\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">View</button>\r\n                      <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\">Edit</button>\r\n                    </div>\r\n                    <small class=\"text-muted\">9 mins</small>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n\r\n    </main>', 'Lorem ipsum dolor sit amet consectetur.', 'Lorem ipsum dolor sit amet consectetur.', 'service, our service', 'services', '2019-01-29 09:59:22'),
(3, 'Pricing', '<div align=\"justify\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; margin-left: 25px;\" align=\"center\"><br></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; margin-left: 25px;\">Quickly build an effective pricing table for your potential customers with this Bootstrap example. It\'s built with default Bootstrap components and utilities with little customization.</p></div>\r\n<div class=\"container\">\r\n      <div class=\"card-deck mb-3 text-center\">\r\n        <div class=\"card mb-4 box-shadow\">\r\n          <div class=\"card-header\">\r\n            <h4 class=\"my-0 font-weight-normal\">Free</h4>\r\n          </div>\r\n          <div class=\"card-body\">\r\n            <h1 class=\"card-title pricing-card-title\">$0 <small class=\"text-muted\">/ mo</small></h1>\r\n            <ul class=\"list-unstyled mt-3 mb-4\">\r\n              <li>10 users included</li>\r\n              <li>2 GB of storage</li>\r\n              <li>Email support</li>\r\n              <li>Help center access</li>\r\n            </ul>\r\n            <button type=\"button\" class=\"btn btn-lg btn-block btn-outline-primary\">Sign up for free</button>\r\n          </div>\r\n        </div>\r\n        <div class=\"card mb-4 box-shadow\">\r\n          <div class=\"card-header\">\r\n            <h4 class=\"my-0 font-weight-normal\">Pro</h4>\r\n          </div>\r\n          <div class=\"card-body\">\r\n            <h1 class=\"card-title pricing-card-title\">$15 <small class=\"text-muted\">/ mo</small></h1>\r\n            <ul class=\"list-unstyled mt-3 mb-4\">\r\n              <li>20 users included</li>\r\n              <li>10 GB of storage</li>\r\n              <li>Priority email support</li>\r\n              <li>Help center access</li>\r\n            </ul>\r\n            <button type=\"button\" class=\"btn btn-lg btn-block btn-primary\">Get started</button>\r\n          </div>\r\n        </div>\r\n        <div class=\"card mb-4 box-shadow\">\r\n          <div class=\"card-header\">\r\n            <h4 class=\"my-0 font-weight-normal\">Enterprise</h4>\r\n          </div>\r\n          <div class=\"card-body\">\r\n            <h1 class=\"card-title pricing-card-title\">$29 <small class=\"text-muted\">/ mo</small></h1>\r\n            <ul class=\"list-unstyled mt-3 mb-4\">\r\n              <li>30 users included</li>\r\n              <li>15 GB of storage</li>\r\n              <li>Phone and email support</li>\r\n              <li>Help center access</li>\r\n            </ul>\r\n            <button type=\"button\" class=\"btn btn-lg btn-block btn-primary\">Contact us</button>\r\n          </div>\r\n        </div>\r\n      </div>\r\n\r\n      <footer class=\"pt-4 my-md-5 pt-md-5 border-top\">\r\n        <div class=\"row\">\r\n          <div class=\"col-12 col-md\">\r\n            <img class=\"mb-2\" src=\"https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg\" alt=\"\" width=\"24\" height=\"24\">\r\n            <small class=\"d-block mb-3 text-muted\">Â© 2017-2018</small>\r\n          </div>\r\n          <div class=\"col-6 col-md\">\r\n            <h5>Features</h5>\r\n            <ul class=\"list-unstyled text-small\">\r\n              <li><a class=\"text-muted\" href=\"#\">Cool stuff</a></li>\r\n              <li><a class=\"text-muted\" href=\"#\">Random feature</a></li>\r\n              <li><a class=\"text-muted\" href=\"#\">Team feature</a></li>\r\n              <li><a class=\"text-muted\" href=\"#\">Stuff for developers</a></li>\r\n              <li><a class=\"text-muted\" href=\"#\">Another one</a></li>\r\n              <li><a class=\"text-muted\" href=\"#\">Last time</a></li>\r\n            </ul>\r\n          </div>\r\n          <div class=\"col-6 col-md\">\r\n            <h5>Resources</h5>\r\n            <ul class=\"list-unstyled text-small\">\r\n              <li><a class=\"text-muted\" href=\"#\">Resource</a></li>\r\n              <li><a class=\"text-muted\" href=\"#\">Resource name</a></li>\r\n              <li><a class=\"text-muted\" href=\"#\">Another resource</a></li>\r\n              <li><a class=\"text-muted\" href=\"#\">Final resource</a></li>\r\n            </ul>\r\n          </div>\r\n          <div class=\"col-6 col-md\">\r\n            <h5>About</h5>\r\n            <ul class=\"list-unstyled text-small\">\r\n              <li><a class=\"text-muted\" href=\"#\">Team</a></li>\r\n              <li><a class=\"text-muted\" href=\"#\">Locations</a></li>\r\n              <li><a class=\"text-muted\" href=\"#\">Privacy</a></li>\r\n              <li><a class=\"text-muted\" href=\"#\">Terms</a></li>\r\n            </ul>\r\n          </div>\r\n        </div>\r\n      </footer>\r\n    </div>', 'Quickly build an effective pricing table for your potential customers with this Bootstrap example. ', 'Quickly build an effective pricing table for your potential customers with this Bootstrap example. ', 'priocing, portfilo', 'pricing', '2019-01-29 17:57:00'),
(4, 'Portfolio', '<p><br></p><section class=\"features-icons bg-light text-center\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-lg-4\">\r\n          <div class=\"features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3\">\r\n            <div class=\"features-icons-icon d-flex\">\r\n              <i class=\"icon-screen-desktop m-auto text-primary\"></i>\r\n            </div>\r\n            <h3>Fully Responsive</h3>\r\n            <p class=\"lead mb-0\">This theme will look great on any device, no matter the size!</p>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-lg-4\">\r\n          <div class=\"features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3\">\r\n            <div class=\"features-icons-icon d-flex\">\r\n              <i class=\"icon-layers m-auto text-primary\"></i>\r\n            </div>\r\n            <h3>Bootstrap 4 Ready</h3>\r\n            <p class=\"lead mb-0\">Featuring the latest build of the new Bootstrap 4 framework!</p>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-lg-4\">\r\n          <div class=\"features-icons-item mx-auto mb-0 mb-lg-3\">\r\n            <div class=\"features-icons-icon d-flex\">\r\n              <i class=\"icon-check m-auto text-primary\"></i>\r\n            </div>\r\n            <h3>Easy to Use</h3>\r\n            <p class=\"lead mb-0\">Ready to use with your own content, or customize the source files!</p>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>', 'My website portfolio', 'My website portfolio', 'portfolio, pages', 'portfolio', '2019-02-01 18:17:29');

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
(1, 'Diversity in Engineering: The Effect on ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <h3>Lorem Ipsum Dolor</h3>\r\n                  <p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium</p>\r\n                  <blockquote class=\"blockquote\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\r\n                    <footer class=\"blockquote-footer\">Someone famous in\r\n                      <cite title=\"Source Title\">Source Title</cite>\r\n                    </footer>\r\n                  </blockquote>\r\n                  <p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>', 1, 'upload/post/0f97bf1f38.jpg', 'wordpress', 'Diversity in Engineering: The Effect on ', 'Diversity in Engineering: The Effect on ', 'diversity', 'diversity-in-engineering-the-effect-on', 1, '2019-01-04 18:01:02'),
(2, 'Alberto Savoia Can Teach You About Interior', '<p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium\r\n\r\n    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n    Someone famous in Source Title\r\n\r\nquasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.\r\n\r\ndiv Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium\r\n\r\n    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n    Someone famous in Source Title</p>\r\n\r\n<p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>', 3, 'upload/post/254802f7da.jpg', 'life, alverto, man', 'Diversity in Engineering: The Effect on ', 'Diversity in Engineering: The Effect on ', '', 'alberto-savoia-can-teach-you-about-interior', 1, '2019-01-04 18:02:05'),
(4, 'Readable content of a page when looking at its layout', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. \r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All</p><p> the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 2, 'upload/post/a7382797d2.jpeg', 'lifestyle', 'Readable content of a page when looking at its layout', 'Readable content of a page when looking at its layout', '', 'readable-content-of-a-page-when-looking-at-its-layout', 1, '2019-01-05 08:28:54'),
(5, 'De usar Lorem Ipsum es que tiene una distribuci', '<p>Mr korim ali Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <h3>Lorem Ipsum Dolor</h3>\r\n                  <p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium</p>\r\n                  <blockquote class=\"blockquote\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\r\n                    <footer class=\"blockquote-footer\">Someone famous in\r\n                      <cite title=\"Source Title\">Source Title</cite>\r\n                    </footer>\r\n                  </blockquote>\r\n                  <p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>', 2, 'upload/post/e42012829c.jpg', 'blog', 'Readable content of a page when looking at its layout', 'Readable content of a page when looking at its layout', '', 'de-usar-lorem-ipsum-es-que-tiene-una-distribuci', 1, '2019-01-05 08:46:26'),
(6, 'Dcomo por ejemplo Aldus PageMaker, el cual incluye', '<p>Lorem Ipsum ha sido el texto de relleno estï¿½ndar de las  nabil besi buje industrias desde el aï¿½o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usï¿½ una galerï¿½a de textos y los mezclï¿½ de tal manera que logrï¿½ hacer un libro de textos especimen. No sï¿½lo sobreviviï¿½ 500 aï¿½os, sino que tambien ingresï¿½ como texto de relleno en documentos electrï¿½nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaciï¿½n de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y mï¿½s recientemente con software de autoediciï¿½n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. \r\nLorem Ipsum ha sido el texto de relleno estï¿½ndar de las industrias desde el aï¿½o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usï¿½ una galerï¿½a de textos y los mezclï¿½ de tal manera que logrï¿½ hacer </p><p>un libro de textos especimen. No sï¿½lo sobreviviï¿½ 500 aï¿½os, sino que tambien ingresï¿½ como texto de relleno en documentos electrï¿½nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaciï¿½n de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y mï¿½s recientemente con software de autoediciï¿½n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>', 1, 'upload/post/114bd45ec0.jpeg', 'php', 'Diversity in Engineering: The Effect on ', 'Diversity in Engineering: The Effect on ', '', 'dcomo-por-ejemplo-aldus-pagemaker-el-cual-incluye', 1, '2019-01-05 08:47:24'),
(8, 'When I was developing blog themes, I found it useful', '<p><strong><span class=\"dropcaps\" style=\"color:#418CD1\"> L </span>orem Ipsum</strong>Â is\r\n simply dummy text of the printing and typesetting industry. Lorem Ipsum\r\n has been the industryâ€™s standard dummy text ever since the 1500s, when \r\nan unknown printer took a galley of type and scrambled it to make a type\r\n specimen book. It has survived not only five centuries, but also the \r\nleap into electronic typesetting, remaining essentially unchanged. It \r\nwas popularised in the 1960s with the release of Letraset sheets \r\ncontaining Lorem Ipsum passages, and more recently with desktop \r\npublishing software like Aldus PageMaker including versions of Lorem \r\nIpsum.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which donâ€™t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisnâ€™t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.</p>\r\n<h1>H1 Font Title</h1>\r\n<h2>H2 Font Title</h2>\r\n<h3>H3 Font Title</h3>', 1, 'upload/post/9a12f8f96d.jpg', 'dummy', 'This is a dummy post for testing', 'This is a dummy post for testing', '', 'when-i-was-developing-blog-themes-i-found-it-useful', 1, '2019-01-14 18:26:27'),
(9, 'Diversity in Engineering', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <h3>Lorem Ipsum Dolor</h3>\r\n                  <p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium</p>\r\n                  <blockquote class=\"blockquote\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\r\n                    <footer class=\"blockquote-footer\">Someone famous in\r\n                      <cite title=\"Source Title\">Source Title</cite>\r\n                    </footer>\r\n                  </blockquote>\r\n                  <p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>', 1, 'upload/post/eac836defb.jpg', 'wordpress', 'Diversity in Engineering: The Effect on ', 'Diversity in Engineering: The Effect on ', '', 'diversity-in-engineering', 1, '2019-01-14 18:49:37'),
(10, 'Java Post Title will goes here', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><br></p><p><strong><a href=\"http://li-med.com/dummy-post/\" target=\"_blank\">Lorem Ipsum</a></strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><br></p>', 4, 'upload/post/20baad0b40.jpg', 'java', 'Java Post Title will goes here', 'Java Post Title will goes here', '', 'java-post-title-will-goes-here', 1, '2019-01-14 19:15:25'),
(11, 'When I was developing blog themes', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do \r\neiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad \r\nminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip \r\nex ea commodo consequat.</p>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing\r\n elit, sed do eiusmod tempor incididunt ut labore et dolore magna \r\naliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco \r\nlaboris nisi ut aliquip ex ea commodo consequat.</p>\r\n                  <h3>Lorem Ipsum Dolor</h3>\r\n                  <p>div Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit. Assumenda temporibus iusto voluptates deleniti \r\nsimilique rerum ducimus sint ex odio saepe. Sapiente quae pariatur \r\nratione quis perspiciatis deleniti accusantium</p>\r\n                  <blockquote class=\"blockquote\">\r\n                    <p>Lorem ipsum dolor sit amet, consectetur \r\nadipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip.</p>\r\n                    <footer class=\"blockquote-footer\">Someone famous in\r\n                      <cite title=\"Source Title\">Source Title</cite>\r\n                    </footer>\r\n                  </blockquote>\r\n                  <p>quasi nam. Libero dicta eum recusandae, commodi, \r\nad, autem at ea iusto numquam veritatis, officiis. Accusantium optio \r\nminus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit\r\n iusto ullam voluptas neque soluta adipisci ad.</p>', 1, 'upload/post/f533889c11.jpg', 'wordpress', 'When I was developing blog themes', 'When I was developing blog themes', '', 'when-i-was-developing-blog-themes', 1, '2019-01-14 19:16:19'),
(12, 'This time I was develop now for', '<p>In this tutorial I will show you how to make seo friendly or clean url in PHP programming language using apache .htaccess file. Semantic Url is one of the required things for Content Marketing. With the help of pretty url our website content will be Indexed on different search engine very fast. Clean Url is one part of Search Engine Optimization. SEO Friendly UrlÂ  will increase our ranking on different search engine. With the help of this clean slug our presence on search engine will increase. So, How to gain this feature for our ecommerce website, these all things are learn in this video. I think you will learn this things from this video. </p><p>In this tutorial I will show you how to make seo friendly or clean url in PHP programming language using apache .htaccess file. Semantic Url is one of the required things for Content Marketing. With the help of pretty url our website content will be Indexed on different search engine very fast. Clean Url is one part of Search Engine Optimization. SEO Friendly UrlÂ  will increase our ranking on different search engine. With the help of this clean slug our presence on search engine will increase. So, How to gain this feature for our ecommerce website, these all things are learn in this video. I think you will learn this things from this video.</p><p>In this tutorial I will show you how to make seo friendly or clean url in PHP programming language using apache .htaccess file. Semantic Url is one of the required things for Content Marketing. With the help of pretty url our website content will be Indexed on different search engine very fast. Clean Url is one part of Search Engine Optimization. SEO Friendly UrlÂ  will increase our ranking on different search engine. With the help of this clean slug our presence on search engine will increase. So, How to gain this feature for our ecommerce website, these all things are learn in this video. I think you will learn this things from this video.<br></p>', 2, 'upload/post/637d301029.jpg', 'slug', 'This time I was developing blog themes, I found it useful', 'This time I was developing blog themes, I found it useful', 'userful, mylife', 'this-time-i-was-develop-now-for', 1, '2019-01-15 16:32:13'),
(17, ' Clean Url is one part of Search Engine Optimization', '<p>In this tutorial I will show you how to make seo friendly or clean \r\nurl in PHP programming language using apache .htaccess file. Semantic \r\nUrl is one of the required things for Content Marketing. With the help \r\nof pretty url our website content will be Indexed on different search \r\nengine very fast. Clean Url is one part of Search Engine Optimization. \r\nSEO Friendly Url&nbsp; will increase our ranking on different search engine. \r\nWith the help of this clean slug our presence on search engine will \r\nincrease. So, How to gain this feature for our ecommerce website, these \r\nall things are learn in this video. I think you will learn this things \r\nfrom this video. </p><p>In this tutorial I will show you how to make seo\r\n friendly or clean url in PHP programming language using apache \r\n.htaccess file. Semantic Url is one of the required things for Content \r\nMarketing. With the help of pretty url our website content will be \r\nIndexed on different search engine very fast. Clean Url is one part of \r\nSearch Engine Optimization. SEO Friendly Url&nbsp; will increase our ranking \r\non different search engine. With the help of this clean slug our \r\npresence on search engine will increase. So, How to gain this feature \r\nfor our ecommerce website, these all things are learn in this video. I \r\nthink you will learn this things from this video.</p>In this tutorial\r\n I will show you how to make seo friendly or clean url in PHP \r\nprogramming language using apache .htaccess file. Semantic Url is one of\r\n the required things for Content Marketing. With the help of pretty url \r\nour website content will be Indexed on different search engine very \r\nfast. Clean Url is one part of Search Engine Optimization. SEO Friendly \r\nUrl&nbsp; will increase our ranking on different search engine. With the help\r\n of this clean slug our presence on search engine will increase. So, How\r\n to gain this feature for our ecommerce website, these all things are \r\nlearn in this video. I think you will learn this things from this video.', 4, 'upload/post/a6ee8be4d5.jpg', 'main', ' Clean Url is one part of Search Engine Optimization', ' Clean Url is one part of Search Engine Optimization', ' Clean Url is one part of Search Engine Optimization', 'clean-url-is-one-part-of-search-engine-optimization', 1, '2019-01-20 13:29:16'),
(18, 'Diversity in Engineering how', '<p>In this tutorial I will show you how to make seo friendly or clean \r\nurl in PHP programming language using apache .htaccess file. Semantic \r\nUrl is one of the required things for Content Marketing. With the help \r\nof pretty url our website content will be Indexed on different search \r\nengine very fast. Clean Url is one part of Search Engine Optimization. \r\nSEO Friendly UrlÂ  will increase our ranking on different search engine. \r\nWith the help of this clean slug our presence on search engine will \r\nincrease. So, How to gain this feature for our ecommerce website, these \r\nall things are learn in this video. I think you will learn this things \r\nfrom this video. </p><p>In this tutorial I will show you how to make seo\r\n friendly or clean url in PHP programming language using apache \r\n.htaccess file. Semantic Url is one of the required things for Content \r\nMarketing. With the help of pretty url our website content will be \r\nIndexed on different search engine very fast. Clean Url is one part of \r\nSearch Engine Optimization. SEO Friendly UrlÂ  will increase our ranking \r\non different search engine. With the help of this clean slug our \r\npresence on search engine will increase. So, How to gain this feature \r\nfor our ecommerce website, these all things are learn in this video. I \r\nthink you will learn this things from this video.</p>In this tutorial\r\n I will show you how to make seo friendly or clean url in PHP \r\nprogramming language using apache .htaccess file. Semantic Url is one of\r\n the required things for Content Marketing. With the help of pretty url \r\nour website content will be Indexed on different search engine very \r\nfast. Clean Url is one part of Search Engine Optimization. SEO Friendly \r\nUrlÂ  will increase our ranking on different search engine. With the help\r\n of this clean slug our presence on search engine will increase. So, How\r\n to gain this feature for our ecommerce website, these all things are \r\nlearn in this video. I think you will learn this things from this video.', 2, 'upload/post/4a7ba0ca18.jpg', 'main', 'Diversity in Engineering how', 'Diversity in Engineering how', 'diverse', 'diversity-in-engineering-how', 1, '2019-01-20 13:29:57');
INSERT INTO `list_posts` (`id`, `title`, `description`, `category`, `image`, `tags`, `metatitle`, `metadescription`, `metakeywords`, `slug`, `author`, `created_at`) VALUES
(19, 'A lot of focus is put on pool safety for children', '<p>You may be a strong swimmer, but you should still never swim alone. If something unexpected happens, you want someone else with you to notice and get the necessary help. Always swim with a buddy.<br><br>Keep an Eye on Electrical Cords<br><br>Listening to music while swimming makes it more fun. Verify that the electric cords of your sound system are not going through water on the pool deck. You don\'t want to be electrocuted when you get out of the water. Cord safety is important around pools.<br><br>Avoid Alcohol<br><br>The risk of injury and drowning increases with alcohol consumption. It is not safe to swim after drinking in excess. If you plan on swimming, avoid drinking until after you get out of the water. Keep friends and family that have been drinking away from the pool as well.<br><br>Don\'t Dive in Shallow Water<br><br>If your pool is less than nine feet deep, you should have a strict no-diving policy. The danger of head and neck injury is too high. Injuries from diving into shallow water can cause paralysis or death. Always enter shallow water feet first.<br><br>Get Out if You Hear Thunder<br><br>It is not safe to swim during a thunderstorm. If lightning hits the pool water, electrocution is likely. As soon as you hear thunder, clear the pool. Get out even if you haven\'t seen lightning yet. Stay out of the pool until it has been thirty minutes since the last lightning sighting or rumble of thunder. <br><br>Keep safety in mind this summer while you enjoy your swimming pool. If you have guests over, you are responsible for their safety. If a guest is injured in or around your pool, the liability coverage portion of your home insurance helps cover their medical bills and protect you should they decide to sue.</p><p><img style=\"width: 640px;\" src=\"data:image/jpeg;base64,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\" data-filename=\"blog-post-1.jpeg\"><br><br>Your safety is our priority. Call Peachstate Insurance at (877) 997-2478 for more information on Atlanta home insurance.<br></p>', 1, 'upload/post/4dd9aec559.jpg', 'pool, mypool, renovation', 'When I was developing blog themes', 'When I was developing blog themes', '', 'a-lot-of-focus-is-put-on-pool-safety-for-children', 1, '2019-01-24 18:34:40');

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
(1, 'Ezeblog - Simple Dynamic Blog Template', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', 'blog, website, ezeblog, myblog', 'w9_oQ7sF8QulKrv8FCU3z6UF9X-pl151c5YjUqGCb5Q', '', '', 'UA-223293165-1', '1,2', 1, 1, 1);

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
(8, 'alim@mail.com', 0, '2019-01-14 08:19:11'),
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
(20, 'solaymanmail@mail.com', 0, '2019-01-17 05:42:51'),
(21, 'admin@mail.com', 1, '2019-01-31 15:22:21'),
(22, 'nabil@zumu.com', 0, '2019-01-31 15:33:21'),
(23, 'nabil@zumu.com', 1, '2019-02-02 18:03:02'),
(24, 'admin@mail.com', 1, '2019-02-02 18:22:33'),
(25, 'admin@mail.com', 1, '2019-02-02 18:22:57'),
(26, 'admin@mail.com', 1, '2019-02-06 14:10:01');

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
(1, 'Solayman', 'Hossain', 'solaymanict', 'upload/user/8477d32082.jpg', 'admin@mail.com', 'This is Solayman Hossain, a professional web developer. ', 'e10adc3949ba59abbe56e057f20f883e', '1995-08-16', '', 1, '2019-01-04 17:56:53'),
(3, 'Moshiur', 'Reza', 'moshiur', 'upload/user/84b45cbccf.jpg', 'moshir@mail.com', 'Place a nice introduction here to catch reader\'s attention. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderi.', 'e10adc3949ba59abbe56e057f20f883e', '2019-01-23', 'http://theblog.test/index.php', 4, '2019-01-16 13:33:09'),
(7, 'Riyajul', 'Karim', 'riyaz', 'upload/user/43f8b9372e.jpg', 'riyaz@mail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type ', 'e10adc3949ba59abbe56e057f20f883e', '2019-01-21', '', 4, '2019-01-21 17:11:42'),
(8, 'Nabil ', 'Chowdhury', 'nabil', 'upload/user/e01617d737.jpg', '1992nabil2017@gmail.com', 'In this tutorial I will show you how to make seo friendly or clean url in PHP programming language using apache .htaccess file.', 'e10adc3949ba59abbe56e057f20f883e', '2019-01-02', '', 4, '2019-01-28 11:25:12'),
(9, 'Rejuan ', 'Talukder', 'rejuan', 'upload/user/d985b8d8f7.png', 'rejuan@mail.com', 'I am rejuan', 'e10adc3949ba59abbe56e057f20f883e', '2005-01-31', '', 1, '2019-02-05 14:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `list_widget`
--

CREATE TABLE `list_widget` (
  `id` int(11) NOT NULL,
  `sidebar1` text,
  `sidebar2` text,
  `sidebar3` text,
  `sidebar4` text,
  `footer1` text,
  `footer2` text,
  `footer3` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_widget`
--

INSERT INTO `list_widget` (`id`, `sidebar1`, `sidebar2`, `sidebar3`, `sidebar4`, `footer1`, `footer2`, `footer3`) VALUES
(1, 'searchbox', 'category', 'recentpost', 'tags', 'contactinfo', 'footermenu', 'newsletter');

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
-- Indexes for table `list_pages`
--
ALTER TABLE `list_pages`
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
-- Indexes for table `list_widget`
--
ALTER TABLE `list_widget`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list_category`
--
ALTER TABLE `list_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `list_comment`
--
ALTER TABLE `list_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `list_contact`
--
ALTER TABLE `list_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `list_pages`
--
ALTER TABLE `list_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `list_theme`
--
ALTER TABLE `list_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `list_user`
--
ALTER TABLE `list_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `list_widget`
--
ALTER TABLE `list_widget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
