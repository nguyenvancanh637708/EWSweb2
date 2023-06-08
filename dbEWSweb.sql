-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.29 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ewsweb
CREATE DATABASE IF NOT EXISTS `ewsweb` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ewsweb`;

-- Dumping structure for table ewsweb.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.auth_group: ~1 rows (approximately)
INSERT INTO `auth_group` (`id`, `name`) VALUES
	(1, 'groups_1');

-- Dumping structure for table ewsweb.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.auth_group_permissions: ~4 rows (approximately)
INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
	(1, 1, 9),
	(2, 1, 10),
	(3, 1, 11),
	(4, 1, 12);

-- Dumping structure for table ewsweb.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.auth_permission: ~80 rows (approximately)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add contact form', 7, 'add_contactform'),
	(26, 'Can change contact form', 7, 'change_contactform'),
	(27, 'Can delete contact form', 7, 'delete_contactform'),
	(28, 'Can view contact form', 7, 'view_contactform'),
	(29, 'Can add registermodel', 8, 'add_registermodel'),
	(30, 'Can change registermodel', 8, 'change_registermodel'),
	(31, 'Can delete registermodel', 8, 'delete_registermodel'),
	(32, 'Can view registermodel', 8, 'view_registermodel'),
	(33, 'Can add form upload', 9, 'add_formupload'),
	(34, 'Can change form upload', 9, 'change_formupload'),
	(35, 'Can delete form upload', 9, 'delete_formupload'),
	(36, 'Can view form upload', 9, 'view_formupload'),
	(37, 'Can add department', 10, 'add_department'),
	(38, 'Can change department', 10, 'change_department'),
	(39, 'Can delete department', 10, 'delete_department'),
	(40, 'Can view department', 10, 'view_department'),
	(41, 'Can add employees', 11, 'add_employees'),
	(42, 'Can change employees', 11, 'change_employees'),
	(43, 'Can delete employees', 11, 'delete_employees'),
	(44, 'Can view employees', 11, 'view_employees'),
	(45, 'Can add post', 12, 'add_post'),
	(46, 'Can change post', 12, 'change_post'),
	(47, 'Can delete post', 12, 'delete_post'),
	(48, 'Can view post', 12, 'view_post'),
	(49, 'Can add post form', 13, 'add_postform'),
	(50, 'Can change post form', 13, 'change_postform'),
	(51, 'Can delete post form', 13, 'delete_postform'),
	(52, 'Can view post form', 13, 'view_postform'),
	(53, 'Can add sites', 14, 'add_sites'),
	(54, 'Can change sites', 14, 'change_sites'),
	(55, 'Can delete sites', 14, 'delete_sites'),
	(56, 'Can view sites', 14, 'view_sites'),
	(57, 'Can add sites', 15, 'add_sites'),
	(58, 'Can change sites', 15, 'change_sites'),
	(59, 'Can delete sites', 15, 'delete_sites'),
	(60, 'Can view sites', 15, 'view_sites'),
	(61, 'Can add employee', 16, 'add_employee'),
	(62, 'Can change employee', 16, 'change_employee'),
	(63, 'Can delete employee', 16, 'delete_employee'),
	(64, 'Can view employee', 16, 'view_employee'),
	(65, 'Can add sites', 17, 'add_sites'),
	(66, 'Can change sites', 17, 'change_sites'),
	(67, 'Can delete sites', 17, 'delete_sites'),
	(68, 'Can view sites', 17, 'view_sites'),
	(69, 'Can add editors', 18, 'add_editors'),
	(70, 'Can change editors', 18, 'change_editors'),
	(71, 'Can delete editors', 18, 'delete_editors'),
	(72, 'Can view editors', 18, 'view_editors'),
	(73, 'Can add monitoring', 19, 'add_monitoring'),
	(74, 'Can change monitoring', 19, 'change_monitoring'),
	(75, 'Can delete monitoring', 19, 'delete_monitoring'),
	(76, 'Can view monitoring', 19, 'view_monitoring'),
	(77, 'Can add training material', 20, 'add_trainingmaterial'),
	(78, 'Can change training material', 20, 'change_trainingmaterial'),
	(79, 'Can delete training material', 20, 'delete_trainingmaterial'),
	(80, 'Can view training material', 20, 'view_trainingmaterial');

-- Dumping structure for table ewsweb.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.auth_user: ~4 rows (approximately)
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$390000$t6nlwXBpk4oa5fqCIJc8Mt$Ki7XoJeQ6qwe4QPh9JSDAYkUKUA1n+AdxaAzfTxxCHI=', '2023-05-22 01:54:00.622169', 1, 'CanhmaiA', '', '', 'canhmaia@gmail.com', 1, 1, '2023-04-05 03:46:43.000000'),
	(2, 'pbkdf2_sha256$390000$klH8WMtzmBZQzUVNT3ylYe$XmAlFkgH+L/xNAsEmSsAPHCKCBYyezfBCvpFUntR5NI=', '2023-05-16 08:58:46.559344', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-04-13 03:20:27.505852'),
	(8, 'pbkdf2_sha256$390000$cKpQvsBemdscahjQXR64bC$GUhWEm434+JeqsHwTbtvul9rYMVePUijV9oRnfFHwj8=', '2023-05-19 15:37:25.506113', 1, 'MinhDuc', '', '', 'daominhduc@gmail.com', 1, 1, '2023-05-19 09:17:21.000000'),
	(10, 'pbkdf2_sha256$390000$XbTPeCeAofR5Ak4PWlzJG3$3I9oBZbGptI6piSgZaWIoEf8DJ3tu/6FfUdgCA0+znc=', '2023-05-19 10:04:33.480960', 0, 'CanhNV', '', '', 'nguyenvancanh2kbn@gmail.com', 1, 1, '2023-05-19 10:02:17.000000');

-- Dumping structure for table ewsweb.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.auth_user_groups: ~2 rows (approximately)
INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
	(1, 1, 1),
	(3, 8, 1);

-- Dumping structure for table ewsweb.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.auth_user_user_permissions: ~4 rows (approximately)
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
	(1, 1, 9),
	(2, 1, 10),
	(3, 1, 11),
	(4, 1, 12);

-- Dumping structure for table ewsweb.contact_contactform
CREATE TABLE IF NOT EXISTS `contact_contactform` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.contact_contactform: ~0 rows (approximately)

-- Dumping structure for table ewsweb.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.django_admin_log: ~183 rows (approximately)
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2023-04-05 03:49:13.657904', '1', 'groups_1', 1, '[{"added": {}}]', 3, 1),
	(2, '2023-04-05 03:49:36.154936', '1', 'CanhmaiA', 2, '[{"changed": {"fields": ["Groups", "User permissions"]}}]', 4, 1),
	(3, '2023-04-05 03:53:06.446272', '1', '1,Điện Biên', 1, '[{"added": {}}]', 10, 1),
	(4, '2023-04-05 03:53:16.380332', '2', '2,Lai Châu', 1, '[{"added": {}}]', 10, 1),
	(5, '2023-04-05 04:35:50.746601', '1', '1,1,Điện Biên,Điện Biên,Nậm Pồ,Chà Cang,Cao,Thấp,Thấp,Không', 1, '[{"added": {}}]', 11, 1),
	(6, '2023-04-05 04:36:47.915698', '1', '1,1,Điện Biên,Điện Biên,Nậm Pồ,Chà Cang,Cao,Thấp,Thấp,Không', 2, '[]', 11, 1),
	(7, '2023-04-05 04:39:35.963906', '2', '2,1,Điện Biên,Điện Biên,Nậm Pồ,Nậm Khăn,Cao,Thấp,Trung Bình,Rât thấp,Không', 1, '[{"added": {}}]', 11, 1),
	(8, '2023-04-05 04:40:45.043804', '3', '3,1,Điện Biên,Điện Biên,Mường Chả,Mường Tùng,Cao,Rất thấp,Rất thấp,Rât thấp,Rât thấp', 1, '[{"added": {}}]', 11, 1),
	(9, '2023-04-05 04:42:21.577954', '4', '4,1,Điện Biên,Điện Biên,Tủa Chùa,Lao Xả Phình,Trung bình,Rất thấp,Không,Rât thấp,Không', 1, '[{"added": {}}]', 11, 1),
	(10, '2023-04-06 04:47:43.806910', '1', 'post object (1)', 1, '[{"added": {}}]', 12, 1),
	(11, '2023-04-06 09:17:41.763624', '1', 'contactForm object (1)', 1, '[{"added": {}}]', 7, 1),
	(12, '2023-04-06 09:17:57.623262', '1', 'contactForm object (1)', 2, '[]', 7, 1),
	(13, '2023-04-07 02:55:11.111728', '1', 'Canh', 2, '[]', 7, 1),
	(14, '2023-04-07 03:50:26.097907', '3', 'Lượng', 3, '', 7, 1),
	(15, '2023-04-07 04:37:50.585864', '1', 'postForm object (1)', 1, '[{"added": {}}]', 13, 1),
	(16, '2023-04-07 04:38:39.162032', '1', 'postForm object (1)', 2, '[]', 13, 1),
	(17, '2023-04-07 04:39:16.491387', '2', 'postForm object (2)', 1, '[{"added": {}}]', 13, 1),
	(18, '2023-04-07 07:52:56.616225', '3', 'Tiêu đề 3', 1, '[{"added": {}}]', 13, 1),
	(109, '2023-05-05 02:29:26.015762', '3', 'Khắc phục hậu quả sạt lở đất tại Thái Nguyên', 2, '[{"changed": {"fields": ["Title", "Body"]}}]', 13, 2),
	(110, '2023-05-05 02:32:26.798639', '2', 'Báo cáo', 2, '[{"changed": {"fields": ["Title"]}}]', 13, 2),
	(111, '2023-05-05 02:33:35.205496', '2', 'Tổng thiệt hại người và của', 2, '[{"changed": {"fields": ["Title", "Body"]}}]', 13, 2),
	(112, '2023-05-11 08:39:33.485414', '1', 'Lào Cai-30', 1, '[{"added": {}}]', 18, 2),
	(113, '2023-05-11 08:39:46.218298', '2', 'Yên Bái-35', 1, '[{"added": {}}]', 18, 2),
	(114, '2023-05-11 08:39:58.445842', '3', 'Cao bằng-52', 1, '[{"added": {}}]', 18, 2),
	(115, '2023-05-11 08:40:10.442075', '4', 'Hà giang-40', 1, '[{"added": {}}]', 18, 2),
	(116, '2023-05-16 09:32:18.804301', '1', 'CanhmaiA', 2, '[{"changed": {"fields": ["password"]}}]', 4, 2),
	(117, '2023-05-17 01:20:32.745408', '7', 'abc xyz', 3, '', 7, 1),
	(118, '2023-05-17 01:20:38.913393', '6', 'admin4', 3, '', 7, 1),
	(119, '2023-05-17 01:23:10.795731', '2', 'Lượng', 3, '', 7, 1),
	(120, '2023-05-17 01:23:10.858236', '1', 'Canh', 3, '', 7, 1),
	(121, '2023-05-18 03:17:08.856963', '49', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(122, '2023-05-18 03:17:08.997581', '50', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(123, '2023-05-18 03:17:09.138213', '51', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(124, '2023-05-18 03:17:09.263210', '52', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(125, '2023-05-18 03:17:09.310073', '53', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(126, '2023-05-18 03:17:09.372582', '54', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(127, '2023-05-18 03:17:09.419478', '55', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(128, '2023-05-18 03:17:09.481945', '56', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(129, '2023-05-18 03:17:09.544451', '57', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(130, '2023-05-18 03:17:09.606949', '58', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(131, '2023-05-18 03:17:09.685079', '59', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(132, '2023-05-18 03:17:09.747601', '60', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(133, '2023-05-18 03:17:09.794467', '61', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(134, '2023-05-18 03:17:09.872602', '62', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(135, '2023-05-18 03:17:09.935104', '63', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(136, '2023-05-18 03:17:10.013197', '64', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(137, '2023-05-18 03:17:10.091339', '65', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(138, '2023-05-18 03:17:10.200729', '66', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(139, '2023-05-18 03:17:10.278846', '67', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(140, '2023-05-18 03:17:10.341352', '68', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(141, '2023-05-18 03:17:10.372609', '69', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(142, '2023-05-18 03:17:10.435113', '70', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(143, '2023-05-18 03:17:10.481983', '71', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(144, '2023-05-18 03:17:10.528949', '72', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(145, '2023-05-18 03:17:10.591373', '73', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(146, '2023-05-18 03:17:10.638208', '74', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(147, '2023-05-18 03:17:10.685107', '75', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(148, '2023-05-18 03:17:10.731979', '76', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(149, '2023-05-18 03:17:10.778859', '77', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(150, '2023-05-18 03:17:10.856997', '78', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(151, '2023-05-18 03:17:10.903855', '79', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(152, '2023-05-18 03:17:10.935091', '80', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(153, '2023-05-18 03:17:10.997600', '81', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(154, '2023-05-18 03:17:11.028999', '82', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(155, '2023-05-18 03:17:11.091345', '83', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(156, '2023-05-18 03:17:11.200723', '84', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(157, '2023-05-18 03:17:11.263249', '85', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(158, '2023-05-18 03:17:11.310109', '86', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(159, '2023-05-18 03:17:11.356968', '87', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(160, '2023-05-18 03:17:11.388240', '88', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(161, '2023-05-18 03:17:11.450737', '89', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(162, '2023-05-18 03:17:11.497619', '90', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(163, '2023-05-18 03:17:11.560121', '91', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(164, '2023-05-18 03:17:11.622614', '92', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(165, '2023-05-18 03:17:11.669496', '93', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(166, '2023-05-18 03:17:11.747630', '94', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(167, '2023-05-18 03:17:11.794487', '95', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(168, '2023-05-18 03:17:11.841343', '96', 'self.Temperature', 1, 'new through import_export', 19, 1),
	(169, '2023-05-18 08:53:03.480259', '49', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(170, '2023-05-18 08:53:03.527158', '50', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(171, '2023-05-18 08:53:03.574008', '51', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(172, '2023-05-18 08:53:03.605261', '52', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(173, '2023-05-18 08:53:03.667750', '53', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(174, '2023-05-18 08:53:03.714657', '54', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(175, '2023-05-18 08:53:03.777154', '55', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(176, '2023-05-18 08:53:03.902129', '56', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(177, '2023-05-18 08:53:03.949015', '57', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(178, '2023-05-18 08:53:03.995888', '58', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(179, '2023-05-18 08:53:04.042794', '59', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(180, '2023-05-18 08:53:04.120888', '60', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(181, '2023-05-18 08:53:04.183389', '61', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(182, '2023-05-18 08:53:04.245893', '62', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(183, '2023-05-18 08:53:04.292830', '63', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(184, '2023-05-18 08:53:04.355267', '64', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(185, '2023-05-18 08:53:04.402144', '65', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(186, '2023-05-18 08:53:04.464645', '66', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(187, '2023-05-18 08:53:04.511522', '67', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(188, '2023-05-18 08:53:04.558394', '68', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(189, '2023-05-18 08:53:04.605247', '69', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(190, '2023-05-18 08:53:04.667747', '70', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(191, '2023-05-18 08:53:04.714625', '71', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(192, '2023-05-18 08:53:04.761502', '72', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(193, '2023-05-18 08:53:04.808365', '73', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(194, '2023-05-18 08:53:04.870868', '74', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(195, '2023-05-18 08:53:04.917743', '75', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(196, '2023-05-18 08:53:04.995869', '76', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(197, '2023-05-18 08:53:05.073995', '77', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(198, '2023-05-18 08:53:05.136497', '78', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(199, '2023-05-18 08:53:05.214625', '79', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(200, '2023-05-18 08:53:05.261499', '80', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(201, '2023-05-18 08:53:05.339626', '81', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(202, '2023-05-18 08:53:05.433379', '82', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(203, '2023-05-18 08:53:05.495879', '83', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(204, '2023-05-18 08:53:05.558378', '84', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(205, '2023-05-18 08:53:05.620881', '85', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(206, '2023-05-18 08:53:05.667748', '86', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(207, '2023-05-18 08:53:05.714624', '87', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(208, '2023-05-18 08:53:05.792773', '88', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(209, '2023-05-18 08:53:05.870886', '89', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(210, '2023-05-18 08:53:05.933380', '90', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(211, '2023-05-18 08:53:05.995886', '91', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(212, '2023-05-18 08:53:06.058378', '92', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(213, '2023-05-18 08:53:06.105260', '93', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(214, '2023-05-18 08:53:06.152131', '94', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(215, '2023-05-18 08:53:06.230261', '95', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(216, '2023-05-18 08:53:06.324007', '96', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(217, '2023-05-18 08:53:17.152245', '145', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(218, '2023-05-18 08:53:17.199124', '146', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(219, '2023-05-18 08:53:17.261645', '147', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(220, '2023-05-18 08:53:17.324120', '148', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(221, '2023-05-18 08:53:17.370999', '149', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(222, '2023-05-18 08:53:17.417875', '150', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(223, '2023-05-18 08:53:17.480396', '151', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(224, '2023-05-18 08:53:17.527284', '152', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(225, '2023-05-18 08:53:17.589766', '153', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(226, '2023-05-18 08:53:17.636641', '154', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(227, '2023-05-18 08:53:17.714775', '155', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(228, '2023-05-18 08:53:17.792895', '156', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(229, '2023-05-18 08:53:17.855430', '157', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(230, '2023-05-18 08:53:17.933532', '158', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(231, '2023-05-18 08:53:17.980398', '159', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(232, '2023-05-18 08:53:18.027292', '160', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(233, '2023-05-18 08:53:18.074146', '161', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(234, '2023-05-18 08:53:18.121023', '162', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(235, '2023-05-18 08:53:18.167882', '163', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(236, '2023-05-18 08:53:18.183538', '164', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(237, '2023-05-18 08:53:18.246022', '165', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(238, '2023-05-18 08:53:18.277290', '166', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(239, '2023-05-18 08:53:18.308526', '167', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(240, '2023-05-18 08:53:18.339777', '168', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(241, '2023-05-18 08:53:18.464754', '169', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(242, '2023-05-18 08:53:18.527256', '170', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(243, '2023-05-18 08:53:18.589779', '171', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(244, '2023-05-18 08:53:18.683527', '172', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(245, '2023-05-18 08:53:18.761656', '173', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(246, '2023-05-18 08:53:18.792903', '174', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(247, '2023-05-18 08:53:18.855407', '175', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(248, '2023-05-18 08:53:18.917924', '176', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(249, '2023-05-18 08:53:18.996027', '177', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(250, '2023-05-18 08:53:19.042902', '178', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(251, '2023-05-18 08:53:19.121026', '179', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(252, '2023-05-18 08:53:19.167891', '180', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(253, '2023-05-18 08:53:19.246038', '181', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(254, '2023-05-18 08:53:19.308539', '182', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(255, '2023-05-18 08:53:19.386661', '183', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(256, '2023-05-18 08:53:19.464791', '184', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(257, '2023-05-18 08:53:19.496033', '185', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(258, '2023-05-18 08:53:19.574162', '186', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(259, '2023-05-18 08:53:19.652285', '187', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(260, '2023-05-18 08:53:19.699159', '188', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(261, '2023-05-18 08:53:19.808546', '189', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(262, '2023-05-18 08:53:19.855415', '190', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(263, '2023-05-18 08:53:19.902306', '191', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(264, '2023-05-18 08:53:19.980428', '192', 'self.Landsliderisk', 1, 'new through import_export', 20, 1),
	(265, '2023-05-19 09:14:51.856615', '4', 'admin1', 3, '', 4, 1),
	(266, '2023-05-19 09:14:51.965625', '3', 'Maia', 3, '', 4, 1),
	(267, '2023-05-19 09:14:52.048648', '7', 'test2', 3, '', 4, 1),
	(268, '2023-05-19 09:19:41.494416', '8', 'DucDM', 2, '[{"changed": {"fields": ["password"]}}]', 4, 1),
	(269, '2023-05-19 09:19:53.007636', '8', 'DucDM', 2, '[{"changed": {"fields": ["Staff status"]}}]', 4, 1),
	(270, '2023-05-19 09:26:23.245737', '8', 'DucDM', 2, '[{"changed": {"fields": ["Superuser status", "Groups"]}}]', 4, 1),
	(271, '2023-05-19 09:27:19.702106', '8', 'MinhDuc', 2, '[{"changed": {"fields": ["Username"]}}]', 4, 8),
	(272, '2023-05-19 10:03:21.542778', '10', 'CanhNV', 2, '[{"changed": {"fields": ["Staff status"]}}]', 4, 1),
	(273, '2023-05-19 15:36:29.670666', '8', 'MinhDuc', 2, '[{"changed": {"fields": ["password"]}}]', 4, 1);

-- Dumping structure for table ewsweb.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.django_content_type: ~20 rows (approximately)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(7, 'Contact', 'contactform'),
	(5, 'contenttypes', 'contenttype'),
	(18, 'editors', 'editors'),
	(11, 'employees', 'employees'),
	(15, 'employees', 'sites'),
	(10, 'Home', 'department'),
	(12, 'Home', 'post'),
	(13, 'Home', 'postform'),
	(14, 'Home', 'sites'),
	(16, 'import_excel_db', 'employee'),
	(17, 'import_excel_db', 'sites'),
	(19, 'MonitoringData', 'monitoring'),
	(8, 'Register', 'registermodel'),
	(6, 'sessions', 'session'),
	(20, 'TrainingMaterial', 'trainingmaterial'),
	(9, 'Upload', 'formupload');

-- Dumping structure for table ewsweb.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.django_migrations: ~43 rows (approximately)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'Contact', '0001_initial', '2023-04-05 03:11:08.455923'),
	(2, 'Contact', '0002_remove_contactform_company_and_more', '2023-04-05 03:11:08.487282'),
	(3, 'Register', '0001_initial', '2023-04-05 03:11:08.564441'),
	(4, 'Upload', '0001_initial', '2023-04-05 03:11:08.579082'),
	(5, 'contenttypes', '0001_initial', '2023-04-05 03:11:08.926222'),
	(6, 'auth', '0001_initial', '2023-04-05 03:11:09.834543'),
	(7, 'admin', '0001_initial', '2023-04-05 03:11:09.988850'),
	(8, 'admin', '0002_logentry_remove_auto_add', '2023-04-05 03:11:09.996441'),
	(9, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-05 03:11:10.005829'),
	(10, 'contenttypes', '0002_remove_content_type_name', '2023-04-05 03:11:10.109093'),
	(11, 'auth', '0002_alter_permission_name_max_length', '2023-04-05 03:11:10.159518'),
	(12, 'auth', '0003_alter_user_email_max_length', '2023-04-05 03:11:10.177671'),
	(13, 'auth', '0004_alter_user_username_opts', '2023-04-05 03:11:10.186199'),
	(14, 'auth', '0005_alter_user_last_login_null', '2023-04-05 03:11:10.228221'),
	(15, 'auth', '0006_require_contenttypes_0002', '2023-04-05 03:11:10.231709'),
	(16, 'auth', '0007_alter_validators_add_error_messages', '2023-04-05 03:11:10.238235'),
	(17, 'auth', '0008_alter_user_username_max_length', '2023-04-05 03:11:10.255752'),
	(18, 'auth', '0009_alter_user_last_name_max_length', '2023-04-05 03:11:10.275757'),
	(19, 'auth', '0010_alter_group_name_max_length', '2023-04-05 03:11:10.381957'),
	(20, 'auth', '0011_update_proxy_permissions', '2023-04-05 03:11:10.397990'),
	(21, 'auth', '0012_alter_user_first_name_max_length', '2023-04-05 03:11:10.415846'),
	(22, 'sessions', '0001_initial', '2023-04-05 03:11:10.445707'),
	(23, 'Contact', '0003_delete_contactform', '2023-04-05 03:42:39.117063'),
	(24, 'Home', '0001_initial', '2023-04-05 03:42:39.133388'),
	(25, 'employees', '0001_initial', '2023-04-05 03:42:39.295638'),
	(26, 'Home', '0002_post', '2023-04-06 04:41:50.341317'),
	(27, 'Home', '0003_alter_post_img', '2023-04-06 07:20:48.965874'),
	(28, 'Contact', '0004_initial', '2023-04-06 09:04:48.296281'),
	(29, 'Home', '0004_postform_delete_post', '2023-04-07 04:32:49.907057'),
	(30, 'Contact', '0005_contactform_avatar_contactform_phone', '2023-04-13 03:19:32.210653'),
	(31, 'Contact', '0006_alter_contactform_phone', '2023-04-13 03:19:33.535392'),
	(32, 'Contact', '0007_remove_contactform_avatar', '2023-04-13 03:19:33.956564'),
	(33, 'Upload', '0002_alter_formupload_image', '2023-04-19 10:19:49.802071'),
	(34, 'Upload', '0003_alter_formupload_image', '2023-04-19 10:23:34.970284'),
	(35, 'Home', '0005_sites', '2023-04-24 04:17:00.828731'),
	(36, 'Home', '0006_delete_sites', '2023-04-24 08:18:37.630899'),
	(37, 'employees', '0002_sites', '2023-04-24 08:18:38.095743'),
	(38, 'import_excel_db', '0001_initial', '2023-04-24 09:35:22.118093'),
	(39, 'import_excel_db', '0002_sites_delete_employee', '2023-04-25 07:39:00.664049'),
	(40, 'Home', '0007_sites', '2023-04-25 08:03:41.288676'),
	(41, 'editors', '0001_initial', '2023-05-11 02:36:44.331787'),
	(42, 'MonitoringData', '0001_initial', '2023-05-18 03:16:30.794073'),
	(43, 'TrainingMaterial', '0001_initial', '2023-05-18 08:52:22.685438');

-- Dumping structure for table ewsweb.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.django_session: ~8 rows (approximately)
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('2mezcsa2h6c4h3nj68zcb265qwptqb3f', '.eJxVjDsOgzAQRO_iOrK8-ANOmZ4zWLv2EpNEtoShinL3gESRdKN5b-YtAm5rDlvjJcxJXIURl9-OMD65HCA9sNyrjLWsy0zyUORJmxxr4tftdP8OMra8r20cokVrSIOeNCIhKMuJPPcRvPHszB5ibwiIYerQgnMwqM477VGx-HwB8eg3ww:1pmnsE:gs3pMGr90xM3FkpWi93BQi19F_FkRlbtQyPTGFVCFbE', '2023-04-27 03:43:50.014883'),
	('5vku1i3n0dcelegl3idfps8a1ocdy49p', '.eJxVjMEOwiAQRP-FsyGlLbvg0bvfQJYFpGogKe3J-O9K0oMeZ96beQlH-5bd3uLqliDOQonTb-eJH7F0EO5UblVyLdu6eNkVedAmrzXE5-Vw_w4ytdzXrIl0SmADmmE0ABFh4mRmIG28jYMCCzQyfBNqntFOAIjkFRMwifcH4-Q3xQ:1pjyn9:AN837Wd8jbTd3YSpu95lF67fywGYuP0r0iPropkare8', '2023-04-19 08:46:55.115138'),
	('7m2zpl8rcx8zy69hxod00xjqqgvw3tbb', '.eJxVjDsOwjAQRO_iGlne4N9S0nMGa21vcADZUpxUiLuTSCmgGmnem3mLQOtSwtp5DlMWFwHi9NtFSk-uO8gPqvcmU6vLPEW5K_KgXd5a5tf1cP8OCvWyrZEBrUM76MiZNYA2iZAceMZBJWeihawMgAXttTsjII2GrY8jbKnE5wu-6zbz:1q0ukK:ulAkbqKHzRRaFO88BUDkw9dBQbRIoqUNj2__JVUiWx4', '2023-06-05 01:54:00.715915'),
	('c2k878cfd87xsl98mshb8iud69w1a4km', '.eJxVjDsOgzAQRO_iOrK8-ANOmZ4zWLv2EpNEtoShinL3gESRdKN5b-YtAm5rDlvjJcxJXIURl9-OMD65HCA9sNyrjLWsy0zyUORJmxxr4tftdP8OMra8r20cokVrSIOeNCIhKMuJPPcRvPHszB5ibwiIYerQgnMwqM477VGx-HwB8eg3ww:1pmoQ8:hFnW1d6NU7n87Jg_PNk7BvGxnvyTMOy4q-xrOOvS_W8', '2023-04-27 04:18:52.042734'),
	('ean8f0z9izg3dy9lybqpv6ajohumspu2', '.eJxVjDsOwjAQBe_iGlkbO_GHkp4zWLveDQ4gW8qnQtwdIqWA9s3Me6mE21rStsicJlZn1YE6_Y6E-SF1J3zHems6t7rOE-ld0Qdd9LWxPC-H-3dQcCnfGpiyx-Ahx9Fxj86Q7whi9DI6Y8QTYBi6IJnAD0FcbzMEF2CwlvvI6v0BCzI3rg:1pzwyP:3OHnYRr11g-3R5DVgMSQ5cYMVtB15_83GLsMB_LJboU', '2023-06-02 10:04:33.543479'),
	('fhxaijfxwcfe2sg41ejgn80ud04b5dmk', '.eJxVjMEOwiAQRP-FsyGlLbvg0bvfQJYFpGogKe3J-O9K0oMeZ96beQlH-5bd3uLqliDOQonTb-eJH7F0EO5UblVyLdu6eNkVedAmrzXE5-Vw_w4ytdzXrIl0SmADmmE0ABFh4mRmIG28jYMCCzQyfBNqntFOAIjkFRMwifcH4-Q3xQ:1pju7u:8WGYsjRX5wI65FR1P_wSsIWZ32euQ3k3LdgxlS-ttwE', '2023-04-19 03:48:02.930711'),
	('ryqliaj92gllejjy6hwv055ssyih3tmj', '.eJxVjEEOwiAQRe_C2hBoh8K4dO8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3EWTpx-t0DxwXUH6U711mRsdV3mIHdFHrTLa0v8vBzu30GhXr715IasssEJAAmyzdYRMI7ZZBMxMI9jBGWBrAXHBjXrSKBiMDoNiE68P93YN6A:1pzwHh:TMJ2szN8K1uusr4TQom0witRl-z4chp6JsAJz3wix1Y', '2023-06-02 09:20:25.207536'),
	('y25i14r0h65eoi2b60b7z3g296e7vhpk', '.eJxVjEsOwjAMBe-SNYriNqE1S_Y9Q2Q7LimgROpnhbg7VOoCtm9m3stE2tYct0XnOCVzMb05_W5M8tCyg3SncqtWalnnie2u2IMudqhJn9fD_TvItORvjaTaMqGQjMGjQGhSUOoSAKJ3GroRNJBTJ84joO8aFAbmlt3Z92DeHwVIN_0:1q02AX:2CZltSe5LezMiJ2KyVkIhxiNRxfD5xPnO0tySTMMXBU', '2023-06-02 15:37:25.584225');

-- Dumping structure for table ewsweb.editors_editors
CREATE TABLE IF NOT EXISTS `editors_editors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `editor_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `num_users` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- Dumping data for table ewsweb.editors_editors: ~4 rows (approximately)
INSERT INTO `editors_editors` (`id`, `editor_name`, `num_users`) VALUES
	(1, 'Lào Cai', 30),
	(2, 'Yên Bái', 35),
	(3, 'Cao bằng', 52),
	(4, 'Hà giang', 40);

-- Dumping structure for table ewsweb.employees_employees
CREATE TABLE IF NOT EXISTS `employees_employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `nameT` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nameH` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nameX` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nameMax` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nameMin` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nameTB` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name2` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `department_id_id` int NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `employees_employees_department_id_id_f87d5ea0_fk_Home_depa` (`department_id_id`),
  CONSTRAINT `employees_employees_department_id_id_f87d5ea0_fk_Home_depa` FOREIGN KEY (`department_id_id`) REFERENCES `home_department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.employees_employees: ~4 rows (approximately)
INSERT INTO `employees_employees` (`employee_id`, `nameT`, `nameH`, `nameX`, `nameMax`, `nameMin`, `nameTB`, `name1`, `name2`, `department_id_id`) VALUES
	(1, 'Điện Biên', 'Nậm Pồ', 'Chà Cang', 'Cao', 'Thấp', 'Rất thấp', 'Thấp', 'Không', 1),
	(2, 'Điện Biên', 'Nậm Pồ', 'Nậm Khăn', 'Cao', 'Trung Bình', 'Thấp', 'Rât thấp', 'Không', 1),
	(3, 'Điện Biên', 'Mường Chả', 'Mường Tùng', 'Cao', 'Rất thấp', 'Rất thấp', 'Rât thấp', 'Rât thấp', 1),
	(4, 'Điện Biên', 'Tủa Chùa', 'Lao Xả Phình', 'Trung bình', 'Không', 'Rất thấp', 'Rât thấp', 'Không', 1);

-- Dumping structure for table ewsweb.employees_sites
CREATE TABLE IF NOT EXISTS `employees_sites` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Province` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Distri` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Commune` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Risk3h` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Risk12h` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Risk24h` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Risk48h` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- Dumping data for table ewsweb.employees_sites: ~0 rows (approximately)

