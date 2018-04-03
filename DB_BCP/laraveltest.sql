-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Квт 03 2018 р., 21:54
-- Версія сервера: 5.7.19
-- Версія PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `laraveltest`
--

-- --------------------------------------------------------

--
-- Структура таблиці `osc_countries`
--

DROP TABLE IF EXISTS `osc_countries`;
CREATE TABLE IF NOT EXISTS `osc_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `osc_languages`
--

DROP TABLE IF EXISTS `osc_languages`;
CREATE TABLE IF NOT EXISTS `osc_languages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп даних таблиці `osc_languages`
--

INSERT INTO `osc_languages` (`id`, `name`, `alias`, `used`) VALUES
(1, 'English', 'en', 0),
(2, 'Afar', 'aa', 0),
(3, 'Abkhazian', 'ab', 0),
(4, 'Afrikaans', 'af', 0),
(5, 'Amharic', 'am', 0),
(6, 'Arabic', 'ar', 0),
(7, 'Assamese', 'as', 0),
(8, 'Aymara', 'ay', 0),
(9, 'Azerbaijani', 'az', 0),
(10, 'Bashkir', 'ba', 0),
(11, 'Belarusian', 'be', 0),
(12, 'Bulgarian', 'bg', 0),
(13, 'Bihari', 'bh', 0),
(14, 'Bislama', 'bi', 0),
(15, 'Bengali/Bangla', 'bn', 0),
(16, 'Tibetan', 'bo', 0),
(17, 'Breton', 'br', 0),
(18, 'Catalan', 'ca', 0),
(19, 'Corsican', 'co', 0),
(20, 'Czech', 'cs', 0),
(21, 'Welsh', 'cy', 0),
(22, 'Danish', 'da', 0),
(23, 'German', 'de', 0),
(24, 'Bhutani', 'dz', 0),
(25, 'Greek', 'el', 0),
(26, 'Esperanto', 'eo', 0),
(27, 'Spanish', 'es', 0),
(28, 'Estonian', 'et', 0),
(29, 'Basque', 'eu', 0),
(30, 'Persian', 'fa', 0),
(31, 'Finnish', 'fi', 0),
(32, 'Fiji', 'fj', 0),
(33, 'Faeroese', 'fo', 0),
(34, 'French', 'fr', 0),
(35, 'Frisian', 'fy', 0),
(36, 'Irish', 'ga', 0),
(37, 'Scots/Gaelic', 'gd', 0),
(38, 'Galician', 'gl', 0),
(39, 'Guarani', 'gn', 0),
(40, 'Gujarati', 'gu', 0),
(41, 'Hausa', 'ha', 0),
(42, 'Hindi', 'hi', 0),
(43, 'Croatian', 'hr', 0),
(44, 'Hungarian', 'hu', 0),
(45, 'Armenian', 'hy', 0),
(46, 'Interlingua', 'ia', 0),
(47, 'Interlingue', 'ie', 0),
(48, 'Inupiak', 'ik', 0),
(49, 'Indonesian', 'in', 0),
(50, 'Icelandic', 'is', 0),
(51, 'Italian', 'it', 0),
(52, 'Hebrew', 'iw', 0),
(53, 'Japanese', 'ja', 0),
(54, 'Yiddish', 'ji', 0),
(55, 'Javanese', 'jw', 0),
(56, 'Georgian', 'ka', 0),
(57, 'Kazakh', 'kk', 0),
(58, 'Greenlandic', 'kl', 0),
(59, 'Cambodian', 'km', 0),
(60, 'Kannada', 'kn', 0),
(61, 'Korean', 'ko', 0),
(62, 'Kashmiri', 'ks', 0),
(63, 'Kurdish', 'ku', 0),
(64, 'Kirghiz', 'ky', 0),
(65, 'Latin', 'la', 0),
(66, 'Lingala', 'ln', 0),
(67, 'Laothian', 'lo', 0),
(68, 'Lithuanian', 'lt', 0),
(69, 'Latvian/Lettish', 'lv', 0),
(70, 'Malagasy', 'mg', 0),
(71, 'Maori', 'mi', 0),
(72, 'Macedonian', 'mk', 0),
(73, 'Malayalam', 'ml', 0),
(74, 'Mongolian', 'mn', 0),
(75, 'Moldavian', 'mo', 0),
(76, 'Marathi', 'mr', 0),
(77, 'Malay', 'ms', 0),
(78, 'Maltese', 'mt', 0),
(79, 'Burmese', 'my', 0),
(80, 'Nauru', 'na', 0),
(81, 'Nepali', 'ne', 0),
(82, 'Dutch', 'nl', 0),
(83, 'Norwegian', 'no', 0),
(84, 'Occitan', 'oc', 0),
(85, '(Afan)/Oromoor/Oriya', 'om', 0),
(86, 'Punjabi', 'pa', 0),
(87, 'Polish', 'pl', 0),
(88, 'Pashto/Pushto', 'ps', 0),
(89, 'Portuguese', 'pt', 0),
(90, 'Quechua', 'qu', 0),
(91, 'Rhaeto-Romance', 'rm', 0),
(92, 'Kirundi', 'rn', 0),
(93, 'Romanian', 'ro', 0),
(94, 'Russian', 'ru', 0),
(95, 'Kinyarwanda', 'rw', 0),
(96, 'Sanskrit', 'sa', 0),
(97, 'Sindhi', 'sd', 0),
(98, 'Sangro', 'sg', 0),
(99, 'Serbo-Croatian', 'sh', 0),
(100, 'Singhalese', 'si', 0),
(101, 'Slovak', 'sk', 0),
(102, 'Slovenian', 'sl', 0),
(103, 'Samoan', 'sm', 0),
(104, 'Shona', 'sn', 0),
(105, 'Somali', 'so', 0),
(106, 'Albanian', 'sq', 0),
(107, 'Serbian', 'sr', 0),
(108, 'Siswati', 'ss', 0),
(109, 'Sesotho', 'st', 0),
(110, 'Sundanese', 'su', 0),
(111, 'Swedish', 'sv', 0),
(112, 'Swahili', 'sw', 0),
(113, 'Tamil', 'ta', 0),
(114, 'Telugu', 'te', 0),
(115, 'Tajik', 'tg', 0),
(116, 'Thai', 'th', 0),
(117, 'Tigrinya', 'ti', 0),
(118, 'Turkmen', 'tk', 0),
(119, 'Tagalog', 'tl', 0),
(120, 'Setswana', 'tn', 0),
(121, 'Tonga', 'to', 0),
(122, 'Turkish', 'tr', 0),
(123, 'Tsonga', 'ts', 0),
(124, 'Tatar', 'tt', 0),
(125, 'Twi', 'tw', 0),
(126, 'Ukrainian', 'uk', 0),
(127, 'Urdu', 'ur', 0),
(128, 'Uzbek', 'uz', 0),
(129, 'Vietnamese', 'vi', 0),
(130, 'Volapuk', 'vo', 0),
(131, 'Wolof', 'wo', 0),
(132, 'Xhosa', 'xh', 0),
(133, 'Yoruba', 'yo', 0),
(134, 'Chinese', 'zh', 0),
(135, 'Zulu', 'zu', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `osc_meta`
--

DROP TABLE IF EXISTS `osc_meta`;
CREATE TABLE IF NOT EXISTS `osc_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keys` varchar(255) DEFAULT NULL,
  `meta_desc` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `osc_meta`
--

INSERT INTO `osc_meta` (`id`, `alias`, `meta_title`, `meta_keys`, `meta_desc`) VALUES
(1, 'home', 'Volterra | Home', '', ''),
(2, 'projects', 'Volterra | Projects', '', ''),
(3, 'legal', 'Volterra | Legal', '', ''),
(4, 'terms', 'Volterra | Terms', '', ''),
(5, 'contacts', 'Volterra | Contacts', '', '');

-- --------------------------------------------------------

--
-- Структура таблиці `osc_nav`
--

DROP TABLE IF EXISTS `osc_nav`;
CREATE TABLE IF NOT EXISTS `osc_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(255) DEFAULT NULL,
  `pos` int(11) NOT NULL DEFAULT '0',
  `block` int(11) NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `osc_nav`
--

INSERT INTO `osc_nav` (`id`, `type`, `parent`, `alias`, `pos`, `block`, `target`, `created`, `modified`, `name`) VALUES
(1, 0, 0, 'home', 0, 0, 0, '2018-03-31 00:00:00', '2018-03-31 00:00:00', 'Главная'),
(2, 0, 0, 'projects', 1, 0, 0, '2018-03-31 00:00:00', '2018-03-31 00:00:00', 'Проекты'),
(3, 1, 0, 'legal', 2, 0, 0, '2018-03-31 00:00:00', '2018-03-31 00:00:00', 'Legal'),
(4, 1, 0, 'terms', 3, 0, 0, '2018-03-31 00:00:00', '2018-03-31 00:00:00', 'Terms'),
(5, 0, 0, 'contacts', 4, 0, 0, '2018-03-31 00:00:00', '2018-03-31 00:00:00', 'Контакты');

-- --------------------------------------------------------

--
-- Структура таблиці `osc_settings`
--

DROP TABLE IF EXISTS `osc_settings`;
CREATE TABLE IF NOT EXISTS `osc_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `vk_link` varchar(255) DEFAULT NULL,
  `tw_link` varchar(255) DEFAULT NULL,
  `li_link` varchar(255) DEFAULT NULL,
  `site_index` int(11) NOT NULL DEFAULT '0',
  `copyright` text,
  `top_script` text,
  `bot_script` text,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `osc_settings`
--

INSERT INTO `osc_settings` (`id`, `sitename`, `email`, `phone`, `fb_link`, `vk_link`, `tw_link`, `li_link`, `site_index`, `copyright`, `top_script`, `bot_script`, `modified`) VALUES
(1, 'Volterra', NULL, NULL, NULL, NULL, NULL, NULL, 0, '© Volterra', NULL, NULL, '2018-03-31 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблиці `osc_users`
--

DROP TABLE IF EXISTS `osc_users`;
CREATE TABLE IF NOT EXISTS `osc_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '1',
  `block` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `user_card_id` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `osc_users`
--

INSERT INTO `osc_users` (`id`, `login`, `password`, `type`, `block`, `first_name`, `last_name`, `avatar`, `user_card_id`, `created`, `modified`) VALUES
(1, 'test@test.qwe', '4297f44b13955235245b2497399d7a93', 1, 0, '123123', '123123', NULL, 1, '2018-04-03 15:23:40', '2018-04-03 15:23:40'),
(2, 'qwe@qq.q', '4297f44b13955235245b2497399d7a93', 1, 0, '123', '123', NULL, 2, '2018-04-03 15:27:00', '2018-04-03 15:27:00'),
(3, 'qwe@qq.qw', '4297f44b13955235245b2497399d7a93', 1, 0, '123', '123', NULL, 3, '2018-04-03 15:29:11', '2018-04-03 15:29:11'),
(4, 'ww@wwww.ww', '4297f44b13955235245b2497399d7a93', 1, 0, '123', '123', NULL, 4, '2018-04-03 15:29:44', '2018-04-03 15:29:44'),
(5, 'ww@ww.qw', '1a100d2c0dab19c4430e7d73762b3423', 1, 0, '222', '222', NULL, 5, '2018-04-03 15:30:45', '2018-04-03 15:30:45'),
(6, 'qqq@qq.qq', '4297f44b13955235245b2497399d7a93', 1, 0, '123123', '123123', NULL, 6, '2018-04-03 15:38:02', '2018-04-03 15:38:02'),
(7, 'qq@ww.qq', 'efe6398127928f1b2e9ef3207fb82663', 1, 0, 'qweqwe', 'qweqwe', NULL, 7, '2018-04-03 15:43:21', '2018-04-03 15:43:21'),
(8, 'ww@www.ww', '4297f44b13955235245b2497399d7a93', 1, 0, '123123', '123123', NULL, 8, '2018-04-03 15:48:32', '2018-04-03 15:48:32'),
(9, 'wwq@ee.ww', '4297f44b13955235245b2497399d7a93', 1, 0, '123123', '123123', NULL, 9, '2018-04-03 15:49:32', '2018-04-03 15:49:32'),
(10, 'sk-fall@yandex.ru', '0b2115aae461d2a797bf7f68bd30c9c4', 1, 0, 'Sergey', 'Kononuchenko', NULL, 10, '2018-04-03 16:11:00', '2018-04-03 16:11:00');

-- --------------------------------------------------------

--
-- Структура таблиці `osc_user_cards`
--

DROP TABLE IF EXISTS `osc_user_cards`;
CREATE TABLE IF NOT EXISTS `osc_user_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gender` int(11) NOT NULL DEFAULT '1',
  `reg_ip` varchar(255) DEFAULT NULL,
  `last_visit_ip` varchar(255) DEFAULT NULL,
  `last_visit_date` datetime DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `address` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `osc_user_cards`
--

INSERT INTO `osc_user_cards` (`id`, `user_id`, `email`, `phone`, `gender`, `reg_ip`, `last_visit_ip`, `last_visit_date`, `country_id`, `address`) VALUES
(1, 1, 'test@test.qwe', '123123', 1, NULL, '127.0.0.1', '2018-04-03 15:23:40', 0, NULL),
(2, 2, 'qwe@qq.q', '123', 1, NULL, '127.0.0.1', '2018-04-03 15:27:00', 0, NULL),
(3, 3, 'qwe@qq.qw', '123', 1, NULL, '127.0.0.1', '2018-04-03 15:29:11', 0, NULL),
(4, 4, 'ww@wwww.ww', '123', 1, NULL, '127.0.0.1', '2018-04-03 15:29:44', 0, NULL),
(5, 5, 'ww@ww.qw', 'qqq', 1, NULL, '127.0.0.1', '2018-04-03 15:30:45', 0, NULL),
(6, 6, 'qqq@qq.qq', 'qqq', 1, NULL, '127.0.0.1', '2018-04-03 15:38:02', 0, NULL),
(7, 7, 'qq@ww.qq', 'qq', 1, NULL, '127.0.0.1', '2018-04-03 15:43:21', 0, NULL),
(8, 8, 'ww@www.ww', '123123', 1, NULL, '127.0.0.1', '2018-04-03 15:48:32', 0, NULL),
(9, 9, 'wwq@ee.ww', '123123', 1, NULL, '127.0.0.1', '2018-04-03 15:49:32', 0, NULL),
(10, 10, 'sk-fall@yandex.ru', '0981003228', 1, '127.0.0.1', '127.0.0.1', '2018-04-03 16:21:15', 0, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
