-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql313.ihweb.ir
-- Generation Time: Aug 27, 2021 at 07:24 PM
-- Server version: 5.7.34-37
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+04:30";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ihweb_28974336_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comID` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `userID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comID`, `postID`, `comment`, `userID`) VALUES
(1, 53, 'Ø¨Ø² Ø¨Ø² Ù‚Ù†Ø¯ÛŒ ØŸ', 'katy'),
(2, 53, 'Ø¨Ø² Ø¨Ø² Ø´Ú©Ø±ÛŒ', 'aqaFarcer'),
(3, 53, 'Ø¨Ø´Ú©Ø±', 'aqaFarcer'),
(4, 52, 'Ù¾Ø§Ú†Ù‡ Ø®ÙˆØ§Ø± Ø³Ø§ÛŒØª', 'aqaFarcer'),
(5, 51, 'Ø§Ù„Ù‡Ù… ØµÙ„Ù‡ Ø§Ù„Ø§ Ù…Ø­Ù…Ø¯ Ùˆ Ø§Ù„Ù‡ Ù…Ø­Ù…Ø¯', 'aqaFarcer'),
(6, 50, 'Ù¾Ø§Ú†Ù‡ Ø®ÙˆØ§Ø± Ø³Ø§ÛŒØª', 'aqaFarcer'),
(7, 42, 'Ù¾Ø§Ú†Ù‡ Ø®ÙˆØ§Ø± Ø³Ø§ÛŒØª', 'aqaFarcer'),
(8, 41, 'ÙØªÛŒØ´ Ø³Ø§ÛŒØª', 'aqaFarcer'),
(9, 53, 'Ø¨Ø² Ø¨Ø² Ù‚Ù†Ø¯ÛŒ', 'mobin'),
(10, 29, 'Ø¹Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', 'katy'),
(11, 57, 'Ù¾Ø§Ú†Ù‡ Ø®ÙˆØ§Ø± 1.0.1', 'aqaFarcer'),
(12, 57, 'Ú†Ø®Ù‡', 'mobin'),
(13, 59, 'Ù†ÙˆÚ©Ø±ØªÙ… Ø¨ Ù…ÙˆÙ„Ø§', 'mamadhaji'),
(14, 59, 'Ø§ÙˆØ§Ø§Ø§ ØªÙˆÙ„Ø¯Ø´ÙˆÙ†â€ŒÙ…Ø¨Ø§Ø±Ú©Øª Ø¨Ø§Ø´Ù‡ðŸ˜‚', 'Zahra98'),
(15, 59, 'Ø¨Ù†Ø§Ø§Ø§Ø²Ù…', 'mobin'),
(16, 60, 'Ù…ØªØ§Ø³ÙØ§Ù†Ù‡ Ø§Ø¨Ø±Ø§Ù‡ÛŒÙ… Ø§Ø² Ù‚Ù„Ù… Ø§ÙØªØ§Ø¯Ù‡', 'mobin'),
(17, 60, 'Ø¨Ù…ÙˆÙ„Ø§ Ù‡ÛŒØ¦Øª', 'DashAsal'),
(19, 62, 'This tastes a little funny', 'Zahra98'),
(20, 62, 'Lol', 'katy'),
(21, 63, 'Ø¢ÛŒÙ†Ø¯Ù‡ Ø§ÛŒÙ† Ø³Ø§ÛŒØª Ø±ÙˆØ´Ù†Ù‡', 'Gabe'),
(22, 63, 'Ø­ØªÛŒ ØªÙˆØ¦ÛŒØªØ±Ù… ØªØ¨Ù„ÛŒØº Ø¯Ø§Ø±Ù‡ Ø§ÛŒÙ† Ù†Ø¯Ø§Ø±Ù‡', 'aqaFarcer');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `ID` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `postPrev` varchar(2000) NOT NULL,
  `author` varchar(25) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`ID`, `title`, `postPrev`, `author`, `time`) VALUES