-- Dumping structure for table ewsweb.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ewsweb.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table ewsweb.home_department
CREATE TABLE IF NOT EXISTS `home_department` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.home_department: ~2 rows (approximately)
INSERT INTO `home_department` (`department_id`, `name`) VALUES
	(1, 'Điện Biên'),
	(2, 'Lai Châu');

-- Dumping structure for table ewsweb.home_postform
CREATE TABLE IF NOT EXISTS `home_postform` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.home_postform: ~3 rows (approximately)
INSERT INTO `home_postform` (`id`, `title`, `body`, `created_at`) VALUES
	(1, 'Công tác tái thiết sau thiên tai', 'alo alo', '2023-04-07 04:37:50.584864'),
	(2, 'Tổng thiệt hại người và của', '(ĐCSVN) - Tính đến ngày 28/12/2022, thiên tai đã làm 175 người chết, mất tích; thiệt hại về kinh tế ước khoảng 19.453 tỷ đồng, gấp 1,6 lần thiệt hại về người và 3,4 lần thiệt hại về kinh tế so với cùng kỳ năm 2021.\r\nChiều 30/12, tại Hà Nội, Tổng cục Phòng chống thiên tai (Bộ Nông nghiệp và Phát triển nông thôn) tổ chức Hội nghị tổng kết công tác năm 2022, triển khai nhiệm vụ công tác năm 2023.\r\n\r\nTheo Phó Tổng cục trưởng Tổng cục Phòng chống thiên tai Nguyễn Văn Tiến, từ đầu năm 2022 đến nay, thiên tai trên thế giới và khu vực diễn ra rất phức tạp. Nhiều trận thiên tai diễn ra với quy mô lớn, phạm vi ảnh hưởng rộng, vượt mức lịch sử gây thiệt hại rất lớn về người và tài sản kinh tế. Điển hình như: nắng nóng, hạn hán kéo dài, nghiêm trọng nhất trong vòng 500 năm tại châu Âu làm hơn 20.000 người chết. Siêu bão Ian đổ bộ vào Mỹ cuối tháng 9 làm 154 người chết, thiệt hại trên 50 tỷ USD. Lũ lụt lịch sử trong tháng 7-8 tại Pakistan làm gần 1.700 người chết, trận động đất với độ lớn 5,6 độ richter tại Indonesia làm 321 người chết,…\r\n\r\nỞ nước ta, thiên tai xảy ra bất thường, cực đoan, trái quy luật từ những tháng đầu năm và trên các vùng miền cả nước với 21/22 loại hình thiên tai, trong đó, điển hình có 1.057 trận thiên tai. Mưa lớn kéo dài ở miền Bắc đã gây sạt lở đất, lũ quét khu vực miền núi, ngập lụt đô thị, khu công nghiệp (tháng 4,5,6). Các hồ chứa Sơn La, Hòa Bình, Tuyên Quang đã phải vận hành xả lũ và duy trì trong một thời gian khá dài. Tại khu vực miền Trung, liên tiếp 3 cơn bão đổ bộ và mưa lũ sau bão gây thiệt hại nghiêm trọng về người và tài sản, trong đó, bão số 4 (Noru) đạt cường độ mạnh nhất, cấp 14-15, giật cấp 17, gần đạt cấp siêu bão trên biển Đông, suy yếu nhanh và đổ bộ Đà Nẵng- Quảng Nam ngày 28/9 đã gây mưa rất lớn tại các tỉnh Nam đồng bằng Bắc bộ và từ Thanh Hóa đến Quảng Ngãi. Trong đó, riêng Nghệ An, mưa rất lớn 300-500mm.\r\n\r\nĐồng thời, mưa lớn sau bão số 5 đã gây lũ trên báo động 3 trên các sông từ Quảng Bình – Thừa Thiên Huế; ngập lụt đặc biệt nghiêm trọng, có nơi tới 1,5-2m tại Đà Nẵng. Triều cường, kết hợp gió mạnh trên biển gây sóng lớn từ 1,5-2m tại khu vực biển Tây gây tràn và sạt lở đê biển Tây, tỉnh Cà Mau; nhiều trận động đất xảy ra liên tiếp trên địa bàn huyện Kon Plông, tỉnh Kon Tum,…\r\n\r\nTính đến ngày 28/12/2022, thiên tai đã làm 175 người chết, mất tích; thiệt hại về kinh tế ước khoảng 19.453 tỷ đồng, gấp 1,6 lần thiệt hại về người và 3,4 lần thiệt hại về kinh tế so với cùng kỳ năm 2021.\r\n\r\nTrong năm 2022, triển khai ứng phó với thiên tai, Tổng cục Phòng chống thiên tai đã thường xuyên theo dõi, cập nhật về dự báo, cảnh báo tình hình thiên tai trong nước và khu vực để tham mưu kịp thời Lãnh đạo Bộ NN&PTNT, Ban Chỉ đạo Quốc gia về Phòng chống thiên tai, đảm bảo chủ động ứng phó hiệu quả với thiên tai. Trong đó, tổ chức 30 đoàn công tác chỉ đạo ứng phó thiên tai tại hiện trường. Tổ chức tập huấn, diễn tập công tác ứng phó với thiên tai và động đất trong trường học tại tỉnh Kon Tum. Phối hợp với các nhà mạng di động tổ chức nhắn tin gần 6,47 triệu tin SMS, 78,9 triệu tin Zalo cảnh báo tới người dân khu vực nguy cơ bị ảnh hưởng bởi thiên tai,…\r\nPhát biểu tại Hội nghị, Đại tá Nguyễn Đình Hưng– Trưởng phòng cứu hộ cứu nạn, Bộ Tư lệnh Bộ đội biên phòng cho rằng, năm 2022, thiệt hại do thiên tai gây ra tương đối nặng nề.\r\n\r\nTrong năm 2022, triển khai ứng phó với thiên tai, các đơn vị của Bộ Tư lệnh Bộ đội biên phòng đã điều động trên 10 nghìn cán bộ, chiến sĩ cùng rất nhiều phương tiện phối hợp với các địa phương thực hiện nhiệm vụ phòng chống thiên tai. Trong đó, đã hướng dẫn cho hàng trăm nghìn phương tiện trên biển nắm bắt được thời tiết, diễn biến bão để chủ động phòng tránh; cứu hộ cứu nạn được nhiều người,…\r\n\r\nDự báo tình hình thiên tai còn nhiều diễn biến phức tạp trong năm 2023, do đó, để triển khai tốt công tác phòng chống thiên tai, Đại tá Nguyễn Đình Hưng kiến nghị các cơ quan chuyên môn Trung ương nghiên cứu mở rộng khu neo đậu tàu thuyền để đảm bảo neo đậu tránh trú bão.\r\n\r\n“Hiện nay, ở các tỉnh gần như là quá tải, khi có bão, ấp thấp nhiệt đới, không có chỗ cho các phương tiện neo đậu, nhất là các phương tiện ở lận cận vào. Quá trình sắp xếp neo đậu khó khăn, khi có bão gió mạnh, việc tàu thuyền va đập là điều khó tránh khỏi” – Đại tá Nguyễn Đình Hưng nhấn mạnh.\r\n\r\nTại Hội nghị, Phó Tổng cục trưởng Tổng cục Khí tượng thủy văn Hoàng Đức Cường cho rằng, trước những thách thức của thiên tai, ảnh hưởng của biến đổi khí hậu, trong năm 2023 cần có sự phối hợp chặt chẽ hơn giữa các đơn vị của Tổng cục khí tượng Thủy văn và Tổng cục Phòng chống thiên tai, nhất là đẩy mạnh ứng dụng các công nghệ mới, khai thác các dữ liệu về dự báo, cảnh báo thiên tai. Đồng thời, thực hiện tốt hơn công tác truyền thông phòng chống thiên tai để thông tin kịp thời đến với người dân, tăng cường kỹ năng nhận biết, ứng phó với thiên tai của người dân, giúp giảm thiểu thiệt hại do thiên tai.\r\n\r\nTổng cục Phòng chống thiên tai cho biết, trong năm 2023, toàn ngành sẽ tổ chức trực ban nghiêm túc, theo dõi, giám sát chặt chẽ tình hình diễn biến của thiên tai, nhất là lũ quét, sạt lở đất khu vực miền núi, mưa, lũ lớn, bão mạnh; bảo vệ an toàn cho hệ thống đê điều, hồ đập xung yếu; tham mưu kịp thời, chính xác cho Ban Chỉ đạo Quốc gia về Phòng chống thiên tai để chỉ đạo các địa phương, Bộ, ngành chuẩn bị sẵn sàng ứng phó và khắc phục hậu quả thiên tai kịp thời, hiệu quả. Báo cáo, tổng hợp thiệt hại, đề xuất các biện pháp khắc phục thiên tai khẩn cấp, hỗ trợ tập trung, dài hạn. Tăng cường kiểm tra, đôn đốc, hướng dẫn công tác khắc phục hậu quả thiên tai, nhanh chóng đưa người dân và địa phương bị thiệt hại sớm ổn định đời sống, sản xuất,…/.', '2023-04-07 04:39:16.485864'),
	(3, 'Khắc phục hậu quả sạt lở đất tại Thái Nguyên', 'Kiểm tra công tác ứng phó, khắc phục hậu quả sạt lở đất tại Thái Nguyên\r\nBIẾN ĐỔI KHÍ HẬU - Thanh Tùng - 18:51 31/05/2022\r\n(TN&MT) - Sáng 31/5, Đoàn công tác của Ban Chỉ đạo quốc gia về Phòng chống thiên tai do Phó chánh Văn phòng thường trực, Phó Tổng cục trưởng Tổng cục Phòng chống thiên tai Phạm Đức Luận làm Trưởng đoàn đã đi kiểm tra công tác ứng phó, khắc phục hậu quả mưa lớn, sạt lở đất tại Thái Nguyên.\r\n\r\n1(4).jpg\r\nPhó Tổng cục trưởng Tổng cục Phòng chống thiên tai Phạm Đức Luận (mặc áo đen) kiểm tra hiện trường vụ sạt lở đất\r\nTrận mưa to vào đêm 30/5 rạng sáng 31/5 đã gây ra vụ sạt lở đất nghiêm trọng tại xã Nam Hoà, huyện Đồng Hỷ, tỉnh Thái Nguyên. Vụ việc khiến 3 người thiệt mạng. Ngay sau khi vụ việc xảy ra, lực lượng chức năng xã Nam Hòa, huyện Đồng Hỷ đã huy động 3 máy xúc và lực lượng đến tìm kiếm và cứu hộ, cứu nạn.\r\n\r\nĐến 4h ngày 31/5, lực lượng chức năng tìm thấy 1 thi thể của nạn nhân bị vùi lấp. Khoảng 1 giờ sau, thi thể 2 nạn nhân còn lại cũng được tìm thấy và bàn giao cho gia đình an táng.\r\n\r\nTrận mưa lớn kéo dài từ đêm 30 đến rạng sáng 31/5 khiến nhiều địa phương trên địa bản tỉnh Thái Nguyên ngập úng cục bộ. Tại các huyện Đồng Hỷ và Phú Bình, nhiều tuyến đường giao thông bị chia cắt.\r\n\r\n2(2).jpg\r\nVụ sạt lở đất gây thiệt hại lớn về người và tài sản của người dân\r\nTheo Trung tâm Dự báo KTTV Quốc gia, mực nước trên các sông thuộc hệ thống sông Hồng đang có dao động theo xu thế lên. Trên hệ thống sông Thái Bình, mực nước thượng lưu sông Cầu lên nhanh. Đến 7h ngày 31/5, mực nước sông Cầu tại Gia Bảy lên mức 25,23m, trên mức báo động (BĐ) 1: 0,23m.\r\n\r\nCảnh báo, từ hôm nay (31/5) đến ngày 1/6, trên các sông suối thuộc khu vực Bắc Bộ sẽ xuất hiện một đợt lũ với biên độ lũ lên ở khu vực thượng lưu từ 2-5m, hạ lưu từ 1,5-2,5m. Trong đợt lũ này, mực nước trên Cầu và một số sông suối nhỏ có khả năng lên mức (báo động) BĐ1- BĐ2. Mực nước đỉnh lũ khu vực hạ lưu sông Hồng-Thái Bình ở dưới mức BĐ1.\r\n\r\nNguy cơ cao xảy ra lũ quét, sạt lở đất và ngập lụt cục bộ tại các tỉnh vùng núi phía Bắc, đặc biệt là các tỉnh: Điện Biên, Lai Châu, Sơn La, Hòa Bình, Lào Cai, Yên Bái, Hà Giang, Tuyên Quang, Cao Bằng, Bắc Kạn.\r\n\r\nCảnh báo ngập úng tại các thành phố, đô thị như Thái Nguyên, Lạng Sơn, Vĩnh Phúc, Hà Nam, Quảng Ninh và thủ đô Hà Nội.', '2023-04-07 07:52:56.611241');

