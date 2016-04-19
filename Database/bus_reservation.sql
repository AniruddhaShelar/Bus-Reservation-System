-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2016 at 09:43 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bus_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add bus pick area', 7, 'add_buspickarea'),
(20, 'Can change bus pick area', 7, 'change_buspickarea'),
(21, 'Can delete bus pick area', 7, 'delete_buspickarea'),
(22, 'Can add bus drop area', 8, 'add_busdroparea'),
(23, 'Can change bus drop area', 8, 'change_busdroparea'),
(24, 'Can delete bus drop area', 8, 'delete_busdroparea'),
(25, 'Can add bus info', 9, 'add_businfo'),
(26, 'Can change bus info', 9, 'change_businfo'),
(27, 'Can delete bus info', 9, 'delete_businfo'),
(28, 'Can add book aticket', 10, 'add_bookaticket'),
(29, 'Can change book aticket', 10, 'change_bookaticket'),
(30, 'Can delete book aticket', 10, 'delete_bookaticket');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$24000$6f63EyYtOwBp$Q8xRFwAn+Vo6EGoP9eoHNIEqJlX9oC/LiGNrmW45iIY=', '2016-03-24 14:51:30.970934', 1, 'bus_admin', '', '', 'bus@gmail.com', 1, 1, '2016-03-11 19:21:56.105143'),
(2, 'pbkdf2_sha256$24000$KyetaLZWY0Uw$GQLJV0yz33MfPWQbRSBqVWvTlcoA1+TffG6RMEGqJv0=', '2016-03-19 20:49:02.590413', 0, 'andy', '', '', '', 0, 1, '2016-03-17 17:50:56.807446'),
(3, 'pbkdf2_sha256$24000$1NjzqqWkc4Ed$t+aGlg7EVsIEocTn+R994W8JOFIktmYgluYNikoWtws=', '2016-03-17 17:53:27.229433', 0, 'niki', '', '', '', 0, 1, '2016-03-17 17:53:26.437388'),
(4, 'pbkdf2_sha256$24000$jK3YRS8uu9nP$prrQ5ONDLaxyFOACFOFrTrOm3NNQ9dQZ3cUL0YBtmxw=', '2016-03-20 16:26:05.177169', 0, 'nikichiki', '', '', '', 0, 1, '2016-03-19 15:09:30.251371');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bookticket_bookaticket`
--

CREATE TABLE IF NOT EXISTS `bookticket_bookaticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_date` datetime(6) NOT NULL,
  `status` varchar(2) NOT NULL,
  `ip_address` char(39) NOT NULL,
  `last_updated` datetime(6) NOT NULL,
  `date` datetime(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `booking_seats_num` int(11) NOT NULL,
  `fare` decimal(9,2) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookTicket_bookaticket_bus_id_7f7e68e1_fk_busrv_busInfo_id` (`bus_id`),
  KEY `bookTicket_bookaticket_user_id_398ddaae_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bookticket_bookaticket`
--

