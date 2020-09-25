-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2020 at 06:51 AM
-- Server version: 10.1.43-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pasar_dbfresh`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'Afsri', 'Ramayani', '', 'Kapalo Koto', '', 'Padang', '', 100, 1534, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'VAciJPDlWQVrK11G3v4GkqhSCLxrEck0Eoukd1brNzMm84VN4WACDQTcr5xPx46BH8Od3kD5SMEr2BXNryKOakSnl8stZvU0fHq6sYvKcQ0KMFa2LNtfGga8wLURD06pvQH2pp5kRisXxouLc7tRKEyv804iyFErhesA9rZmZmCvqKYVq8WQHRKFSA7ux06N3aGAZydB1w3O82tgMVj7w2XXtXqoFCVAKPJLHRs2xtHg9Z37TsoRUYcl5nZ7SkEZ', 1, '2020-08-01 01:43:30', '2020-08-08 14:07:39'),
(3, 'loginApi', 'n05EgcUqyauA1lXrSyrlk2gwItdMQjoB8aAZEhsWAhSR0wmBZf6jK1xwyKkL2uPHgfhPCWHS2PTVkwoiTOvqRLpzn7ZqpoqYSd0cpmdzP8ZqAkHo1IVVC1sVNSvpbE1TJKRoEtCU6HrJWHuqrPu8exDjspvxrfQHgsJF4J2BflAufN0ShvlYrb3EWYuatZdBS5wTIexttxdZpms4FLqQFLbaqi3vqY8gTi6Kfj11ZdjvnOdpZrCZtSYA7avQHdJS', 1, '2020-08-08 13:40:45', '2020-08-08 14:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(31, 1, '114.125.42.100'),
(30, 1, '182.1.53.101'),
(29, 1, '114.125.53.74'),
(28, 1, '114.125.53.118'),
(23, 2, '114.125.58.208'),
(32, 1, '114.125.42.80'),
(36, 3, '114.125.58.72');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(9, 3, 'e5e7f93152c98a6fb2cc745769', '114.125.58.72', '2020-08-08 14:10:36', '2020-08-08 14:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(7, 'Home Page Slideshow', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(135, 7, 2, 'Daging', '', 'catalog/Banner/dagingikan.jpg', 0),
(136, 7, 2, 'freshfood', '', 'catalog/Banner/ff.jpg', 0),
(137, 7, 2, 'Sayuran', '', 'catalog/Banner/buah.jpg', 0),
(134, 7, 1, 'Sayuran', '', 'catalog/Banner/buah.jpg', 0),
(133, 7, 1, 'freshfood', '', 'catalog/Banner/ff.jpg', 0),
(132, 7, 1, 'Daging', '', 'catalog/Banner/dagingikan.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'catalog/Categories/ikandaging.jpg', 0, 1, 1, 2, 1, '2009-01-31 01:04:25', '2020-08-01 03:36:53'),
(20, 'catalog/Categories/sayur.jpeg', 0, 1, 1, 3, 1, '2009-01-05 21:49:43', '2020-08-01 05:37:06'),
(33, 'catalog/Categories/ff.jpg', 0, 1, 1, 1, 1, '2009-02-03 14:17:55', '2020-08-01 03:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(33, 1, 'Frozen Food', '&lt;p&gt;&lt;b style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;Frozen Food&lt;/b&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;adalah olahan makanan setengah matang yang dikemas dan dibekukan untuk diolah kembali dengan cara memanaskannya.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Frozen Food', 'Olahan makanan setengah matang yang terbaru dang berbagai varian!', ''),
(33, 2, 'Frozen Food', '&lt;p&gt;&lt;b style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;Frozen Food&lt;/b&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;adalah olahan makanan setengah matang yang dikemas dan dibekukan untuk diolah kembali dengan cara memanaskannya.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Frozen Food', 'Olahan makanan setengah matang yang terbaru dang berbagai varian!', ''),
(25, 1, 'Fish &amp; Meat', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;Ikan dan daging adalah salah satu jenis&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;makanan sumber&lt;/span&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;protein hewani yang sangat kaya akan kandungan nutrisi di dalamnya.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Fish &amp; Meat', 'Ikan dan Daging segar dengar harga termurah!', ''),
(25, 2, 'Fish &amp; Meat', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;Ikan dan daging adalah salah satu jenis&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;makanan sumber&lt;/span&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;protein hewani yang sangat kaya akan kandungan nutrisi di dalamnya.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Fish &amp; Meat', 'Ikan dan Daging segar dengar harga termurah!', ''),
(20, 2, 'Fruit &amp; Vegetable', '&lt;p&gt;&lt;span style=&quot;color: rgb(42, 42, 42); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 17px;&quot;&gt;Sayur dan buah merupakan dua hal yang tidak bisa terpisahkan. Keduanya mengandung vitamin dan mineral, serta serat yang dibutuhkan tubuh setiap hari. Beberapa vitamin dan mineral penting yang terkandung dalam sayur dan buah adalah vitamin A, vitamin C, vitamin E, magnesium, seng, kalium, fosfor, dan asam folat. Kandungan-kandungan ini tentu dapat memenuhi kebutuhan nutrisi Anda, yang juga berguna untuk mencegah berbagai macam penyakit.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Fruit &amp; Vegetable', 'Menyediakan buah dan sayur segar langsung dari kebunnya!', ''),
(20, 1, 'Fruit &amp; Vegetable', '&lt;p&gt;&lt;span style=&quot;color: rgb(42, 42, 42); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 17px;&quot;&gt;Sayur dan buah merupakan dua hal yang tidak bisa terpisahkan. Keduanya mengandung vitamin dan mineral, serta serat yang dibutuhkan tubuh setiap hari. Beberapa vitamin dan mineral penting yang terkandung dalam sayur dan buah adalah vitamin A, vitamin C, vitamin E, magnesium, seng, kalium, fosfor, dan asam folat. Kandungan-kandungan ini tentu dapat memenuhi kebutuhan nutrisi Anda, yang juga berguna untuk mencegah berbagai macam penyakit.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Fruit &amp; Vegetable', 'Menyediakan buah dan sayur segar langsung dari kebunnya!', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(20, 20, 0),
(33, 33, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(33, 0, 3),
(25, 0, 3),
(20, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(20, 0),
(25, 0),
(33, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00'),
(4, 'Rupiah', 'IDR', 'Rp ', '', '0', 1.00000000, 1, '2020-08-08 13:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 2, 'Afsri', 'Ramayani', 'ramayaniafsri@gmail.com', '081267597033', '', '650005f1e8e46f91532bf7d1d410d0bcf530f30c', 'wkAV1JqFI', NULL, NULL, 0, 1, '', '182.1.53.101', 1, 0, '', '', '2020-08-05 08:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '182.1.53.101', '2020-08-05 08:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_online`
--

INSERT INTO `oc_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('66.249.79.142', 0, 'http://pasarrayaonline.com/index.php?af81c6ABAyfXVe207c_uq-m0801c_uq-miaiPEJtfL97c60.xin', '', '2020-08-09 06:44:31'),
('66.249.79.140', 0, 'http://pasarrayaonline.com/index.php?48fe02LgEfPZxnve207c_uq-mf5d0c_uq-mkteGjRVisJZ96cad', '', '2020-08-09 06:25:36'),
('66.249.79.158', 0, 'https://pasarrayaonline.com/buah-sayur/kangkung?limit=25', '', '2020-08-09 06:00:58'),
('66.249.79.144', 0, 'http://pasarrayaonline.com/image/cache/catalog/demo/ipod_touch_2-74x74.jpg', '', '2020-08-09 06:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_category`
--

CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product`
--

CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_googleshopping_product`
--

