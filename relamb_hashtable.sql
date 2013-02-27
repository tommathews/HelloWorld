-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 05, 2013 at 08:04 PM
-- Server version: 5.5.23
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `relamb_hashtable`
--

-- --------------------------------------------------------

--
-- Table structure for table `index8`
--
-- Creation: Dec 09, 2011 at 01:52 AM
-- Last update: Dec 09, 2011 at 02:05 AM
--

DROP TABLE IF EXISTS `index8`;
CREATE TABLE IF NOT EXISTS `index8` (
  `fact` int(3) NOT NULL COMMENT 'fact number',
  `content` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'fact content',
  `hits` bigint(20) NOT NULL,
  UNIQUE KEY `fact` (`fact`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `index8`
--

INSERT INTO `index8` (`fact`, `content`, `hits`) VALUES
(0, 'Fact #0 has no content, just a placeholder for the total hits on the link', 0),
(1, 'Signs point to yes.', 0),
(5, 'My sources say no. \r\n', 0),
(6, 'As I see it, yes. \r\n', 0),
(7, 'You may rely on it. \r\n', 0),
(8, 'Concentrate and ask again. \r\n', 0),
(9, 'Outlook not so good. \r\n', 0),
(10, 'It is decidedly so. \r\n', 0),
(11, 'Better not tell you now. \r\n', 0),
(12, 'Very doubtful. \r\n', 0),
(13, 'Yes - definitely. \r\n', 0),
(14, 'It is certain. \r\n', 0),
(15, 'Cannot predict now. \r\n', 0),
(16, 'Most likely. \r\n', 0),
(17, 'Ask again later. \r\n', 0),
(18, 'My reply is no. \r\n', 0),
(2, 'Yes. \r\n', 0),
(4, 'Without a doubt. \r\n', 0),
(3, 'Reply hazy, try again. \r\n', 0),
(19, 'Outlook good. \r\n', 0),
(20, 'Don''t count on it. ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `indexq`
--
-- Creation: Dec 07, 2011 at 09:10 PM
-- Last update: Dec 07, 2011 at 09:42 PM
--

DROP TABLE IF EXISTS `indexq`;
CREATE TABLE IF NOT EXISTS `indexq` (
  `fact` int(3) NOT NULL COMMENT 'fact number',
  `content` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'fact content',
  `hits` bigint(20) NOT NULL,
  UNIQUE KEY `fact` (`fact`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `indexq`
--

INSERT INTO `indexq` (`fact`, `content`, `hits`) VALUES
(0, 'Fact #0 has no content, just a placeholder for the total hits on the link', 0),
(1, 'A QR code (abbreviated from Quick Response code) is a type of matrix barcode (or two-dimensional code) first designed for the automotive industry. More recently, the system has become popular outside of the industry due to its fast readability and comparatively large storage capacity. The code consists of black modules arranged in a square pattern on a white background. The information encoded can be made up of any kind of data (e.g., binary, alphanumeric, or Kanji symbols).\r\n \r\nCreated by Toyota subsidiary Denso Wave in 1994 to track vehicles during the manufacturing process, the QR code is one of the most popular types of two-dimensional barcodes. It was designed to allow its contents to be decoded at high speed.', 0),
(2, 'qrKinetix was formed by an idea generated for Startup Weekend Indy, on November 19, 2011', 0),
(3, 'The rain in Spain stays mainly in the plain', 0);

-- --------------------------------------------------------

--
-- Table structure for table `qr_id_hashtable`
--
-- Creation: Jan 22, 2013 at 09:30 PM
-- Last update: Feb 06, 2013 at 12:56 AM
--

DROP TABLE IF EXISTS `qr_id_hashtable`;
CREATE TABLE IF NOT EXISTS `qr_id_hashtable` (
  `ref_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Our reference ID',
  `owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user id or email of owner',
  `bcid` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Our unique id for the barcode',
  `qr_img_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png' COMMENT 'Location of barcode image',
  `purl_url` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT 'bitly PURL for processing',
  `qrkx_url` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT 'our URL for processing',
  `dest_url` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT 'final handling program',
  `type` int(255) NOT NULL DEFAULT '0' COMMENT 'application type',
  `bcid_parent` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'parent id, if child',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'description of application',
  `short_name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `visits_forever` bigint(20) NOT NULL COMMENT 'Page Views Forever',
  `visits_since_reset` bigint(20) NOT NULL COMMENT 'Page visits since last reset',
  `last_reset` datetime NOT NULL COMMENT 'last reset date and time',
  PRIMARY KEY (`ref_id`),
  UNIQUE KEY `bcid` (`bcid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=79 ;

--
-- Dumping data for table `qr_id_hashtable`
--

INSERT INTO `qr_id_hashtable` (`ref_id`, `owner`, `bcid`, `qr_img_file`, `purl_url`, `qrkx_url`, `dest_url`, `type`, `bcid_parent`, `description`, `short_name`, `visits_forever`, `visits_since_reset`, `last_reset`) VALUES
(23, 'kim@somervilleteam.com', '1BquLu', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.IVS11V.png', 'http://0.qrkx.net/IVS11V', 'http://1.qrkx.net/?id=1BquLu', 'http://1.qrkx.net/irre/somerville/index.php', 0, '0', 'RRE Somerville 1 - 4369 N. Central Ave.  ', '', 0, 0, '0000-00-00 00:00:00'),
(21, '', '1CTkgl', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr.0.qrkx.net.ICe7EM.png', 'http://0.qrkx.net/ICe7EM', 'http://1.qrkx.net/?id=1CTkgl', 'http://1.qrkx.net/qrnotes/?id=1CTkgl', 0, '0', 'qrNotes Test', '', 0, 0, '0000-00-00 00:00:00'),
(22, '', '1i7uUu', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.ISpMQi.png', 'http://0.qrkx.net/ISpMQi', 'http://1.qrkx.net/?id=1i7uUu', 'http://1.qrkx.net/qrnotes/?id=1CTkgl', 0, '0', 'qrNotes Mobile Signup', '', 0, 0, '0000-00-00 00:00:00'),
(19, '', '999997', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png', 'http://1.qrkx.net/auto/jim/stats.php', 'http://1.qrkx.net/auto/jim/stats.php', 'http://1.qrkx.net/auto/jim/stats.php', 0, '1V7G4L', 'Jim''s Bike Stats', '', 0, 0, '0000-00-00 00:00:00'),
(20, '', '000001', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.GZclfF.png', 'http://0.qrkx.net/GZclfF', 'http://1.qrkx.net/?id=000001', 'http://www.qrkinetix.com/', 0, '0', 'qrKinetix Logo Image', '', 9, 9, '0000-00-00 00:00:00'),
(17, '', '1T7uCy', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.xmIOcq.png', 'http://0.qrkx.net/xmIOcq', 'http://1.qrkx.net/?id=1T7uCy', 'http://1.qrkx.net/auto/jim/bmw.htm', 0, '1V7G4L', 'Jim''s Bike C - Web URL', '', 0, 0, '0000-00-00 00:00:00'),
(18, '', '999998', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png', 'http://1.qrkx.net/pubs/nolans/editpage.php', 'http://1.qrkx.net/pubs/nolans/editpage.php', 'http://1.qrkx.net/pubs/nolans/editpage.php\n', 0, '1AaXGU', 'Nolans Pub Stats', '', 0, 0, '0000-00-00 00:00:00'),
(15, '', '1V7G4L', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.ACr4Cd.png', 'http://0.qrkx.net/ACr4Cd', 'http://1.qrkx.net/?id=1V7G4L', 'http://1.qrkx.net/auto/jim/bmw.htm', 0, '0', 'Jim''s Bike A - On Sign', '', 0, 0, '0000-00-00 00:00:00'),
(16, '', '1ewj2p', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.w8WFNn.png', 'http://0.qrkx.net/w8WFNn', 'http://1.qrkx.net/?id=1ewj2p', 'http://1.qrkx.net/auto/jim/bmw.htm', 0, '1V7G4L', 'Jim''s Bike B - Craigslist Picture', '', 0, 0, '0000-00-00 00:00:00'),
(13, '', '1xBu9V', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.w5mYkH.png', 'http://0.qrkx.net/w5mYkH', 'http://1.qrkx.net/?id=1xBu9V', 'http://1.qrkx.net/pubs/nolans/nolans.htm', 1, '1AaXGU', 'Nolans Pub C (Print Ads)', '', 0, 0, '0000-00-00 00:00:00'),
(14, '', '1zHZMA', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.wl0L1X.png', 'http://0.qrkx.net/wl0L1X', 'http://1.qrkx.net/?id=1zHZMA', 'http://1.qrkx.net/pubs/nolans/nolans.htm', 1, '1AaXGU', 'Nolans Pub D (Web Links)', '', 0, 0, '0000-00-00 00:00:00'),
(11, 'relamb@midtechv.com', '1AaXGU', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.zyoevn.png', 'http://0.qrkx.net/zyoevn', 'http://1.qrkx.net/?id=1AaXGU', 'http://1.qrkx.net/pubs/nolans/nolans.htm', 1, '0', 'Nolans Pub A (In House)', '', 14, 14, '0000-00-00 00:00:00'),
(12, '', '1qQesb', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.wYjoHI.png', 'http://0.qrkx.net/wYJoHI', 'http://1.qrkx.net/?id=1qQesb', 'http://1.qrkx.net/pubs/nolans/nolans.htm', 1, '1AaXGU', 'Nolans Pub B (Take Home)', '', 0, 0, '0000-00-00 00:00:00'),
(9, '', '1tXpcP', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr.0.qrkx.net.w72Pcd.png', 'http://0.qrkx.net/w72Pcd', 'http://1.qrkx.net/?id=1tXpcP', 'http://1.qrkx.net/pubs/demo/nolans.htm', 0, '0', 'Nolan''s Pub Demo', '', 0, 0, '0000-00-00 00:00:00'),
(10, '', '999999', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png', 'http://qrkx.net/tools/mobileframe.html', 'http://qrkx.net/tools/mobileframe.html', 'http://qrkx.net/tools/mobileframe.html', 0, '0', 'Test of Mobile Frame for desktop browser', '', 0, 0, '0000-00-00 00:00:00'),
(8, '', '1LN3Cy', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr.0.qrkx.net.AplNcR.png', 'http://0.qrkx.net/AplNcR', 'http://1.qrkx.net/?id=1LN3Cy', 'http://1.qrkx.net/pubs/bier/biermobile.htm', 0, '1tXpcP', 'Bier - test page for growler, child of Bier Print code', '', 0, 0, '0000-00-00 00:00:00'),
(6, '', '1US7G3', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr.0.qrkx.net.sgOp8g.png', 'http://0.qrkx.net/sgOp8g', 'http://1.qrkx.net/?id=1US7G3', 'http://sm2835.pbsmartcodes.com/test-campaign', 0, '0', 'About My Car -pbTest Campaign', '', 0, 0, '0000-00-00 00:00:00'),
(7, '', '1RcGQD', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr.0.qrkx.net.sqQLS9.png', 'http://0.qrkx.net/sqQLS9', 'http://1.qrkx.net/?id=1RcGQD', 'http://1.qrkx.net/jquery/rixtest.htm', 0, '0', 'About My Car - GMC Jimmy jquery test.', '', 0, 0, '0000-00-00 00:00:00'),
(4, '', '000000', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png', 'none', 'http://1.qrkx.net/?id=000000', 'http://1.qrkx.net/no_id.php', 0, '0', 'Error Handler for invalid bcid', '', 12, 12, '0000-00-00 00:00:00'),
(5, '', '17xkRJ', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr.0.qrkx.net.tD6NSZ.png', 'http://0.qrkx.net/tD6NSZ', 'http://1.qrkx.net/?id=17xkRJ', 'http://1.qrkx.net/8ball/shake.php', 1, '0', 'Magic 8 Ball Mug', '', 0, 0, '0000-00-00 00:00:00'),
(2, '', '1Jpc4B', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr.0.qrkx.net.upHxOd.png', 'http://0.qrkx.net/upHxOd', 'http://1.qrkx.net/?id=1Jpc4B', 'http://1.qrkx.net/qrkx/indexq.php', 1, '0', 'I love qrKinetics Mug/Logo', '', 0, 0, '0000-00-00 00:00:00'),
(3, '', '1p2xcu', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.u8ucon.png', 'http://0.qrkx.net/u8ucon', 'http://1.qrkx.net/?id=1p2xcu', 'http://1.qrkx.net/getjob/indexj.php', 1, '0', 'Get a JOB! Mug', '', 0, 0, '0000-00-00 00:00:00'),
(1, '', '1uNjbc', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr.0.qrkx.net.uRaGXR.png', 'http://0.qrkx.net/uRaGXR', 'http://1.qrkx.net/?id=1uNjbc ', 'http://1.qrkx.net/psalms/indexv.php', 1, '0', 'I love Psalms Mug', '', 1, 1, '2013-01-12 00:00:00'),
(64, 'fred@midtechv.com', '1IEjtB', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png', 'http://0.qrkx.net/KoISN2\n', 'http://1.qrkx.net/?id=1IEjtB', 'http://1.qrkx.net/auto/chrisCamry/car.htm', 5, '0', 'Chris Car Weblink', 'Camry Weblink', 0, 0, '0000-00-00 00:00:00'),
(63, 'fred@midtechv.com', '1VQhmr', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png', 'http://0.qrkx.net/KoAwoT\n', 'http://1.qrkx.net/?id=1VQhmr', 'http://1.qrkx.net/auto/chrisCamry/car.htm', 5, '0', 'Chris Camry for sale', 'Chris Camry', 0, 0, '0000-00-00 00:00:00'),
(65, 'fred@midtechv.com', '1rKdYd', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png', 'http://0.qrkx.net/KoKPcn\n', 'http://1.qrkx.net/?id=1rKdYd', 'http://1.qrkx.net/auto/chrisCamry/stats.php', 5, '0', 'Chris Camry Stats', 'Camry Stats', 0, 0, '0000-00-00 00:00:00'),
(69, 'fred@midtechv.com', '1NnxFB', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.KoRkfe.png\n', 'http://0.qrkx.net/KoRkfe\n', 'http://1.qrkx.net/?id=1NnxFB', 'http://1.qrkx.net/elect/reskeforcongress', 5, '0', 'Reske for Congress', 'Reske 4 Cngrss', 0, 0, '0000-00-00 00:00:00'),
(70, 'fred@midtechv.com', '1Svhmi', 'http://1.qrkx.net/qrcodes/qr.0.qrkx.net.oUBv8\n.png', 'http://0.qrkx.net/KoUBv8\n', 'http://1.qrkx.net/?id=1Svhmi', 'http://1.qrkx.net/elect/reskeforcongress', 5, '0', 'Campaign Kinetix button art', '', 0, 0, '0000-00-00 00:00:00'),
(71, 'fred@midtechv.com', '1VG8HR', 'http://1.qrkx.net/qrcodes/qr.0.qrkx.net.oUOOS.png', 'http://0.qrkx.net/KoUOOS\n', 'http://1.qrkx.net/?id=1VG8HR', 'http://1.qrkx.net/qrnotes/?id=1VG8HR', 5, '0', 'qrNote:qrnotes_signup.php', '', 0, 0, '0000-00-00 00:00:00'),
(72, 'fred@midtechv.com', '115sws', 'http://1.qrkx.net/qrcodes/qr.0.qrkx.net.R0URjJ.png', 'http://0.qrkx.net/R0URjJ', 'http://1.qrkx.net/?id=115sws', 'http://1.qrkx.net/elect/carlosmay2012/', 5, '0', 'Carlos May Campaign', 'Carlos May Cmpgn', 0, 0, '0000-00-00 00:00:00'),
(24, 'gdavis@nitromojo.com', '1GfSXy', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.WVBcKU.png', 'http://0.qrkx.net/WVBcKU', 'http://1.qrkx.net/?id=1GfSXy', 'http://0.qrkx.net/SFQXhQ', 0, '0', 'RRE Garry Davis House', '', 0, 0, '0000-00-00 00:00:00'),
(25, 'kim@somervilleteam.com', '1SHieE', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.Wh3Pfu.png', 'http://0.qrkx.net/Wh3Pfu', 'http://1.qrkx.net/?id=1SHieE', 'http://1.qrkx.net/irre/somerville2/index.php', 0, '0', 'RRE Somerville 2 - 1121 Alimingo   ', '', 6, 6, '0000-00-00 00:00:00'),
(26, 'kim@somervilleteam.com', '1VyGLQ', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.SKJKNe.png', 'http://0.qrkx.net/SKJKNe', 'http://1.qrkx.net/?id=1VyGLQ', 'http://1.qrkx.net/irre/somerville3/index.php', 0, '0', 'RRE Somerville 3 - 5662 N. Delaware ST ', '', 8, 8, '0000-00-00 00:00:00'),
(27, 'kim@somervilleteam.com', '1CxtJt', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.UbpR5F.png', 'http://0.qrkx.net/UbpR5F', 'http://1.qrkx.net/?id=1CxtJt', 'http://1.qrkx.net/irre/somerville4/index.php', 0, '0', 'RRE Somerville 4 - 6051 N. Central Ave.', '', 4, 4, '0000-00-00 00:00:00'),
(28, 'kim@somervilleteam.com', '1ud5V5', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.T80VJp.png', 'http://0.qrkx.net/T80VJp', 'http://1.qrkx.net/?id=1ud5V5', 'http://1.qrkx.net/irre/somerville5/index.php', 0, '0', 'RRE Somerville 5 - 3925 N. Pennsylvania St.', '', 8, 8, '0000-00-00 00:00:00'),
(29, 'sales@qrkinetix.com', '1mk48D', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.Qjy1Zr.png', 'http://0.qrkx.net/Qjy1Zr', 'http://1.qrkx.net/?id=1mk48D', 'http://1.qrkx.net/qrnotes/?id=', 0, '0', 'RRE_Unassigned 1', '', 0, 0, '0000-00-00 00:00:00'),
(30, 'sales@qrkinetix.com', '1YGXch', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.TkyEiS.png', 'http://0.qrkx.net/TkyEiS', 'http://1.qrkx.net/?id=1YGXch', 'http://1.qrkx.net/qrnotes/?id=', 0, '0', 'RRE_Unassigned 2', '', 0, 0, '0000-00-00 00:00:00'),
(31, 'sales@qrkinetix.com', '1ZyGKQ', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.XSsSMt.png', 'http://0.qrkx.net/XSsSMt', 'http://1.qrkx.net/?id=1ZyGKQ', 'http://1.qrkx.net/qrnotes/?id=', 0, '0', 'RRE_Unassigned 3', '', 0, 0, '0000-00-00 00:00:00'),
(32, 'sales@qrkinetix.com', '1kUQU4', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.TeHC0C.png', 'http://0.qrkx.net/TeHC0C', 'http://1.qrkx.net/?id=1kUQU4', 'http://1.qrkx.net/qrnotes/?id=', 0, '0', 'RRE_Unassigned 4', '', 0, 0, '0000-00-00 00:00:00'),
(33, 'sales@qrkinetix.com', '1Clhmr', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.TeIBy0.png', 'http://0.qrkx.net/TeIBy0', 'http://1.qrkx.net/?id=1Clhmr', 'http://1.qrkx.net/qrnotes/?id=', 0, '0', 'RRE_Unassigned 6', '', 0, 0, '0000-00-00 00:00:00'),
(34, 'sales@qrkinetix.com', '1KNBcC', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.QEO4T0.png', 'http://0.qrkx.net/QEO4T0', 'http://1.qrkx.net/?id=1KNBcC', 'http://1.qrkx.net/qrnotes/?id=', 0, '0', 'RRE_Unassigned 5', '', 1, 1, '0000-00-00 00:00:00'),
(73, 'relamb@midtechv.com', '1QkC8C', 'http://1.qrkx.net/qrcodes/qr.0.qrkx.net.VyDVe\n.png', 'http://0.qrkx.net/SVyDVe\n', 'http://1.qrkx.net/?id=1QkC8C', 'http://1.qrkx.net/qrnotes/?id=1QkC8C', 5, '0', 'qrNote:qrnotes_signup.php', '', 0, 0, '0000-00-00 00:00:00'),
(74, 'relamb@midtechv.com', '1xwjJj', 'http://1.qrkx.net/qrcodes/qr.0.qrkx.net.Vz0iE\n.png', 'http://0.qrkx.net/SVz0iE\n', 'http://1.qrkx.net/?id=1xwjJj', 'http://1.qrkx.net/qrnotes/?id=1xwjJj', 5, '0', 'qrNote:qrnotes_signup.php', '', 0, 0, '0000-00-00 00:00:00'),
(75, 'relamb@midtechv.com', '1g6PJu', 'http://1.qrkx.net/qrcodes/qr.0.qrkx.net.Vz0iH\n.png', 'http://0.qrkx.net/SVz0iH\n', 'http://1.qrkx.net/?id=1g6PJu', 'http://1.qrkx.net/qrnotes/?id=1g6PJu', 5, '0', 'qrNote:qrnotes_signup.php', '', 0, 0, '0000-00-00 00:00:00'),
(76, 'relamb@midtechv.com', '1BjW6B', 'http://1.qrkx.net/qrcodes/qr.0.qrkx.net.UZ6aJ\n.png', 'http://0.qrkx.net/ZUZ6aJ\n', 'http://1.qrkx.net/?id=1BjW6B', 'http://1.qrkx.net/qrnotes/?id=1BjW6B', 5, '0', 'qrNote:qrnotes_signup.php', '', 0, 0, '0000-00-00 00:00:00'),
(35, 'relamb@midtechv.com', '1Cp7f7', 'http://1.qrkx.net/qrcodes/qr0.qrkx.net.10PnTw5.png', 'http://0.qrkx.net/10PnTw5', 'http://1.qrkx.net/?id=1Cp7f7', 'http://1.qrkx.net/qrnotes/?id=1Cp7f7', 5, '0', 'Mitm Trade Show Lead Capture', '', 1, 1, '0000-00-00 00:00:00'),
(36, 'relamb@midtechv.com', '1zcYy4', 'http://1.qrkx.net/qrcodes/qr0.qrkx.net.UXbbap.png', 'http://0.qrkx.net/UXbbap', 'http://1.qrkx.net/?id=1zcYy4', 'http://1.qrkx.net/qrnotes/?id=1zcYy4', 5, '0', 'Signarama Carmel 6 qrNote Test', 'qrNote Test', 0, 0, '0000-00-00 00:00:00'),
(37, 'relamb@midtechv.com', '13g8Cl', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.Ui6Mhi.png', 'http://0.qrkx.net/Ui6Mhi', 'http://1.qrkx.net/?id=13g8Cl', 'http://1.qrkx.net/signarama/SCtest.htm', 5, '0', 'Signarama Carmel Code 1 - Outside Door', 'Outside Door', 4, 4, '0000-00-00 00:00:00'),
(38, 'relamb@midtechv.com', '1DKcg8', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.Vbky6w.png', 'http://0.qrkx.net/Vbky6w', 'http://1.qrkx.net/?id=1DKcg8', 'http://1.qrkx.net/signarama/SCtest.htm', 5, '0', 'Signarama Carmel Code 2 - Travis Car', 'Travis Car', 0, 0, '0000-00-00 00:00:00'),
(39, 'relamb@midtechv.com', '1eJNxN', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.UZDqEp.png', 'http://0.qrkx.net/UZDqEp', 'http://1.qrkx.net/?id=1eJNxN', 'http://1.qrkx.net/signarama/SCtest.htm', 5, '0', 'Signarama Carmel Code 3 - Joel Car', 'Joel Car', 0, 0, '0000-00-00 00:00:00'),
(40, 'relamb@midtechv.com', '1Hw1wW', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.11vezOi.png', 'http://0.qrkx.net/11vezOi', 'http://1.qrkx.net/?id=1Hw1wW', 'http://1.qrkx.net/signarama/SCtest.htm', 5, '0', 'Signarama Carmel Code 4 - Biz Cards', 'Biz Cards', 1, 1, '0000-00-00 00:00:00'),
(41, 'relamb@midtechv.com', '1bNTYU', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.W4HAKx.png', 'http://0.qrkx.net/W4HAKx', 'http://1.qrkx.net/?id=1bNTYU', 'http://1.qrkx.net/signarama/SCtest.htm', 5, '0', 'Signarama Carmel Code 5 - Front Table', 'Front Table', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `qr_id_rawpool`
--
-- Creation: Apr 12, 2012 at 12:30 AM
-- Last update: Jan 14, 2013 at 07:57 PM
--

DROP TABLE IF EXISTS `qr_id_rawpool`;
CREATE TABLE IF NOT EXISTS `qr_id_rawpool` (
  `seq_num` double NOT NULL COMMENT 'numerical assignment for a batch of codes',
  `issued` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'True if code issued/published/printed',
  `bcid` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Our unique id for the barcode',
  `password` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `qr_img_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png' COMMENT 'Location of barcode image',
  `purl` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT 'bitly PURL for processing',
  `qrkx_url` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT 'our URL for processing',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'application type',
  `subtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'subtype of type',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'description of application'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qr_id_rawpool`
--

INSERT INTO `qr_id_rawpool` (`seq_num`, `issued`, `bcid`, `password`, `qr_img_file`, `purl`, `qrkx_url`, `type`, `subtype`, `description`) VALUES
(0, 0, '1DKcg8', 'gC8hmr', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png', '', 'http://1.qrkx.net/?id=1DKcg8', '', '', ''),
(0, 0, '1eJNxN', 'SFpPKP', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png', '', 'http://1.qrkx.net/?id=1eJNxN', '', '', ''),
(0, 0, '1Hw1wW', 'hrRWaW', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png', '', 'http://1.qrkx.net/?id=1Hw1wW', '', '', ''),
(0, 0, '1bNTYU', 'Nfkgkq', 'http://qrkinetix.com/vhosts/1.qrkx.net/qrcodes/qr0.qrkx.net.none.png', '', 'http://1.qrkx.net/?id=1bNTYU', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `type_code`
--
-- Creation: Dec 26, 2011 at 08:23 PM
-- Last update: Dec 26, 2011 at 09:49 PM
--

DROP TABLE IF EXISTS `type_code`;
CREATE TABLE IF NOT EXISTS `type_code` (
  `type` int(255) NOT NULL COMMENT 'Application Type',
  `subtype` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Application Subtype',
  `case_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `example` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `case_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `managed_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `associations` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `analytics` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Application Types and Subtypes';

--
-- Dumping data for table `type_code`
--

INSERT INTO `type_code` (`type`, `subtype`, `case_name`, `example`, `case_description`, `content`, `managed_by`, `associations`, `analytics`) VALUES
(0, '', 'Unknown/Error', 'Unassigned code or error', 'bad code id, send to error handler', 'None, alert an error', 'qrK', '1', 'qrK use only'),
(1, '', 'Mass Mug', 'I {heart} Psalms, Get a Job!', '(1) code per mug, 1000''s of copies', 'Fixed Results', 'qrK', '1to1', 'qrK use only'),
(2, '', 'Group Mug', 'I {heart} My Church', '(1) code per group, 100''s copies per group, 1000''s of groups', 'Custom content, per group', 'Group Manager', '1to1', 'basics by qrK, web metrics to Group Mgr'),
(3, '', 'Me Mug', 'Facelet Bracelet,Store Window Sticker, For Sale Sign', '(1) code per individual, 10,000''s of individiduals', 'Customizable qrK landing page or refferrer to other content', 'individual owner', '1to1', 'basics provided to user by qrK'),
(4, '', 'Association Mug', 'Ft Wayne Merchants Association', 'Combination of Group Mug and individual stickers', 'Central Content, bi-directional links to individual content', 'Group Manager for Central, Individual mangement for individual submugs', '1 group mug to many submugs', 'Basics by qrK to group and individuals, plus their own web metrics');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