INSERT INTO `bookticket_bookaticket` (`id`, `booking_date`, `status`, `ip_address`, `last_updated`, `date`, `email`, `phone`, `booking_seats_num`, `fare`, `bus_id`, `user_id`) VALUES
(1, '2016-03-17 18:30:00.000000', 'P', '127.0.0.1', '2016-03-17 17:14:08.402827', '2016-03-17 17:14:08.402827', 'aniruddha@gmail.com', '9978675678', 4, '500.00', 2, 1),
(2, '2016-03-17 18:30:00.000000', 'C', '127.0.0.1', '2016-03-19 15:57:29.083906', '2016-03-17 17:21:10.925255', 'aniruddha@gmail.com', '9948584235', 5, '500.00', 2, 1),
(3, '2016-03-25 18:30:00.000000', 'P', '127.0.0.1', '2016-03-19 20:43:54.148685', '2016-03-19 20:43:54.148685', 'niki@gmail.com', '9945654565', 2, '300.00', 1, 4),
(4, '2016-03-20 18:30:00.000000', 'C', '127.0.0.1', '2016-03-20 16:25:48.154196', '2016-03-20 16:21:15.411596', 'nikimadgirl@item.com', '9920755049', 3, '300.00', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `busrv_busdroparea`
--

CREATE TABLE IF NOT EXISTS `busrv_busdroparea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(50) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `busrv_busdroparea`
--

INSERT INTO `busrv_busdroparea` (`id`, `area_name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Karjat', 'karjat', '2016-03-11 19:26:45.624703', '2016-03-11 19:26:45.624703'),
(2, 'Swargate(pune)', 'swargatepune', '2016-03-11 19:27:06.075873', '2016-03-11 19:27:06.075873');

-- --------------------------------------------------------

--
-- Table structure for table `busrv_businfo`
--

CREATE TABLE IF NOT EXISTS `busrv_businfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_name` varchar(50) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `bus_description` longtext NOT NULL,
  `type` varchar(10) NOT NULL,
  `arriving_time` time(6) NOT NULL,
  `depature_time` time(6) NOT NULL,
  `fare` decimal(9,2) NOT NULL,
  `no_of_seats` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  `arriving_from_id` int(11) NOT NULL,
  `depature_at_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `busrv_busInfo_4a888a93` (`arriving_from_id`),
  KEY `busrv_busInfo_16dac3c0` (`depature_at_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `busrv_businfo`
--

INSERT INTO `busrv_businfo` (`id`, `bus_name`, `slug`, `bus_description`, `type`, `arriving_time`, `depature_time`, `fare`, `no_of_seats`, `is_active`, `created_at`, `updated_at`, `image`, `arriving_from_id`, `depature_at_id`) VALUES
(1, 'Niki Bus Travels', 'niki-bus', 'With online reservation we provide advance booking facilities in our hotels. The hospitality and versatility that we showcase in all our functional areas has made us one of the leading tours & travels companies in India. Every year, we serve millions of travelers. Smiles on their faces are the greatest reward we have ever got.', 'AC', '06:00:00.000000', '18:00:00.000000', '300.00', 43, 1, '2016-03-11 19:35:51.355917', '2016-03-14 18:18:25.710599', 'images/bus/main/volvo1.jpg', 1, 2),
(2, 'Jyoti travels', 'jyoti-travels', 'A Destination for the New Millennium.\r\nA different light.\r\nA new point of view.\r\nA signature of excellence.\r\nA tradition of excellence.', 'AC', '06:00:00.000000', '12:00:00.000000', '500.00', 50, 1, '2016-03-14 17:07:00.968717', '2016-03-14 18:01:06.644974', 'images/bus/main/1662227372_v1.jpg', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `busrv_buspickarea`
--

CREATE TABLE IF NOT EXISTS `busrv_buspickarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(50) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `busrv_buspickarea`
--

INSERT INTO `busrv_buspickarea` (`id`, `area_name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Borivali(east)', 'borivalieast', '2016-03-11 19:25:33.957604', '2016-03-11 19:25:33.957604'),
(2, 'Vasai', 'vasai', '2016-03-11 19:25:41.455032', '2016-03-11 19:25:41.455032');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2016-03-11 19:25:34.088611', '1', 'Borivali(east)', 1, 'Added.', 7, 1),
(2, '2016-03-11 19:25:41.478034', '2', 'Vasai', 1, 'Added.', 7, 1),
(3, '2016-03-11 19:26:45.637704', '1', 'Karjat', 1, 'Added.', 8, 1),
(4, '2016-03-11 19:27:06.091873', '2', 'Swargate(pune)', 1, 'Added.', 8, 1),
(5, '2016-03-11 19:35:51.436921', '1', 'Niki Bus', 1, 'Added.', 9, 1),
(6, '2016-03-14 17:07:01.451745', '2', 'Jyoti travels', 1, 'Added.', 9, 1),
(7, '2016-03-14 18:01:06.892988', '2', 'Jyoti travels', 2, 'Changed depature_time.', 9, 1),
(8, '2016-03-14 18:18:25.895609', '1', 'Niki Bus Travels', 2, 'Changed bus_name.', 9, 1),
(9, '2016-03-19 15:57:29.133909', '2', 'BUSBK#002', 2, 'Changed status.', 10, 1),
(10, '2016-03-19 20:48:40.101574', '2', 'andy', 2, 'Changed password.', 4, 1),
(11, '2016-03-20 16:25:48.180197', '4', 'BUSBK#004', 2, 'Changed status.', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'bookTicket', 'bookaticket'),
(8, 'bus', 'busdroparea'),
(9, 'bus', 'businfo'),
(7, 'bus', 'buspickarea'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-03-10 18:25:24.146120'),
(2, 'auth', '0001_initial', '2016-03-10 18:26:11.550831'),
(3, 'admin', '0001_initial', '2016-03-10 18:26:20.311332'),
(4, 'admin', '0002_logentry_remove_auto_add', '2016-03-10 18:26:20.675353'),
(5, 'contenttypes', '0002_remove_content_type_name', '2016-03-10 18:26:23.872536'),
(6, 'auth', '0002_alter_permission_name_max_length', '2016-03-10 18:26:26.281674'),
(7, 'auth', '0003_alter_user_email_max_length', '2016-03-10 18:26:32.190012'),
(8, 'auth', '0004_alter_user_username_opts', '2016-03-10 18:26:32.272016'),
(9, 'auth', '0005_alter_user_last_login_null', '2016-03-10 18:26:33.295075'),
(10, 'auth', '0006_require_contenttypes_0002', '2016-03-10 18:26:33.348078'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2016-03-10 18:26:33.438083'),
(12, 'sessions', '0001_initial', '2016-03-10 18:26:35.328191'),
(13, 'bus', '0001_initial', '2016-03-11 19:20:57.692802'),
(14, 'bookTicket', '0001_initial', '2016-03-15 18:52:10.132561');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1adt4sc2cq3frge92qlgvj0d6t042xhk', 'OWM3NGNkYjIwYWEwMjE1NGM0ZjFhNDc3ZWU0ZGNkMmEwMWVhZjQ3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3ZjQ0NWIxNTdhNmIyZDAwMDQ1NjAzODc4ZGNkZDkyNzdlNWI1NjFmIn0=', '2016-04-07 14:51:31.633972'),
('1vtddpjeimvm18xtzknj4zgu9kn6e8tf', 'OWM3NGNkYjIwYWEwMjE1NGM0ZjFhNDc3ZWU0ZGNkMmEwMWVhZjQ3NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3ZjQ0NWIxNTdhNmIyZDAwMDQ1NjAzODc4ZGNkZDkyNzdlNWI1NjFmIn0=', '2016-04-03 16:28:26.322242'),
('ncaq5cfbbs6qi600fto7gj8jf08b4n2p', 'Mzk5MzMyOTA5YWVjOTVkYTU4YzBlOTAwNDdjM2U5YThjNjY3NzczZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjdmNDQ1YjE1N2E2YjJkMDAwNDU2MDM4NzhkY2RkOTI3N2U1YjU2MWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-03-29 19:18:08.098672');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `bookticket_bookaticket`
--
ALTER TABLE `bookticket_bookaticket`
  ADD CONSTRAINT `bookTicket_bookaticket_bus_id_7f7e68e1_fk_busrv_busInfo_id` FOREIGN KEY (`bus_id`) REFERENCES `busrv_businfo` (`id`),
  ADD CONSTRAINT `bookTicket_bookaticket_user_id_398ddaae_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `busrv_businfo`
--
ALTER TABLE `busrv_businfo`
  ADD CONSTRAINT `busrv_busInfo_arriving_from_id_4829ae64_fk_busrv_busPickArea_id` FOREIGN KEY (`arriving_from_id`) REFERENCES `busrv_buspickarea` (`id`),
  ADD CONSTRAINT `busrv_busInfo_depature_at_id_9b5e909b_fk_busrv_busDropArea_id` FOREIGN KEY (`depature_at_id`) REFERENCES `busrv_busdroparea` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