INSERT INTO `oc_googleshopping_product` (`product_advertise_google_id`, `product_id`, `store_id`, `has_issues`, `destination_status`, `impressions`, `clicks`, `conversions`, `cost`, `conversion_value`, `google_product_category`, `condition`, `adult`, `multipack`, `is_bundle`, `age_group`, `color`, `gender`, `size_type`, `size_system`, `size`, `is_modified`) VALUES
(1, 50, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 51, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 52, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 53, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 54, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 55, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 56, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 57, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 58, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 59, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 60, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 61, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 62, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 63, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 64, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 65, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 66, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 67, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 68, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 69, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product_status`
--

CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product_target`
--

CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_target`
--

CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(4, 1, 'About Us', '&lt;p&gt;\r\n	Fresh Food Padang adalah suatu unit yang menjual kebutuhan sehari-hari secara online. produk yang dijual ada makanan segar yang didapat langsung dari berbagai pemasok yang telah bekerjasama dengan pihak fresh food. Pesanan Anda kami kemas dengan rapi dan steril. Anda bisa mendapatkan kebutuhan sehari-hari yang segar tanpa harus ke pasar tradisional.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Hanya dengan duduk santai dirumah saja dan pesan melalui kami, pesanan Anda siap kami kemas dan antar ketujuan atau jemput ke lokasi kami.&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size: 18px;&quot;&gt;Pesan dan bayar sebelum jam 6 sore maka akan diantar besok sesuai antrian. &lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 2, 'Tentang Kami', '&lt;p&gt;Fresh Food Padang adalah suatu unit yang menjual kebutuhan sehari-hari secara online. produk yang dijual ada makanan segar yang didapat langsung dari berbagai pemasok yang telah bekerjasama dengan pihak fresh food. Pesanan Anda kami kemas dengan rapi dan steril. Anda bisa mendapatkan kebutuhan sehari-hari yang segar tanpa harus ke pasar tradisional.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Hanya dengan duduk santai dirumah saja dan pesan melalui kami, pesanan Anda siap kami kemas dan antar ketujuan atau jemput ke lokasi kami.&lt;/p&gt;\r\n', 'Tentang Kami', '', ''),
(6, 2, 'Informasi pengiriman', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Pesan dan bayar sebelum jam 6 sore maka akan diantar besok sesuai antrian.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Informasi pengiriman', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Bahasa Indonesia', 'id-id', 'id_ID.UTF-8,id_ID,id-id,id_id,indonesia', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(75, 1, 'featured.32', 'content_top', 2),
(74, 1, 'slideshow.27', 'content_top', 1),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2),
(76, 1, 'carousel.29', 'content_top', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(54, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(7, 'Fruit &amp; Vegetable', 'catalog/Categories/sayur.jpeg', 3),
(8, 'Frozen Food', 'catalog/Categories/ff.jpg', 1),
(9, 'Fish &amp; Meat', 'catalog/Categories/ikandaging.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(7, 0),
(8, 0),
(9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, 'HomeProduct', 'featured', '{\"name\":\"HomeProduct\",\"product_name\":\"\",\"product\":[\"30\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\"],\"limit\":\"8\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2020-00', 0, 'Fresh Food Padang', 'https://pasarrayaonline.com/', 1, 1, 'Afsri', 'Ramayani', 'ramayaniafsri@gmail.com', '081267597033', '', '', 'Afsri', 'Ramayani', '', 'Kapalo Koto', '', 'Padang', '', 'Indonesia', 100, 'Sumatera Barat', 1534, '', '[]', 'Cash On Delivery', 'cod', 'Afsri', 'Ramayani', '', 'Kapalo Koto', '', 'Padang', '', 'Indonesia', 100, 'Sumatera Barat', 1534, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '60005.0000', 1, 0, '0.0000', 0, '', 1, 4, 'IDR', '1.00000000', '182.1.53.101', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', 'id,id-ID;q=0.9,en-US;q=0.8,en;q=0.7', '2020-08-05 08:16:34', '2020-08-05 08:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2020-08-05 08:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 53, 'Ikan Tongkol (500gr)', 'Tongkol', 1, '35000.0000', '35000.0000', '0.0000', 15),
(2, 1, 54, 'Cumi-cumi (100gr)', 'Cumi', 1, '25000.0000', '25000.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '60000.0000', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'total', 'Total', '60005.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(66, 'Risol', '', '', '', '', '', '', '', 15, 5, 'catalog/Product/risol.jpg', 8, 1, '20000.0000', 0, 0, '2020-08-01', '250.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 12, '2020-08-01 13:51:19', '2020-08-01 13:51:19'),
(64, 'Pepaya', '', '', '', '', '', '', '', 15, 5, 'catalog/Product/pepaya.jpg', 7, 1, '10000.0000', 0, 0, '2020-08-01', '300.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 9, '2020-08-01 13:31:15', '2020-08-01 13:31:15'),
(30, 'Nugget', '', '', '', '', '', '', '', 20, 5, 'catalog/Product/nugget.jpg', 8, 1, '20000.0000', 0, 0, '2020-07-31', '100.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 16, '2009-02-03 16:59:00', '2020-08-01 05:32:47'),
(65, 'Pisang', '', '', '', '', '', '', '', 10, 5, 'catalog/Product/pisang.png', 7, 1, '15000.0000', 0, 0, '2020-08-01', '500.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 10, '2020-08-01 13:39:37', '2020-08-01 13:39:37'),
(58, 'BaksoAyam', '', '', '', '', '', '', '', 15, 5, 'catalog/Product/bakso ayam.jpg', 8, 1, '35000.0000', 0, 0, '2020-08-01', '500.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 11, '2020-08-01 12:38:04', '2020-08-01 12:38:04'),
(59, 'BaksoSapi', '', '', '', '', '', '', '', 10, 5, 'catalog/Product/bakso sapi.jpg', 8, 1, '45000.0000', 0, 0, '2020-08-01', '500.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 10, '2020-08-01 12:43:20', '2020-08-01 12:43:20'),
(60, 'Brokoli', '', '', '', '', '', '', '', 15, 5, 'catalog/Product/brokoli.jpg', 7, 1, '15000.0000', 0, 0, '2020-08-01', '250.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 11, '2020-08-01 12:46:43', '2020-08-01 12:46:43'),
(61, 'Tuna', '', '', '', '', '', '', '', 15, 5, 'catalog/Product/ikan tuna.jpg', 9, 1, '15000.0000', 0, 0, '2020-08-01', '250.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 13, '2020-08-01 12:50:40', '2020-08-01 12:50:40'),
(62, 'JerukManis', '', '', '', '', '', '', '', 15, 5, 'catalog/Product/jeruk.jpeg', 7, 1, '0.0000', 0, 0, '2020-08-01', '500.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 10, '2020-08-01 12:53:03', '2020-08-01 12:53:03'),
(63, 'Kepiting', '', '', '', '', '', '', '', 10, 5, 'catalog/Product/kepiting_segar.jpg', 9, 1, '75000.0000', 0, 0, '2020-08-01', '500.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 7, '2020-08-01 13:27:40', '2020-08-01 13:27:40'),
(50, 'Alpukat', '', '', '', '', '', '', '', 50, 5, 'catalog/Product/alpukat.jpg', 7, 1, '33000.0000', 0, 0, '2020-07-31', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 24, '2020-08-01 07:14:14', '2020-08-01 07:34:10'),
(51, 'Kangkung', '', '', '', '', '', '', '', 20, 5, 'catalog/Product/kangkung.jpg', 7, 1, '3000.0000', 0, 0, '2020-08-01', '100.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 22, '2020-08-01 07:24:45', '2020-08-01 07:34:43'),
(52, 'Rendang', '', '', '', '', '', '', '', 10, 5, 'catalog/Product/sapi.jpg', 9, 1, '60000.0000', 0, 0, '2020-08-01', '500.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 14, '2020-08-01 07:33:41', '2020-08-01 07:33:41'),
(53, 'Tongkol', '', '', '', '', '', '', '', 9, 7, 'catalog/Product/ikantongkol.jpg', 9, 1, '35000.0000', 0, 0, '2020-08-01', '500.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 16, '2020-08-01 12:06:17', '2020-08-01 12:06:17'),
(54, 'Cumi', '', '', '', '', '', '', '', 9, 7, 'catalog/Product/cumi.jpg', 9, 1, '25000.0000', 0, 0, '2020-08-01', '100.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 12, '2020-08-01 12:09:32', '2020-08-01 12:09:32'),
(55, 'Kol', '', '', '', '', '', '', '', 10, 7, 'catalog/Product/kolll.jpg', 7, 1, '5000.0000', 0, 0, '2020-08-01', '100.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 10, '2020-08-01 12:16:54', '2020-08-01 12:16:54'),
(56, 'Naga', '', '', '', '', '', '', '', 15, 7, 'catalog/Product/buah naga.jpg', 7, 1, '30000.0000', 0, 0, '2020-08-01', '100.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 12, '2020-08-01 12:20:07', '2020-08-01 12:20:07'),
(57, 'Ayam', '', '', '', '', '', '', '', 10, 5, 'catalog/Product/ayam.jpg', 9, 1, '45000.0000', 0, 0, '2020-08-01', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 11, '2020-08-01 12:26:33', '2020-08-01 12:26:33'),
(67, 'Sawi', '', '', '', '', '', '', '', 10, 5, 'catalog/Product/sawi putih.jpg', 7, 1, '8000.0000', 0, 0, '2020-08-01', '250.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 9, '2020-08-01 14:04:44', '2020-08-01 14:04:44'),
(68, 'Somay', '', '', '', '', '', '', '', 10, 5, 'catalog/Product/somay.jpg', 8, 1, '30000.0000', 0, 0, '2020-08-01', '500.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 11, '2020-08-01 14:11:26', '2020-08-01 14:11:26'),
(69, 'Sosis', '', '', '', '', '', '', '', 15, 5, 'catalog/Product/sosis.jpg', 8, 1, '25000.0000', 0, 0, '2020-08-01', '300.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 12, '2020-08-01 14:14:32', '2020-08-01 14:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(57, 2, 'Ayam Potong ( 1Kg)', '&lt;p&gt;Menyediakan ayam yang masih segar!&lt;br&gt;&lt;/p&gt;', '', 'Ayam Potong ( 1Kg)', 'Menyediakan ayam yang masih segar!', ''),
(58, 1, 'Bakso Ayam (500gr)', '&lt;p&gt;Menyediakan bakso instant dengan daging ayam asli!&lt;/p&gt;', '', 'Bakso Ayam (500gr)', 'Menyediakan bakso instant dengan daging ayam asli!', ''),
(58, 2, 'Bakso Ayam (500gr)', '&lt;p&gt;Menyediakan bakso instant dengan daging ayam asli!&lt;br&gt;&lt;/p&gt;', '', 'Bakso Ayam (500gr)', 'Menyediakan bakso instant dengan daging ayam asli!', ''),
(59, 1, 'Bakso Sapi (500gr)', '&lt;p&gt;Olahan daging sapi berkualias dan segar menjadi dengan harga termurah!&lt;br&gt;&lt;/p&gt;', '', 'Bakso Sapi (500gr)', 'Olahan daging sapi berkualias dan segar menjadi dengan harga termurah!', ''),
(59, 2, 'Bakso Sapi (500gr)', '&lt;p&gt;Olahan daging sapi berkualias dan segar menjadi dengan harga termurah!&lt;/p&gt;', '', 'Bakso Sapi (500gr)', 'Olahan daging sapi berkualias dan segar menjadi dengan harga termurah!', ''),
(60, 1, 'Brokoli (250gr)', '&lt;p&gt;Menyediakan brokoli yang masih segar!&lt;/p&gt;', '', 'Brokoli (250gr)', 'Menyediakan brokoli yang masih segar!', ''),
(60, 2, 'Brokoli (250gr)', '&lt;p&gt;Menyediakan brokoli yang masih segar!&lt;br&gt;&lt;/p&gt;', '', 'Brokoli (250gr)', 'Menyediakan brokoli yang masih segar!', ''),
(61, 1, 'Ikan Tuna (250gr)', '&lt;p&gt;Menyediakan ikan tuna segar!&lt;/p&gt;', '', 'Ikan Tuna (250gr)', 'Menyediakan ikan tuna segar!', ''),
(61, 2, 'Ikan Tuna (250gr)', '&lt;p&gt;Menyediakan ikan tuna segar!&lt;br&gt;&lt;/p&gt;', '', 'Ikan Tuna (250gr)', 'Menyediakan ikan tuna segar!', ''),
(62, 1, 'Jeruk Manis (500gr)', '&lt;p&gt;Menyediakan jeruk manis yang segar!&lt;/p&gt;', '', 'Jeruk Manis (500gr)', 'Menyediakan jeruk manis yang segar!', ''),
(62, 2, 'Jeruk Manis (500gr)', '&lt;p&gt;Menyediakan jeruk manis yang segar!&lt;br&gt;&lt;/p&gt;', '', 'Jeruk Manis (500gr)', 'Menyediakan jeruk manis yang segar!', ''),
(63, 1, 'Kepiting (500gr)', '&lt;p style=&quot;margin-bottom: 10px; overflow-wrap: break-word; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: rgb(51, 51, 51);&quot;&gt;Selain beragam nutrisi di atas, daging kepiting juga mengandung nutrisi lain yang sama pentingnya seperti asam folat, vitamin B kompleks, serta berbagai mineral (kalium, magnesium, zat besi, yodium, selenium, zinc, dan mangan).&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; overflow-wrap: break-word; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: rgb(51, 51, 51);&quot;&gt;Daging kepiting juga kaya akan lemak menyehatkan dalam bentuk omega-3. Bahkan, cukup dengan mengonsumsi 100 gram daging kepiting, Anda sudah memenuhi 45% kebutuhan omega-3 dalam sehari. Zat gizi ini tidak diproduksi oleh tubuh, karena itu konsumsi daging kepiting dapat membantu Anda memenuhi kebutuhan asupannya.&lt;/p&gt;', '', 'Kepiting (500gr)', 'Kepiting segar!', ''),
(63, 2, 'Kepiting (500gr)', '&lt;p style=&quot;overflow-wrap: break-word; margin-bottom: 10px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: rgb(51, 51, 51);&quot;&gt;Selain beragam nutrisi di atas, daging kepiting juga mengandung nutrisi lain yang sama pentingnya seperti asam folat, vitamin B kompleks, serta berbagai mineral (kalium, magnesium, zat besi, yodium, selenium, zinc, dan mangan).&lt;/p&gt;&lt;p style=&quot;overflow-wrap: break-word; margin-bottom: 10px; padding: 0px 0px 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 24px; font-family: Arial, sans-serif; vertical-align: baseline; letter-spacing: 0.5px; color: rgb(51, 51, 51);&quot;&gt;Daging kepiting juga kaya akan lemak menyehatkan dalam bentuk omega-3. Bahkan, cukup dengan mengonsumsi 100 gram daging kepiting, Anda sudah memenuhi 45% kebutuhan omega-3 dalam sehari. Zat gizi ini tidak diproduksi oleh tubuh, karena itu konsumsi daging kepiting dapat membantu Anda memenuhi kebutuhan asupannya.&lt;/p&gt;', '', 'Kepiting (500gr)', 'Kepiting segar!', ''),
(64, 1, 'Pepaya (300gr)', '&lt;p&gt;Pepaya manis dan segar&lt;br&gt;&lt;/p&gt;', '', 'Pepaya (300gr)', 'Pepaya manis dan segar', ''),
(64, 2, 'Pepaya (300gr)', '&lt;p&gt;Pepaya manis dan segar&lt;/p&gt;', '', 'Pepaya (300gr)', 'Pepaya manis dan segar', ''),
(65, 1, 'Pisang (500gr)', '&lt;p&gt;Pisang manis dan segar!&lt;/p&gt;', '', 'Pisang (500gr)', 'Pisang manis dan segar!', ''),
(65, 2, 'Pisang (500gr)', '&lt;p&gt;Pisang manis dan segar!&lt;br&gt;&lt;/p&gt;', '', 'Pisang (500gr)', 'Pisang manis dan segar!', ''),
(66, 1, 'Risol (250gr)', '&lt;p&gt;Risol dengan isian wortel, kentang dan ayam!&lt;br&gt;&lt;/p&gt;', '', 'Risol (250gr)', 'Risol dengan isian wortel, kentang dan ayam!', ''),
(66, 2, 'Risol (250gr)', '&lt;p&gt;Risol dengan isian wortel, kentang dan ayam!&lt;/p&gt;', '', 'Risol (250gr)', 'Risol dengan isian wortel, kentang dan ayam!', ''),
(67, 1, 'Sawi Putih (250gr)', '&lt;p&gt;Sawi putih yang segar!&lt;br&gt;&lt;/p&gt;', '', 'Sawi Putih (250gr)', 'Sawi putih yang segar!', ''),
(67, 2, 'Sawi Putih (250gr)', '&lt;p&gt;Sawi putih yang segar!&lt;/p&gt;', '', 'Sawi Putih (250gr)', 'Sawi putih yang segar!', ''),
(68, 1, 'Somay (500gr)', '&lt;p&gt;Somay Frozen!&lt;br&gt;&lt;/p&gt;', '', 'Somay (500gr)', 'Somay Frozen!', ''),
(68, 2, 'Somay (500gr)', '&lt;p&gt;Somay Frozen!&lt;/p&gt;', '', 'Somay (500gr)', 'Somay Frozen!', ''),
(69, 1, 'Sosis (300gr)', 'Sosis dari olahan daging sapi segar dan halal !', '', 'Sosis (300gr)', 'Sosis dari olahan daging sapi segar dan halal !', ''),
(69, 2, 'Sosis (300gr)', '&lt;p&gt;Sosis dari olahan daging sapi segar dan halal !&lt;br&gt;&lt;/p&gt;', '', 'Sosis (300gr)', 'Sosis dari olahan daging sapi segar dan halal !', ''),
(53, 1, 'Ikan Tongkol (500gr)', '&lt;p&gt;Menjual ikan tongkol segar yang langsung dipasok dari nelayan.&lt;/p&gt;', '', 'Ikan Tongkol (500gr)', 'Menjual ikan tongkol segar yang langsung dipasok dari nelayan.', ''),
(53, 2, 'Ikan Tongkol (500gr)', '&lt;p&gt;Menjual ikan tongkol segar yang langsung dipasok dari nelayan.&lt;br&gt;&lt;/p&gt;', '', 'Ikan Tongkol (500gr)', 'Menjual ikan tongkol segar yang langsung dipasok dari nelayan.', ''),
(54, 1, 'Cumi-cumi (100gr)', '&lt;p&gt;Menyediakan cumi-cumi yang masih segar, langsung dari nelayan.&lt;br&gt;&lt;/p&gt;', '', 'Cumi-cumi (100gr)', 'Menyediakan cumi-cumi yang masih segar, langsung dari nelayan.', ''),
(54, 2, 'Cumi-cumi (100gr)', '&lt;p&gt;Menyediakan cumi-cumi yang masih segar, langsung dari nelayan.&lt;/p&gt;', '', 'Cumi-cumi (100gr)', 'Menyediakan cumi-cumi yang masih segar, langsung dari nelayan.', ''),
(55, 1, 'Kol (100gr)', '&lt;p&gt;Menyediakan Kol masih segar langsung dari kebun.&lt;/p&gt;', '', 'Kol (100gr)', 'Menyediakan Kol masih segar langsung dari kebun.', ''),
(55, 2, 'Kol (100gr)', '&lt;p&gt;Menyediakan Kol masih segar langsung dari kebun.&lt;br&gt;&lt;/p&gt;', '', 'Kol (100gr)', 'Menyediakan Kol masih segar langsung dari kebun.', ''),
(56, 1, 'Buah Naga (500gr)', '&lt;p&gt;Menyediakan buah naga merah segar.&lt;/p&gt;', '', 'Buah Naga (500gr)', 'Menyediakan buah naga merah segar.', ''),
(56, 2, 'Buah Naga (500gr)', '&lt;p&gt;Menyediakan buah naga merah segar.&lt;br&gt;&lt;/p&gt;', '', 'Buah Naga (500gr)', 'Menyediakan buah naga merah segar.', ''),
(57, 1, 'Ayam Potong ( 1Kg)', '&lt;p&gt;Menyediakan ayam yang masih segar!&lt;/p&gt;', '', 'Ayam Potong ( 1Kg)', 'Menyediakan ayam yang masih segar!', ''),
(50, 1, 'Alpukat (1 Kg)', '&lt;p style=&quot;margin-bottom: 1.25rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &amp;quot;open sans&amp;quot;, Helvetica, Arial, sans-serif; vertical-align: baseline;&quot;&gt;&amp;nbsp;Buah Alpukat atau dalam bahasa Inggris disebut dengan Avocado adalah buah yang memiliki banyak manfaat bagi kesehatan manusia dan juga perawatan kulit/kosmetik. Buah yang dikenal dengan nama ilmiah&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;Persea Americana&lt;/em&gt;&amp;nbsp;ini berasal dari Meksiko dan Amerika Tengah namun saat ini telah banyak dibudidayakan di Amerika Selatan dan Asia Tenggara terutama di Indonesia.&lt;span id=&quot;more-3061&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.25rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &amp;quot;open sans&amp;quot;, Helvetica, Arial, sans-serif; vertical-align: baseline;&quot;&gt;Buah Alpukat mengandung Mineral, Vitamin dan Serat yang tinggi terutama Vitamin B, Vitamin C, Vitamin E, Vitamin K, Potassium (Kalium) dan Tembaga yang sangat bermanfaat bagi orang yang mengkonsumsinya. Buah Alpukat juga memberikan rasa kenyang sehingga berguna bagi mereka yang ingin menurunkan berat badannya. Buah Alpukat disebut juga buah Avokad atau apokat.&lt;/p&gt;\r\n', '', 'Alpukat (1 Kg)', 'Menyediakan  Alpukat dengan kualitas terbaik!', ''),
(51, 2, 'Kangkung (1 ikat)', '&lt;p&gt;Menyediakan kangkung dengan kualitas terbaik yang setiap hari dipetik dari kebun!&lt;br&gt;&lt;/p&gt;', '', 'Kangkung (1 ikat)', 'Menyediakan kangkung dengan kualitas terbaik yang setiap hari dipetik dari kebun!', ''),
(51, 1, 'Kangkung (1 ikat)', '&lt;p&gt;Menyediakan kangkung dengan kualitas terbaik yang setiap hari dipetik dari kebun!&lt;/p&gt;', '', 'Kangkung (1 ikat)', 'Menyediakan kangkung dengan kualitas terbaik yang setiap hari dipetik dari kebun!', ''),
(52, 1, 'Daging Sapi Rendang (500gr)', '&lt;p&gt;&lt;span style=&quot;color: rgba(86, 100, 86, 0.5); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14.4px;&quot;&gt;Siapa yang doyan banget rendang tapi males cari daging sapi yang sesuai dan pas?&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(86, 100, 86, 0.5); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14.4px;&quot;&gt;Mengkonsumsi daging sapi dapat mencegah anemia karena kandungan zat besi didalamnya, selain itu jumlah kalori yang cukup dibutuhkan untuk sumber energi tiap harinya. Jadi, baik loh untuk mengkonsumsu daging sapi.&lt;/span&gt;&lt;span style=&quot;color: rgba(86, 100, 86, 0.5); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14.4px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Daging Sapi Rendang (500gr)', 'Menjual daging sapi untuk rendang yang masih segar!', ''),
(52, 2, 'Daging Sapi Rendang (500gr)', '&lt;p&gt;&lt;span style=&quot;color: rgba(86, 100, 86, 0.5); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14.4px;&quot;&gt;Siapa yang doyan banget rendang tapi males cari daging sapi yang sesuai dan pas?&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(86, 100, 86, 0.5); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14.4px;&quot;&gt;Mengkonsumsi daging sapi dapat mencegah anemia karena kandungan zat besi didalamnya, selain itu jumlah kalori yang cukup dibutuhkan untuk sumber energi tiap harinya. Jadi, baik loh untuk mengkonsumsu daging sapi.&lt;/span&gt;&lt;/p&gt;', '', 'Daging Sapi Rendang (500gr)', 'Menjual daging sapi untuk rendang yang masih segar!', ''),
(50, 2, 'Alpukat (1 Kg)', '&lt;p style=&quot;margin-bottom: 1.25rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &amp;quot;open sans&amp;quot;, Helvetica, Arial, sans-serif; vertical-align: baseline;&quot;&gt;&amp;nbsp;Buah Alpukat atau dalam bahasa Inggris disebut dengan Avocado adalah buah yang memiliki banyak manfaat bagi kesehatan manusia dan juga perawatan kulit/kosmetik. Buah yang dikenal dengan nama ilmiah&amp;nbsp;&lt;em style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;Persea Americana&lt;/em&gt;&amp;nbsp;ini berasal dari Meksiko dan Amerika Tengah namun saat ini telah banyak dibudidayakan di Amerika Selatan dan Asia Tenggara terutama di Indonesia.&lt;span id=&quot;more-3061&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.25rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &amp;quot;open sans&amp;quot;, Helvetica, Arial, sans-serif; vertical-align: baseline;&quot;&gt;Buah Alpukat mengandung Mineral, Vitamin dan Serat yang tinggi terutama Vitamin B, Vitamin C, Vitamin E, Vitamin K, Potassium (Kalium) dan Tembaga yang sangat bermanfaat bagi orang yang mengkonsumsinya. Buah Alpukat juga memberikan rasa kenyang sehingga berguna bagi mereka yang ingin menurunkan berat badannya. Buah Alpukat disebut juga buah Avokad atau apokat.&lt;/p&gt;\r\n', '', 'Alpukat (1 Kg)', 'Menyediakan  Alpukat dengan kualitas terbaik!', ''),
(30, 1, 'Nugget Ayam', '&lt;p&gt;\r\n	Olahan ayam setengah matang yang dibekukan&lt;/p&gt;\r\n', '', 'Nugget Ayam', 'Menyediakan  Nugget ayam dengan berbagai ukuran dan harga termurah!', ''),
(30, 2, 'Nugget Ayam', '&lt;p&gt;Olahan ayam setengah matang yang dibekukan&lt;br&gt;&lt;/p&gt;\r\n', '', 'Nugget Ayam', 'Menyediakan  Nugget ayam dengan berbagai ukuran dan harga termurah!', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(456, 51, 1, 0, 0, '0.0000', '0000-00-00', '0000-00-00'),
(455, 50, 1, 20, 1, '30000.0000', '2020-08-01', '2020-08-04');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(561, 50, 1, 20),
(577, 69, 1, 5),
(560, 52, 1, 30),
(566, 59, 1, 15),
(573, 66, 1, 5),
(574, 67, 1, 4),
(556, 30, 1, 15),
(569, 62, 1, 5),
(568, 61, 1, 5),
(567, 60, 1, 5),
(565, 58, 1, 10),
(563, 55, 1, 5),
(562, 53, 1, 15),
(575, 68, 1, 10),
(572, 65, 1, 5),
(571, 64, 1, 5),
(570, 63, 1, 20),
(564, 57, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(442, 50, 1, 10, '30000.0000', '2020-08-01', '2020-08-04');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(30, 33),
(50, 20),
(51, 20),
(52, 25),
(53, 25),
(54, 25),
(55, 20),
(56, 20),
(57, 25),
(58, 33),
(59, 33),
(60, 20),
(61, 25),
(62, 20),
(63, 25),
(64, 20),
(65, 20),
(66, 33),
(67, 20),
(68, 33),
(69, 33);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(50, 0, 2),
(51, 0, 2),
(30, 0, 0),
(52, 0, 2),
(53, 0, 2),
(54, 0, 2),
(55, 0, 2),
(56, 0, 2),
(57, 0, 2),
(58, 0, 2),
(59, 0, 2),
(60, 0, 2),
(61, 0, 2),
(62, 0, 2),
(63, 0, 2),
(64, 0, 2),
(65, 0, 2),
(66, 0, 2),
(67, 0, 2),
(68, 0, 2),
(69, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(30, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(909, 0, 1, 'product_id=59', 'meatballsapi'),
(882, 0, 2, 'category_id=20', 'buah_dan_sayur'),
(933, 0, 1, 'information_id=4', 'about_us'),
(903, 0, 1, 'product_id=56', 'nagaa'),
(881, 0, 1, 'category_id=20', 'fruit_and_vegetable'),
(857, 0, 1, 'manufacturer_id=9', 'fishmeat'),
(853, 0, 1, 'manufacturer_id=8', 'frozen'),
(854, 0, 2, 'manufacturer_id=8', 'beku'),
(846, 0, 1, 'category_id=25', 'fish_and_meat'),
(921, 0, 1, 'product_id=65', 'banana'),
(920, 0, 2, 'product_id=64', 'pepaya'),
(919, 0, 1, 'product_id=64', 'pepayaaa'),
(918, 0, 2, 'product_id=63', 'kepiting'),
(845, 0, 2, 'category_id=33', 'makansetengahmatang'),
(847, 0, 2, 'category_id=25', 'ikan_dan_daging'),
(844, 0, 1, 'category_id=33', 'frozenfood'),
(917, 0, 1, 'product_id=63', 'kepitingcapit'),
(916, 0, 2, 'product_id=62', 'jeruk'),
(915, 0, 1, 'product_id=62', 'orange'),
(914, 0, 2, 'product_id=61', 'tuna'),
(913, 0, 1, 'product_id=61', 'tunna'),
(912, 0, 2, 'product_id=60', 'brokoli'),
(911, 0, 1, 'product_id=60', 'brokol'),
(910, 0, 2, 'product_id=59', 'bakso_sapi'),
(858, 0, 2, 'manufacturer_id=9', 'ikandaging'),
(884, 0, 2, 'manufacturer_id=7', 'buah-sayur'),
(902, 0, 2, 'product_id=55', 'kol'),
(901, 0, 1, 'product_id=55', 'koll'),
(894, 0, 2, 'product_id=50', 'alpukat'),
(893, 0, 1, 'product_id=50', 'avocado'),
(896, 0, 2, 'product_id=51', 'kangkung'),
(895, 0, 1, 'product_id=51', 'khangkung'),
(891, 0, 1, 'product_id=52', 'dgrendang'),
(892, 0, 2, 'product_id=52', 'rendang'),
(897, 0, 1, 'product_id=53', 'tongkhol'),
(898, 0, 2, 'product_id=53', 'tongkol'),
(899, 0, 1, 'product_id=54', 'sotong'),
(900, 0, 2, 'product_id=54', 'cumi'),
(879, 0, 1, 'product_id=30', 'nugget'),
(880, 0, 2, 'product_id=30', 'nuggett'),
(907, 0, 1, 'product_id=58', 'meatballchiken'),
(908, 0, 2, 'product_id=58', 'bakso_ayam'),
(906, 0, 2, 'product_id=57', 'ayam'),
(883, 0, 1, 'manufacturer_id=7', 'fruit-vegetable'),
(905, 0, 1, 'product_id=57', 'chiken'),
(904, 0, 2, 'product_id=56', 'buah_naga'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms'),
(922, 0, 2, 'product_id=65', 'pisang'),
(923, 0, 1, 'product_id=66', 'risoles'),
(924, 0, 2, 'product_id=66', 'risol'),
(925, 0, 1, 'product_id=67', 'sawiput'),
(926, 0, 2, 'product_id=67', 'sawiputih'),
(927, 0, 1, 'product_id=68', 'som'),
(928, 0, 2, 'product_id=68', 'somay'),
(932, 0, 2, 'product_id=69', 'sosis'),
(931, 0, 1, 'product_id=69', 'sos'),
(934, 0, 2, 'information_id=4', 'tentang_kami'),
(940, 0, 2, 'information_id=6', 'kirim'),
(939, 0, 1, 'information_id=6', 'delivery');

-- --------------------------------------------------------

--
-- Table structure for table `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('0006a871e3124dc53c15a39fde', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/address\"}', '2020-08-04 19:15:01'),
('003bc4ddbf3c45eede3175b4e6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 14:15:19'),
('00b42f28cebccaf7d8479128ec', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:44:50'),
('00cc1cea4634f33bce7b651787', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 02:30:27'),
('0106bc15a344c2bf2f2b0c1bc2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:01:41'),
('010be4cce189d91c98fc8f9298', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 09:48:39'),
('0110b4eaded690ee9533edb549', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 09:29:04'),
('013a00587275f8ba2a6eba2899', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 15:06:58'),
('014e157fb0aaafd8ddc05b260f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 11:11:54'),
('015095a810cd35c8c5fb13d567', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:25:08'),
('016b081963d5e568a1c8e13318', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 04:50:30'),
('0174a4c059f6b96b250b8ff2bc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:35:45'),
('01f7dc83acc05b2d557e653901', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 03:19:57'),
('0212b3af83ada48e909b613079', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 01:50:39'),
('0219f389f671375c4ad07e7a6d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 04:12:38'),
('02345f07e58998d7d5f3f13ad9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:35:32'),
('023f4be02f4b8c239d30f6cd69', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:42:41'),
('0284e1b48418ad4121e6914dcc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 03:30:58'),
('0287545bc2fc90d40d98bdc75b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 08:59:50'),
('02a74242966ed25462f0d3451b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:07:00'),
('02fd6a3fde1fb7904b93752b00', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 06:47:54'),
('031485bdfe0f34d7a5166c1d64', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 19:45:04'),
('032dc8f597f830b9939d685c11', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:40:33'),
('03308dc1ddec77f49ce4e8f3cf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 17:41:51'),
('03574acd1e2dfa0f70e7cc6e6a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 14:28:02'),
('035c674917b87d354f679b664e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 22:11:34'),
('0364c58882a3d89b6e7512d191', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:04:23'),
('037aa5ae73a31aca2f999b1104', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:13:51'),
('037df82eaff13a9d2752a482f3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 19:12:02'),
('038da88c03011a3251ed4516c2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 02:42:01'),
('03e42fc96eb5493ebe3ee80a56', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:21:53'),
('03fc5b00b83c45ba059737d621', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:05:33'),
('041915741f9dc72d0d76c72acb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 05:54:04'),
('0424987ad0fb9a9ca181a8fb3b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 11:02:10'),
('0427858c21d0d20522919e9a5d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 03:48:55'),
('042c1a6768ceb50fefc005914c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 05:07:09'),
('044a15d0c4b34a2495ce76e502', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:27:21'),
('0486f3e4c5d9790ea850606602', 'false', '2020-08-07 01:42:02'),
('04a255978add2212c8597b205b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 13:04:34'),
('04d4cb7eca4bb4f55db0d185ff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 07:45:44'),
('04e2472a551d37f8f751ead2b4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:46:45'),
('04eaf44ef5041d36bcf7c67a7d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:11'),
('0516cec689896d9a3b3b326f37', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 00:05:23'),
('05199ef5e4748a372a6ce51d9e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 19:06:46'),
('053b4724789a26918ead834058', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 09:39:11'),
('053f1c323ff23f75e66e13b080', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 21:53:59'),
('0560f1cc5412975e7b9e480255', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 09:42:01'),
('05664de39e522556db92003260', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 05:28:51'),
('059bb04d9aec730cc77bbb415c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:29:58'),
('05b8926ea07cff19c77734a855', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:47:52'),
('05ef706011528d5a4fdb8c8bfc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:58'),
('06075b2498d06dc6c4d43fad0a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 16:31:16'),
('065f45f900856e6c59a3c695bb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 06:49:49'),
('06cfab33f917873eeebe1efcda', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 08:50:04'),
('06e8bf7bbb86e97e99db26b516', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:50:08'),
('06fef32bfe6352689d43a7d1bd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 13:56:29'),
('070bc89676367cbdf8c9d68725', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 05:55:00'),
('0737bffa7f052ff43cb50d4485', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 07:25:36'),
('0738b6296aefb445b77593f729', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 20:12:48'),
('075b569e1ea17526e37751c906', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 13:26:24'),
('0772076cb6632778c2357c9763', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:19:22'),
('07ac329bd305bbad55c0d08735', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 21:19:43'),
('07b92da4ee9e2e346bb56cedb2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 17:04:07'),
('07ec488650089c680efea3d976', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 17:40:29'),
('07fbbd84d44d413abe405ddc7c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 02:08:37'),
('080500a42273e49b3e5afecbb8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:19:44'),
('082342e3c0174812a8af7c0c06', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:10:53'),
('0823b2476c5e4f838d30ff9b4d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:22:35'),
('085c7a0c335662e781c937538c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 09:01:19'),
('087908250f26e6ad4a967387db', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:15:59'),
('087cea6a6f1f3a09621c9363e8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:31:09'),
('087f3adfbf179180ada3b40f14', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 00:56:48'),
('08a619fc9ef579ad507ce62732', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 05:53:02'),
('08b45d5d02a4c47efd6a00cd5f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 05:22:56'),
('09007d30d1a9acc643c400ecd8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:04'),
('093189764f22d8ec990e390294', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:13:38'),
('093293ba8349b74b1f09949331', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 01:44:27'),
('0945794f57beff9d7a095563f4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 08:38:10'),
('095bc7109abbe43a280ce597f5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 13:45:19'),
('09865bb46dda7aeb1615edc705', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 15:58:53'),
('0989a247a8559a545456e0a6a8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 21:18:12'),
('098a71f4ff76f8c2dccdb0a86c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 22:45:19'),
('09d7070cbdd8afdca78314948c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:54:51'),
('0a0ad6c3d35d5c4af79e1f9e5e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:17:59'),
('0a0fac892ba8b684f017127ffe', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 21:58:39'),
('0a1a2dd20c65e5c682c334922f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 02:43:21'),
('0a57d5407cab551669d838aa16', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:04:31'),
('0a61d18af6698d97519e2155fe', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:01:04'),
('0af66f481ccdec261078b62996', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 19:42:34'),
('0afed1fb8cf1a0ca1b25adca60', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 02:03:43'),
('0b05a71d41c1f75802aaf88a92', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 11:53:19'),
('0b0c55371c7e342932292c4076', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:11:19'),
('0b2ea4cc126abd6edc81625706', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 15:45:38'),
('0b439e280474a367314e363d37', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 21:57:35'),
('0bb6d1e57e784ac6e5e23a1871', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:59:32'),
('0bbe7f4146e3f26a67c7fcfdaa', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 02:42:35'),
('0bcbd59a3ed3ab19182533a991', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 14:24:13'),
('0c2611e1b4187c6f53d72cb610', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:00:32'),
('0c35b2b2a4013e4a639fc75bb8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 16:44:32'),
('0c655625bd3c00bab2f579e793', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:41:24'),
('0c65b95708f9da34f1767cc956', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:16:38'),
('0c7646a07e7a1b8d7b6c60e7d7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:04:34'),
('0d020109828f98335e1f12d002', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 07:59:50'),
('0d057b3b884d83d6eff4aa552b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:15:39'),
('0d7d79b4c7c5d21f0f42006ef0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 20:28:43'),
('0d814073915502bf07f56a046b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 05:34:05'),
('0db46e11d812a4e2827ff1f26d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:14:15'),
('0dc8232c8ea4ca17ef1e21e9bc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:20:54'),
('0dcf4b9c05447f4649fa7eec86', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:46:50'),
('0dd210e469d46bc402f294428f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 22:22:23'),
('0de12af00421eb3aa227693f7b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 05:22:04'),
('0de44cbdc05ddbb2810b5a02c0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:39:08'),
('0dfe81f169e82879339b18362f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:48:31'),
('0e0d34d0f08d1a28973307e486', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:16:47'),
('0e6744e68e28ac87db65d7a1fa', 'false', '2020-08-05 02:15:32'),
('0e698be226f7902fad3e03b6ed', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 03:15:22'),
('0e6b92b5b442461d2e52c9cee3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:50:10'),
('0e82e32b817ad040194e3f1387', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 12:48:58'),
('0f2deb43fc80c0a8d9a4c9ec8c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 07:43:59'),
('0f549aa8a597f5f962cc00eb47', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 01:47:06'),
('0f54e9c4b8aa596d55482a27e3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 07:55:13'),
('0fbbea090ca91838144705d492', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:39:04'),
('0fc0365055f7ccd4856a955de1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:44:04'),
('0ff1ed1a34025953549587fbe5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 06:28:47'),
('1000f13f7eb3a0c7b43bc50e92', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 06:39:21'),
('102400b1b056b9d2162e60d15a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 17:11:07'),
('1029b97bc5f133fc7d5d805653', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 14:14:45'),
('1039bcd9ab4733161250d32ed9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:28:04'),
('10592508254a7c518fc6ac6965', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 21:09:36'),
('1091ffe6a0ee0a1c779372e55a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:06'),
('1092ea2efea8215687099f0bf7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:50:02'),
('10a4c50ed51ae5bd0c5b319235', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 05:50:55'),
('10a592218aa71ba0e90a7ac39a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 17:37:22'),
('10a593354478811c75f2f719cf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:15:25'),
('10dcfc2c98952f2aae1d73824f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:31:20'),
('1102f6cad22176672794f8a7b0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:44'),
('111e4cf645a3410c67b134d1d4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 16:25:38'),
('11283508709482c66ac48ea588', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 06:15:42'),
('116a7356ce3d242d5c9c13fd89', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:45:52'),
('117d427edccef42c0a12173e67', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 23:40:16'),
('118c6974d8b991b4cd42c2432e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:04:47'),
('11af3fafb7f9c809af1ec1f213', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 01:06:16'),
('11de55a41e0046caf2777294e6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 03:19:00'),
('11e9fd2ebe649000d96a4d48fa', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:10:39'),
('11fe97f3338eb98aea01b9f979', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:17:12'),
('12312f018cfa75c824021b2d50', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:37:57'),
('1232977544f8a30a064ec7e148', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 02:52:50'),
('12470df65f43c7c1f1ae6743ce', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 20:22:55'),
('1273f58c256d946c56eb073e54', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 21:02:48'),
('12829fa43b5d0bf54b6d7bef78', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:12:16'),
('12a059941f66396c587fd69887', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:11:46'),
('12c291a07f306ededa7b3db2fa', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 01:45:11'),
('12c743a2e45a7c5d73d13c63cb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:48:15'),
('12e73eef834beaf9f050f8bba8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 16:54:39'),
('12f00cd20f0c4998dfdcd66d5e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 07:26:10'),
('130a72a60f75478af40165de7c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:08'),
('132f0f54f12542eeb61dfd5209', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 10:32:05'),
('135bcb87896ea5fccccacfdddb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 05:38:20'),
('137f69f2f0a055629260b748b4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 12:43:54'),
('138f4c4031d18d2701f7e11ed4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 20:11:28'),
('13ba5a94374f34f4cf876047b0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 11:05:25'),
('13bafdee5964f2cff9205b6dd2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 05:59:56'),
('13c47ff44843baaa63d11a17a0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:28:09'),
('13c53d2eb1e783c143d98bd615', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"user_id\":\"1\",\"user_token\":\"qwMrFIBG1TYaUj8rBvhNlUSBAdLaAVk6\"}', '2020-08-07 16:05:36'),
('13ec7bf4c27550b61c3caf19cf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 07:18:13'),
('141a266e51132629f232e9ad07', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:12:24'),
('141ad5df5ed0c164fd9b967887', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 22:35:51'),
('14280c6e9bd73321703f8a7196', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 15:18:28'),
('1443c1bd111abb4ae52d710c9f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:30:28'),
('1487e8fe4f9f37804b47d48408', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:56:54'),
('149795c4db8fa5a42832a5d783', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 00:21:28'),
('14bd557824ca5583546a12d18b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:40:40'),
('14d0613e5592d030fc5bec753e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:11:36'),
('14ee6ad7d7c45e02988faad248', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 00:48:23'),
('15161059590496f57c82fa7e30', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 05:23:46'),
('151d861006c39ed7a4d5ca749b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:41:21'),
('1540ad5143cf73e9a156798847', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 15:57:14'),
('155464243aefbdd9fce653ddaf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 17:31:02'),
('15e18de2f76a20a64a90b43aba', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 05:03:08'),
('15f3ea01a59b9fc3eba5583c2b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:13:16'),
('1632ff425fb40c6e20768c3391', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:40:34'),
('1649c03bce3068a3a84b4f02a4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:40:41'),
('1663491009202cdacab706fc4c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 22:44:16'),
('16a877781dad04e85db833de69', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:49:11'),
('16ebf478a2dabdd71cb708146f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 03:02:37'),
('16ece6e075381118b68c66501a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 14:02:10'),
('173dfbf9a66423874b48e990a6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 06:19:36'),
('174800b26929033fa2c6f64e6d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 13:44:40'),
('1767237b7a6e2939ecaddbbcae', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 18:11:11'),
('178af7ddc74d7dddf71e8239c6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 18:29:43'),
('17c4226642ba0aa5404e14808b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 19:59:22'),
('17d0cdb02d815caf27f4b4ccee', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 23:51:12'),
('180970a932a6e8688b442bdff7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:46:06'),
('1814304412e9d75390af4bb963', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:27:14'),
('1827b6640351e84a6183688e99', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 03:58:23'),
('18391d151d9dc855e35367ebc2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 18:48:05'),
('185d3e24167b3c77b072945ed4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 00:38:31'),
('185f5637000c046bbb38b701cc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 08:36:45'),
('18a01a149492b0cdab39abe05d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 21:56:56'),
('18d6d9111aa12ebb8ce6c625d6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:34:28'),
('18fdaebb05bdb8775670685a1f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 17:13:27'),
('1926cd937c93f7530ceecf01bc', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/newsletter\"}', '2020-08-06 20:57:14'),
('193bf408e91d4adc84d5515cf5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 06:25:40'),
('198f9bde677aa2eb17b9b0b4f8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:24'),
('19ed13865ab5dfa5bc836b1121', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:42:57'),
('19eec982091d3918c012ce470c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 16:31:11'),
('19f05fd61f831948929ca3d442', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:16:29'),
('19f53f65a11ac01851f077881d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:11:23'),
('1a28073a5926826ba0df906c90', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 05:32:24'),
('1a4c5e7e04ed5a81c72e3a0bc3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 18:12:02'),
('1a646c906948d363b9e915e0b2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:55:11'),
('1a6fe98f97a4f83137f9a094c3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:06:58'),
('1a8e71729f6ec78e3a275746ad', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 07:51:38'),
('1ab03267418851620d6fa99271', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 13:09:04'),
('1ab24052a066300243c9d33783', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 07:00:58'),
('1ad179ff892166df58a27ff53b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 20:11:57'),
('1ae53bb4588b9f22489f5ceb09', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 16:40:34'),
('1b012d50907e38c6a8c2eaa247', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:01'),
('1b1c431150b47df16a73ad44f0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 17:43:06'),
('1b304a709658b3be757aa8aba6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 07:18:58'),
('1b6945a50949d867ffedde7ca9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 05:34:58'),
('1b8ac437e884b0ba017f47e4c3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:28:34'),
('1b8f51891928afce661c827ec7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 12:53:22'),
('1b9b0abcd5b4f59b7c6ba5481d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:35:58'),
('1bba5f03af3f391f2299574fba', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 19:17:43'),
('1bc1acc3f3e76cde5a7a835338', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/address\"}', '2020-08-08 21:51:52'),
('1bfd08553ad58ea059cded2889', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 01:58:18'),
('1c19c22a659e5c3b99cc91149f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:21:22'),
('1c5ba98a9d9cbd3be3a6d19d5f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 01:55:19'),
('1c6c69e2b38dcd24e48a047f3e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 19:36:39'),
('1c94630c620064cdf4c93cfa28', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:16:00'),
('1cecaf9604a16fdc49ee49b0c5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 12:31:05'),
('1cf02bc590c0c9798af760e1d8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 08:05:33'),
('1cfa0b8055a1e295d2392e4fc1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 21:36:12'),
('1cfc48bcd458f6c3140c0c5d3d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 12:02:13'),
('1d014bba4338ee093ac8ccd566', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 20:55:50'),
('1d36e8e67900b984605c14e9c0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 13:35:51'),
('1d450739b16b140df04a4e9514', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 22:40:18'),
('1d79024048b50a5e877abda09f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 08:32:16'),
('1d7db56482cf37c6b1c8cd5640', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 04:26:08'),
('1da6940f4e153bf266c13592a2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:35:17'),
('1dc3eb2179a23cb1485df9654e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 04:27:50'),
('1dc9b3ced4a3dd3da165e4bb7d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:28'),
('1df7d2a71ea6fd533a5af2aaa3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 22:34:50'),
('1e004a668bd88411dffbc974b2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 15:38:17'),
('1e0ad10b9db127609f69bc78c8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 14:50:56'),
('1e30c99fe41cefff5a2ca4deb9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:20:49'),
('1e7473ee9113dbecd1a8c23de5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:10:32'),
('1e83f145e8d2e5f3cc4f63940f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 02:50:36'),
('1e84a0544eaba41321d9b80344', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 08:36:07'),
('1e9bb2c1b79e90c72cf496b17d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 16:40:15'),
('1e9e48ca32e11277e984e4c04e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 01:31:43'),
('1ea38d12e4307c94146af85b63', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:08:40'),
('1ecc73b4b3f01470f15f265640', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:31:38'),
('1ed1d55cc38f9ebf852f9440e4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 07:45:43'),
('1ee0e2c5b0b1054f3b1e9e4b61', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:45:42'),
('1f1ca2709f0a9443192d30b9fd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 18:03:51'),
('1f3b7aee36c562fa7e1852b71f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:06:32'),
('1f3cbd5f1445366ad93724cad1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:00:48'),
('1f5b5f3029a39ea146db77428e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:21:47'),
('1f94e7fb64f609b95c6dbf162a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:44:56'),
('1fb6d78dbc055a4be6bb28cfae', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 12:12:15'),
('1fc19aa345c549a498295117da', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 01:35:19'),
('1fd2252cf0e669ec4ca5823691', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 11:13:12'),
('1fe2000968ea8e437ad6604373', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 07:07:04'),
('200de26559f103ec1326b729dd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 08:18:46'),
('2025ce866462eebb5ff7c855a5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 16:35:05'),
('20d98c0686b10b2cc025480f1e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 00:41:21'),
('214fe521097922d06750daf3d9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:23:45'),
('215c7bf20cbc9418803782b8ee', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 06:30:01'),
('21693e96d6320976739294e15e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:38:55'),
('2194c3daf7606462df2cab0efe', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 11:47:05'),
('21a459a430eba6cefcdcffd1e0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 19:16:39'),
('21afed5e3f28a1b462ad77a889', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:20:07'),
('21bb9f6cc35c5e425fdd44bdca', 'false', '2020-08-08 19:28:10'),
('21c8e08bc6e15f0a7413f1acb0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:25:28'),
('21d0edcac90124b92f12e09a07', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:03'),
('21ed19a0bef13c4797522ef033', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 16:26:15'),
('2200aed19944d97afd1bfb3e43', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:12:55'),
('220788e14674516579fa65068c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 19:55:35'),
('2214236abf675349792fba6d0c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:11:38'),
('22341ade3fe16483563410fed4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:41:17'),
('224269963320fd3e78cde0c814', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 23:56:32'),
('2284b60f73d6d8b6d79e8b3c24', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 09:01:25'),
('2293c09033789562984397c737', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:57:51'),
('22a83e43a5d59cb123270e4dfc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 04:32:02'),
('22b92dd368140fc79f67cfaa6a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:56:02'),
('22cdd0fd59f9414d5b05a5e7c7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 07:40:34'),
('23074f4b15ca79a61409171072', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:34'),
('23167d26bb69bdf6bf29985f30', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 22:54:23'),
('23358d4728777826f46e9e3e79', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:05:16'),
('2388b258b4ace73ad90ccfc01f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:11:49'),
('239c0b82599f32279acf1721d2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:40'),
('23b327fc830a46cceed92593d6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:11:45'),
('23dcc63ea4fd165d9672a80e04', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:27'),
('23e660c12462c888ef7df7bfa4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 21:02:46'),
('2443d3daa5473df340ba137a37', '{\"api_id\":\"2\"}', '2020-08-07 16:28:50'),
('244607df8eca4ad33b53c286da', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 23:02:23'),
('247affdeb3854b7bfd743a2add', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:21:14'),
('24accac83d3d821ed08504d7ff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 15:22:48'),
('24ba3f49e47f6d2c8fc454f2fc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:40'),
('24c2f969c8647416facd4c110b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 00:12:28'),
('24d5e30824d1f323e9560a40f0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 11:02:52'),
('24d7b4a52a4993a6866245880f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 05:11:55'),
('24d919fe43cb74da991f8827a5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 11:00:29'),
('25160a5bec9ac60865dbcf7837', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 22:14:15'),
('2542db69bd11f8b4e8738aeaa7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 01:44:47'),
('2546b2d2c7b1c66be0abd7b5a0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 05:53:44'),
('255214d3c3a35660347dc7bf30', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 19:05:40'),
('25621fa0f514cdc9e26e99cd22', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:17:03'),
('2564be834676e5bc5434b6e50a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:39'),
('25665ad5c9831ad5d9f551354a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 00:29:27'),
('2573163e7ea84f4cbfd2e1358c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 20:21:24'),
('25af3751aa91a74433f1a901f4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 19:49:54'),
('25e5c319af1e167a5c7f8af61e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 14:31:34'),
('26413f0d67ba3f097f96951217', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 07:25:37'),
('2656c885487948d282fb2d0911', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 06:37:49'),
('2666fa1243bdbec5c310246c8d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 03:08:35'),
('26837aefe4ef187d1d5de4e0ff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 12:21:09'),
('269bd260424250cc349a523590', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 13:58:19'),
('26a097b275c1435f2cab8d0d90', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 21:30:15'),
('26ce5c2cbd24d9919a63f16e60', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 01:26:15'),
('26d238967c60989fccab7d335e', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"vouchers\":[]}', '2020-08-06 04:41:24'),
('26ee95f2da979af458aed96af5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 14:24:28'),
('26ff3f876883c8bd6acd2befe5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 04:17:28'),
('2702ba9882155d5354485e2ecf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:37:21'),
('270c007b4e083578a98030d720', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 03:01:35'),
('270efc90f92c0f60638ca61d8c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:52:56'),
('270ff641cdefc33896db9585ac', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 16:36:45'),
('27284d99ca0280eefb1380097c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 04:18:58'),
('27312e206eb3467c8a5a06d953', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 11:43:54'),
('27e9c3e2967b9a5e0da79f686d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 01:46:35'),
('27f6232159a6350040f56b3fdb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 07:41:31'),
('2801b8a13dfe4944bcaa08acfb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:23'),
('280f3a18434a749627ccccd8e7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 13:16:55'),
('2816db323f3ba6e9777255b748', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 16:08:21'),
('28358a4a880d3ea5e189f54306', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 09:39:20'),
('2843017d0fd0ce8a576e1a9c14', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 08:04:40'),
('284d607d69c763dc178eb0c2cb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 16:21:38'),
('284e18effb70159b2e50631710', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 17:14:38'),
('28610a2410840da398c747dda1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:19:12'),
('28aa96647f7e5b22e3de7072f0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:42:31'),
('28ae3afc8c48277e8ba2fd4764', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 09:45:01'),
('290ef24c62d6b71d5b43efb32a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:23:46'),
('29257fe7f2f0e9cafd0e029ded', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 06:34:38'),
('29296c1d1db7cadb2a57f67c0f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:41:38'),
('296bc336611a9f86f046b9c4af', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 21:46:36'),
('297061a72108ad9bf432244ed3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 02:13:11'),
('297c45e23cde3d6384198623dc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 20:38:12'),
('29b27ecd9553865d1f65fbfe87', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 00:30:07'),
('29f88deaa1a1a6e3065e1abbee', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 14:43:09'),
('2a2c996f28774151cd0245a344', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 13:35:12'),
('2a4c1c91f364263e11cee48594', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 23:54:26'),
('2a5b9b03aabd5ca11f7b17aa5c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 14:33:41'),
('2ab51c303a515367a1c85377fb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 04:36:25'),
('2ab6e529e03e8ad1a26b456498', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 15:59:16'),
('2ac09e08e9125e896af7b12546', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:41:19'),
('2af31f5aa1c4091ae2a566aa4e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:58:47'),
('2b152888e1aba52dfaaa264039', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 04:45:52'),
('2b41e8fd9c75c2da1681af2ea6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 21:41:40'),
('2b45d0ccb95284f4286f5ce730', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 17:50:48'),
('2b4b1d459bb685b480edc657a0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 03:28:28'),
('2b88ac97e9ba1b00e7900be514', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 05:00:27'),
('2b97657735854a13155c6edd20', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 01:00:02'),
('2bb13742ae646f84730b189c2c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 02:41:09'),
('2bd3fe491fa19d2ad1d38b73f6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:12:38'),
('2c139fadc2b9b3a8137b2ec1ad', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:25'),
('2c555d6c52e5d3bdd7519c3b2b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 01:36:23'),
('2c62d4adf84543868ddffc2a13', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 11:14:53'),
('2c9b4c34072df62bfb724d79e3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 11:17:50'),
('2cce74526eda7211d18fc4ef55', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:35:56'),
('2cebd0bf3193888162e431b526', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:25:48'),
('2cf60ddd70f8adb46d21c52118', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 06:01:37'),
('2d0e677b835f11657a5dfa1f67', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:11:28'),
('2d1b20a3d76e5b98c3ac2f0765', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 22:08:07'),
('2d1e253a4fc56578203b693f4a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 21:00:08'),
('2d29388d7ad48625e6c6439851', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 09:04:51'),
('2d6e724691d057c4ff67e169cb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:20:47'),
('2d7f4ad436c73a4874f1330e8d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 05:43:35'),
('2d9c0bb1a88ebe3e19ba927713', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:34:56'),
('2da94fbeec61b855e330965e77', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 05:56:46'),
('2dabb5f2f571d174d23bae7c4c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 17:14:09'),
('2dbbc4927f86f79bac8007d0fa', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 11:10:16'),
('2dbbcf4eca26058192e117c604', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 06:23:15'),
('2dd237be80dd71fe4ca2adfc5b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 03:59:25'),
('2dd9276c5804c75692cf6019f1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:49:45'),
('2dea670efc74db099cfe7ee315', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 17:49:27'),
('2e184de49a3d5746e421782c2e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 01:25:12'),
('2e738194c2064fbf3bc029025f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 12:40:05'),
('2e827229c54b1247cddc04618c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 05:51:20'),
('2e90f948886c65ccfc4dbc670a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 13:22:09'),
('2eab9da940e4c351e7c1769701', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 08:52:53'),
('2eb710bcc317a104a8b21fb5ed', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 15:52:34'),
('2eb9622bdda6375feba9d75ac1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:24:39'),
('2ebeb317517a13b4f9fb6e642e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:04:39'),
('2efb5c3c8257624ae6b91b5817', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 06:06:44'),
('2f2db2ea39fe3747bccf4d5076', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:51:46'),
('2f6f0e26e203737fa574004956', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 06:01:27'),
('2ff3d30acb8b46eca200568722', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 10:47:54'),
('303805d8b60263a1b5deffc191', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 00:20:28'),
('3041a64162f959ca1a7f633dd4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:17:43'),
('3047cfe2f45b1b1bfd138e5905', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:06:11'),
('3092d2e718f462f1d16b94f7d6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:43:23'),
('30ac2d7286724cac3827f75e3c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 14:54:22'),
('30fdac5f3407dd7f76ac2e4829', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 08:23:28'),
('31170ac35bf1c64f72986167a2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:02'),
('311a69da42212f123437f8ad37', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:57:51'),
('31288356169374c748482e99c9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 23:03:31'),
('31352c984a92a7ca17634bcb31', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:58:42'),
('313fe6ceec6d20d4927ccbfa91', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 01:53:49'),
('317e1d819088ec05bcfb4b4cc7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:04:50'),
('317ebe07353c02c4cbfadb560c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 14:51:41'),
('31a040097d448455e8303f0eb9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:36'),
('31cef969407c056c5bb98fd21e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 18:01:55'),
('31e44a621003017c7c25758683', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 20:01:10'),
('31f0932e7bb911ff42898c2293', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:32'),
('3202263eb859fda46869185a8c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 05:05:42'),
('32141e247d5d77bebb145e9a65', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:46:44'),
('323d2d82fe068aaac35e2ca007', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 13:00:48'),
('327f3eb9e85db8c08dd80023b5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:47:36'),
('328405682f108bd82b392a357a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:29:12'),
('32e037d788e40fb07c1112751b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 04:26:10'),
('335600497786500364c89f8c4d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 17:08:58'),
('3383ea980d044ca36c859764e0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:17:15'),
('33851a5df66cbba390b80232ce', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 14:34:15'),
('339ac2441dc3e0b9e7d34a8c8b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 03:40:30'),
('33a08f9f7f797749ddcfe9bc6b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 06:39:48'),
('33ac2c07b66231462143cb5c05', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 23:00:58'),
('33b108e2cd8e5ad4a1d674966e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:26:08'),
('33b3e71a2555778371127526b8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 10:31:18'),
('33b4443f76f136dd76d6126067', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:24:06'),
('33b67e1050e5f4c5c26c4e9ed0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:26:40'),
('33b95127e5b99e848c1283b0a2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:34:24'),
('33c81d4f9d406dececfcd4e9da', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:07:10'),
('33c882b6ad08492accda0bc975', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 15:11:33'),
('340883f85e263aa85d44c7cbec', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:36'),
('341ecdbb8a699dfa721adab170', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 16:02:42'),
('34470cc7026d003a6081a24dc8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:04:35'),
('3462b7d424f0464395a38bbd2b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:30:27'),
('349e6b1882c8e7147b457469c4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 05:53:40'),
('34b00ea39945913aac966e313b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 14:24:47'),
('34baf507f913f69f70927394fa', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 00:43:23'),
('34f46b34dd89e49ab4f071508d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:12:40'),
('350a534899b235bb48bfd74171', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:28'),
('35264623fa611a234ac97c5a29', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:30'),
('353ae93994f6cbc1110eaa8a30', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 18:58:07'),
('353ce2eaf3a77e9e8d8c0f813b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:15:09'),
('354bb2ff4b75846a3ecdf1fcc4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 18:39:11'),
('3564560e2d28a1b65a9aea9ea5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 16:31:39'),
('358881f6dbf49b60ca9856ab96', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:10'),
('359cb61d52fe65331e9ab10572', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:42:14'),
('35a8c3dc340307398ee7173ad3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 17:47:43'),
('35ca08b8cfff25aa171e33d8c5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 15:21:01'),
('35e45b6afcf0a86a6af2b348c3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:46:47'),
('35e56bed4642bc5e7a705cb226', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 03:20:28'),
('3638eb434a99e723f7f3b55b84', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:20:07'),
('3656f4efa1b447b1af74b5c462', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 04:37:17'),
('36679034d5fdb599acc1977ff3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:34:24'),
('368990e9e1f7032772e8c93bc5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 00:18:56'),
('36a3f5ae16ec389baae7e3f01e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 09:28:12'),
('372f45ebd93f5127e7f316ef6c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 17:53:28'),
('37662d300981c43c08bf5251e5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 23:40:08'),
('37b0d7334009b33eb8fb48c2f2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 03:10:24'),
('37bb3829d1b2ddff9e14399ced', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:28:30'),
('3806919ab4dcf5dfdea1051d71', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:13:36'),
('387e278f2d33b221b526fd285f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 08:41:44'),
('388f6242f31124c2efdcca2bf9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 06:58:15'),
('38e388251ff31119774a3caea6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 03:15:50'),
('38e5da1f12735615637a62705f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:48:23'),
('390820ca0a740aca6cb8945434', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 01:26:55'),
('3909b69cef81611428cf3064de', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 12:18:36'),
('390bf3f9f14d8ee77fae6b5ecf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 03:25:34'),
('3911293d182b2adc1ccd3502ee', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:49:41'),
('3928580caf9ea53f0499874d3c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:10:36'),
('3942f91318cd04e126d8649448', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:18:33'),
('3954c5c492b7f65b0dc9c5ac51', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:25:59'),
('397371ae09b6c329566ab7978b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 14:51:35'),
('39d4e7f1bbe9eca4a5534d20b4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 11:21:48'),
('39dbbd9bc195a051b7b0b901a4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 21:48:07'),
('39f76b47a619ac139a79c914de', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 20:02:28'),
('39fc43a5e4c82fb69f967f3202', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:15:16'),
('3a3f97fe5cd2d71fd1377cc494', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 09:25:02'),
('3a3ffa30918528181c9f65159d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 06:28:21'),
('3a6159dfaa4712b94356e1fe9f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 13:46:55'),
('3a8f22fa72728b8b61b4780e52', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 07:34:36'),
('3aaebe7782ad89335cebf6cb92', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 09:10:47'),
('3acdede86255184d4687c5dacc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 13:06:48');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('3acec1a3a2f09d9688afa67731', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 21:06:38'),
('3b041c106659fed8b64022f0fe', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 00:57:27'),
('3b2d7c485bef27f5fc3e45de78', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 03:09:30'),
('3b480193a677b6986da5cba785', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 12:32:33'),
('3c0e03f4d01aa7e53e901fd852', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 15:14:10'),
('3c220c81c2b2253bbd6e42fcb2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 04:55:21'),
('3c27f25f31a7d92a14d7fc3360', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 11:37:37'),
('3c2b6fb79281b0f6e7d5032810', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:51'),
('3c32f97fe9d46d217040bc70ae', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:30:45'),
('3c47cc300fcd5811fab19791af', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 21:00:47'),
('3c7d9d641ae678b3765148a372', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:35:12'),
('3c8459616e9d51fe53e9378a0c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:50:13'),
('3c8d410e3002ef07b5244caf40', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 18:46:45'),
('3cb78e1b6b9c54e93df9b3a239', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 06:37:49'),
('3d3a01ffff2858bf1c0631e7bb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:51:51'),
('3d408314ebb9b29e75a8d96bfa', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:29:34'),
('3d4e7c24428bcd2edef6063c5b', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/wishlist\"}', '2020-08-06 05:50:21'),
('3d5e49dae5808791cb2f2492a0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 07:37:07'),
('3d811d5690c2b3dbd7d4800701', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:15:04'),
('3d8434eed4cc6c557da47d91cc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:15:01'),
('3d9fbe285088e804dfbbbcbc74', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 17:12:56'),
('3dbc3c188ce5d0e332633fd436', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 17:42:15'),
('3dc398b522476e21efcef26df8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 06:21:39'),
('3dc5d26434679dbdf14d1bd1c2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 16:08:55'),
('3dccbd33938dfb73d6bd2f95d1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 19:38:54'),
('3dde8a75548e936843a2efbf6f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:47:59'),
('3de0e1265739a506ca6f62b62b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:55:10'),
('3dfedff3ee9bdf490e7a2cbfa1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 05:47:18'),
('3e07d40a25172ddec2c03f8d2e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 01:22:14'),
('3e0c5ffeec3eaabc5ebd79a5b2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:33:22'),
('3e12e1419adfb9be2aa7d50aca', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:33'),
('3e18718bd1b71aaff151880640', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 07:04:34'),
('3ea1a908ddf7ee0ff6295b135a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:34:12'),
('3ea6425c94c4588719fb5dd716', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 06:53:34'),
('3eaa8d0c05f573d347be2ae4f3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 22:33:21'),
('3eab5e4ee26eccc6576bdb4b26', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 14:56:26'),
('3ef93869e11cbe07511d4383c2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 21:37:09'),
('3f1311345bad176ed743bec372', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 16:31:06'),
('3f165ff8d22d91d6d8256828f1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:40:54'),
('3f3e3e6841eea7fe048c244e9d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:13:48'),
('3f7412914dd92cd79ed4729ac4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 16:51:07'),
('3f845944dee18ec68b7d6cd3dc', '{\"language\":\"en-gb\",\"currency\":\"IDR\"}', '2020-08-09 06:17:38'),
('3fa9a2b285bea5f7239b7a4697', 'false', '2020-08-05 02:15:32'),
('3fbd5590478c52b27586338516', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 16:45:11'),
('3fc8f9e05994ea80786dba4d9f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 14:23:11'),
('3fccee02366ee2d180a2d9d307', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:29:19'),
('3ff0362b5ed2243adc8b374704', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:12:06'),
('3ff4130699ade1a5f65482b160', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 01:45:51'),
('40035f16c94a01d22f0a64a800', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:52:00'),
('400d4dd1f807f36b5e21631a54', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 05:09:26'),
('40277f2bf48d4795a91af94563', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:52:34'),
('4054e3cb00406d176552cef99e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 19:15:08'),
('405c36a84c24cdf5cba1ff62ae', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 10:26:31'),
('406f6ac13899f502d87f191ea1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 02:33:54'),
('408ad0e0789262793371f12ce8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 23:12:40'),
('408dbe422382b084495b80c307', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 11:23:46'),
('40a0edb8b9e4f3d44fd4ca5e61', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:48:11'),
('40e36741413b898610c9339ca2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:00:03'),
('40fd4ee867234249fa434a7c6c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:00:16'),
('411fc31a1f2078aceeae47da8b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 15:47:44'),
('4183d0f4db36e2e4d70a886026', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 03:47:51'),
('41b30b2ab37d0bd1c1c9e86e31', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 23:37:06'),
('41bec8b5ff7a5df7f71dfdb290', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 19:46:07'),
('41c254d73f2c980bbe1fba9d37', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 18:11:03'),
('41d06c1470cb44dd6e1dd83346', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:11:53'),
('41d12bd66bb46459d0145f33ca', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:08:24'),
('41fb7cbee8f204d6b794133775', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 10:46:29'),
('4286615babb1658078afd2c17a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:50:19'),
('4293f0cd09e85a53b7aa384725', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:44:39'),
('42a5aa37a3b977237f1bbc5116', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:11:42'),
('42a97dc3aefef487a342f4a7a9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 06:05:41'),
('42f173c72f81a8b3c6c8b842f2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 16:48:50'),
('4309899450ded90ae7df747f98', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 09:58:44'),
('4309bdda9a527b29684191edf1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:26'),
('43110b9712ec452993ad2545b7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:53:19'),
('4317b76b502c49062186e7c285', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 19:06:25'),
('434d094535e762766374421b6f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:34:54'),
('435035c155f58087bf56a66c9e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:56'),
('4365cccf0770efac43f6a55b0c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 17:51:27'),
('437ba9fc987c1f38fe69d2e537', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 08:12:29'),
('4383c03bc934388057213daed5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:28:40'),
('43a826aaab1163c844614e59ff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 17:59:51'),
('43d23c72ff6c16b7e0a81011a5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 04:54:08'),
('442b6c1d8aa78b193d4b4fdb07', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:23:36'),
('4440e73c7e6e77e3fadab3a1aa', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 03:42:09'),
('44601ab9d9df1e963664107028', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 23:42:47'),
('446581c931d9ad31eda74f3ea0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 10:35:20'),
('446e7b9905e3635b37a043e3e8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 23:04:55'),
('44bc615fdd887917fd2d22e670', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:46:45'),
('44bfbd7650d0052f44fe8eba87', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 14:05:51'),
('44e59688787081026c1a98b632', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:22'),
('44f44e736a13119ad75a35b2d4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 16:06:40'),
('450015dff28def3317a93b6bf9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 22:11:54'),
('45023a8cf47e9d434bcd9bac61', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 16:35:43'),
('450de194a2738254d4c15b0c92', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:30:49'),
('453ecdfbd101dbbc18fc5812fc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 17:53:28'),
('45474bb6ad300fafc950ffe984', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 04:26:12'),
('4569abfce4e0971a614f3f5571', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 12:06:03'),
('458248ebf89fa6d71706ae31d1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:55'),
('45b4b0b6a1f9944ef706a1083f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:41:23'),
('45b99ad37133ea32f67b3cbcae', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 05:29:54'),
('45feb2579ae74729d57d515ba9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 04:17:19'),
('460335c8ef3d41eb843de9d763', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 07:06:12'),
('46155419b928b57ce39addd51c', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/recurring\"}', '2020-08-04 19:15:58'),
('461800eded290e883abe5d62cb', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/account\"}', '2020-08-05 20:13:16'),
('464642bfb8724f026fa626bb87', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:26:43'),
('4693027fe0931a830714951838', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:21:13'),
('469d3d0f3a31ae0947f398483b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 09:43:58'),
('46c0a28d1711bf8586bed4cc94', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 12:11:41'),
('46e47267e05d8359dbde834622', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 04:36:15'),
('4700c404d815caabad88ceb51c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 23:32:39'),
('4715cdb503ff727273d6547335', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 15:09:53'),
('47263220b98f569e86555b040c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 08:33:51'),
('473bbe8f4208a22d065bc991ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:54:09'),
('477a85e3fd2a4401e06798fd51', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:45:23'),
('47cdadd68a97f9797a51e1aa69', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 19:46:42'),
('47d0a5a35e3421309a04c0c9f9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 07:33:22'),
('47d46da7306bef510481ee821a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:53:06'),
('4866b7fead7932961275c5d441', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 11:04:23'),
('48776de7857061b814a0492ad6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 06:30:53'),
('489620d4a55cd02ff9ebd43bee', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 03:12:05'),
('48b2316a8ba710789a9222a77a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 18:10:46'),
('48c091ccbe9ebb093e2715f5d7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 11:24:56'),
('48f21289e83251f364c34f344d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 14:59:46'),
('48fd0d271379d23946e0281f17', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:17:04'),
('4923a76cbbd16e01d111217dc0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 20:37:14'),
('4926fd88788cad1e9e4bc7b714', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 04:19:16'),
('492c1c3df3ede9ee778eae1dce', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:23:04'),
('498699427f79fbbf46eb05295f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:41:20'),
('49e192172c9bf2d9d89016c1fd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 20:27:46'),
('4a6f6fa17b240ca73550dc6453', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 13:41:25'),
('4a85301019f2de173296a79f8c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:59'),
('4adbdedc7fcbc18c413a4f9e79', '{\"api_id\":\"2\"}', '2020-08-07 16:40:40'),
('4ae3f3ad0e7361866df7e83b37', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 11:39:50'),
('4b03de32fd46617a9b1fc93fd5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 00:24:26'),
('4b117d633c676134c532988310', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 06:26:43'),
('4b2fbf58e8de69ed0931199a3a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:36:24'),
('4b36cf864ebc23f08e2662841f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 07:08:07'),
('4b3826c8653e940874ebe8edb8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 09:34:30'),
('4b5c0b2dd79a8c1573e2baa934', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 00:38:55'),
('4b7616d75f5e36d45c35835552', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:42:58'),
('4b7706009132d685851a4da458', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 01:59:07'),
('4b849cd15f7826190fbc11e1d8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:11:37'),
('4b97b6d44235c376a6f71713e1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:05:46'),
('4bb0637b60611551b7a425bf10', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:38'),
('4bb0d5c20dcc784551cbb6dad5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 22:38:16'),
('4bda1d010750a7576701a99a55', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 09:58:48'),
('4c0ba104b39861fb0699c3c3dc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:21:21'),
('4c3c13fb18841495db975462b4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:58:32'),
('4c63f1ab810a677b728532ae8f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 02:13:35'),
('4ca34d2a94deb6a9ed9cfefcbc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:19:59'),
('4ca95c5acc7047a2429039ff75', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 07:07:52'),
('4cb28cc25ecd8191a4283f130c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 04:08:01'),
('4ccfb710114b361c6145d74e38', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 02:04:07'),
('4cd6103b619c3003e958ab96ce', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 23:11:51'),
('4d316cbf259f05dfe685d6fa8f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:48:03'),
('4d3e3d28c1a60453ad6f2f4102', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 09:21:12'),
('4d50997e333efd96deac43c0d8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:12:12'),
('4d53834ef9f7f51ae1356d3261', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:16:05'),
('4d7e42e46a1e0ada67983b3696', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 16:34:12'),
('4d970f4c775eead13200836c3f', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"compare\":[]}', '2020-08-04 19:16:59'),
('4d9b52e6515fb22bd41b8bda02', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:48:07'),
('4d9fd263c072f1a0c52fed72ba', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 01:11:15'),
('4da20ca81f011bba2c06e0b620', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 15:46:29'),
('4da8cf92c21f5e7b693c067f49', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:32:43'),
('4dca3bda79c747f7a050f2ec55', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 04:47:46'),
('4dce2275a9bcc04582694e16b5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:51'),
('4ddfa9e11c3188dcffa014105d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:28:16'),
('4e2ec7a79b5b4b5f5275f0432d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 04:08:54'),
('4e3a75985dd1f71b5721cadbf6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:42:02'),
('4e4628c82f334c9583fbf2d479', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 10:02:54'),
('4e6cfda6920b158dd70d582e7c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 00:47:24'),
('4e80b6dd4be352a8d950078726', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 18:14:16'),
('4eacd5a7c0caa6733611b2301b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:29'),
('4eaf8dca6cf6ef4e6f7a298097', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 09:28:34'),
('4ef165ade359c8ae77823251fc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:57:22'),
('4f05b7623e7900258e9518a7a5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 09:48:00'),
('4f0fedd8f433b7422b24277605', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:27:18'),
('4f2f9745802155642219549013', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:57:36'),
('4f3defae3626fa95f5d906d54a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:44:13'),
('4f44b518a184e47768eb69a3ef', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:52:01'),
('4f533d5cad45e8b2dd26d3cc67', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 00:33:54'),
('4f5533aaba766fc7b2f9b19d99', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 07:27:41'),
('4f5c4e19f0aa97b1af95e64292', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 00:14:58'),
('4f5c55b829d50694a51f1040b0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 23:32:15'),
('4f5e1e8e3f6d3065bcb36290fc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 21:38:00'),
('50120fc5f11e8096984e3b2a65', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 21:15:06'),
('501a066864ca5b508fc60a5824', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 00:20:39'),
('5063794bf8a2f0455b2d42eede', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 14:53:31'),
('5078a26c996dc42f06b8c7fd17', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 01:11:46'),
('507a17f6663300a2f00674bcba', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 04:19:18'),
('50804eb07a81725e31b99e1b4f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:31:21'),
('50ad57b7ee622b646a87d55e46', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 00:47:59'),
('50e21f543e6146e249eb885bb3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 04:55:11'),
('50fd401aed2ddae2c3cda6d93b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 02:22:23'),
('5105978fd5cbad7375615755f6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 14:37:31'),
('5119bbf928f82736e853057c20', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 01:35:43'),
('512939cfec0a2ed794e34bb736', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 05:22:31'),
('513fd65e0fd331923b415eabd8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 04:19:20'),
('514195060d0ff1f2cf58c8da96', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:11:10'),
('514c7277b26ffebff462a8d459', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:11:46'),
('51922fa306b445816f9f9535f7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 23:44:33'),
('51c40386e9bfd534533c651239', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 01:25:11'),
('51c5989c8aa08d5f5223fd9a72', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 23:13:19'),
('523cad870febf31b2ac3f827ca', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:19:52'),
('52a646b9a88e0ad84b4dd7fa8e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 16:57:55'),
('52ce24dd938bc68518e078cf37', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 21:48:31'),
('52df1cb9ce09abf0ccece9f6cd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:57:56'),
('52fea3d8ee7be53f0118b14c17', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 17:27:54'),
('53062b6ce65520c00f860b2c66', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:30:26'),
('532cca039b19755b71b47ee614', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 10:54:55'),
('533d9a4de1f3e8506b3ca48396', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:57:22'),
('53428120ddd9adb3f9ee268c41', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 07:08:45'),
('537332b1ec162dd0f411bac004', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 13:24:19'),
('5389a6f8a085a4174e28df4dbd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:48:09'),
('53c7ba9947a1938d8601909e5a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 03:57:19'),
('53d1d19087f3598a6c9b352afd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 18:56:52'),
('53e160bd6eace728385a98a354', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 01:06:01'),
('5446b597fc2634f1ad3fdaf3bf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 08:32:55'),
('54778d02e4e517b24fa32087d1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:02:06'),
('54a3277321ccf1f503f779f8a1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 04:16:40'),
('54b6262229b25d52760d65e440', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:19:28'),
('54bd55332bd420b33e212acea5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:11:49'),
('54d4f24f998ac076b19b53d9d9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 06:57:11'),
('54d86fba3a6631719bce961f1f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:31:19'),
('55450548b9432825c268374706', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 01:47:48'),
('5555e95410a7b7740dabd12a0b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:21:56'),
('555bd73dcb42eefacc8bc12a19', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 11:56:32'),
('55db0a79510b1f7986c6458b5d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 05:13:03'),
('55eaa183c86e491b2ed8f66366', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:10:00'),
('561c01f491da8468da89d45738', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 06:56:44'),
('563eb3514c6d6d66a045177f96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:37:59'),
('564c26d0d390435c7dcb4098b9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 23:14:23'),
('566ddc681f3393c6bcb473f3d0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 07:26:48'),
('56720a92e3612d965ac72aa101', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 08:33:47'),
('5677ee1ecd8f82ccc0cc1b3ee4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:43:56'),
('56791b913006f32bbfc8cb8dcf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 11:43:18'),
('56851c5fd65d4a6f17fb711dbe', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 20:46:42'),
('56a20429940f287a61e20802d4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:33:03'),
('56b89e55a06ad502d75784340f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 06:38:41'),
('56d20f11a4323000536a4217d7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:18'),
('56de20231a08aed7df7ba28d6d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 21:43:30'),
('56de312d886d9a89c28681a4ac', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 07:06:39'),
('570dd5676be1dfa61988b29137', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 23:03:12'),
('575c1888355f46aec670713f69', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 15:43:46'),
('5766382c1a133e84a4ad6e4e86', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:33:16'),
('5775c8b9becf46207f35ed7eef', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 19:38:54'),
('57aee43fa665cc183fe1b508bc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 11:30:41'),
('580860edf76a91813026cbf917', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 22:31:50'),
('581ebff3253f3b3329d251958a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 20:56:10'),
('583fc156e9438e4ce2ff1416c3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 21:28:32'),
('587a0af31fdf0530e539762113', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 21:44:31'),
('589841f0eeb8a538d3c9fcb4c3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 02:47:18'),
('58b2a0faca89279c94e9dd2ca5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:23:43'),
('58b3b67ce1df1870d5b342448d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 05:31:32'),
('59141945879cb3396a84400cc4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 06:19:19'),
('591d46cffc945f624138dfaddb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 00:25:26'),
('5950c61e0d86124d02d19e346e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 11:22:40'),
('5968ff42391f8e9de86205ca01', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:16:27'),
('598adc1a69fc27f409bb0ce1b4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 14:38:10'),
('59af5a720402a94193a6fbf907', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:04:40'),
('59c27139f69a2b6c74993221cb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 07:22:38'),
('59c59bcd8c5d4da5d08b5cc9f1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:37:27'),
('59e064b53d86b70b0e824b94f2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 18:08:52'),
('59e994c769772af397375cfb21', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 11:52:45'),
('59f9859721bf98cf6804346a40', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 03:29:20'),
('5a097c459154430320e9993e4a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 07:44:04'),
('5a15991bdc74be17213bab0343', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 17:20:39'),
('5a36dfafadc37952db6a7149bf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:14:27'),
('5a3c1902013ed9ecd5b648ce24', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:31:59'),
('5a7e4ce161a4e7f1f6ba2107d3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:41:29'),
('5ab2c8e743a31aa5c56deceadd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:59:25'),
('5ad2eff3726da65321a7f05819', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 11:28:49'),
('5ad6fbb85ba27499f2f38d296e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:38:40'),
('5ad75f47a7b64f239caab9432a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:25:45'),
('5ae6f2668f76129fe8941d1ef9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:10:41'),
('5b1e2155267af5f41b733d70a2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:48:05'),
('5b2e065402e8ac053a6160c734', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:05:08'),
('5b5d157e6d05aad12abb1a0063', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:28:32'),
('5b772f2e703491e73160da18c7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 08:47:10'),
('5b79cdf7d8dd8e9977a2783175', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 11:24:10'),
('5b9a7095b7ae2d815576b7f2c7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:48'),
('5ba28985601a7fc1acb4614d8c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 11:19:20'),
('5bba8e19b1e0428f68ec7b079f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 16:30:29'),
('5bbaf0c49dbe427b1c5acecdf5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 03:03:33'),
('5bf8abdbcbd4dc8bfaa8bad7db', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:30:23'),
('5c173dd8717b564a3133c5c8d2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:38'),
('5c42d3ac642b1e04ae45922ad2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:41:18'),
('5c85f72219b15784b049edc5df', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:36'),
('5c8a93b177d3df35358845a912', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 11:21:35'),
('5c8fcc85815d2da7e9f14aebca', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 21:52:58'),
('5c9017a6679ef2ddb03a7f1d19', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 13:25:44'),
('5c972c07e8a4c39be752fe8c5e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:46'),
('5cae43a88407f3f95b95eb89ab', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 12:42:58'),
('5d56ff3116783fe2334154a605', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 02:23:04'),
('5d8e7a61b9ff27225abf117a56', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:24:47'),
('5d9506fc2261cf9ae65639b5b3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 05:02:10'),
('5d95f444705e6f06777ffb46e6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 17:27:51'),
('5db33724f3c95f7307d786a687', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 05:38:10'),
('5dc4a2f746efd2c6da816d4932', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 13:54:47'),
('5ddceedefb4cd2c8a621a47eca', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:12:07'),
('5e0619692727a72e79be52f160', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 01:03:18'),
('5e34d59393841869607a984cbb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 03:31:01'),
('5e63f9d55b42e82d31d4c55c6a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 06:46:17'),
('5e9bc22759d2fb2b2b1e6ca796', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 06:39:28'),
('5eba46fd9aa46c396c9f2cc66c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:57:43'),
('5ec57969dcb4401cbbfd211422', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 09:09:18'),
('5ec5cd9cc9a9af5ff744ddc262', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 08:40:10'),
('5ed9fd663d175614af644ba485', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 16:16:47'),
('5ee419c8f24ebed0a2a05ed388', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 12:47:00'),
('5efb2914e818d1b1f1b58109c5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:53:24'),
('5f786c08a66f868275ab1a8194', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 09:42:58'),
('5f8043981e378f2e82adab164f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:29:06'),
('5f82625d79ddb0feaa0ecd38c7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:11:53'),
('5fa9a6594a52c85041b75d681a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 23:23:11'),
('5fabe4f11b5bd976f5d8c7fec4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 04:01:52'),
('5fb095e96f3662a03457ed74d3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 18:46:45'),
('5fcd34c3d0cae5a7ca0c096b02', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 13:37:02'),
('5fcfbdad351547040dd5318267', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 22:55:27'),
('5fd79bfa2009cf5f8294ec28eb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:45:12'),
('609ac9883be0a838988ffdba93', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 07:36:07'),
('60a6550dc3adcbf2446ebba7ef', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 01:12:46'),
('60afec0c7edf7bf94c271698d3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:19:00'),
('60dbc8950eded88098bcb63daf', 'false', '2020-08-03 12:03:02'),
('60e175649a3ed07b628d50e5e8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 18:20:16'),
('60eb6f94cace4ad15f60e518b5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 09:29:52'),
('612c051cdca49126810e1bd6b8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:15:56'),
('6155998593e0663fd6f17e77d7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 07:44:56'),
('61590f0ae3c7e9983056194364', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 13:17:40'),
('61aaf363fd7dd0f54e45ed51ab', 'false', '2020-08-02 17:45:30'),
('61c577f22ad8ac5b39ea9d6f66', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 19:34:04'),
('61cd64d2f589be8d5e0b78a0ef', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:42:15'),
('6210b2050c59980eb938f598cf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 09:06:58'),
('62362270bf21e514da53acd8ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:16:17'),
('6239cc67d1be63743aae3a9c46', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:04:33'),
('623fe6cf80d67e73b07c349698', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 20:04:50'),
('628a0298f4281766b9db810085', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 16:05:48'),
('62c0a48a55b61bd5cb1d886574', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:31:23'),
('6309d798a3a6c8f4bc2b801c56', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 13:24:52'),
('6324ad0ddd61373a8701ec52c5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 03:50:41'),
('6336dc945d95f0cb19f1c64583', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 13:36:23'),
('635e8a28f474f06e91aa03f047', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:13:44'),
('6369382b9812ab3a036ed60918', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 06:39:19'),
('636e72ee7406075767fc0c3709', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 01:48:57'),
('638b8e1ea9e1f1bf6e6b108938', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 19:40:26'),
('6397cd0d392419f3eb01469051', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 21:56:04'),
('63e0c2372fb3ed97cefbf6cf1e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 13:05:56'),
('63f599284e1ca769375e5ca429', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:23:19'),
('640d41c3d27bd16012f640ec81', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 22:08:07'),
('6419c2633b5f79943ffe4e37c0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 01:49:39'),
('642448a14ae47c63a64f50ed7b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 09:48:48'),
('6451f64968e6db0fc054c91203', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 14:35:26'),
('645656382ea1f804bb5d5ba2d5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 22:36:31'),
('64d058aac089e4d1254a219ea0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 23:50:32'),
('64d86ce2509c8e1fb554c03570', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 05:54:02'),
('64ffd952f7926a037f570ad245', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:58:58'),
('6526fd172b8fa542cb0a664417', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 05:37:51'),
('65412bd4373e66b87d552a9c45', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 08:04:31'),
('6575f9b22bfdf75ccb0cdfc2ad', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 08:30:58'),
('658ab94ef4b4d58a7e32ba1db3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 15:05:54'),
('65937d7f476825cfe3a3147472', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 04:07:51'),
('65a17ab3ceda327b8b4b0d9d15', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:52:10'),
('660fc1c46195c6593c88f14276', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 19:10:33'),
('663b47218ad4391d0f120613b8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:08:09'),
('663dc87b94f80f16bd4f63f356', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 19:43:32'),
('6664192ec23ce18de73d0ec149', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 20:04:50'),
('6666ed22c775750334fdd0e51e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 00:20:29'),
('6687a091638dfd790abffc6f0c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 03:11:03'),
('668b3fe32b85bd47d61ddb72f1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 04:16:15'),
('66b3b655c34ffb1e456b23c63e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 02:32:07'),
('66b6c0e157619c43c78f5f97d9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:41'),
('66f2661efdf2fc3daa1b0e3a84', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 13:35:38'),
('670224d5fe27fa2d5fae001aaf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 00:58:31'),
('6729d489d047e1620e7490c7fc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 23:03:51'),
('672a2770cae2672b15f86c4367', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 17:57:11'),
('672f1590f8124604f5ed1d886a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:15:16'),
('6732cd4d3a1e2a8f2e0cdd4203', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:46'),
('673f35701b3d9d3f42cd4a99e4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 07:26:39'),
('674cdfb7ef4a55309b7109b2d4', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"user_id\":\"1\",\"user_token\":\"f3ifyETSNFeD0ptjpA5eSQfKOKwRmEiw\"}', '2020-08-05 07:56:59'),
('67611c45d588955976dcfa4d60', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:04:39'),
('67841d9fa751a8bf3ebc3ffd06', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:58:32'),
('67de228cf18688dbadca945d27', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 11:03:44'),
('67e38c0a67a172e4a17552b5ab', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:11:48'),
('67e7129f0e9f4291b124dc73cb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:00:04'),
('6802331d4d2350223789161084', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:59:03'),
('680c823a1fa3318e79febd4c38', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:38:51'),
('682dbecab49ab194289a21c588', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 20:40:20'),
('685bb03e2b7aef6bf439869b60', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 08:15:01'),
('6885c9e933ae38f8aa4efae42f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 17:14:37'),
('689795ad7dec7218292b73434c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:52:35'),
('689facce814074ea808c913c73', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:34:10'),
('68a6a6b69ae98bac7ec0633704', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:22'),
('68b07383962eb9d72e09062ddb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:47:05'),
('6910ac8153935ab1459175cd74', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 03:00:56'),
('69277a45ae56b5f920fdcd2208', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 06:38:15'),
('6937965573464dbeff61e2de27', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 12:35:56'),
('693e86d8d0644a39b48d17e037', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 19:24:38'),
('6954545f4e65decd0fd0703329', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:32'),
('6958b7112015882d975321d152', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:02:52'),
('697ca2643b0cbce71e2d529cf1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:17:32'),
('69a4fd177d6ddeeb1dd035d9a0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:59:46'),
('69c0aeb1ac53166fa9a6a8e78f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 11:31:46'),
('69dec9ddf423e5ba56876a711f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 19:30:58'),
('6a1528647f13ba7f91b55f071e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 09:05:27'),
('6a21e9739ffa59c111f87189d4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:16:13'),
('6a26cca6eefdeba6812c51ae22', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 11:40:45'),
('6a61f2d02bf885e92ca5b68c04', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:09:35'),
('6a728eeab6ad8e2b04382afe93', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 16:45:25'),
('6a837e9c2a7973a5083c33feaa', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 08:16:34'),
('6ab4e9ad103008e4eb7b8901dd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:13:53'),
('6abc2d161a1a9a95e4fc0a2607', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 23:30:47'),
('6ac60585b44162a86280a1a916', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 10:06:56'),
('6af8684a55e81dbba97979832c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:17:30'),
('6b12bad540494524ff3aa119de', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 07:16:07'),
('6b13500e1fd57f0e5997c4ef4f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 00:00:39'),
('6b171e94b11b049c321fef4b36', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:41'),
('6b1e4dc32f3d77eeb6611f9ef6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 06:09:27'),
('6b5448e33a3051aaa33c48b63c', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/download\"}', '2020-08-09 06:54:54'),
('6b5cf72e7ca208f35153759840', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:30:28'),
('6b5d74c2caa59bba483c396076', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 15:21:35'),
('6b715ef5f9f1ba83aef3ce5094', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 08:31:24'),
('6bd54abb027595286ab5f0fb81', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:41:17'),
('6bdc5531948cd5c4957b53853b', 'false', '2020-08-07 23:01:56'),
('6be28825085a0040dbd05a4cf7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 13:27:25'),
('6be2ee8e23a0eb4ee7e5cb0852', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 06:10:55'),
('6be3997c88092b088de51b5d79', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 15:56:20'),
('6c27a0a02faa051c149a831fe8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:28:34'),
('6c387b76451aeac3cd91f3e952', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/order\"}', '2020-08-07 13:46:28'),
('6c93a81ad364b4383d2648df33', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 19:41:28'),
('6c93cec811296d9b4393253b73', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 20:32:23'),
('6cbfc4f6e1e5db30fc3fa498a8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 15:50:10'),
('6cf49a8c1d8981fce498a673f9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:17:06'),
('6cf4abca2753920732eef1011f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:57:20'),
('6d9267e3bdeebdd64049fa3d9b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 05:09:22'),
('6da415bbf218545a2507de180f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 14:46:58'),
('6da579abcaf03a79ec576f6d01', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 13:54:58'),
('6e00205aa2bb4cfbd397da0ca0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 01:43:22'),
('6e21cba50f4b0cae61401ad071', 'false', '2020-08-07 23:02:30'),
('6e39e0b9255dc723efed6979bf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 13:07:27'),
('6e48387fcd57665ca87d9f8e89', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 11:15:27'),
('6e629a3c1492f355c74ae23f59', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 14:02:55'),
('6e6530f65902234d8e564a2bf6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 10:10:44'),
('6e7583ff1d4d02d882b0211fe9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 11:26:14'),
('6ec00f8ddb0fbe9bcbd24d90f4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 05:03:35'),
('6ee92b06c21afb3963a33f04bd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:36:41'),
('6effcef11e89f86b0795a683a2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 14:18:34'),
('6f2125f29c1e49815ac852e075', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:50:04'),
('6f26aa5ec3e723fdb9fb434e4c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 13:59:59'),
('6f32ed16186420dbdf1946ac5b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:15:23'),
('6f4bc309cc24292fc5f5712519', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 15:53:14'),
('6f5de4f36b3e965c270134d1ad', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:27:26'),
('6f6fec33b5d9875a28fcfc7b82', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:29:19'),
('6f80309333fa34b0b4dc550edf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 09:10:08'),
('6fdda0d93efba07b54d721c412', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 03:49:57'),
('7005e7d505fb1913014fcfdee7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 13:34:20'),
('70236cc3fd2619cedb7d4d97b5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:37:45'),
('702556e4d26b19d6bf090638ac', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 06:58:24'),
('7027dc9e30028b7ff7e3be9259', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 05:16:34'),
('702e270ec06f99ddee86bb38dc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:19:59'),
('70345fcac0486d8af8dc6b74ee', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:14:52'),
('703fb577147d4e62309a24c766', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 19:26:31'),
('7070c9972a479ab1e09c912f40', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 11:39:30'),
('707691e4d3ec3703fd9937d702', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:07:39'),
('70ce08a45f13000a42999373cc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 06:18:53'),
('70d5329306086aef6c0d964e1b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 21:38:39'),
('70f9055867863c4db9eb695a30', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:38:11'),
('70fd86d666a996010e5552327e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 01:15:44'),
('71128fc107ed701fd7e35d9610', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:30:46'),
('71143700a9237e741c68ff7c37', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 01:59:56'),
('7168438157d0b00f2c80f81aae', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 07:48:21'),
('71879935dc6e6e4f89535a0153', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 11:41:36'),
('71a10551bbe43c444e781722c3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:28:40'),
('71ae988a6012701086fbbc5995', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 17:12:04'),
('721b822315a69617d0c2563818', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 15:09:00'),
('724edd44fc8ae1e21c82cdf0c5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:12:33'),
('728411139a57d00ee387cbba9d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 05:43:39'),
('7292fe9481c6a04ee43515eed9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:36:08'),
('72af0afb83cf2c7bf797169499', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 15:54:15'),
('72b53dca94e00a49a6801b523b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 17:39:40'),
('72dc3615ab95057d8761e47b55', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 09:58:45'),
('73138f2622c2d085e8aed9b810', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 23:13:43'),
('737a7a2139dc25ad96aa5980b7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:45:20'),
('739ddac90fc856b7e94747eef5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 21:46:35'),
('73bc65c74347283c24bc0d4254', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 22:36:15'),
('74884547e644ccc02733b10ffb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 16:43:58'),
('748acd74f49b914346825b4a2b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 03:09:32');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('74bc6b90490bccb9428892a9de', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 10:58:11'),
('74d6de55ed9b1fb9dd85056cd3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 05:18:54'),
('74ede95c5b0b7bfabf636bebf8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 05:13:28'),
('74f9e27e99c16a5496bfc79328', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 08:17:45'),
('7546b70b6c88830e01cff4990a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 20:03:59'),
('754f71ea0e5eb017d8952e9613', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 15:10:47'),
('7557e44581c7dfaf3831e141ed', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 15:10:47'),
('755ae9b0162959934c8d362c9b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:41'),
('759758c03172e0d721edbbb8a8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 20:59:07'),
('7598f2228174d1b6fa75c25cf8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 16:50:02'),
('75dd10f00adf71ec58192eae0b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 23:42:07'),
('75dd5ad9b2c575be70c1014c9f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 15:49:59'),
('76271f8450f60282b937bb6dea', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 12:28:34'),
('7643e11617a8a6511cdd98474a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 01:08:42'),
('76730e57d10d51dd0588d45a5e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 08:51:51'),
('76c502be1561701b34a4353153', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:00'),
('76c84b29a3fde095757a0968bd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 03:37:56'),
('76dd8c06e289d69adccea6fe29', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 04:20:04'),
('76f74fa6db5131dc78408db22f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:52:22'),
('771470109df2a39c8f0b4131f7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:28:56'),
('772d4d86a24dafd0ca924d6467', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 15:46:52'),
('777a550e737150e10925078e2b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 00:53:51'),
('77dd4c370f89e392d15b06510d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:19:27'),
('77f04a9a51ff5d107d40b4f587', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:58'),
('780376566d3d9b00b80f7cb101', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:28:01'),
('7805c19f5a243161c894fbe7a2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:16:12'),
('78152b1be15e5c45a8b6e3d306', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 23:23:53'),
('7833c5e88c8dc215f92f748df5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 09:40:16'),
('78584b9c3a02f0d66a1e353317', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 07:16:32'),
('785fd71214288acf2431a5db66', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 16:17:49'),
('78b94d6cabead1d157089ff4b2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:59:09'),
('78c98650c99e67e8198f150640', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 20:08:50'),
('78d20f1bf9e1cac7fba8d99e51', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 20:13:18'),
('78f033df5c05c6a8d3ef878e6a', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/account\"}', '2020-08-04 12:11:30'),
('792c09dd3427dabeb802c661d7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:44:23'),
('7933fbe469fbddfd5812a5e0b3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 14:52:26'),
('793e294751c9c3b72a0184afcf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:43:38'),
('798425b36a29380a04815b2bd9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 08:45:22'),
('79927523095abe6ea2b0ad0667', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 09:18:44'),
('79961f9dbd21d21d776cb9e967', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:37'),
('79ae5f84fbd9c0f6999d0243c5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:38'),
('7a07242577e50a43dd33738ddc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 21:21:07'),
('7a704287343ab2ca530d38020f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 03:47:24'),
('7a8c3a467828bb6be81147dabd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:46'),
('7a93fb4374355e335917029526', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:29:27'),
('7aac79cbc6fb367a4a6d9b1fdc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 22:25:59'),
('7abbcedafef327deb21c71327d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 07:26:43'),
('7ac8f348291733d119fdf4cb3b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 18:04:11'),
('7b1baac3684e6f88aed0265053', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 22:06:24'),
('7b28a8793c6f986bf0928f2888', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:06:26'),
('7b430233669b637ca9776dd6bf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:30:29'),
('7b43379a21ed750946fd9cb0cd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 08:27:39'),
('7b7b790241361a04a655f9fbb3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 21:27:40'),
('7b84283d2ddc06503e17033bf9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:57:44'),
('7bcec7633a4c77c68c07485a45', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 13:21:46'),
('7bd6623457c084a07290431fa0', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/wishlist\"}', '2020-08-08 16:59:21'),
('7c53f18aca98a88c0fc1c67735', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 13:38:19'),
('7c7170732ff6b5b9e1d13f4b2c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:04:42'),
('7c7b67773bd0c416c33e7b8ba4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:44'),
('7c8e5d83d80083ed1f119e2960', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 05:18:34'),
('7ca5664045852890d2deb0be64', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 14:48:38'),
('7ccf885b5b3a2d99f29a371c60', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 08:21:56'),
('7ceeaa609767515b0f965e4fa6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 13:26:23'),
('7d05eeec133df594082cdbba92', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 13:12:18'),
('7d1a66aa3e75b0248b668aa85d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 03:44:14'),
('7d20996e50ea94fad735a3a7a3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 19:40:40'),
('7d5de3464137250a62601758f0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 13:02:50'),
('7da73a2b92b9b7873cde0ad8c3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 13:31:14'),
('7dbc00ab77b6d53e980c9e75cd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 10:47:56'),
('7ddaa38f215fc5b6587644750c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 16:07:19'),
('7e00f8c46d8f658c369b26de7b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:02:44'),
('7e19c20cb54cec193bbc245c05', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 23:33:19'),
('7e27b11323949ea78eecdc0b59', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 02:18:17'),
('7e330f15d781d8535802c90b85', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:19:51'),
('7e9378cbdae974fbd2da921720', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 06:21:25'),
('7eca290b9eae76ee6642f217a9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 12:40:39'),
('7f25ffdcd56315666215c620a9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 21:57:59'),
('7f3e5696429604a1ba56656947', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 13:40:42'),
('7f40950d43e3a837d8dd00c117', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:01:35'),
('7f886795f95c637461e57a421f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 04:18:24'),
('7fb9de1772e3a2e844723e04cf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 11:42:16'),
('7fc0da425ea073036faa993beb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 01:45:33'),
('7fdd11dc6c996f76e6e7446bb2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:45:36'),
('7fe6a8842726369967383e2bb8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 11:50:51'),
('7ff152ae991f9dca766ca7d3d1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:49'),
('801ab355ed63a992d773ddc3e6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 05:41:52'),
('80279be33b60d7c10226033a0e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:37'),
('80591d3abfce7cf464406eb739', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 08:52:36'),
('80b0546a6f922a033daff75d8d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 21:49:11'),
('80f3ebde8067e5b2d40dc29121', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 18:33:05'),
('80f557a8bd2e18640b757679f5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:27:23'),
('813034705c87beed5c39a8f61d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 07:54:58'),
('8199521701d8450cd7d425bb8f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:32:44'),
('81b0e1fd38283f8bc5f0e95a46', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:18:37'),
('81b336aeed4d0bfc26c6bef602', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 01:27:38'),
('81d76e7efa4b161177cfa505cf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 21:10:39'),
('820b174d2199ceaf662fc164d4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 22:12:56'),
('822d0bef07a3062656a5893e7b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 07:36:16'),
('82572ea293957d07aa1a54af02', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 19:41:43'),
('82b7c74e61999a6c0febc94c0a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 06:25:10'),
('82b82d58bcd0aa7c67619dcbe5', 'false', '2020-08-06 05:00:11'),
('82da03f2eef0dd962688806535', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:24:38'),
('82e80ba2c477b0dc9cced2e15f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 23:25:18'),
('831b100c8bfb9282c6f21fed6a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 06:38:41'),
('831c43956befebce7795cd9260', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 01:30:43'),
('8350947f5fcf8d401562cfb96c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 06:20:23'),
('8365a55370927ad7ce99c5087f', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/reward\"}', '2020-08-04 19:16:23'),
('8382e0c164e07cdf22d3d8c414', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:18:44'),
('838636d80c69a35bec6a954111', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 03:00:56'),
('839e9577fab12795cc1cf90a90', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 09:20:15'),
('83a048ffd8fe2d5ece3a772c18', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 10:54:16'),
('83c180a219c075f1bd4517fbb1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 15:50:17'),
('841de1c756d75f8fb031d29a81', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 20:59:16'),
('841e93907470d995ce24d7188f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:52:08'),
('843d570b6329ae6736c1616e0f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:48:09'),
('844e4c65aed170f71e573208da', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:21:12'),
('845f2325224b5a8f070b225e1d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:21:17'),
('846f3bb4302b236d53bb5f1a4d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:00:01'),
('847109596649046d34240c9aea', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 23:05:21'),
('8488e02259b8223e2e683c3419', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:15:15'),
('84a044415d2ac0514c38eeaba5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:42:39'),
('8511c0a59a96b3c8ca77828774', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:14:15'),
('851d5c8a194e8413c7da833006', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 07:44:31'),
('8565f601ad3d0561bbbb48c0c6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:48'),
('8566c1e58839731796248de36e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 02:06:25'),
('8566f21a3f61436c3f135b50e9', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"compare\":[]}', '2020-08-07 18:12:39'),
('8571e03913f42a6ff8e5f88713', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/return\"}', '2020-08-08 21:54:56'),
('8589bcbea9e67c1311248caa9c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:31:00'),
('85a59f2110c6a65b71cd13a218', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 01:16:23'),
('85d2b48f1f60f67b3fdb0c1ca5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 02:51:03'),
('85d9b3b2ab66703185bffc8495', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 15:59:27'),
('85ee821d4613ae0741da5c0489', 'false', '2020-08-04 03:55:58'),
('860fe5357514f99e1bd4a20017', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 05:06:23'),
('861643d3b5e8a05c840fb61185', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:24:28'),
('8641f49fdf967759c4b93de1cc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:16:02'),
('864ad8d5e022a7ef470b13074f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 17:05:09'),
('86708ef0c945d88d3d88384349', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 23:08:42'),
('868a09b44dc6548bb3476f6d8e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:11:03'),
('868cd68af2dea0c7541fc9226f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:31:45'),
('86a0cbe736fd576751a2566fe1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 21:20:07'),
('86ba0890b318c32533755e7308', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:21:40'),
('87639bb7d007e19f3a2a6b32d7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:27:58'),
('87927015f97b78e5c1b06ae633', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 21:15:20'),
('87be852224ef47861a8456f558', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:29:00'),
('87da873f1772c31dae0cada0fd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 23:31:36'),
('882be64e151fca2f5d4325128d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 04:44:12'),
('88368433319ad64c0601d38630', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:04:44'),
('887460faa1febb74852f245a34', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 04:35:12'),
('887eb2c3f52ddf199175645714', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 21:39:43'),
('8884bf61e945759a1879790606', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 07:26:00'),
('888f20649f0a72ccc843d86a00', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:10:16'),
('88e9cebfff9411d41e10eed8b8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 01:40:37'),
('88ffd06117aadf417bda8d63dc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:38:15'),
('890edf977812b4097bbc725444', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:15:43'),
('892c0d4abf196290065a18bfa1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 00:09:28'),
('894c686ee5b4ce209a0726d208', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:15:38'),
('89bf189ec674e4489f534764e7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:44:24'),
('89fd78fb4bf35e8333c86d9b84', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 17:32:31'),
('8a21d3f79f7064598a5c280cb2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:11:20'),
('8a248b9a58128c76d9b90a772d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 15:35:46'),
('8a24fbd0d205cc9ec48c989165', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:27:22'),
('8a3c2f0e6f16ef442168ae393d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:17:34'),
('8a465cc0203a3054307150310b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 14:33:20'),
('8a4acb03af2dff3653a4b79802', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 07:55:31'),
('8a6fa6ff85fb663f97d221b7b3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:31:08'),
('8a73337068dc75d31011c64858', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:53'),
('8a98c5cdf7e55f1ef696df0ad7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:12:07'),
('8aad91c9d1d853d943d9e86e79', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 07:17:20'),
('8ad5678811966903223dfe7cc0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 23:56:02'),
('8ad678f000146af252e0b655d5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:16:19'),
('8ad6bb3cbe84f362204fb0d749', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 21:39:03'),
('8adca8b422122c63ebc2113d34', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 12:14:10'),
('8af8517900bf55bdb754900773', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:56:20'),
('8b22e4a0268128583ded5b7a96', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 19:54:55'),
('8b2a7d37d7a1b05e3c32a3d15b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 13:40:34'),
('8b496bcbee97e7ccedc01b5dcd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 15:28:34'),
('8b4c92fa58bb2b69aa28e48b71', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 02:06:23'),
('8b5bcc2b39a24d34cd56837e22', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:10:57'),
('8b9b1eded37e4e56bc8030bc8d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:47'),
('8bc43a21fc486a6a8bac3d87b0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 12:36:57'),
('8bca9acbf0c20cf460862518ff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 03:38:23'),
('8bf4916d09e8d9c30d1158763f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 06:48:47'),
('8c15b70cb34f9470acf4b84483', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:13:29'),
('8c72b592035a55fa17f5bc5272', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:52:00'),
('8c7f5fa0e3a2e758f22839e327', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 14:51:42'),
('8c87ce2ae2a44afd077309b53e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 05:19:24'),
('8c939495a417d51f6183c8142a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 23:19:10'),
('8cb52a9f84ddfec93046336751', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 15:40:31'),
('8cbed0b2a4f510c4bcc6af7bda', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:34:48'),
('8cf4eff8bbb3e52033f6a705ba', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 22:41:18'),
('8d1d3ed03d9e44da0c3453e782', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 16:46:13'),
('8d9a58a07fab863ab0d2b23ac6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 21:29:35'),
('8dccda57824ce307920f28b5d9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 02:00:40'),
('8dce6c994cff32918a8569c15f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 05:50:29'),
('8e0e92bfeca6d41edc20b4c261', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:29:04'),
('8e144ecba330828b81637f109f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 12:22:39'),
('8e570d203300f3559092bacf93', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 23:52:15'),
('8eb358ceec2358dd0b8503687b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 13:56:23'),
('8eb371e66aa2a05052f180a6a1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 12:50:07'),
('8eb5a8db48e3a30ae97527d47d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:00:06'),
('8ecfa1ad4e0350fc99ee5206e7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 20:30:52'),
('8ee02f8fceb77d8a2b5612d863', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:13'),
('8ee0ed753f92d6f4688a54afc7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:40:17'),
('8eec6f88f9fc88b67131be46f7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 13:11:46'),
('8f0c078db99af78e282babc61d', '{\"language\":\"en-gb\",\"currency\":\"IDR\",\"user_id\":\"1\",\"user_token\":\"iQah41RBYNeV2pwEVqn7Rd3YMQBOxKtw\",\"account\":\"register\",\"customer_id\":\"1\",\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Afsri\",\"lastname\":\"Ramayani\",\"company\":\"\",\"address_1\":\"Kapalo Koto\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"Padang\",\"zone_id\":\"1534\",\"zone\":\"Sumatera Barat\",\"zone_code\":\"SB\",\"country_id\":\"100\",\"country\":\"Indonesia\",\"iso_code_2\":\"ID\",\"iso_code_3\":\"IDN\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Afsri\",\"lastname\":\"Ramayani\",\"company\":\"\",\"address_1\":\"Kapalo Koto\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"Padang\",\"zone_id\":\"1534\",\"zone\":\"Sumatera Barat\",\"zone_code\":\"SB\",\"country_id\":\"100\",\"country\":\"Indonesia\",\"iso_code_2\":\"ID\",\"iso_code_3\":\"IDN\",\"address_format\":\"\",\"custom_field\":null}}', '2020-08-05 08:41:26'),
('8f19c1fc684c6c6ba19d2289e5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:15:42'),
('8f2012d113fbc122d3fab20056', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 16:53:08'),
('8f256179b6836ec235f6615825', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:50:19'),
('8f8935be1f064d3478eebfcc28', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 08:14:08'),
('8fb158849bd7d38ba39216b998', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 23:47:35'),
('8fcf76f29a86a01088b8e5db5a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 03:21:33'),
('90018b0f08f85df7345bf76664', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 17:02:47'),
('9092cda125517aabe99e8ee2de', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 01:34:40'),
('9097b3d5c5bd58363c1f2c10ec', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:47:59'),
('90aad76197d36b078c5eab6195', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 11:25:20'),
('9156ada94b338c4bfdcbf9c97c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:36:52'),
('91697ce642cc003c6edfb8c95b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 16:27:17'),
('9178bda033f729433ff463e438', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 15:30:10'),
('91871e25afbacbdd72dca8d6bc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 23:51:35'),
('91aa31efb6dcf29d63774aa5b7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 07:11:46'),
('91c75aa9dd818898bd9a22a0fd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 07:55:04'),
('91d8ee295928a39430dd674db8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:02:18'),
('91ecfb5d586650217926ccf981', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 10:50:14'),
('91f39ab6c1e3858a9a669817a6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 00:51:41'),
('9233dad7e3ffe747e1d99682d8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 06:48:57'),
('9268fd032777d7d24bbf4b9fff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 05:14:17'),
('92779ebdb6c52d44cfbdf6c858', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 12:07:32'),
('927f5788552dceaf2e6d800e70', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 17:23:03'),
('929ba0bcede30c1426a9ab7503', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:16:37'),
('92cf38fb767c3fe0ad6f96c280', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 22:07:03'),
('92e9b4a36db878239d95d33398', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 11:51:43'),
('935b7a25c2355d8a16cf1b79b3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 07:31:26'),
('935e7646166e9ee98900400f19', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 17:53:53'),
('9379e6f533dc0490623e50997d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:04:39'),
('9379e7f0d9784b4571f5556f12', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 07:17:54'),
('939b63cc0e4a2e87b2223bccb3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:21:15'),
('93d071f7d3af7b1630ce532696', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 11:05:59'),
('93d74d64fdde197dbdbd6d3260', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 11:03:24'),
('93ec6284f6d1d5f7b881de63d5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 06:39:20'),
('93f1091a6fe8e4b69e52061636', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:35:45'),
('93fe1cf52f8d106f7966d93f29', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 11:24:21'),
('942bc437ed7fa3421f2b9aadb6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:34:24'),
('946ea62f3084a84d5559b5308b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 07:55:03'),
('946f8e1d70b786f3dfb3771f8a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 09:58:16'),
('9478efe2011b8472418168505e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 05:53:42'),
('9485421705330a62b328855b47', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:17:19'),
('94f592ba8a4f0989444918a3a1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 18:07:34'),
('9511fa8301e41f03ab453fbc7c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 11:31:16'),
('956338724a2aba9fd018a4b8c5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:38:08'),
('9571283a95a5359c219a4edfc5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 06:29:51'),
('95991e22284b44b4040daed8d4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 08:09:22'),
('95b3fc547a2112291ec2859a56', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 04:44:40'),
('95ce0dccd0902cc552591e89c9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 22:16:31'),
('95d611b99d76fc19b73c43e9f5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 18:07:21'),
('9602000e28ee9d8213db1eff1f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 13:37:57'),
('9611cde13bb73f9426edd892d7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:39'),
('961acf98316821f13677be5eaa', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:40'),
('963279d881627f977726eae393', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:19:55'),
('96a1291e2be2f46df7233d087d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:17:55'),
('96bddae8138daa13893a9acc00', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 17:37:26'),
('96f3f419fd8e7789dc1b41fa02', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:04:57'),
('9715ec00f3cd812ffdbc67af0d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 11:16:34'),
('971e95584579fd307763f07af6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 21:11:19'),
('97476160b19d057622b09a2a78', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 00:57:51'),
('97934feec86ad78c830da6c41f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 23:27:38'),
('97afb908ceab6af6b608b01f14', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:56:04'),
('97bcf6fcf4d8daf0b497f106cd', 'false', '2020-08-01 23:15:47'),
('980c4359e97a69ac349cc7a865', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:54:58'),
('9831fe1bde526aacd93bdfd791', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 23:00:14'),
('987dcfa222618500805f7634d8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 18:27:48'),
('98b8917e74558d707cdfec56cd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 20:14:31'),
('9907c5a877eb52dd8dc7e713aa', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:29:35'),
('99269f9181b9ab93a465d336ab', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 20:59:57'),
('99371daa92c637d7cda300bb9f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 14:02:55'),
('998ef66eab50a143ba88f7034c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:42:15'),
('99957048f889f2147c0771f99b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 11:47:45'),
('99c1551023aef2d019b8130956', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 06:16:11'),
('99d381e27c8ef92484e4c1a511', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:31:06'),
('9a331225720eb2e071f85f7ab6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 08:03:52'),
('9a38e5cc83648a6ab3bc7539ab', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 15:02:05'),
('9a4429599c94453acef3a631c9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:45:07'),
('9a4d0b0c9c4a4d476ede2682e5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 04:25:16'),
('9a6a23c2e2e8cccd09206575e1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 23:18:10'),
('9aa7b68564fea7a7f9f74ca2b2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 14:53:11'),
('9ac319a534bf61ec292e8052a3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 04:26:57'),
('9aee64a83b96644194935362e8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:01:17'),
('9b0c142194927651f3dae27ff5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 18:55:15'),
('9b33b37f1865aa54a49e473202', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 10:08:37'),
('9b3418842b4c703c92e320a362', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 06:11:04'),
('9b3551d4f2637a2d3304ba0d3b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:27:32'),
('9b4b57ee69b926f0d4572f4087', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:41:20'),
('9b53f60ba33eb0eea6da5bb730', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:25:57'),
('9b6d270a88f814a9620dc62074', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 07:17:11'),
('9b72d29c5e5dec2dacb73e6a0b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 12:49:33'),
('9b897bf17ebec0fa1b1cbda319', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:27:13'),
('9b967544686a0795c419ae0277', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 09:58:07'),
('9b97f3e919fc1f62ec8da05e35', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 05:41:27'),
('9baff560f404eb7a140c8137bc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 12:02:47'),
('9bbd9ba83125815ff6074e3345', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 13:17:57'),
('9bbfa8f1abfd88a6d0be0ec938', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 03:25:18'),
('9bcc16f58cf50918c3b2ab2302', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:30:42'),
('9bd171ec8bfe1a10d47fa8fd0b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:10:26'),
('9bdca0cffbfb568e7664988648', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 19:31:52'),
('9be94b45603d412f67e15fccd1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 22:02:26'),
('9bfa4ee6702451356afc046bcb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 15:21:22'),
('9bfad22706243378bd3f755991', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:23:30'),
('9c2a0d052f1bf2fd9c8cadf445', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 16:45:06'),
('9c623edfaa05c0c443dd559831', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 08:27:20'),
('9c6b0e83852d26a647c87093cf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:50:06'),
('9c7a4b60a9c7c072ba54322907', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 04:56:14'),
('9c8e7e12fd27cd398cb76dea28', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 03:12:05'),
('9c90d20526afe90f7f6aad89c4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 18:13:58'),
('9ce08bdd1538416304e7461166', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 08:43:25'),
('9d06f5f192b41b48ca6ee05622', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 09:56:36'),
('9d2221b37efa2a8cb2d8b5a233', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 07:27:22'),
('9d2eee8ccfc4c54f58b20e8d45', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:40:14'),
('9d4487c6550625a6c6978835d5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:58:33'),
('9d491dee9592ff423fc6e7408c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 12:02:25'),
('9d5ff15b37680ee83a5398aebb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 18:11:03'),
('9d77a687262fb3ddccc78c408f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:16:56'),
('9d8dce528572f1aa9b3fa90a98', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 07:25:08'),
('9da3bedc1a3f9713ffb28fb057', '{\"language\":\"en-gb\",\"currency\":\"IDR\"}', '2020-08-05 09:23:24'),
('9db5ada88c64565017ec9b2592', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:32:47'),
('9e36c3331953638cb27d29a173', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 09:47:09'),
('9e7028088adea2ea7e83b718fb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 23:30:26'),
('9e7a8a49553ec8ef5f9bee9517', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:54'),
('9e875b538237fa59c6b7c35db5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:32:52'),
('9e979b36bf63bb1eaad4a3c333', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:04:46'),
('9e9c55dabe145fb6853a72353c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:19'),
('9ea86398021d40708e98d16e5f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 05:50:24'),
('9ea93e91cc34fd44c33f12fb1e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:04:37'),
('9ec2287631e085a6b6f578cb25', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 22:21:22'),
('9ed754c581475c4336812dda52', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:19:07'),
('9ede338e66afd80f2afbcd9ce2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:57'),
('9ef14b20c7c6293f284be74e4f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:15:14'),
('9efc8ac0dc307e7194f25db408', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 17:54:14'),
('9f4d141eb631c1cec964cdb66e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 15:11:09'),
('9f5957007746935f15107b3ab7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 03:19:52'),
('9fb9aa8ddf2104bd7e5172d1ac', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 05:56:46'),
('9fc0f1c289ea9dd3b9eb75c6e7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:18:38'),
('9fc732d382b2acc476c1d2fdaf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 13:35:37'),
('9fcd2af3d994c194ad9b02ab25', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 10:27:33'),
('9fe575ffbe212830404b5fb7c4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 07:12:30'),
('a003bc724c179f64f875050ac5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 21:29:11'),
('a0079e3eaf55690cb3500ec96a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 09:00:40'),
('a01408e64078e29418f584e03f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:41:02'),
('a03fa243b85f53b6a4b8d8ef27', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 17:49:56'),
('a0434086303672dd14550eefcf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:03:27'),
('a05cb2161be3ec85445b0b9fc5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 05:31:59'),
('a0671c2a700910b61e5be40ed2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 00:31:44'),
('a077d31e8d9c3dce1ae6605891', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 19:35:35'),
('a0c8d80ad6f60373584343becf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:40'),
('a0d42410ba431b371cf83c75a2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 11:00:30'),
('a0d52f3d60e748cb815e521ace', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 19:24:36'),
('a0fc3a40b8c755b90c7ae5b9e1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 15:22:50'),
('a100a2ddee9f27a661bdcd7ee6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 22:50:46'),
('a1011d95f09fc30dfddb505d5a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 22:53:44'),
('a10270c8f142dc17dd94d0dad2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 08:59:46'),
('a126ff8c902a716e2012e70e9f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 20:19:16'),
('a15e3174b2424c588103fc7d12', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 22:30:50'),
('a163328bf92f5a27d5e0d33db5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 21:06:49'),
('a1bb4b3ac6161ab8809a5eab9a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 11:30:58'),
('a1c276080dcfae464bfb770b57', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 02:52:05'),
('a1ddec7cb70e4b6ffec74bdd71', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 10:44:48'),
('a22c21e13f97fd0420bbe164e3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 11:23:19'),
('a24d50599190d1335430794122', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 06:31:21'),
('a2baf1af4d64f53f9c19891137', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 17:41:21'),
('a2c97b9475f17583eccd34f8cb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 14:13:43'),
('a2e0afcdfa27a902f7e9f09849', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:10:44'),
('a32e14970cc11a7b07283f30b5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 12:24:58'),
('a356b6a518644d2cb88b978e73', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:38:39'),
('a39b9358f24d18aafee581ed6b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 00:10:31'),
('a39b9ae5619dfbeacd38cfe577', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 17:54:24'),
('a3a2f57503ab77fb5bc43cb28f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 17:17:50'),
('a3fab7875761448cdf3f3b7db4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:05:46'),
('a40ce9f5e667191d63e2cbd7e9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 09:15:34'),
('a40d31ad9a8eff692b14c0339e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:33:29'),
('a414637870d742f50af6472879', '{\"language\":\"en-gb\",\"currency\":\"IDR\"}', '2020-08-03 09:08:57'),
('a447e63e10009b506b27708710', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 09:49:20'),
('a473b0420e8eb83d73e932394d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 08:23:46'),
('a482ae01e238362845c98752b5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:17:20'),
('a4a8fb568f792e401b243e3650', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 13:54:09'),
('a4d8cfc664d0a1d4517958cf76', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 09:29:16'),
('a5033e6c5066f58068b0de6d8d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 04:34:44'),
('a553ad714afad791386c51d98f', '{\"language\":\"en-gb\",\"currency\":\"IDR\"}', '2020-08-04 05:02:47'),
('a5c86cb644875d383f5cb2dec5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:00:47'),
('a5d80ff1199741ed704819d4ff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:22:43'),
('a5fd10b61e41bee51bbeeb187e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:18:05'),
('a6136081af8cb05dc12e206996', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 07:27:21'),
('a626adcc0db5ab4fdc4696663b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 14:14:09'),
('a62b0a9300bbd68d52a7dfdb33', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 04:40:34'),
('a697f5bf91ee18b63e461e5539', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 18:48:40'),
('a69e8d7862cd2bbe061a0e9f21', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:38'),
('a6bc095874340eb273a194addc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 09:01:28'),
('a6dc6434eb266b0db34eae4283', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:33'),
('a6de2a78f1a59c47571924170a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:37:58'),
('a7145ac7c962f6a53023b2e867', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 03:12:06'),
('a72aa660340f4b84be5dc99c93', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 02:08:44'),
('a72c98519debe0006913faabbc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:07:44'),
('a74c33d76be05682792edd0234', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 03:19:27'),
('a7958334655b48dcb3a0352ab1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 10:18:05'),
('a7a5c5d612d04b627431601aa7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 21:10:15'),
('a7ec884a5ef79fee893c9889f8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 21:04:21'),
('a7fdc898ac584a5a82277a3f80', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 14:41:28'),
('a8067a1d3aef97510e588b021b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 14:32:01'),
('a813de4b63b38271eceb4a4f60', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 11:50:12'),
('a827bc757436a4b6439344b51a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 04:59:58'),
('a853d8247b7ba7a1c40cafeef1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 11:32:47'),
('a86446eb847f9717ffad514977', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 12:06:01'),
('a87248ef9f7b0cb31874eb484f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 13:55:49'),
('a8789524455696caafbb86ae7a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 17:56:18'),
('a886e07be34df6f4c3c0df64f2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 18:17:22'),
('a88793571316dc09b1dbde1b82', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 12:37:00'),
('a88c374b2206902eea4ff224e2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 00:52:50'),
('a897b876ea459f571e0fbd046f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 21:19:04'),
('a8a0ea41a314f342dda48aa739', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 23:04:15'),
('a8a9afd82137b0ceaa70d25b3c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 14:32:39'),
('a8b111bc9ab04d4f51ea96b3a5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:17:18'),
('a8c8905cd9721ab5759f434e2e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:31:21'),
('a8fcd406b42c2ff062c9a4b366', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 05:59:46'),
('a909ec1a8faa6e0cf9ad5f351a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 12:21:22'),
('a920d734932482aae2de7cbf36', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:48:13'),
('a9415b5a9e1a63e1aa60e94b03', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 19:17:03'),
('a95a818c42db53cedc56ae5713', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 13:59:38'),
('a964de6d286da19161441dd124', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:12:57'),
('a9c0686427acbe54ef79d26356', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:03:37'),
('a9f18496a8db7f310a62adf4ae', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:25:06'),
('aa325410a5eac1dd26955fbe0a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 12:28:04'),
('aa35afc7394dc2dbbb899da0a3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 22:54:47'),
('aa7f496921fbecc0729941a02f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 07:07:43'),
('aaaad132b798c5e5d6247d96a7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:50'),
('aafbbe115f65db5d4b44dd839a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 23:49:43'),
('ab0a31eb900b2e7f82fc29b07a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:32'),
('ab2597ac50ea45b7aaa856d3f6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 07:53:32'),
('ab3c37f660bebc4c35c439f80b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 13:26:23'),
('ab5c2aa088b49acf49dcac6627', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 12:53:34'),
('ab5ffbf089b1c05ef54daa9271', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:10:31'),
('ab64ed03ef94579afeeaa7d17a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 08:02:10'),
('ab70aab14577738fa6c08afe86', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 02:31:50'),
('ab8671de46a94451027fa4930c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 08:56:38'),
('abb77f6127bfd587a8b4ae6e39', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:58:19'),
('abc1428191013815ded4d734dd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 09:57:22'),
('abdb49eea4109cbaf525e70226', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:37'),
('abe48c483953eb6877fdcae07e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:01:16'),
('abe638284041efadbf081f6e95', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 17:18:26'),
('abf721586d64430c18e9a26f70', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 17:24:05'),
('abfae04272f0f4ed0dce20b75f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:35'),
('ac178b001d0a1372f50457d647', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:05'),
('ac613b74a27e7399684dcefaa6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 03:51:54'),
('ac69de089f2b4645fe24500fd9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 18:24:42'),
('ac6ee2d7ab2007069d4b3e7af0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 17:03:28'),
('ac80af280924b70740d8175327', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 04:15:48'),
('ac9631415d937e49ff4f38d684', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:26'),
('ac983c586f16196f6779b9c97a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 17:10:29'),
('ac9bfde4cfb1a04e04f7f9d806', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:15:00'),
('acdf14dda7b9f4bf39859cf826', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:35:46'),
('ad1423a29dc0791165976ff011', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 19:59:00'),
('ad181926f46cd4382e7b4765cc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 15:57:22'),
('ad184943e1bd33ecba96275b68', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:52:24'),
('ad1cb3afd3bb743dd541710f96', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 20:31:18'),
('ad305a444ad0efa051c7440c1c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 13:50:10'),
('ad314a6a5677cee9bdf473530a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 16:16:09'),
('ad4595fb60e6fec594fa1224c0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:31'),
('ad8df0b5c303dbd45b4ef9bf05', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 17:56:39'),
('ad8f8813a44067e590f777a751', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 23:22:09'),
('ad9b557d8a8ce12b0bf6dba0d3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 04:07:12'),
('adf39b96d864a15cab965d45e9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:11:11'),
('adf86f1909010ab40f7ffa2eed', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:34:25'),
('adfd478e3c59fc739661a4a4d3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 14:13:05'),
('ae2a8bd89b3cd4f80b1b970e89', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 06:40:21'),
('ae81f628f48d7c64158f719ead', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 13:18:58'),
('af09c0a84dd3640a231d36d7d3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:16:53'),
('af37a2d5734bd2fe62adf281ed', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 11:45:22'),
('af7fa97e776865edf38b8b903b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 05:41:01'),
('af9e102d0d59cb5fdc503447a8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:11:11'),
('afac76269154a0fb14c4eb1b27', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:20:24'),
('afb830d07b8344c0e7457c1ec8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:50:22'),
('afe7a2ae319bc41d409a40444a', '{\"language\":\"en-gb\",\"currency\":\"IDR\"}', '2020-08-07 12:05:26');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('aff9e017e5e37e19a3e02f4efd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 20:23:51'),
('b0029ba98f00e4cbb6ab2f2dd2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 19:53:00'),
('b030657e24270672b04de17eea', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 06:35:58'),
('b0382cb20dbcd12f1b78b1cca6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 15:15:22'),
('b04fa2f19e99c2350ed991222a', '{\"api_id\":\"1\"}', '2020-08-05 08:41:26'),
('b065d5c8a1d48b5a23ba5361fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:41:22'),
('b087127f621b1e693bb35211e3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 19:45:27'),
('b0b6a7b42e4e6e6cb0f9f3c442', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 03:53:42'),
('b0b724a87ae3a3e41cba225ef6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 18:56:12'),
('b0b9f493e606b8b9f03175003e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 18:25:35'),
('b0c4bfe6c367bfd6b92b6d6d8a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:30:59'),
('b0ce363590750b02deea2f9fb0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:51:43'),
('b13352f4f3f17ab8b39d1b9aa4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:53:00'),
('b1337598576300d24a0b263e4c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:30:29'),
('b16cf69b20039f624a00378d46', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 22:35:27'),
('b16f4ca80a9fd0805ba137b4b6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:10:40'),
('b1c6ab368ccbb1953e931df752', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 14:05:17'),
('b1f5ee3cb3a05cf9d12ab6a406', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 22:15:52'),
('b1f90467ec525f0eeb10ce5e4b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 20:33:28'),
('b218e7c9d0f9f0f943bcf0f44c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 20:52:23'),
('b251ded127779a54d5a5f7174d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:37:55'),
('b271063a1373d5637033727e98', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 14:52:45'),
('b29fda799e10d7751915e80780', 'false', '2020-08-01 05:41:51'),
('b2a1fea8bb933f3b2877cd9536', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 03:28:55'),
('b2ccb9490297c2c2f92aef512c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 17:31:00'),
('b3104578435e19cd1b693bc980', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 04:31:35'),
('b332a2b5b699b2b6fd6dd160cc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 16:14:02'),
('b337ffb60edf48d7f8b9ea824c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:25:59'),
('b35af49419d8339cc9667d5f18', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 20:51:19'),
('b35d51aec42e083130bf69c0d6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 09:42:10'),
('b3a3eeed71ab55df3e912d1610', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 20:57:10'),
('b3a850dc9eb76606b5804a297c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:13:55'),
('b3ed3abeb51c2847e19084eb24', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 07:01:29'),
('b3edecc533803bc532f1500214', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 07:47:46'),
('b3fdd3dd298ac30d4c9f1095ab', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:14:54'),
('b4388e00eb9b0950e15a7c6050', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 20:41:51'),
('b4403c4dbc9f5ec11b18848e4b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:14:10'),
('b45c795544d430cf825b0de8e1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:48:08'),
('b46b504945081a78e877bf35ce', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 00:53:50'),
('b475af4fb5da7ef572eabac5d8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 02:08:32'),
('b48122ac0419d426fee3bd4a09', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:56:31'),
('b4a845da92e7427d6cabd5b9c6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 17:21:32'),
('b4bc58cc077a5e25a8b599f424', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:49:19'),
('b4be351659c22823a772f6f09f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 14:33:19'),
('b4f7ee945279a14ca2d52e40f8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 15:22:34'),
('b504932296dea63f890cccfc92', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 04:45:44'),
('b51703b5c833e11f15de7efaf0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 14:09:22'),
('b51cf2d4b8480c017b101e5e20', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 04:33:22'),
('b54f9b1b4d08a36a6304b77d09', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:02:21'),
('b5747db4849086155de2721e75', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 15:31:04'),
('b576c712317baf4ac1d9e9c69b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 03:30:00'),
('b58ef7d6e545ac3a884cafb80c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 14:30:58'),
('b5d40a6571b64df1783e29a5ac', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 04:41:02'),
('b5df78cafad205a9c394bbaf56', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 05:23:45'),
('b6044836f3632a5a38b119e7d0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 18:37:16'),
('b649d170b10ceb814476b0a623', 'false', '2020-08-05 02:15:32'),
('b660391729c8ef4955810b4e4e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 07:38:33'),
('b68b03d5532d2b626c3bd04d38', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 14:52:34'),
('b6a6dfda2e5f350e0c1c0b9d1a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 19:31:25'),
('b6d98dc76d1ae31e418f920011', '{\"api_id\":\"2\",\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 15:02:36'),
('b6ef17e0df45113aa02f8c8313', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:16:08'),
('b6f4b95b689510085bfe4887cb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 22:27:03'),
('b700e9849d5142f48617713fdb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 07:45:40'),
('b7038e0dee3362ec47495717ab', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:18:35'),
('b716753e95a49047e1aa4e97bd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 03:34:46'),
('b72a84f3d3bd7a52e28dc72866', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 05:45:22'),
('b74aa8fb1b467297070ae2a170', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:33:56'),
('b7b1db0503928594f6f8efd3c9', '{\"language\":\"en-gb\",\"currency\":\"IDR\"}', '2020-08-04 04:30:34'),
('b7c96387fe19ec75f55eb38313', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:39:20'),
('b86a38ffdc39e35db42eab2b69', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 09:35:46'),
('b86cd91928bed77d3bb2b6eb17', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 17:41:59'),
('b86f91f3e8e04f210ff9a6c857', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:51:59'),
('b875581de4064baba31bbca150', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 11:03:53'),
('b885ffe93f714bf2adf5af7c20', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:29:33'),
('b88b36f48812498656e0d52e78', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:12:50'),
('b88fd404a9dc6d91bf77eb2479', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 15:01:38'),
('b8a08680bfc80473b12c4f33b0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:08:26'),
('b8c682e6e2741f9b5a209f7d66', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 15:30:29'),
('b8ca77faf8bc156b682190b395', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 04:46:47'),
('b8df4212e0bc42eb6a0a929104', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 01:50:09'),
('b8f01ebf107fad76a9187b41b8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 14:52:34'),
('b91efed4fdf69bddf8c7f8d0b0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 17:37:24'),
('b92e2471f0b4b4926fb48dad5e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 03:00:04'),
('b9409eed03dfc4d5789e40db06', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 01:07:19'),
('b959b323255c6fcffacb59c185', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:55:07'),
('b9789e80699c8773f653509a56', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 17:22:24'),
('b9990c9a8159f7ce944ded4836', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 03:38:48'),
('b99c503497006264b77db7f7ad', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:49'),
('b9b31a073da5610817841c4e1d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 04:17:05'),
('b9cce2ee8d844743f1e2710644', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 19:03:28'),
('b9f0c85c6cad2344d50ea5b3a6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 09:29:43'),
('b9f315224bd319b3f4f8521b7d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:32:41'),
('ba0d0d08815ec44ef0f1f35e6b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:37:24'),
('ba352b66b57f8998659a0ac71d', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/transaction\"}', '2020-08-04 19:16:30'),
('ba452c5e350462ff6f63a4e301', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 17:59:37'),
('ba4ce453779e5c6f51b63b4153', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 12:21:21'),
('baa70a11a4c3536f05b8d7861d', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/order\"}', '2020-08-07 21:12:11'),
('bab309e628053fa5ed985bf8e8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 12:34:27'),
('babbdf9246113ee201d396abb4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:38:16'),
('babec21438e8f648c0c93c9149', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 16:32:19'),
('bb18f375c173c56ab06a9b3efe', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:57:59'),
('bb1a2e298ea9b7c79d5f66af70', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:55'),
('bb1f2c6405fa57f33e6a38f936', '{\"language\":\"en-gb\",\"currency\":\"IDR\"}', '2020-08-04 20:56:54'),
('bb3e41ba4345b1fd6f8babe40a', 'false', '2020-08-06 05:13:15'),
('bb6747a12f80ac44063000cae5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 17:35:03'),
('bbcb1337209ecf167ba04cb335', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 18:45:30'),
('bbdd94c6413263149da329d34f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 07:18:39'),
('bbdf2b97c648e3adffe0fc973b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 10:12:22'),
('bc0b4a8e4004be63e2e5f56272', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/newsletter\"}', '2020-08-04 12:12:00'),
('bc197709e7da852395e18c48f2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:38:29'),
('bc2018c7d12d1e4528f77c1b79', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 13:46:31'),
('bc30999d4271f24e4f7a6e42a6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:36:53'),
('bc32967dd93724ff864eef4166', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 13:16:16'),
('bc50cc5618fc4ab7ec22905465', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 03:17:11'),
('bc784bcdb0ade0b8e27aab0196', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 19:21:30'),
('bc8fe44e7a462ccf3c822c8a53', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:16:02'),
('bc956a0baaa16c2e7340628afd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 04:04:34'),
('bcb8a9cdfd222dce35a315d5c1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 01:31:57'),
('bce47185d956a84e765a44512c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:05:32'),
('bcea2ec260bbd35e75db0d8c42', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 11:15:56'),
('bcf1d333083b00dc223fc721d4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 02:12:44'),
('bd08e9e897d0a711ef0a7768ab', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 17:31:52'),
('bd0f417756528abb9c702798cc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 19:07:35'),
('bd2ea70b674de9be058edaee4e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 12:21:43'),
('bd32d2b04ecb180c10f03860e1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 12:57:22'),
('bd3acd67548215e59ae0ee0607', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 06:06:14'),
('bd444258b5c8e7314f7dd582d6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 06:48:57'),
('bd8638fd4ebcebb466c681ef46', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 02:24:26'),
('bdaf5e576bb4a35bbaf000397a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 09:50:10'),
('bdb271ba5ef04a3dee61499f7d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:30:25'),
('bdc3e25e11667315a3eecba447', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 04:35:36'),
('bdc5dbb456ff900dba5cb0d1a6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 21:01:11'),
('bdd5c07da5ff8f451fca272584', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:28:43'),
('bdf175114be72e22e2d39bfc78', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:33'),
('be24a00080d2aebafb03c378e3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 22:34:48'),
('be255ad835c86c13d6490a3682', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 14:52:37'),
('be27b40c9ea20fff11db255d9f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 22:59:14'),
('be3294484f4efe906b52980559', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 10:16:24'),
('be5b07fd2ecc537fefee32d29d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 19:08:15'),
('be79f5691f667c5c33b091aa5a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 10:58:13'),
('be9abdfdd98e3e03fbffeda5a5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 04:06:20'),
('bea95643c1a56dc24fabaab6a5', 'false', '2020-08-06 05:19:15'),
('beacb8f287d9c98f77da612424', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 10:52:23'),
('bec8314ad71971a839e449798c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:36:23'),
('bf0378ae74ffaf214935da73f7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 07:54:24'),
('bf048412651a376a6a5e391b0f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 20:03:20'),
('bf3600375a3f1661c0717dafd6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 00:37:52'),
('bf69e9d92939697e7944fcdb70', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 14:55:19'),
('bf6caee243cbca60876580331e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 22:45:29'),
('bf6e5ae404f1bcc7d262179f9a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 04:32:39'),
('bf6f6cecaec8a8e03e9975ae9e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 17:06:15'),
('bf7998dd0720c84c90a72f4e31', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 10:03:52'),
('bf87bfcc16b658446f0dae26ec', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 10:08:11'),
('bf8aef47e78884ac6ab5485fb2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 03:13:59'),
('bfe21aa0af65a5e1798958e557', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:16:27'),
('bff3e0f2acd5a98ad5c9673025', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 11:34:23'),
('bff87d7337cf8dc3110bac3a4c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:51:18'),
('c00be544cd770d45000b12e16f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:40:56'),
('c028bee72536f6225631bb5e61', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 21:24:34'),
('c066f8d1355adca7fcb3ab00d6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:41'),
('c09a1e0c2bd7e58c0680a28873', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:45:07'),
('c151bb209aa6a9001bd1da5ff0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 12:39:20'),
('c16d7c1d65cc4b4ed6b2bb1753', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 04:54:58'),
('c17aad7ecc90caa1773b52df6a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 01:17:27'),
('c198979786761c99ce4a67666f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:25:32'),
('c1c471a0f832eaddc538972b87', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:46'),
('c1ce4a96f92fabb84b9c6049cb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:59:14'),
('c1d2b49720cbf9eb6199e56e49', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 15:24:50'),
('c1e871cfb9e9e254c35c498499', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 02:41:35'),
('c214ff2cb21e12073243887011', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:43:19'),
('c21c8aea8e60fc4d7354175186', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 03:00:31'),
('c254809aa73a25361c503dd671', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 13:43:48'),
('c26a83ad4d88b9b01821c7e6f5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 22:11:16'),
('c2c3474d67c607993b2a60bc4a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 13:53:11'),
('c2cd8ea5612a0e2a473efacf68', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:13:54'),
('c2cd948ed291d518bfa5491ac1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:34:20'),
('c2d2a9f15faca27d601c5fad82', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:44:42'),
('c2e197db71a1cb8d0bd792cd52', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 07:21:58'),
('c2f3d09e96a3998603d89b857c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:15:32'),
('c3183ecf7f3aed7acc42987a22', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 08:31:25'),
('c3355c496a6133ad099ad104c8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 17:10:19'),
('c35bfeaedb7dc79e6f0b067fdf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 19:19:41'),
('c38069f67f2d93044fb8e5db58', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 03:03:30'),
('c39edf3fef6dd34f0450accbdb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:51'),
('c3a60092d52dc873777c6c50ff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 20:13:27'),
('c3af3353ed1cb1d5522d61fd86', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 05:42:49'),
('c3cc32978859960f67d004481d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 10:40:46'),
('c3d0657fa0607b6a0f47cf73cb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:15:44'),
('c3e12cfceeb834d01966a22157', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:17:23'),
('c4030cda51ed05e10e06b00354', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 23:21:19'),
('c446ea877c9dda976a0dd1e713', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 19:27:11'),
('c470688a90c91e99fe7af5a6a9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 21:05:38'),
('c4a8b097992821d9c4d46eb842', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 03:20:28'),
('c4c8a81b42fcb567966200e2a6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 21:48:32'),
('c4d1f42985dc2fbe5207d0cf5f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 00:34:48'),
('c52b62f89ba63ca74e7000103b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:15:26'),
('c53cee712eb18a07e021bfc06b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 09:06:06'),
('c584a49ac492632312bac5373f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 20:49:48'),
('c59a3bdb0844a0d2d3d3b691bb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 04:45:04'),
('c5aa29946e47332f9dcf2e1740', '{\"language\":\"en-gb\",\"currency\":\"IDR\"}', '2020-08-04 01:28:30'),
('c5ba7832abb6942369c24fda07', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 01:54:15'),
('c5e5d0ef8425cce87ad974ec92', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:04:00'),
('c60021e34be4051906437a7215', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 19:06:18'),
('c60febedf1bba527cb23462258', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:53'),
('c610e4503a9178e3ece86dc9bd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 17:59:24'),
('c61a72ec2910d12f784406f911', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:45:09'),
('c62a0d8f65f852ed903471dc3a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 05:57:16'),
('c635b9cf89fd2a428fd51a82bc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 05:04:00'),
('c63b4b37c66a3ab66e4dfde4ab', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:14:10'),
('c66fbee6c065e1d9237eec89cc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:21'),
('c69a94d5c73580e816a9e2cd09', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/download\"}', '2020-08-04 19:15:19'),
('c6a304e3951f37d12a92b929e1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 13:15:24'),
('c703059e5202ceb08bf83dcd5c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:35:48'),
('c7134f9ec40f950f8638cc7fb0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:21'),
('c732904417130245359f051b41', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 13:33:22'),
('c739c9169d42c68505039d998e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 10:59:42'),
('c74aa937ca808ea995fc86fb6f', '{\"language\":\"en-gb\",\"currency\":\"IDR\"}', '2020-08-05 07:00:22'),
('c7907c67fefbb56bb033dbc199', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 15:49:25'),
('c7a0488008c0c06b859df5c894', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 07:46:37'),
('c7c13b5415745836f77ce04d31', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:14'),
('c7f5d3b8c47238220a82c13d16', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:14:07'),
('c806eb4dc294d30ef08b0f422e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 00:10:07'),
('c867e4fe9813e37279d7f99fd6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:09:34'),
('c88c1cde22443b0b51bdd24a2d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 14:04:51'),
('c890d85a34a40ef545f5ccb5ff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 06:44:06'),
('c8c7fbf458f4e4f0de0ec1cb2d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 06:47:18'),
('c8efc610373e04c54245faa9fa', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 15:00:25'),
('c8f3a9af9bf1919af0c5735a51', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 05:42:41'),
('c8f928fa3fd075196e76ea4f91', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:12'),
('c90412f1b725baf346416d7723', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 05:33:13'),
('c913e728e4e4dfbe7a42cdc460', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:41:49'),
('c92ba14f54409062268af1cfe0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 22:25:59'),
('c92e2a1531f8751927be04dd95', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 15:11:41'),
('c9473841b682dfb0577d759baf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 02:57:21'),
('c9b523eb6bd4019b8e49c87b0a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:39:40'),
('c9df89ffa955b75b030f2cc841', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:48:10'),
('c9e81bf375067b5ea72527efe2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 21:16:05'),
('ca286becd185b416616f7c8e07', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 21:09:06'),
('ca5925311a2a5c16c8e5b59fd2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 17:10:59'),
('ca5f7eab9bf50bca36afb1d73f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:33:11'),
('caa9673b30f195e1edf066db0f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 23:46:34'),
('cacfc42b7c1a09a5db004dbb00', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 08:50:20'),
('caf3211a7d948ee4ef7fa80118', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:38:24'),
('cb07e18b7a572d121b6a192ec2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:06:05'),
('cb0f83ebf3e34d13fdcc5e738a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 04:31:53'),
('cb70a7431950405939f180c7e5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:13:05'),
('cb7e5f695653a836c4802cbc48', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"compare\":[]}', '2020-08-04 15:19:21'),
('cb8b21597ae91f6ed26e43033e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 08:17:25'),
('cb8f336099d2277eff98ff0211', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:39:51'),
('cb9cca00676ec02a27dae5a99a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 17:33:33'),
('cba953cf74377319276b35a3c4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 04:57:40'),
('cbc8f91cc685e3a372a10a8c13', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 06:02:29'),
('cbcac0dd47fb28af47ab57ad33', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 21:34:02'),
('cbcbfa96caf86169d0a77d494b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 06:00:23'),
('cbd8bece02f4edbb00ccf561db', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 02:46:28'),
('cbea93a874de0a4c778c18adf2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:18:52'),
('cbed26da9b57459a5b17becd16', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 22:07:27'),
('cbf8daf9548c316d3acd0e69d9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:50'),
('cc03b95e36d92be0766fc2f847', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 09:20:24'),
('cc13fd432d22df62e1cc2f48e2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 23:32:13'),
('cc1461bf25b24f9e902ce20c73', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 23:23:51'),
('cc424f06b68be45b01677be3a6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:28:07'),
('cc4598bb2e3c2236b85f77bb1f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 11:33:50'),
('cc688932648ac07772ab32d843', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 06:59:17'),
('cc6dd1c9137a94200cd539e2f2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:56:23'),
('cc84c29e27c9b438c46b0b56c6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 12:30:37'),
('cd2bba16e8b5b9c203f9ea29ab', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 16:24:44'),
('cd3b47006d4d4cc3506f04be9b', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/wishlist\"}', '2020-08-04 12:13:21'),
('cd3bb4be16764419fcfe7c3fd1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 20:53:09'),
('cd3d6b7de23b7b6d54d3cefec1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 08:52:34'),
('cd55c703c838169ea3e8f813d5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:50:10'),
('cd98b273026b599d9ed0e27652', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 06:02:52'),
('cdc4e5808a8642d93e342d77e4', '{\"api_id\":\"1\"}', '2020-08-01 04:47:00'),
('cdcbcdd02ce07d66cf384b3f31', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 14:03:36'),
('cdcc2b10b7eae7a0f7c28b8b85', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 03:58:45'),
('cdf7e428a373deef7ab632d9fd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 19:26:07'),
('ce0ca99d61c48d285f6ad52d45', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:57:04'),
('ce22b32f749a510001d1060bae', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 05:54:58'),
('ce9b05e27ecf8744ea4fba4440', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 09:29:18'),
('ceb0624cf030666fddba0a8d94', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 08:42:24'),
('cecd17bff2bd958e5073571189', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 20:22:16'),
('cf0eb3043754701606ecbdf41f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 15:27:56'),
('cf2312814e5cb1a3874d1cef4f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 14:00:22'),
('cf387b218c2eecfa9269e707fd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 12:30:29'),
('cf53eb0568f19cda4f4a421f72', 'false', '2020-08-05 04:48:57'),
('cf59c2ec4a0301d84c5889e27a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 12:31:11'),
('cf6a1d9f7db4b8f9d9edfc3665', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 14:22:32'),
('cfa1e83f8aa9a50fa76e49f4c3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:41:02'),
('cfa557897896ebfaa672e34a90', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 07:35:03'),
('d04bf69b9bb3f4a264310ace72', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 10:25:52'),
('d07eb1ebaeedcc390dba2fc841', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 15:12:07'),
('d08209c98da0fbac4d86e6b035', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 12:59:35'),
('d08790bea84d8465717ff1c540', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 04:53:40'),
('d0ac98d49a26495865aa8b8f7f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 03:42:11'),
('d0c4ce0a5d61f5ce3541a830cf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 13:46:27'),
('d1158121b7641a8f780ab7e38f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:38:47'),
('d11e0bb28a43b0a3854d0da3cd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 15:37:24'),
('d132a3d86dc602c41cff03bf29', 'false', '2020-08-05 20:15:24'),
('d15bc2e1663cf9c05d6e67cb72', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 06:11:57'),
('d16ff0178265184e7e42a82845', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 13:48:27'),
('d1d5ec5525c7ec51e17a990403', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 16:15:16'),
('d1f2e1bc25b247cb50af6ab404', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:35'),
('d1f856485ab4e995d52e921742', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:48'),
('d21128126f1833b71a242c1472', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 08:51:12'),
('d2dd4fcb8deb8d70c3c2e3e47b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:46:43'),
('d30c3a24c6e1f68bc903697fb2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 16:45:01'),
('d31cf7588715df9b43c3f938d3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 09:45:03'),
('d32b666ad52a5abcbcdf0d9f6c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 08:31:24'),
('d34be639963b1cdaa5158cc0c2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 23:28:38'),
('d3878fc4adcd8f095cca36e89e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 08:13:20'),
('d3a02f448ba5ba9a00f8f0d9b1', 'false', '2020-08-04 06:43:07'),
('d3b6c25eba84047f1899566f90', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:42'),
('d3c33a9bb0920c6128a01fba59', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 11:51:04'),
('d3da72f73f8958da2f0956e8ca', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:53:52'),
('d3ee8fa04422434a8d94268728', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 04:26:10'),
('d3ff4777915ec7607d7ccbf1b5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 02:22:40'),
('d40580c490ed3a3e6d78e3b2b3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:59:02'),
('d492ea838b331864d4f00f143b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:10:23'),
('d49b9c505e51bc0b3ecca99296', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:50:15'),
('d4b0e4fb740aab35f392fe7823', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 15:52:36'),
('d4cc2773ad03b08f8a2f4f6099', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 12:59:01'),
('d4cfac496808ff33a6abf583bd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 00:00:00'),
('d4e6d4e30c2d7e02a5015fb237', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 00:11:11'),
('d4f8009cba164305eb01c0aac5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 00:34:54'),
('d523178d8626399cdc2aab52e0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 00:39:35'),
('d5361698307dc8fe0e58c7a638', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 16:12:10'),
('d5627971078a968c88127f182e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 03:39:27'),
('d5643bfddaafae54c5aa3b2e35', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 20:50:40'),
('d5810e25981f92857312bde599', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 01:25:51'),
('d5811560b3514b5f00a594182f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:59:09'),
('d590de71ff9f4aca07d94a978e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 09:40:13'),
('d5a271816c38bff337883defc1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 00:20:30'),
('d5dfa71a4b2b54ee09d7c52fe3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 09:57:28'),
('d5edf73cee2cd6f3565cf42eec', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:06:58'),
('d5f640f0309de29bafcc4f4b09', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:28:00'),
('d6195da3b078b7f878aba01990', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 06:21:05'),
('d65e30fd8236be25976196a432', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 21:08:44'),
('d6ae3e987d637eefea54b43783', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:05:15'),
('d6fb43dd363223228aff3f9be2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 09:41:17'),
('d70b2d09721c8e0a4a400038f5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 22:44:55'),
('d758fcda67bd29ddfe221552bc', '{\"language\":\"en-gb\",\"currency\":\"IDR\",\"user_id\":\"1\",\"user_token\":\"MBEJTNEaVWThxmqXUq9BQTvZefgCOoNj\"}', '2020-08-08 16:26:01'),
('d787023a4308d046c2e207d196', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 14:23:46'),
('d7a929e56adf911f3b26257687', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 10:55:57'),
('d7ca89e534dc85617ea523f6fb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 03:56:52'),
('d7e1d255e15ddc989be3b1a8db', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:09'),
('d808f21b22ccb0325381560333', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:13:30'),
('d81adfba89bf11c4c53bb392a2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 05:15:10'),
('d830ee542cf63aeb13c34edbda', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:24'),
('d831386574491e8ea7a225e44b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 11:59:40'),
('d83c0955d7c4fba9304626ecc8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 03:48:16'),
('d83f70949e09e6cb4d55302d55', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 19:07:11'),
('d86cbe9781960ccc2810a662e4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 03:58:46'),
('d8af26796913744de9a35353e2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 07:38:29'),
('d8d4c89df82fdeeed156ec3352', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:19:17'),
('d8f615f154907f5f0f2c0916c4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 17:55:58'),
('d9129709101beae36f3268ce15', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:14:43'),
('d92447bdc020a1b8de6d433bef', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 01:54:00'),
('d93a6690dca338fccdb129140e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 21:57:03'),
('d972ae102345a2f6196a27d6c6', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/return\"}', '2020-08-04 19:16:13'),
('d974397a6b9dd8edf022c624a5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:44:14'),
('d987ab75651d454d3f502f015a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 11:52:34'),
('d9b92aa9dc1800d87071dc480c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 05:24:37'),
('d9c0c3970d31e3d0b6dc2066b6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:10:36'),
('d9c6001351bc6f6f26532e10c5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 02:03:16'),
('d9e3f315ff6faf4dcb88da6782', 'false', '2020-08-06 05:15:40'),
('d9fee0f425ba9d5c5ed2a28f5e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 05:23:35'),
('da32ecbbf189c367300418f31f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 07:44:32'),
('da6c0e0dd18bbfb01fd72fbb94', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 01:16:47'),
('da78dfa0c66467a8e942a8100e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:57:46'),
('da8894733a8cba815ee42f34f6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:41:55'),
('dacdc0f2e220eb1158e8fd3dff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 13:27:59'),
('dacf442848cddce69af0152d8d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 16:30:15'),
('dae25d97c874b30a39558ce94f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 22:26:23'),
('daeaa404cc0e22782b87a131e0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 22:17:35'),
('db1c95b07938fa32d728d36d31', 'false', '2020-08-05 01:25:01'),
('db81977f38681c7a064775acd5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 07:50:22'),
('db85479fba119eeb1408f7fada', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 06:09:51'),
('dba78906eea19769b3826eded8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 08:33:57'),
('dc93963a9dcc8fbb7da62edb69', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 13:46:21'),
('dcb66fc10ef70d40d87acbf638', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 13:53:16'),
('dcbb9d67359b07c903679df163', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 00:19:35'),
('dcc86f9a6d446dc833c629afb5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 19:35:59'),
('dce51ea1186348af1989f28f96', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 17:41:55'),
('dcfd51190e419192170831492f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 11:59:46'),
('dd038cfa62b469b0c341a76298', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 20:42:56'),
('dd0f5d00f51daf8b6df5cea60d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:52:36'),
('dd3be96433fcc8603d4eeb544f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 15:39:57'),
('dd5c3396a6ddbf0124b176ab6c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:37:46'),
('dd6dce7d5647d2b4aa195cfbd0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:14:04'),
('dd8dff2cb88a60d2bdf5669c89', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 17:46:50'),
('dd90050acd51eea9b0c2d7af3c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 10:25:00'),
('ddce18e32d746af2ceca20ec7b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 01:36:14'),
('ddda3683df223058d4396eedf7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 00:29:03'),
('ddee70e31502b65584149b8f21', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 19:54:31'),
('de4fd99b6dd2cebd8563bb62ef', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/order\"}', '2020-08-04 12:12:21'),
('de52c6a88d2d47cff1ceaecc62', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:04:30'),
('dead68476517ad67bdb8719c8a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:26:17'),
('debad887da4201849b85a14c80', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:46:18'),
('deffb699d7aac9841532539fcd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 01:58:20'),
('df01a24d96e048fb90d9b25f17', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 06:20:32'),
('df22c04c9d463cedb49deb5fde', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 07:55:32'),
('df54ce911dd6c90c7997d1dcc7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 09:37:42'),
('df7304e0bd5f79809fe82908c9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:59:47'),
('df888ac12b344f1c848816c139', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 08:09:18'),
('df9e3d2004dc71ff86af5b215c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 11:38:14'),
('dfab6e68aa64c84348c32ecfd5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 22:03:28'),
('dfaba409b49c7398a88c524662', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 20:05:03'),
('dfb60e716b0530d6889db08e1c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 14:42:10'),
('dfd06d51ea4cb15b4517864bfa', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 00:19:59'),
('dfdb09cfe25e73f41d6ea8ea42', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:26:58'),
('dfdd3a259b3b33bedd8241a529', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 00:59:14'),
('dfde67337b1777b9c6c7842454', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:48:24'),
('dfecfea6353545975ffc1f9b94', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 22:16:55'),
('e0015e43f39e7aa3ce4430b449', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 01:37:06'),
('e0100b38a5f7984fe0219668fe', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:39:10'),
('e01bf5ba9eec6d7fc29f36af48', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 08:37:42'),
('e026554bfa621c11fc1c407d1e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 05:52:08'),
('e032a975ea4d45d7b86792c8cf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:18:58'),
('e03596c5ae5aa32b5a583f6e99', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 08:40:10'),
('e05fea3f815e5ce9ae29391c34', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 11:33:49'),
('e060afc3c860388d997746de58', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 20:23:59'),
('e07d235c0ceafe4bf41904eb9b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:37:58'),
('e0a26418bf5dc2834fbe251488', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 01:21:14'),
('e0b7a20cde2365099bb8b87884', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 00:01:03'),
('e0c4f3535ca6a8fae622950b0f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 21:35:01'),
('e0e67149b0630385b383c9bd23', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 13:36:40'),
('e1010f7462f64840695b166bd3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:34:32'),
('e110f3c7712a28bc6e4b5689ff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 05:30:58'),
('e11a953bffcaa4724aae1e5803', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:34:37'),
('e120363e6baf80b3529f439af5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:46:00'),
('e142697c755848d7f05882ffb6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 00:05:02'),
('e1492408b8d6c67d4159d88640', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 16:55:41'),
('e1697ce799aaae3383d70fa4bb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 00:44:22'),
('e16ed7580053e2c297cd5a27d5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 22:45:59'),
('e1b30c7cb3d6eb36f2df0a3c16', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:01:18'),
('e1bb105f3c9ee6ad744cd9197a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 16:41:34'),
('e1dc5ac2c879da7240d8a7fa0a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:19:12'),
('e1fdaf2c7d50aa89f9f813e706', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 14:16:34'),
('e2055b8fc61fb389030010cfd7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 16:50:52'),
('e211efe21d3a886c94c39a080a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 21:52:15'),
('e21f8958f40283ec55a18d20fc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:19:02'),
('e238ee6f9dde5a7669cb2fa508', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:11:55'),
('e2436426ed5c4d1a3348f5b895', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 18:20:57'),
('e2a1c4abf62fbd197b5401c60a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 00:05:30'),
('e2da5ab4ef5ea4ab7718014cc6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 16:54:01'),
('e2e7bf5e0e72b60d8f6554ed3b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:51:06'),
('e2ea403bbc300d02775fe9e60a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 07:27:23'),
('e366e0780dd4bee3816542860c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 16:55:04'),
('e36731a54491dbdd229ec12bb8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 09:05:16'),
('e3d58c83d003fed08b5dd9731e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 07:15:40'),
('e3dc6c7593fb2c3ce0a999f8e6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:31:52'),
('e3f9572a7ed3b108cc568f9401', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 17:10:25'),
('e417384265cae2a70bc334e520', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 01:07:59'),
('e432eaaf37459c8272d309a5db', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:15'),
('e43da4f6732466d26c3d4d98e9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:17'),
('e440169d287f40df778d48e1b0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 10:17:04'),
('e44fb23a59732643fb5bfcce9b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 05:50:20'),
('e45e4e5a90b13c898fe8ba5c89', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 15:50:48'),
('e474a88479d2a0ec765809f2ff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:30:59'),
('e510aa90dc6bc2d6d0398a66a4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:45:15'),
('e5143aae7934cab4df1282c293', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 06:47:43'),
('e51e6e165fca4fdf3fcc6046d7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 09:19:36'),
('e530282cf6ac2a0b23f1dc7b73', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 21:20:47'),
('e54175fb1da83e783eb1bca154', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 13:36:07'),
('e5589777d3e04b1b01cf90d3b2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:49'),
('e576e4b9a44182ce41bbbc9e21', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 05:13:28'),
('e5aa125cb5548748a11ad5a5ba', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 01:06:55'),
('e5b9b2f1ae702e6825bf00dd37', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 04:52:14'),
('e5bcf4a779dc165d1b73338067', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 10:37:01'),
('e5bd3bef6671997eb5c469a146', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 01:56:02'),
('e5dd6b573bbc9df0bdfb5bbec2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:27:40'),
('e5e7f93152c98a6fb2cc745769', '{\"api_id\":\"3\"}', '2020-08-08 15:10:36'),
('e5f3467741fd6d3a938f1759e9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:37:38'),
('e60635c980e3c9f04421522acf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 00:06:30'),
('e626768565979051c8d905949a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 19:27:45'),
('e6404b60e0a706da3fba18bb85', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 07:12:59'),
('e666922c1e6e1fb6a8778f53d6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 07:10:31'),
('e698d61281064f911daadbe20c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 04:11:46'),
('e6a4629060d6a7c0ab40ffc652', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 08:38:27'),
('e6a73ef38bfe30204626f2f065', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"vouchers\":[]}', '2020-08-07 18:09:58'),
('e6a952950d708806adfd7ca58f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 15:14:25'),
('e6bcffa5beb95d680bc87b40aa', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/account\"}', '2020-08-06 08:27:47'),
('e6cc5ba5752814eca57a768656', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 18:53:17'),
('e6d07a7e79e7157308aa43741a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 13:36:53'),
('e6db18221324cd2ed9a456516a', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/edit\"}', '2020-08-04 19:15:34');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('e7025f9fbb2e68456f65696fbb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 18:18:20'),
('e7183e89c8d770aa3861df7fe5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 23:22:47'),
('e734de08b1d15c1357a6fb5cda', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 05:47:48'),
('e748ce962c3f8b9cd782c3595e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 03:09:59'),
('e749e005afcd679479df4aeb65', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 05:35:00'),
('e7fd4829a4ed2397acee745642', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:41:21'),
('e80193634881695488df701873', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:40:12'),
('e80dfab9e78456c5005b704f8c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:16:56'),
('e8413fde03a1f516cf574440f8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 03:15:20'),
('e85e19527991367a69e1945401', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:00:55'),
('e85f913b4bc4f4e1ff9892a4a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:37:57'),
('e868cea171805b58fc324dbcd7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 02:31:40'),
('e877b92ff7216623365b432725', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 01:18:10'),
('e8a09eb13cc3b5e39944a85b19', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 17:56:02'),
('e8aa4febb85dbfd107142810cd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:23:43'),
('e8e16aa43ac0f97ddf9f631848', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:41:06'),
('e919aaa43bb9907429cf6d94df', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:26:02'),
('e950ead3bf0a8b681b7832e724', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 04:03:10'),
('e95b327c54e384174f505fafa8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 07:10:29'),
('e9632ccafc69baf413c0d9c429', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 18:19:42'),
('e97d263ab309e66a2012c72f44', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 07:43:46'),
('e982046d38985b03d8acff4b31', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 12:06:58'),
('e9bac7c59560cad8b7ea8c1f59', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 08:40:52'),
('e9bfcc6f0db04395c81a9fbb7a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 20:31:44'),
('e9c14b5ae637739b59c36eab93', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 05:28:22'),
('e9c610154fc12b9d855b71016e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 14:09:06'),
('e9c6cd77b80217f81b067d1293', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 15:28:48'),
('e9e501cc32583a0938a1cfb078', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 13:47:46'),
('e9f97f2d58d9b4b786fabfe2b6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 14:42:07'),
('ea02834096b15aaf617548e2fe', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 11:12:20'),
('ea11088b7a1a843702fa91885f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 12:09:08'),
('ea19e5916655dade4119ef8a83', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 12:56:28'),
('ea868dab5593b6227498fe6bcc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:13:57'),
('ea86b810691f14cdbcabacbd78', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 17:53:39'),
('ea92b34170b9b313059c9a8199', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 07:59:24'),
('eab1f62efbbfd655fadd7bd578', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 18:09:44'),
('eac241082dbb7d910d22b591f8', '{\"api_id\":\"1\"}', '2020-08-01 15:36:02'),
('eaef518f6c62ac2d117e5288c2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 14:20:07'),
('eaf5794b29a67ac2a899685c7c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:44'),
('eb12ecaf380023f2dc97dba4e7', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 01:54:39'),
('eb2ce01937b3b5106c99d4418b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:16:21'),
('eb4cfb170c68a20f572b9d0746', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 13:37:27'),
('eb5ea77edf13ca28ddd3ff6738', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 02:32:33'),
('eb6165647b019f9d9da0d38c7d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 20:41:12'),
('eb959126ad3a7aa54e34aa26a8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:08:35'),
('eb959b5f1bab93f7d5a50a8c65', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 05:52:34'),
('ebaf1471c85c85c66d8a56d264', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 04:09:34'),
('ebbb2dfbfc263dbd1c68e42e74', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:30'),
('ebc9475687bc04066f4d21784b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 17:13:35'),
('ebd409425d468594a03f26c0f9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:18:24'),
('ebf3db38572672055fde9228e8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 14:38:32'),
('ec41c7d0ded173b908c1f8dfed', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 21:51:33'),
('ec4b331b23b4de2e2b1c60c200', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 04:22:06'),
('ec6789f42f1a8a133600f2777e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 03:31:01'),
('ec85e6c6874d5afb6dd0ee7750', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:51:59'),
('ec9bdd4fd3160adc19e7bc4f2a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 20:13:14'),
('ec9c554be301405504b6485948', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 02:47:26'),
('ecd9cf1985128f8c8066995591', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:47:46'),
('ece32f616fb9a7caaddb239e74', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 23:24:59'),
('ed32b1b86e8476ad9f48f497e4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 07:03:02'),
('ed3f10ccd42c7a76b7dff345ad', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 08:22:48'),
('ed46a2ad52909c0dff74abe14b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 02:22:12'),
('ed68f3110af9fbdeab2649bfa5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 21:01:51'),
('ed9c327a2d390a269cba65644f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:40:36'),
('edae5c08ad34769e73930e78df', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 04:54:32'),
('edcd387220c19d08e641819b22', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 20:47:41'),
('edf13660a7b66c81d928efeb34', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:29:34'),
('ee0557d26a2f966b2f15ae3ebd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:31:03'),
('ee2d88b999bd5406c0b1b72a49', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 10:59:21'),
('ee86d9cc985990bb980c3ffb47', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 11:38:10'),
('ee8eedfaa7e0abc92c7a856412', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 08:14:23'),
('eeadb00af65502a555fc4c3a33', '{\"api_id\":\"2\"}', '2020-08-07 16:45:25'),
('eeb668687c8cf5001e2d435f8f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:16:54'),
('eeee7d7a39332da1f8dfd8befc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:46:42'),
('eef8e8fb805d45ec2ff3b7f522', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 12:15:30'),
('ef2c8b6f1dabce98343627b5b5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 14:24:38'),
('ef9a08d1d75ffdc7837d9f8c6c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 04:26:47'),
('ef9e4eb431b8c103ba8b9f292c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:16'),
('efa0cc515c1781637eaa813383', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:03:14'),
('efafc0f24182434f8d282dedff', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 04:25:43'),
('efc39cce4c844dcd81de2680d3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:40:30'),
('efe0d98bbba8f55289df5301df', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 10:35:59'),
('f01ed02d5e17e7be2c1e31b42c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:38:00'),
('f069a76d25e8e39b7859ca117d', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"redirect\":\"https:\\/\\/pasarrayaonline.com\\/index.php?route=account\\/account\"}', '2020-08-09 02:08:34'),
('f07a1284c39091973416410099', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 06:19:44'),
('f07a1c3e8da21ce871bc182e39', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 08:03:03'),
('f07aa588edd8bc18b6dcf5151b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 12:50:10'),
('f1075efae136a68ab2b0afd47b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 00:15:14'),
('f10fd52842a229c2baea776980', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 09:53:26'),
('f118f94db1b2cc0a3141f57c13', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 02:51:28'),
('f143b334562c17cd0d521bb46f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 07:17:53'),
('f152b1318cc61c8f8cc4620b5d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:35:39'),
('f165b494c1b720d0a0e1123ae0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 21:15:22'),
('f17fc920ea603be9643585fe50', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 09:14:10'),
('f18c9b9557da06a5e0f74a9de5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 03:49:05'),
('f1bf11d12772353ebb28519e34', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 23:58:11'),
('f1caafb41b23fc8d26778a0d7d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 16:43:40'),
('f1f9c2cc1ed6122dacf45642cf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 00:44:09'),
('f1fcaeda4eb54c07a557b59210', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 09:17:35'),
('f20cbdad63b9d3c4d7ace85809', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 21:25:34'),
('f2433e03efaae82721ba3f19fd', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 10:56:41'),
('f264b0a0b43359ebff5b388a03', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 22:43:29'),
('f27058e44e42d7db52f0d15d07', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:20'),
('f2d9d80f352aa4c26b67603cb6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 23:38:06'),
('f2e91b12ab27bcfdfb9f4e82d2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 03:20:31'),
('f301faf46b994916ecdf12292a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:11:10'),
('f30f1eedb1eb3af67d83fc3b49', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 14:04:15'),
('f33c1a4867253fe20c115f43f8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 23:41:43'),
('f36df31f086bebeee06d563771', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 18:16:07'),
('f378301b530d7b29becd7ce181', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 04:17:55'),
('f37be8704e0bf513495bca2fdb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 05:12:36'),
('f381b255ee8d094d59468fa8a6', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 13:51:21'),
('f3b74842944f89cbaf73a831ea', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 13:35:51'),
('f3eccab0532bd632b6fd510577', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 01:46:21'),
('f3f37652c6bfe32bd2b87a446b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:59:06'),
('f400ed44b9c2f534cdaf883005', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 10:45:27'),
('f432fb35e6bc74912ec22686bf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 08:24:29'),
('f44c47059460fa3aad1e90954b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 16:59:30'),
('f47a7548da3388d8a509b2d8de', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 01:41:10'),
('f4df8ffa90407263abd60871af', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 16:23:50'),
('f4e0ce34a60ef25d92b756947f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 00:15:58'),
('f4e8f7e22509b06eda28bb9331', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:38:31'),
('f4e9791a740a4e950782e19579', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-08-01 03:37:56'),
('f4ea3182cd9a5b74da899ca241', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:37'),
('f4eae98391a99b34c7e141324e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 14:43:43'),
('f50445c5298aecf6d74a01486f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 08:28:14'),
('f5149d4edb7730358f6dd5776e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:26:10'),
('f5373b3e389574b347f8bdbda9', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 13:26:10'),
('f58a2f012d31c839005a025f4d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 22:25:20'),
('f5ac42e4346e48af5996d6be89', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 08:55:38'),
('f5c3f536a84b4d0d1177c47318', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 20:32:02'),
('f5e53f0d5de5268ae4938cc259', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 10:57:53'),
('f5f0f8eccbb3aff8d178861c3b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:15:29'),
('f609d53c77e241e5623e7d084d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 04:36:38'),
('f65538f2ebd4b5c5ad2d1c1ee2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 07:40:54'),
('f67827885e8a697f429364510f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 01:54:01'),
('f68601c146f35f08636c9990fb', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 23:41:05'),
('f6d86012dbc2a4076c5e8b211e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:17:43'),
('f6dbfd9db59e2fcc8426364a96', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 20:18:18'),
('f6e3e4974e6679ef49690bc0e3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 23:09:42'),
('f6f8ae10b61119dbf9391f047b', '{\"api_id\":\"1\"}', '2020-08-08 13:41:48'),
('f72e62e17212265c90fcb61bfc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 14:57:12'),
('f741149365af21f7d1165af811', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:01:11'),
('f7510f76378ad75fecd5ad3cb2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 03:42:58'),
('f79118e9ae8f8be0a3a46ae835', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 08:36:54'),
('f7e8729d5cdc2816bd3b863b4d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:48:01'),
('f805f36b9ffc993bbc45bc1f92', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 21:47:28'),
('f8138e2b0149b49af1a444d604', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 04:24:40'),
('f815310f7fdafc6aa9586ea32a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 19:16:47'),
('f867b5220f4f42eae14dc57eaf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 02:23:48'),
('f88597d5fe234bfc5446edf3ac', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 11:13:51'),
('f8961ccac21cac95cc42f59cc4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 21:52:17'),
('f8b69a9c839deb39c4d6adf022', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 21:10:37'),
('f8cf76c8076e453ab496780449', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 03:57:44'),
('f8d5c9010ac2764c0812dfbb70', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 04:46:32'),
('f8e87b815779d0392c28f8d187', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:34'),
('f941f48858580f506154c7907c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 15:34:18'),
('f95b3e267460b490250ac14743', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 02:26:04'),
('f96ea2a45aeed6a5a9dbf1d318', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:31'),
('f975f738f8bf09601714676cdc', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 10:17:04'),
('f996f22e6646c73f1cda8e2a3e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 04:17:47'),
('f9a7adee561639900825a5ee62', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 12:12:46'),
('f9a8abdb560891ef788482bac8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-09 04:06:47'),
('f9accf89a0150d25f054f2440a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 05:22:55'),
('f9eb4133ebcd6f12676f1a10b3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 07:56:05'),
('fa30139966b575bbfa32ea4df4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 09:10:56'),
('fa303c9c3df97bb41992a6b8be', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 01:02:18'),
('fa46462e2e317f6d1df8624464', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 12:19:11'),
('fb08fed1f297c4f076f5ae143c', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 13:08:29'),
('fb41ec4fd9532ce00709c7e622', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 00:28:24'),
('fb493c38355b8ca6c8ed300e3d', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 07:37:09'),
('fb5d7df1c85b083d3625b8e205', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 23:40:10'),
('fb7b1ad37a15104b5cf6e0d801', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 10:54:01'),
('fbb3c8001883e8ec14efe43457', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 05:04:48'),
('fbc7045b5e49de97a38b4ed8f0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 21:14:34'),
('fbec7b2616440c390e790b4593', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 00:20:29'),
('fc0c03e69544c510ffcba9a819', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 09:21:22'),
('fc2552abe2838dfc46c3bb2374', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 12:37:32'),
('fc2b5de68d83766640caa9949a', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 23:44:35'),
('fc32b6694eb8c5fca20b60b853', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 10:04:34'),
('fc56bcabfe34449316b60faa4b', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 01:40:10'),
('fcc22b2a86a43d598ca749ecb2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 11:32:08'),
('fce650f8479c2a710ce7f9ea97', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 13:37:37'),
('fd21893c9d192e47723c5afc48', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:08:57'),
('fd4cd52f1b8147b4ab35d71288', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 10:21:50'),
('fd76fede92b1530e244b367fd2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 11:42:30'),
('fda459e3aa21f5b92dc3c7905f', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 20:09:47'),
('fdb4f0820e769f01837e101dc8', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 20:11:56'),
('fdbdbc0a9d200b06947570c809', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 08:42:32'),
('fdc4d446f78920f2f51af351bb', '{\"language\":\"id-id\",\"currency\":\"IDR\",\"vouchers\":[]}', '2020-08-04 12:13:09'),
('fdedb1721b58bdb9a718074380', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 18:40:49'),
('fe2e79130dc1919d9df9a4aca3', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 10:59:58'),
('fe369e94859bd2c71f1f283f2e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 18:37:05'),
('fe6b4d3144d466318bb1bbdb31', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 06:43:25'),
('fea17d3d48c5d7afa301c0aabf', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:03:37'),
('febf740e97de33a60b44f3c093', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 04:24:39'),
('fed214936bbfba68e573d765e0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-04 14:16:56'),
('fed431aad03f16af9286af0ef2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 09:47:23'),
('fef29c5db78bc9cee5113e6f53', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 13:18:31'),
('ff1f0dbc0799a4c685cc3fd096', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-01 23:57:03'),
('ff2925844031f01b7ce7b769b5', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 11:09:22'),
('ff31faf5fc094698726ea1f258', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-02 22:49:46'),
('ff3639ef712cae39796e12361e', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-08 00:49:04'),
('ff5cbf041f17043b501194cbd2', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-07 19:25:05'),
('ff740810b87ad895ac6188c8e1', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-06 15:02:39'),
('ff985da1a26383298b06b4d7f0', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-05 14:00:06'),
('ffa4616090c9d4add3c2f1e0f4', '{\"language\":\"id-id\",\"currency\":\"IDR\"}', '2020-08-03 20:09:07'),
('ffe34d627778bd22111aa01ad1', '{\"language\":\"en-gb\",\"currency\":\"IDR\",\"user_id\":\"1\",\"user_token\":\"nTewUDTEFMPQ8maV67xBzdQXk1Zsi75s\"}', '2020-08-01 15:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1235, 0, 'config', 'config_error_filename', 'error.log', 0),
(1234, 0, 'config', 'config_error_log', '1', 0),
(1233, 0, 'config', 'config_error_display', '1', 0),
(1227, 0, 'config', 'config_password', '1', 0),
(1228, 0, 'config', 'config_shared', '0', 0),
(1229, 0, 'config', 'config_encryption', 'EmIXLL8W8g7sZS6v6dsb6F6Yg1A6748XLxEnTCBt9NTnu7YbSZOQSs4v9Rl6pKEOq1sV3ep3uU30QUjXtFwSfgPR08OjTZr2AfQAo6bmG2yvFHMAE0O3EeZfzcc5xKjQKRf7CJdkY8Zdw9', 0),
(1230, 0, 'config', 'config_file_max_size', '300000', 0),
(1231, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1232, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1220, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(1221, 0, 'config', 'config_mail_alert_email', 'afsrir@gmail.com', 0),
(1222, 0, 'config', 'config_maintenance', '0', 0),
(1223, 0, 'config', 'config_seo_url', '1', 0),
(1224, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(1225, 0, 'config', 'config_compression', '0', 0),
(1226, 0, 'config', 'config_secure', '1', 0),
(1219, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1218, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1217, 0, 'config', 'config_mail_smtp_password', '', 0),
(1216, 0, 'config', 'config_mail_smtp_username', '', 0),
(1212, 0, 'config', 'config_icon', 'catalog/logo2.png', 0),
(1215, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(1214, 0, 'config', 'config_mail_parameter', 'afsrir@gmail.com', 0),
(1213, 0, 'config', 'config_mail_engine', 'mail', 0),
(1211, 0, 'config', 'config_logo', 'catalog/logotoko.png', 0),
(1210, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(1209, 0, 'config', 'config_captcha', '', 0),
(1208, 0, 'config', 'config_return_status_id', '2', 0),
(1207, 0, 'config', 'config_return_id', '0', 0),
(1205, 0, 'config', 'config_affiliate_commission', '5', 0),
(1206, 0, 'config', 'config_affiliate_id', '4', 0),
(1204, 0, 'config', 'config_affiliate_auto', '0', 0),
(1203, 0, 'config', 'config_affiliate_approval', '0', 0),
(1202, 0, 'config', 'config_affiliate_group_id', '1', 0),
(1201, 0, 'config', 'config_stock_checkout', '0', 0),
(1200, 0, 'config', 'config_stock_warning', '0', 0),
(1199, 0, 'config', 'config_stock_display', '1', 0),
(1198, 0, 'config', 'config_api_id', '1', 0),
(1197, 0, 'config', 'config_fraud_status_id', '7', 0),
(1196, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(1194, 0, 'config', 'config_order_status_id', '1', 0),
(1195, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(1193, 0, 'config', 'config_checkout_id', '5', 0),
(1192, 0, 'config', 'config_checkout_guest', '1', 0),
(1191, 0, 'config', 'config_cart_weight', '1', 0),
(1190, 0, 'config', 'config_invoice_prefix', 'INV-2020-00', 0),
(1189, 0, 'config', 'config_account_id', '3', 0),
(1188, 0, 'config', 'config_login_attempts', '5', 0),
(1187, 0, 'config', 'config_customer_price', '0', 0),
(1185, 0, 'config', 'config_customer_group_id', '1', 0),
(1186, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(1184, 0, 'config', 'config_customer_search', '0', 0),
(1183, 0, 'config', 'config_customer_activity', '0', 0),
(1182, 0, 'config', 'config_customer_online', '1', 0),
(1181, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1180, 0, 'config', 'config_tax_default', 'shipping', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(125, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(126, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(127, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(128, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(129, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(130, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(131, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(132, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(133, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(134, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(135, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(136, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(137, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(138, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(139, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(140, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(141, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(142, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(143, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(144, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(145, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(146, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(147, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(148, 0, 'theme_default', 'theme_default_status', '1', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(199, 0, 'developer', 'developer_theme', '1', 0),
(200, 0, 'developer', 'developer_sass', '1', 0),
(1179, 0, 'config', 'config_tax', '1', 0),
(1178, 0, 'config', 'config_voucher_max', '100', 0),
(1177, 0, 'config', 'config_voucher_min', '1', 0),
(1176, 0, 'config', 'config_review_guest', '1', 0),
(1175, 0, 'config', 'config_review_status', '0', 0),
(1174, 0, 'config', 'config_limit_admin', '20', 0),
(1173, 0, 'config', 'config_product_count', '1', 0),
(1172, 0, 'config', 'config_weight_class_id', '1', 0),
(1171, 0, 'config', 'config_length_class_id', '1', 0),
(1170, 0, 'config', 'config_currency_auto', '1', 0),
(1169, 0, 'config', 'config_currency', 'IDR', 0),
(1168, 0, 'config', 'config_admin_language', 'en-gb', 0),
(1167, 0, 'config', 'config_language', 'id-id', 0),
(1166, 0, 'config', 'config_zone_id', '1534', 0),
(1165, 0, 'config', 'config_country_id', '100', 0),
(1164, 0, 'config', 'config_comment', '', 0),
(1162, 0, 'config', 'config_image', 'catalog/logo2.png', 0),
(1163, 0, 'config', 'config_open', 'Setiap Hari\r\nPukul 7.00 - 18.00 WIB', 0),
(1161, 0, 'config', 'config_fax', '', 0),
(1160, 0, 'config', 'config_telephone', '081267597033', 0),
(1159, 0, 'config', 'config_email', 'afsrir@gmail.com', 0),
(1158, 0, 'config', 'config_geocode', '@-0.9137822,100.4662049,15z', 0),
(1157, 0, 'config', 'config_address', 'Jl. Kampus, Limau Manis, Kec. Pauh, Kota Padang, Sumatera Barat 25164', 0),
(1156, 0, 'config', 'config_owner', 'Hidra Amnur', 0),
(1155, 0, 'config', 'config_name', 'Fresh Food Padang', 0),
(1154, 0, 'config', 'config_layout_id', '4', 0),
(1153, 0, 'config', 'config_theme', 'default', 0),
(1152, 0, 'config', 'config_meta_keyword', '', 0),
(1151, 0, 'config', 'config_meta_description', 'Makanan Segar', 0),
(1150, 0, 'config', 'config_meta_title', 'Fresh Food Padang', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '60005.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'ba02d812c455c3759f980a6e5e328b6e0d066e82', 'E92DgES4b', 'Afsri', 'Ramayani', 'afsrir@gmail.com', '', '', '114.125.58.72', 1, '2020-08-01 01:43:30'),
(2, 1, 'hidra', 'b220fece438de55586beea1745d1cc375ab98700', '5KrY7HQ59', 'hidra', 'amnur', 'hidraamnur@gmail.com', '', '', '', 1, '2020-08-05 01:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/paypal_smart_button\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypal\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/paypal_smart_button\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypal\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(7, 1, 'Birthday'),
(8, 1, 'General'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Indexes for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_googleshopping_category`
--
ALTER TABLE `oc_googleshopping_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Indexes for table `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Indexes for table `oc_googleshopping_product_status`
--
ALTER TABLE `oc_googleshopping_product_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Indexes for table `oc_googleshopping_product_target`
--
ALTER TABLE `oc_googleshopping_product_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Indexes for table `oc_googleshopping_target`
--
ALTER TABLE `oc_googleshopping_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Indexes for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  MODIFY `product_advertise_google_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2357;

--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=578;

--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=941;

--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1236;

--
-- AUTO_INCREMENT for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