-- Dumping structure for table ewsweb.home_sites
CREATE TABLE IF NOT EXISTS `home_sites` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Province` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Distric` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Commune` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Risk3h` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Risk12h` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Risk24h` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Risk48h` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- Dumping data for table ewsweb.home_sites: ~40 rows (approximately)
INSERT INTO `home_sites` (`id`, `Province`, `Distric`, `Commune`, `Risk3h`, `Risk12h`, `Risk24h`, `Risk48h`) VALUES
	(41, 'Yên Bái', 'tp Yên Bái', 'tp Yên Bái', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(42, 'Yên Bái', 'tp Yên Bái', 'tp Yên Bái', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(43, 'Yên Bái', 'tp Yên Bái', 'tp Yên Bái', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(44, 'Yên Bái', 'tp Yên Bái', 'tp Yên Bái', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(45, 'Yên Bái', 'Văn Chấn', 'Sơn Tịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(46, 'Yên Bái', 'Văn Chấn', 'Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(47, 'Yên Bái', 'Văn Chấn', 'Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(48, 'Yên Bái', 'Văn Chấn', 'Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(49, 'Yên Bái', 'Văn Chấn', 'Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(50, 'Yên Bái', 'Văn Chấn', 'Pín Pé, Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(51, 'Yên Bái', 'Văn Chấn', 'Pín Pé, Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(52, 'Yên Bái', 'Văn Chấn', 'Đồng Đắc, Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(53, 'Yên Bái', 'Văn Chấn', 'Đồng Đắc, Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(54, 'Yên Bái', 'Văn Chấn', 'Đồng Đắc, Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(55, 'Yên Bái', 'Văn Chấn', 'Đồng Đắc, Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(56, 'Yên Bái', 'Mù Cang Chải', 'TT Mù Cang Chải', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(57, 'Yên Bái', 'Mù Cang Chải', 'Mồ Dề', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(58, 'Sơn La', 'tp Sơn la', 'tp Sơn la', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(59, 'Sơn La', 'tp Sơn la', 'tp Sơn la', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(60, 'Sơn La', 'tp Sơn la', 'tp Sơn la', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(61, 'Sơn La', 'Yên Châu', 'Yên Châu', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(62, 'Sơn La', 'Yên Châu', 'Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(63, 'Sơn La', 'Yên Châu', 'Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(64, 'Sơn La', 'Yên Châu', 'Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(65, 'Sơn La', 'Yên Châu', 'Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(66, 'Sơn La', 'Yên Châu', 'Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(67, 'Sơn La', 'Yên Châu', 'Nà Pản, Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(68, 'Sơn La', 'Yên Châu', 'Nặm Ún, Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(69, 'Sơn La', 'Yên Châu', 'Nặm Ún, Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(70, 'Hà Giang', 'Quang Bình', 'Bản Rịa, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(71, 'Hà Giang', 'Quang Bình', 'Bản Rịa, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(72, 'Hà Giang', 'Quang Bình', 'Bản Rịa, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(73, 'Hà Giang', 'Quang Bình', 'Bản Thín, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(74, 'Hà Giang', 'Quang Bình', 'Bản Rịa, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(75, 'Hà Giang', 'Quang Bình', 'Minh Tiến, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(76, 'Hà Giang', 'Quang Bình', 'Bản Thín, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(77, 'Hà Giang', 'Quang Bình', 'Bản Thín, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(78, 'Hà Giang', 'Quang Bình', 'Xuân Minh', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(79, 'Hà Giang', 'Quang Bình', 'Xuân Minh', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(80, 'Hà Giang', 'Quang Bình', 'Yên Bình', 'Thấp', 'Thấp', 'Thấp', 'Không');

-- Dumping structure for table ewsweb.import_excel_db_sites
CREATE TABLE IF NOT EXISTS `import_excel_db_sites` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Province` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Distric` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Commune` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Risk3h` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Risk12h` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Risk24h` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Risk48h` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- Dumping data for table ewsweb.import_excel_db_sites: ~40 rows (approximately)
INSERT INTO `import_excel_db_sites` (`id`, `Province`, `Distric`, `Commune`, `Risk3h`, `Risk12h`, `Risk24h`, `Risk48h`) VALUES
	(41, 'Yên Bái', 'tp Yên Bái', 'tp Yên Bái', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(42, 'Yên Bái', 'tp Yên Bái', 'tp Yên Bái', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(43, 'Yên Bái', 'tp Yên Bái', 'tp Yên Bái', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(44, 'Yên Bái', 'tp Yên Bái', 'tp Yên Bái', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(45, 'Yên Bái', 'Văn Chấn', 'Sơn Tịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(46, 'Yên Bái', 'Văn Chấn', 'Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(47, 'Yên Bái', 'Văn Chấn', 'Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(48, 'Yên Bái', 'Văn Chấn', 'Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(49, 'Yên Bái', 'Văn Chấn', 'Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(50, 'Yên Bái', 'Văn Chấn', 'Pín Pé, Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(51, 'Yên Bái', 'Văn Chấn', 'Pín Pé, Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(52, 'Yên Bái', 'Văn Chấn', 'Đồng Đắc, Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(53, 'Yên Bái', 'Văn Chấn', 'Đồng Đắc, Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(54, 'Yên Bái', 'Văn Chấn', 'Đồng Đắc, Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(55, 'Yên Bái', 'Văn Chấn', 'Đồng Đắc, Cát Thịnh', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(56, 'Yên Bái', 'Mù Cang Chải', 'TT Mù Cang Chải', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(57, 'Yên Bái', 'Mù Cang Chải', 'Mồ Dề', 'Cao', 'Rất cao', 'Trung bình', 'Không'),
	(58, 'Sơn La', 'tp Sơn la', 'tp Sơn la', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(59, 'Sơn La', 'tp Sơn la', 'tp Sơn la', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(60, 'Sơn La', 'tp Sơn la', 'tp Sơn la', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(61, 'Sơn La', 'Yên Châu', 'Yên Châu', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(62, 'Sơn La', 'Yên Châu', 'Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(63, 'Sơn La', 'Yên Châu', 'Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(64, 'Sơn La', 'Yên Châu', 'Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(65, 'Sơn La', 'Yên Châu', 'Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(66, 'Sơn La', 'Yên Châu', 'Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(67, 'Sơn La', 'Yên Châu', 'Nà Pản, Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(68, 'Sơn La', 'Yên Châu', 'Nặm Ún, Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(69, 'Sơn La', 'Yên Châu', 'Nặm Ún, Chiềng Đông', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(70, 'Hà Giang', 'Quang Bình', 'Bản Rịa, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(71, 'Hà Giang', 'Quang Bình', 'Bản Rịa, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(72, 'Hà Giang', 'Quang Bình', 'Bản Rịa, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(73, 'Hà Giang', 'Quang Bình', 'Bản Thín, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(74, 'Hà Giang', 'Quang Bình', 'Bản Rịa, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(75, 'Hà Giang', 'Quang Bình', 'Minh Tiến, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(76, 'Hà Giang', 'Quang Bình', 'Bản Thín, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(77, 'Hà Giang', 'Quang Bình', 'Bản Thín, Bản Rịa', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(78, 'Hà Giang', 'Quang Bình', 'Xuân Minh', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(79, 'Hà Giang', 'Quang Bình', 'Xuân Minh', 'Thấp', 'Thấp', 'Thấp', 'Không'),
	(80, 'Hà Giang', 'Quang Bình', 'Yên Bình', 'Thấp', 'Thấp', 'Thấp', 'Không');

-- Dumping structure for table ewsweb.info_user
CREATE TABLE IF NOT EXISTS `info_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representative_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint NOT NULL,
  `birthday` date NOT NULL,
  `cccd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` int NOT NULL,
  `district` int NOT NULL,
  `wards` int NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `info_user_email_unique` (`email`),
  UNIQUE KEY `info_user_phone_unique` (`phone`),
  UNIQUE KEY `info_user_cccd_unique` (`cccd`),
  UNIQUE KEY `info_user_mst_unique` (`mst`),
  KEY `info_user_user_id_foreign` (`user_id`),
  CONSTRAINT `info_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ewsweb.info_user: ~0 rows (approximately)

-- Dumping structure for table ewsweb.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ewsweb.migrations: ~7 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(25, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(26, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(27, '2019_08_19_000000_create_failed_jobs_table', 1),
	(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(29, '2023_05_18_011800_create_sessions_table', 1),
	(34, '2014_10_12_000000_create_users_table', 2),
	(35, '2023_05_18_024303_create_info_user_table', 2);

-- Dumping structure for table ewsweb.monitoringdata_monitoring
CREATE TABLE IF NOT EXISTS `monitoringdata_monitoring` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Date` datetime(6) NOT NULL,
  `Temperature` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Digitalsignal` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Highestvalue` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Oscillatingpeak` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- Dumping data for table ewsweb.monitoringdata_monitoring: ~48 rows (approximately)
INSERT INTO `monitoringdata_monitoring` (`id`, `Date`, `Temperature`, `Digitalsignal`, `Highestvalue`, `Oscillatingpeak`) VALUES
	(49, '2023-02-01 07:00:00.000000', '22.01', '1.130701', '0.0404197', '0.0404197'),
	(50, '2023-02-01 08:00:00.000000', '21.2', '1.128433', '0.03815162', '0.03815162'),
	(51, '2023-02-01 09:00:00.000000', '21.33', '1.127299', '0.03701794', '0.03701794'),
	(52, '2023-02-01 10:00:00.000000', '21.66', '1.131078', '0.040797', '0.040797'),
	(53, '2023-02-01 11:00:00.000000', '22', '1.127677', '0.03739619', '0.03739619'),
	(54, '2023-02-01 12:00:00.000000', '22.59', '1.132968', '0.04268682', '0.04268682'),
	(55, '2023-02-01 13:00:00.000000', '23.19', '1.124276', '0.03399467', '0.03399467'),
	(56, '2023-02-01 14:00:00.000000', '22.99', '1.125787', '0.03550649', '0.03550649'),
	(57, '2023-02-01 15:00:00.000000', '23.55', '1.128811', '0.03852963', '0.03852963'),
	(58, '2023-02-01 16:00:00.000000', '24.74', '1.131078', '0.04079711', '0.04079711'),
	(59, '2023-02-01 17:00:00.000000', '24.84', '1.128811', '0.03852975', '0.03852975'),
	(60, '2023-02-01 18:00:00.000000', '24.11', '1.130322', '0.04004133', '0.04004133'),
	(61, '2023-02-01 19:00:00.000000', '24.88', '1.133346', '0.04306459', '0.04306459'),
	(62, '2023-02-01 20:00:00.000000', '27', '1.130323', '0.04004216', '0.04004216'),
	(63, '2023-02-01 21:00:00.000000', '27.76', '1.130322', '0.04004133', '0.04004133'),
	(64, '2023-02-01 22:00:00.000000', '27.1', '1.13259', '0.04230893', '0.04230893'),
	(65, '2023-02-01 23:00:00.000000', '27.48', '1.129944', '0.03966296', '0.03966296'),
	(66, '2023-02-02 00:00:00.000000', '25.11', '1.126921', '0.03663993', '0.03663993'),
	(67, '2023-02-02 01:00:00.000000', '24.16', '1.126166', '0.03588486', '0.03588486'),
	(68, '2023-02-02 02:00:00.000000', '23.1', '1.128055', '0.03777397', '0.03777397'),
	(69, '2023-02-02 03:00:00.000000', '24', '1.126921', '0.03664005', '0.03664005'),
	(70, '2023-02-02 04:00:00.000000', '22.85', '1.134479', '0.04419827', '0.04419827'),
	(71, '2023-02-02 05:00:00.000000', '23.06', '1.125409', '0.03512847', '0.03512847'),
	(72, '2023-02-02 06:00:00.000000', '22.91', '1.128055', '0.03777397', '0.03777397'),
	(73, '2023-02-02 07:00:00.000000', '21.93', '1.134857', '0.04457641', '0.04457641'),
	(74, '2023-02-02 08:00:00.000000', '21.43', '1.129189', '0.03890753', '0.03890753'),
	(75, '2023-02-02 09:00:00.000000', '21.65', '1.1307', '0.04041934', '0.04041934'),
	(76, '2023-02-02 10:00:00.000000', '21.95', '1.13448', '0.04419863', '0.04419863'),
	(77, '2023-02-02 11:00:00.000000', '22.07', '1.126921', '0.03663969', '0.03663969'),
	(78, '2023-02-02 12:00:00.000000', '22.12', '1.122764', '0.03248274', '0.03248274'),
	(79, '2023-02-02 13:00:00.000000', '22.28', '1.125398', '0.03511655', '0.03511655'),
	(80, '2023-02-02 14:00:00.000000', '22.4', '1.127299', '0.03701842', '0.03701842'),
	(81, '2023-02-02 15:00:00.000000', '22.42', '1.130322', '0.04004133', '0.04004133'),
	(82, '2023-02-02 16:00:00.000000', '22.44', '1.130323', '0.04004169', '0.04004169'),
	(83, '2023-02-02 17:00:00.000000', '22.83', '1.128433', '0.03815174', '0.03815174'),
	(84, '2023-02-02 18:00:00.000000', '22.76', '1.128811', '0.03852952', '0.03852952'),
	(85, '2023-02-02 19:00:00.000000', '23.2', '1.128055', '0.03777397', '0.03777397'),
	(86, '2023-02-02 20:00:00.000000', '23.86', '1.129189', '0.038908', '0.038908'),
	(87, '2023-02-02 21:00:00.000000', '24.5', '1.129944', '0.0396632', '0.0396632'),
	(88, '2023-02-02 22:00:00.000000', '25.21', '1.128055', '0.03777397', '0.03777397'),
	(89, '2023-02-02 23:00:00.000000', '25.65', '1.131834', '0.04155302', '0.04155302'),
	(90, '2023-02-03 00:00:00.000000', '24.88', '1.130322', '0.04004145', '0.04004145'),
	(91, '2023-02-03 01:00:00.000000', '27.43', '1.125787', '0.03550649', '0.03550649'),
	(92, '2023-02-03 02:00:00.000000', '26.99', '1.130322', '0.04004085', '0.04004085'),
	(93, '2023-02-03 03:00:00.000000', '26.33', '1.129945', '0.03966367', '0.03966367'),
	(94, '2023-02-03 04:00:00.000000', '25.04', '1.132212', '0.04193127', '0.04193127'),
	(95, '2023-02-03 05:00:00.000000', '24.03', '1.126543', '0.03626204', '0.03626204'),
	(96, '2023-02-03 06:00:00.000000', '24.11', '1.132212', '0.04193115', '0.04193115');

-- Dumping structure for table ewsweb.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ewsweb.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table ewsweb.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ewsweb.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table ewsweb.register_registermodel
CREATE TABLE IF NOT EXISTS `register_registermodel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `company` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `phonenumber` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(13) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.register_registermodel: ~1 rows (approximately)
INSERT INTO `register_registermodel` (`id`, `username`, `email`, `company`, `phonenumber`, `password`, `address`) VALUES
	(1, 'admin3', 'vancanh@gmail.com', 'Family Dứa', '0335671516', '12345678', 'Nghĩa lập');

-- Dumping structure for table ewsweb.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ewsweb.sessions: ~1 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('6otalBnsRKfHXM14vugHY5AFziE3DWt39PS943Io', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNlFXU1RpanR2emlYSnBEaWtCVXR4MjhMZ3AwOWFqNkJZSGoybFZTdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO319', 1684402291);

-- Dumping structure for table ewsweb.trainingmaterial_trainingmaterial
CREATE TABLE IF NOT EXISTS `trainingmaterial_trainingmaterial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `DateTime` datetime(6) NOT NULL,
  `Landsliderisk` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Debrisflowrisk` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Flashfloodrisk` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- Dumping data for table ewsweb.trainingmaterial_trainingmaterial: ~96 rows (approximately)
INSERT INTO `trainingmaterial_trainingmaterial` (`id`, `DateTime`, `Landsliderisk`, `Debrisflowrisk`, `Flashfloodrisk`) VALUES
	(49, '2023-02-01 07:00:00.000000', '0', '0', '0'),
	(50, '2023-02-01 08:00:00.000000', '0', '0', '0'),
	(51, '2023-02-01 09:00:00.000000', '0', '0', '0'),
	(52, '2023-02-01 10:00:00.000000', '0', '0', '0'),
	(53, '2023-02-01 11:00:00.000000', '0', '0', '0'),
	(54, '2023-02-01 12:00:00.000000', '0', '0', '0'),
	(55, '2023-02-01 13:00:00.000000', '0', '0', '0'),
	(56, '2023-02-01 14:00:00.000000', '0', '0', '0'),
	(57, '2023-02-01 15:00:00.000000', '0', '0', '0'),
	(58, '2023-02-01 16:00:00.000000', '0', '0', '0'),
	(59, '2023-02-01 17:00:00.000000', '0', '0', '0'),
	(60, '2023-02-01 18:00:00.000000', '0', '0', '0'),
	(61, '2023-02-01 19:00:00.000000', '0', '0', '0'),
	(62, '2023-02-01 20:00:00.000000', '0', '0', '0'),
	(63, '2023-02-01 21:00:00.000000', '0', '0', '0'),
	(64, '2023-02-01 22:00:00.000000', '0', '0', '0'),
	(65, '2023-02-01 23:00:00.000000', '0', '0', '0'),
	(66, '2023-02-02 00:00:00.000000', '0', '0', '0'),
	(67, '2023-02-02 01:00:00.000000', '0', '0', '0'),
	(68, '2023-02-02 02:00:00.000000', '0', '0', '0'),
	(69, '2023-02-02 03:00:00.000000', '0', '0', '0'),
	(70, '2023-02-02 04:00:00.000000', '0', '0', '0'),
	(71, '2023-02-02 05:00:00.000000', '0', '0', '0'),
	(72, '2023-02-02 06:00:00.000000', '0', '0', '0'),
	(73, '2023-02-02 07:00:00.000000', '0', '0', '0'),
	(74, '2023-02-02 08:00:00.000000', '0', '0', '0'),
	(75, '2023-02-02 09:00:00.000000', '0', '0', '0'),
	(76, '2023-02-02 10:00:00.000000', '0', '0', '0'),
	(77, '2023-02-02 11:00:00.000000', '0', '0', '0'),
	(78, '2023-02-02 12:00:00.000000', '0.5', '0', '0'),
	(79, '2023-02-02 13:00:00.000000', '0.5', '0', '0'),
	(80, '2023-02-02 14:00:00.000000', '0.5', '0', '0'),
	(81, '2023-02-02 15:00:00.000000', '0.5', '0', '0'),
	(82, '2023-02-02 16:00:00.000000', '1', '1', '0.3'),
	(83, '2023-02-02 17:00:00.000000', '2', '2', '0.6'),
	(84, '2023-02-02 18:00:00.000000', '5', '5', '1.6'),
	(85, '2023-02-02 19:00:00.000000', '10', '8', '3'),
	(86, '2023-02-02 20:00:00.000000', '15', '13', '5'),
	(87, '2023-02-02 21:00:00.000000', '30', '25', '10'),
	(88, '2023-02-02 22:00:00.000000', '60', '40', '20'),
	(89, '2023-02-02 23:00:00.000000', '90', '50', '30'),
	(90, '2023-02-03 00:00:00.000000', '80', '45', '26'),
	(91, '2023-02-03 01:00:00.000000', '70', '60', '23'),
	(92, '2023-02-03 02:00:00.000000', '50', '30', '16'),
	(93, '2023-02-03 03:00:00.000000', '30', '20', '10'),
	(94, '2023-02-03 04:00:00.000000', '20', '10', '6'),
	(95, '2023-02-03 05:00:00.000000', '10', '5', '3'),
	(96, '2023-02-03 06:00:00.000000', '0', '0', '0'),
	(145, '2023-02-01 07:00:00.000000', '0', '0', '0'),
	(146, '2023-02-01 08:00:00.000000', '0', '0', '0'),
	(147, '2023-02-01 09:00:00.000000', '0', '0', '0'),
	(148, '2023-02-01 10:00:00.000000', '0', '0', '0'),
	(149, '2023-02-01 11:00:00.000000', '0', '0', '0'),
	(150, '2023-02-01 12:00:00.000000', '0', '0', '0'),
	(151, '2023-02-01 13:00:00.000000', '0', '0', '0'),
	(152, '2023-02-01 14:00:00.000000', '0', '0', '0'),
	(153, '2023-02-01 15:00:00.000000', '0', '0', '0'),
	(154, '2023-02-01 16:00:00.000000', '0', '0', '0'),
	(155, '2023-02-01 17:00:00.000000', '0', '0', '0'),
	(156, '2023-02-01 18:00:00.000000', '0', '0', '0'),
	(157, '2023-02-01 19:00:00.000000', '0', '0', '0'),
	(158, '2023-02-01 20:00:00.000000', '0', '0', '0'),
	(159, '2023-02-01 21:00:00.000000', '0', '0', '0'),
	(160, '2023-02-01 22:00:00.000000', '0', '0', '0'),
	(161, '2023-02-01 23:00:00.000000', '0', '0', '0'),
	(162, '2023-02-02 00:00:00.000000', '0', '0', '0'),
	(163, '2023-02-02 01:00:00.000000', '0', '0', '0'),
	(164, '2023-02-02 02:00:00.000000', '0', '0', '0'),
	(165, '2023-02-02 03:00:00.000000', '0', '0', '0'),
	(166, '2023-02-02 04:00:00.000000', '0', '0', '0'),
	(167, '2023-02-02 05:00:00.000000', '0', '0', '0'),
	(168, '2023-02-02 06:00:00.000000', '0', '0', '0'),
	(169, '2023-02-02 07:00:00.000000', '0', '0', '0'),
	(170, '2023-02-02 08:00:00.000000', '0', '0', '0'),
	(171, '2023-02-02 09:00:00.000000', '0', '0', '0'),
	(172, '2023-02-02 10:00:00.000000', '0', '0', '0'),
	(173, '2023-02-02 11:00:00.000000', '0', '0', '0'),
	(174, '2023-02-02 12:00:00.000000', '0.5', '0', '0'),
	(175, '2023-02-02 13:00:00.000000', '0.5', '0', '0'),
	(176, '2023-02-02 14:00:00.000000', '0.5', '0', '0'),
	(177, '2023-02-02 15:00:00.000000', '0.5', '0', '0'),
	(178, '2023-02-02 16:00:00.000000', '1', '1', '0.3'),
	(179, '2023-02-02 17:00:00.000000', '2', '2', '0.6'),
	(180, '2023-02-02 18:00:00.000000', '5', '5', '1.6'),
	(181, '2023-02-02 19:00:00.000000', '10', '8', '3'),
	(182, '2023-02-02 20:00:00.000000', '15', '13', '5'),
	(183, '2023-02-02 21:00:00.000000', '30', '25', '10'),
	(184, '2023-02-02 22:00:00.000000', '60', '40', '20'),
	(185, '2023-02-02 23:00:00.000000', '90', '50', '30'),
	(186, '2023-02-03 00:00:00.000000', '80', '45', '26'),
	(187, '2023-02-03 01:00:00.000000', '70', '60', '23'),
	(188, '2023-02-03 02:00:00.000000', '50', '30', '16'),
	(189, '2023-02-03 03:00:00.000000', '30', '20', '10'),
	(190, '2023-02-03 04:00:00.000000', '20', '10', '6'),
	(191, '2023-02-03 05:00:00.000000', '10', '5', '3'),
	(192, '2023-02-03 06:00:00.000000', '0', '0', '0');

-- Dumping structure for table ewsweb.upload_formupload
CREATE TABLE IF NOT EXISTS `upload_formupload` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `local` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `hazard` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `discribe` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ewsweb.upload_formupload: ~3 rows (approximately)
INSERT INTO `upload_formupload` (`id`, `local`, `hazard`, `discribe`, `image`) VALUES
	(2, '', '', '', 'Media/DK.jpg'),
	(3, '', '', '', 'Media/DK_mJjxhe0.jpg'),
	(4, '', '', '', 'Media/z3835097607801_4de4efd7fe97b33589456e638fd53bca.jpg');

-- Dumping structure for table ewsweb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representative_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint NOT NULL,
  `birthday` date NOT NULL,
  `cccd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mst` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` int NOT NULL,
  `district` int NOT NULL,
  `wards` int NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_cccd_unique` (`cccd`),
  UNIQUE KEY `users_mst_unique` (`mst`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ewsweb.users: ~4 rows (approximately)
INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `type`, `name`, `organization_name`, `representative_name`, `sex`, `birthday`, `cccd`, `mst`, `country`, `province`, `district`, `wards`, `address`, `role_id`, `email_verified_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(1, 'sinhdan', '$2y$10$Gf5HTvtjw1uUEBchpj1tKOs9A58H2ApB3RET2uxSFCOJHMAvz43ge', 'sinhdan@gmail.com', '0123456798', 1, 'Sinh Nguyễn Thị', NULL, NULL, 0, '1111-11-11', '12341234', NULL, 'vietnam', 1, 5, 163, 'không nhà', 0, NULL, NULL, NULL, NULL, '2023-05-18 01:52:36', '2023-05-18 01:52:36'),
	(2, 'luanle', '$2y$10$skKVE3SdsnV0Y19rnbx0p.Cn4LYFuDzrvbYXMQTtGXVmKw7JfCtsq', 'thanhluan@gmail.com', '054564654', 1, 'Luân Lê', NULL, NULL, 1, '2222-02-22', '12341235', NULL, 'vietnam', 2, 24, 691, 'không nhà', 0, NULL, NULL, NULL, NULL, '2023-05-18 02:05:16', '2023-05-18 02:05:16'),
	(10, 'mnghia', '$2y$10$vbrsLobRHjLPjk7LBsii2.4RCZ1HDHeQejUaQBYiZc2fXVn8d7qhS', 'pmnghia164@gmai.com', '0869502923', 1, 'Phạm Minh Nghĩa', NULL, NULL, 1, '2000-04-16', '16860139', NULL, 'vietnam', 26, 244, 8740, 'không nhà', 0, NULL, NULL, NULL, NULL, '2023-05-18 02:14:46', '2023-05-18 02:14:46'),
	(11, 'maiatech', '$2y$10$bqL48Cw597cfj3YDjo7yxu3q/hhFX2ZYiL..WCQYZbMYrdT28hQau', 'maiatech@gmail.com', '0999999999', 2, NULL, NULL, NULL, 1, '1981-11-06', NULL, '12345679812', 'vietnam', 1, 18, 565, 'Cửu Việt 1', 0, NULL, NULL, NULL, NULL, '2023-05-18 02:31:31', '2023-05-18 02:31:31');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
