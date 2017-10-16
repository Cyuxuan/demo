-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-10-14 12:14:04
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gweb_info`
--

-- --------------------------------------------------------

--
-- 表的结构 `android_info`
--

CREATE TABLE `android_info` (
  `img_name` char(32) DEFAULT NULL,
  `img_text` char(20) DEFAULT NULL,
  `img_describe` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `android_info`
--

INSERT INTO `android_info` (`img_name`, `img_text`, `img_describe`) VALUES
('zhizunbao.png', '安卓1', '描述性文字'),
('zhizunbao.png', '安卓1', '描述性文字'),
('zhizunbao.png', '安卓2', '描述性文字'),
('zhizunbao.png', '安卓2', '描述性文字'),
('zhizunbao.png', '安卓3', '描述性文字'),
('zhizunbao.png', '安卓4', '描述性文字');

-- --------------------------------------------------------

--
-- 表的结构 `bimg_info`
--

CREATE TABLE `bimg_info` (
  `img_name` char(32) DEFAULT NULL,
  `img_text` char(20) DEFAULT NULL,
  `img_describe` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bimg_info`
--

INSERT INTO `bimg_info` (`img_name`, `img_text`, `img_describe`) VALUES
('Hello.jpg', 'Hello world1', '描述性文字'),
('Hello.jpg', 'Hello world1', '描述性文字');

-- --------------------------------------------------------

--
-- 表的结构 `img_info`
--

CREATE TABLE `img_info` (
  `img_text` char(32) DEFAULT NULL,
  `img_name` char(20) DEFAULT NULL,
  `img_describe` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `img_info`
--

INSERT INTO `img_info` (`img_text`, `img_name`, `img_describe`) VALUES
('至尊宝', 'zhizunbao.png', '描述性文字'),
('Hello World', 'Hello.jpg', '描述性文字'),
('123123123', 'zhizunbao.png', '描述性文字'),
('测试测试', 'zhizunbao.png', '描述性文字');

-- --------------------------------------------------------

--
-- 表的结构 `ios_info`
--

CREATE TABLE `ios_info` (
  `img_name` char(32) DEFAULT NULL,
  `img_text` char(20) DEFAULT NULL,
  `img_describe` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ios_info`
--

INSERT INTO `ios_info` (`img_name`, `img_text`, `img_describe`) VALUES
('zhizunbao.png', 'IOS1', '描述性文字'),
('zhizunbao.png', 'IOS1', '描述性文字'),
('zhizunbao.png', 'IOS2', '描述性文字'),
('zhizunbao.png', 'IOS3', '描述性文字'),
('zhizunbao.png', 'IOS4', '描述性文字');

-- --------------------------------------------------------

--
-- 表的结构 `pcweb_info`
--

CREATE TABLE `pcweb_info` (
  `img_name` char(32) DEFAULT NULL,
  `img_text` char(20) DEFAULT NULL,
  `img_describe` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pcweb_info`
--

INSERT INTO `pcweb_info` (`img_name`, `img_text`, `img_describe`) VALUES
('zhizunbao.png', 'PCweb1', '描述性文字'),
('zhizunbao.png', 'PCweb1', '描述性文字'),
('zhizunbao.png', 'PCweb2', '描述性文字'),
('zhizunbao.png', 'PCweb3', '描述性文字'),
('zhizunbao.png', 'PCweb4', '描述性文字');

-- --------------------------------------------------------

--
-- 表的结构 `style`
--

CREATE TABLE `style` (
  `style_name` char(32) NOT NULL,
  `style` char(32) NOT NULL,
  `class_name` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `style`
--

INSERT INTO `style` (`style_name`, `style`, `class_name`) VALUES
('backgroundColor', 'blue', 'project_mode_div'),
('height', '250px', 'project_mode_div');

-- --------------------------------------------------------

--
-- 表的结构 `wechat_info`
--

CREATE TABLE `wechat_info` (
  `img_name` char(32) DEFAULT NULL,
  `img_text` char(20) DEFAULT NULL,
  `img_describe` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wechat_info`
--

INSERT INTO `wechat_info` (`img_name`, `img_text`, `img_describe`) VALUES
('zhizunbao.png', 'wechat1', '描述性文字'),
('zhizunbao.png', 'wechat1', '描述性文字'),
('zhizunbao.png', 'wechat2', '描述性文字'),
('zhizunbao.png', 'wechat3', '描述性文字'),
('zhizunbao.png', 'wechat4', '描述性文字');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`style_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