(7, '', '<p>khooooob post chi bezarimmmm???:)</p>\r\n', '', '2021-06-30 15:31:47'),
(39, 'New update released', '<p>ðŸŸ¥Katy 1.1.3 released nowwwwwðŸŸ¥</p>\r\n', 'mobin', '2021-07-15 15:53:07'),
(28, 'Ø¢Ø¬ÛŒÙ„Ø§:/', '<p>Ù…ÛŒØ¯ÙˆÙ†ÛŒÙ† Ø¢Ø¬ÛŒÙ„Ø§ Ù¾ÙˆÙ„Ø§Ø´ÙˆÙ†Ùˆ Ú©Ø¬Ø§ Ù‚Ø§ÛŒÙ… Ù…ÛŒÚ©Ù†Ù†ØŸÙ¾Ø³Øª Ø¨Ø¹Ø¯ÛŒ Ø¨Ù‡ØªÙˆÙ† Ù…ÛŒÚ¯Ù…</p>\r\n', 'Zahra98', '2021-07-10 10:52:58'),
(41, '', '<p><span style=\"font-family:Georgia,serif\"><strong><em>(&nbsp;<span style=\"font-size:14px\">Ø¯Ø§Ø§Ø§Ø´Ù… Ú©ÛŒØ§Ù† Ú†Ù‡ Ø³Ø§ÛŒØªÛŒ Ø²Ø¯Ù‡Ù‡Ù‡Ù‡</span>&nbsp; </em></strong><span style=\"font-size:22px\"><em>Ø›</em></span></span></p>\r\n', 'nigin', '2021-07-20 15:59:36'),
(20, 'baby shark', '<p>kian koose dud durud du du du</p>\r\n', 'mamadhaji', '2021-07-08 16:57:07'),
(29, 'Qodrat', '<p><a href=\"/include/upload/sangin_9moa.png\"><img alt=\"Ø¢Ù¾Ù„ÙˆØ¯ Ø¹Ú©Ø³\" src=\"/include/upload/sangin_9moa.png\" /></a></p>\r\n', 'aqaFarcer', '2021-07-20 16:27:48'),
(11, 'Ø¨Ù‡ Ù…ÙˆÙ„Ø§ Ú©Ø±Ø¬', '<p>Ø¨Ù‡ Ù†Ø§Ù… Ø®Ø¯Ø§</p>\r\n\r\n<p>ðŸ¤Ø¨Ù‡ Ù…ÙˆÙ„Ø§ Ú©Ø±Ø¬</p>\r\n', 'mobin', '2021-07-10 10:38:36'),
(12, '', '<p>Khosh omadamðŸ’Ž</p>\r\n', 'alihji', '2021-07-08 15:39:56'),
(13, '', '<p>Ali haji Khosha Adami</p>\r\n', 'aqaFarcer', '2021-07-08 15:39:43'),
(14, '', '<p>Khosh Amad</p>\r\n', 'aqaFarcer', '2021-07-08 15:39:17'),
(16, 'Ú˜ÛŒÚ˜', '<p>Ø¨Ù‡ Ù†Ø¸Ø± Ø¨Ù‡ØªØ±ÛŒÙ† Ø³Ø§ÛŒØªÛŒ Ø§Ø³Øª Ú©Ù‡ Ù…Ù† ØªØ§ Ø­Ø§Ù„Ø§ Ø¯ÛŒØ¯Ù…&nbsp;</p>\r\n\r\n<p>&nbsp;Ø¢Ù†Ú†Ù‡ Ø§Ø² ÛŒÚ© Ø¨Ù„Ø§Ú¯ Ø§Ù†ØªØ¸Ø§Ø± Ø¯Ø§Ø´Øª Ø³Ø±ÛŒØ¹ ØŒÙÙˆØ±ÛŒ ØŒØ§Ù†Ù‚Ù„Ø§Ø¨ÛŒ&nbsp;</p>\r\n\r\n<p>Ù…Ø±Ø¯Ù… Ø¢Ø±Ø§Ù…Ø´ Ø¯Ø§Ø´ØªÙ‡ Ø¨Ø§Ø´Ù†Ø¯</p>\r\n\r\n<p>Ø­Ù‚ÛŒÙ‚ØªØ§ Ø¯Ú†Ø§Ø± ØªØ´ÙˆÛŒØ´ Ø´Ø¯Ù…</p>\r\n', 'mhdibezi', '2021-07-08 14:40:17'),
(19, 'Ù‡Ù„Ùˆ', '<p>Ù‡Ù„ÙˆÙˆÙˆÙˆ</p>\r\n\r\n<p>Ú©ØªÛŒØ² Ø³ÛŒØ³ ØµØ­Ø¨Øª Ù…ÛŒÚ©Ù†Ù‡</p>\r\n', 'Zahra98', '2021-07-08 14:44:09'),
(22, 'ØªÙˆØ¬Ù‡ ØªÙˆØ¬Ù‡!', '<p>Ø³ÙˆÙ¾ ØºØ°Ø§Ø§Ø§Ø§Ø§Ø§ Ù†ÛŒØ³ØªØªØª</p>\r\n', 'mobin', '2021-07-08 17:06:36'),
(30, '(Y)', '<p>(.&nbsp;&nbsp;&nbsp; )(.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )<br />\r\n&nbsp;</p>\r\n', 'GabGab', '2021-07-10 16:36:33'),
(31, 'Ø¨Ø¯Ùˆ Ø¨ÛŒÙ†Ù…', '<p>Ù‡Ø¹ÛŒ Ú†Ø§Ù‚ÛŒ</p>\r\n', 'Alihji ', '2021-07-11 11:11:14'),
(32, 'Ø¬Ø±Ù†Ø§Ù…Ù‡', '<p>Ø¯Ù„Ù… Ù…ÛŒØ®ÙˆØ§Ø¯ ØªÙˆ Ø´Ø§Ø¯ÛŒØ§Øª Ø¨ÛŒØ§Ù… ÙˆØ³Ø· Ù‚Ø±Ø´ Ø¨Ø¯Ù…</p>\r\n\r\n<p>Ù‡Ø±Ú†ÛŒ Ø¨Ø¯Ø®ÙˆØ§Ù‡ Ø¯Ø§Ø±ÛŒ Ø¨Ø§ Ø¯Ù†Ø¯ÙˆÙ†Ø§Ù… Ø¬Ø±Ø´ Ø¨Ø¯Ù…</p>\r\n', 'Alihji ', '2021-07-11 11:15:06'),
(34, 'Ø¢Ù¾Ø¯ÛŒØª ÙÙˆØ±ÛŒðŸŸ¥ðŸŸ¥', '<p>Ù‡Ù… Ø§ÛŒÙ†Ú© ÙˆØ±Ú˜Ù† Ù…ÙˆØ¨Ø§ÛŒÙ„&nbsp;Ø§ÛŒÙ† Ø¨Ù„Ø§Ú¯ Ù…Ø­Ø¨ÙˆØ¨ Ø¯Ø± Ø¯Ø³ØªØ±Ø³ Ù…Ø§ Ø¹Ø²ÛŒØ²Ø§Ù† Ù‚Ø±Ø§Ø± Ú¯Ø±ÙØªðŸ’¯ðŸ’¯</p>\r\n', 'mobin', '2021-07-11 16:47:45'),
(35, '', '<p>ÛŒØ¹Ù‚ÙˆØ¨ Ù‡Ø³ØªÙ…&nbsp;Ø§Ø² Ù…ÙˆØ¨Ø§ÛŒÙ„ 140</p>\r\n\r\n<p>Ú†Ø¬ÙˆØ±ÛŒ Ù…ÛŒØªÙˆÙ†Ù… Ú©Ù…Ú©ØªÙˆÙ† Ú©Ù†Ù…ØŸ</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'TheBigJ', '2021-07-11 23:54:39'),
(36, ' Ù†Ø§ØµØ±ØªÙˆÛŒÛŒØŸØŸ', '<p>Ù†Ø§ØµØ± Û¸ Ù…ÛŒØ§Ø¯</p>\r\n', 'Alihji ', '2021-07-12 19:11:24'),
(40, 'Ø§Ø¬ÛŒÙ„Û²', '<p>Ø§Ø² Ø§ÙˆÙ†Ø¬Ø§ÛŒÛŒ Ú©Ù‡ Ø®ÛŒÙ„ÛŒ Ø¨Ø±Ø§ØªÙˆÙ† Ø³ÙˆØ§Ù„ Ù¾ÛŒØ´ Ø§ÙˆÙ…Ø¯Ù‡ Ø¨ÙˆØ¯ Ø§Ø¬ÛŒÙ„Ø§ Ù¾ÙˆÙ„Ø§Ø´ÙˆÙ†Ùˆ Ú©Ø¬Ø§ Ù…ÛŒØ°Ø§Ø±Ù† Ø¨Ø§ÛŒØ¯ Ø®Ø¯Ù…ØªØªÙˆÙ† Ø¹Ø±Ø¶ Ú©Ù†Ù…</p>\r\n\r\n<p>Ø¯Ø±ÙˆÙ† Ú¯Ø§ÙˆÙÙ†Ø¯Ù‚</p>\r\n', 'Zahra98', '2021-07-18 02:52:18'),
(42, 'New update released', '<p>ðŸŸ¥&nbsp;<span style=\"background-color:rgba(255, 255, 255, 0.6); color:#212529; font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;; font-size:16px\">Katy 1.1.4&nbsp;released nowwwww ðŸŸ¥</span></p>\r\n', 'mobin', '2021-07-21 10:08:42'),
(48, 'Ø¯Ø§Ø´', '<p>Ø¯Ø³ Ø®ÙˆØ´ Ø¨Ù†Ø§Ø²Ù… Ø¨Ù‡ Ø§ÛŒÙ† Ø³Ø§ÛŒØª&nbsp;</p>\r\n\r\n<p>Ù‡Ø± Ú©ÛŒ Ø§Ù… Ù…ÛŒÚ¯Ù‡ ÙˆÙ„Ø§Ú¯Ù‡ Ø§Ø² Ø­Ø³Ø§Ø¯ØªØ´Ù‡</p>\r\n', 'Mhdibezi', '2021-07-22 03:09:57'),
(49, 'Ø¢Ø²Ø§Ø¯ Ø³Ø§Ø²ÛŒ Ø³Ø§ÛŒØª', '<p>Ø§ÙˆÚ©ÛŒ Ø´Ø¯ Ù…Ø«Ú©Ù‡</p>\r\n', 'katy', '2021-07-26 20:21:01'),
(50, 'New update released', '<p><span style=\"background-color:rgba(255, 255, 255, 0.6); color:#212529; font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;; font-size:16px\">ðŸŸ¥&nbsp;</span><span style=\"background-color:rgba(255, 255, 255, 0.6); box-sizing:border-box; color:#212529; font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;; font-size:16px\">Katy 1.1.5&nbsp;released nowwwww ðŸŸ¥</span></p>\r\n\r\n<p><span style=\"background-color:rgba(255, 255, 255, 0.6); box-sizing:border-box; color:#212529; font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;; font-size:16px\">Ù‡Ù…ÛŒÙ† Ú©Ù‡ Ø³Ø§ÛŒØª&nbsp;&nbsp;Ø¯ÙˆØ¨Ø§Ø±Ù‡ Ø¨Ø§Ù„Ø§ Ø§ÙˆÙ…Ø¯ ØµÙ„ÙˆØ§Ø§Ø§Øª</span></p>\r\n', 'mobin', '2021-07-26 21:12:45'),
(51, 'Ø¢Ø²Ø§Ø¯', '<p>Ø¨Ø±Ø§ÛŒ Ø³Ù„Ø§Ù…ØªÛŒ Ø¢Ù‚Ø§ Ø§Ù…Ø§Ù… Ø²Ù…Ø§Ù† Ø§Ø¬Ù…Ø§Ø¹Ø§ ØµÙ„ÙˆØ§Øª&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'hoseinrzf', '2021-07-27 04:49:46'),
(52, 'New update released', '<p><span style=\"background-color:rgba(255, 255, 255, 0.6); box-sizing:border-box; color:#212529; font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;; font-size:16px\">&nbsp;ðŸŸ¥</span><span style=\"background-color:rgba(255, 255, 255, 0.6); box-sizing:border-box; color:#212529; font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;; font-size:16px\">Katy 1.2.1&nbsp;released nowwwww ðŸŸ¥</span></p>\r\n', 'mobin', '2021-07-31 06:45:18'),
(53, 'Ø¨Ø²', '<p>Ø®Ø¨ Ø¯ÙˆØ³ØªØ§Ù† Ø¨Ù‡ Ø¯Ù„ÛŒÙ„ Ø§Ø³ØªÙ‚Ø¨Ø§Ù„ Ø¨ÛŒÙ†Ø¸ÛŒØ± Ø´Ù…Ø§ Ù‡Ù…Ø±Ø§Ù‡Ø§Ù† Ú©ØªÛŒ ØªØ³Øª</p>\r\n\r\n<p>Ø¯Ø± Ø®Ø¯Ù…ØªØªÙˆÙ†Ù… Ø¨Ø§ ÛŒÚ© Ù¾Ø³Øª Ø¯ÛŒÚ¯Ù‡</p>\r\n\r\n<p>ØªÙˆØ§ÛŒÙ† Ù¾Ø³Øª Ø§Ø²ØªÙˆÙ† Ù…ÛŒØ®ÙˆØ§Ù… Ø¨Ú¯ÛŒØ¯ Ø§ÙˆÙ„ÛŒÙ† Ø¨Ø²ÛŒ Ú©Ù‡ Ø¯ÛŒØ§Ø¨Øª Ø¯Ø§Ø´Øª Ø§Ø³Ù…Ø´ Ú†ÛŒ Ø¨ÙˆØ¯&nbsp;</p>\r\n\r\n<p>Ù¾ÛŒØ´Ø§Ù¾ÛŒØ´ Ù…ØªØ´Ú©Ø±Ù… Ø¨Ø§Ø¨Øª Ø§ÛŒÙ†Ú©Ù‡ Ø¬ÙˆØ§Ø¨Ø§ØªÙˆÙ†Ùˆ Ø¨Ø§ Ú©ØªÛŒ Ùˆ Ú©ØªÛŒØ²Ø³ÛŒØ³ Ø¨Ù‡ Ø§Ø´ØªØ±Ø§Ú© Ù…ÛŒØ°Ø§Ø±ÛŒØ¯</p>\r\n', 'Zahra98', '2021-08-02 07:47:01'),
(59, 'ØªÙˆÙ„Ø¯', '<p>Ø¯ÙˆØ³ØªØ§Ù† Ø¹Ø²ÛŒØ²</p>\r\n\r\n<p>Ù‡Ù… Ø§Ú©Ù†ÙˆÙ† ØªÙˆÙ„Ø¯ Ø­Ø§Ø¬ÛŒØ§</p>\r\n', 'katy', '2021-08-10 12:42:10'),
(60, 'Ù‡ÛŒØ¦Øª Ù¾Ø§Ø±Ú© Ú†Ù…Ø±Ø§Ù†', '<p>Ø¢Ù‚Ø§ÛŒØ§Ù†</p>\r\n\r\n<p>Ø­Ø§Ø¬ÛŒØ§ØŒ</p>\r\n\r\n<p>Ø¨Ù‡Ø²Ø§Ø¯ÛŒØ§ØŒ</p>\r\n\r\n<p>Ù…Ø¨ÛŒÙ†</p>\r\n\r\n<p>Ù¾Ù†Ø¬ Ø´Ù†Ø¨Ù‡ Û¸ØªØ§Û±Û°Ø´Ø¨ Ù‡ÛŒØ¦Øª Ù¾Ø§Ø±Ú© Ú†Ù…Ø±Ø§Ù†&nbsp;Ù…Ù†ØªØ¸Ø±ØªÙˆÙ†ÛŒÙ…</p>\r\n', 'Zahra98', '2021-08-10 14:23:57'),
(64, 'Ding ding', '<div class=\"ckeditor-html5-audio\" style=\"text-align: center;\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/include/upload/FAFDM.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 'katy', '2021-08-26 23:19:00'),
(57, 'New update released', '<p>ðŸŸ¥Katy 2.1.1&nbsp;released nowwwww ðŸŸ¥</p>\r\n', 'mobin', '2021-08-10 10:54:49'),
(63, 'ØªÙˆÛŒÛŒØªØ± ÙˆÙˆÙ„ 2', '', 'Gabe', '2021-08-16 16:07:27'),
(62, 'Pkh', '<p>What did the shark say when he ate a clown fish?&nbsp;</p>\r\n', 'Garfield', '2021-08-14 07:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(10) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `passWord` varchar(20) NOT NULL,
  `firstName` varchar(25) NOT NULL DEFAULT 'mamad',
  `lastName` varchar(25) NOT NULL DEFAULT 'mamadi',
  `profile` varchar(50) NOT NULL DEFAULT 'default.jpg'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `userName`, `passWord`, `firstName`, `lastName`, `profile`) VALUES
(1, 'katy', '9099', 'Kian', 'Arabi', 'katy.jpg'),
(2, 'aqaFarcer', '13Kian80', 'mamad', 'Behzadi', 'aqaFarcer.gif'),
(3, 'mobin', 'mobin', 'Mobz', 'â€Œ', 'mobin.jpg'),
(4, 'Alihji', 'Hajimoon007', 'Haj', 'Ali', 'default.jpg'),
(5, 'Mhdibezi', 'Mahdib00', 'mamad', 'mamadi', 'default.jpg'),
(6, 'Zahra98', '13zahra77', 'mamad', 'mamadi', 'Zahra98.jpg'),
(15, 'nigin', '13801424', 'mamad', 'mamadi', 'default.jpg'),
(9, 'mamadhaji', '2222', 'mamad', 'mamadi', 'default.jpg'),
(12, 'GabGab', '12345', 'mamad', 'mamadi', 'default.jpg'),
(13, 'TheBigJ', 'tarantino81', 'mamad', 'mamadi', 'default.jpg'),
(17, 'hoseinrzf', 'Aa4180253925', 'haj', 'hosein', 'hoseinrzf.jpg'),
(18, 'DashAsal', 'a13811318', 'Dash', 'Asal', 'default.jpg'),
(19, 'Garfield', 'roskana9', 'R', 'R', 'Garfield.jpg'),
(20, 'Gabe', '09021182551s', 'soroush', 'P', 'default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
